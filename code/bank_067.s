; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $067", ROMX[$4000], BANK[$67]

	sbc  a                                           ; $4000: $9f
	dec  c                                           ; $4001: $0d
	nop                                              ; $4002: $00
	ld   a, [bc]                                     ; $4003: $0a
	rrca                                             ; $4004: $0f
	nop                                              ; $4005: $00
	ld   bc, $0101                                   ; $4006: $01 $01 $01
	inc  bc                                          ; $4009: $03
	inc  b                                           ; $400a: $04
	ld   c, c                                        ; $400b: $49
	ld   a, h                                        ; $400c: $7c
	dec  b                                           ; $400d: $05
	db   $20, $a0                                    ; $400e: $20 $a0
	ld   h, l                                        ; $4010: $65
	sub  [hl]                                        ; $4011: $96
	ld   d, h                                        ; $4012: $54
	ld   e, c                                        ; $4013: $59
	ld   a, b                                        ; $4014: $78
	rst  $38                                         ; $4015: $ff
	rst  $38                                         ; $4016: $ff
	ld   bc, $0d04                                   ; $4017: $01 $04 $0d
	nop                                              ; $401a: $00
	ld   a, [bc]                                     ; $401b: $0a
	add  hl, de                                      ; $401c: $19
	dec  b                                           ; $401d: $05
	inc  bc                                          ; $401e: $03
	ret  c                                           ; $401f: $d8

	db   $eb                                         ; $4020: $eb
	and  l                                           ; $4021: $a5
	jp   c, $c9fb                                    ; $4022: $da $fb $c9

	ld   a, c                                        ; $4025: $79
	ld   [hl], d                                     ; $4026: $72
	ld   d, d                                        ; $4027: $52
	ld   [hl], h                                     ; $4028: $74
	ld   [bc], a                                     ; $4029: $02
	jp   nz, $005d                                   ; $402a: $c2 $5d $00

	nop                                              ; $402d: $00
	inc  bc                                          ; $402e: $03
	ld   l, d                                        ; $402f: $6a
	add  a                                           ; $4030: $87
	inc  b                                           ; $4031: $04
	sub  d                                           ; $4032: $92
	ld   a, c                                        ; $4033: $79
	ld   [hl], d                                     ; $4034: $72
	ld   d, d                                        ; $4035: $52
	ld   [hl], h                                     ; $4036: $74
	ld   [bc], a                                     ; $4037: $02
	jp   nz, $005d                                   ; $4038: $c2 $5d $00

	ld   bc, $8d67                                   ; $403b: $01 $67 $8d
	sbc  d                                           ; $403e: $9a
	ld   a, c                                        ; $403f: $79
	ld   [hl], d                                     ; $4040: $72
	ld   d, d                                        ; $4041: $52
	ld   [hl], h                                     ; $4042: $74
	ld   [bc], a                                     ; $4043: $02
	jp   nz, $005d                                   ; $4044: $c2 $5d $00

	ld   [bc], a                                     ; $4047: $02
	rlca                                             ; $4048: $07
	xor  h                                           ; $4049: $ac
	nop                                              ; $404a: $00
	ld   [bc], a                                     ; $404b: $02
	inc  bc                                          ; $404c: $03
	ld   bc, $2000                                   ; $404d: $01 $00 $20
	nop                                              ; $4050: $00
	rlca                                             ; $4051: $07
	dec  hl                                          ; $4052: $2b
	ld   [bc], a                                     ; $4053: $02
	ld   [bc], a                                     ; $4054: $02
	inc  bc                                          ; $4055: $03
	ld   bc, $2001                                   ; $4056: $01 $01 $20
	nop                                              ; $4059: $00
	rlca                                             ; $405a: $07
	ld   b, b                                        ; $405b: $40
	inc  b                                           ; $405c: $04
	ld   [bc], a                                     ; $405d: $02
	inc  bc                                          ; $405e: $03
	ld   bc, $2002                                   ; $405f: $01 $02 $20
	nop                                              ; $4062: $00
	ld   b, $8b                                      ; $4063: $06 $8b
	nop                                              ; $4065: $00
	rrca                                             ; $4066: $0f
	ld   b, $01                                      ; $4067: $06 $01
	ld   bc, $a502                                   ; $4069: $01 $02 $a5
	inc  b                                           ; $406c: $04
	xor  d                                           ; $406d: $aa
	sub  b                                           ; $406e: $90
	ld   [bc], a                                     ; $406f: $02
	jr   nz, jr_067_4076                             ; $4070: $20 $04

	xor  d                                           ; $4072: $aa
	sbc  [hl]                                        ; $4073: $9e
	sub  $a2                                         ; $4074: $d6 $a2

jr_067_4076:
	and  l                                           ; $4076: $a5
	ret                                              ; $4077: $c9


	ld   l, [hl]                                     ; $4078: $6e
	ld   l, d                                        ; $4079: $6a
	sbc  a                                           ; $407a: $9f
	dec  c                                           ; $407b: $0d
	nop                                              ; $407c: $00
	ld   a, [bc]                                     ; $407d: $0a
	dec  c                                           ; $407e: $0d
	nop                                              ; $407f: $00
	nop                                              ; $4080: $00
	rrca                                             ; $4081: $0f
	nop                                              ; $4082: $00
	ld   bc, $1e09                                   ; $4083: $01 $09 $1e
	nop                                              ; $4086: $00
	rrca                                             ; $4087: $0f
	nop                                              ; $4088: $00
	ld   bc, $ac01                                   ; $4089: $01 $01 $ac
	push af                                          ; $408c: $f5
	bit  4, e                                        ; $408d: $cb $63
	and  c                                           ; $408f: $a1
	ld   [hl], h                                     ; $4090: $74
	sbc  [hl]                                        ; $4091: $9e
	ld   e, b                                        ; $4092: $58
	ld   h, c                                        ; $4093: $61
	ld   [hl], e                                     ; $4094: $73
	ld   e, c                                        ; $4095: $59
	ld   d, d                                        ; $4096: $52
	dec  c                                           ; $4097: $0d
	ld   a, h                                        ; $4098: $7c
	inc  bc                                          ; $4099: $03
	xor  [hl]                                        ; $409a: $ae
	ld   d, d                                        ; $409b: $52
	inc  b                                           ; $409c: $04
	ld   d, $7d                                      ; $409d: $16 $7d
	ld   [hl], a                                     ; $409f: $77
	and  c                                           ; $40a0: $a1
	ld   a, b                                        ; $40a1: $78
	ld   [bc], a                                     ; $40a2: $02
	scf                                              ; $40a3: $37
	ld   h, [hl]                                     ; $40a4: $66
	ld   [hl], l                                     ; $40a5: $75
	ld   h, a                                        ; $40a6: $67
	ld   e, c                                        ; $40a7: $59
	ld   sp, hl                                      ; $40a8: $f9
	dec  c                                           ; $40a9: $0d
	nop                                              ; $40aa: $00
	ld   a, [bc]                                     ; $40ab: $0a
	inc  e                                           ; $40ac: $1c
	ld   b, $00                                      ; $40ad: $06 $00
	nop                                              ; $40af: $00
	ld   bc, $0701                                   ; $40b0: $01 $01 $07
	db   $e3                                         ; $40b3: $e3
	cp   b                                           ; $40b4: $b8
	ld   bc, $6e08                                   ; $40b5: $01 $08 $6e
	ld   a, b                                        ; $40b8: $78
	sbc  a                                           ; $40b9: $9f
	dec  c                                           ; $40ba: $0d
	nop                                              ; $40bb: $00
	ld   a, [bc]                                     ; $40bc: $0a
	add  hl, de                                      ; $40bd: $19
	dec  b                                           ; $40be: $05
	inc  bc                                          ; $40bf: $03
	ld   e, b                                        ; $40c0: $58
	ld   h, c                                        ; $40c1: $61
	ld   [hl], e                                     ; $40c2: $73
	ld   e, c                                        ; $40c3: $59
	ld   d, d                                        ; $40c4: $52
	inc  bc                                          ; $40c5: $03
	ld   d, a                                        ; $40c6: $57
	inc  b                                           ; $40c7: $04
	sub  l                                           ; $40c8: $95
	and  b                                           ; $40c9: $a0
	ld   sp, hl                                      ; $40ca: $f9
	nop                                              ; $40cb: $00
	nop                                              ; $40cc: $00
	ld   e, b                                        ; $40cd: $58
	ld   h, c                                        ; $40ce: $61
	ld   [hl], e                                     ; $40cf: $73
	ld   e, c                                        ; $40d0: $59
	ld   d, d                                        ; $40d1: $52
	ld   a, h                                        ; $40d2: $7c
	inc  b                                           ; $40d3: $04
	ld   [hl], d                                     ; $40d4: $72
	inc  b                                           ; $40d5: $04
	sbc  [hl]                                        ; $40d6: $9e
	ld   e, [hl]                                     ; $40d7: $5e
	sub  a                                           ; $40d8: $97
	ld   d, d                                        ; $40d9: $52
	ld   sp, hl                                      ; $40da: $f9
	nop                                              ; $40db: $00
	ld   bc, $6158                                   ; $40dc: $01 $58 $61
	ld   [hl], e                                     ; $40df: $73
	ld   e, c                                        ; $40e0: $59
	ld   d, d                                        ; $40e1: $52
	ld   a, h                                        ; $40e2: $7c
	ld   [de], a                                     ; $40e3: $12
	ld   bc, $1600                                   ; $40e4: $01 $00 $16
	ld   e, [hl]                                     ; $40e7: $5e
	sub  a                                           ; $40e8: $97
	ld   d, d                                        ; $40e9: $52
	ld   sp, hl                                      ; $40ea: $f9
	nop                                              ; $40eb: $00
	ld   [bc], a                                     ; $40ec: $02
	rlca                                             ; $40ed: $07
	jr   nc, jr_067_40f1                             ; $40ee: $30 $01

	ld   [bc], a                                     ; $40f0: $02

jr_067_40f1:
	inc  bc                                          ; $40f1: $03
	ld   bc, $2000                                   ; $40f2: $01 $00 $20
	nop                                              ; $40f5: $00
	rlca                                             ; $40f6: $07
	halt                                             ; $40f7: $76
	ld   bc, $0302                                   ; $40f8: $01 $02 $03
	ld   bc, $2001                                   ; $40fb: $01 $01 $20
	nop                                              ; $40fe: $00
	rlca                                             ; $40ff: $07
	cp   a                                           ; $4100: $bf
	ld   bc, $0302                                   ; $4101: $01 $02 $03
	ld   bc, $2002                                   ; $4104: $01 $02 $20
	nop                                              ; $4107: $00
	ld   b, $00                                      ; $4108: $06 $00
	ld   [bc], a                                     ; $410a: $02
	rrca                                             ; $410b: $0f
	nop                                              ; $410c: $00
	ld   bc, $5801                                   ; $410d: $01 $01 $58
	ld   h, c                                        ; $4110: $61
	ld   [hl], e                                     ; $4111: $73
	ld   e, c                                        ; $4112: $59
	ld   d, d                                        ; $4113: $52
	ld   a, h                                        ; $4114: $7c
	inc  bc                                          ; $4115: $03
	ld   d, a                                        ; $4116: $57
	inc  b                                           ; $4117: $04
	sub  l                                           ; $4118: $95
	and  b                                           ; $4119: $a0
	dec  c                                           ; $411a: $0d
	inc  bc                                          ; $411b: $03
	ld   l, d                                        ; $411c: $6a
	ld   [bc], a                                     ; $411d: $02
	jp   $de03                                       ; $411e: $c3 $03 $de


	ld   a, c                                        ; $4121: $79
	inc  bc                                          ; $4122: $03
	xor  [hl]                                        ; $4123: $ae
	ld   d, h                                        ; $4124: $54
	ld   a, h                                        ; $4125: $7c
	ld   [hl], l                                     ; $4126: $75
	ld   h, a                                        ; $4127: $67
	ld   e, c                                        ; $4128: $59
	ld   sp, hl                                      ; $4129: $f9
	dec  c                                           ; $412a: $0d
	nop                                              ; $412b: $00
	ld   a, [bc]                                     ; $412c: $0a
	inc  e                                           ; $412d: $1c
	ld   b, $02                                      ; $412e: $06 $02
	ld   [bc], a                                     ; $4130: $02
	dec  e                                           ; $4131: $1d
	ld   b, b                                        ; $4132: $40
	ld   d, $03                                      ; $4133: $16 $03
	ld   d, $01                                      ; $4135: $16 $01
	ld   [bc], a                                     ; $4137: $02
	add  hl, hl                                      ; $4138: $29
	nop                                              ; $4139: $00
	ld   bc, $5d52                                   ; $413a: $01 $52 $5d
	sub  a                                           ; $413d: $97
	ld   a, b                                        ; $413e: $78
	and  c                                           ; $413f: $a1
	ld   [hl], l                                     ; $4140: $75
	sub  b                                           ; $4141: $90
	dec  c                                           ; $4142: $0d
	ld   l, e                                        ; $4143: $6b
	sbc  d                                           ; $4144: $9a
	ld   a, l                                        ; $4145: $7d
	ld   a, e                                        ; $4146: $7b
	ei                                               ; $4147: $fb
	ld   l, [hl]                                     ; $4148: $6e
	sbc  e                                           ; $4149: $9b
	ld   a, [$000d]                                  ; $414a: $fa $0d $00
	ld   a, [bc]                                     ; $414d: $0a
	ld   b, $00                                      ; $414e: $06 $00
	ld   [bc], a                                     ; $4150: $02
	rrca                                             ; $4151: $0f
	nop                                              ; $4152: $00
	ld   bc, $5801                                   ; $4153: $01 $01 $58
	ld   h, c                                        ; $4156: $61
	ld   [hl], e                                     ; $4157: $73
	ld   e, c                                        ; $4158: $59
	ld   d, d                                        ; $4159: $52
	ld   a, h                                        ; $415a: $7c
	inc  b                                           ; $415b: $04
	ld   [hl], d                                     ; $415c: $72
	inc  b                                           ; $415d: $04
	sbc  [hl]                                        ; $415e: $9e
	ld   e, l                                        ; $415f: $5d
	sub  a                                           ; $4160: $97
	ld   d, d                                        ; $4161: $52
	and  b                                           ; $4162: $a0
	dec  c                                           ; $4163: $0d
	inc  bc                                          ; $4164: $03
	ld   l, d                                        ; $4165: $6a
	ld   [bc], a                                     ; $4166: $02
	jp   $de03                                       ; $4167: $c3 $03 $de


	ld   a, c                                        ; $416a: $79
	inc  bc                                          ; $416b: $03
	xor  [hl]                                        ; $416c: $ae
	ld   d, h                                        ; $416d: $54
	ld   a, h                                        ; $416e: $7c
	ld   [hl], l                                     ; $416f: $75
	ld   h, a                                        ; $4170: $67
	ld   e, c                                        ; $4171: $59
	ld   sp, hl                                      ; $4172: $f9
	dec  c                                           ; $4173: $0d
	nop                                              ; $4174: $00
	ld   a, [bc]                                     ; $4175: $0a
	inc  e                                           ; $4176: $1c
	ld   b, $00                                      ; $4177: $06 $00
	nop                                              ; $4179: $00
	dec  e                                           ; $417a: $1d
	ld   b, b                                        ; $417b: $40
	ld   d, $03                                      ; $417c: $16 $03
	ld   d, $01                                      ; $417e: $16 $01
	ld   [bc], a                                     ; $4180: $02
	jr   z, jr_067_4183                              ; $4181: $28 $00

jr_067_4183:
	ld   bc, $a154                                   ; $4183: $01 $54 $a1
	rst  $38                                         ; $4186: $ff
	rst  $38                                         ; $4187: $ff
	dec  c                                           ; $4188: $0d
	adc  h                                           ; $4189: $8c
	ld   d, b                                        ; $418a: $50
	sbc  [hl]                                        ; $418b: $9e
	ld   l, e                                        ; $418c: $6b
	and  c                                           ; $418d: $a1
	ld   a, b                                        ; $418e: $78
	sub  b                                           ; $418f: $90
	and  c                                           ; $4190: $a1
	ld   e, c                                        ; $4191: $59
	ld   a, b                                        ; $4192: $78
	sbc  a                                           ; $4193: $9f
	dec  c                                           ; $4194: $0d
	nop                                              ; $4195: $00
	ld   a, [bc]                                     ; $4196: $0a
	ld   b, $00                                      ; $4197: $06 $00
	ld   [bc], a                                     ; $4199: $02
	rrca                                             ; $419a: $0f
	nop                                              ; $419b: $00
	ld   bc, $5801                                   ; $419c: $01 $01 $58
	ld   h, c                                        ; $419f: $61
	ld   [hl], e                                     ; $41a0: $73
	ld   e, c                                        ; $41a1: $59
	ld   d, d                                        ; $41a2: $52
	ld   a, h                                        ; $41a3: $7c
	ld   [de], a                                     ; $41a4: $12
	ld   bc, $1600                                   ; $41a5: $01 $00 $16
	ld   e, [hl]                                     ; $41a8: $5e
	sub  a                                           ; $41a9: $97
	ld   d, d                                        ; $41aa: $52
	and  b                                           ; $41ab: $a0
	dec  c                                           ; $41ac: $0d
	inc  bc                                          ; $41ad: $03
	ld   l, d                                        ; $41ae: $6a
	ld   [bc], a                                     ; $41af: $02
	jp   $de03                                       ; $41b0: $c3 $03 $de


	ld   a, c                                        ; $41b3: $79
	inc  bc                                          ; $41b4: $03
	xor  [hl]                                        ; $41b5: $ae
	ld   d, h                                        ; $41b6: $54
	ld   a, h                                        ; $41b7: $7c
	ld   [hl], l                                     ; $41b8: $75
	ld   h, a                                        ; $41b9: $67
	ld   e, c                                        ; $41ba: $59
	ld   sp, hl                                      ; $41bb: $f9
	dec  c                                           ; $41bc: $0d
	nop                                              ; $41bd: $00
	ld   a, [bc]                                     ; $41be: $0a
	inc  e                                           ; $41bf: $1c
	ld   b, $05                                      ; $41c0: $06 $05
	dec  b                                           ; $41c2: $05
	ld   bc, $ffff                                   ; $41c3: $01 $ff $ff
	ld   d, d                                        ; $41c6: $52
	sub  d                                           ; $41c7: $92
	dec  c                                           ; $41c8: $0d
	sub  b                                           ; $41c9: $90
	ld   d, h                                        ; $41ca: $54
	ld   l, a                                        ; $41cb: $6f
	sub  l                                           ; $41cc: $95
	ld   [hl], c                                     ; $41cd: $71
	halt                                             ; $41ce: $76
	inc  bc                                          ; $41cf: $03
	xor  [hl]                                        ; $41d0: $ae
	ld   d, h                                        ; $41d1: $54
	ld   a, b                                        ; $41d2: $78
	rst  $38                                         ; $41d3: $ff
	rst  $38                                         ; $41d4: $ff
	dec  c                                           ; $41d5: $0d
	nop                                              ; $41d6: $00
	ld   a, [bc]                                     ; $41d7: $0a
	ld   b, $00                                      ; $41d8: $06 $00
	ld   [bc], a                                     ; $41da: $02
	inc  e                                           ; $41db: $1c
	ld   b, $00                                      ; $41dc: $06 $00
	nop                                              ; $41de: $00
	ld   bc, $7158                                   ; $41df: $01 $58 $71
	halt                                             ; $41e2: $76
	sbc  [hl]                                        ; $41e3: $9e
	inc  bc                                          ; $41e4: $03
	ld   l, l                                        ; $41e5: $6d
	dec  b                                           ; $41e6: $05
	add  hl, de                                      ; $41e7: $19
	ld   a, h                                        ; $41e8: $7c
	dec  b                                           ; $41e9: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41ea: $cf
	adc  h                                           ; $41eb: $8c
	sbc  c                                           ; $41ec: $99
	dec  c                                           ; $41ed: $0d
	inc  bc                                          ; $41ee: $03
	ld   l, a                                        ; $41ef: $6f
	ld   [bc], a                                     ; $41f0: $02
	xor  c                                           ; $41f1: $a9
	ld   l, [hl]                                     ; $41f2: $6e
	ld   l, d                                        ; $41f3: $6a
	sbc  a                                           ; $41f4: $9f
	ld   d, d                                        ; $41f5: $52
	ld   l, e                                        ; $41f6: $6b
	ld   h, b                                        ; $41f7: $60
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
	ld   bc, $1e09                                   ; $4202: $01 $09 $1e
	nop                                              ; $4205: $00
	rrca                                             ; $4206: $0f
	nop                                              ; $4207: $00
	ld   bc, $0401                                   ; $4208: $01 $01 $04
	ld   [$9202], sp                                 ; $420b: $08 $02 $92
	ld   a, h                                        ; $420e: $7c
	inc  bc                                          ; $420f: $03
	ld   l, d                                        ; $4210: $6a
	inc  bc                                          ; $4211: $03
	db   $db                                         ; $4212: $db
	ld   a, h                                        ; $4213: $7c
	db   $e3                                         ; $4214: $e3
	call z, $fbe7                                    ; $4215: $cc $e7 $fb
	ld   a, h                                        ; $4218: $7c
	inc  b                                           ; $4219: $04
	dec  bc                                          ; $421a: $0b
	ld   [hl], l                                     ; $421b: $75
	dec  c                                           ; $421c: $0d
	xor  h                                           ; $421d: $ac
	push af                                          ; $421e: $f5
	bit  4, e                                        ; $421f: $cb $63
	and  c                                           ; $4221: $a1
	ld   e, d                                        ; $4222: $5a
	ld   [bc], a                                     ; $4223: $02
	jr   nz, jr_067_422a                             ; $4224: $20 $04

	ld   a, c                                        ; $4226: $79
	ld   [bc], a                                     ; $4227: $02
	sbc  d                                           ; $4228: $9a
	ld   e, e                                        ; $4229: $5b

jr_067_422a:
	ld   a, b                                        ; $422a: $78
	db   $e4                                         ; $422b: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $422c: $cf
	dec  c                                           ; $422d: $0d
	ld   a, l                                        ; $422e: $7d
	ld   a, b                                        ; $422f: $78
	and  c                                           ; $4230: $a1
	ld   [hl], l                                     ; $4231: $75
	ld   h, a                                        ; $4232: $67
	ld   e, c                                        ; $4233: $59
	ld   sp, hl                                      ; $4234: $f9
	dec  c                                           ; $4235: $0d
	nop                                              ; $4236: $00
	ld   a, [bc]                                     ; $4237: $0a
	inc  e                                           ; $4238: $1c
	ld   b, $01                                      ; $4239: $06 $01
	ld   bc, $0401                                   ; $423b: $01 $01 $04
	ld   c, c                                        ; $423e: $49
	ld   l, [hl]                                     ; $423f: $6e
	halt                                             ; $4240: $76
	dec  b                                           ; $4241: $05
	pop  de                                          ; $4242: $d1
	ld   d, h                                        ; $4243: $54
	ld   sp, hl                                      ; $4244: $f9
	dec  c                                           ; $4245: $0d
	nop                                              ; $4246: $00
	ld   a, [bc]                                     ; $4247: $0a
	add  hl, de                                      ; $4248: $19
	dec  b                                           ; $4249: $05
	inc  bc                                          ; $424a: $03
	inc  b                                           ; $424b: $04
	ld   [$9202], sp                                 ; $424c: $08 $02 $92
	db   $eb                                         ; $424f: $eb
	push af                                          ; $4250: $f5
	jp   nz, $0000                                  ; $4251: $c2 $00 $00

	call c, $c9c4                                    ; $4254: $dc $c4 $c9
	or   d                                           ; $4257: $b2
	ei                                               ; $4258: $fb
	xor  [hl]                                        ; $4259: $ae
	nop                                              ; $425a: $00
	ld   bc, $f5ac                                   ; $425b: $01 $ac $f5
	res  7, d                                        ; $425e: $cb $ba
	db   $db                                         ; $4260: $db
	cp   b                                           ; $4261: $b8
	push hl                                          ; $4262: $e5
	db   $ed                                         ; $4263: $ed
	nop                                              ; $4264: $00
	ld   [bc], a                                     ; $4265: $02
	rlca                                             ; $4266: $07
	xor  c                                           ; $4267: $a9
	ld   [bc], a                                     ; $4268: $02
	ld   [bc], a                                     ; $4269: $02
	inc  bc                                          ; $426a: $03
	ld   bc, $2000                                   ; $426b: $01 $00 $20
	nop                                              ; $426e: $00
	rlca                                             ; $426f: $07
	ei                                               ; $4270: $fb
	ld   [bc], a                                     ; $4271: $02
	ld   [bc], a                                     ; $4272: $02
	inc  bc                                          ; $4273: $03
	ld   bc, $2001                                   ; $4274: $01 $01 $20
	nop                                              ; $4277: $00
	rlca                                             ; $4278: $07
	ld   h, a                                        ; $4279: $67
	inc  bc                                          ; $427a: $03
	ld   [bc], a                                     ; $427b: $02
	inc  bc                                          ; $427c: $03
	ld   bc, $2002                                   ; $427d: $01 $02 $20
	nop                                              ; $4280: $00
	ld   b, $10                                      ; $4281: $06 $10
	inc  b                                           ; $4283: $04
	rrca                                             ; $4284: $0f
	nop                                              ; $4285: $00
	ld   bc, $0401                                   ; $4286: $01 $01 $04
	ld   [$9202], sp                                 ; $4289: $08 $02 $92
	db   $eb                                         ; $428c: $eb
	push af                                          ; $428d: $f5
	jp   nz, Jump_067_759e                           ; $428e: $c2 $9e $75

	ld   h, a                                        ; $4291: $67
	ld   e, c                                        ; $4292: $59
	ld   sp, hl                                      ; $4293: $f9
	dec  c                                           ; $4294: $0d
	nop                                              ; $4295: $00
	ld   a, [bc]                                     ; $4296: $0a
	inc  e                                           ; $4297: $1c
	ld   b, $01                                      ; $4298: $06 $01
	ld   bc, $5001                                   ; $429a: $01 $01 $50
	ld   d, b                                        ; $429d: $50
	sbc  [hl]                                        ; $429e: $9e
	ld   d, b                                        ; $429f: $50
	sbc  d                                           ; $42a0: $9a
	ld   a, l                                        ; $42a1: $7d
	ld   d, h                                        ; $42a2: $54
	adc  h                                           ; $42a3: $8c
	ld   d, d                                        ; $42a4: $52
	ld   l, d                                        ; $42a5: $6a
	sbc  a                                           ; $42a6: $9f
	dec  c                                           ; $42a7: $0d
	inc  b                                           ; $42a8: $04
	ld   [$9202], sp                                 ; $42a9: $08 $02 $92
	inc  b                                           ; $42ac: $04
	rst  ToBoot                                         ; $42ad: $c7
	inc  b                                           ; $42ae: $04
	sub  d                                           ; $42af: $92
	ld   l, [hl]                                     ; $42b0: $6e
	sbc  a                                           ; $42b1: $9f
	dec  c                                           ; $42b2: $0d
	nop                                              ; $42b3: $00
	ld   a, [bc]                                     ; $42b4: $0a
	inc  e                                           ; $42b5: $1c
	ld   b, $05                                      ; $42b6: $06 $05
	dec  b                                           ; $42b8: $05
	ld   bc, $5f6e                                   ; $42b9: $01 $6e $5f
	ld   [hl], a                                     ; $42bc: $77
	sbc  [hl]                                        ; $42bd: $9e
	ld   l, a                                        ; $42be: $6f
	sub  l                                           ; $42bf: $95
	ld   [hl], c                                     ; $42c0: $71
	halt                                             ; $42c1: $76
	dec  b                                           ; $42c2: $05
	ld   h, [hl]                                     ; $42c3: $66
	ld   e, d                                        ; $42c4: $5a
	dec  c                                           ; $42c5: $0d
	ld   h, a                                        ; $42c6: $67
	ld   e, l                                        ; $42c7: $5d
	ld   a, b                                        ; $42c8: $78
	ld   d, d                                        ; $42c9: $52
	and  c                                           ; $42ca: $a1
	ld   l, [hl]                                     ; $42cb: $6e
	sub  [hl]                                        ; $42cc: $96
	ld   a, b                                        ; $42cd: $78
	rst  $38                                         ; $42ce: $ff
	rst  $38                                         ; $42cf: $ff
	dec  c                                           ; $42d0: $0d
	nop                                              ; $42d1: $00
	ld   a, [bc]                                     ; $42d2: $0a
	ld   b, $10                                      ; $42d3: $06 $10
	inc  b                                           ; $42d5: $04
	rrca                                             ; $42d6: $0f
	nop                                              ; $42d7: $00
	ld   bc, $dc01                                   ; $42d8: $01 $01 $dc
	call nz, $b2c9                                   ; $42db: $c4 $c9 $b2
	ei                                               ; $42de: $fb
	xor  [hl]                                        ; $42df: $ae
	ld   [hl], l                                     ; $42e0: $75
	ld   h, a                                        ; $42e1: $67
	ld   e, c                                        ; $42e2: $59
	ld   sp, hl                                      ; $42e3: $f9
	dec  c                                           ; $42e4: $0d
	nop                                              ; $42e5: $00
	ld   a, [bc]                                     ; $42e6: $0a
	inc  e                                           ; $42e7: $1c
	ld   b, $01                                      ; $42e8: $06 $01
	ld   bc, $6b01                                   ; $42ea: $01 $01 $6b
	sbc  d                                           ; $42ed: $9a
	ld   a, l                                        ; $42ee: $7d
	sbc  [hl]                                        ; $42ef: $9e
	and  e                                           ; $42f0: $a3
	and  l                                           ; $42f1: $a5
	db   $ec                                         ; $42f2: $ec
	cp   d                                           ; $42f3: $ba
	ld   e, d                                        ; $42f4: $5a
	inc  b                                           ; $42f5: $04
	ld   c, $02                                      ; $42f6: $0e $02
	sbc  d                                           ; $42f8: $9a
	ld   e, e                                        ; $42f9: $5b
	dec  c                                           ; $42fa: $0d
	ld   a, b                                        ; $42fb: $78
	and  c                                           ; $42fc: $a1
	ld   l, [hl]                                     ; $42fd: $6e
	sbc  a                                           ; $42fe: $9f
	ld   [bc], a                                     ; $42ff: $02
	ld   [hl], d                                     ; $4300: $72
	inc  b                                           ; $4301: $04
	dec  bc                                          ; $4302: $0b
	and  b                                           ; $4303: $a0
	ret  nc                                          ; $4304: $d0

	jp   nz, $c5e0                                   ; $4305: $c2 $e0 $c5

	ld   [hl], l                                     ; $4308: $75
	dec  c                                           ; $4309: $0d
	jp   c, $dac9                                    ; $430a: $da $c9 $da

	ret                                              ; $430d: $c9


	ld   a, c                                        ; $430e: $79
	ld   h, l                                        ; $430f: $65
	ld   [hl], h                                     ; $4310: $74
	inc  bc                                          ; $4311: $03
	ld   l, d                                        ; $4312: $6a
	add  a                                           ; $4313: $87
	sbc  c                                           ; $4314: $99
	and  c                                           ; $4315: $a1
	ld   l, [hl]                                     ; $4316: $6e
	ld   l, d                                        ; $4317: $6a
	sbc  a                                           ; $4318: $9f
	dec  c                                           ; $4319: $0d
	nop                                              ; $431a: $00
	ld   a, [bc]                                     ; $431b: $0a
	ld   bc, $718c                                   ; $431c: $01 $8c $71
	ld   l, l                                        ; $431f: $6d
	ld   e, l                                        ; $4320: $5d
	sbc  [hl]                                        ; $4321: $9e
	and  e                                           ; $4322: $a3
	and  l                                           ; $4323: $a5
	db   $ec                                         ; $4324: $ec
	cp   d                                           ; $4325: $ba
	ld   a, l                                        ; $4326: $7d
	dec  c                                           ; $4327: $0d
	ld   [bc], a                                     ; $4328: $02
	ld   e, [hl]                                     ; $4329: $5e
	ld   a, c                                        ; $432a: $79
	ld   e, c                                        ; $432b: $59
	ld   d, d                                        ; $432c: $52
	ld   l, l                                        ; $432d: $6d
	sub  [hl]                                        ; $432e: $96
	ld   d, h                                        ; $432f: $54
	ld   a, b                                        ; $4330: $78
	dec  c                                           ; $4331: $0d
	ld   e, b                                        ; $4332: $58
	inc  bc                                          ; $4333: $03
	add  [hl]                                        ; $4334: $86
	inc  bc                                          ; $4335: $03
	sbc  b                                           ; $4336: $98
	ld   l, [hl]                                     ; $4337: $6e
	sub  [hl]                                        ; $4338: $96
	ld   a, b                                        ; $4339: $78
	db   $fc                                         ; $433a: $fc
	sbc  a                                           ; $433b: $9f
	dec  c                                           ; $433c: $0d
	nop                                              ; $433d: $00
	ld   a, [bc]                                     ; $433e: $0a
	ld   b, $10                                      ; $433f: $06 $10
	inc  b                                           ; $4341: $04
	rrca                                             ; $4342: $0f
	nop                                              ; $4343: $00
	ld   bc, $ac01                                   ; $4344: $01 $01 $ac
	push af                                          ; $4347: $f5
	res  7, d                                        ; $4348: $cb $ba
	db   $db                                         ; $434a: $db
	cp   b                                           ; $434b: $b8
	push hl                                          ; $434c: $e5
	db   $ed                                         ; $434d: $ed
	ld   [hl], l                                     ; $434e: $75
	ld   h, a                                        ; $434f: $67
	ld   e, c                                        ; $4350: $59
	ld   sp, hl                                      ; $4351: $f9
	dec  c                                           ; $4352: $0d
	nop                                              ; $4353: $00
	ld   a, [bc]                                     ; $4354: $0a
	inc  e                                           ; $4355: $1c
	ld   b, $05                                      ; $4356: $06 $05
	dec  b                                           ; $4358: $05
	ld   bc, $a178                                   ; $4359: $01 $78 $a1
	ld   l, [hl]                                     ; $435c: $6e
	sub  [hl]                                        ; $435d: $96
	ld   l, e                                        ; $435e: $6b
	sbc  d                                           ; $435f: $9a
	sbc  a                                           ; $4360: $9f
	dec  c                                           ; $4361: $0d
	ld   l, e                                        ; $4362: $6b
	and  c                                           ; $4363: $a1
	ld   a, b                                        ; $4364: $78
	ld   a, h                                        ; $4365: $7c
	inc  b                                           ; $4366: $04
	sub  $52                                         ; $4367: $d6 $52
	sub  [hl]                                        ; $4369: $96
	sbc  a                                           ; $436a: $9f
	dec  c                                           ; $436b: $0d
	ld   [hl], l                                     ; $436c: $75
	sub  b                                           ; $436d: $90
	rst  $38                                         ; $436e: $ff
	rst  $38                                         ; $436f: $ff
	dec  c                                           ; $4370: $0d
	nop                                              ; $4371: $00
	ld   a, [bc]                                     ; $4372: $0a
	inc  e                                           ; $4373: $1c
	ld   b, $01                                      ; $4374: $06 $01
	ld   bc, $ff01                                   ; $4376: $01 $01 $ff
	rst  $38                                         ; $4379: $ff
	ld   d, h                                        ; $437a: $54
	ld   a, b                                        ; $437b: $78
	inc  b                                           ; $437c: $04
	inc  bc                                          ; $437d: $03
	halt                                             ; $437e: $76
	ret                                              ; $437f: $c9


	push af                                          ; $4380: $f5
	xor  h                                           ; $4381: $ac
	push bc                                          ; $4382: $c5
	inc  bc                                          ; $4383: $03
	call nc, Call_067_6a03                           ; $4384: $d4 $03 $6a
	halt                                             ; $4387: $76
	dec  c                                           ; $4388: $0d
	inc  b                                           ; $4389: $04
	dec  bc                                          ; $438a: $0b
	ld   [bc], a                                     ; $438b: $02
	sub  b                                           ; $438c: $90
	ld   l, e                                        ; $438d: $6b
	ld   a, [hl]                                     ; $438e: $7e
	ld   a, h                                        ; $438f: $7c
	inc  d                                           ; $4390: $14
	inc  bc                                          ; $4391: $03
	db   $ed                                         ; $4392: $ed
	cp   h                                           ; $4393: $bc
	call nz, Call_067_5ac9                           ; $4394: $c4 $c9 $5a
	dec  c                                           ; $4397: $0d
	ld   d, b                                        ; $4398: $50
	sbc  d                                           ; $4399: $9a
	ld   a, [hl]                                     ; $439a: $7e
	sbc  [hl]                                        ; $439b: $9e
	ld   d, b                                        ; $439c: $50
	ld   l, l                                        ; $439d: $6d
	ld   d, d                                        ; $439e: $52
	sub  b                                           ; $439f: $90
	inc  b                                           ; $43a0: $04
	ret  nz                                          ; $43a1: $c0

	inc  bc                                          ; $43a2: $03
	ld   a, l                                        ; $43a3: $7d
	ld   a, b                                        ; $43a4: $78
	ld   a, h                                        ; $43a5: $7c
	ld   a, c                                        ; $43a6: $79
	rst  $38                                         ; $43a7: $ff
	dec  c                                           ; $43a8: $0d
	nop                                              ; $43a9: $00
	ld   a, [bc]                                     ; $43aa: $0a
	inc  e                                           ; $43ab: $1c
	ld   b, $07                                      ; $43ac: $06 $07
	rlca                                             ; $43ae: $07
	dec  e                                           ; $43af: $1d
	ld   b, b                                        ; $43b0: $40
	ld   d, $03                                      ; $43b1: $16 $03
	ld   d, $01                                      ; $43b3: $16 $01
	inc  bc                                          ; $43b5: $03
	jr   z, jr_067_43b8                              ; $43b6: $28 $00

jr_067_43b8:
	ld   bc, $546b                                   ; $43b8: $01 $6b $54
	ld   l, [hl]                                     ; $43bb: $6e
	ld   a, [$6b10]                                  ; $43bc: $fa $10 $6b
	ld   a, h                                        ; $43bf: $7c
	inc  d                                           ; $43c0: $14
	inc  bc                                          ; $43c1: $03
	db   $ed                                         ; $43c2: $ed
	cp   h                                           ; $43c3: $bc
	call nz, $a0c9                                   ; $43c4: $c4 $c9 $a0
	dec  c                                           ; $43c7: $0d
	xor  h                                           ; $43c8: $ac
	push af                                          ; $43c9: $f5
	res  7, d                                        ; $43ca: $cb $ba
	db   $db                                         ; $43cc: $db
	cp   b                                           ; $43cd: $b8
	push hl                                          ; $43ce: $e5
	db   $ed                                         ; $43cf: $ed
	ld   a, c                                        ; $43d0: $79
	ld   h, a                                        ; $43d1: $67
	sbc  c                                           ; $43d2: $99
	ld   e, c                                        ; $43d3: $59
	ld   a, [$520d]                                  ; $43d4: $fa $0d $52
	ld   d, d                                        ; $43d7: $52
	ld   a, b                                        ; $43d8: $78
	db   $fc                                         ; $43d9: $fc
	inc  bc                                          ; $43da: $03
	ld   l, d                                        ; $43db: $6a
	add  a                                           ; $43dc: $87
	ld   h, d                                        ; $43dd: $62
	ld   l, l                                        ; $43de: $6d
	ld   d, [hl]                                     ; $43df: $56
	ld   e, d                                        ; $43e0: $5a
	ld   d, b                                        ; $43e1: $50
	ld   [hl], c                                     ; $43e2: $71
	ld   [hl], h                                     ; $43e3: $74
	sbc  a                                           ; $43e4: $9f
	dec  c                                           ; $43e5: $0d
	nop                                              ; $43e6: $00
	ld   a, [bc]                                     ; $43e7: $0a
	ld   b, $10                                      ; $43e8: $06 $10
	inc  b                                           ; $43ea: $04
	inc  e                                           ; $43eb: $1c
	ld   b, $00                                      ; $43ec: $06 $00
	nop                                              ; $43ee: $00
	ld   bc, $7158                                   ; $43ef: $01 $58 $71
	halt                                             ; $43f2: $76
	sbc  [hl]                                        ; $43f3: $9e
	inc  bc                                          ; $43f4: $03
	ld   l, a                                        ; $43f5: $6f
	ld   [bc], a                                     ; $43f6: $02
	xor  c                                           ; $43f7: $a9
	ld   l, [hl]                                     ; $43f8: $6e
	sbc  a                                           ; $43f9: $9f
	dec  c                                           ; $43fa: $0d
	ld   h, [hl]                                     ; $43fb: $66
	sub  c                                           ; $43fc: $91
	sbc  [hl]                                        ; $43fd: $9e
	ld   [bc], a                                     ; $43fe: $02
	and  l                                           ; $43ff: $a5
	inc  b                                           ; $4400: $04
	xor  d                                           ; $4401: $aa
	sub  b                                           ; $4402: $90
	ld   [bc], a                                     ; $4403: $02
	jr   nz, jr_067_440a                             ; $4404: $20 $04

	xor  d                                           ; $4406: $aa
	dec  c                                           ; $4407: $0d
	sub  $a2                                         ; $4408: $d6 $a2

jr_067_440a:
	and  l                                           ; $440a: $a5
	ret                                              ; $440b: $c9


	ld   l, [hl]                                     ; $440c: $6e
	ld   l, d                                        ; $440d: $6a
	ld   a, [$000d]                                  ; $440e: $fa $0d $00
	ld   a, [bc]                                     ; $4411: $0a
	dec  c                                           ; $4412: $0d
	nop                                              ; $4413: $00
	nop                                              ; $4414: $00
	rrca                                             ; $4415: $0f
	nop                                              ; $4416: $00
	ld   bc, $1e09                                   ; $4417: $01 $09 $1e
	nop                                              ; $441a: $00
	rrca                                             ; $441b: $0f
	nop                                              ; $441c: $00
	ld   bc, $6701                                   ; $441d: $01 $01 $67
	adc  l                                           ; $4420: $8d
	sbc  d                                           ; $4421: $9a
	ld   h, e                                        ; $4422: $63
	and  c                                           ; $4423: $a1
	ld   [hl], h                                     ; $4424: $74
	sbc  [hl]                                        ; $4425: $9e
	xor  h                                           ; $4426: $ac
	push af                                          ; $4427: $f5
	bit  4, e                                        ; $4428: $cb $63
	and  c                                           ; $442a: $a1
	ld   e, c                                        ; $442b: $59
	sub  a                                           ; $442c: $97
	dec  c                                           ; $442d: $0d
	ld   [bc], a                                     ; $442e: $02
	sub  l                                           ; $442f: $95
	ld   [hl], h                                     ; $4430: $74
	sbc  [hl]                                        ; $4431: $9e
	ld   [hl], a                                     ; $4432: $77
	and  c                                           ; $4433: $a1
	ld   a, b                                        ; $4434: $78
	inc  b                                           ; $4435: $04
	ld   a, b                                        ; $4436: $78
	ld   [hl], l                                     ; $4437: $75
	ld   h, a                                        ; $4438: $67
	ld   e, c                                        ; $4439: $59
	ld   sp, hl                                      ; $443a: $f9
	dec  c                                           ; $443b: $0d
	nop                                              ; $443c: $00
	ld   a, [bc]                                     ; $443d: $0a
	inc  e                                           ; $443e: $1c
	ld   b, $01                                      ; $443f: $06 $01
	ld   bc, $6701                                   ; $4441: $01 $01 $67
	adc  l                                           ; $4444: $8d
	sbc  d                                           ; $4445: $9a
	ld   d, l                                        ; $4446: $55
	ld   sp, hl                                      ; $4447: $f9
	dec  c                                           ; $4448: $0d
	ld   l, [hl]                                     ; $4449: $6e
	sbc  d                                           ; $444a: $9a
	ld   e, c                                        ; $444b: $59
	sub  a                                           ; $444c: $97
	adc  l                                           ; $444d: $8d
	ld   [hl], h                                     ; $444e: $74
	sub  b                                           ; $444f: $90
	sbc  [hl]                                        ; $4450: $9e
	dec  c                                           ; $4451: $0d
	or   [hl]                                        ; $4452: $b6
	db   $dd                                         ; $4453: $dd
	rst  ToBoot                                         ; $4454: $c7
	push af                                          ; $4455: $f5
	inc  bc                                          ; $4456: $03
	ld   l, [hl]                                     ; $4457: $6e
	ld   l, [hl]                                     ; $4458: $6e
	sbc  e                                           ; $4459: $9b
	ld   sp, hl                                      ; $445a: $f9
	dec  c                                           ; $445b: $0d
	nop                                              ; $445c: $00
	ld   a, [bc]                                     ; $445d: $0a
	ld   bc, $4f8c                                   ; $445e: $01 $8c $4f
	sbc  [hl]                                        ; $4461: $9e
	ld   d, b                                        ; $4462: $50
	ld   d, d                                        ; $4463: $52
	ld   [hl], d                                     ; $4464: $72
	ld   e, c                                        ; $4465: $59
	sub  a                                           ; $4466: $97
	ld   e, c                                        ; $4467: $59
	ld   d, h                                        ; $4468: $54
	halt                                             ; $4469: $76
	dec  c                                           ; $446a: $0d
	ld   e, a                                        ; $446b: $5f
	ld   [hl], c                                     ; $446c: $71
	ld   h, c                                        ; $446d: $61
	ld   d, h                                        ; $446e: $54
	inc  b                                           ; $446f: $04
	ret  c                                           ; $4470: $d8

	inc  b                                           ; $4471: $04
	xor  h                                           ; $4472: $ac
	ld   d, d                                        ; $4473: $52
	ld   e, c                                        ; $4474: $59
	sub  a                                           ; $4475: $97
	dec  c                                           ; $4476: $0d
	ld   l, l                                        ; $4477: $6d
	ld   d, d                                        ; $4478: $52
	ld   e, l                                        ; $4479: $5d
	ld   [hl], d                                     ; $447a: $72
	ld   a, l                                        ; $447b: $7d
	ld   h, l                                        ; $447c: $65
	ld   a, b                                        ; $447d: $78
	ld   d, d                                        ; $447e: $52
	ld   [bc], a                                     ; $447f: $02
	ld   a, [de]                                     ; $4480: $1a
	inc  bc                                          ; $4481: $03
	ld   l, e                                        ; $4482: $6b
	ld   l, [hl]                                     ; $4483: $6e
	sub  [hl]                                        ; $4484: $96
	sbc  a                                           ; $4485: $9f
	dec  c                                           ; $4486: $0d
	nop                                              ; $4487: $00
	ld   a, [bc]                                     ; $4488: $0a
	inc  e                                           ; $4489: $1c
	ld   b, $00                                      ; $448a: $06 $00
	nop                                              ; $448c: $00
	ld   bc, $7158                                   ; $448d: $01 $58 $71
	halt                                             ; $4490: $76
	sbc  [hl]                                        ; $4491: $9e
	inc  bc                                          ; $4492: $03
	ld   l, a                                        ; $4493: $6f
	ld   [bc], a                                     ; $4494: $02
	xor  c                                           ; $4495: $a9
	ld   l, [hl]                                     ; $4496: $6e
	sbc  a                                           ; $4497: $9f
	dec  c                                           ; $4498: $0d
	ld   h, [hl]                                     ; $4499: $66
	sub  c                                           ; $449a: $91
	sbc  [hl]                                        ; $449b: $9e
	ld   [bc], a                                     ; $449c: $02
	and  l                                           ; $449d: $a5
	inc  b                                           ; $449e: $04
	xor  d                                           ; $449f: $aa
	sub  b                                           ; $44a0: $90
	ld   [bc], a                                     ; $44a1: $02
	jr   nz, jr_067_44a8                             ; $44a2: $20 $04

	xor  d                                           ; $44a4: $aa
	dec  c                                           ; $44a5: $0d
	sub  $a2                                         ; $44a6: $d6 $a2

jr_067_44a8:
	and  l                                           ; $44a8: $a5
	ret                                              ; $44a9: $c9


	ld   l, [hl]                                     ; $44aa: $6e
	ld   l, d                                        ; $44ab: $6a
	ld   a, [$000d]                                  ; $44ac: $fa $0d $00
	ld   a, [bc]                                     ; $44af: $0a
	dec  c                                           ; $44b0: $0d
	nop                                              ; $44b1: $00
	nop                                              ; $44b2: $00
	rrca                                             ; $44b3: $0f
	nop                                              ; $44b4: $00
	ld   bc, $1e09                                   ; $44b5: $01 $09 $1e
	nop                                              ; $44b8: $00
	nop                                              ; $44b9: $00
	rrca                                             ; $44ba: $0f
	nop                                              ; $44bb: $00
	ld   bc, $030d                                   ; $44bc: $01 $0d $03
	inc  bc                                          ; $44bf: $03
	ld   [bc], a                                     ; $44c0: $02
	ld   bc, $7d58                                   ; $44c1: $01 $58 $7d
	sub  [hl]                                        ; $44c4: $96
	ld   d, h                                        ; $44c5: $54
	ld   h, d                                        ; $44c6: $62
	ld   h, h                                        ; $44c7: $64
	ld   d, d                                        ; $44c8: $52
	adc  h                                           ; $44c9: $8c
	ld   h, a                                        ; $44ca: $67
	sbc  [hl]                                        ; $44cb: $9e
	dec  c                                           ; $44cc: $0d
	rst  JumpTable                                         ; $44cd: $df
	db   $ec                                         ; $44ce: $ec
	and  e                                           ; $44cf: $a3
	ld   h, e                                        ; $44d0: $63
	and  c                                           ; $44d1: $a1
	sbc  a                                           ; $44d2: $9f
	dec  c                                           ; $44d3: $0d
	nop                                              ; $44d4: $00
	ld   a, [bc]                                     ; $44d5: $0a
	inc  e                                           ; $44d6: $1c
	inc  bc                                          ; $44d7: $03
	inc  bc                                          ; $44d8: $03
	inc  bc                                          ; $44d9: $03
	ld   bc, $7d58                                   ; $44da: $01 $58 $7d
	sub  [hl]                                        ; $44dd: $96
	ld   d, h                                        ; $44de: $54
	sbc  a                                           ; $44df: $9f
	dec  c                                           ; $44e0: $0d
	nop                                              ; $44e1: $00
	ld   a, [bc]                                     ; $44e2: $0a
	rrca                                             ; $44e3: $0f
	nop                                              ; $44e4: $00
	ld   bc, $0101                                   ; $44e5: $01 $01 $01
	inc  bc                                          ; $44e8: $03
	ld   a, b                                        ; $44e9: $78
	ld   a, c                                        ; $44ea: $79
	and  b                                           ; $44eb: $a0
	ld   [bc], a                                     ; $44ec: $02
	jp   nz, Jump_067_5461                           ; $44ed: $c2 $61 $54

	ld   e, c                                        ; $44f0: $59
	ld   a, b                                        ; $44f1: $78
	rst  $38                                         ; $44f2: $ff
	rst  $38                                         ; $44f3: $ff
	ld   bc, $0d04                                   ; $44f4: $01 $04 $0d
	nop                                              ; $44f7: $00
	ld   a, [bc]                                     ; $44f8: $0a
	add  hl, de                                      ; $44f9: $19
	dec  b                                           ; $44fa: $05
	inc  bc                                          ; $44fb: $03
	dec  b                                           ; $44fc: $05
	dec  bc                                          ; $44fd: $0b
	ld   [bc], a                                     ; $44fe: $02
	dec  hl                                          ; $44ff: $2b
	ld   a, h                                        ; $4500: $7c
	dec  b                                           ; $4501: $05
	jr   nz, jr_067_4504                             ; $4502: $20 $00

jr_067_4504:
	nop                                              ; $4504: $00
	ld   [bc], a                                     ; $4505: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4506: $cf
	dec  b                                           ; $4507: $05
	ld   a, [de]                                     ; $4508: $1a
	ld   a, h                                        ; $4509: $7c
	dec  b                                           ; $450a: $05
	jr   nz, jr_067_450d                             ; $450b: $20 $00

jr_067_450d:
	ld   bc, $a5a3                                   ; $450d: $01 $a3 $a5
	db   $ec                                         ; $4510: $ec
	cp   d                                           ; $4511: $ba
	ld   a, h                                        ; $4512: $7c
	dec  b                                           ; $4513: $05
	jr   nz, jr_067_4516                             ; $4514: $20 $00

jr_067_4516:
	ld   [bc], a                                     ; $4516: $02
	rlca                                             ; $4517: $07
	and  h                                           ; $4518: $a4
	nop                                              ; $4519: $00
	ld   [bc], a                                     ; $451a: $02
	inc  bc                                          ; $451b: $03
	ld   bc, $2000                                   ; $451c: $01 $00 $20
	nop                                              ; $451f: $00
	rlca                                             ; $4520: $07
	add  hl, sp                                      ; $4521: $39
	ld   [bc], a                                     ; $4522: $02
	ld   [bc], a                                     ; $4523: $02
	inc  bc                                          ; $4524: $03
	ld   bc, $2001                                   ; $4525: $01 $01 $20
	nop                                              ; $4528: $00
	rlca                                             ; $4529: $07
	rlca                                             ; $452a: $07
	inc  bc                                          ; $452b: $03
	ld   [bc], a                                     ; $452c: $02
	inc  bc                                          ; $452d: $03
	ld   bc, $2002                                   ; $452e: $01 $02 $20
	nop                                              ; $4531: $00
	ld   b, $7b                                      ; $4532: $06 $7b
	nop                                              ; $4534: $00
	inc  e                                           ; $4535: $1c
	inc  bc                                          ; $4536: $03
	nop                                              ; $4537: $00
	nop                                              ; $4538: $00
	ld   bc, $f304                                   ; $4539: $01 $04 $f3
	ld   e, d                                        ; $453c: $5a
	ld   a, b                                        ; $453d: $78
	ld   d, d                                        ; $453e: $52
	ld   a, b                                        ; $453f: $78
	sub  a                                           ; $4540: $97
	dec  c                                           ; $4541: $0d
	inc  bc                                          ; $4542: $03
	ld   l, l                                        ; $4543: $6d
	dec  b                                           ; $4544: $05
	add  hl, de                                      ; $4545: $19
	ld   a, h                                        ; $4546: $7c
	ld   h, [hl]                                     ; $4547: $66
	sub  e                                           ; $4548: $93
	and  c                                           ; $4549: $a1
	add  c                                           ; $454a: $81
	and  b                                           ; $454b: $a0
	dec  c                                           ; $454c: $0d
	ld   h, l                                        ; $454d: $65
	ld   a, b                                        ; $454e: $78
	ld   h, e                                        ; $454f: $63
	ld   d, d                                        ; $4550: $52
	sbc  a                                           ; $4551: $9f
	dec  c                                           ; $4552: $0d
	nop                                              ; $4553: $00
	ld   a, [bc]                                     ; $4554: $0a
	dec  c                                           ; $4555: $0d
	nop                                              ; $4556: $00
	nop                                              ; $4557: $00
	rrca                                             ; $4558: $0f
	nop                                              ; $4559: $00
	ld   bc, $1e09                                   ; $455a: $01 $09 $1e
	nop                                              ; $455d: $00
	rrca                                             ; $455e: $0f
	nop                                              ; $455f: $00
	ld   bc, $df01                                   ; $4560: $01 $01 $df
	db   $ec                                         ; $4563: $ec
	and  e                                           ; $4564: $a3
	ld   h, e                                        ; $4565: $63
	and  c                                           ; $4566: $a1
	ld   [hl], h                                     ; $4567: $74
	sbc  [hl]                                        ; $4568: $9e
	ld   [hl], a                                     ; $4569: $77
	and  c                                           ; $456a: $a1
	ld   a, b                                        ; $456b: $78
	ld   [bc], a                                     ; $456c: $02
	dec  d                                           ; $456d: $15
	ld   [bc], a                                     ; $456e: $02
	db   $fc                                         ; $456f: $fc
	ld   e, d                                        ; $4570: $5a
	dec  c                                           ; $4571: $0d
	ld   [bc], a                                     ; $4572: $02
	sbc  d                                           ; $4573: $9a
	adc  l                                           ; $4574: $8d
	ld   a, b                                        ; $4575: $78
	and  c                                           ; $4576: $a1
	ld   [hl], l                                     ; $4577: $75
	ld   h, a                                        ; $4578: $67
	ld   e, c                                        ; $4579: $59
	ld   sp, hl                                      ; $457a: $f9
	dec  c                                           ; $457b: $0d
	nop                                              ; $457c: $00
	ld   a, [bc]                                     ; $457d: $0a
	inc  e                                           ; $457e: $1c
	inc  bc                                          ; $457f: $03
	inc  b                                           ; $4580: $04
	inc  b                                           ; $4581: $04
	ld   bc, $546b                                   ; $4582: $01 $6b $54
	ld   d, d                                        ; $4585: $52
	ld   d, h                                        ; $4586: $54
	dec  b                                           ; $4587: $05
	jr   nz, jr_067_4607                             ; $4588: $20 $7d

	ld   [bc], a                                     ; $458a: $02
	sbc  d                                           ; $458b: $9a
	ld   e, e                                        ; $458c: $5b
	ld   h, [hl]                                     ; $458d: $66
	sub  c                                           ; $458e: $91
	ld   a, b                                        ; $458f: $78
	ld   d, d                                        ; $4590: $52
	sbc  l                                           ; $4591: $9d
	sbc  a                                           ; $4592: $9f
	dec  c                                           ; $4593: $0d
	nop                                              ; $4594: $00
	ld   a, [bc]                                     ; $4595: $0a
	rrca                                             ; $4596: $0f
	nop                                              ; $4597: $00
	ld   bc, $6b01                                   ; $4598: $01 $01 $6b
	ld   d, h                                        ; $459b: $54
	ld   [hl], l                                     ; $459c: $75
	ld   h, a                                        ; $459d: $67
	ld   e, c                                        ; $459e: $59
	rst  $38                                         ; $459f: $ff
	rst  $38                                         ; $45a0: $ff
	dec  c                                           ; $45a1: $0d
	nop                                              ; $45a2: $00
	ld   a, [bc]                                     ; $45a3: $0a
	inc  e                                           ; $45a4: $1c
	inc  bc                                          ; $45a5: $03
	nop                                              ; $45a6: $00
	nop                                              ; $45a7: $00
	ld   bc, $508c                                   ; $45a8: $01 $8c $50
	sbc  [hl]                                        ; $45ab: $9e
	ld   [hl], l                                     ; $45ac: $75
	sub  b                                           ; $45ad: $90
	ld   [bc], a                                     ; $45ae: $02
	call nc, Call_067_7452                           ; $45af: $d4 $52 $74
	ld   [bc], a                                     ; $45b2: $02
	sbc  l                                           ; $45b3: $9d
	ld   d, h                                        ; $45b4: $54
	ld   a, b                                        ; $45b5: $78
	sub  a                                           ; $45b6: $97
	dec  c                                           ; $45b7: $0d
	inc  b                                           ; $45b8: $04
	ld   l, e                                        ; $45b9: $6b
	inc  b                                           ; $45ba: $04
	db   $e4                                         ; $45bb: $e4
	dec  b                                           ; $45bc: $05
	ld   a, [bc]                                     ; $45bd: $0a
	ld   a, h                                        ; $45be: $7c
	ld   d, b                                        ; $45bf: $50
	sbc  c                                           ; $45c0: $99
	inc  bc                                          ; $45c1: $03
	add  d                                           ; $45c2: $82
	ld   e, c                                        ; $45c3: $59
	ld   h, l                                        ; $45c4: $65
	sub  a                                           ; $45c5: $97
	ld   sp, hl                                      ; $45c6: $f9
	dec  c                                           ; $45c7: $0d
	nop                                              ; $45c8: $00
	ld   a, [bc]                                     ; $45c9: $0a
	add  hl, de                                      ; $45ca: $19
	dec  b                                           ; $45cb: $05
	inc  bc                                          ; $45cc: $03
	ld   l, e                                        ; $45cd: $6b
	ld   d, h                                        ; $45ce: $54
	ld   [hl], l                                     ; $45cf: $75
	ld   h, a                                        ; $45d0: $67
	sub  [hl]                                        ; $45d1: $96
	ld   a, e                                        ; $45d2: $7b
	nop                                              ; $45d3: $00
	nop                                              ; $45d4: $00
	inc  b                                           ; $45d5: $04
	ld   l, l                                        ; $45d6: $6d
	sbc  [hl]                                        ; $45d7: $9e
	ld   e, d                                        ; $45d8: $5a
	and  c                                           ; $45d9: $a1
	ld   a, [hl]                                     ; $45da: $7e
	sbc  b                                           ; $45db: $98
	adc  h                                           ; $45dc: $8c
	ld   h, a                                        ; $45dd: $67
	nop                                              ; $45de: $00
	ld   bc, $0e04                                   ; $45df: $01 $04 $0e
	ld   e, e                                        ; $45e2: $5b
	ld   d, d                                        ; $45e3: $52
	inc  bc                                          ; $45e4: $03
	add  d                                           ; $45e5: $82
	ld   [hl], l                                     ; $45e6: $75
	ld   h, a                                        ; $45e7: $67
	ld   e, c                                        ; $45e8: $59
	ld   sp, hl                                      ; $45e9: $f9
	nop                                              ; $45ea: $00
	ld   [bc], a                                     ; $45eb: $02
	rlca                                             ; $45ec: $07
	ld   d, b                                        ; $45ed: $50
	ld   bc, $0302                                   ; $45ee: $01 $02 $03
	ld   bc, $2000                                   ; $45f1: $01 $00 $20
	nop                                              ; $45f4: $00
	rlca                                             ; $45f5: $07
	adc  c                                           ; $45f6: $89
	ld   bc, $0302                                   ; $45f7: $01 $02 $03
	ld   bc, $2001                                   ; $45fa: $01 $01 $20
	nop                                              ; $45fd: $00
	rlca                                             ; $45fe: $07
	cp   [hl]                                        ; $45ff: $be
	ld   bc, $0302                                   ; $4600: $01 $02 $03
	ld   bc, $2002                                   ; $4603: $01 $02 $20
	nop                                              ; $4606: $00

jr_067_4607:
	ld   b, $0b                                      ; $4607: $06 $0b
	ld   [bc], a                                     ; $4609: $02
	rrca                                             ; $460a: $0f
	nop                                              ; $460b: $00
	ld   bc, $6b01                                   ; $460c: $01 $01 $6b
	ld   d, h                                        ; $460f: $54
	ld   [hl], l                                     ; $4610: $75
	ld   h, a                                        ; $4611: $67
	sub  [hl]                                        ; $4612: $96
	ld   a, e                                        ; $4613: $7b
	sbc  a                                           ; $4614: $9f
	dec  c                                           ; $4615: $0d
	inc  b                                           ; $4616: $04
	sbc  [hl]                                        ; $4617: $9e
	ld   e, c                                        ; $4618: $59
	sbc  c                                           ; $4619: $99
	ld   [bc], a                                     ; $461a: $02
	and  c                                           ; $461b: $a1
	ld   e, d                                        ; $461c: $5a
	ld   h, l                                        ; $461d: $65
	adc  h                                           ; $461e: $8c
	ld   h, a                                        ; $461f: $67
	rst  $38                                         ; $4620: $ff
	rst  $38                                         ; $4621: $ff
	dec  c                                           ; $4622: $0d
	nop                                              ; $4623: $00
	ld   a, [bc]                                     ; $4624: $0a
	inc  e                                           ; $4625: $1c
	inc  bc                                          ; $4626: $03
	inc  bc                                          ; $4627: $03
	inc  bc                                          ; $4628: $03
	dec  e                                           ; $4629: $1d
	ld   b, b                                        ; $462a: $40
	inc  de                                          ; $462b: $13
	inc  bc                                          ; $462c: $03
	inc  de                                          ; $462d: $13
	ld   bc, $2802                                   ; $462e: $01 $02 $28
	nop                                              ; $4631: $00
	ld   bc, $d6d6                                   ; $4632: $01 $d6 $d6
	rst  $38                                         ; $4635: $ff
	rst  $38                                         ; $4636: $ff
	ld   d, b                                        ; $4637: $50
	sbc  b                                           ; $4638: $98
	ld   e, d                                        ; $4639: $5a
	halt                                             ; $463a: $76
	ld   d, h                                        ; $463b: $54
	sbc  a                                           ; $463c: $9f
	dec  c                                           ; $463d: $0d
	nop                                              ; $463e: $00
	ld   a, [bc]                                     ; $463f: $0a
	ld   b, $0b                                      ; $4640: $06 $0b
	ld   [bc], a                                     ; $4642: $02
	rrca                                             ; $4643: $0f
	nop                                              ; $4644: $00
	ld   bc, $0401                                   ; $4645: $01 $01 $04
	ld   l, l                                        ; $4648: $6d
	sbc  [hl]                                        ; $4649: $9e
	ld   e, d                                        ; $464a: $5a
	and  c                                           ; $464b: $a1
	ld   a, [hl]                                     ; $464c: $7e
	sbc  b                                           ; $464d: $98
	adc  h                                           ; $464e: $8c
	ld   h, a                                        ; $464f: $67
	ld   a, [$000d]                                  ; $4650: $fa $0d $00
	ld   a, [bc]                                     ; $4653: $0a
	inc  e                                           ; $4654: $1c
	inc  bc                                          ; $4655: $03
	inc  bc                                          ; $4656: $03
	inc  bc                                          ; $4657: $03
	ld   bc, $4904                                   ; $4658: $01 $04 $49
	and  b                                           ; $465b: $a0
	ld   e, d                                        ; $465c: $5a
	and  c                                           ; $465d: $a1
	ld   a, [hl]                                     ; $465e: $7e
	sbc  c                                           ; $465f: $99
	ld   a, h                                        ; $4660: $7c
	ld   e, c                                        ; $4661: $59
	inc  b                                           ; $4662: $04
	dec  hl                                          ; $4663: $2b
	sub  a                                           ; $4664: $97
	ld   a, b                                        ; $4665: $78
	ld   d, d                                        ; $4666: $52
	ld   e, a                                        ; $4667: $5f
	ld   [hl], a                                     ; $4668: $77
	dec  c                                           ; $4669: $0d
	ld   e, d                                        ; $466a: $5a
	and  c                                           ; $466b: $a1
	ld   a, [hl]                                     ; $466c: $7e
	sbc  b                                           ; $466d: $98
	ld   a, b                                        ; $466e: $78
	ld   h, e                                        ; $466f: $63
	ld   d, d                                        ; $4670: $52
	sbc  a                                           ; $4671: $9f
	dec  c                                           ; $4672: $0d
	nop                                              ; $4673: $00
	ld   a, [bc]                                     ; $4674: $0a
	ld   b, $0b                                      ; $4675: $06 $0b
	ld   [bc], a                                     ; $4677: $02
	rrca                                             ; $4678: $0f
	nop                                              ; $4679: $00
	ld   bc, $0401                                   ; $467a: $01 $01 $04
	ld   c, $5b                                      ; $467d: $0e $5b
	ld   d, d                                        ; $467f: $52
	inc  bc                                          ; $4680: $03
	add  d                                           ; $4681: $82
	ld   [hl], l                                     ; $4682: $75
	ld   h, a                                        ; $4683: $67
	ld   e, c                                        ; $4684: $59
	ld   sp, hl                                      ; $4685: $f9
	dec  c                                           ; $4686: $0d
	rst  JumpTable                                         ; $4687: $df
	db   $ec                                         ; $4688: $ec
	and  e                                           ; $4689: $a3
	ld   h, e                                        ; $468a: $63
	and  c                                           ; $468b: $a1
	sbc  [hl]                                        ; $468c: $9e
	inc  b                                           ; $468d: $04
	dec  c                                           ; $468e: $0d
	inc  b                                           ; $468f: $04
	ld   c, $5b                                      ; $4690: $0e $5b
	ld   d, d                                        ; $4692: $52
	ld   e, c                                        ; $4693: $59
	sub  a                                           ; $4694: $97
	rst  $38                                         ; $4695: $ff
	rst  $38                                         ; $4696: $ff
	dec  c                                           ; $4697: $0d
	nop                                              ; $4698: $00
	ld   a, [bc]                                     ; $4699: $0a
	inc  e                                           ; $469a: $1c
	inc  bc                                          ; $469b: $03
	ld   b, $06                                      ; $469c: $06 $06
	dec  e                                           ; $469e: $1d
	ld   b, b                                        ; $469f: $40
	inc  de                                          ; $46a0: $13
	inc  bc                                          ; $46a1: $03
	inc  de                                          ; $46a2: $13
	ld   bc, $2903                                   ; $46a3: $01 $03 $29
	nop                                              ; $46a6: $00
	ld   bc, $5477                                   ; $46a7: $01 $77 $54
	ld   h, l                                        ; $46aa: $65
	ld   [hl], h                                     ; $46ab: $74
	ld   l, e                                        ; $46ac: $6b
	ld   d, h                                        ; $46ad: $54
	ld   d, d                                        ; $46ae: $52
	ld   d, h                                        ; $46af: $54
	ld   [bc], a                                     ; $46b0: $02
	or   h                                           ; $46b1: $b4
	ld   h, l                                        ; $46b2: $65
	sub  c                                           ; $46b3: $91
	ld   e, l                                        ; $46b4: $5d
	and  b                                           ; $46b5: $a0
	dec  c                                           ; $46b6: $0d
	ld   h, a                                        ; $46b7: $67
	sbc  c                                           ; $46b8: $99
	ld   a, h                                        ; $46b9: $7c
	ld   sp, hl                                      ; $46ba: $f9
	db   $10                                         ; $46bb: $10
	ld   d, b                                        ; $46bc: $50
	ld   a, b                                        ; $46bd: $78
	ld   l, l                                        ; $46be: $6d
	ld   a, l                                        ; $46bf: $7d
	rst  $38                                         ; $46c0: $ff
	rst  $38                                         ; $46c1: $ff
	dec  c                                           ; $46c2: $0d
	nop                                              ; $46c3: $00
	ld   a, [bc]                                     ; $46c4: $0a
	inc  e                                           ; $46c5: $1c
	inc  bc                                          ; $46c6: $03
	nop                                              ; $46c7: $00
	nop                                              ; $46c8: $00
	ld   bc, $9e63                                   ; $46c9: $01 $63 $9e
	ld   e, b                                        ; $46cc: $58
	ld   h, l                                        ; $46cd: $65
	sub  c                                           ; $46ce: $91
	add  a                                           ; $46cf: $87
	sbc  b                                           ; $46d0: $98
	ld   a, l                                        ; $46d1: $7d
	inc  bc                                          ; $46d2: $03
	ld   a, [hl]                                     ; $46d3: $7e
	sbc  l                                           ; $46d4: $9d
	sbc  b                                           ; $46d5: $98
	sbc  a                                           ; $46d6: $9f
	dec  c                                           ; $46d7: $0d
	inc  bc                                          ; $46d8: $03
	ld   l, l                                        ; $46d9: $6d
	dec  b                                           ; $46da: $05
	add  hl, de                                      ; $46db: $19
	ld   a, h                                        ; $46dc: $7c
	dec  b                                           ; $46dd: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46de: $cf
	adc  h                                           ; $46df: $8c
	sbc  c                                           ; $46e0: $99
	inc  bc                                          ; $46e1: $03
	ld   l, a                                        ; $46e2: $6f
	ld   [bc], a                                     ; $46e3: $02
	xor  c                                           ; $46e4: $a9
	sub  [hl]                                        ; $46e5: $96
	sbc  a                                           ; $46e6: $9f
	dec  c                                           ; $46e7: $0d
	nop                                              ; $46e8: $00
	ld   a, [bc]                                     ; $46e9: $0a
	dec  c                                           ; $46ea: $0d
	nop                                              ; $46eb: $00
	nop                                              ; $46ec: $00
	rrca                                             ; $46ed: $0f
	nop                                              ; $46ee: $00
	ld   bc, $1e09                                   ; $46ef: $01 $09 $1e
	nop                                              ; $46f2: $00
	rrca                                             ; $46f3: $0f
	nop                                              ; $46f4: $00
	ld   bc, $df01                                   ; $46f5: $01 $01 $df
	db   $ec                                         ; $46f8: $ec
	and  e                                           ; $46f9: $a3
	ld   h, e                                        ; $46fa: $63
	and  c                                           ; $46fb: $a1
	ld   e, c                                        ; $46fc: $59
	sub  a                                           ; $46fd: $97
	ld   [bc], a                                     ; $46fe: $02
	sub  l                                           ; $46ff: $95
	ld   [hl], h                                     ; $4700: $74
	dec  c                                           ; $4701: $0d
	ld   [bc], a                                     ; $4702: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4703: $cf
	dec  b                                           ; $4704: $05
	ld   a, [de]                                     ; $4705: $1a
	ld   h, e                                        ; $4706: $63
	and  c                                           ; $4707: $a1
	ld   [hl], h                                     ; $4708: $74
	sbc  [hl]                                        ; $4709: $9e
	ld   [hl], a                                     ; $470a: $77
	and  c                                           ; $470b: $a1
	ld   a, b                                        ; $470c: $78
	inc  b                                           ; $470d: $04
	ld   a, b                                        ; $470e: $78
	ld   [hl], l                                     ; $470f: $75
	ld   h, a                                        ; $4710: $67
	ld   e, c                                        ; $4711: $59
	ld   sp, hl                                      ; $4712: $f9
	dec  c                                           ; $4713: $0d
	nop                                              ; $4714: $00
	ld   a, [bc]                                     ; $4715: $0a
	inc  e                                           ; $4716: $1c
	inc  bc                                          ; $4717: $03
	nop                                              ; $4718: $00
	nop                                              ; $4719: $00
	ld   bc, $546b                                   ; $471a: $01 $6b $54
	ld   a, e                                        ; $471d: $7b
	rst  $38                                         ; $471e: $ff
	rst  $38                                         ; $471f: $ff
	dec  c                                           ; $4720: $0d
	ld   d, d                                        ; $4721: $52
	ld   [hl], d                                     ; $4722: $72
	sub  b                                           ; $4723: $90
	inc  b                                           ; $4724: $04
	ret  c                                           ; $4725: $d8

	inc  b                                           ; $4726: $04
	xor  h                                           ; $4727: $ac
	ld   d, d                                        ; $4728: $52
	sub  b                                           ; $4729: $90
	ld   a, h                                        ; $472a: $7c
	and  b                                           ; $472b: $a0
	inc  b                                           ; $472c: $04
	ld   e, [hl]                                     ; $472d: $5e
	inc  b                                           ; $472e: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $472f: $cf
	ld   h, a                                        ; $4730: $67
	sbc  c                                           ; $4731: $99
	dec  c                                           ; $4732: $0d
	add  sp, -$34                                    ; $4733: $e8 $cc
	ei                                               ; $4735: $fb
	or   b                                           ; $4736: $b0
	ld   a, b                                        ; $4737: $78
	inc  b                                           ; $4738: $04
	ld   e, [hl]                                     ; $4739: $5e
	inc  b                                           ; $473a: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $473b: $cf
	ld   [bc], a                                     ; $473c: $02
	and  [hl]                                        ; $473d: $a6
	ld   a, e                                        ; $473e: $7b
	sbc  a                                           ; $473f: $9f
	dec  c                                           ; $4740: $0d
	nop                                              ; $4741: $00
	ld   a, [bc]                                     ; $4742: $0a
	inc  e                                           ; $4743: $1c
	inc  bc                                          ; $4744: $03
	inc  bc                                          ; $4745: $03
	inc  bc                                          ; $4746: $03
	ld   bc, $1d06                                   ; $4747: $01 $06 $1d
	inc  bc                                          ; $474a: $03
	ld   l, [hl]                                     ; $474b: $6e
	ld   a, h                                        ; $474c: $7c
	inc  b                                           ; $474d: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $474e: $cf
	sbc  c                                           ; $474f: $99
	ld   h, e                                        ; $4750: $63
	ld   a, c                                        ; $4751: $79
	ld   a, l                                        ; $4752: $7d
	dec  c                                           ; $4753: $0d
	ld   d, b                                        ; $4754: $50
	sbc  c                                           ; $4755: $99
	ld   [bc], a                                     ; $4756: $02
	ld   b, $04                                      ; $4757: $06 $04
	jp   nc, $059e                                   ; $4759: $d2 $9e $05

	adc  b                                           ; $475c: $88
	sbc  l                                           ; $475d: $9d
	sbc  d                                           ; $475e: $9a
	ld   [hl], h                                     ; $475f: $74
	sbc  c                                           ; $4760: $99
	sbc  l                                           ; $4761: $9d
	sbc  a                                           ; $4762: $9f
	dec  c                                           ; $4763: $0d
	nop                                              ; $4764: $00
	ld   a, [bc]                                     ; $4765: $0a
	inc  e                                           ; $4766: $1c
	inc  bc                                          ; $4767: $03
	inc  b                                           ; $4768: $04
	inc  b                                           ; $4769: $04
	ld   bc, $6e6d                                   ; $476a: $01 $6d $6e
	rst  $38                                         ; $476d: $ff
	rst  $38                                         ; $476e: $ff
	ld   d, b                                        ; $476f: $50
	ld   a, h                                        ; $4770: $7c
	inc  bc                                          ; $4771: $03
	add  [hl]                                        ; $4772: $86
	sub  b                                           ; $4773: $90
	ld   d, d                                        ; $4774: $52
	sbc  e                                           ; $4775: $9b
	ld   d, d                                        ; $4776: $52
	sbc  e                                           ; $4777: $9b
	dec  c                                           ; $4778: $0d
	ld   d, b                                        ; $4779: $50
	ld   [hl], c                                     ; $477a: $71
	ld   l, l                                        ; $477b: $6d
	ld   e, c                                        ; $477c: $59
	sub  a                                           ; $477d: $97
	sbc  [hl]                                        ; $477e: $9e
	adc  l                                           ; $477f: $8d
	and  c                                           ; $4780: $a1
	ld   a, b                                        ; $4781: $78
	ld   [hl], l                                     ; $4782: $75
	inc  bc                                          ; $4783: $03
	sub  e                                           ; $4784: $93
	ld   [hl], c                                     ; $4785: $71
	ld   [hl], h                                     ; $4786: $74
	dec  c                                           ; $4787: $0d
	ld   d, b                                        ; $4788: $50
	ld   h, b                                        ; $4789: $60
	ld   a, b                                        ; $478a: $78
	ld   d, d                                        ; $478b: $52
	halt                                             ; $478c: $76
	ld   a, e                                        ; $478d: $7b
	rst  $38                                         ; $478e: $ff
	rst  $38                                         ; $478f: $ff
	dec  c                                           ; $4790: $0d
	nop                                              ; $4791: $00
	ld   a, [bc]                                     ; $4792: $0a
	inc  e                                           ; $4793: $1c
	inc  bc                                          ; $4794: $03
	nop                                              ; $4795: $00
	nop                                              ; $4796: $00
	ld   bc, $9e63                                   ; $4797: $01 $63 $9e
	ld   e, b                                        ; $479a: $58
	ld   h, l                                        ; $479b: $65
	sub  c                                           ; $479c: $91
	add  a                                           ; $479d: $87
	sbc  b                                           ; $479e: $98
	ld   a, l                                        ; $479f: $7d
	inc  bc                                          ; $47a0: $03
	ld   a, [hl]                                     ; $47a1: $7e
	sbc  l                                           ; $47a2: $9d
	sbc  b                                           ; $47a3: $98
	sbc  a                                           ; $47a4: $9f
	dec  c                                           ; $47a5: $0d
	inc  bc                                          ; $47a6: $03
	ld   l, l                                        ; $47a7: $6d
	dec  b                                           ; $47a8: $05
	add  hl, de                                      ; $47a9: $19
	ld   a, h                                        ; $47aa: $7c
	dec  b                                           ; $47ab: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47ac: $cf
	adc  h                                           ; $47ad: $8c
	sbc  c                                           ; $47ae: $99
	inc  bc                                          ; $47af: $03
	ld   l, a                                        ; $47b0: $6f
	ld   [bc], a                                     ; $47b1: $02
	xor  c                                           ; $47b2: $a9
	sub  [hl]                                        ; $47b3: $96
	sbc  a                                           ; $47b4: $9f
	dec  c                                           ; $47b5: $0d
	nop                                              ; $47b6: $00
	ld   a, [bc]                                     ; $47b7: $0a
	dec  c                                           ; $47b8: $0d
	nop                                              ; $47b9: $00
	nop                                              ; $47ba: $00
	rrca                                             ; $47bb: $0f
	nop                                              ; $47bc: $00
	ld   bc, $1e09                                   ; $47bd: $01 $09 $1e
	nop                                              ; $47c0: $00
	rrca                                             ; $47c1: $0f
	nop                                              ; $47c2: $00
	ld   bc, $a301                                   ; $47c3: $01 $01 $a3
	and  l                                           ; $47c6: $a5
	db   $ec                                         ; $47c7: $ec
	cp   d                                           ; $47c8: $ba
	ld   [hl], c                                     ; $47c9: $71
	ld   [hl], h                                     ; $47ca: $74
	sbc  [hl]                                        ; $47cb: $9e
	rst  JumpTable                                         ; $47cc: $df
	db   $ec                                         ; $47cd: $ec
	and  e                                           ; $47ce: $a3
	ld   h, e                                        ; $47cf: $63
	and  c                                           ; $47d0: $a1
	ld   e, c                                        ; $47d1: $59
	sub  a                                           ; $47d2: $97
	dec  c                                           ; $47d3: $0d
	ld   [bc], a                                     ; $47d4: $02
	sub  l                                           ; $47d5: $95
	ld   [hl], h                                     ; $47d6: $74
	sbc  [hl]                                        ; $47d7: $9e
	ld   [hl], a                                     ; $47d8: $77
	and  c                                           ; $47d9: $a1
	ld   a, b                                        ; $47da: $78
	inc  bc                                          ; $47db: $03
	add  [hl]                                        ; $47dc: $86
	ld   [hl], l                                     ; $47dd: $75
	ld   h, a                                        ; $47de: $67
	ld   e, c                                        ; $47df: $59
	ld   sp, hl                                      ; $47e0: $f9
	dec  c                                           ; $47e1: $0d
	nop                                              ; $47e2: $00
	ld   a, [bc]                                     ; $47e3: $0a
	inc  e                                           ; $47e4: $1c
	inc  bc                                          ; $47e5: $03
	inc  bc                                          ; $47e6: $03
	inc  bc                                          ; $47e7: $03
	ld   bc, $546b                                   ; $47e8: $01 $6b $54
	ld   a, e                                        ; $47eb: $7b
	rst  $38                                         ; $47ec: $ff
	rst  $38                                         ; $47ed: $ff
	adc  [hl]                                        ; $47ee: $8e
	ld   h, [hl]                                     ; $47ef: $66
	sub  c                                           ; $47f0: $91
	ld   e, e                                        ; $47f1: $5b
	ld   [hl], l                                     ; $47f2: $75
	dec  c                                           ; $47f3: $0d
	ld   e, c                                        ; $47f4: $59
	sbc  l                                           ; $47f5: $9d
	ld   d, d                                        ; $47f6: $52
	ld   d, d                                        ; $47f7: $52
	inc  bc                                          ; $47f8: $03
	ld   l, [hl]                                     ; $47f9: $6e
	ld   a, h                                        ; $47fa: $7c
	inc  bc                                          ; $47fb: $03
	add  [hl]                                        ; $47fc: $86
	sub  [hl]                                        ; $47fd: $96
	sbc  a                                           ; $47fe: $9f
	dec  c                                           ; $47ff: $0d
	nop                                              ; $4800: $00
	ld   a, [bc]                                     ; $4801: $0a
	ld   bc, $8c6d                                   ; $4802: $01 $6d $8c
	ld   a, c                                        ; $4805: $79
	sbc  [hl]                                        ; $4806: $9e
	sbc  l                                           ; $4807: $9d
	ld   e, d                                        ; $4808: $5a
	adc  h                                           ; $4809: $8c
	adc  h                                           ; $480a: $8c
	and  b                                           ; $480b: $a0
	ld   [bc], a                                     ; $480c: $02
	sbc  l                                           ; $480d: $9d
	ld   [hl], c                                     ; $480e: $71
	ld   [hl], h                                     ; $480f: $74
	dec  c                                           ; $4810: $0d
	adc  l                                           ; $4811: $8d
	and  c                                           ; $4812: $a1
	ld   a, b                                        ; $4813: $78
	and  b                                           ; $4814: $a0
	ld   h, c                                        ; $4815: $61
	adc  h                                           ; $4816: $8c
	sub  a                                           ; $4817: $97
	ld   l, c                                        ; $4818: $69
	sbc  c                                           ; $4819: $99
	ld   e, a                                        ; $481a: $5f
	ld   [hl], a                                     ; $481b: $77
	sbc  [hl]                                        ; $481c: $9e
	dec  c                                           ; $481d: $0d
	ld   l, e                                        ; $481e: $6b
	sbc  d                                           ; $481f: $9a
	ld   a, l                                        ; $4820: $7d
	inc  bc                                          ; $4821: $03
	xor  a                                           ; $4822: $af
	ld   h, e                                        ; $4823: $63
	ld   d, d                                        ; $4824: $52
	inc  bc                                          ; $4825: $03
	add  [hl]                                        ; $4826: $86
	ld   a, h                                        ; $4827: $7c
	inc  bc                                          ; $4828: $03
	db   $fd                                         ; $4829: $fd
	dec  b                                           ; $482a: $05
	add  l                                           ; $482b: $85
	ld   l, [hl]                                     ; $482c: $6e
	ld   h, l                                        ; $482d: $65
	rst  $38                                         ; $482e: $ff
	rst  $38                                         ; $482f: $ff
	dec  c                                           ; $4830: $0d
	nop                                              ; $4831: $00
	ld   a, [bc]                                     ; $4832: $0a
	ld   bc, $6d50                                   ; $4833: $01 $50 $6d
	ld   l, l                                        ; $4836: $6d
	ld   e, c                                        ; $4837: $59
	ld   e, l                                        ; $4838: $5d
	ld   [bc], a                                     ; $4839: $02
	sub  l                                           ; $483a: $95
	inc  bc                                          ; $483b: $03
	sub  e                                           ; $483c: $93
	ld   [hl], c                                     ; $483d: $71
	ld   [hl], h                                     ; $483e: $74
	dec  c                                           ; $483f: $0d
	ld   d, b                                        ; $4840: $50
	ld   h, b                                        ; $4841: $60
	ld   a, b                                        ; $4842: $78
	ld   d, d                                        ; $4843: $52
	halt                                             ; $4844: $76
	ld   a, e                                        ; $4845: $7b
	sbc  a                                           ; $4846: $9f
	dec  c                                           ; $4847: $0d
	nop                                              ; $4848: $00
	ld   a, [bc]                                     ; $4849: $0a
	inc  e                                           ; $484a: $1c
	inc  bc                                          ; $484b: $03
	nop                                              ; $484c: $00
	nop                                              ; $484d: $00
	ld   bc, $9e63                                   ; $484e: $01 $63 $9e
	ld   e, b                                        ; $4851: $58
	ld   h, l                                        ; $4852: $65
	sub  c                                           ; $4853: $91
	add  a                                           ; $4854: $87
	sbc  b                                           ; $4855: $98
	ld   a, l                                        ; $4856: $7d
	inc  bc                                          ; $4857: $03
	ld   a, [hl]                                     ; $4858: $7e
	sbc  l                                           ; $4859: $9d
	sbc  b                                           ; $485a: $98
	sbc  a                                           ; $485b: $9f
	dec  c                                           ; $485c: $0d
	inc  bc                                          ; $485d: $03
	ld   l, l                                        ; $485e: $6d
	dec  b                                           ; $485f: $05
	add  hl, de                                      ; $4860: $19
	ld   a, h                                        ; $4861: $7c
	dec  b                                           ; $4862: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4863: $cf
	adc  h                                           ; $4864: $8c
	sbc  c                                           ; $4865: $99
	inc  bc                                          ; $4866: $03
	ld   l, a                                        ; $4867: $6f
	ld   [bc], a                                     ; $4868: $02
	xor  c                                           ; $4869: $a9
	sub  [hl]                                        ; $486a: $96
	sbc  a                                           ; $486b: $9f
	dec  c                                           ; $486c: $0d
	nop                                              ; $486d: $00
	ld   a, [bc]                                     ; $486e: $0a
	dec  c                                           ; $486f: $0d
	nop                                              ; $4870: $00
	nop                                              ; $4871: $00
	rrca                                             ; $4872: $0f
	nop                                              ; $4873: $00
	ld   bc, $1e09                                   ; $4874: $01 $09 $1e
	nop                                              ; $4877: $00
	nop                                              ; $4878: $00
	ld   d, $07                                      ; $4879: $16 $07
	rrca                                             ; $487b: $0f
	inc  b                                           ; $487c: $04
	dec  hl                                          ; $487d: $2b
	ld   [bc], a                                     ; $487e: $02
	ld   bc, $f5eb                                   ; $487f: $01 $eb $f5
	db   $eb                                         ; $4882: $eb
	db   $eb                                         ; $4883: $eb
	push af                                          ; $4884: $f5
	db   $eb                                         ; $4885: $eb
	db   $eb                                         ; $4886: $eb
	db   $fc                                         ; $4887: $fc
	push af                                          ; $4888: $f5
	rst  $38                                         ; $4889: $ff
	rst  $38                                         ; $488a: $ff
	dec  c                                           ; $488b: $0d
	nop                                              ; $488c: $00
	ld   a, [bc]                                     ; $488d: $0a
	rrca                                             ; $488e: $0f
	nop                                              ; $488f: $00
	ld   bc, $0101                                   ; $4890: $01 $01 $01
	inc  bc                                          ; $4893: $03
	and  e                                           ; $4894: $a3
	and  l                                           ; $4895: $a5
	db   $ec                                         ; $4896: $ec
	cp   d                                           ; $4897: $ba
	sbc  [hl]                                        ; $4898: $9e
	ld   d, d                                        ; $4899: $52
	sbc  c                                           ; $489a: $99
	ld   d, d                                        ; $489b: $52
	sbc  c                                           ; $489c: $99
	ld   bc, $0d04                                   ; $489d: $01 $04 $0d
	nop                                              ; $48a0: $00
	ld   a, [bc]                                     ; $48a1: $0a
	add  hl, de                                      ; $48a2: $19
	dec  b                                           ; $48a3: $05
	ld   [bc], a                                     ; $48a4: $02
	ld   [bc], a                                     ; $48a5: $02
	and  b                                           ; $48a6: $a0
	ld   [hl], e                                     ; $48a7: $73
	ld   e, l                                        ; $48a8: $5d
	nop                                              ; $48a9: $00
	nop                                              ; $48aa: $00
	dec  b                                           ; $48ab: $05
	ld   d, $6f                                      ; $48ac: $16 $6f
	ld   [bc], a                                     ; $48ae: $02
	ld   d, e                                        ; $48af: $53
	sbc  c                                           ; $48b0: $99
	nop                                              ; $48b1: $00
	ld   bc, $9b07                                   ; $48b2: $01 $07 $9b
	nop                                              ; $48b5: $00
	ld   [bc], a                                     ; $48b6: $02
	inc  bc                                          ; $48b7: $03
	ld   bc, $2000                                   ; $48b8: $01 $00 $20
	nop                                              ; $48bb: $00
	rlca                                             ; $48bc: $07
	ld   c, a                                        ; $48bd: $4f
	nop                                              ; $48be: $00
	ld   [bc], a                                     ; $48bf: $02
	inc  bc                                          ; $48c0: $03
	ld   bc, $2001                                   ; $48c1: $01 $01 $20
	nop                                              ; $48c4: $00
	ld   b, $76                                      ; $48c5: $06 $76
	nop                                              ; $48c7: $00
	rrca                                             ; $48c8: $0f
	nop                                              ; $48c9: $00
	ld   bc, $0101                                   ; $48ca: $01 $01 $01
	inc  bc                                          ; $48cd: $03
	sub  d                                           ; $48ce: $92
	ld   [hl], c                                     ; $48cf: $71
	ld   a, a                                        ; $48d0: $7f
	sbc  b                                           ; $48d1: $98
	sbc  [hl]                                        ; $48d2: $9e
	ld   a, h                                        ; $48d3: $7c
	ld   l, h                                        ; $48d4: $6c
	ld   e, e                                        ; $48d5: $5b
	ld   a, l                                        ; $48d6: $7d
	pop  bc                                          ; $48d7: $c1
	db   $e3                                         ; $48d8: $e3
	ld   l, [hl]                                     ; $48d9: $6e
	sub  [hl]                                        ; $48da: $96
	dec  c                                           ; $48db: $0d
	db   $10                                         ; $48dc: $10
	ld   h, c                                        ; $48dd: $61
	ld   h, c                                        ; $48de: $61
	ld   a, l                                        ; $48df: $7d
	ld   d, d                                        ; $48e0: $52
	ld   h, e                                        ; $48e1: $63
	ld   e, h                                        ; $48e2: $5c
	sub  [hl]                                        ; $48e3: $96
	ld   e, l                                        ; $48e4: $5d
	ld   [bc], a                                     ; $48e5: $02
	ld   d, e                                        ; $48e6: $53
	sbc  e                                           ; $48e7: $9b
	ld   d, h                                        ; $48e8: $54
	ld   bc, $0d04                                   ; $48e9: $01 $04 $0d
	nop                                              ; $48ec: $00
	ld   a, [bc]                                     ; $48ed: $0a
	nop                                              ; $48ee: $00
	rrca                                             ; $48ef: $0f
	inc  b                                           ; $48f0: $04
	jr   nc, jr_067_48f4                             ; $48f1: $30 $01

	ld   l, [hl]                                     ; $48f3: $6e

jr_067_48f4:
	sbc  d                                           ; $48f4: $9a
	ld   e, c                                        ; $48f5: $59
	ld   d, d                                        ; $48f6: $52
	sbc  c                                           ; $48f7: $99
	ld   a, h                                        ; $48f8: $7c
	ld   sp, hl                                      ; $48f9: $f9
	dec  c                                           ; $48fa: $0d
	nop                                              ; $48fb: $00
	ld   a, [bc]                                     ; $48fc: $0a
	rrca                                             ; $48fd: $0f
	nop                                              ; $48fe: $00
	ld   bc, $0101                                   ; $48ff: $01 $01 $01
	inc  bc                                          ; $4902: $03
	adc  h                                           ; $4903: $8c
	ld   l, b                                        ; $4904: $68
	ld   d, d                                        ; $4905: $52
	rst  $38                                         ; $4906: $ff
	rst  $38                                         ; $4907: $ff
	inc  bc                                          ; $4908: $03
	push de                                          ; $4909: $d5
	ld   h, b                                        ; $490a: $60
	sub  [hl]                                        ; $490b: $96
	ld   d, h                                        ; $490c: $54
	ld   a, [$0401]                                  ; $490d: $fa $01 $04
	dec  c                                           ; $4910: $0d
	nop                                              ; $4911: $00
	ld   a, [bc]                                     ; $4912: $0a
	nop                                              ; $4913: $00
	rrca                                             ; $4914: $0f
	nop                                              ; $4915: $00
	ld   bc, $0101                                   ; $4916: $01 $01 $01
	inc  bc                                          ; $4919: $03
	sub  b                                           ; $491a: $90
	ld   d, h                                        ; $491b: $54
	inc  bc                                          ; $491c: $03
	ld   l, h                                        ; $491d: $6c
	ld   h, l                                        ; $491e: $65
	ld   [bc], a                                     ; $491f: $02
	and  b                                           ; $4920: $a0
	ld   [hl], e                                     ; $4921: $73
	ld   d, d                                        ; $4922: $52
	ld   [hl], h                                     ; $4923: $74
	adc  l                                           ; $4924: $8d
	sub  [hl]                                        ; $4925: $96
	ld   d, h                                        ; $4926: $54
	ld   bc, $0d04                                   ; $4927: $01 $04 $0d
	nop                                              ; $492a: $00
	ld   a, [bc]                                     ; $492b: $0a
	rlca                                             ; $492c: $07
	ld   b, $01                                      ; $492d: $06 $01
	inc  bc                                          ; $492f: $03
	inc  d                                           ; $4930: $14
	ld   bc, $22b4                                   ; $4931: $01 $b4 $22
	nop                                              ; $4934: $00
	rrca                                             ; $4935: $0f
	inc  b                                           ; $4936: $04
	dec  hl                                          ; $4937: $2b
	ld   bc, $905b                                   ; $4938: $01 $5b $90
	ld   l, a                                        ; $493b: $6f
	ld   d, d                                        ; $493c: $52
	ld   d, d                                        ; $493d: $52
	ld   a, e                                        ; $493e: $7b
	sbc  [hl]                                        ; $493f: $9e
	dec  c                                           ; $4940: $0d
	cp   c                                           ; $4941: $b9
	push hl                                          ; $4942: $e5
	push af                                          ; $4943: $f5
	sbc  $fb                                         ; $4944: $de $fb
	db   $ed                                         ; $4946: $ed
	rst  $38                                         ; $4947: $ff
	rst  $38                                         ; $4948: $ff
	dec  c                                           ; $4949: $0d
	nop                                              ; $494a: $00
	ld   a, [bc]                                     ; $494b: $0a
	add  hl, de                                      ; $494c: $19
	dec  b                                           ; $494d: $05
	ld   bc, $c004                                   ; $494e: $01 $04 $c0
	inc  bc                                          ; $4951: $03
	ld   a, l                                        ; $4952: $7d
	ld   h, l                                        ; $4953: $65
	ld   l, l                                        ; $4954: $6d
	nop                                              ; $4955: $00
	nop                                              ; $4956: $00
	rlca                                             ; $4957: $07
	ld   [$0200], a                                  ; $4958: $ea $00 $02
	inc  bc                                          ; $495b: $03
	ld   bc, $2000                                   ; $495c: $01 $00 $20
	nop                                              ; $495f: $00
	ld   b, $06                                      ; $4960: $06 $06
	ld   bc, $000f                                   ; $4962: $01 $0f $00
	ld   bc, $0101                                   ; $4965: $01 $01 $01
	inc  bc                                          ; $4968: $03
	ld   l, e                                        ; $4969: $6b
	sbc  e                                           ; $496a: $9b
	ld   l, e                                        ; $496b: $6b
	sbc  e                                           ; $496c: $9b
	ld   [bc], a                                     ; $496d: $02
	inc  l                                           ; $496e: $2c
	ld   e, e                                        ; $496f: $5b
	inc  bc                                          ; $4970: $03
	ld   h, l                                        ; $4971: $65
	ld   h, b                                        ; $4972: $60
	sub  [hl]                                        ; $4973: $96
	ld   d, h                                        ; $4974: $54
	rst  $38                                         ; $4975: $ff
	rst  $38                                         ; $4976: $ff
	ld   bc, $0d04                                   ; $4977: $01 $04 $0d
	db   $10                                         ; $497a: $10
	dec  c                                           ; $497b: $0d
	nop                                              ; $497c: $00
	ld   a, [bc]                                     ; $497d: $0a
	nop                                              ; $497e: $00
	rrca                                             ; $497f: $0f
	inc  b                                           ; $4980: $04
	jr   nc, jr_067_4984                             ; $4981: $30 $01

	ld   d, b                                        ; $4983: $50

jr_067_4984:
	ld   [hl], c                                     ; $4984: $71
	ld   a, [$6e0d]                                  ; $4985: $fa $0d $6e
	sbc  d                                           ; $4988: $9a
	ld   e, c                                        ; $4989: $59
	ld   l, e                                        ; $498a: $6b
	ld   h, c                                        ; $498b: $61
	ld   a, c                                        ; $498c: $79
	ld   d, d                                        ; $498d: $52
	sbc  c                                           ; $498e: $99
	ld   [hl], l                                     ; $498f: $75
	ld   h, l                                        ; $4990: $65
	sub  l                                           ; $4991: $95
	ld   a, [$000d]                                  ; $4992: $fa $0d $00
	ld   a, [bc]                                     ; $4995: $0a
	rrca                                             ; $4996: $0f
	nop                                              ; $4997: $00
	ld   bc, $0101                                   ; $4998: $01 $01 $01
	inc  bc                                          ; $499b: $03
	ld   [bc], a                                     ; $499c: $02
	and  c                                           ; $499d: $a1
	ld   [hl], e                                     ; $499e: $73
	ld   e, c                                        ; $499f: $59
	sbc  d                                           ; $49a0: $9a
	ld   l, l                                        ; $49a1: $6d
	ld   a, [$0401]                                  ; $49a2: $fa $01 $04
	dec  c                                           ; $49a5: $0d
	nop                                              ; $49a6: $00
	ld   a, [bc]                                     ; $49a7: $0a
	add  hl, de                                      ; $49a8: $19
	dec  b                                           ; $49a9: $05
	inc  bc                                          ; $49aa: $03
	inc  bc                                          ; $49ab: $03
	db   $db                                         ; $49ac: $db
	ld   bc, $7614                                   ; $49ad: $01 $14 $76
	ld   h, a                                        ; $49b0: $67
	sbc  c                                           ; $49b1: $99
	nop                                              ; $49b2: $00
	nop                                              ; $49b3: $00
	sub  b                                           ; $49b4: $90
	ld   a, h                                        ; $49b5: $7c
	adc  h                                           ; $49b6: $8c
	ld   a, e                                        ; $49b7: $7b
	and  b                                           ; $49b8: $a0
	ld   h, a                                        ; $49b9: $67
	sbc  c                                           ; $49ba: $99
	nop                                              ; $49bb: $00
	ld   bc, $d503                                   ; $49bc: $01 $03 $d5
	ld   h, b                                        ; $49bf: $60
	inc  bc                                          ; $49c0: $03
	add  b                                           ; $49c1: $80
	ld   h, a                                        ; $49c2: $67
	nop                                              ; $49c3: $00
	ld   [bc], a                                     ; $49c4: $02
	rlca                                             ; $49c5: $07
	ld   l, d                                        ; $49c6: $6a
	ld   bc, $0302                                   ; $49c7: $01 $02 $03
	ld   bc, $2000                                   ; $49ca: $01 $00 $20
	nop                                              ; $49cd: $00
	rlca                                             ; $49ce: $07
	inc  e                                           ; $49cf: $1c
	ld   [bc], a                                     ; $49d0: $02
	ld   [bc], a                                     ; $49d1: $02
	inc  bc                                          ; $49d2: $03
	ld   bc, $2001                                   ; $49d3: $01 $01 $20
	nop                                              ; $49d6: $00
	rlca                                             ; $49d7: $07
	adc  c                                           ; $49d8: $89
	ld   [bc], a                                     ; $49d9: $02
	ld   [bc], a                                     ; $49da: $02
	inc  bc                                          ; $49db: $03
	ld   bc, $2002                                   ; $49dc: $01 $02 $20
	nop                                              ; $49df: $00
	ld   b, $f1                                      ; $49e0: $06 $f1
	ld   [bc], a                                     ; $49e2: $02
	rrca                                             ; $49e3: $0f
	nop                                              ; $49e4: $00
	ld   bc, $0101                                   ; $49e5: $01 $01 $01
	inc  bc                                          ; $49e8: $03
	ld   h, c                                        ; $49e9: $61
	ld   h, c                                        ; $49ea: $61
	ld   a, l                                        ; $49eb: $7d
	inc  bc                                          ; $49ec: $03
	db   $db                                         ; $49ed: $db
	ld   bc, $7614                                   ; $49ee: $01 $14 $76
	rst  $38                                         ; $49f1: $ff
	rst  $38                                         ; $49f2: $ff
	ld   bc, $0d04                                   ; $49f3: $01 $04 $0d
	nop                                              ; $49f6: $00
	ld   a, [bc]                                     ; $49f7: $0a
	ld   bc, $9e50                                   ; $49f8: $01 $50 $9e
	ld   h, a                                        ; $49fb: $67
	adc  l                                           ; $49fc: $8d
	adc  h                                           ; $49fd: $8c
	ld   l, c                                        ; $49fe: $69
	and  c                                           ; $49ff: $a1
	rst  $38                                         ; $4a00: $ff
	rst  $38                                         ; $4a01: $ff
	dec  c                                           ; $4a02: $0d
	ld   [hl], a                                     ; $4a03: $77
	ld   a, b                                        ; $4a04: $78
	ld   l, l                                        ; $4a05: $6d
	ld   e, c                                        ; $4a06: $59
	inc  b                                           ; $4a07: $04
	ld   b, l                                        ; $4a08: $45
	ld   [hl], c                                     ; $4a09: $71
	ld   [hl], h                                     ; $4a0a: $74
	sub  a                                           ; $4a0b: $97
	ld   [hl], c                                     ; $4a0c: $71
	ld   h, l                                        ; $4a0d: $65
	sub  c                                           ; $4a0e: $91
	sbc  c                                           ; $4a0f: $99
	and  c                                           ; $4a10: $a1
	dec  c                                           ; $4a11: $0d
	ld   [hl], l                                     ; $4a12: $75
	ld   h, a                                        ; $4a13: $67
	ld   a, e                                        ; $4a14: $7b
	ld   sp, hl                                      ; $4a15: $f9
	dec  c                                           ; $4a16: $0d
	nop                                              ; $4a17: $00
	ld   a, [bc]                                     ; $4a18: $0a
	rrca                                             ; $4a19: $0f
	inc  b                                           ; $4a1a: $04
	jr   nc, jr_067_4a1e                             ; $4a1b: $30 $01

	ld   l, a                                        ; $4a1d: $6f

jr_067_4a1e:
	ld   d, d                                        ; $4a1e: $52
	ld   [bc], a                                     ; $4a1f: $02
	inc  de                                          ; $4a20: $13
	ld   l, a                                        ; $4a21: $6f
	sub  c                                           ; $4a22: $91
	and  c                                           ; $4a23: $a1
	ld   sp, hl                                      ; $4a24: $f9
	dec  c                                           ; $4a25: $0d
	and  e                                           ; $4a26: $a3
	and  l                                           ; $4a27: $a5
	db   $ec                                         ; $4a28: $ec
	cp   d                                           ; $4a29: $ba
	ld   l, [hl]                                     ; $4a2a: $6e
	sub  [hl]                                        ; $4a2b: $96
	rst  $38                                         ; $4a2c: $ff
	rst  $38                                         ; $4a2d: $ff
	ld   l, e                                        ; $4a2e: $6b
	ld   h, c                                        ; $4a2f: $61
	ld   [hl], l                                     ; $4a30: $75
	dec  c                                           ; $4a31: $0d
	ld   a, b                                        ; $4a32: $78
	ld   a, c                                        ; $4a33: $79
	sub  d                                           ; $4a34: $92
	ld   [hl], c                                     ; $4a35: $71
	ld   [hl], h                                     ; $4a36: $74
	sbc  c                                           ; $4a37: $99
	ld   a, h                                        ; $4a38: $7c
	ld   sp, hl                                      ; $4a39: $f9
	dec  c                                           ; $4a3a: $0d
	nop                                              ; $4a3b: $00
	ld   a, [bc]                                     ; $4a3c: $0a
	rrca                                             ; $4a3d: $0f
	nop                                              ; $4a3e: $00
	ld   bc, $5001                                   ; $4a3f: $01 $01 $50
	sbc  [hl]                                        ; $4a42: $9e
	ld   h, d                                        ; $4a43: $62
	adc  a                                           ; $4a44: $8f
	and  c                                           ; $4a45: $a1
	rst  $38                                         ; $4a46: $ff
	rst  $38                                         ; $4a47: $ff
	and  e                                           ; $4a48: $a3
	and  l                                           ; $4a49: $a5
	db   $ec                                         ; $4a4a: $ec
	cp   d                                           ; $4a4b: $ba
	ld   e, c                                        ; $4a4c: $59
	sbc  a                                           ; $4a4d: $9f
	dec  c                                           ; $4a4e: $0d
	ld   a, b                                        ; $4a4f: $78
	and  c                                           ; $4a50: $a1
	ld   e, c                                        ; $4a51: $59
	inc  b                                           ; $4a52: $04
	ld   d, $79                                      ; $4a53: $16 $79
	adc  h                                           ; $4a55: $8c
	sub  [hl]                                        ; $4a56: $96
	ld   [hl], c                                     ; $4a57: $71
	ld   l, a                                        ; $4a58: $6f
	sub  c                                           ; $4a59: $91
	ld   [hl], c                                     ; $4a5a: $71
	ld   [hl], h                                     ; $4a5b: $74
	ld   h, e                                        ; $4a5c: $63
	sbc  a                                           ; $4a5d: $9f
	dec  c                                           ; $4a5e: $0d
	nop                                              ; $4a5f: $00
	ld   a, [bc]                                     ; $4a60: $0a
	rrca                                             ; $4a61: $0f
	inc  b                                           ; $4a62: $04
	ld   a, [hl+]                                    ; $4a63: $2a
	ld   bc, $5483                                   ; $4a64: $01 $83 $54
	and  c                                           ; $4a67: $a1
	rst  $38                                         ; $4a68: $ff
	rst  $38                                         ; $4a69: $ff
	ld   l, e                                        ; $4a6a: $6b
	ld   d, h                                        ; $4a6b: $54
	ld   a, b                                        ; $4a6c: $78
	and  c                                           ; $4a6d: $a1
	ld   l, [hl]                                     ; $4a6e: $6e
	sbc  a                                           ; $4a6f: $9f
	dec  c                                           ; $4a70: $0d
	ld   [hl], l                                     ; $4a71: $75
	sub  b                                           ; $4a72: $90
	sbc  [hl]                                        ; $4a73: $9e
	ld   a, h                                        ; $4a74: $7c
	ld   l, h                                        ; $4a75: $6c
	ld   d, d                                        ; $4a76: $52
	ld   l, l                                        ; $4a77: $6d
	sbc  b                                           ; $4a78: $98
	ld   h, l                                        ; $4a79: $65
	ld   a, b                                        ; $4a7a: $78
	ld   d, d                                        ; $4a7b: $52
	ld   [hl], l                                     ; $4a7c: $75
	sub  [hl]                                        ; $4a7d: $96
	sbc  a                                           ; $4a7e: $9f
	dec  c                                           ; $4a7f: $0d
	nop                                              ; $4a80: $00
	ld   a, [bc]                                     ; $4a81: $0a
	rrca                                             ; $4a82: $0f
	nop                                              ; $4a83: $00
	ld   bc, $0101                                   ; $4a84: $01 $01 $01
	inc  bc                                          ; $4a87: $03
	inc  bc                                          ; $4a88: $03
	ld   e, e                                        ; $4a89: $5b
	ld   e, c                                        ; $4a8a: $59
	ld   [hl], c                                     ; $4a8b: $71
	ld   l, l                                        ; $4a8c: $6d
	rst  $38                                         ; $4a8d: $ff
	rst  $38                                         ; $4a8e: $ff
	ld   bc, $0d04                                   ; $4a8f: $01 $04 $0d
	nop                                              ; $4a92: $00
	ld   a, [bc]                                     ; $4a93: $0a
	nop                                              ; $4a94: $00
	rrca                                             ; $4a95: $0f
	nop                                              ; $4a96: $00
	ld   bc, $0101                                   ; $4a97: $01 $01 $01
	inc  bc                                          ; $4a9a: $03
	ld   h, c                                        ; $4a9b: $61
	ld   d, h                                        ; $4a9c: $54
	ld   a, b                                        ; $4a9d: $78
	ld   [hl], c                                     ; $4a9e: $71
	ld   l, l                                        ; $4a9f: $6d
	sub  a                                           ; $4aa0: $97
	rst  $38                                         ; $4aa1: $ff
	rst  $38                                         ; $4aa2: $ff
	ld   bc, $0d04                                   ; $4aa3: $01 $04 $0d
	nop                                              ; $4aa6: $00
	ld   a, [bc]                                     ; $4aa7: $0a
	ld   bc, $f5f1                                   ; $4aa8: $01 $f1 $f5
	pop  af                                          ; $4aab: $f1
	push af                                          ; $4aac: $f5
	sbc  a                                           ; $4aad: $9f
	dec  c                                           ; $4aae: $0d
	nop                                              ; $4aaf: $00
	ld   a, [bc]                                     ; $4ab0: $0a
	rrca                                             ; $4ab1: $0f
	inc  b                                           ; $4ab2: $04
	dec  hl                                          ; $4ab3: $2b
	ld   bc, $a178                                   ; $4ab4: $01 $78 $a1
	ld   l, [hl]                                     ; $4ab7: $6e
	sbc  [hl]                                        ; $4ab8: $9e
	pop  af                                          ; $4ab9: $f1
	push af                                          ; $4aba: $f5
	ld   l, a                                        ; $4abb: $6f
	sub  c                                           ; $4abc: $91
	and  c                                           ; $4abd: $a1
	ld   e, c                                        ; $4abe: $59
	rst  $38                                         ; $4abf: $ff
	rst  $38                                         ; $4ac0: $ff
	dec  c                                           ; $4ac1: $0d
	nop                                              ; $4ac2: $00
	ld   a, [bc]                                     ; $4ac3: $0a
	rrca                                             ; $4ac4: $0f
	nop                                              ; $4ac5: $00
	ld   bc, $0101                                   ; $4ac6: $01 $01 $01
	inc  bc                                          ; $4ac9: $03
	inc  bc                                          ; $4aca: $03
	ld   e, e                                        ; $4acb: $5b
	ld   e, c                                        ; $4acc: $59
	ld   [hl], c                                     ; $4acd: $71
	ld   l, l                                        ; $4ace: $6d
	rst  $38                                         ; $4acf: $ff
	rst  $38                                         ; $4ad0: $ff
	ld   bc, $0d04                                   ; $4ad1: $01 $04 $0d
	nop                                              ; $4ad4: $00
	ld   a, [bc]                                     ; $4ad5: $0a
	rrca                                             ; $4ad6: $0f
	inc  b                                           ; $4ad7: $04
	inc  l                                           ; $4ad8: $2c
	ld   bc, $ffff                                   ; $4ad9: $01 $ff $ff
	ld   a, b                                        ; $4adc: $78
	and  c                                           ; $4add: $a1
	ld   [hl], h                                     ; $4ade: $74
	sbc  [hl]                                        ; $4adf: $9e
	ld   h, c                                        ; $4ae0: $61
	and  c                                           ; $4ae1: $a1
	ld   a, b                                        ; $4ae2: $78
	halt                                             ; $4ae3: $76
	ld   h, c                                        ; $4ae4: $61
	sbc  e                                           ; $4ae5: $9b
	ld   a, c                                        ; $4ae6: $79
	dec  c                                           ; $4ae7: $0d
	and  l                                           ; $4ae8: $a5
	call Call_067_525a                               ; $4ae9: $cd $5a $52
	sbc  c                                           ; $4aec: $99
	sbc  l                                           ; $4aed: $9d
	ld   e, a                                        ; $4aee: $5f
	ld   a, b                                        ; $4aef: $78
	ld   d, d                                        ; $4af0: $52
	ld   h, [hl]                                     ; $4af1: $66
	sub  c                                           ; $4af2: $91
	ld   a, b                                        ; $4af3: $78
	ld   d, d                                        ; $4af4: $52
	ld   a, [$000d]                                  ; $4af5: $fa $0d $00
	ld   a, [bc]                                     ; $4af8: $0a
	dec  c                                           ; $4af9: $0d
	nop                                              ; $4afa: $00
	nop                                              ; $4afb: $00
	rrca                                             ; $4afc: $0f
	nop                                              ; $4afd: $00
	ld   bc, $f706                                   ; $4afe: $01 $06 $f7
	ld   [bc], a                                     ; $4b01: $02
	rrca                                             ; $4b02: $0f
	nop                                              ; $4b03: $00
	ld   bc, $0101                                   ; $4b04: $01 $01 $01
	inc  bc                                          ; $4b07: $03
	ld   h, c                                        ; $4b08: $61
	ld   h, c                                        ; $4b09: $61
	ld   a, l                                        ; $4b0a: $7d
	inc  bc                                          ; $4b0b: $03
	push de                                          ; $4b0c: $d5
	ld   h, b                                        ; $4b0d: $60
	sub  [hl]                                        ; $4b0e: $96
	ld   d, h                                        ; $4b0f: $54
	rst  $38                                         ; $4b10: $ff
	rst  $38                                         ; $4b11: $ff
	ld   bc, $0d04                                   ; $4b12: $01 $04 $0d
	nop                                              ; $4b15: $00
	ld   a, [bc]                                     ; $4b16: $0a
	ld   bc, $fa50                                   ; $4b17: $01 $50 $fa
	dec  c                                           ; $4b1a: $0d
	ld   a, b                                        ; $4b1b: $78
	ld   l, d                                        ; $4b1c: $6a
	ld   h, c                                        ; $4b1d: $61
	and  c                                           ; $4b1e: $a1
	ld   a, b                                        ; $4b1f: $78
	inc  bc                                          ; $4b20: $03
	ld   c, e                                        ; $4b21: $4b
	ld   a, c                                        ; $4b22: $79
	dec  b                                           ; $4b23: $05
	sub  h                                           ; $4b24: $94
	ld   e, d                                        ; $4b25: $5a
	ld   sp, hl                                      ; $4b26: $f9
	dec  c                                           ; $4b27: $0d
	nop                                              ; $4b28: $00
	ld   a, [bc]                                     ; $4b29: $0a
	ld   bc, $9d54                                   ; $4b2a: $01 $54 $9d
	ld   [hl], c                                     ; $4b2d: $71
	ld   a, [$000d]                                  ; $4b2e: $fa $0d $00
	ld   a, [bc]                                     ; $4b31: $0a
	dec  c                                           ; $4b32: $0d
	nop                                              ; $4b33: $00
	nop                                              ; $4b34: $00
	ld   c, $03                                      ; $4b35: $0e $03
	inc  c                                           ; $4b37: $0c
	inc  bc                                          ; $4b38: $03
	inc  l                                           ; $4b39: $2c
	ld   a, [bc]                                     ; $4b3a: $0a
	ld   c, $6a                                      ; $4b3b: $0e $6a
	inc  l                                           ; $4b3d: $2c
	ld   [bc], a                                     ; $4b3e: $02
	ld   bc, $6d50                                   ; $4b3f: $01 $50 $6d
	ld   l, l                                        ; $4b42: $6d
	ld   l, l                                        ; $4b43: $6d
	ld   l, l                                        ; $4b44: $6d
	ld   l, l                                        ; $4b45: $6d
	ld   l, l                                        ; $4b46: $6d
	rst  $38                                         ; $4b47: $ff
	rst  $38                                         ; $4b48: $ff
	dec  c                                           ; $4b49: $0d
	nop                                              ; $4b4a: $00
	ld   a, [bc]                                     ; $4b4b: $0a
	inc  e                                           ; $4b4c: $1c
	inc  b                                           ; $4b4d: $04
	rlca                                             ; $4b4e: $07
	rlca                                             ; $4b4f: $07
	dec  e                                           ; $4b50: $1d
	ld   b, b                                        ; $4b51: $40
	inc  d                                           ; $4b52: $14
	inc  bc                                          ; $4b53: $03
	inc  d                                           ; $4b54: $14
	ld   bc, $2903                                   ; $4b55: $01 $03 $29
	nop                                              ; $4b58: $00
	ld   bc, $526f                                   ; $4b59: $01 $6f $52
	ld   [bc], a                                     ; $4b5c: $02
	inc  de                                          ; $4b5d: $13
	ld   l, a                                        ; $4b5e: $6f
	sub  c                                           ; $4b5f: $91
	db   $fc                                         ; $4b60: $fc
	and  c                                           ; $4b61: $a1
	rst  $38                                         ; $4b62: $ff
	rst  $38                                         ; $4b63: $ff
	dec  c                                           ; $4b64: $0d
	nop                                              ; $4b65: $00
	ld   a, [bc]                                     ; $4b66: $0a
	ld   b, $18                                      ; $4b67: $06 $18
	inc  bc                                          ; $4b69: $03
	dec  c                                           ; $4b6a: $0d
	nop                                              ; $4b6b: $00
	nop                                              ; $4b6c: $00
	rrca                                             ; $4b6d: $0f
	nop                                              ; $4b6e: $00
	ld   bc, $0a2c                                   ; $4b6f: $01 $2c $0a
	ld   c, $6a                                      ; $4b72: $0e $6a
	inc  l                                           ; $4b74: $2c
	ld   [bc], a                                     ; $4b75: $02
	inc  e                                           ; $4b76: $1c
	inc  b                                           ; $4b77: $04
	rlca                                             ; $4b78: $07
	rlca                                             ; $4b79: $07
	dec  e                                           ; $4b7a: $1d
	ld   b, b                                        ; $4b7b: $40
	inc  d                                           ; $4b7c: $14
	inc  bc                                          ; $4b7d: $03
	inc  d                                           ; $4b7e: $14
	ld   bc, $2903                                   ; $4b7f: $01 $03 $29
	nop                                              ; $4b82: $00
	ld   bc, $526f                                   ; $4b83: $01 $6f $52
	ld   [bc], a                                     ; $4b86: $02
	inc  de                                          ; $4b87: $13
	ld   l, a                                        ; $4b88: $6f
	sub  c                                           ; $4b89: $91
	db   $fc                                         ; $4b8a: $fc
	and  c                                           ; $4b8b: $a1
	rst  $38                                         ; $4b8c: $ff
	rst  $38                                         ; $4b8d: $ff
	dec  c                                           ; $4b8e: $0d
	nop                                              ; $4b8f: $00
	ld   a, [bc]                                     ; $4b90: $0a
	dec  b                                           ; $4b91: $05
	ld   b, b                                        ; $4b92: $40
	ld   c, e                                        ; $4b93: $4b
	ld   [bc], a                                     ; $4b94: $02
	nop                                              ; $4b95: $00
	nop                                              ; $4b96: $00
	ld   bc, $b2ba                                   ; $4b97: $01 $ba $b2
	jp   c, $0dfa                                    ; $4b9a: $da $fa $0d

	nop                                              ; $4b9d: $00
	dec  b                                           ; $4b9e: $05
	ld   b, b                                        ; $4b9f: $40
	ld   d, c                                        ; $4ba0: $51
	ld   bc, $0002                                   ; $4ba1: $01 $02 $00
	ld   bc, $9792                                   ; $4ba4: $01 $92 $97
	ld   h, l                                        ; $4ba7: $65
	ld   d, d                                        ; $4ba8: $52
	ld   a, [$b60d]                                  ; $4ba9: $fa $0d $b6
	and  l                                           ; $4bac: $a5
	rst  ToBoot                                         ; $4bad: $c7
	ei                                               ; $4bae: $fb
	ld   a, [$000d]                                  ; $4baf: $fa $0d $00
	ld   a, [bc]                                     ; $4bb2: $0a
	rlca                                             ; $4bb3: $07
	ld   d, e                                        ; $4bb4: $53
	inc  bc                                          ; $4bb5: $03
	inc  b                                           ; $4bb6: $04
	add  b                                           ; $4bb7: $80
	ld   b, $01                                      ; $4bb8: $06 $01
	rst  $38                                         ; $4bba: $ff
	jr   nz, jr_067_4bbd                             ; $4bbb: $20 $00

jr_067_4bbd:
	dec  b                                           ; $4bbd: $05
	add  b                                           ; $4bbe: $80
	ld   b, $01                                      ; $4bbf: $06 $01
	ld   bc, $0d00                                   ; $4bc1: $01 $00 $0d
	nop                                              ; $4bc4: $00
	nop                                              ; $4bc5: $00
	rrca                                             ; $4bc6: $0f
	nop                                              ; $4bc7: $00
	ld   bc, $1e09                                   ; $4bc8: $01 $09 $1e
	nop                                              ; $4bcb: $00
	inc  c                                           ; $4bcc: $0c
	ld   [bc], a                                     ; $4bcd: $02
	ld   c, $01                                      ; $4bce: $0e $01
	rrca                                             ; $4bd0: $0f
	nop                                              ; $4bd1: $00
	ld   bc, $5001                                   ; $4bd2: $01 $01 $50
	rst  $38                                         ; $4bd5: $ff
	rst  $38                                         ; $4bd6: $ff
	sbc  [hl]                                        ; $4bd7: $9e
	sub  d                                           ; $4bd8: $92
	ld   a, [hl]                                     ; $4bd9: $7e
	ld   d, d                                        ; $4bda: $52
	sub  [hl]                                        ; $4bdb: $96
	ld   a, b                                        ; $4bdc: $78
	db   $fc                                         ; $4bdd: $fc
	rst  $38                                         ; $4bde: $ff
	rst  $38                                         ; $4bdf: $ff
	dec  c                                           ; $4be0: $0d
	inc  bc                                          ; $4be1: $03
	add  b                                           ; $4be2: $80
	dec  b                                           ; $4be3: $05
	db   $10                                         ; $4be4: $10
	inc  bc                                          ; $4be5: $03
	ld   [hl], l                                     ; $4be6: $75
	halt                                             ; $4be7: $76
	ld   a, l                                        ; $4be8: $7d
	ld   d, d                                        ; $4be9: $52
	ld   d, [hl]                                     ; $4bea: $56
	rst  $38                                         ; $4beb: $ff
	rst  $38                                         ; $4bec: $ff
	rst  $38                                         ; $4bed: $ff
	rst  $38                                         ; $4bee: $ff
	dec  c                                           ; $4bef: $0d
	rst  $38                                         ; $4bf0: $ff
	rst  $38                                         ; $4bf1: $ff
	rst  $38                                         ; $4bf2: $ff
	rst  $38                                         ; $4bf3: $ff
	rst  $38                                         ; $4bf4: $ff
	rst  $38                                         ; $4bf5: $ff
	rst  $38                                         ; $4bf6: $ff
	rst  $38                                         ; $4bf7: $ff
	rst  $38                                         ; $4bf8: $ff
	rst  $38                                         ; $4bf9: $ff
	dec  c                                           ; $4bfa: $0d
	nop                                              ; $4bfb: $00
	ld   a, [bc]                                     ; $4bfc: $0a
	inc  d                                           ; $4bfd: $14
	ld   b, $01                                      ; $4bfe: $06 $01
	rrca                                             ; $4c00: $0f
	dec  bc                                          ; $4c01: $0b
	ld   [bc], a                                     ; $4c02: $02
	ld   bc, $0008                                   ; $4c03: $01 $08 $00
	ld   e, l                                        ; $4c06: $5d
	and  c                                           ; $4c07: $a1
	sbc  a                                           ; $4c08: $9f
	dec  c                                           ; $4c09: $0d
	ld   [bc], a                                     ; $4c0a: $02
	and  l                                           ; $4c0b: $a5
	ld   h, a                                        ; $4c0c: $67
	ld   e, [hl]                                     ; $4c0d: $5e
	sbc  [hl]                                        ; $4c0e: $9e
	inc  bc                                          ; $4c0f: $03
	add  l                                           ; $4c10: $85
	inc  b                                           ; $4c11: $04
	xor  e                                           ; $4c12: $ab
	inc  bc                                          ; $4c13: $03
	add  d                                           ; $4c14: $82
	inc  bc                                          ; $4c15: $03
	ld   c, l                                        ; $4c16: $4d
	ld   a, c                                        ; $4c17: $79
	dec  b                                           ; $4c18: $05
	db   $10                                         ; $4c19: $10
	ld   a, b                                        ; $4c1a: $78
	ld   h, e                                        ; $4c1b: $63
	ld   d, d                                        ; $4c1c: $52
	sbc  a                                           ; $4c1d: $9f
	dec  c                                           ; $4c1e: $0d
	nop                                              ; $4c1f: $00
	ld   a, [bc]                                     ; $4c20: $0a
	rrca                                             ; $4c21: $0f
	nop                                              ; $4c22: $00
	ld   bc, $8c01                                   ; $4c23: $01 $01 $8c
	sbc  [hl]                                        ; $4c26: $9e
	adc  h                                           ; $4c27: $8c
	ld   h, e                                        ; $4c28: $63
	ld   e, c                                        ; $4c29: $59
	rst  $38                                         ; $4c2a: $ff
	rst  $38                                         ; $4c2b: $ff
	dec  c                                           ; $4c2c: $0d
	nop                                              ; $4c2d: $00
	ld   a, [bc]                                     ; $4c2e: $0a
	inc  c                                           ; $4c2f: $0c
	ld   [bc], a                                     ; $4c30: $02
	add  hl, bc                                      ; $4c31: $09
	ld   e, $0e                                      ; $4c32: $1e $0e
	inc  c                                           ; $4c34: $0c
	inc  e                                           ; $4c35: $1c
	ld   a, [bc]                                     ; $4c36: $0a
	inc  b                                           ; $4c37: $04
	inc  b                                           ; $4c38: $04
	ld   bc, $5258                                   ; $4c39: $01 $58 $52
	sbc  [hl]                                        ; $4c3c: $9e
	ld   [$9f00], sp                                 ; $4c3d: $08 $00 $9f
	dec  c                                           ; $4c40: $0d
	ld   e, b                                        ; $4c41: $58
	adc  a                                           ; $4c42: $8f
	ei                                               ; $4c43: $fb
	cp   b                                           ; $4c44: $b8
	push hl                                          ; $4c45: $e5
	pop  af                                          ; $4c46: $f1
	ei                                               ; $4c47: $fb
	ld   a, h                                        ; $4c48: $7c
	ld   l, h                                        ; $4c49: $6c
	ld   d, d                                        ; $4c4a: $52
	ld   [hl], h                                     ; $4c4b: $74
	ld   l, l                                        ; $4c4c: $6d
	and  c                                           ; $4c4d: $a1
	dec  c                                           ; $4c4e: $0d
	ld   l, [hl]                                     ; $4c4f: $6e
	ld   [hl], c                                     ; $4c50: $71
	ld   [hl], h                                     ; $4c51: $74
	ld   a, b                                        ; $4c52: $78
	sbc  a                                           ; $4c53: $9f
	dec  c                                           ; $4c54: $0d
	nop                                              ; $4c55: $00
	ld   a, [bc]                                     ; $4c56: $0a
	ld   bc, $a102                                   ; $4c57: $01 $02 $a1
	inc  bc                                          ; $4c5a: $03
	and  b                                           ; $4c5b: $a0
	ld   l, a                                        ; $4c5c: $6f
	ld   a, l                                        ; $4c5d: $7d
	sbc  [hl]                                        ; $4c5e: $9e
	sbc  l                                           ; $4c5f: $9d
	ld   e, c                                        ; $4c60: $59
	sub  a                                           ; $4c61: $97
	and  c                                           ; $4c62: $a1
	ld   [hl], l                                     ; $4c63: $75
	sub  b                                           ; $4c64: $90
	ld   a, b                                        ; $4c65: $78
	ld   d, d                                        ; $4c66: $52
	dec  c                                           ; $4c67: $0d
	ld   e, d                                        ; $4c68: $5a
	sbc  [hl]                                        ; $4c69: $9e
	inc  de                                          ; $4c6a: $13
	ld   [bc], a                                     ; $4c6b: $02
	sub  e                                           ; $4c6c: $93
	sub  b                                           ; $4c6d: $90
	sub  d                                           ; $4c6e: $92
	ld   [hl], c                                     ; $4c6f: $71
	ld   l, a                                        ; $4c70: $6f
	sub  c                                           ; $4c71: $91
	ei                                               ; $4c72: $fb
	dec  c                                           ; $4c73: $0d
	adc  h                                           ; $4c74: $8c
	ld   l, b                                        ; $4c75: $68
	ld   d, d                                        ; $4c76: $52
	ld   l, [hl]                                     ; $4c77: $6e
	sbc  e                                           ; $4c78: $9b
	sbc  a                                           ; $4c79: $9f
	dec  c                                           ; $4c7a: $0d
	nop                                              ; $4c7b: $00
	ld   a, [bc]                                     ; $4c7c: $0a
	ld   bc, $7e59                                   ; $4c7d: $01 $59 $7e
	ld   [hl], c                                     ; $4c80: $71
	ld   [hl], h                                     ; $4c81: $74
	sub  d                                           ; $4c82: $92
	sbc  b                                           ; $4c83: $98
	ld   l, l                                        ; $4c84: $6d
	ld   d, d                                        ; $4c85: $52
	ld   e, d                                        ; $4c86: $5a
	dec  c                                           ; $4c87: $0d
	ld   [bc], a                                     ; $4c88: $02
	sbc  b                                           ; $4c89: $98
	inc  bc                                          ; $4c8a: $03
	nop                                              ; $4c8b: $00
	ld   a, h                                        ; $4c8c: $7c
	inc  bc                                          ; $4c8d: $03
	ld   l, e                                        ; $4c8e: $6b
	inc  bc                                          ; $4c8f: $03
	ld   c, a                                        ; $4c90: $4f
	sbc  [hl]                                        ; $4c91: $9e
	ld   l, a                                        ; $4c92: $6f
	sub  l                                           ; $4c93: $95
	ld   [hl], c                                     ; $4c94: $71
	halt                                             ; $4c95: $76
	ldh  [c], a                                      ; $4c96: $e2
	db   $ec                                         ; $4c97: $ec
	dec  c                                           ; $4c98: $0d
	ld   a, b                                        ; $4c99: $78
	and  c                                           ; $4c9a: $a1
	ld   [hl], l                                     ; $4c9b: $75
	ld   a, b                                        ; $4c9c: $78
	sbc  a                                           ; $4c9d: $9f
	dec  c                                           ; $4c9e: $0d
	nop                                              ; $4c9f: $00
	ld   a, [bc]                                     ; $4ca0: $0a
	inc  e                                           ; $4ca1: $1c
	ld   a, [bc]                                     ; $4ca2: $0a
	ld   [bc], a                                     ; $4ca3: $02
	ld   [bc], a                                     ; $4ca4: $02
	ld   bc, $9d59                                   ; $4ca5: $01 $59 $9d
	ld   d, d                                        ; $4ca8: $52
	ld   l, e                                        ; $4ca9: $6b
	ld   d, h                                        ; $4caa: $54
	ld   l, [hl]                                     ; $4cab: $6e
	ld   e, d                                        ; $4cac: $5a
	sbc  [hl]                                        ; $4cad: $9e
	dec  c                                           ; $4cae: $0d
	inc  b                                           ; $4caf: $04
	dec  c                                           ; $4cb0: $0d
	ld   [bc], a                                     ; $4cb1: $02
	sub  [hl]                                        ; $4cb2: $96
	inc  b                                           ; $4cb3: $04
	ld   b, l                                        ; $4cb4: $45
	inc  b                                           ; $4cb5: $04
	ld   a, [bc]                                     ; $4cb6: $0a
	ld   a, l                                        ; $4cb7: $7d
	ld   h, c                                        ; $4cb8: $61
	ld   h, c                                        ; $4cb9: $61
	ld   [hl], l                                     ; $4cba: $75
	inc  bc                                          ; $4cbb: $03
	ld   a, [hl]                                     ; $4cbc: $7e
	dec  b                                           ; $4cbd: $05
	nop                                              ; $4cbe: $00
	ld   l, [hl]                                     ; $4cbf: $6e
	ld   a, [$000d]                                  ; $4cc0: $fa $0d $00
	ld   a, [bc]                                     ; $4cc3: $0a
	ld   bc, $a102                                   ; $4cc4: $01 $02 $a1
	inc  bc                                          ; $4cc7: $03
	and  b                                           ; $4cc8: $a0
	ld   l, a                                        ; $4cc9: $6f
	and  b                                           ; $4cca: $a0
	inc  b                                           ; $4ccb: $04
	ld   b, l                                        ; $4ccc: $45
	sbc  d                                           ; $4ccd: $9a
	dec  b                                           ; $4cce: $05
	scf                                              ; $4ccf: $37
	ld   d, [hl]                                     ; $4cd0: $56
	ld   [hl], h                                     ; $4cd1: $74
	dec  c                                           ; $4cd2: $0d
	inc  bc                                          ; $4cd3: $03
	add  b                                           ; $4cd4: $80
	inc  bc                                          ; $4cd5: $03
	jp   c, Jump_067_7465                            ; $4cd6: $da $65 $74

	ld   e, e                                        ; $4cd9: $5b
	ld   a, b                                        ; $4cda: $78
	ld   a, [$000d]                                  ; $4cdb: $fa $0d $00
	ld   a, [bc]                                     ; $4cde: $0a
	ld   h, $00                                      ; $4cdf: $26 $00
	ld   c, $4c                                      ; $4ce1: $0e $4c
	rrca                                             ; $4ce3: $0f
	nop                                              ; $4ce4: $00
	ld   bc, $0702                                   ; $4ce5: $01 $02 $07
	ld   b, $03                                      ; $4ce8: $06 $03
	inc  b                                           ; $4cea: $04
	add  b                                           ; $4ceb: $80
	dec  hl                                          ; $4cec: $2b
	ld   bc, $20ff                                   ; $4ced: $01 $ff $20
	nop                                              ; $4cf0: $00
	ld   bc, $cf02                                   ; $4cf1: $01 $02 $cf
	dec  b                                           ; $4cf4: $05
	ld   a, [de]                                     ; $4cf5: $1a
	ld   h, e                                        ; $4cf6: $63
	and  c                                           ; $4cf7: $a1
	sbc  [hl]                                        ; $4cf8: $9e
	ld   d, d                                        ; $4cf9: $52
	sbc  c                                           ; $4cfa: $99
	ld   e, c                                        ; $4cfb: $59
	ld   a, b                                        ; $4cfc: $78
	ld   sp, hl                                      ; $4cfd: $f9
	dec  c                                           ; $4cfe: $0d
	nop                                              ; $4cff: $00
	ld   a, [bc]                                     ; $4d00: $0a
	inc  c                                           ; $4d01: $0c
	add  hl, bc                                      ; $4d02: $09
	inc  c                                           ; $4d03: $0c
	dec  bc                                          ; $4d04: $0b
	ld   bc, $9e78                                   ; $4d05: $01 $78 $9e
	inc  b                                           ; $4d08: $04
	ld   c, c                                        ; $4d09: $49
	ld   e, d                                        ; $4d0a: $5a
	ld   [bc], a                                     ; $4d0b: $02
	ld   e, d                                        ; $4d0c: $5a
	ld   h, c                                        ; $4d0d: $61
	ld   [hl], c                                     ; $4d0e: $71
	ld   l, l                                        ; $4d0f: $6d
	and  c                                           ; $4d10: $a1
	ld   l, [hl]                                     ; $4d11: $6e
	ld   a, [$000d]                                  ; $4d12: $fa $0d $00
	ld   a, [bc]                                     ; $4d15: $0a
	inc  d                                           ; $4d16: $14
	ld   a, [bc]                                     ; $4d17: $0a
	ld   bc, $ff01                                   ; $4d18: $01 $01 $ff
	rst  $38                                         ; $4d1b: $ff
	rst  $38                                         ; $4d1c: $ff
	rst  $38                                         ; $4d1d: $ff
	rst  $38                                         ; $4d1e: $ff
	rst  $38                                         ; $4d1f: $ff
	rst  $38                                         ; $4d20: $ff
	rst  $38                                         ; $4d21: $ff
	rst  $38                                         ; $4d22: $ff
	dec  c                                           ; $4d23: $0d
	nop                                              ; $4d24: $00
	ld   a, [bc]                                     ; $4d25: $0a
	ld   c, $4d                                      ; $4d26: $0e $4d
	dec  c                                           ; $4d28: $0d
	dec  b                                           ; $4d29: $05
	jr   nz, jr_067_4d2d                             ; $4d2a: $20 $01

	ld   h, c                                        ; $4d2c: $61

jr_067_4d2d:
	sbc  [hl]                                        ; $4d2d: $9e
	ld   [bc], a                                     ; $4d2e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d2f: $cf
	dec  b                                           ; $4d30: $05
	ld   a, [de]                                     ; $4d31: $1a
	ld   h, e                                        ; $4d32: $63
	and  c                                           ; $4d33: $a1
	ld   a, [$000d]                                  ; $4d34: $fa $0d $00
	ld   a, [bc]                                     ; $4d37: $0a
	add  hl, de                                      ; $4d38: $19
	dec  b                                           ; $4d39: $05
	inc  bc                                          ; $4d3a: $03
	inc  b                                           ; $4d3b: $04
	ld   c, $03                                      ; $4d3c: $0e $03
	sbc  l                                           ; $4d3e: $9d
	inc  b                                           ; $4d3f: $04
	and  [hl]                                        ; $4d40: $a6
	ld   [hl], l                                     ; $4d41: $75
	ld   h, a                                        ; $4d42: $67
	ld   e, c                                        ; $4d43: $59
	ld   a, [$00f9]                                  ; $4d44: $fa $f9 $00
	nop                                              ; $4d47: $00
	inc  bc                                          ; $4d48: $03
	db   $dd                                         ; $4d49: $dd
	ld   b, $48                                      ; $4d4a: $06 $48
	ld   l, [hl]                                     ; $4d4c: $6e
	ld   a, [$0100]                                  ; $4d4d: $fa $00 $01
	ld   [bc], a                                     ; $4d50: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d51: $cf
	dec  b                                           ; $4d52: $05
	ld   a, [de]                                     ; $4d53: $1a
	ld   h, e                                        ; $4d54: $63
	and  c                                           ; $4d55: $a1
	ld   e, d                                        ; $4d56: $5a
	ld   b, $0d                                      ; $4d57: $06 $0d
	inc  b                                           ; $4d59: $04
	ld   e, [hl]                                     ; $4d5a: $5e
	ld   a, [$00f9]                                  ; $4d5b: $fa $f9 $00
	ld   [bc], a                                     ; $4d5e: $02
	rlca                                             ; $4d5f: $07
	sbc  h                                           ; $4d60: $9c
	nop                                              ; $4d61: $00
	ld   [bc], a                                     ; $4d62: $02
	inc  bc                                          ; $4d63: $03
	ld   bc, $2000                                   ; $4d64: $01 $00 $20
	nop                                              ; $4d67: $00
	rlca                                             ; $4d68: $07
	ld   e, h                                        ; $4d69: $5c
	ld   bc, $0302                                   ; $4d6a: $01 $02 $03
	ld   bc, $2001                                   ; $4d6d: $01 $01 $20
	nop                                              ; $4d70: $00
	rlca                                             ; $4d71: $07
	db   $dd                                         ; $4d72: $dd
	ld   bc, $0302                                   ; $4d73: $01 $02 $03
	ld   bc, $2002                                   ; $4d76: $01 $02 $20
	nop                                              ; $4d79: $00
	ld   b, $a5                                      ; $4d7a: $06 $a5
	ld   [bc], a                                     ; $4d7c: $02
	rrca                                             ; $4d7d: $0f
	nop                                              ; $4d7e: $00
	ld   bc, $0401                                   ; $4d7f: $01 $01 $04
	ld   c, $03                                      ; $4d82: $0e $03
	sbc  l                                           ; $4d84: $9d
	inc  b                                           ; $4d85: $04
	and  [hl]                                        ; $4d86: $a6
	ld   [hl], l                                     ; $4d87: $75
	ld   h, a                                        ; $4d88: $67
	ld   e, c                                        ; $4d89: $59
	ld   a, [$10f9]                                  ; $4d8a: $fa $f9 $10
	ld   [bc], a                                     ; $4d8d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d8e: $cf
	dec  b                                           ; $4d8f: $05
	ld   a, [de]                                     ; $4d90: $1a
	ld   h, e                                        ; $4d91: $63
	and  c                                           ; $4d92: $a1
	ld   a, [$520d]                                  ; $4d93: $fa $0d $52
	ld   [hl], c                                     ; $4d96: $71
	ld   l, l                                        ; $4d97: $6d
	ld   d, d                                        ; $4d98: $52
	inc  b                                           ; $4d99: $04
	ld   c, c                                        ; $4d9a: $49
	ld   e, d                                        ; $4d9b: $5a
	rst  $38                                         ; $4d9c: $ff
	rst  $38                                         ; $4d9d: $ff
	dec  c                                           ; $4d9e: $0d
	nop                                              ; $4d9f: $00
	ld   a, [bc]                                     ; $4da0: $0a
	rrca                                             ; $4da1: $0f
	dec  b                                           ; $4da2: $05
	ld   [$ff01], sp                                 ; $4da3: $08 $01 $ff
	rst  $38                                         ; $4da6: $ff
	inc  b                                           ; $4da7: $04
	ld   c, $03                                      ; $4da8: $0e $03
	sbc  l                                           ; $4daa: $9d
	inc  b                                           ; $4dab: $04
	and  [hl]                                        ; $4dac: $a6
	sub  d                                           ; $4dad: $92
	sbc  a                                           ; $4dae: $9f
	dec  c                                           ; $4daf: $0d
	ld   l, a                                        ; $4db0: $6f
	sub  l                                           ; $4db1: $95
	ld   [hl], c                                     ; $4db2: $71
	halt                                             ; $4db3: $76
	ld   b, $58                                      ; $4db4: $06 $58
	inc  b                                           ; $4db6: $04
	ld   h, c                                        ; $4db7: $61
	ld   a, h                                        ; $4db8: $7c
	inc  b                                           ; $4db9: $04
	xor  e                                           ; $4dba: $ab
	ld   [bc], a                                     ; $4dbb: $02
	ld   a, e                                        ; $4dbc: $7b
	and  b                                           ; $4dbd: $a0
	dec  c                                           ; $4dbe: $0d
	adc  h                                           ; $4dbf: $8c
	ld   l, a                                        ; $4dc0: $6f
	ld   e, d                                        ; $4dc1: $5a
	ld   d, [hl]                                     ; $4dc2: $56
	ld   l, l                                        ; $4dc3: $6d
	ld   l, [hl]                                     ; $4dc4: $6e
	ld   e, a                                        ; $4dc5: $5f
	sub  d                                           ; $4dc6: $92
	ld   e, c                                        ; $4dc7: $59
	sub  a                                           ; $4dc8: $97
	sbc  a                                           ; $4dc9: $9f
	dec  c                                           ; $4dca: $0d
	nop                                              ; $4dcb: $00
	ld   a, [bc]                                     ; $4dcc: $0a
	rrca                                             ; $4dcd: $0f
	nop                                              ; $4dce: $00
	ld   bc, $7501                                   ; $4dcf: $01 $01 $75
	sbc  [hl]                                        ; $4dd2: $9e
	ld   [hl], l                                     ; $4dd3: $75
	sub  b                                           ; $4dd4: $90
	ld   [bc], a                                     ; $4dd5: $02
	dec  [hl]                                        ; $4dd6: $35
	ld   h, c                                        ; $4dd7: $61
	ld   h, b                                        ; $4dd8: $60
	ld   [hl], l                                     ; $4dd9: $75
	ld   h, a                                        ; $4dda: $67
	sub  [hl]                                        ; $4ddb: $96
	sbc  [hl]                                        ; $4ddc: $9e
	dec  c                                           ; $4ddd: $0d
	ld   [bc], a                                     ; $4dde: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ddf: $cf
	dec  b                                           ; $4de0: $05
	ld   a, [de]                                     ; $4de1: $1a
	ld   h, e                                        ; $4de2: $63
	and  c                                           ; $4de3: $a1
	sbc  a                                           ; $4de4: $9f
	dec  c                                           ; $4de5: $0d
	nop                                              ; $4de6: $00
	ld   a, [bc]                                     ; $4de7: $0a
	rrca                                             ; $4de8: $0f
	dec  b                                           ; $4de9: $05
	ld   [$401d], sp                                 ; $4dea: $08 $1d $40
	dec  d                                           ; $4ded: $15
	inc  bc                                          ; $4dee: $03
	dec  d                                           ; $4def: $15
	ld   bc, $2803                                   ; $4df0: $01 $03 $28
	nop                                              ; $4df3: $00
	ld   bc, $8c59                                   ; $4df4: $01 $59 $8c
	add  [hl]                                        ; $4df7: $86
	and  c                                           ; $4df8: $a1
	sbc  [hl]                                        ; $4df9: $9e
	ld   e, c                                        ; $4dfa: $59
	adc  h                                           ; $4dfb: $8c
	add  [hl]                                        ; $4dfc: $86
	and  c                                           ; $4dfd: $a1
	sbc  a                                           ; $4dfe: $9f
	dec  c                                           ; $4dff: $0d
	inc  bc                                          ; $4e00: $03
	ld   [hl], l                                     ; $4e01: $75
	inc  b                                           ; $4e02: $04
	xor  e                                           ; $4e03: $ab
	ld   h, l                                        ; $4e04: $65
	ld   [hl], h                                     ; $4e05: $74
	ld   e, l                                        ; $4e06: $5d
	sbc  d                                           ; $4e07: $9a
	ld   [hl], h                                     ; $4e08: $74
	sbc  [hl]                                        ; $4e09: $9e
	ld   d, b                                        ; $4e0a: $50
	sbc  b                                           ; $4e0b: $98
	ld   e, d                                        ; $4e0c: $5a
	halt                                             ; $4e0d: $76
	ld   d, h                                        ; $4e0e: $54
	sbc  a                                           ; $4e0f: $9f
	dec  c                                           ; $4e10: $0d
	nop                                              ; $4e11: $00
	ld   a, [bc]                                     ; $4e12: $0a
	ld   bc, wRandomNumStruct                                   ; $4e13: $01 $a7 $c2
	ld   a, l                                        ; $4e16: $7d
	inc  b                                           ; $4e17: $04
	ld   c, $03                                      ; $4e18: $0e $03
	sbc  l                                           ; $4e1a: $9d
	inc  b                                           ; $4e1b: $04
	and  [hl]                                        ; $4e1c: $a6
	sub  d                                           ; $4e1d: $92
	sbc  a                                           ; $4e1e: $9f
	dec  c                                           ; $4e1f: $0d
	adc  c                                           ; $4e20: $89
	ld   a, b                                        ; $4e21: $78
	sbc  [hl]                                        ; $4e22: $9e
	ld   l, e                                        ; $4e23: $6b
	ld   d, h                                        ; $4e24: $54
	ld   d, d                                        ; $4e25: $52
	ld   d, h                                        ; $4e26: $54
	ld   h, c                                        ; $4e27: $61
	halt                                             ; $4e28: $76
	ld   [hl], l                                     ; $4e29: $75
	rst  $38                                         ; $4e2a: $ff
	rst  $38                                         ; $4e2b: $ff
	dec  c                                           ; $4e2c: $0d
	nop                                              ; $4e2d: $00
	ld   a, [bc]                                     ; $4e2e: $0a
	dec  c                                           ; $4e2f: $0d
	nop                                              ; $4e30: $00
	nop                                              ; $4e31: $00
	rrca                                             ; $4e32: $0f
	nop                                              ; $4e33: $00
	ld   bc, $0a14                                   ; $4e34: $01 $14 $0a
	ld   bc, $4c0e                                   ; $4e37: $01 $0e $4c
	add  hl, bc                                      ; $4e3a: $09
	ld   e, $00                                      ; $4e3b: $1e $00
	rrca                                             ; $4e3d: $0f
	nop                                              ; $4e3e: $00
	ld   bc, $0401                                   ; $4e3f: $01 $01 $04
	ld   c, $04                                      ; $4e42: $0e $04
	adc  h                                           ; $4e44: $8c
	ld   l, [hl]                                     ; $4e45: $6e
	ld   a, [$0310]                                  ; $4e46: $fa $10 $03
	db   $dd                                         ; $4e49: $dd
	ld   b, $48                                      ; $4e4a: $06 $48
	ld   l, [hl]                                     ; $4e4c: $6e
	ld   a, [$000d]                                  ; $4e4d: $fa $0d $00
	ld   a, [bc]                                     ; $4e50: $0a
	rrca                                             ; $4e51: $0f
	dec  b                                           ; $4e52: $05
	ld   [$6f01], sp                                 ; $4e53: $08 $01 $6f
	sub  c                                           ; $4e56: $91
	ld   d, h                                        ; $4e57: $54
	sbc  [hl]                                        ; $4e58: $9e
	ld   l, a                                        ; $4e59: $6f
	sub  c                                           ; $4e5a: $91
	ld   d, h                                        ; $4e5b: $54
	sbc  a                                           ; $4e5c: $9f
	inc  bc                                          ; $4e5d: $03
	db   $dd                                         ; $4e5e: $dd
	ld   b, $48                                      ; $4e5f: $06 $48
	ld   l, a                                        ; $4e61: $6f
	sub  c                                           ; $4e62: $91
	ld   d, h                                        ; $4e63: $54
	sbc  a                                           ; $4e64: $9f
	dec  c                                           ; $4e65: $0d
	and  a                                           ; $4e66: $a7
	jp   nz, $9e5a                                   ; $4e67: $c2 $5a $9e

	ld   l, a                                        ; $4e6a: $6f
	sub  l                                           ; $4e6b: $95
	ld   [hl], c                                     ; $4e6c: $71
	halt                                             ; $4e6d: $76
	ld   b, $58                                      ; $4e6e: $06 $58
	inc  b                                           ; $4e70: $04
	ld   h, c                                        ; $4e71: $61
	ld   a, h                                        ; $4e72: $7c
	inc  b                                           ; $4e73: $04
	xor  e                                           ; $4e74: $ab
	ld   [bc], a                                     ; $4e75: $02
	ld   a, e                                        ; $4e76: $7b
	and  b                                           ; $4e77: $a0
	dec  c                                           ; $4e78: $0d
	adc  h                                           ; $4e79: $8c
	ld   l, a                                        ; $4e7a: $6f
	ld   e, d                                        ; $4e7b: $5a
	ld   d, [hl]                                     ; $4e7c: $56
	ld   l, l                                        ; $4e7d: $6d
	ld   l, [hl]                                     ; $4e7e: $6e
	ld   e, a                                        ; $4e7f: $5f
	sub  d                                           ; $4e80: $92
	sbc  a                                           ; $4e81: $9f
	dec  c                                           ; $4e82: $0d
	nop                                              ; $4e83: $00
	ld   a, [bc]                                     ; $4e84: $0a
	ld   bc, $fb96                                   ; $4e85: $01 $96 $fb
	ld   d, b                                        ; $4e88: $50
	sbc  c                                           ; $4e89: $99
	ld   h, c                                        ; $4e8a: $61
	ld   [hl], c                                     ; $4e8b: $71
	ld   l, a                                        ; $4e8c: $6f
	sub  c                                           ; $4e8d: $91
	ld   e, c                                        ; $4e8e: $59
	sub  a                                           ; $4e8f: $97
	sbc  [hl]                                        ; $4e90: $9e
	dec  c                                           ; $4e91: $0d
	ld   d, b                                        ; $4e92: $50
	and  c                                           ; $4e93: $a1
	adc  h                                           ; $4e94: $8c
	ld   h, l                                        ; $4e95: $65
	ld   [bc], a                                     ; $4e96: $02
	and  c                                           ; $4e97: $a1
	ld   a, c                                        ; $4e98: $79
	ld   l, c                                        ; $4e99: $69
	and  c                                           ; $4e9a: $a1
	sub  [hl]                                        ; $4e9b: $96
	ld   d, h                                        ; $4e9c: $54
	ld   a, c                                        ; $4e9d: $79
	ld   a, b                                        ; $4e9e: $78
	sbc  a                                           ; $4e9f: $9f
	dec  c                                           ; $4ea0: $0d
	adc  c                                           ; $4ea1: $89
	ld   a, b                                        ; $4ea2: $78
	sbc  [hl]                                        ; $4ea3: $9e
	ld   l, e                                        ; $4ea4: $6b
	ld   d, h                                        ; $4ea5: $54
	ld   d, d                                        ; $4ea6: $52
	ld   d, h                                        ; $4ea7: $54
	ld   h, c                                        ; $4ea8: $61
	halt                                             ; $4ea9: $76
	ld   [hl], l                                     ; $4eaa: $75
	rst  $38                                         ; $4eab: $ff
	rst  $38                                         ; $4eac: $ff
	dec  c                                           ; $4ead: $0d
	nop                                              ; $4eae: $00
	ld   a, [bc]                                     ; $4eaf: $0a
	dec  c                                           ; $4eb0: $0d
	nop                                              ; $4eb1: $00
	nop                                              ; $4eb2: $00
	rrca                                             ; $4eb3: $0f
	nop                                              ; $4eb4: $00
	ld   bc, $0a14                                   ; $4eb5: $01 $14 $0a
	ld   bc, $4c0e                                   ; $4eb8: $01 $0e $4c
	add  hl, bc                                      ; $4ebb: $09
	ld   e, $00                                      ; $4ebc: $1e $00
	rrca                                             ; $4ebe: $0f
	nop                                              ; $4ebf: $00
	ld   bc, $5401                                   ; $4ec0: $01 $01 $54
	sbc  l                                           ; $4ec3: $9d
	db   $fc                                         ; $4ec4: $fc
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $4ec5: $fa $10 $0d
	ld   [bc], a                                     ; $4ec8: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ec9: $cf
	dec  b                                           ; $4eca: $05
	ld   a, [de]                                     ; $4ecb: $1a
	ld   h, e                                        ; $4ecc: $63
	and  c                                           ; $4ecd: $a1
	ld   e, d                                        ; $4ece: $5a
	ld   b, $0d                                      ; $4ecf: $06 $0d
	inc  b                                           ; $4ed1: $04
	ld   e, [hl]                                     ; $4ed2: $5e
	ld   h, l                                        ; $4ed3: $65
	ld   l, a                                        ; $4ed4: $6f
	sub  c                                           ; $4ed5: $91
	ld   [hl], c                                     ; $4ed6: $71
	ld   l, l                                        ; $4ed7: $6d
	sub  [hl]                                        ; $4ed8: $96
	db   $fc                                         ; $4ed9: $fc
	dec  c                                           ; $4eda: $0d
	nop                                              ; $4edb: $00
	ld   a, [bc]                                     ; $4edc: $0a
	rrca                                             ; $4edd: $0f
	dec  b                                           ; $4ede: $05
	ld   [$5801], sp                                 ; $4edf: $08 $01 $58
	ld   d, d                                        ; $4ee2: $52
	ld   e, b                                        ; $4ee3: $58
	ld   d, d                                        ; $4ee4: $52
	sbc  [hl]                                        ; $4ee5: $9e
	ld   a, b                                        ; $4ee6: $78
	and  c                                           ; $4ee7: $a1
	ld   [hl], l                                     ; $4ee8: $75
	and  a                                           ; $4ee9: $a7
	jp   nz, $0d5a                                   ; $4eea: $c2 $5a $0d

	ld   b, $0d                                      ; $4eed: $06 $0d
	inc  b                                           ; $4eef: $04
	ld   e, [hl]                                     ; $4ef0: $5e
	ld   l, c                                        ; $4ef1: $69
	ld   a, b                                        ; $4ef2: $78
	ld   d, b                                        ; $4ef3: $50
	ld   e, c                                        ; $4ef4: $59
	and  c                                           ; $4ef5: $a1
	ld   a, e                                        ; $4ef6: $7b
	and  c                                           ; $4ef7: $a1
	sbc  a                                           ; $4ef8: $9f
	dec  c                                           ; $4ef9: $0d
	ld   b, $0d                                      ; $4efa: $06 $0d
	inc  b                                           ; $4efc: $04
	ld   e, [hl]                                     ; $4efd: $5e
	ld   h, l                                        ; $4efe: $65
	ld   l, l                                        ; $4eff: $6d
	and  c                                           ; $4f00: $a1
	ld   a, l                                        ; $4f01: $7d
	sbc  [hl]                                        ; $4f02: $9e
	ld   b, $58                                      ; $4f03: $06 $58
	inc  b                                           ; $4f05: $04
	ld   h, c                                        ; $4f06: $61
	sub  d                                           ; $4f07: $92
	sbc  a                                           ; $4f08: $9f
	dec  c                                           ; $4f09: $0d
	nop                                              ; $4f0a: $00
	ld   a, [bc]                                     ; $4f0b: $0a
	dec  e                                           ; $4f0c: $1d
	ld   b, b                                        ; $4f0d: $40
	dec  d                                           ; $4f0e: $15
	inc  bc                                          ; $4f0f: $03
	dec  d                                           ; $4f10: $15
	ld   bc, $2803                                   ; $4f11: $01 $03 $28
	nop                                              ; $4f14: $00
	ld   bc, $9269                                   ; $4f15: $01 $69 $92
	ld   e, a                                        ; $4f18: $5f
	ld   [hl], a                                     ; $4f19: $77
	sbc  [hl]                                        ; $4f1a: $9e
	ld   [bc], a                                     ; $4f1b: $02
	and  l                                           ; $4f1c: $a5
	ld   a, h                                        ; $4f1d: $7c
	db   $dd                                         ; $4f1e: $dd
	or   d                                           ; $4f1f: $b2
	ld   a, l                                        ; $4f20: $7d
	dec  c                                           ; $4f21: $0d
	ld   a, b                                        ; $4f22: $78
	ld   e, c                                        ; $4f23: $59
	ld   a, b                                        ; $4f24: $78
	ld   e, c                                        ; $4f25: $59
	ld   e, b                                        ; $4f26: $58
	sub  b                                           ; $4f27: $90
	sbc  e                                           ; $4f28: $9b
	ld   d, d                                        ; $4f29: $52
	ld   a, b                                        ; $4f2a: $78
	db   $fc                                         ; $4f2b: $fc
	sbc  a                                           ; $4f2c: $9f
	dec  c                                           ; $4f2d: $0d
	ld   [$7d00], sp                                 ; $4f2e: $08 $00 $7d
	and  c                                           ; $4f31: $a1
	sbc  [hl]                                        ; $4f32: $9e
	sub  d                                           ; $4f33: $92
	sbc  c                                           ; $4f34: $99
	sub  d                                           ; $4f35: $92
	and  c                                           ; $4f36: $a1
	sbc  a                                           ; $4f37: $9f
	dec  c                                           ; $4f38: $0d
	nop                                              ; $4f39: $00
	ld   a, [bc]                                     ; $4f3a: $0a
	ld   bc, $508c                                   ; $4f3b: $01 $8c $50
	sbc  [hl]                                        ; $4f3e: $9e
	ld   [bc], a                                     ; $4f3f: $02
	and  l                                           ; $4f40: $a5
	adc  l                                           ; $4f41: $8d
	ld   l, l                                        ; $4f42: $6d
	ld   d, d                                        ; $4f43: $52
	ld   a, b                                        ; $4f44: $78
	ld   b, $0d                                      ; $4f45: $06 $0d
	inc  b                                           ; $4f47: $04
	ld   e, [hl]                                     ; $4f48: $5e
	ld   a, l                                        ; $4f49: $7d
	dec  c                                           ; $4f4a: $0d
	sub  [hl]                                        ; $4f4b: $96
	ei                                               ; $4f4c: $fb
	ld   d, b                                        ; $4f4d: $50
	sbc  c                                           ; $4f4e: $99
	ld   h, c                                        ; $4f4f: $61
	ld   [hl], c                                     ; $4f50: $71
	ld   l, a                                        ; $4f51: $6f
	sub  c                                           ; $4f52: $91
	ld   e, c                                        ; $4f53: $59
	sub  a                                           ; $4f54: $97
	sbc  [hl]                                        ; $4f55: $9e
	dec  c                                           ; $4f56: $0d
	ld   d, b                                        ; $4f57: $50
	and  c                                           ; $4f58: $a1
	adc  h                                           ; $4f59: $8c
	ld   h, l                                        ; $4f5a: $65
	ld   [bc], a                                     ; $4f5b: $02
	and  c                                           ; $4f5c: $a1
	ld   a, c                                        ; $4f5d: $79
	ld   l, c                                        ; $4f5e: $69
	and  c                                           ; $4f5f: $a1
	sub  [hl]                                        ; $4f60: $96
	ld   d, h                                        ; $4f61: $54
	ld   a, c                                        ; $4f62: $79
	ld   a, b                                        ; $4f63: $78
	sbc  a                                           ; $4f64: $9f
	dec  c                                           ; $4f65: $0d
	nop                                              ; $4f66: $00
	ld   a, [bc]                                     ; $4f67: $0a
	ld   bc, $7889                                   ; $4f68: $01 $89 $78
	sbc  [hl]                                        ; $4f6b: $9e
	ld   l, e                                        ; $4f6c: $6b
	ld   d, h                                        ; $4f6d: $54
	ld   d, d                                        ; $4f6e: $52
	ld   d, h                                        ; $4f6f: $54
	ld   h, c                                        ; $4f70: $61
	halt                                             ; $4f71: $76
	ld   [hl], l                                     ; $4f72: $75
	rst  $38                                         ; $4f73: $ff
	rst  $38                                         ; $4f74: $ff
	dec  c                                           ; $4f75: $0d
	nop                                              ; $4f76: $00
	ld   a, [bc]                                     ; $4f77: $0a
	dec  c                                           ; $4f78: $0d
	nop                                              ; $4f79: $00
	nop                                              ; $4f7a: $00
	rrca                                             ; $4f7b: $0f
	nop                                              ; $4f7c: $00
	ld   bc, $0a14                                   ; $4f7d: $01 $14 $0a
	ld   bc, $4c0e                                   ; $4f80: $01 $0e $4c
	add  hl, bc                                      ; $4f83: $09
	ld   e, $00                                      ; $4f84: $1e $00
	rrca                                             ; $4f86: $0f
	dec  b                                           ; $4f87: $05
	ld   [$5201], sp                                 ; $4f88: $08 $01 $52
	sub  d                                           ; $4f8b: $92
	db   $fc                                         ; $4f8c: $fc
	sbc  [hl]                                        ; $4f8d: $9e
	ld   h, a                                        ; $4f8e: $67
	adc  h                                           ; $4f8f: $8c
	and  c                                           ; $4f90: $a1
	ld   h, a                                        ; $4f91: $67
	adc  h                                           ; $4f92: $8c
	and  c                                           ; $4f93: $a1
	sbc  a                                           ; $4f94: $9f
	dec  c                                           ; $4f95: $0d
	ld   l, a                                        ; $4f96: $6f
	sub  l                                           ; $4f97: $95
	ld   h, c                                        ; $4f98: $61
	ld   [hl], c                                     ; $4f99: $71
	halt                                             ; $4f9a: $76
	ld   b, $58                                      ; $4f9b: $06 $58
	inc  b                                           ; $4f9d: $04
	ld   h, c                                        ; $4f9e: $61
	ld   a, h                                        ; $4f9f: $7c
	inc  b                                           ; $4fa0: $04
	xor  e                                           ; $4fa1: $ab
	ld   [bc], a                                     ; $4fa2: $02
	ld   a, e                                        ; $4fa3: $7b
	dec  c                                           ; $4fa4: $0d
	adc  h                                           ; $4fa5: $8c
	ld   l, a                                        ; $4fa6: $6f
	ld   e, d                                        ; $4fa7: $5a
	ld   d, [hl]                                     ; $4fa8: $56
	ld   [hl], h                                     ; $4fa9: $74
	ld   a, b                                        ; $4faa: $78
	rst  $38                                         ; $4fab: $ff
	sbc  a                                           ; $4fac: $9f
	dec  c                                           ; $4fad: $0d
	nop                                              ; $4fae: $00
	ld   a, [bc]                                     ; $4faf: $0a
	ld   bc, $508c                                   ; $4fb0: $01 $8c $50
	sbc  [hl]                                        ; $4fb3: $9e
	sub  [hl]                                        ; $4fb4: $96
	ei                                               ; $4fb5: $fb
	ld   d, b                                        ; $4fb6: $50
	sbc  c                                           ; $4fb7: $99
	ld   h, c                                        ; $4fb8: $61
	ld   [hl], c                                     ; $4fb9: $71
	ld   l, a                                        ; $4fba: $6f
	sub  c                                           ; $4fbb: $91
	ld   e, c                                        ; $4fbc: $59
	sub  a                                           ; $4fbd: $97
	dec  c                                           ; $4fbe: $0d
	ld   [bc], a                                     ; $4fbf: $02
	and  c                                           ; $4fc0: $a1
	ld   a, c                                        ; $4fc1: $79
	ld   l, c                                        ; $4fc2: $69
	and  c                                           ; $4fc3: $a1
	ld   [hl], l                                     ; $4fc4: $75
	xor  c                                           ; $4fc5: $a9
	xor  c                                           ; $4fc6: $a9
	ld   [hl], l                                     ; $4fc7: $75
	sbc  a                                           ; $4fc8: $9f
	dec  c                                           ; $4fc9: $0d
	adc  c                                           ; $4fca: $89
	ld   a, b                                        ; $4fcb: $78
	sbc  [hl]                                        ; $4fcc: $9e
	ld   l, e                                        ; $4fcd: $6b
	ld   d, h                                        ; $4fce: $54
	ld   d, d                                        ; $4fcf: $52
	ld   d, h                                        ; $4fd0: $54
	ld   h, c                                        ; $4fd1: $61
	halt                                             ; $4fd2: $76
	ld   [hl], l                                     ; $4fd3: $75
	rst  $38                                         ; $4fd4: $ff
	rst  $38                                         ; $4fd5: $ff
	dec  c                                           ; $4fd6: $0d
	nop                                              ; $4fd7: $00
	ld   a, [bc]                                     ; $4fd8: $0a
	dec  c                                           ; $4fd9: $0d
	nop                                              ; $4fda: $00
	nop                                              ; $4fdb: $00
	rrca                                             ; $4fdc: $0f
	nop                                              ; $4fdd: $00
	ld   bc, $0a14                                   ; $4fde: $01 $14 $0a
	ld   bc, $4c0e                                   ; $4fe1: $01 $0e $4c
	add  hl, bc                                      ; $4fe4: $09
	ld   e, $00                                      ; $4fe5: $1e $00
	ld   bc, $cf02                                   ; $4fe7: $01 $02 $cf
	dec  b                                           ; $4fea: $05
	ld   a, [de]                                     ; $4feb: $1a
	ld   h, e                                        ; $4fec: $63
	and  c                                           ; $4fed: $a1
	sbc  [hl]                                        ; $4fee: $9e
	ld   d, d                                        ; $4fef: $52
	sbc  c                                           ; $4ff0: $99
	ld   e, c                                        ; $4ff1: $59
	ld   a, b                                        ; $4ff2: $78
	ld   sp, hl                                      ; $4ff3: $f9
	dec  c                                           ; $4ff4: $0d
	nop                                              ; $4ff5: $00
	ld   a, [bc]                                     ; $4ff6: $0a
	inc  c                                           ; $4ff7: $0c
	add  hl, bc                                      ; $4ff8: $09
	inc  c                                           ; $4ff9: $0c
	dec  bc                                          ; $4ffa: $0b
	ld   bc, $9e78                                   ; $4ffb: $01 $78 $9e
	inc  b                                           ; $4ffe: $04
	ld   c, c                                        ; $4fff: $49
	ld   e, d                                        ; $5000: $5a
	ld   [bc], a                                     ; $5001: $02
	ld   e, d                                        ; $5002: $5a
	ld   h, c                                        ; $5003: $61
	ld   [hl], c                                     ; $5004: $71
	ld   l, l                                        ; $5005: $6d
	and  c                                           ; $5006: $a1
	ld   l, [hl]                                     ; $5007: $6e
	ld   a, [$000d]                                  ; $5008: $fa $0d $00
	ld   a, [bc]                                     ; $500b: $0a
	inc  d                                           ; $500c: $14
	ld   a, [bc]                                     ; $500d: $0a
	ld   bc, $ff01                                   ; $500e: $01 $01 $ff
	rst  $38                                         ; $5011: $ff
	rst  $38                                         ; $5012: $ff
	rst  $38                                         ; $5013: $ff
	rst  $38                                         ; $5014: $ff
	rst  $38                                         ; $5015: $ff
	rst  $38                                         ; $5016: $ff
	rst  $38                                         ; $5017: $ff
	rst  $38                                         ; $5018: $ff
	dec  c                                           ; $5019: $0d
	nop                                              ; $501a: $00
	ld   a, [bc]                                     ; $501b: $0a
	ld   c, $4d                                      ; $501c: $0e $4d
	dec  c                                           ; $501e: $0d
	dec  b                                           ; $501f: $05
	jr   nz, jr_067_5023                             ; $5020: $20 $01

	ld   h, c                                        ; $5022: $61

jr_067_5023:
	sbc  [hl]                                        ; $5023: $9e
	ld   [bc], a                                     ; $5024: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5025: $cf
	dec  b                                           ; $5026: $05
	ld   a, [de]                                     ; $5027: $1a
	ld   h, e                                        ; $5028: $63
	and  c                                           ; $5029: $a1
	ld   a, [$000d]                                  ; $502a: $fa $0d $00
	ld   a, [bc]                                     ; $502d: $0a
	add  hl, de                                      ; $502e: $19
	dec  b                                           ; $502f: $05
	inc  bc                                          ; $5030: $03
	adc  h                                           ; $5031: $8c
	ld   l, l                                        ; $5032: $6d
	ld   [hl], l                                     ; $5033: $75
	ld   h, a                                        ; $5034: $67
	ld   e, c                                        ; $5035: $59
	ld   sp, hl                                      ; $5036: $f9
	nop                                              ; $5037: $00
	nop                                              ; $5038: $00
	inc  bc                                          ; $5039: $03
	ld   d, d                                        ; $503a: $52
	ld   e, e                                        ; $503b: $5b
	ld   [hl], h                                     ; $503c: $74
	adc  h                                           ; $503d: $8c
	ld   h, a                                        ; $503e: $67
	ld   e, c                                        ; $503f: $59
	ld   sp, hl                                      ; $5040: $f9
	nop                                              ; $5041: $00
	ld   bc, $5e04                                   ; $5042: $01 $04 $5e
	inc  b                                           ; $5045: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5046: $cf
	ld   a, l                                        ; $5047: $7d
	pop  de                                          ; $5048: $d1
	or   b                                           ; $5049: $b0
	ret  nc                                          ; $504a: $d0

	push bc                                          ; $504b: $c5
	ld   l, [hl]                                     ; $504c: $6e
	ld   a, [$0200]                                  ; $504d: $fa $00 $02
	rlca                                             ; $5050: $07
	adc  l                                           ; $5051: $8d
	inc  bc                                          ; $5052: $03
	ld   [bc], a                                     ; $5053: $02
	inc  bc                                          ; $5054: $03
	ld   bc, $2000                                   ; $5055: $01 $00 $20
	nop                                              ; $5058: $00
	rlca                                             ; $5059: $07

Jump_067_505a:
	pop  hl                                          ; $505a: $e1
	inc  bc                                          ; $505b: $03
	ld   [bc], a                                     ; $505c: $02
	inc  bc                                          ; $505d: $03
	ld   bc, $2001                                   ; $505e: $01 $01 $20
	nop                                              ; $5061: $00
	rlca                                             ; $5062: $07
	ld   b, e                                        ; $5063: $43
	inc  b                                           ; $5064: $04
	ld   [bc], a                                     ; $5065: $02
	inc  bc                                          ; $5066: $03
	ld   bc, $2002                                   ; $5067: $01 $02 $20
	nop                                              ; $506a: $00
	ld   b, $b2                                      ; $506b: $06 $b2
	inc  b                                           ; $506d: $04
	rrca                                             ; $506e: $0f
	nop                                              ; $506f: $00
	ld   bc, $8c01                                   ; $5070: $01 $01 $8c
	ld   l, l                                        ; $5073: $6d
	ld   [hl], l                                     ; $5074: $75
	ld   h, a                                        ; $5075: $67
	ld   e, c                                        ; $5076: $59
	ld   sp, hl                                      ; $5077: $f9
	db   $10                                         ; $5078: $10
	ld   [bc], a                                     ; $5079: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $507a: $cf
	dec  b                                           ; $507b: $05
	ld   a, [de]                                     ; $507c: $1a
	ld   h, e                                        ; $507d: $63
	and  c                                           ; $507e: $a1
	sbc  a                                           ; $507f: $9f
	dec  c                                           ; $5080: $0d
	nop                                              ; $5081: $00
	ld   a, [bc]                                     ; $5082: $0a
	rrca                                             ; $5083: $0f
	dec  b                                           ; $5084: $05
	ld   [$6b01], sp                                 ; $5085: $08 $01 $6b
	ld   d, h                                        ; $5088: $54
	sub  d                                           ; $5089: $92
	rst  $38                                         ; $508a: $ff
	rst  $38                                         ; $508b: $ff
	sbc  a                                           ; $508c: $9f
	dec  c                                           ; $508d: $0d
	ld   h, a                                        ; $508e: $67
	adc  h                                           ; $508f: $8c
	and  c                                           ; $5090: $a1
	ld   a, b                                        ; $5091: $78
	sbc  [hl]                                        ; $5092: $9e
	inc  bc                                          ; $5093: $03
	ld   d, $71                                      ; $5094: $16 $71
	ld   a, a                                        ; $5096: $7f
	sub  a                                           ; $5097: $97
	ld   e, c                                        ; $5098: $59
	sub  a                                           ; $5099: $97
	dec  c                                           ; $509a: $0d
	ld   h, e                                        ; $509b: $63
	sbc  l                                           ; $509c: $9d
	ld   e, d                                        ; $509d: $5a
	ld   l, c                                        ; $509e: $69
	ld   [hl], h                                     ; $509f: $74
	sbc  a                                           ; $50a0: $9f
	dec  c                                           ; $50a1: $0d
	nop                                              ; $50a2: $00
	ld   a, [bc]                                     ; $50a3: $0a
	ld   bc, $7889                                   ; $50a4: $01 $89 $78
	sbc  [hl]                                        ; $50a7: $9e
	ld   l, e                                        ; $50a8: $6b
	ld   d, h                                        ; $50a9: $54
	ld   d, d                                        ; $50aa: $52
	ld   d, h                                        ; $50ab: $54
	ld   h, c                                        ; $50ac: $61
	halt                                             ; $50ad: $76
	ld   [hl], l                                     ; $50ae: $75
	rst  $38                                         ; $50af: $ff
	rst  $38                                         ; $50b0: $ff
	dec  c                                           ; $50b1: $0d
	nop                                              ; $50b2: $00
	ld   a, [bc]                                     ; $50b3: $0a
	inc  d                                           ; $50b4: $14
	ld   a, [bc]                                     ; $50b5: $0a
	ld   bc, $000d                                   ; $50b6: $01 $0d $00
	nop                                              ; $50b9: $00
	rrca                                             ; $50ba: $0f
	nop                                              ; $50bb: $00
	ld   bc, $4c0e                                   ; $50bc: $01 $0e $4c
	add  hl, bc                                      ; $50bf: $09
	ld   e, $00                                      ; $50c0: $1e $00
	rrca                                             ; $50c2: $0f
	nop                                              ; $50c3: $00
	ld   bc, $0201                                   ; $50c4: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50c7: $cf
	dec  b                                           ; $50c8: $05
	ld   a, [de]                                     ; $50c9: $1a
	ld   h, e                                        ; $50ca: $63
	and  c                                           ; $50cb: $a1
	sbc  [hl]                                        ; $50cc: $9e
	inc  bc                                          ; $50cd: $03
	ld   d, d                                        ; $50ce: $52
	ld   e, e                                        ; $50cf: $5b
	ld   [hl], h                                     ; $50d0: $74
	adc  h                                           ; $50d1: $8c
	ld   h, a                                        ; $50d2: $67
	ld   e, c                                        ; $50d3: $59
	ld   sp, hl                                      ; $50d4: $f9
	dec  c                                           ; $50d5: $0d
	nop                                              ; $50d6: $00
	ld   a, [bc]                                     ; $50d7: $0a
	rrca                                             ; $50d8: $0f
	dec  b                                           ; $50d9: $05
	ld   [$401d], sp                                 ; $50da: $08 $1d $40
	dec  d                                           ; $50dd: $15
	inc  bc                                          ; $50de: $03
	dec  d                                           ; $50df: $15
	ld   bc, $2802                                   ; $50e0: $01 $02 $28
	nop                                              ; $50e3: $00
	ld   bc, $5458                                   ; $50e4: $01 $58 $54
	sbc  [hl]                                        ; $50e7: $9e
	inc  bc                                          ; $50e8: $03
	ld   d, d                                        ; $50e9: $52
	ld   e, e                                        ; $50ea: $5b
	ld   [hl], h                                     ; $50eb: $74
	sbc  c                                           ; $50ec: $99
	sbc  [hl]                                        ; $50ed: $9e
	inc  bc                                          ; $50ee: $03
	ld   d, d                                        ; $50ef: $52
	ld   e, e                                        ; $50f0: $5b
	ld   [hl], h                                     ; $50f1: $74
	sbc  c                                           ; $50f2: $99
	sbc  a                                           ; $50f3: $9f
	dec  c                                           ; $50f4: $0d
	ld   h, a                                        ; $50f5: $67
	adc  h                                           ; $50f6: $8c
	and  c                                           ; $50f7: $a1
	ld   a, b                                        ; $50f8: $78
	sbc  [hl]                                        ; $50f9: $9e
	inc  bc                                          ; $50fa: $03
	ld   [hl], l                                     ; $50fb: $75
	inc  b                                           ; $50fc: $04
	xor  e                                           ; $50fd: $ab
	ld   e, c                                        ; $50fe: $59
	ld   e, a                                        ; $50ff: $5f
	ld   [hl], h                                     ; $5100: $74
	sbc  a                                           ; $5101: $9f
	dec  c                                           ; $5102: $0d
	nop                                              ; $5103: $00
	ld   a, [bc]                                     ; $5104: $0a
	ld   bc, $5063                                   ; $5105: $01 $63 $50
	sbc  [hl]                                        ; $5108: $9e
	inc  bc                                          ; $5109: $03
	adc  e                                           ; $510a: $8b
	ld   [bc], a                                     ; $510b: $02
	sub  [hl]                                        ; $510c: $96
	ld   e, d                                        ; $510d: $5a
	and  c                                           ; $510e: $a1
	ld   a, [hl]                                     ; $510f: $7e
	sbc  e                                           ; $5110: $9b
	rst  $38                                         ; $5111: $ff
	rst  $38                                         ; $5112: $ff
	dec  c                                           ; $5113: $0d
	nop                                              ; $5114: $00
	ld   a, [bc]                                     ; $5115: $0a
	inc  d                                           ; $5116: $14
	ld   a, [bc]                                     ; $5117: $0a
	ld   bc, $000d                                   ; $5118: $01 $0d $00
	nop                                              ; $511b: $00
	rrca                                             ; $511c: $0f
	nop                                              ; $511d: $00
	ld   bc, $4c0e                                   ; $511e: $01 $0e $4c
	add  hl, bc                                      ; $5121: $09
	ld   e, $00                                      ; $5122: $1e $00
	rrca                                             ; $5124: $0f
	nop                                              ; $5125: $00
	ld   bc, $0201                                   ; $5126: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5129: $cf
	dec  b                                           ; $512a: $05
	ld   a, [de]                                     ; $512b: $1a
	ld   h, e                                        ; $512c: $63
	and  c                                           ; $512d: $a1
	ld   a, [$040d]                                  ; $512e: $fa $0d $04
	ld   e, [hl]                                     ; $5131: $5e
	inc  b                                           ; $5132: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5133: $cf
	ld   a, l                                        ; $5134: $7d
	pop  de                                          ; $5135: $d1
	or   b                                           ; $5136: $b0
	ret  nc                                          ; $5137: $d0

	push bc                                          ; $5138: $c5
	ld   l, [hl]                                     ; $5139: $6e
	ld   a, [$000d]                                  ; $513a: $fa $0d $00
	ld   a, [bc]                                     ; $513d: $0a
	rrca                                             ; $513e: $0f
	dec  b                                           ; $513f: $05
	ld   [$401d], sp                                 ; $5140: $08 $1d $40
	dec  d                                           ; $5143: $15
	inc  bc                                          ; $5144: $03
	dec  d                                           ; $5145: $15
	ld   bc, $2803                                   ; $5146: $01 $03 $28
	nop                                              ; $5149: $00
	ld   bc, $546b                                   ; $514a: $01 $6b $54
	ld   l, e                                        ; $514d: $6b
	ld   d, h                                        ; $514e: $54
	sbc  [hl]                                        ; $514f: $9e
	ld   l, e                                        ; $5150: $6b
	ld   a, h                                        ; $5151: $7c
	inc  bc                                          ; $5152: $03
	pop  hl                                          ; $5153: $e1
	sbc  b                                           ; $5154: $98
	sbc  a                                           ; $5155: $9f
	dec  c                                           ; $5156: $0d
	and  a                                           ; $5157: $a7
	jp   nz, $9e7d                                   ; $5158: $c2 $7d $9e

	ld   h, c                                        ; $515b: $61
	and  c                                           ; $515c: $a1
	ld   a, b                                        ; $515d: $78
	ld   h, c                                        ; $515e: $61
	halt                                             ; $515f: $76
	ld   [hl], l                                     ; $5160: $75
	dec  c                                           ; $5161: $0d
	ld   e, l                                        ; $5162: $5d
	ld   h, [hl]                                     ; $5163: $66
	ld   e, a                                        ; $5164: $5f
	add  [hl]                                        ; $5165: $86
	and  c                                           ; $5166: $a1
	ld   [hl], l                                     ; $5167: $75
	sbc  a                                           ; $5168: $9f
	dec  c                                           ; $5169: $0d
	nop                                              ; $516a: $00
	ld   a, [bc]                                     ; $516b: $0a
	ld   bc, $fc96                                   ; $516c: $01 $96 $fc
	ld   h, l                                        ; $516f: $65
	sbc  [hl]                                        ; $5170: $9e
	ld   e, d                                        ; $5171: $5a
	and  c                                           ; $5172: $a1
	ld   a, [hl]                                     ; $5173: $7e
	sbc  e                                           ; $5174: $9b
	sbc  a                                           ; $5175: $9f
	dec  c                                           ; $5176: $0d
	ld   h, e                                        ; $5177: $63
	ld   d, b                                        ; $5178: $50
	sbc  [hl]                                        ; $5179: $9e
	sub  d                                           ; $517a: $92
	ld   [hl], c                                     ; $517b: $71
	ld   l, l                                        ; $517c: $6d
	sbc  c                                           ; $517d: $99
	ld   [hl], l                                     ; $517e: $75
	ld   d, l                                        ; $517f: $55
	db   $fc                                         ; $5180: $fc
	sbc  a                                           ; $5181: $9f
	dec  c                                           ; $5182: $0d
	nop                                              ; $5183: $00
	ld   a, [bc]                                     ; $5184: $0a
	inc  d                                           ; $5185: $14
	ld   a, [bc]                                     ; $5186: $0a
	ld   bc, $000d                                   ; $5187: $01 $0d $00
	nop                                              ; $518a: $00
	rrca                                             ; $518b: $0f
	nop                                              ; $518c: $00
	ld   bc, $4c0e                                   ; $518d: $01 $0e $4c
	add  hl, bc                                      ; $5190: $09
	ld   e, $00                                      ; $5191: $1e $00
	rrca                                             ; $5193: $0f
	dec  b                                           ; $5194: $05
	ld   [$5201], sp                                 ; $5195: $08 $01 $52
	sub  d                                           ; $5198: $92
	db   $fc                                         ; $5199: $fc
	sbc  [hl]                                        ; $519a: $9e
	ld   h, a                                        ; $519b: $67
	adc  h                                           ; $519c: $8c
	and  c                                           ; $519d: $a1
	sbc  [hl]                                        ; $519e: $9e
	ld   h, a                                        ; $519f: $67
	adc  h                                           ; $51a0: $8c
	and  c                                           ; $51a1: $a1
	sbc  a                                           ; $51a2: $9f
	dec  c                                           ; $51a3: $0d
	adc  h                                           ; $51a4: $8c
	ld   l, l                                        ; $51a5: $6d
	sbc  [hl]                                        ; $51a6: $9e
	sub  d                                           ; $51a7: $92
	ld   [hl], c                                     ; $51a8: $71
	ld   [hl], h                                     ; $51a9: $74
	ld   h, l                                        ; $51aa: $65
	sub  b                                           ; $51ab: $90
	ld   l, l                                        ; $51ac: $6d
	sbc  a                                           ; $51ad: $9f
	dec  c                                           ; $51ae: $0d
	nop                                              ; $51af: $00
	ld   a, [bc]                                     ; $51b0: $0a
	ld   bc, $1603                                   ; $51b1: $01 $03 $16
	ld   e, c                                        ; $51b4: $59
	sub  a                                           ; $51b5: $97
	ld   h, e                                        ; $51b6: $63
	sbc  l                                           ; $51b7: $9d
	ld   e, d                                        ; $51b8: $5a
	ld   l, c                                        ; $51b9: $69
	ld   [hl], h                                     ; $51ba: $74
	ld   h, a                                        ; $51bb: $67
	adc  h                                           ; $51bc: $8c
	and  c                                           ; $51bd: $a1
	ld   a, b                                        ; $51be: $78
	sbc  a                                           ; $51bf: $9f
	dec  c                                           ; $51c0: $0d
	adc  c                                           ; $51c1: $89
	ld   a, b                                        ; $51c2: $78
	sbc  [hl]                                        ; $51c3: $9e
	ld   l, a                                        ; $51c4: $6f
	sub  e                                           ; $51c5: $93
	ei                                               ; $51c6: $fb
	ld   h, c                                        ; $51c7: $61
	halt                                             ; $51c8: $76
	ld   [hl], l                                     ; $51c9: $75
	sbc  a                                           ; $51ca: $9f
	dec  c                                           ; $51cb: $0d
	nop                                              ; $51cc: $00
	ld   a, [bc]                                     ; $51cd: $0a
	inc  d                                           ; $51ce: $14
	ld   a, [bc]                                     ; $51cf: $0a
	ld   bc, $000d                                   ; $51d0: $01 $0d $00
	nop                                              ; $51d3: $00
	rrca                                             ; $51d4: $0f
	nop                                              ; $51d5: $00
	ld   bc, $4c0e                                   ; $51d6: $01 $0e $4c
	add  hl, bc                                      ; $51d9: $09
	ld   e, $00                                      ; $51da: $1e $00
	nop                                              ; $51dc: $00
	ld   c, $3d                                      ; $51dd: $0e $3d
	rrca                                             ; $51df: $0f
	nop                                              ; $51e0: $00
	ld   bc, $020d                                   ; $51e1: $01 $0d $02
	rlca                                             ; $51e4: $07
	ld   [bc], a                                     ; $51e5: $02
	ld   bc, $0301                                   ; $51e6: $01 $01 $03
	ld   d, b                                        ; $51e9: $50
	ld   a, [$7810]                                  ; $51ea: $fa $10 $78
	and  c                                           ; $51ed: $a1
	ld   e, c                                        ; $51ee: $59
	ld   h, a                                        ; $51ef: $67
	adc  l                                           ; $51f0: $8d
	sbc  d                                           ; $51f1: $9a
	ld   h, e                                        ; $51f2: $63
	and  c                                           ; $51f3: $a1
	dec  c                                           ; $51f4: $0d
	db   $10                                         ; $51f5: $10
	inc  bc                                          ; $51f6: $03
	ld   hl, sp+$71                                  ; $51f7: $f8 $71
	ld   [hl], h                                     ; $51f9: $74
	sbc  c                                           ; $51fa: $99
	adc  l                                           ; $51fb: $8d
	ld   l, l                                        ; $51fc: $6d
	ld   d, d                                        ; $51fd: $52
	ld   l, [hl]                                     ; $51fe: $6e
	ld   l, h                                        ; $51ff: $6c
	sbc  a                                           ; $5200: $9f
	dec  c                                           ; $5201: $0d
	db   $10                                         ; $5202: $10
	ld   [hl], a                                     ; $5203: $77
	ld   d, h                                        ; $5204: $54
	ld   h, l                                        ; $5205: $65
	sub  [hl]                                        ; $5206: $96
	ld   d, h                                        ; $5207: $54
	ld   e, c                                        ; $5208: $59
	rst  $38                                         ; $5209: $ff
	rst  $38                                         ; $520a: $ff
	ld   bc, $0d04                                   ; $520b: $01 $04 $0d
	nop                                              ; $520e: $00
	ld   a, [bc]                                     ; $520f: $0a
	add  hl, de                                      ; $5210: $19
	dec  b                                           ; $5211: $05
	ld   [bc], a                                     ; $5212: $02
	ld   [bc], a                                     ; $5213: $02
	ldh  a, [$5b]                                    ; $5214: $f0 $5b
	ld   [bc], a                                     ; $5216: $02
	ld   b, b                                        ; $5217: $40
	adc  h                                           ; $5218: $8c
	sbc  d                                           ; $5219: $9a
	ld   l, e                                        ; $521a: $6b
	ld   d, h                                        ; $521b: $54
	ld   l, [hl]                                     ; $521c: $6e
	ld   a, b                                        ; $521d: $78
	rst  $38                                         ; $521e: $ff
	rst  $38                                         ; $521f: $ff
	nop                                              ; $5220: $00
	nop                                              ; $5221: $00
	ld   [hl], a                                     ; $5222: $77
	ld   d, h                                        ; $5223: $54
	ld   h, l                                        ; $5224: $65
	ld   l, l                                        ; $5225: $6d
	and  c                                           ; $5226: $a1
	ld   l, [hl]                                     ; $5227: $6e
	sbc  e                                           ; $5228: $9b
	ld   d, h                                        ; $5229: $54
	ld   sp, hl                                      ; $522a: $f9
	nop                                              ; $522b: $00
	ld   bc, $6507                                   ; $522c: $01 $07 $65
	nop                                              ; $522f: $00
	ld   [bc], a                                     ; $5230: $02
	inc  bc                                          ; $5231: $03
	ld   bc, $2000                                   ; $5232: $01 $00 $20
	nop                                              ; $5235: $00
	rlca                                             ; $5236: $07
	jp   nz, $0200                                   ; $5237: $c2 $00 $02

	inc  bc                                          ; $523a: $03
	ld   bc, $2001                                   ; $523b: $01 $01 $20
	nop                                              ; $523e: $00
	ld   b, $8d                                      ; $523f: $06 $8d
	nop                                              ; $5241: $00
	rrca                                             ; $5242: $0f
	nop                                              ; $5243: $00
	ld   bc, $0101                                   ; $5244: $01 $01 $01
	inc  bc                                          ; $5247: $03
	ld   [bc], a                                     ; $5248: $02
	ldh  a, [$5b]                                    ; $5249: $f0 $5b
	ld   [bc], a                                     ; $524b: $02
	ld   b, b                                        ; $524c: $40
	adc  h                                           ; $524d: $8c
	sbc  d                                           ; $524e: $9a
	ld   l, l                                        ; $524f: $6d
	sub  a                                           ; $5250: $97
	and  l                                           ; $5251: $a5
	and  $6e                                         ; $5252: $e6 $6e
	ld   e, c                                        ; $5254: $59
	sub  a                                           ; $5255: $97
	dec  c                                           ; $5256: $0d
	db   $10                                         ; $5257: $10
	ld   h, c                                        ; $5258: $61
	ld   h, c                                        ; $5259: $61

Call_067_525a:
	ld   a, l                                        ; $525a: $7d
	inc  b                                           ; $525b: $04
	ld   [bc], a                                     ; $525c: $02
	inc  bc                                          ; $525d: $03
	sub  [hl]                                        ; $525e: $96
	ld   h, l                                        ; $525f: $65
	sub  [hl]                                        ; $5260: $96
	ld   d, h                                        ; $5261: $54
	rst  $38                                         ; $5262: $ff
	rst  $38                                         ; $5263: $ff
	ld   bc, $0d04                                   ; $5264: $01 $04 $0d
	nop                                              ; $5267: $00
	ld   a, [bc]                                     ; $5268: $0a
	nop                                              ; $5269: $00
	inc  e                                           ; $526a: $1c
	ld   [bc], a                                     ; $526b: $02
	nop                                              ; $526c: $00
	nop                                              ; $526d: $00
	ld   bc, $9750                                   ; $526e: $01 $50 $97
	sbc  [hl]                                        ; $5271: $9e
	ld   [$6300], sp                                 ; $5272: $08 $00 $63
	and  c                                           ; $5275: $a1
	dec  c                                           ; $5276: $0d
	ld   d, d                                        ; $5277: $52
	ld   d, d                                        ; $5278: $52
	halt                                             ; $5279: $76
	ld   h, c                                        ; $527a: $61
	sbc  e                                           ; $527b: $9b
	ld   a, c                                        ; $527c: $79
	sbc  a                                           ; $527d: $9f
	dec  c                                           ; $527e: $0d
	nop                                              ; $527f: $00
	ld   a, [bc]                                     ; $5280: $0a
	rrca                                             ; $5281: $0f
	nop                                              ; $5282: $00
	ld   bc, $5001                                   ; $5283: $01 $01 $50
	ld   [hl], c                                     ; $5286: $71
	sbc  [hl]                                        ; $5287: $9e
	ld   e, b                                        ; $5288: $58
	ld   a, l                                        ; $5289: $7d
	sub  [hl]                                        ; $528a: $96
	ld   d, h                                        ; $528b: $54
	ld   h, d                                        ; $528c: $62
	ld   h, h                                        ; $528d: $64
	ld   d, d                                        ; $528e: $52
	adc  h                                           ; $528f: $8c
	ld   h, a                                        ; $5290: $67
	sbc  a                                           ; $5291: $9f
	dec  c                                           ; $5292: $0d
	ld   h, a                                        ; $5293: $67
	adc  l                                           ; $5294: $8d
	sbc  d                                           ; $5295: $9a
	ld   h, e                                        ; $5296: $63
	and  c                                           ; $5297: $a1
	sbc  a                                           ; $5298: $9f
	dec  c                                           ; $5299: $0d
	nop                                              ; $529a: $00
	ld   a, [bc]                                     ; $529b: $0a
	ld   b, $f2                                      ; $529c: $06 $f2
	nop                                              ; $529e: $00
	rrca                                             ; $529f: $0f
	nop                                              ; $52a0: $00
	ld   bc, $6701                                   ; $52a1: $01 $01 $67
	adc  l                                           ; $52a4: $8d
	sbc  d                                           ; $52a5: $9a
	ld   h, e                                        ; $52a6: $63
	and  c                                           ; $52a7: $a1
	sbc  a                                           ; $52a8: $9f
	dec  c                                           ; $52a9: $0d
	ld   e, b                                        ; $52aa: $58
	ld   a, l                                        ; $52ab: $7d
	sub  [hl]                                        ; $52ac: $96
	ld   d, h                                        ; $52ad: $54
	ld   h, d                                        ; $52ae: $62
	ld   h, h                                        ; $52af: $64
	ld   d, d                                        ; $52b0: $52
	adc  h                                           ; $52b1: $8c
	ld   h, a                                        ; $52b2: $67
	sbc  a                                           ; $52b3: $9f
	dec  c                                           ; $52b4: $0d
	nop                                              ; $52b5: $00
	ld   a, [bc]                                     ; $52b6: $0a
	inc  e                                           ; $52b7: $1c
	ld   [bc], a                                     ; $52b8: $02
	nop                                              ; $52b9: $00
	nop                                              ; $52ba: $00
	ld   bc, $9750                                   ; $52bb: $01 $50 $97
	sbc  [hl]                                        ; $52be: $9e
	ld   [$6300], sp                                 ; $52bf: $08 $00 $63
	and  c                                           ; $52c2: $a1
	sbc  a                                           ; $52c3: $9f
	dec  c                                           ; $52c4: $0d
	ld   d, d                                        ; $52c5: $52
	ld   d, d                                        ; $52c6: $52
	halt                                             ; $52c7: $76
	ld   h, c                                        ; $52c8: $61
	sbc  e                                           ; $52c9: $9b
	ld   a, c                                        ; $52ca: $79
	sbc  a                                           ; $52cb: $9f
	dec  c                                           ; $52cc: $0d
	nop                                              ; $52cd: $00
	ld   a, [bc]                                     ; $52ce: $0a
	inc  e                                           ; $52cf: $1c
	ld   [bc], a                                     ; $52d0: $02
	nop                                              ; $52d1: $00
	nop                                              ; $52d2: $00
	ld   bc, $956f                                   ; $52d3: $01 $6f $95
	ld   [hl], c                                     ; $52d6: $71
	halt                                             ; $52d7: $76
	ld   [bc], a                                     ; $52d8: $02
	jp   nz, Jump_067_7452                           ; $52d9: $c2 $52 $74

	ld   [bc], a                                     ; $52dc: $02
	inc  [hl]                                        ; $52dd: $34
	ld   h, e                                        ; $52de: $63
	sub  a                                           ; $52df: $97
	ld   a, b                                        ; $52e0: $78
	ld   d, d                                        ; $52e1: $52
	sbc  a                                           ; $52e2: $9f
	dec  c                                           ; $52e3: $0d
	ld   d, d                                        ; $52e4: $52
	adc  h                                           ; $52e5: $8c
	inc  bc                                          ; $52e6: $03
	adc  $03                                         ; $52e7: $ce $03
	rst  $10                                         ; $52e9: $d7
	and  b                                           ; $52ea: $a0
	ld   [bc], a                                     ; $52eb: $02
	sub  l                                           ; $52ec: $95
	ld   [hl], h                                     ; $52ed: $74
	ld   [hl], h                                     ; $52ee: $74
	sbc  [hl]                                        ; $52ef: $9e
	ld   [bc], a                                     ; $52f0: $02
	and  c                                           ; $52f1: $a1
	ld   e, d                                        ; $52f2: $5a
	ld   [hl], d                                     ; $52f3: $72
	ld   d, d                                        ; $52f4: $52
	ld   l, l                                        ; $52f5: $6d
	dec  c                                           ; $52f6: $0d
	ld   [bc], a                                     ; $52f7: $02
	jp   Jump_067_505a                               ; $52f8: $c3 $5a $50


	sbc  c                                           ; $52fb: $99
	and  c                                           ; $52fc: $a1
	ld   [hl], l                                     ; $52fd: $75
	ld   h, a                                        ; $52fe: $67
	ld   a, h                                        ; $52ff: $7c
	sub  [hl]                                        ; $5300: $96
	sbc  a                                           ; $5301: $9f
	dec  c                                           ; $5302: $0d
	nop                                              ; $5303: $00
	ld   a, [bc]                                     ; $5304: $0a
	inc  e                                           ; $5305: $1c
	ld   [bc], a                                     ; $5306: $02
	inc  bc                                          ; $5307: $03
	inc  bc                                          ; $5308: $03
	ld   bc, $a178                                   ; $5309: $01 $78 $a1
	halt                                             ; $530c: $76
	ld   a, [$0310]                                  ; $530d: $fa $10 $03
	adc  a                                           ; $5310: $8f
	inc  bc                                          ; $5311: $03
	ld   e, d                                        ; $5312: $5a
	ld   e, d                                        ; $5313: $5a
	ld   d, b                                        ; $5314: $50
	sbc  c                                           ; $5315: $99
	ld   a, h                                        ; $5316: $7c
	ld   a, c                                        ; $5317: $79
	dec  c                                           ; $5318: $0d
	ld   h, a                                        ; $5319: $67
	adc  l                                           ; $531a: $8d
	sbc  d                                           ; $531b: $9a
	inc  bc                                          ; $531c: $03
	ld   e, d                                        ; $531d: $5a
	ld   e, d                                        ; $531e: $5a
	ld   a, b                                        ; $531f: $78
	ld   d, d                                        ; $5320: $52
	and  c                                           ; $5321: $a1
	ld   [hl], l                                     ; $5322: $75
	ld   h, a                                        ; $5323: $67
	ld   a, h                                        ; $5324: $7c
	sub  [hl]                                        ; $5325: $96
	ld   a, [$770d]                                  ; $5326: $fa $0d $77
	ld   d, h                                        ; $5329: $54
	dec  b                                           ; $532a: $05
	pop  de                                          ; $532b: $d1
	ld   d, d                                        ; $532c: $52
	adc  h                                           ; $532d: $8c
	ld   h, a                                        ; $532e: $67
	ld   sp, hl                                      ; $532f: $f9
	dec  c                                           ; $5330: $0d
	nop                                              ; $5331: $00
	ld   a, [bc]                                     ; $5332: $0a
	add  hl, de                                      ; $5333: $19
	dec  b                                           ; $5334: $05
	inc  bc                                          ; $5335: $03
	ld   h, l                                        ; $5336: $65
	sub  l                                           ; $5337: $95
	ld   d, h                                        ; $5338: $54
	ld   e, d                                        ; $5339: $5a
	ld   a, b                                        ; $533a: $78
	ld   d, d                                        ; $533b: $52
	ld   [hl], l                                     ; $533c: $75
	ld   h, l                                        ; $533d: $65
	sub  l                                           ; $533e: $95
	nop                                              ; $533f: $00
	nop                                              ; $5340: $00
	inc  bc                                          ; $5341: $03
	ld   e, d                                        ; $5342: $5a
	and  b                                           ; $5343: $a0
	ld   [bc], a                                     ; $5344: $02
	jr   nz, jr_067_53b9                             ; $5345: $20 $72

	inc  b                                           ; $5347: $04
	adc  l                                           ; $5348: $8d
	ld   d, [hl]                                     ; $5349: $56
	ld   a, [hl]                                     ; $534a: $7e
	ld   d, d                                        ; $534b: $52
	ld   d, d                                        ; $534c: $52
	nop                                              ; $534d: $00
	ld   bc, $8d67                                   ; $534e: $01 $67 $8d
	sbc  d                                           ; $5351: $9a
	inc  bc                                          ; $5352: $03
	ld   e, d                                        ; $5353: $5a
	ld   [hl], l                                     ; $5354: $75
	ld   h, a                                        ; $5355: $67
	ld   e, c                                        ; $5356: $59
	db   $fc                                         ; $5357: $fc
	nop                                              ; $5358: $00
	ld   [bc], a                                     ; $5359: $02
	rlca                                             ; $535a: $07
	sbc  e                                           ; $535b: $9b
	ld   bc, $0302                                   ; $535c: $01 $02 $03
	ld   bc, $2000                                   ; $535f: $01 $00 $20
	nop                                              ; $5362: $00
	rlca                                             ; $5363: $07
	ld   l, $02                                      ; $5364: $2e $02
	ld   [bc], a                                     ; $5366: $02
	inc  bc                                          ; $5367: $03
	ld   bc, $2001                                   ; $5368: $01 $01 $20
	nop                                              ; $536b: $00
	rlca                                             ; $536c: $07
	cp   h                                           ; $536d: $bc
	ld   [bc], a                                     ; $536e: $02
	ld   [bc], a                                     ; $536f: $02
	inc  bc                                          ; $5370: $03
	ld   bc, $2002                                   ; $5371: $01 $02 $20
	nop                                              ; $5374: $00
	ld   b, $6c                                      ; $5375: $06 $6c
	inc  bc                                          ; $5377: $03
	rrca                                             ; $5378: $0f
	nop                                              ; $5379: $00
	ld   bc, $6b01                                   ; $537a: $01 $01 $6b
	sbc  d                                           ; $537d: $9a
	ld   a, l                                        ; $537e: $7d
	sbc  [hl]                                        ; $537f: $9e
	ld   h, l                                        ; $5380: $65
	sub  l                                           ; $5381: $95
	ld   d, h                                        ; $5382: $54
	ld   e, d                                        ; $5383: $5a
	ld   a, b                                        ; $5384: $78
	ld   d, d                                        ; $5385: $52
	and  c                                           ; $5386: $a1
	ld   h, [hl]                                     ; $5387: $66
	sub  c                                           ; $5388: $91
	dec  c                                           ; $5389: $0d
	ld   a, b                                        ; $538a: $78
	ld   d, d                                        ; $538b: $52
	ld   [hl], l                                     ; $538c: $75
	ld   h, a                                        ; $538d: $67
	ld   e, c                                        ; $538e: $59
	ld   sp, hl                                      ; $538f: $f9
	dec  c                                           ; $5390: $0d
	nop                                              ; $5391: $00
	ld   a, [bc]                                     ; $5392: $0a
	inc  e                                           ; $5393: $1c
	ld   [bc], a                                     ; $5394: $02
	rlca                                             ; $5395: $07
	rlca                                             ; $5396: $07
	ld   bc, $9565                                   ; $5397: $01 $65 $95
	ld   d, h                                        ; $539a: $54
	ld   e, d                                        ; $539b: $5a
	ld   a, b                                        ; $539c: $78
	ld   d, d                                        ; $539d: $52
	ld   sp, hl                                      ; $539e: $f9
	dec  c                                           ; $539f: $0d
	ld   h, l                                        ; $53a0: $65
	sub  l                                           ; $53a1: $95
	ld   d, h                                        ; $53a2: $54
	ld   e, d                                        ; $53a3: $5a
	ld   a, b                                        ; $53a4: $78
	ld   d, d                                        ; $53a5: $52
	ld   [hl], l                                     ; $53a6: $75
	sbc  [hl]                                        ; $53a7: $9e
	ld   h, a                                        ; $53a8: $67
	adc  h                                           ; $53a9: $8c
	ld   h, e                                        ; $53aa: $63
	ld   a, b                                        ; $53ab: $78
	ld   d, d                                        ; $53ac: $52
	halt                                             ; $53ad: $76
	dec  c                                           ; $53ae: $0d
	ld   d, d                                        ; $53af: $52
	ld   e, a                                        ; $53b0: $5f
	adc  h                                           ; $53b1: $8c
	ld   l, c                                        ; $53b2: $69
	and  c                                           ; $53b3: $a1
	ld   a, h                                        ; $53b4: $7c
	ld   sp, hl                                      ; $53b5: $f9
	dec  c                                           ; $53b6: $0d
	nop                                              ; $53b7: $00
	ld   a, [bc]                                     ; $53b8: $0a

jr_067_53b9:
	inc  e                                           ; $53b9: $1c
	ld   [bc], a                                     ; $53ba: $02
	dec  b                                           ; $53bb: $05
	dec  b                                           ; $53bc: $05
	ld   bc, $4f50                                   ; $53bd: $01 $50 $4f
	rst  $38                                         ; $53c0: $ff
	rst  $38                                         ; $53c1: $ff
	dec  c                                           ; $53c2: $0d
	inc  bc                                          ; $53c3: $03
	or   d                                           ; $53c4: $b2
	ld   e, a                                        ; $53c5: $5f
	ld   a, b                                        ; $53c6: $78
	ld   d, d                                        ; $53c7: $52
	rst  $38                                         ; $53c8: $ff
	rst  $38                                         ; $53c9: $ff
	sbc  [hl]                                        ; $53ca: $9e
	inc  bc                                          ; $53cb: $03
	sub  b                                           ; $53cc: $90
	inc  bc                                          ; $53cd: $03
	cp   e                                           ; $53ce: $bb
	ld   h, a                                        ; $53cf: $67
	adc  l                                           ; $53d0: $8d
	sbc  d                                           ; $53d1: $9a
	halt                                             ; $53d2: $76
	dec  c                                           ; $53d3: $0d
	ld   d, b                                        ; $53d4: $50
	sbc  e                                           ; $53d5: $9b
	ld   d, h                                        ; $53d6: $54
	sub  b                                           ; $53d7: $90
	ld   a, h                                        ; $53d8: $7c
	ld   e, d                                        ; $53d9: $5a
	rst  $38                                         ; $53da: $ff
	rst  $38                                         ; $53db: $ff
	dec  c                                           ; $53dc: $0d
	nop                                              ; $53dd: $00
	ld   a, [bc]                                     ; $53de: $0a
	rrca                                             ; $53df: $0f
	nop                                              ; $53e0: $00
	ld   bc, $0101                                   ; $53e1: $01 $01 $01
	inc  bc                                          ; $53e4: $03
	ld   a, b                                        ; $53e5: $78
	and  c                                           ; $53e6: $a1
	ld   e, c                                        ; $53e7: $59
	sub  d                                           ; $53e8: $92
	ld   a, [hl]                                     ; $53e9: $7e
	ld   l, e                                        ; $53ea: $6b
	ld   d, h                                        ; $53eb: $54
	ld   l, [hl]                                     ; $53ec: $6e
	ld   a, b                                        ; $53ed: $78
	sbc  a                                           ; $53ee: $9f
	dec  c                                           ; $53ef: $0d
	db   $10                                         ; $53f0: $10
	ld   h, c                                        ; $53f1: $61
	ld   h, c                                        ; $53f2: $61
	ld   a, l                                        ; $53f3: $7d
	inc  bc                                          ; $53f4: $03
	push de                                          ; $53f5: $d5
	ld   h, b                                        ; $53f6: $60
	sub  [hl]                                        ; $53f7: $96
	ld   d, h                                        ; $53f8: $54
	ld   bc, $0d04                                   ; $53f9: $01 $04 $0d
	ld   [hl], l                                     ; $53fc: $75
	ld   a, l                                        ; $53fd: $7d
	sbc  [hl]                                        ; $53fe: $9e
	inc  bc                                          ; $53ff: $03
	add  e                                           ; $5400: $83
	dec  b                                           ; $5401: $05
	dec  c                                           ; $5402: $0d
	ld   h, l                                        ; $5403: $65
	adc  h                                           ; $5404: $8c
	ld   h, a                                        ; $5405: $67
	sbc  a                                           ; $5406: $9f
	dec  c                                           ; $5407: $0d
	nop                                              ; $5408: $00
	ld   a, [bc]                                     ; $5409: $0a
	nop                                              ; $540a: $00
	rrca                                             ; $540b: $0f
	nop                                              ; $540c: $00
	ld   bc, $0301                                   ; $540d: $01 $01 $03
	ld   e, d                                        ; $5410: $5a
	and  b                                           ; $5411: $a0
	ld   [bc], a                                     ; $5412: $02
	jr   nz, jr_067_5487                             ; $5413: $20 $72

	inc  b                                           ; $5415: $04
	adc  l                                           ; $5416: $8d
	ld   d, [hl]                                     ; $5417: $56
	ld   a, [hl]                                     ; $5418: $7e
	ld   d, d                                        ; $5419: $52
	ld   d, d                                        ; $541a: $52
	ld   h, [hl]                                     ; $541b: $66
	sub  c                                           ; $541c: $91
	dec  c                                           ; $541d: $0d
	ld   a, b                                        ; $541e: $78
	ld   d, d                                        ; $541f: $52
	ld   [hl], l                                     ; $5420: $75
	ld   h, a                                        ; $5421: $67
	ld   e, c                                        ; $5422: $59
	sbc  a                                           ; $5423: $9f
	ld   l, e                                        ; $5424: $6b
	ld   h, l                                        ; $5425: $65
	ld   [hl], h                                     ; $5426: $74
	sbc  [hl]                                        ; $5427: $9e
	ld   b, $25                                      ; $5428: $06 $25
	inc  b                                           ; $542a: $04
	rst  ToBoot                                         ; $542b: $c7
	ld   h, a                                        ; $542c: $67
	sbc  c                                           ; $542d: $99
	dec  c                                           ; $542e: $0d
	and  c                                           ; $542f: $a1
	ld   [hl], l                                     ; $5430: $75
	ld   h, a                                        ; $5431: $67
	sub  [hl]                                        ; $5432: $96
	sbc  a                                           ; $5433: $9f
	ld   h, a                                        ; $5434: $67
	adc  l                                           ; $5435: $8d
	sbc  d                                           ; $5436: $9a
	inc  bc                                          ; $5437: $03
	ld   e, d                                        ; $5438: $5a
	ld   [hl], c                                     ; $5439: $71
	ld   [hl], h                                     ; $543a: $74
	sbc  a                                           ; $543b: $9f
	dec  c                                           ; $543c: $0d
	nop                                              ; $543d: $00
	ld   a, [bc]                                     ; $543e: $0a
	inc  e                                           ; $543f: $1c
	ld   [bc], a                                     ; $5440: $02
	ld   bc, $1d01                                   ; $5441: $01 $01 $1d
	ld   b, b                                        ; $5444: $40
	ld   [de], a                                     ; $5445: $12
	inc  bc                                          ; $5446: $03
	ld   [de], a                                     ; $5447: $12
	ld   bc, $2803                                   ; $5448: $01 $03 $28
	nop                                              ; $544b: $00
	ld   bc, $546b                                   ; $544c: $01 $6b $54
	ld   [hl], l                                     ; $544f: $75
	ld   h, a                                        ; $5450: $67
	sbc  l                                           ; $5451: $9d
	ld   a, [$520d]                                  ; $5452: $fa $0d $52
	ld   d, d                                        ; $5455: $52
	ld   [bc], a                                     ; $5456: $02
	ld   h, l                                        ; $5457: $65
	ld   d, [hl]                                     ; $5458: $56
	ld   [hl], l                                     ; $5459: $75
	ld   h, a                                        ; $545a: $67
	sbc  l                                           ; $545b: $9d
	ld   a, e                                        ; $545c: $7b
	sbc  a                                           ; $545d: $9f
	dec  c                                           ; $545e: $0d
	ld   h, e                                        ; $545f: $63
	ld   [hl], c                                     ; $5460: $71

Jump_067_5461:
	ld   l, e                                        ; $5461: $6b
	ld   e, l                                        ; $5462: $5d
	inc  b                                           ; $5463: $04
	adc  l                                           ; $5464: $8d
	ld   d, d                                        ; $5465: $52
	adc  h                                           ; $5466: $8c
	ld   h, l                                        ; $5467: $65
	sub  l                                           ; $5468: $95
	ld   d, h                                        ; $5469: $54
	sbc  a                                           ; $546a: $9f
	dec  c                                           ; $546b: $0d
	nop                                              ; $546c: $00
	ld   a, [bc]                                     ; $546d: $0a
	ld   bc, $0008                                   ; $546e: $01 $08 $00
	ld   h, e                                        ; $5471: $63
	and  c                                           ; $5472: $a1
	sbc  a                                           ; $5473: $9f
	dec  c                                           ; $5474: $0d
	ld   [hl], a                                     ; $5475: $77
	ld   d, h                                        ; $5476: $54
	sub  b                                           ; $5477: $90
	sbc  [hl]                                        ; $5478: $9e
	ld   d, b                                        ; $5479: $50
	sbc  b                                           ; $547a: $98
	ld   e, d                                        ; $547b: $5a
	halt                                             ; $547c: $76
	ld   d, h                                        ; $547d: $54
	sbc  a                                           ; $547e: $9f
	dec  c                                           ; $547f: $0d
	dec  b                                           ; $5480: $05
	jr   z, jr_067_54df                              ; $5481: $28 $5c

	adc  h                                           ; $5483: $8c
	ld   h, a                                        ; $5484: $67
	ld   a, h                                        ; $5485: $7c
	ld   [hl], l                                     ; $5486: $75

jr_067_5487:
	sbc  [hl]                                        ; $5487: $9e
	inc  bc                                          ; $5488: $03
	add  e                                           ; $5489: $83
	dec  b                                           ; $548a: $05
	dec  c                                           ; $548b: $0d
	sbc  a                                           ; $548c: $9f
	dec  c                                           ; $548d: $0d
	nop                                              ; $548e: $00
	ld   a, [bc]                                     ; $548f: $0a
	dec  c                                           ; $5490: $0d
	nop                                              ; $5491: $00
	nop                                              ; $5492: $00
	rrca                                             ; $5493: $0f
	nop                                              ; $5494: $00
	ld   bc, $1e09                                   ; $5495: $01 $09 $1e
	nop                                              ; $5498: $00
	rrca                                             ; $5499: $0f
	nop                                              ; $549a: $00
	ld   bc, $0101                                   ; $549b: $01 $01 $01
	inc  bc                                          ; $549e: $03
	ld   h, a                                        ; $549f: $67
	adc  l                                           ; $54a0: $8d
	sbc  d                                           ; $54a1: $9a
	inc  bc                                          ; $54a2: $03
	ld   e, d                                        ; $54a3: $5a
	ld   sp, hl                                      ; $54a4: $f9
	dec  c                                           ; $54a5: $0d
	db   $10                                         ; $54a6: $10
	ld   a, b                                        ; $54a7: $78
	and  c                                           ; $54a8: $a1
	ld   l, [hl]                                     ; $54a9: $6e
	ld   e, c                                        ; $54aa: $59
	sbc  [hl]                                        ; $54ab: $9e
	inc  bc                                          ; $54ac: $03
	ld   e, d                                        ; $54ad: $5a
	ld   a, h                                        ; $54ae: $7c
	inc  b                                           ; $54af: $04
	rst  ToBoot                                         ; $54b0: $c7
	inc  bc                                          ; $54b1: $03
	ld   c, a                                        ; $54b2: $4f
	halt                                             ; $54b3: $76
	ld   h, l                                        ; $54b4: $65
	ld   [hl], h                                     ; $54b5: $74
	ld   a, l                                        ; $54b6: $7d
	dec  c                                           ; $54b7: $0d
	db   $10                                         ; $54b8: $10
	and  l                                           ; $54b9: $a5
	rst  JumpTable                                         ; $54ba: $df
	and  l                                           ; $54bb: $a5
	jp   nz, $786e                                   ; $54bc: $c2 $6e $78

	db   $fc                                         ; $54bf: $fc
	ld   bc, $0d04                                   ; $54c0: $01 $04 $0d
	nop                                              ; $54c3: $00
	ld   a, [bc]                                     ; $54c4: $0a
	inc  e                                           ; $54c5: $1c
	ld   [bc], a                                     ; $54c6: $02
	rlca                                             ; $54c7: $07
	rlca                                             ; $54c8: $07
	ld   bc, $a178                                   ; $54c9: $01 $78 $a1
	ld   [hl], l                                     ; $54cc: $75
	ld   h, a                                        ; $54cd: $67
	ld   e, c                                        ; $54ce: $59
	sbc  [hl]                                        ; $54cf: $9e
	ld   l, e                                        ; $54d0: $6b
	ld   a, h                                        ; $54d1: $7c
	inc  b                                           ; $54d2: $04
	and  b                                           ; $54d3: $a0
	inc  b                                           ; $54d4: $04
	ret  nz                                          ; $54d5: $c0

	ld   l, e                                        ; $54d6: $6b
	ld   d, h                                        ; $54d7: $54
	ld   a, b                                        ; $54d8: $78
	dec  c                                           ; $54d9: $0d
	ld   [bc], a                                     ; $54da: $02
	ld   [hl], d                                     ; $54db: $72
	ld   a, l                                        ; $54dc: $7d
	ld   sp, hl                                      ; $54dd: $f9
	dec  c                                           ; $54de: $0d

jr_067_54df:
	nop                                              ; $54df: $00
	ld   a, [bc]                                     ; $54e0: $0a
	ld   bc, $0008                                   ; $54e1: $01 $08 $00
	ld   h, e                                        ; $54e4: $63
	and  c                                           ; $54e5: $a1
	ld   a, l                                        ; $54e6: $7d
	sbc  [hl]                                        ; $54e7: $9e
	dec  c                                           ; $54e8: $0d
	ld   h, a                                        ; $54e9: $67
	adc  l                                           ; $54ea: $8d
	sbc  d                                           ; $54eb: $9a
	inc  bc                                          ; $54ec: $03
	ld   e, d                                        ; $54ed: $5a
	ld   a, h                                        ; $54ee: $7c
	inc  b                                           ; $54ef: $04
	rst  ToBoot                                         ; $54f0: $c7
	inc  bc                                          ; $54f1: $03
	ld   c, a                                        ; $54f2: $4f
	ld   e, d                                        ; $54f3: $5a
	ld   [bc], a                                     ; $54f4: $02
	and  c                                           ; $54f5: $a1
	ld   a, c                                        ; $54f6: $79
	inc  b                                           ; $54f7: $04
	ld   b, l                                        ; $54f8: $45
	sub  a                                           ; $54f9: $97
	ld   a, b                                        ; $54fa: $78
	ld   d, d                                        ; $54fb: $52
	dec  c                                           ; $54fc: $0d
	ld   a, h                                        ; $54fd: $7c
	ld   [hl], l                                     ; $54fe: $75
	ld   h, a                                        ; $54ff: $67
	sbc  l                                           ; $5500: $9d
	ld   a, e                                        ; $5501: $7b
	sbc  a                                           ; $5502: $9f
	dec  c                                           ; $5503: $0d
	nop                                              ; $5504: $00
	ld   a, [bc]                                     ; $5505: $0a
	inc  e                                           ; $5506: $1c
	ld   [bc], a                                     ; $5507: $02
	ld   [bc], a                                     ; $5508: $02
	ld   [bc], a                                     ; $5509: $02
	dec  e                                           ; $550a: $1d
	ld   b, b                                        ; $550b: $40
	ld   [de], a                                     ; $550c: $12
	inc  bc                                          ; $550d: $03
	ld   [de], a                                     ; $550e: $12
	ld   bc, $2903                                   ; $550f: $01 $03 $29
	nop                                              ; $5512: $00
	ld   bc, $5490                                   ; $5513: $01 $90 $54
	ld   d, d                                        ; $5516: $52
	ld   d, d                                        ; $5517: $52
	ld   [hl], l                                     ; $5518: $75
	ld   h, a                                        ; $5519: $67
	sbc  l                                           ; $551a: $9d
	sbc  a                                           ; $551b: $9f
	dec  c                                           ; $551c: $0d
	nop                                              ; $551d: $00
	dec  b                                           ; $551e: $05
	ld   b, b                                        ; $551f: $40
	ld   c, c                                        ; $5520: $49
	ld   [bc], a                                     ; $5521: $02
	nop                                              ; $5522: $00
	nop                                              ; $5523: $00
	ld   bc, $9166                                   ; $5524: $01 $66 $91
	adc  h                                           ; $5527: $8c
	ld   [hl], l                                     ; $5528: $75
	ld   h, a                                        ; $5529: $67
	ld   e, c                                        ; $552a: $59
	sub  a                                           ; $552b: $97
	sbc  [hl]                                        ; $552c: $9e
	ld   [hl], a                                     ; $552d: $77
	ld   h, c                                        ; $552e: $61
	ld   e, c                                        ; $552f: $59
	add  [hl]                                        ; $5530: $86
	dec  c                                           ; $5531: $0d
	nop                                              ; $5532: $00
	dec  b                                           ; $5533: $05
	ld   b, b                                        ; $5534: $40
	ld   c, a                                        ; $5535: $4f
	ld   bc, $0002                                   ; $5536: $01 $02 $00
	ld   bc, $7f02                                   ; $5539: $01 $02 $7f
	ld   [hl], c                                     ; $553c: $71
	ld   [hl], h                                     ; $553d: $74
	ld   [bc], a                                     ; $553e: $02
	inc  [hl]                                        ; $553f: $34
	ld   h, e                                        ; $5540: $63
	ld   d, d                                        ; $5541: $52
	adc  h                                           ; $5542: $8c
	ld   h, l                                        ; $5543: $65
	sbc  a                                           ; $5544: $9f
	dec  c                                           ; $5545: $0d
	nop                                              ; $5546: $00
	ld   a, [bc]                                     ; $5547: $0a
	nop                                              ; $5548: $00
	inc  e                                           ; $5549: $1c
	ld   [bc], a                                     ; $554a: $02
	ld   [bc], a                                     ; $554b: $02
	ld   [bc], a                                     ; $554c: $02
	ld   bc, $8203                                   ; $554d: $01 $03 $82
	ld   e, d                                        ; $5550: $5a
	ld   [bc], a                                     ; $5551: $02
	jp   nz, Jump_067_7452                           ; $5552: $c2 $52 $74

	ld   d, d                                        ; $5555: $52
	sbc  c                                           ; $5556: $99
	ld   a, h                                        ; $5557: $7c
	ld   [hl], l                                     ; $5558: $75
	ld   h, a                                        ; $5559: $67
	ld   e, c                                        ; $555a: $59
	sub  a                                           ; $555b: $97
	dec  c                                           ; $555c: $0d
	ld   l, a                                        ; $555d: $6f
	sub  c                                           ; $555e: $91
	and  c                                           ; $555f: $a1
	halt                                             ; $5560: $76
	inc  bc                                          ; $5561: $03
	call c, Call_067_7856                            ; $5562: $dc $56 $78
	ld   h, e                                        ; $5565: $63
	ld   d, d                                        ; $5566: $52
	ld   a, b                                        ; $5567: $78
	sbc  a                                           ; $5568: $9f
	dec  c                                           ; $5569: $0d
	nop                                              ; $556a: $00
	ld   a, [bc]                                     ; $556b: $0a
	dec  e                                           ; $556c: $1d
	ld   b, b                                        ; $556d: $40
	ld   [de], a                                     ; $556e: $12
	inc  bc                                          ; $556f: $03
	ld   [de], a                                     ; $5570: $12
	ld   bc, $2902                                   ; $5571: $01 $02 $29
	nop                                              ; $5574: $00
	ld   bc, $5490                                   ; $5575: $01 $90 $54
	ld   d, d                                        ; $5578: $52
	ld   d, d                                        ; $5579: $52

jr_067_557a:
	ld   [hl], l                                     ; $557a: $75
	ld   h, a                                        ; $557b: $67
	sbc  l                                           ; $557c: $9d
	sbc  a                                           ; $557d: $9f
	dec  c                                           ; $557e: $0d
	nop                                              ; $557f: $00
	dec  b                                           ; $5580: $05
	ld   b, b                                        ; $5581: $40
	ld   c, c                                        ; $5582: $49
	ld   [bc], a                                     ; $5583: $02
	nop                                              ; $5584: $00
	nop                                              ; $5585: $00
	ld   bc, $0008                                   ; $5586: $01 $08 $00
	ld   h, e                                        ; $5589: $63
	and  c                                           ; $558a: $a1
	ld   a, c                                        ; $558b: $79
	ld   a, l                                        ; $558c: $7d
	dec  c                                           ; $558d: $0d
	nop                                              ; $558e: $00
	dec  b                                           ; $558f: $05
	ld   b, b                                        ; $5590: $40
	ld   c, a                                        ; $5591: $4f
	ld   bc, $0002                                   ; $5592: $01 $02 $00
	ld   bc, wIsDoubleSpeed                                   ; $5595: $01 $02 $c2
	ld   e, e                                        ; $5598: $5b
	adc  h                                           ; $5599: $8c
	ld   l, c                                        ; $559a: $69
	and  c                                           ; $559b: $a1
	sbc  a                                           ; $559c: $9f
	dec  c                                           ; $559d: $0d
	nop                                              ; $559e: $00
	ld   a, [bc]                                     ; $559f: $0a
	nop                                              ; $55a0: $00
	nop                                              ; $55a1: $00
	rrca                                             ; $55a2: $0f
	nop                                              ; $55a3: $00
	ld   bc, $010d                                   ; $55a4: $01 $0d $01
	nop                                              ; $55a7: $00
	ld   [bc], a                                     ; $55a8: $02
	ld   bc, $7d58                                   ; $55a9: $01 $58 $7d
	sub  [hl]                                        ; $55ac: $96
	ld   d, h                                        ; $55ad: $54
	ld   h, d                                        ; $55ae: $62
	ld   h, h                                        ; $55af: $64
	ld   d, d                                        ; $55b0: $52
	adc  h                                           ; $55b1: $8c
	ld   h, a                                        ; $55b2: $67
	sbc  a                                           ; $55b3: $9f
	dec  c                                           ; $55b4: $0d
	nop                                              ; $55b5: $00
	ld   a, [bc]                                     ; $55b6: $0a
	rrca                                             ; $55b7: $0f
	ld   bc, $0100                                   ; $55b8: $01 $00 $01
	ld   [$6300], sp                                 ; $55bb: $08 $00 $63
	and  c                                           ; $55be: $a1
	sbc  a                                           ; $55bf: $9f
	dec  c                                           ; $55c0: $0d
	ld   e, b                                        ; $55c1: $58
	ld   a, l                                        ; $55c2: $7d
	sub  [hl]                                        ; $55c3: $96
	ld   d, h                                        ; $55c4: $54
	ld   h, d                                        ; $55c5: $62
	ld   h, h                                        ; $55c6: $64
	ld   d, d                                        ; $55c7: $52
	adc  h                                           ; $55c8: $8c
	ld   h, a                                        ; $55c9: $67
	sbc  a                                           ; $55ca: $9f
	dec  c                                           ; $55cb: $0d
	nop                                              ; $55cc: $00
	ld   a, [bc]                                     ; $55cd: $0a
	rrca                                             ; $55ce: $0f
	nop                                              ; $55cf: $00
	ld   bc, $0101                                   ; $55d0: $01 $01 $01
	inc  bc                                          ; $55d3: $03
	inc  b                                           ; $55d4: $04
	ld   c, c                                        ; $55d5: $49
	ld   a, h                                        ; $55d6: $7c
	dec  b                                           ; $55d7: $05
	jr   nz, jr_067_557a                             ; $55d8: $20 $a0

	ld   h, l                                        ; $55da: $65
	sub  [hl]                                        ; $55db: $96
	ld   d, h                                        ; $55dc: $54
	ld   e, c                                        ; $55dd: $59
	ld   a, b                                        ; $55de: $78
	rst  $38                                         ; $55df: $ff
	rst  $38                                         ; $55e0: $ff
	ld   bc, $0d04                                   ; $55e1: $01 $04 $0d
	nop                                              ; $55e4: $00
	ld   a, [bc]                                     ; $55e5: $0a
	add  hl, de                                      ; $55e6: $19
	dec  b                                           ; $55e7: $05
	inc  bc                                          ; $55e8: $03
	inc  bc                                          ; $55e9: $03
	db   $fd                                         ; $55ea: $fd
	ld   [bc], a                                     ; $55eb: $02
	adc  h                                           ; $55ec: $8c
	ld   a, c                                        ; $55ed: $79
	ld   [hl], d                                     ; $55ee: $72
	ld   d, d                                        ; $55ef: $52
	ld   [hl], h                                     ; $55f0: $74
	ld   [bc], a                                     ; $55f1: $02
	jp   nz, $005d                                   ; $55f2: $c2 $5d $00

	nop                                              ; $55f5: $00
	ld   e, b                                        ; $55f6: $58
	ld   h, c                                        ; $55f7: $61
	ld   [hl], e                                     ; $55f8: $73
	ld   e, c                                        ; $55f9: $59
	ld   d, d                                        ; $55fa: $52
	ld   a, c                                        ; $55fb: $79
	ld   [hl], d                                     ; $55fc: $72
	ld   d, d                                        ; $55fd: $52
	ld   [hl], h                                     ; $55fe: $74
	ld   [bc], a                                     ; $55ff: $02
	jp   nz, $005d                                   ; $5600: $c2 $5d $00

	ld   bc, $d704                                   ; $5603: $01 $04 $d7
	inc  b                                           ; $5606: $04
	ld   hl, $7279                                   ; $5607: $21 $79 $72
	ld   d, d                                        ; $560a: $52
	ld   [hl], h                                     ; $560b: $74
	ld   [bc], a                                     ; $560c: $02
	jp   nz, $005d                                   ; $560d: $c2 $5d $00

	ld   [bc], a                                     ; $5610: $02
	rlca                                             ; $5611: $07
	or   d                                           ; $5612: $b2
	nop                                              ; $5613: $00
	ld   [bc], a                                     ; $5614: $02
	inc  bc                                          ; $5615: $03
	ld   bc, $2000                                   ; $5616: $01 $00 $20
	nop                                              ; $5619: $00
	rlca                                             ; $561a: $07
	rra                                              ; $561b: $1f
	ld   [bc], a                                     ; $561c: $02
	ld   [bc], a                                     ; $561d: $02
	inc  bc                                          ; $561e: $03
	ld   bc, $2001                                   ; $561f: $01 $01 $20
	nop                                              ; $5622: $00
	rlca                                             ; $5623: $07
	ld   h, [hl]                                     ; $5624: $66
	inc  bc                                          ; $5625: $03
	ld   [bc], a                                     ; $5626: $02
	inc  bc                                          ; $5627: $03
	ld   bc, $2002                                   ; $5628: $01 $02 $20
	nop                                              ; $562b: $00
	ld   b, $8d                                      ; $562c: $06 $8d
	nop                                              ; $562e: $00
	rrca                                             ; $562f: $0f
	ld   bc, $0100                                   ; $5630: $01 $00 $01
	ld   [bc], a                                     ; $5633: $02
	and  l                                           ; $5634: $a5
	inc  b                                           ; $5635: $04
	xor  d                                           ; $5636: $aa
	sub  b                                           ; $5637: $90
	ld   [bc], a                                     ; $5638: $02
	jr   nz, jr_067_563f                             ; $5639: $20 $04

	xor  d                                           ; $563b: $aa
	sbc  [hl]                                        ; $563c: $9e
	dec  c                                           ; $563d: $0d
	ld   e, d                                        ; $563e: $5a

jr_067_563f:
	and  c                                           ; $563f: $a1
	ld   a, [hl]                                     ; $5640: $7e
	sbc  b                                           ; $5641: $98
	adc  h                                           ; $5642: $8c
	ld   h, l                                        ; $5643: $65
	sub  l                                           ; $5644: $95
	ld   d, h                                        ; $5645: $54
	ld   a, e                                        ; $5646: $7b
	sbc  a                                           ; $5647: $9f
	dec  c                                           ; $5648: $0d
	nop                                              ; $5649: $00
	ld   a, [bc]                                     ; $564a: $0a
	dec  c                                           ; $564b: $0d
	nop                                              ; $564c: $00
	nop                                              ; $564d: $00
	rrca                                             ; $564e: $0f
	nop                                              ; $564f: $00
	ld   bc, $1e09                                   ; $5650: $01 $09 $1e
	nop                                              ; $5653: $00
	rrca                                             ; $5654: $0f
	nop                                              ; $5655: $00
	ld   bc, $6301                                   ; $5656: $01 $01 $63
	ld   e, l                                        ; $5659: $5d
	sub  a                                           ; $565a: $97
	ld   h, e                                        ; $565b: $63
	and  c                                           ; $565c: $a1
	ld   [hl], h                                     ; $565d: $74
	sbc  [hl]                                        ; $565e: $9e
	dec  c                                           ; $565f: $0d
	ld   [bc], a                                     ; $5660: $02
	cp   h                                           ; $5661: $bc
	and  b                                           ; $5662: $a0
	inc  bc                                          ; $5663: $03
	xor  c                                           ; $5664: $a9
	ld   e, c                                        ; $5665: $59
	sub  a                                           ; $5666: $97
	ld   [bc], a                                     ; $5667: $02
	and  d                                           ; $5668: $a2
	and  c                                           ; $5669: $a1
	ld   l, [hl]                                     ; $566a: $6e
	and  c                                           ; $566b: $a1
	ld   [hl], l                                     ; $566c: $75
	ld   h, a                                        ; $566d: $67
	ld   e, c                                        ; $566e: $59
	ld   sp, hl                                      ; $566f: $f9
	dec  c                                           ; $5670: $0d
	nop                                              ; $5671: $00
	ld   a, [bc]                                     ; $5672: $0a
	rrca                                             ; $5673: $0f
	ld   bc, $0100                                   ; $5674: $01 $00 $01
	inc  b                                           ; $5677: $04
	ld   l, $75                                      ; $5678: $2e $75
	ld   h, a                                        ; $567a: $67
	sub  [hl]                                        ; $567b: $96
	sbc  a                                           ; $567c: $9f
	dec  c                                           ; $567d: $0d
	dec  b                                           ; $567e: $05
	inc  d                                           ; $567f: $14
	inc  b                                           ; $5680: $04
	sbc  l                                           ; $5681: $9d
	ld   a, l                                        ; $5682: $7d
	inc  b                                           ; $5683: $04
	sbc  d                                           ; $5684: $9a
	inc  bc                                          ; $5685: $03
	adc  c                                           ; $5686: $89
	ld   [bc], a                                     ; $5687: $02
	jr   nz, jr_067_568e                             ; $5688: $20 $04

	inc  l                                           ; $568a: $2c
	dec  b                                           ; $568b: $05
	inc  d                                           ; $568c: $14
	ld   [hl], l                                     ; $568d: $75

jr_067_568e:
	ld   h, a                                        ; $568e: $67
	sbc  a                                           ; $568f: $9f
	dec  c                                           ; $5690: $0d
	nop                                              ; $5691: $00
	ld   a, [bc]                                     ; $5692: $0a
	add  hl, de                                      ; $5693: $19
	dec  b                                           ; $5694: $05
	inc  bc                                          ; $5695: $03
	inc  b                                           ; $5696: $04
	ret                                              ; $5697: $c9


	inc  b                                           ; $5698: $04
	adc  a                                           ; $5699: $8f
	inc  b                                           ; $569a: $04
	ld   d, d                                        ; $569b: $52
	dec  b                                           ; $569c: $05
	db   $ec                                         ; $569d: $ec
	ld   a, h                                        ; $569e: $7c
	ld   [hl], l                                     ; $569f: $75
	ld   h, a                                        ; $56a0: $67
	ld   a, e                                        ; $56a1: $7b
	nop                                              ; $56a2: $00
	nop                                              ; $56a3: $00
	inc  b                                           ; $56a4: $04
	sbc  d                                           ; $56a5: $9a
	inc  bc                                          ; $56a6: $03
	adc  c                                           ; $56a7: $89
	ld   [bc], a                                     ; $56a8: $02
	jr   nz, jr_067_56af                             ; $56a9: $20 $04

	inc  l                                           ; $56ab: $2c
	ld   h, e                                        ; $56ac: $63
	and  c                                           ; $56ad: $a1
	ld   a, h                                        ; $56ae: $7c

jr_067_56af:
	ld   [hl], l                                     ; $56af: $75
	ld   h, a                                        ; $56b0: $67
	ld   a, e                                        ; $56b1: $7b
	nop                                              ; $56b2: $00
	ld   bc, $aa03                                   ; $56b3: $01 $03 $aa
	inc  b                                           ; $56b6: $04
	sub  c                                           ; $56b7: $91
	inc  bc                                          ; $56b8: $03
	add  h                                           ; $56b9: $84
	inc  bc                                          ; $56ba: $03
	xor  h                                           ; $56bb: $ac
	ld   a, h                                        ; $56bc: $7c
	ld   [hl], l                                     ; $56bd: $75
	ld   h, a                                        ; $56be: $67
	ld   a, e                                        ; $56bf: $7b
	nop                                              ; $56c0: $00
	ld   [bc], a                                     ; $56c1: $02
	rlca                                             ; $56c2: $07
	ld   a, $01                                      ; $56c3: $3e $01
	ld   [bc], a                                     ; $56c5: $02
	inc  bc                                          ; $56c6: $03
	ld   bc, $2000                                   ; $56c7: $01 $00 $20
	nop                                              ; $56ca: $00
	rlca                                             ; $56cb: $07
	ld   [hl], c                                     ; $56cc: $71
	ld   bc, $0302                                   ; $56cd: $01 $02 $03
	ld   bc, $2001                                   ; $56d0: $01 $01 $20
	nop                                              ; $56d3: $00
	rlca                                             ; $56d4: $07
	jp   $0201                                       ; $56d5: $c3 $01 $02


	inc  bc                                          ; $56d8: $03
	ld   bc, $2002                                   ; $56d9: $01 $02 $20
	nop                                              ; $56dc: $00
	ld   b, $f8                                      ; $56dd: $06 $f8
	ld   bc, $000f                                   ; $56df: $01 $0f $00
	ld   bc, $0401                                   ; $56e2: $01 $01 $04
	ret                                              ; $56e5: $c9


	inc  b                                           ; $56e6: $04
	adc  a                                           ; $56e7: $8f
	inc  b                                           ; $56e8: $04
	ld   d, d                                        ; $56e9: $52
	dec  b                                           ; $56ea: $05
	db   $ec                                         ; $56eb: $ec
	ld   a, h                                        ; $56ec: $7c
	ld   [hl], l                                     ; $56ed: $75
	ld   h, a                                        ; $56ee: $67
	ld   a, e                                        ; $56ef: $7b
	sbc  a                                           ; $56f0: $9f
	dec  c                                           ; $56f1: $0d
	nop                                              ; $56f2: $00
	ld   a, [bc]                                     ; $56f3: $0a
	rrca                                             ; $56f4: $0f
	ld   bc, $0100                                   ; $56f5: $01 $00 $01
	inc  b                                           ; $56f8: $04
	ret                                              ; $56f9: $c9


	inc  b                                           ; $56fa: $04
	adc  a                                           ; $56fb: $8f
	inc  b                                           ; $56fc: $04
	ld   d, d                                        ; $56fd: $52
	dec  b                                           ; $56fe: $05
	db   $ec                                         ; $56ff: $ec
	ld   a, l                                        ; $5700: $7d
	ld   b, $09                                      ; $5701: $06 $09
	inc  b                                           ; $5703: $04
	inc  de                                          ; $5704: $13
	ld   [bc], a                                     ; $5705: $02
	jr   nz, jr_067_570d                             ; $5706: $20 $05

	inc  d                                           ; $5708: $14
	ld   [hl], l                                     ; $5709: $75
	ld   h, a                                        ; $570a: $67
	sub  [hl]                                        ; $570b: $96
	sbc  a                                           ; $570c: $9f

jr_067_570d:
	dec  c                                           ; $570d: $0d
	nop                                              ; $570e: $00
	ld   a, [bc]                                     ; $570f: $0a
	ld   b, $f8                                      ; $5710: $06 $f8
	ld   bc, $000f                                   ; $5712: $01 $0f $00
	ld   bc, $0401                                   ; $5715: $01 $01 $04
	sbc  d                                           ; $5718: $9a
	inc  bc                                          ; $5719: $03
	adc  c                                           ; $571a: $89
	ld   [bc], a                                     ; $571b: $02
	jr   nz, jr_067_5722                             ; $571c: $20 $04

	inc  l                                           ; $571e: $2c
	ld   h, e                                        ; $571f: $63
	and  c                                           ; $5720: $a1
	ld   a, h                                        ; $5721: $7c

jr_067_5722:
	ld   [hl], l                                     ; $5722: $75
	ld   h, a                                        ; $5723: $67
	ld   a, e                                        ; $5724: $7b
	sbc  a                                           ; $5725: $9f
	dec  c                                           ; $5726: $0d
	nop                                              ; $5727: $00
	ld   a, [bc]                                     ; $5728: $0a
	inc  e                                           ; $5729: $1c
	ld   bc, $0707                                   ; $572a: $01 $07 $07
	dec  e                                           ; $572d: $1d
	ld   b, b                                        ; $572e: $40
	ld   de, $1103                                   ; $572f: $11 $03 $11
	ld   bc, $2902                                   ; $5732: $01 $02 $29
	nop                                              ; $5735: $00
	ld   bc, $5a6f                                   ; $5736: $01 $6f $5a
	ld   d, d                                        ; $5739: $52
	adc  h                                           ; $573a: $8c
	ld   h, a                                        ; $573b: $67
	sub  [hl]                                        ; $573c: $96
	rst  $38                                         ; $573d: $ff
	rst  $38                                         ; $573e: $ff
	dec  c                                           ; $573f: $0d
	ld   l, e                                        ; $5740: $6b
	sbc  d                                           ; $5741: $9a
	ld   a, c                                        ; $5742: $79
	inc  b                                           ; $5743: $04
	sbc  d                                           ; $5744: $9a
	inc  bc                                          ; $5745: $03
	adc  c                                           ; $5746: $89
	ld   [bc], a                                     ; $5747: $02
	jr   nz, jr_067_574e                             ; $5748: $20 $04

	inc  l                                           ; $574a: $2c
	dec  b                                           ; $574b: $05
	inc  d                                           ; $574c: $14
	ld   a, l                                        ; $574d: $7d

jr_067_574e:
	dec  c                                           ; $574e: $0d
	inc  bc                                          ; $574f: $03
	add  d                                           ; $5750: $82
	ld   a, h                                        ; $5751: $7c
	inc  b                                           ; $5752: $04
	rst  ToBoot                                         ; $5753: $c7
	inc  bc                                          ; $5754: $03
	ld   c, a                                        ; $5755: $4f
	ld   h, [hl]                                     ; $5756: $66
	sub  c                                           ; $5757: $91
	ld   d, b                                        ; $5758: $50
	sbc  b                                           ; $5759: $98
	adc  h                                           ; $575a: $8c
	ld   l, c                                        ; $575b: $69
	and  c                                           ; $575c: $a1
	sub  [hl]                                        ; $575d: $96
	sbc  a                                           ; $575e: $9f
	dec  c                                           ; $575f: $0d
	nop                                              ; $5760: $00
	ld   a, [bc]                                     ; $5761: $0a
	ld   b, $f8                                      ; $5762: $06 $f8
	ld   bc, $000f                                   ; $5764: $01 $0f $00
	ld   bc, $0301                                   ; $5767: $01 $01 $03
	xor  d                                           ; $576a: $aa
	inc  b                                           ; $576b: $04
	sub  c                                           ; $576c: $91
	inc  bc                                          ; $576d: $03
	add  h                                           ; $576e: $84
	inc  bc                                          ; $576f: $03
	xor  h                                           ; $5770: $ac
	ld   a, h                                        ; $5771: $7c
	ld   [hl], l                                     ; $5772: $75
	ld   h, a                                        ; $5773: $67
	ld   a, e                                        ; $5774: $7b
	sbc  a                                           ; $5775: $9f
	dec  c                                           ; $5776: $0d
	nop                                              ; $5777: $00
	ld   a, [bc]                                     ; $5778: $0a
	inc  e                                           ; $5779: $1c
	ld   bc, $0101                                   ; $577a: $01 $01 $01
	dec  e                                           ; $577d: $1d
	ld   b, b                                        ; $577e: $40
	ld   de, $1103                                   ; $577f: $11 $03 $11
	ld   bc, $2802                                   ; $5782: $01 $02 $28
	nop                                              ; $5785: $00
	ld   bc, $9750                                   ; $5786: $01 $50 $97
	sbc  [hl]                                        ; $5789: $9e
	sub  [hl]                                        ; $578a: $96
	ld   e, l                                        ; $578b: $5d
	ld   h, d                                        ; $578c: $62
	inc  bc                                          ; $578d: $03
	push bc                                          ; $578e: $c5
	ld   h, [hl]                                     ; $578f: $66
	ld   [hl], l                                     ; $5790: $75
	ld   h, a                                        ; $5791: $67
	ld   a, e                                        ; $5792: $7b
	sbc  a                                           ; $5793: $9f
	dec  c                                           ; $5794: $0d
	nop                                              ; $5795: $00
	ld   a, [bc]                                     ; $5796: $0a
	ld   b, $f8                                      ; $5797: $06 $f8
	ld   bc, $011c                                   ; $5799: $01 $1c $01
	nop                                              ; $579c: $00
	nop                                              ; $579d: $00
	ld   bc, $9166                                   ; $579e: $01 $66 $91
	sbc  [hl]                                        ; $57a1: $9e
	ld   d, b                                        ; $57a2: $50
	ld   l, l                                        ; $57a3: $6d
	ld   h, l                                        ; $57a4: $65
	ld   [bc], a                                     ; $57a5: $02
	ld   a, a                                        ; $57a6: $7f
	ld   e, e                                        ; $57a7: $5b
	adc  h                                           ; $57a8: $8c
	ld   h, a                                        ; $57a9: $67
	ld   e, c                                        ; $57aa: $59
	sub  a                                           ; $57ab: $97
	sbc  a                                           ; $57ac: $9f
	dec  c                                           ; $57ad: $0d
	adc  h                                           ; $57ae: $8c
	ld   l, l                                        ; $57af: $6d
	ld   [bc], a                                     ; $57b0: $02
	xor  d                                           ; $57b1: $aa
	ld   [hl], l                                     ; $57b2: $75
	rst  $38                                         ; $57b3: $ff
	rst  $38                                         ; $57b4: $ff
	dec  c                                           ; $57b5: $0d
	nop                                              ; $57b6: $00
	ld   a, [bc]                                     ; $57b7: $0a
	dec  c                                           ; $57b8: $0d
	nop                                              ; $57b9: $00
	nop                                              ; $57ba: $00
	rrca                                             ; $57bb: $0f
	nop                                              ; $57bc: $00
	ld   bc, $1e09                                   ; $57bd: $01 $09 $1e
	nop                                              ; $57c0: $00
	rrca                                             ; $57c1: $0f
	nop                                              ; $57c2: $00
	ld   bc, $6301                                   ; $57c3: $01 $01 $63
	ld   e, l                                        ; $57c6: $5d
	sub  a                                           ; $57c7: $97
	ld   h, e                                        ; $57c8: $63
	and  c                                           ; $57c9: $a1
	ld   [hl], h                                     ; $57ca: $74
	sbc  [hl]                                        ; $57cb: $9e
	ld   e, b                                        ; $57cc: $58
	ld   h, c                                        ; $57cd: $61
	ld   [hl], e                                     ; $57ce: $73
	ld   e, c                                        ; $57cf: $59
	ld   d, d                                        ; $57d0: $52
	and  b                                           ; $57d1: $a0
	dec  c                                           ; $57d2: $0d
	inc  b                                           ; $57d3: $04
	ld   c, c                                        ; $57d4: $49
	ld   a, c                                        ; $57d5: $79
	inc  bc                                          ; $57d6: $03
	xor  [hl]                                        ; $57d7: $ae
	ld   [hl], c                                     ; $57d8: $71
	ld   [hl], h                                     ; $57d9: $74
	sbc  c                                           ; $57da: $99
	and  c                                           ; $57db: $a1
	ld   [hl], l                                     ; $57dc: $75
	ld   h, a                                        ; $57dd: $67
	ld   e, c                                        ; $57de: $59
	ld   sp, hl                                      ; $57df: $f9
	dec  c                                           ; $57e0: $0d
	nop                                              ; $57e1: $00
	ld   a, [bc]                                     ; $57e2: $0a
	rrca                                             ; $57e3: $0f
	ld   bc, $0100                                   ; $57e4: $01 $00 $01
	ld   l, e                                        ; $57e7: $6b
	ld   d, h                                        ; $57e8: $54
	ld   [hl], l                                     ; $57e9: $75
	ld   h, a                                        ; $57ea: $67
	ld   a, e                                        ; $57eb: $7b
	rst  $38                                         ; $57ec: $ff
	rst  $38                                         ; $57ed: $ff
	dec  c                                           ; $57ee: $0d
	ld   e, b                                        ; $57ef: $58
	inc  bc                                          ; $57f0: $03
	sub  c                                           ; $57f1: $91
	ld   [bc], a                                     ; $57f2: $02
	dec  h                                           ; $57f3: $25
	halt                                             ; $57f4: $76
	ld   e, c                                        ; $57f5: $59
	ld   [bc], a                                     ; $57f6: $02
	or   a                                           ; $57f7: $b7
	inc  b                                           ; $57f8: $04
	dec  de                                          ; $57f9: $1b
	dec  b                                           ; $57fa: $05
	call c, $ad03                                    ; $57fb: $dc $03 $ad
	and  b                                           ; $57fe: $a0
	adc  l                                           ; $57ff: $8d
	sbc  c                                           ; $5800: $99
	ld   a, h                                        ; $5801: $7c
	ld   a, c                                        ; $5802: $79
	dec  c                                           ; $5803: $0d
	inc  bc                                          ; $5804: $03
	xor  [hl]                                        ; $5805: $ae
	ld   [hl], c                                     ; $5806: $71
	ld   l, a                                        ; $5807: $6f
	sub  c                                           ; $5808: $91
	ld   d, d                                        ; $5809: $52
	adc  h                                           ; $580a: $8c
	ld   h, a                                        ; $580b: $67
	ld   a, e                                        ; $580c: $7b
	sbc  a                                           ; $580d: $9f
	dec  c                                           ; $580e: $0d
	nop                                              ; $580f: $00
	ld   a, [bc]                                     ; $5810: $0a
	add  hl, de                                      ; $5811: $19
	dec  b                                           ; $5812: $05
	ld   [bc], a                                     ; $5813: $02
	inc  b                                           ; $5814: $04
	ld   l, l                                        ; $5815: $6d
	sub  b                                           ; $5816: $90
	ld   l, e                                        ; $5817: $6b
	ld   d, h                                        ; $5818: $54
	ld   a, b                                        ; $5819: $78
	and  c                                           ; $581a: $a1
	ld   [hl], l                                     ; $581b: $75
	ld   h, a                                        ; $581c: $67
	nop                                              ; $581d: $00
	nop                                              ; $581e: $00
	inc  b                                           ; $581f: $04
	db   $eb                                         ; $5820: $eb
	inc  b                                           ; $5821: $04
	and  l                                           ; $5822: $a5
	halt                                             ; $5823: $76
	ld   e, c                                        ; $5824: $59
	ld   a, l                                        ; $5825: $7d
	inc  b                                           ; $5826: $04
	adc  l                                           ; $5827: $8d
	sbc  l                                           ; $5828: $9d
	ld   a, b                                        ; $5829: $78
	ld   d, d                                        ; $582a: $52
	and  c                                           ; $582b: $a1
	ld   [hl], l                                     ; $582c: $75
	ld   h, a                                        ; $582d: $67
	ld   e, c                                        ; $582e: $59
	ld   sp, hl                                      ; $582f: $f9
	nop                                              ; $5830: $00
	ld   bc, $a507                                   ; $5831: $01 $07 $a5
	ld   [bc], a                                     ; $5834: $02
	ld   [bc], a                                     ; $5835: $02
	inc  bc                                          ; $5836: $03
	ld   bc, $2000                                   ; $5837: $01 $00 $20
	nop                                              ; $583a: $00
	rlca                                             ; $583b: $07
	db   $f4                                         ; $583c: $f4
	ld   [bc], a                                     ; $583d: $02
	ld   [bc], a                                     ; $583e: $02
	inc  bc                                          ; $583f: $03
	ld   bc, $2001                                   ; $5840: $01 $01 $20
	nop                                              ; $5843: $00
	ld   b, $3f                                      ; $5844: $06 $3f
	inc  bc                                          ; $5846: $03
	rrca                                             ; $5847: $0f
	nop                                              ; $5848: $00
	ld   bc, $0401                                   ; $5849: $01 $01 $04
	ld   l, l                                        ; $584c: $6d
	sub  b                                           ; $584d: $90
	ld   l, e                                        ; $584e: $6b
	ld   d, h                                        ; $584f: $54
	ld   a, b                                        ; $5850: $78
	and  c                                           ; $5851: $a1
	ld   [hl], l                                     ; $5852: $75
	ld   h, a                                        ; $5853: $67
	sbc  a                                           ; $5854: $9f
	dec  c                                           ; $5855: $0d
	nop                                              ; $5856: $00
	ld   a, [bc]                                     ; $5857: $0a
	inc  e                                           ; $5858: $1c
	ld   bc, $0101                                   ; $5859: $01 $01 $01
	dec  e                                           ; $585c: $1d
	ld   b, b                                        ; $585d: $40
	ld   de, $1103                                   ; $585e: $11 $03 $11
	ld   bc, $2802                                   ; $5861: $01 $02 $28
	nop                                              ; $5864: $00
	ld   bc, $9750                                   ; $5865: $01 $50 $97
	sbc  [hl]                                        ; $5868: $9e
	ld   l, e                                        ; $5869: $6b
	ld   d, h                                        ; $586a: $54
	ld   a, b                                        ; $586b: $78
	and  c                                           ; $586c: $a1
	ld   [hl], l                                     ; $586d: $75
	ld   h, a                                        ; $586e: $67
	ld   e, c                                        ; $586f: $59
	ld   sp, hl                                      ; $5870: $f9
	dec  c                                           ; $5871: $0d
	ld   h, [hl]                                     ; $5872: $66
	sub  c                                           ; $5873: $91
	sbc  [hl]                                        ; $5874: $9e
	sub  b                                           ; $5875: $90
	ld   h, l                                        ; $5876: $65
	ld   [bc], a                                     ; $5877: $02
	and  l                                           ; $5878: $a5
	inc  b                                           ; $5879: $04
	add  hl, hl                                      ; $587a: $29
	ld   [bc], a                                     ; $587b: $02
	ld   e, b                                        ; $587c: $58
	ld   [bc], a                                     ; $587d: $02
	add  [hl]                                        ; $587e: $86
	ld   e, d                                        ; $587f: $5a
	ld   d, b                                        ; $5880: $50
	ld   [hl], c                                     ; $5881: $71
	ld   l, l                                        ; $5882: $6d
	sub  a                                           ; $5883: $97
	dec  c                                           ; $5884: $0d
	adc  l                                           ; $5885: $8d
	ld   a, c                                        ; $5886: $79
	ld   [bc], a                                     ; $5887: $02
	ld   a, a                                        ; $5888: $7f
	ld   e, e                                        ; $5889: $5b
	adc  h                                           ; $588a: $8c
	ld   h, l                                        ; $588b: $65
	sub  l                                           ; $588c: $95
	ld   d, h                                        ; $588d: $54
	ld   a, e                                        ; $588e: $7b
	sbc  a                                           ; $588f: $9f
	dec  c                                           ; $5890: $0d
	nop                                              ; $5891: $00
	ld   a, [bc]                                     ; $5892: $0a
	ld   b, $3f                                      ; $5893: $06 $3f
	inc  bc                                          ; $5895: $03
	rrca                                             ; $5896: $0f
	nop                                              ; $5897: $00
	ld   bc, $0401                                   ; $5898: $01 $01 $04
	db   $eb                                         ; $589b: $eb
	inc  b                                           ; $589c: $04
	and  l                                           ; $589d: $a5
	halt                                             ; $589e: $76
	ld   e, c                                        ; $589f: $59
	ld   a, l                                        ; $58a0: $7d
	inc  b                                           ; $58a1: $04
	adc  l                                           ; $58a2: $8d
	sbc  l                                           ; $58a3: $9d
	ld   a, b                                        ; $58a4: $78
	ld   d, d                                        ; $58a5: $52
	and  c                                           ; $58a6: $a1
	ld   [hl], l                                     ; $58a7: $75
	ld   h, a                                        ; $58a8: $67
	ld   e, c                                        ; $58a9: $59
	ld   sp, hl                                      ; $58aa: $f9
	dec  c                                           ; $58ab: $0d
	nop                                              ; $58ac: $00
	ld   a, [bc]                                     ; $58ad: $0a
	inc  e                                           ; $58ae: $1c
	ld   bc, $0000                                   ; $58af: $01 $00 $00
	ld   bc, $eb04                                   ; $58b2: $01 $04 $eb
	inc  b                                           ; $58b5: $04
	and  l                                           ; $58b6: $a5
	ld   a, l                                        ; $58b7: $7d
	inc  bc                                          ; $58b8: $03
	adc  e                                           ; $58b9: $8b
	ld   [bc], a                                     ; $58ba: $02
	and  [hl]                                        ; $58bb: $a6
	ld   e, c                                        ; $58bc: $59
	sub  a                                           ; $58bd: $97
	inc  bc                                          ; $58be: $03
	and  b                                           ; $58bf: $a0
	ld   [hl], c                                     ; $58c0: $71
	ld   [hl], h                                     ; $58c1: $74
	ld   e, e                                        ; $58c2: $5b
	ld   l, l                                        ; $58c3: $6d
	dec  c                                           ; $58c4: $0d
	sub  b                                           ; $58c5: $90
	ld   a, h                                        ; $58c6: $7c
	ld   e, d                                        ; $58c7: $5a
	ld   d, b                                        ; $58c8: $50
	sbc  b                                           ; $58c9: $98
	adc  h                                           ; $58ca: $8c
	ld   h, a                                        ; $58cb: $67
	ld   h, l                                        ; $58cc: $65
	rst  $38                                         ; $58cd: $ff
	rst  $38                                         ; $58ce: $ff
	dec  c                                           ; $58cf: $0d
	ld   d, b                                        ; $58d0: $50
	adc  h                                           ; $58d1: $8c
	sbc  b                                           ; $58d2: $98
	inc  b                                           ; $58d3: $04
	adc  l                                           ; $58d4: $8d
	ld   d, d                                        ; $58d5: $52
	adc  h                                           ; $58d6: $8c
	ld   l, c                                        ; $58d7: $69
	and  c                                           ; $58d8: $a1
	ld   a, e                                        ; $58d9: $7b
	sbc  a                                           ; $58da: $9f
	dec  c                                           ; $58db: $0d
	nop                                              ; $58dc: $00
	ld   a, [bc]                                     ; $58dd: $0a
	ld   b, $3f                                      ; $58de: $06 $3f
	inc  bc                                          ; $58e0: $03
	inc  e                                           ; $58e1: $1c
	ld   bc, $0000                                   ; $58e2: $01 $00 $00
	ld   bc, $9166                                   ; $58e5: $01 $66 $91
	sbc  [hl]                                        ; $58e8: $9e
	ld   d, b                                        ; $58e9: $50
	ld   l, l                                        ; $58ea: $6d
	ld   h, l                                        ; $58eb: $65
	ld   [bc], a                                     ; $58ec: $02
	ld   a, a                                        ; $58ed: $7f
	ld   e, e                                        ; $58ee: $5b
	adc  h                                           ; $58ef: $8c
	ld   h, a                                        ; $58f0: $67
	ld   e, c                                        ; $58f1: $59
	sub  a                                           ; $58f2: $97
	sbc  a                                           ; $58f3: $9f
	dec  c                                           ; $58f4: $0d
	adc  h                                           ; $58f5: $8c
	ld   l, l                                        ; $58f6: $6d
	ld   [bc], a                                     ; $58f7: $02
	xor  d                                           ; $58f8: $aa
	ld   [hl], l                                     ; $58f9: $75
	rst  $38                                         ; $58fa: $ff
	rst  $38                                         ; $58fb: $ff
	dec  c                                           ; $58fc: $0d
	nop                                              ; $58fd: $00
	ld   a, [bc]                                     ; $58fe: $0a
	dec  c                                           ; $58ff: $0d
	nop                                              ; $5900: $00
	nop                                              ; $5901: $00
	rrca                                             ; $5902: $0f
	nop                                              ; $5903: $00
	ld   bc, $1e09                                   ; $5904: $01 $09 $1e
	nop                                              ; $5907: $00
	rrca                                             ; $5908: $0f
	nop                                              ; $5909: $00
	ld   bc, $0401                                   ; $590a: $01 $01 $04
	rst  $10                                         ; $590d: $d7
	inc  b                                           ; $590e: $04
	ld   hl, $0b04                                   ; $590f: $21 $04 $0b
	inc  bc                                          ; $5912: $03
	ld   h, h                                        ; $5913: $64
	ld   [hl], c                                     ; $5914: $71
	ld   [hl], h                                     ; $5915: $74
	sbc  [hl]                                        ; $5916: $9e
	ld   h, e                                        ; $5917: $63
	ld   e, l                                        ; $5918: $5d
	sub  a                                           ; $5919: $97
	ld   h, e                                        ; $591a: $63
	and  c                                           ; $591b: $a1
	ld   e, c                                        ; $591c: $59
	sub  a                                           ; $591d: $97
	dec  c                                           ; $591e: $0d
	ld   [bc], a                                     ; $591f: $02
	sub  l                                           ; $5920: $95
	ld   [hl], h                                     ; $5921: $74
	sbc  [hl]                                        ; $5922: $9e
	ld   [hl], a                                     ; $5923: $77
	and  c                                           ; $5924: $a1
	ld   a, b                                        ; $5925: $78
	inc  b                                           ; $5926: $04
	ld   a, b                                        ; $5927: $78
	ld   [hl], l                                     ; $5928: $75
	ld   h, a                                        ; $5929: $67
	ld   e, c                                        ; $592a: $59
	ld   sp, hl                                      ; $592b: $f9
	dec  c                                           ; $592c: $0d
	nop                                              ; $592d: $00
	ld   a, [bc]                                     ; $592e: $0a
	rrca                                             ; $592f: $0f
	ld   bc, $0100                                   ; $5930: $01 $00 $01
	ld   l, e                                        ; $5933: $6b
	ld   d, h                                        ; $5934: $54
	ld   [hl], l                                     ; $5935: $75
	ld   h, a                                        ; $5936: $67
	ld   a, e                                        ; $5937: $7b
	rst  $38                                         ; $5938: $ff
	rst  $38                                         ; $5939: $ff
	dec  c                                           ; $593a: $0d
	ld   e, b                                        ; $593b: $58
	inc  bc                                          ; $593c: $03
	jr   nz, jr_067_5999                             ; $593d: $20 $5a

	ld   [bc], a                                     ; $593f: $02
	sbc  d                                           ; $5940: $9a
	ld   e, e                                        ; $5941: $5b
	ld   [hl], l                                     ; $5942: $75
	sbc  [hl]                                        ; $5943: $9e
	ld   b, $37                                      ; $5944: $06 $37
	ld   [bc], a                                     ; $5946: $02
	adc  [hl]                                        ; $5947: $8e
	ld   e, d                                        ; $5948: $5a
	ld   [bc], a                                     ; $5949: $02
	sbc  d                                           ; $594a: $9a
	ld   e, e                                        ; $594b: $5b
	ld   [hl], l                                     ; $594c: $75
	sbc  [hl]                                        ; $594d: $9e
	dec  c                                           ; $594e: $0d
	ld   h, a                                        ; $594f: $67
	ld   h, d                                        ; $5950: $62
	ld   e, l                                        ; $5951: $5d
	ld   b, $2b                                      ; $5952: $06 $2b
	ld   [bc], a                                     ; $5954: $02
	and  c                                           ; $5955: $a1
	ld   a, b                                        ; $5956: $78
	inc  b                                           ; $5957: $04
	ld   a, b                                        ; $5958: $78
	ld   [hl], l                                     ; $5959: $75
	ld   h, a                                        ; $595a: $67
	sub  [hl]                                        ; $595b: $96
	sbc  a                                           ; $595c: $9f
	dec  c                                           ; $595d: $0d
	nop                                              ; $595e: $00
	ld   a, [bc]                                     ; $595f: $0a
	inc  e                                           ; $5960: $1c
	ld   bc, $0101                                   ; $5961: $01 $01 $01
	ld   bc, $7650                                   ; $5964: $01 $50 $76
	sbc  [hl]                                        ; $5967: $9e
	adc  l                                           ; $5968: $8d
	and  c                                           ; $5969: $a1
	ld   a, b                                        ; $596a: $78
	ld   a, h                                        ; $596b: $7c
	ld   e, b                                        ; $596c: $58
	inc  b                                           ; $596d: $04
	ld   l, $63                                      ; $596e: $2e $63
	and  c                                           ; $5970: $a1
	ld   [hl], l                                     ; $5971: $75
	sub  b                                           ; $5972: $90
	dec  c                                           ; $5973: $0d
	ld   d, b                                        ; $5974: $50
	sbc  b                                           ; $5975: $98
	adc  h                                           ; $5976: $8c
	ld   h, a                                        ; $5977: $67
	ld   a, e                                        ; $5978: $7b
	sbc  a                                           ; $5979: $9f
	dec  c                                           ; $597a: $0d
	nop                                              ; $597b: $00
	ld   a, [bc]                                     ; $597c: $0a
	ld   bc, $9166                                   ; $597d: $01 $66 $91
	sbc  [hl]                                        ; $5980: $9e
	ld   d, b                                        ; $5981: $50
	ld   l, l                                        ; $5982: $6d
	ld   h, l                                        ; $5983: $65
	ld   [bc], a                                     ; $5984: $02
	ld   a, a                                        ; $5985: $7f
	ld   e, e                                        ; $5986: $5b
	adc  h                                           ; $5987: $8c
	ld   h, a                                        ; $5988: $67
	ld   e, c                                        ; $5989: $59
	sub  a                                           ; $598a: $97
	sbc  a                                           ; $598b: $9f
	dec  c                                           ; $598c: $0d
	ld   [bc], a                                     ; $598d: $02
	and  l                                           ; $598e: $a5
	inc  b                                           ; $598f: $04
	xor  d                                           ; $5990: $aa
	sub  b                                           ; $5991: $90
	ld   [bc], a                                     ; $5992: $02
	jr   nz, jr_067_5999                             ; $5993: $20 $04

	xor  d                                           ; $5995: $aa
	sbc  [hl]                                        ; $5996: $9e
	dec  c                                           ; $5997: $0d
	ld   e, d                                        ; $5998: $5a

jr_067_5999:
	and  c                                           ; $5999: $a1
	ld   a, [hl]                                     ; $599a: $7e
	sbc  b                                           ; $599b: $98
	adc  h                                           ; $599c: $8c
	ld   h, l                                        ; $599d: $65
	sub  l                                           ; $599e: $95
	ld   d, h                                        ; $599f: $54
	ld   a, e                                        ; $59a0: $7b
	sbc  a                                           ; $59a1: $9f
	dec  c                                           ; $59a2: $0d
	nop                                              ; $59a3: $00
	ld   a, [bc]                                     ; $59a4: $0a
	dec  c                                           ; $59a5: $0d
	nop                                              ; $59a6: $00
	nop                                              ; $59a7: $00
	rrca                                             ; $59a8: $0f
	nop                                              ; $59a9: $00
	ld   bc, $1e09                                   ; $59aa: $01 $09 $1e
	nop                                              ; $59ad: $00
	nop                                              ; $59ae: $00
	inc  bc                                          ; $59af: $03
	inc  d                                           ; $59b0: $14
	ld   bc, $24b4                                   ; $59b1: $01 $b4 $24
	inc  bc                                          ; $59b4: $03
	ld   d, c                                        ; $59b5: $51
	ld   [bc], a                                     ; $59b6: $02
	nop                                              ; $59b7: $00
	inc  bc                                          ; $59b8: $03
	ld   c, e                                        ; $59b9: $4b
	add  hl, hl                                      ; $59ba: $29
	add  hl, hl                                      ; $59bb: $29
	ld   bc, $2201                                   ; $59bc: $01 $01 $22
	inc  e                                           ; $59bf: $1c
	nop                                              ; $59c0: $00
	inc  e                                           ; $59c1: $1c
	inc  b                                           ; $59c2: $04
	ld   bc, $0201                                   ; $59c3: $01 $01 $02
	rlca                                             ; $59c6: $07
	xor  e                                           ; $59c7: $ab
	inc  c                                           ; $59c8: $0c
	inc  b                                           ; $59c9: $04
	add  b                                           ; $59ca: $80
	ld   b, l                                        ; $59cb: $45
	ld   bc, $2000                                   ; $59cc: $01 $00 $20
	nop                                              ; $59cf: $00
	ld   bc, $9e50                                   ; $59d0: $01 $50 $9e
	ld   l, a                                        ; $59d3: $6f
	ld   d, d                                        ; $59d4: $52
	ld   [bc], a                                     ; $59d5: $02
	inc  de                                          ; $59d6: $13
	ld   l, a                                        ; $59d7: $6f
	sub  c                                           ; $59d8: $91
	and  c                                           ; $59d9: $a1
	ld   a, [$500d]                                  ; $59da: $fa $0d $50
	ei                                               ; $59dd: $fb
	ld   l, e                                        ; $59de: $6b
	ei                                               ; $59df: $fb
	adc  d                                           ; $59e0: $8a
	ei                                               ; $59e1: $fb
	ld   a, [$000d]                                  ; $59e2: $fa $0d $00
	ld   a, [bc]                                     ; $59e5: $0a
	add  hl, de                                      ; $59e6: $19
	dec  b                                           ; $59e7: $05
	inc  bc                                          ; $59e8: $03
	ld   h, l                                        ; $59e9: $65
	sbc  b                                           ; $59ea: $98
	halt                                             ; $59eb: $76
	sbc  b                                           ; $59ec: $98
	nop                                              ; $59ed: $00
	nop                                              ; $59ee: $00
	or   b                                           ; $59ef: $b0
	and  l                                           ; $59f0: $a5
	cp   e                                           ; $59f1: $bb
	nop                                              ; $59f2: $00
	ld   bc, $9166                                   ; $59f3: $01 $66 $91
	and  c                                           ; $59f6: $a1
	ld   e, a                                        ; $59f7: $5f
	and  c                                           ; $59f8: $a1
	nop                                              ; $59f9: $00
	ld   [bc], a                                     ; $59fa: $02
	rlca                                             ; $59fb: $07
	sub  l                                           ; $59fc: $95
	nop                                              ; $59fd: $00
	ld   [bc], a                                     ; $59fe: $02
	inc  bc                                          ; $59ff: $03
	ld   bc, $2000                                   ; $5a00: $01 $00 $20
	nop                                              ; $5a03: $00
	rlca                                             ; $5a04: $07
	ld   e, [hl]                                     ; $5a05: $5e
	dec  b                                           ; $5a06: $05
	ld   [bc], a                                     ; $5a07: $02
	inc  bc                                          ; $5a08: $03
	ld   bc, $2001                                   ; $5a09: $01 $01 $20
	nop                                              ; $5a0c: $00
	rlca                                             ; $5a0d: $07
	ld   h, c                                        ; $5a0e: $61
	ld   [$0302], sp                                 ; $5a0f: $08 $02 $03
	ld   bc, $2002                                   ; $5a12: $01 $02 $20
	nop                                              ; $5a15: $00
	ld   b, $58                                      ; $5a16: $06 $58
	nop                                              ; $5a18: $00
	inc  e                                           ; $5a19: $1c
	inc  b                                           ; $5a1a: $04
	ld   [bc], a                                     ; $5a1b: $02
	ld   [bc], a                                     ; $5a1c: $02
	dec  e                                           ; $5a1d: $1d
	ld   b, b                                        ; $5a1e: $40
	inc  d                                           ; $5a1f: $14
	inc  bc                                          ; $5a20: $03
	inc  d                                           ; $5a21: $14
	ld   bc, $2901                                   ; $5a22: $01 $01 $29
	nop                                              ; $5a25: $00
	ld   bc, $9e50                                   ; $5a26: $01 $50 $9e
	and  l                                           ; $5a29: $a5
	and  $6b                                         ; $5a2a: $e6 $6b
	ld   d, h                                        ; $5a2c: $54
	ld   a, b                                        ; $5a2d: $78
	ld   e, c                                        ; $5a2e: $59
	ld   e, b                                        ; $5a2f: $58
	ld   h, l                                        ; $5a30: $65
	ld   [hl], h                                     ; $5a31: $74
	sbc  c                                           ; $5a32: $99
	rst  $38                                         ; $5a33: $ff
	rst  $38                                         ; $5a34: $ff
	dec  c                                           ; $5a35: $0d
	nop                                              ; $5a36: $00
	ld   a, [bc]                                     ; $5a37: $0a
	ld   bc, $5490                                   ; $5a38: $01 $90 $54
	ld   d, d                                        ; $5a3b: $52
	ld   d, d                                        ; $5a3c: $52
	ld   a, [$520d]                                  ; $5a3d: $fa $0d $52
	ld   h, c                                        ; $5a40: $61
	ld   d, h                                        ; $5a41: $54
	sbc  [hl]                                        ; $5a42: $9e
	cp   c                                           ; $5a43: $b9
	push hl                                          ; $5a44: $e5
	push af                                          ; $5a45: $f5
	sbc  $fb                                         ; $5a46: $de $fb
	db   $ed                                         ; $5a48: $ed
	sbc  a                                           ; $5a49: $9f
	dec  c                                           ; $5a4a: $0d
	nop                                              ; $5a4b: $00
	ld   a, [bc]                                     ; $5a4c: $0a
	dec  c                                           ; $5a4d: $0d
	nop                                              ; $5a4e: $00
	nop                                              ; $5a4f: $00
	rrca                                             ; $5a50: $0f
	nop                                              ; $5a51: $00
	ld   bc, $1e09                                   ; $5a52: $01 $09 $1e
	nop                                              ; $5a55: $00
	rrca                                             ; $5a56: $0f
	nop                                              ; $5a57: $00
	ld   bc, $6601                                   ; $5a58: $01 $01 $66
	sub  c                                           ; $5a5b: $91
	ld   d, b                                        ; $5a5c: $50
	sbc  [hl]                                        ; $5a5d: $9e
	ld   h, l                                        ; $5a5e: $65
	sbc  b                                           ; $5a5f: $98
	halt                                             ; $5a60: $76
	sbc  b                                           ; $5a61: $98
	and  b                                           ; $5a62: $a0
	sub  d                                           ; $5a63: $92
	sbc  e                                           ; $5a64: $9b
	ld   d, h                                        ; $5a65: $54
	sbc  a                                           ; $5a66: $9f
	dec  c                                           ; $5a67: $0d
	nop                                              ; $5a68: $00
	ld   a, [bc]                                     ; $5a69: $0a
	inc  e                                           ; $5a6a: $1c
	inc  b                                           ; $5a6b: $04
	nop                                              ; $5a6c: $00
	nop                                              ; $5a6d: $00
	ld   bc, $a154                                   ; $5a6e: $01 $54 $a1
	sbc  [hl]                                        ; $5a71: $9e
	ld   d, d                                        ; $5a72: $52
	ld   d, d                                        ; $5a73: $52
	sub  [hl]                                        ; $5a74: $96
	sbc  a                                           ; $5a75: $9f
	dec  c                                           ; $5a76: $0d
	ld   h, [hl]                                     ; $5a77: $66
	sub  c                                           ; $5a78: $91
	ld   d, b                                        ; $5a79: $50
	sbc  [hl]                                        ; $5a7a: $9e
	ld   h, c                                        ; $5a7b: $61
	and  c                                           ; $5a7c: $a1
	ld   e, c                                        ; $5a7d: $59
	ld   d, d                                        ; $5a7e: $52
	ld   a, l                                        ; $5a7f: $7d
	dec  c                                           ; $5a80: $0d
	ld   l, a                                        ; $5a81: $6f
	sub  l                                           ; $5a82: $95
	ld   [hl], c                                     ; $5a83: $71
	halt                                             ; $5a84: $76
	adc  [hl]                                        ; $5a85: $8e
	ld   [hl], d                                     ; $5a86: $72
	ld   e, c                                        ; $5a87: $59
	ld   h, l                                        ; $5a88: $65
	ld   e, l                                        ; $5a89: $5d
	ld   h, l                                        ; $5a8a: $65
	sub  [hl]                                        ; $5a8b: $96
	ld   d, h                                        ; $5a8c: $54
	sub  [hl]                                        ; $5a8d: $96
	sbc  a                                           ; $5a8e: $9f
	dec  c                                           ; $5a8f: $0d
	nop                                              ; $5a90: $00
	ld   a, [bc]                                     ; $5a91: $0a
	ld   bc, $7152                                   ; $5a92: $01 $52 $71
	ld   [hl], h                                     ; $5a95: $74
	sub  b                                           ; $5a96: $90
	ld   d, d                                        ; $5a97: $52
	ld   d, d                                        ; $5a98: $52
	ld   a, h                                        ; $5a99: $7c
	ld   a, l                                        ; $5a9a: $7d
	sbc  [hl]                                        ; $5a9b: $9e
	dec  c                                           ; $5a9c: $0d
	ld   bc, $5d07                                   ; $5a9d: $01 $07 $5d
	ld   l, [hl]                                     ; $5aa0: $6e
	sub  b                                           ; $5aa1: $90
	ld   a, h                                        ; $5aa2: $7c
	ld   bc, $7608                                   ; $5aa3: $01 $08 $76
	ld   bc, $9207                                   ; $5aa6: $01 $07 $92
	ld   h, e                                        ; $5aa9: $63
	ld   d, d                                        ; $5aaa: $52
	ld   bc, $7c08                                   ; $5aab: $01 $08 $7c
	dec  c                                           ; $5aae: $0d
	ld   a, b                                        ; $5aaf: $78
	adc  h                                           ; $5ab0: $8c
	ld   d, [hl]                                     ; $5ab1: $56
	ld   l, [hl]                                     ; $5ab2: $6e
	ld   e, a                                        ; $5ab3: $5f
	ld   l, [hl]                                     ; $5ab4: $6e
	sub  [hl]                                        ; $5ab5: $96
	sbc  a                                           ; $5ab6: $9f
	dec  c                                           ; $5ab7: $0d
	nop                                              ; $5ab8: $00
	ld   a, [bc]                                     ; $5ab9: $0a
	ld   bc, $9166                                   ; $5aba: $01 $66 $91
	sbc  [hl]                                        ; $5abd: $9e
	ld   d, d                                        ; $5abe: $52
	ld   e, l                                        ; $5abf: $5d
	sub  [hl]                                        ; $5ac0: $96
	sbc  a                                           ; $5ac1: $9f
	dec  c                                           ; $5ac2: $0d
	adc  h                                           ; $5ac3: $8c
	ld   l, b                                        ; $5ac4: $68
	ld   a, l                                        ; $5ac5: $7d
	ld   bc, $9807                                   ; $5ac6: $01 $07 $98

Call_067_5ac9:
	and  c                                           ; $5ac9: $a1
	ld   h, d                                        ; $5aca: $62
	ld   bc, $9f08                                   ; $5acb: $01 $08 $9f
	dec  c                                           ; $5ace: $0d
	nop                                              ; $5acf: $00
	ld   a, [bc]                                     ; $5ad0: $0a
	add  hl, de                                      ; $5ad1: $19
	dec  b                                           ; $5ad2: $05
	inc  bc                                          ; $5ad3: $03
	or   l                                           ; $5ad4: $b5
	ei                                               ; $5ad5: $fb
	and  $00                                         ; $5ad6: $e6 $00
	nop                                              ; $5ad8: $00
	or   l                                           ; $5ad9: $b5
	db   $ec                                         ; $5ada: $ec
	db   $eb                                         ; $5adb: $eb
	nop                                              ; $5adc: $00
	ld   bc, $ddb5                                   ; $5add: $01 $b5 $dd
	and  a                                           ; $5ae0: $a7
	nop                                              ; $5ae1: $00
	ld   [bc], a                                     ; $5ae2: $02
	rlca                                             ; $5ae3: $07
	and  a                                           ; $5ae4: $a7
	ld   bc, $0302                                   ; $5ae5: $01 $02 $03
	ld   bc, $2000                                   ; $5ae8: $01 $00 $20
	nop                                              ; $5aeb: $00
	rlca                                             ; $5aec: $07
	ld   h, d                                        ; $5aed: $62
	ld   bc, $0302                                   ; $5aee: $01 $02 $03
	ld   bc, $2001                                   ; $5af1: $01 $01 $20
	nop                                              ; $5af4: $00
	rlca                                             ; $5af5: $07
	xor  $17                                         ; $5af6: $ee $17
	ld   [bc], a                                     ; $5af8: $02
	inc  bc                                          ; $5af9: $03
	ld   bc, $2002                                   ; $5afa: $01 $02 $20
	nop                                              ; $5afd: $00
	ld   b, $40                                      ; $5afe: $06 $40
	ld   bc, $041c                                   ; $5b00: $01 $1c $04
	nop                                              ; $5b03: $00
	nop                                              ; $5b04: $00
	ld   bc, $fbd7                                   ; $5b05: $01 $d7 $fb
	sbc  [hl]                                        ; $5b08: $9e
	ld   h, [hl]                                     ; $5b09: $66
	ld   e, c                                        ; $5b0a: $59
	and  c                                           ; $5b0b: $a1
	ld   e, h                                        ; $5b0c: $5c
	sbc  d                                           ; $5b0d: $9a
	ld   l, [hl]                                     ; $5b0e: $6e
	sub  [hl]                                        ; $5b0f: $96
	sbc  a                                           ; $5b10: $9f
	dec  c                                           ; $5b11: $0d
	ld   l, a                                        ; $5b12: $6f
	ld   d, d                                        ; $5b13: $52
	ld   [bc], a                                     ; $5b14: $02
	inc  de                                          ; $5b15: $13
	ld   l, a                                        ; $5b16: $6f
	sub  c                                           ; $5b17: $91
	and  c                                           ; $5b18: $a1
	ld   a, h                                        ; $5b19: $7c
	adc  h                                           ; $5b1a: $8c
	ld   e, a                                        ; $5b1b: $5f
	sbc  a                                           ; $5b1c: $9f
	dec  c                                           ; $5b1d: $0d
	nop                                              ; $5b1e: $00
	ld   a, [bc]                                     ; $5b1f: $0a
	ld   b, $40                                      ; $5b20: $06 $40
	dec  b                                           ; $5b22: $05
	inc  e                                           ; $5b23: $1c
	inc  b                                           ; $5b24: $04
	nop                                              ; $5b25: $00
	nop                                              ; $5b26: $00
	ld   bc, $9a6b                                   ; $5b27: $01 $6b $9a
	ld   a, l                                        ; $5b2a: $7d
	sbc  [hl]                                        ; $5b2b: $9e
	ld   e, l                                        ; $5b2c: $5d
	ld   l, [hl]                                     ; $5b2d: $6e
	sub  b                                           ; $5b2e: $90
	ld   a, h                                        ; $5b2f: $7c
	ld   [hl], l                                     ; $5b30: $75
	sub  b                                           ; $5b31: $90
	dec  c                                           ; $5b32: $0d
	sub  d                                           ; $5b33: $92
	ld   h, e                                        ; $5b34: $63
	ld   d, d                                        ; $5b35: $52
	ld   [hl], l                                     ; $5b36: $75
	sub  b                                           ; $5b37: $90
	ld   a, b                                        ; $5b38: $78
	ld   d, d                                        ; $5b39: $52
	ld   e, c                                        ; $5b3a: $59
	sub  a                                           ; $5b3b: $97
	pop  bc                                          ; $5b3c: $c1
	ei                                               ; $5b3d: $fb
	db   $e3                                         ; $5b3e: $e3
	sbc  a                                           ; $5b3f: $9f
	dec  c                                           ; $5b40: $0d
	nop                                              ; $5b41: $00
	ld   a, [bc]                                     ; $5b42: $0a
	ld   b, $40                                      ; $5b43: $06 $40
	dec  b                                           ; $5b45: $05
	inc  e                                           ; $5b46: $1c
	inc  b                                           ; $5b47: $04
	nop                                              ; $5b48: $00
	nop                                              ; $5b49: $00
	ld   bc, $0701                                   ; $5b4a: $01 $01 $07
	push af                                          ; $5b4d: $f5
	ld   bc, $5a08                                   ; $5b4e: $01 $08 $5a
	ld   [hl], d                                     ; $5b51: $72
	ld   d, d                                        ; $5b52: $52
	ld   l, l                                        ; $5b53: $6d
	ld   e, c                                        ; $5b54: $59
	sub  a                                           ; $5b55: $97
	dec  c                                           ; $5b56: $0d
	ld   l, a                                        ; $5b57: $6f
	ld   d, d                                        ; $5b58: $52
	ld   [bc], a                                     ; $5b59: $02
	inc  de                                          ; $5b5a: $13
	ld   l, a                                        ; $5b5b: $6f
	sub  c                                           ; $5b5c: $91
	and  c                                           ; $5b5d: $a1
	ld   a, h                                        ; $5b5e: $7c
	adc  h                                           ; $5b5f: $8c
	ld   e, a                                        ; $5b60: $5f
	sbc  a                                           ; $5b61: $9f
	dec  c                                           ; $5b62: $0d
	nop                                              ; $5b63: $00
	ld   a, [bc]                                     ; $5b64: $0a
	ld   b, $40                                      ; $5b65: $06 $40
	dec  b                                           ; $5b67: $05
	rrca                                             ; $5b68: $0f
	nop                                              ; $5b69: $00
	ld   bc, $0101                                   ; $5b6a: $01 $01 $01
	rlca                                             ; $5b6d: $07
	or   l                                           ; $5b6e: $b5
	ei                                               ; $5b6f: $fb
	and  $01                                         ; $5b70: $e6 $01
	ld   [$0dfa], sp                                 ; $5b72: $08 $fa $0d
	nop                                              ; $5b75: $00
	ld   a, [bc]                                     ; $5b76: $0a
	inc  e                                           ; $5b77: $1c
	inc  b                                           ; $5b78: $04
	nop                                              ; $5b79: $00
	nop                                              ; $5b7a: $00
	ld   bc, $ffe6                                   ; $5b7b: $01 $e6 $ff
	rst  $38                                         ; $5b7e: $ff
	ld   bc, $9207                                   ; $5b7f: $01 $07 $92
	ld   h, e                                        ; $5b82: $63
	ld   d, d                                        ; $5b83: $52
	ld   bc, $fa08                                   ; $5b84: $01 $08 $fa
	dec  c                                           ; $5b87: $0d
	nop                                              ; $5b88: $00
	ld   a, [bc]                                     ; $5b89: $0a
	rrca                                             ; $5b8a: $0f
	nop                                              ; $5b8b: $00
	ld   bc, $0101                                   ; $5b8c: $01 $01 $01
	inc  bc                                          ; $5b8f: $03
	sub  d                                           ; $5b90: $92
	sbc  [hl]                                        ; $5b91: $9e
	sub  d                                           ; $5b92: $92
	ld   h, e                                        ; $5b93: $63
	ld   d, d                                        ; $5b94: $52
	ld   a, [$0df9]                                  ; $5b95: $fa $f9 $0d
	db   $10                                         ; $5b98: $10
	ld   d, b                                        ; $5b99: $50
	sbc  b                                           ; $5b9a: $98
	ld   e, c                                        ; $5b9b: $59
	sub  [hl]                                        ; $5b9c: $96
	sbc  [hl]                                        ; $5b9d: $9e
	ld   l, e                                        ; $5b9e: $6b
	and  c                                           ; $5b9f: $a1
	ld   a, b                                        ; $5ba0: $78
	ld   a, h                                        ; $5ba1: $7c
	rst  $38                                         ; $5ba2: $ff
	rst  $38                                         ; $5ba3: $ff
	dec  c                                           ; $5ba4: $0d
	db   $10                                         ; $5ba5: $10
	ld   h, c                                        ; $5ba6: $61
	ld   h, c                                        ; $5ba7: $61
	ld   a, l                                        ; $5ba8: $7d
	inc  b                                           ; $5ba9: $04
	ld   c, $03                                      ; $5baa: $0e $03
	add  d                                           ; $5bac: $82
	halt                                             ; $5bad: $76
	ld   h, l                                        ; $5bae: $65
	ld   [hl], h                                     ; $5baf: $74
	ld   e, d                                        ; $5bb0: $5a
	adc  h                                           ; $5bb1: $8c
	and  c                                           ; $5bb2: $a1
	rst  $38                                         ; $5bb3: $ff
	ld   bc, $0d04                                   ; $5bb4: $01 $04 $0d
	nop                                              ; $5bb7: $00
	ld   a, [bc]                                     ; $5bb8: $0a
	add  hl, de                                      ; $5bb9: $19
	dec  b                                           ; $5bba: $05
	inc  bc                                          ; $5bbb: $03
	and  l                                           ; $5bbc: $a5
	jp   nz, $00b5                                   ; $5bbd: $c2 $b5 $00

	nop                                              ; $5bc0: $00
	ld   d, d                                        ; $5bc1: $52
	sub  [hl]                                        ; $5bc2: $96
	ld   e, c                                        ; $5bc3: $59
	and  c                                           ; $5bc4: $a1
	nop                                              ; $5bc5: $00
	ld   bc, $b1a5                                   ; $5bc6: $01 $a5 $b1
	and  e                                           ; $5bc9: $a3
	rlc  b                                           ; $5bca: $cb $00
	ld   [bc], a                                     ; $5bcc: $02
	rlca                                             ; $5bcd: $07
	ld   h, b                                        ; $5bce: $60
	ld   [bc], a                                     ; $5bcf: $02
	ld   [bc], a                                     ; $5bd0: $02
	inc  bc                                          ; $5bd1: $03
	ld   bc, $2000                                   ; $5bd2: $01 $00 $20
	nop                                              ; $5bd5: $00
	rlca                                             ; $5bd6: $07
	ld   a, [hl+]                                    ; $5bd7: $2a
	ld   [bc], a                                     ; $5bd8: $02
	ld   [bc], a                                     ; $5bd9: $02
	inc  bc                                          ; $5bda: $03
	ld   bc, $2001                                   ; $5bdb: $01 $01 $20
	nop                                              ; $5bde: $00
	rlca                                             ; $5bdf: $07
	ld   h, d                                        ; $5be0: $62
	ld   bc, $0302                                   ; $5be1: $01 $02 $03
	ld   bc, $2002                                   ; $5be4: $01 $02 $20
	nop                                              ; $5be7: $00
	ld   b, $40                                      ; $5be8: $06 $40
	ld   bc, $041c                                   ; $5bea: $01 $1c $04
	nop                                              ; $5bed: $00
	nop                                              ; $5bee: $00
	ld   bc, $0701                                   ; $5bef: $01 $01 $07
	ld   d, d                                        ; $5bf2: $52
	sub  [hl]                                        ; $5bf3: $96
	ld   e, c                                        ; $5bf4: $59
	and  c                                           ; $5bf5: $a1
	ld   bc, $7d08                                   ; $5bf6: $01 $08 $7d
	ld   e, l                                        ; $5bf9: $5d
	ld   l, [hl]                                     ; $5bfa: $6e
	sub  b                                           ; $5bfb: $90
	ld   a, h                                        ; $5bfc: $7c
	ld   l, [hl]                                     ; $5bfd: $6e
	ld   e, a                                        ; $5bfe: $5f
	ld   [hl], a                                     ; $5bff: $77
	dec  c                                           ; $5c00: $0d
	ld   bc, $a107                                   ; $5c01: $01 $07 $a1
	ld   bc, $5a08                                   ; $5c04: $01 $08 $5a
	ld   [hl], d                                     ; $5c07: $72
	ld   e, l                                        ; $5c08: $5d
	ld   e, c                                        ; $5c09: $59
	sub  a                                           ; $5c0a: $97
	pop  bc                                          ; $5c0b: $c1
	db   $e3                                         ; $5c0c: $e3
	db   $fc                                         ; $5c0d: $fc
	sbc  a                                           ; $5c0e: $9f
	dec  c                                           ; $5c0f: $0d
	ld   l, a                                        ; $5c10: $6f
	ld   d, d                                        ; $5c11: $52
	ld   [bc], a                                     ; $5c12: $02
	inc  de                                          ; $5c13: $13
	ld   l, a                                        ; $5c14: $6f
	sub  c                                           ; $5c15: $91
	and  c                                           ; $5c16: $a1
	ld   a, h                                        ; $5c17: $7c
	adc  h                                           ; $5c18: $8c
	ld   e, a                                        ; $5c19: $5f
	sbc  a                                           ; $5c1a: $9f
	dec  c                                           ; $5c1b: $0d
	nop                                              ; $5c1c: $00
	ld   a, [bc]                                     ; $5c1d: $0a
	ld   b, $40                                      ; $5c1e: $06 $40
	dec  b                                           ; $5c20: $05
	rrca                                             ; $5c21: $0f
	nop                                              ; $5c22: $00
	ld   bc, $0101                                   ; $5c23: $01 $01 $01
	rlca                                             ; $5c26: $07
	and  l                                           ; $5c27: $a5
	jp   nz, $01b5                                   ; $5c28: $c2 $b5 $01

	ld   [$0dfa], sp                                 ; $5c2b: $08 $fa $0d
	nop                                              ; $5c2e: $00
	ld   a, [bc]                                     ; $5c2f: $0a
	inc  e                                           ; $5c30: $1c
	inc  b                                           ; $5c31: $04
	ld   b, $06                                      ; $5c32: $06 $06
	ld   bc, $ffb5                                   ; $5c34: $01 $b5 $ff
	rst  $38                                         ; $5c37: $ff
	rst  $38                                         ; $5c38: $ff
	rst  $38                                         ; $5c39: $ff
	rst  $38                                         ; $5c3a: $ff
	rst  $38                                         ; $5c3b: $ff
	ld   sp, hl                                      ; $5c3c: $f9
	dec  c                                           ; $5c3d: $0d
	or   l                                           ; $5c3e: $b5
	ld   sp, hl                                      ; $5c3f: $f9
	db   $10                                         ; $5c40: $10
	or   l                                           ; $5c41: $b5
	ld   sp, hl                                      ; $5c42: $f9
	db   $10                                         ; $5c43: $10
	or   l                                           ; $5c44: $b5
	ld   sp, hl                                      ; $5c45: $f9
	db   $10                                         ; $5c46: $10
	or   l                                           ; $5c47: $b5
	ld   sp, hl                                      ; $5c48: $f9
	dec  c                                           ; $5c49: $0d
	nop                                              ; $5c4a: $00
	inc  e                                           ; $5c4b: $1c
	inc  b                                           ; $5c4c: $04
	nop                                              ; $5c4d: $00
	nop                                              ; $5c4e: $00
	ld   bc, $ffff                                   ; $5c4f: $01 $ff $ff
	ld   bc, $b507                                   ; $5c52: $01 $07 $b5
	rst  JumpTable                                         ; $5c55: $df
	ld   bc, $fa08                                   ; $5c56: $01 $08 $fa
	dec  c                                           ; $5c59: $0d
	nop                                              ; $5c5a: $00
	ld   a, [bc]                                     ; $5c5b: $0a
	rrca                                             ; $5c5c: $0f
	nop                                              ; $5c5d: $00
	ld   bc, $0101                                   ; $5c5e: $01 $01 $01
	inc  bc                                          ; $5c61: $03
	or   l                                           ; $5c62: $b5
	sbc  [hl]                                        ; $5c63: $9e
	or   l                                           ; $5c64: $b5
	rst  JumpTable                                         ; $5c65: $df
	ld   a, [$0df9]                                  ; $5c66: $fa $f9 $0d
	db   $10                                         ; $5c69: $10
	or   l                                           ; $5c6a: $b5
	rst  JumpTable                                         ; $5c6b: $df
	ld   a, l                                        ; $5c6c: $7d
	sub  d                                           ; $5c6d: $92
	ld   h, e                                        ; $5c6e: $63
	ld   d, d                                        ; $5c6f: $52
	ld   a, b                                        ; $5c70: $78
	ld   a, h                                        ; $5c71: $7c
	ld   e, c                                        ; $5c72: $59
	rst  $38                                         ; $5c73: $ff
	rst  $38                                         ; $5c74: $ff
	ld   sp, hl                                      ; $5c75: $f9
	ld   bc, $0d04                                   ; $5c76: $01 $04 $0d
	nop                                              ; $5c79: $00
	ld   a, [bc]                                     ; $5c7a: $0a
	add  hl, de                                      ; $5c7b: $19
	dec  b                                           ; $5c7c: $05
	inc  bc                                          ; $5c7d: $03
	rst  JumpTable                                         ; $5c7e: $df
	cp   d                                           ; $5c7f: $ba
	xor  h                                           ; $5c80: $ac
	call nz, $00c9                                   ; $5c81: $c4 $c9 $00
	nop                                              ; $5c84: $00
	rst  JumpTable                                         ; $5c85: $df
	push af                                          ; $5c86: $f5
	or   l                                           ; $5c87: $b5
	ei                                               ; $5c88: $fb
	nop                                              ; $5c89: $00
	ld   bc, $fbdf                                   ; $5c8a: $01 $df $fb
	xor  l                                           ; $5c8d: $ad
	db   $ec                                         ; $5c8e: $ec
	push af                                          ; $5c8f: $f5
	nop                                              ; $5c90: $00
	ld   [bc], a                                     ; $5c91: $02
	rlca                                             ; $5c92: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c93: $cf
	inc  bc                                          ; $5c94: $03
	ld   [bc], a                                     ; $5c95: $02
	inc  bc                                          ; $5c96: $03
	ld   bc, $2000                                   ; $5c97: $01 $00 $20
	nop                                              ; $5c9a: $00
	rlca                                             ; $5c9b: $07
	ld   d, e                                        ; $5c9c: $53
	inc  bc                                          ; $5c9d: $03
	ld   [bc], a                                     ; $5c9e: $02
	inc  bc                                          ; $5c9f: $03
	ld   bc, $2001                                   ; $5ca0: $01 $01 $20
	nop                                              ; $5ca3: $00
	rlca                                             ; $5ca4: $07
	ld   e, $03                                      ; $5ca5: $1e $03
	ld   [bc], a                                     ; $5ca7: $02
	inc  bc                                          ; $5ca8: $03
	ld   bc, $2002                                   ; $5ca9: $01 $02 $20
	nop                                              ; $5cac: $00
	ld   b, $ef                                      ; $5cad: $06 $ef
	ld   [bc], a                                     ; $5caf: $02
	inc  e                                           ; $5cb0: $1c
	inc  b                                           ; $5cb1: $04
	ld   bc, $1d01                                   ; $5cb2: $01 $01 $1d
	ld   b, b                                        ; $5cb5: $40
	inc  d                                           ; $5cb6: $14
	inc  bc                                          ; $5cb7: $03
	inc  d                                           ; $5cb8: $14
	ld   bc, $2802                                   ; $5cb9: $01 $02 $28
	nop                                              ; $5cbc: $00
	ld   bc, $fbd7                                   ; $5cbd: $01 $d7 $fb
	sbc  [hl]                                        ; $5cc0: $9e
	ld   h, [hl]                                     ; $5cc1: $66
	ld   e, c                                        ; $5cc2: $59
	and  c                                           ; $5cc3: $a1
	ld   e, h                                        ; $5cc4: $5c
	sbc  d                                           ; $5cc5: $9a
	ld   l, [hl]                                     ; $5cc6: $6e
	sub  [hl]                                        ; $5cc7: $96
	sbc  a                                           ; $5cc8: $9f
	dec  c                                           ; $5cc9: $0d
	and  e                                           ; $5cca: $a3
	and  l                                           ; $5ccb: $a5
	db   $ec                                         ; $5ccc: $ec
	cp   d                                           ; $5ccd: $ba
	ld   a, h                                        ; $5cce: $7c
	ld   e, c                                        ; $5ccf: $59
	ld   l, a                                        ; $5cd0: $6f
	db   $fc                                         ; $5cd1: $fc
	sbc  a                                           ; $5cd2: $9f
	dec  c                                           ; $5cd3: $0d
	xor  c                                           ; $5cd4: $a9
	reti                                             ; $5cd5: $d9


	reti                                             ; $5cd6: $d9


	reti                                             ; $5cd7: $d9


	sbc  a                                           ; $5cd8: $9f
	dec  c                                           ; $5cd9: $0d
	nop                                              ; $5cda: $00
	ld   a, [bc]                                     ; $5cdb: $0a
	ld   b, $40                                      ; $5cdc: $06 $40
	dec  b                                           ; $5cde: $05
	inc  e                                           ; $5cdf: $1c
	inc  b                                           ; $5ce0: $04
	ld   bc, $1d01                                   ; $5ce1: $01 $01 $1d
	ld   b, b                                        ; $5ce4: $40
	inc  d                                           ; $5ce5: $14
	inc  bc                                          ; $5ce6: $03
	inc  d                                           ; $5ce7: $14
	ld   bc, $2802                                   ; $5ce8: $01 $02 $28
	nop                                              ; $5ceb: $00
	ld   bc, $9a6b                                   ; $5cec: $01 $6b $9a
	ld   a, l                                        ; $5cef: $7d
	sbc  [hl]                                        ; $5cf0: $9e
	ld   e, l                                        ; $5cf1: $5d
	ld   l, [hl]                                     ; $5cf2: $6e
	sub  b                                           ; $5cf3: $90
	ld   a, h                                        ; $5cf4: $7c
	ld   [hl], l                                     ; $5cf5: $75
	sub  b                                           ; $5cf6: $90
	dec  c                                           ; $5cf7: $0d
	sub  d                                           ; $5cf8: $92
	ld   h, e                                        ; $5cf9: $63
	ld   d, d                                        ; $5cfa: $52
	ld   [hl], l                                     ; $5cfb: $75
	sub  b                                           ; $5cfc: $90
	ld   a, b                                        ; $5cfd: $78
	ld   d, d                                        ; $5cfe: $52
	ld   e, c                                        ; $5cff: $59
	sub  a                                           ; $5d00: $97
	pop  bc                                          ; $5d01: $c1
	ei                                               ; $5d02: $fb
	db   $e3                                         ; $5d03: $e3
	sbc  a                                           ; $5d04: $9f
	dec  c                                           ; $5d05: $0d
	and  e                                           ; $5d06: $a3
	and  l                                           ; $5d07: $a5
	db   $ec                                         ; $5d08: $ec
	cp   d                                           ; $5d09: $ba
	ld   a, h                                        ; $5d0a: $7c
	ld   e, c                                        ; $5d0b: $59
	ld   l, a                                        ; $5d0c: $6f
	ld   a, [$000d]                                  ; $5d0d: $fa $0d $00
	ld   a, [bc]                                     ; $5d10: $0a
	ld   b, $40                                      ; $5d11: $06 $40
	dec  b                                           ; $5d13: $05
	inc  e                                           ; $5d14: $1c
	inc  b                                           ; $5d15: $04
	ld   b, $06                                      ; $5d16: $06 $06
	ld   bc, $7156                                   ; $5d18: $01 $56 $71
	ld   a, [$8c10]                                  ; $5d1b: $fa $10 $8c
	ld   l, l                                        ; $5d1e: $6d
	ld   bc, $b507                                   ; $5d1f: $01 $07 $b5
	ld   bc, $f908                                   ; $5d22: $01 $08 $f9
	dec  c                                           ; $5d25: $0d
	or   l                                           ; $5d26: $b5
	ld   sp, hl                                      ; $5d27: $f9
	db   $10                                         ; $5d28: $10
	or   l                                           ; $5d29: $b5
	ld   sp, hl                                      ; $5d2a: $f9
	db   $10                                         ; $5d2b: $10
	or   l                                           ; $5d2c: $b5
	ld   sp, hl                                      ; $5d2d: $f9
	db   $10                                         ; $5d2e: $10
	or   l                                           ; $5d2f: $b5
	rst  $38                                         ; $5d30: $ff
	rst  $38                                         ; $5d31: $ff
	ld   sp, hl                                      ; $5d32: $f9
	dec  c                                           ; $5d33: $0d
	nop                                              ; $5d34: $00
	inc  e                                           ; $5d35: $1c
	inc  b                                           ; $5d36: $04
	inc  b                                           ; $5d37: $04
	inc  b                                           ; $5d38: $04
	ld   bc, $fc54                                   ; $5d39: $01 $54 $fc
	db   $fc                                         ; $5d3c: $fc
	db   $fc                                         ; $5d3d: $fc
	db   $fc                                         ; $5d3e: $fc
	db   $fc                                         ; $5d3f: $fc
	db   $fc                                         ; $5d40: $fc
	db   $fc                                         ; $5d41: $fc
	and  c                                           ; $5d42: $a1
	rst  $38                                         ; $5d43: $ff
	rst  $38                                         ; $5d44: $ff
	dec  c                                           ; $5d45: $0d
	nop                                              ; $5d46: $00
	ld   a, [bc]                                     ; $5d47: $0a
	dec  e                                           ; $5d48: $1d
	ld   b, b                                        ; $5d49: $40
	inc  d                                           ; $5d4a: $14
	inc  bc                                          ; $5d4b: $03
	inc  d                                           ; $5d4c: $14
	ld   bc, $2903                                   ; $5d4d: $01 $03 $29
	nop                                              ; $5d50: $00
	ld   bc, $0701                                   ; $5d51: $01 $01 $07
	or   l                                           ; $5d54: $b5
	ld   bc, $7808                                   ; $5d55: $01 $08 $78
	and  c                                           ; $5d58: $a1
	ld   [hl], h                                     ; $5d59: $74
	ld   a, b                                        ; $5d5a: $78
	ld   d, d                                        ; $5d5b: $52
	sub  [hl]                                        ; $5d5c: $96
	db   $fc                                         ; $5d5d: $fc
	sbc  a                                           ; $5d5e: $9f
	dec  c                                           ; $5d5f: $0d
	ld   l, a                                        ; $5d60: $6f
	ld   d, d                                        ; $5d61: $52
	ld   [bc], a                                     ; $5d62: $02
	inc  de                                          ; $5d63: $13
	ld   l, a                                        ; $5d64: $6f
	sub  c                                           ; $5d65: $91
	and  c                                           ; $5d66: $a1
	ld   a, h                                        ; $5d67: $7c
	and  l                                           ; $5d68: $a5
	cp   c                                           ; $5d69: $b9
	pop  af                                          ; $5d6a: $f1
	db   $ed                                         ; $5d6b: $ed
	ld   a, [$900d]                                  ; $5d6c: $fa $0d $90
	ld   d, h                                        ; $5d6f: $54
	and  $e3                                         ; $5d70: $e6 $e3
	ld   l, l                                        ; $5d72: $6d
	ld   a, [$000d]                                  ; $5d73: $fa $0d $00
	ld   a, [bc]                                     ; $5d76: $0a
	ld   bc, $6152                                   ; $5d77: $01 $52 $61
	ld   d, h                                        ; $5d7a: $54
	ld   a, [$b90d]                                  ; $5d7b: $fa $0d $b9
	push hl                                          ; $5d7e: $e5
	push af                                          ; $5d7f: $f5
	sbc  $fb                                         ; $5d80: $de $fb
	db   $ed                                         ; $5d82: $ed
	sbc  a                                           ; $5d83: $9f
	dec  c                                           ; $5d84: $0d
	nop                                              ; $5d85: $00
	ld   a, [bc]                                     ; $5d86: $0a
	dec  c                                           ; $5d87: $0d
	nop                                              ; $5d88: $00
	nop                                              ; $5d89: $00
	rrca                                             ; $5d8a: $0f
	nop                                              ; $5d8b: $00
	ld   bc, $1e09                                   ; $5d8c: $01 $09 $1e
	nop                                              ; $5d8f: $00
	rrca                                             ; $5d90: $0f
	nop                                              ; $5d91: $00
	ld   bc, $0101                                   ; $5d92: $01 $01 $01
	rlca                                             ; $5d95: $07
	rst  JumpTable                                         ; $5d96: $df
	cp   d                                           ; $5d97: $ba
	xor  h                                           ; $5d98: $ac
	call nz, $01c9                                   ; $5d99: $c4 $c9 $01
	ld   [$0dfa], sp                                 ; $5d9c: $08 $fa $0d
	nop                                              ; $5d9f: $00
	ld   a, [bc]                                     ; $5da0: $0a
	inc  e                                           ; $5da1: $1c
	inc  b                                           ; $5da2: $04
	nop                                              ; $5da3: $00
	nop                                              ; $5da4: $00
	ld   bc, $ffc9                                   ; $5da5: $01 $c9 $ff
	rst  $38                                         ; $5da8: $ff
	ld   bc, $c907                                   ; $5da9: $01 $07 $c9
	rst  JumpTable                                         ; $5dac: $df
	ret                                              ; $5dad: $c9


	ld   bc, $fa08                                   ; $5dae: $01 $08 $fa
	dec  c                                           ; $5db1: $0d
	nop                                              ; $5db2: $00
	ld   a, [bc]                                     ; $5db3: $0a
	add  hl, de                                      ; $5db4: $19
	dec  b                                           ; $5db5: $05
	inc  bc                                          ; $5db6: $03
	halt                                             ; $5db7: $76
	sbc  e                                           ; $5db8: $9b
	sbc  e                                           ; $5db9: $9b
	ld   d, d                                        ; $5dba: $52
	sub  b                                           ; $5dbb: $90
	nop                                              ; $5dbc: $00
	nop                                              ; $5dbd: $00
	ret                                              ; $5dbe: $c9


	rst  JumpTable                                         ; $5dbf: $df
	ret                                              ; $5dc0: $c9


	nop                                              ; $5dc1: $00
	ld   bc, $fbc9                                   ; $5dc2: $01 $c9 $fb
	cp   d                                           ; $5dc5: $ba
	ret                                              ; $5dc6: $c9


	nop                                              ; $5dc7: $00
	ld   [bc], a                                     ; $5dc8: $02
	rlca                                             ; $5dc9: $07
	ld   e, h                                        ; $5dca: $5c
	inc  b                                           ; $5dcb: $04
	ld   [bc], a                                     ; $5dcc: $02
	inc  bc                                          ; $5dcd: $03
	ld   bc, $2000                                   ; $5dce: $01 $00 $20
	nop                                              ; $5dd1: $00
	rlca                                             ; $5dd2: $07
	ld   h, $04                                      ; $5dd3: $26 $04
	ld   [bc], a                                     ; $5dd5: $02
	inc  bc                                          ; $5dd6: $03
	ld   bc, $2001                                   ; $5dd7: $01 $01 $20
	nop                                              ; $5dda: $00
	rlca                                             ; $5ddb: $07
	ld   e, $03                                      ; $5ddc: $1e $03
	ld   [bc], a                                     ; $5dde: $02
	inc  bc                                          ; $5ddf: $03
	ld   bc, $2002                                   ; $5de0: $01 $02 $20
	nop                                              ; $5de3: $00
	ld   b, $ef                                      ; $5de4: $06 $ef
	ld   [bc], a                                     ; $5de6: $02
	inc  e                                           ; $5de7: $1c
	inc  b                                           ; $5de8: $04
	ld   bc, $1d01                                   ; $5de9: $01 $01 $1d
	ld   b, b                                        ; $5dec: $40
	inc  d                                           ; $5ded: $14
	inc  bc                                          ; $5dee: $03
	inc  d                                           ; $5def: $14
	ld   bc, $2802                                   ; $5df0: $01 $02 $28
	nop                                              ; $5df3: $00
	ld   bc, $0701                                   ; $5df4: $01 $01 $07
	ret                                              ; $5df7: $c9


	rst  JumpTable                                         ; $5df8: $df
	ret                                              ; $5df9: $c9


	ld   bc, $7d08                                   ; $5dfa: $01 $08 $7d
	ld   h, e                                        ; $5dfd: $63
	ld   [hl], c                                     ; $5dfe: $71
	ld   e, e                                        ; $5dff: $5b
	and  e                                           ; $5e00: $a3
	and  l                                           ; $5e01: $a5
	db   $ec                                         ; $5e02: $ec
	cp   d                                           ; $5e03: $ba
	ld   e, d                                        ; $5e04: $5a
	dec  c                                           ; $5e05: $0d
	ld   [bc], a                                     ; $5e06: $02
	sbc  l                                           ; $5e07: $9d
	ld   [hl], c                                     ; $5e08: $71
	ld   l, l                                        ; $5e09: $6d
	sub  b                                           ; $5e0a: $90
	and  c                                           ; $5e0b: $a1
	ld   a, e                                        ; $5e0c: $7b
	ld   a, [$a30d]                                  ; $5e0d: $fa $0d $a3
	and  l                                           ; $5e10: $a5
	db   $ec                                         ; $5e11: $ec
	cp   d                                           ; $5e12: $ba
	ld   a, h                                        ; $5e13: $7c
	ld   e, c                                        ; $5e14: $59
	ld   l, a                                        ; $5e15: $6f
	ld   a, [$000d]                                  ; $5e16: $fa $0d $00
	ld   a, [bc]                                     ; $5e19: $0a
	ld   b, $40                                      ; $5e1a: $06 $40
	dec  b                                           ; $5e1c: $05
	rrca                                             ; $5e1d: $0f
	nop                                              ; $5e1e: $00
	ld   bc, $0101                                   ; $5e1f: $01 $01 $01
	rlca                                             ; $5e22: $07
	halt                                             ; $5e23: $76
	sbc  e                                           ; $5e24: $9b
	sbc  e                                           ; $5e25: $9b
	ld   d, d                                        ; $5e26: $52
	sub  b                                           ; $5e27: $90
	ld   bc, $fa08                                   ; $5e28: $01 $08 $fa
	dec  c                                           ; $5e2b: $0d
	nop                                              ; $5e2c: $00
	ld   a, [bc]                                     ; $5e2d: $0a
	inc  e                                           ; $5e2e: $1c
	inc  b                                           ; $5e2f: $04
	nop                                              ; $5e30: $00
	nop                                              ; $5e31: $00
	ld   bc, $ff90                                   ; $5e32: $01 $90 $ff
	rst  $38                                         ; $5e35: $ff
	ld   bc, $e407                                   ; $5e36: $01 $07 $e4
	db   $e4                                         ; $5e39: $e4
	ld   bc, $fa08                                   ; $5e3a: $01 $08 $fa
	dec  c                                           ; $5e3d: $0d
	nop                                              ; $5e3e: $00
	ld   a, [bc]                                     ; $5e3f: $0a
	add  hl, de                                      ; $5e40: $19
	dec  b                                           ; $5e41: $05
	inc  bc                                          ; $5e42: $03
	db   $e4                                         ; $5e43: $e4
	rst  $28                                         ; $5e44: $ef
	reti                                             ; $5e45: $d9


	and  l                                           ; $5e46: $a5
	and  $00                                         ; $5e47: $e6 $00
	nop                                              ; $5e49: $00
	sub  b                                           ; $5e4a: $90
	ld   l, a                                        ; $5e4b: $6f
	nop                                              ; $5e4c: $00
	ld   bc, $7c90                                   ; $5e4d: $01 $90 $7c
	ld   a, h                                        ; $5e50: $7c
	ld   e, a                                        ; $5e51: $5f
	nop                                              ; $5e52: $00
	ld   [bc], a                                     ; $5e53: $02
	rlca                                             ; $5e54: $07
	or   c                                           ; $5e55: $b1
	inc  b                                           ; $5e56: $04
	ld   [bc], a                                     ; $5e57: $02
	inc  bc                                          ; $5e58: $03
	ld   bc, $2000                                   ; $5e59: $01 $00 $20
	nop                                              ; $5e5c: $00
	rlca                                             ; $5e5d: $07
	ld   e, $03                                      ; $5e5e: $1e $03
	ld   [bc], a                                     ; $5e60: $02
	inc  bc                                          ; $5e61: $03
	ld   bc, $2001                                   ; $5e62: $01 $01 $20
	nop                                              ; $5e65: $00
	rlca                                             ; $5e66: $07
	ld   e, $03                                      ; $5e67: $1e $03
	ld   [bc], a                                     ; $5e69: $02
	inc  bc                                          ; $5e6a: $03
	ld   bc, $2002                                   ; $5e6b: $01 $02 $20
	nop                                              ; $5e6e: $00
	ld   b, $ef                                      ; $5e6f: $06 $ef
	ld   [bc], a                                     ; $5e71: $02
	rrca                                             ; $5e72: $0f
	nop                                              ; $5e73: $00
	ld   bc, $0101                                   ; $5e74: $01 $01 $01
	rlca                                             ; $5e77: $07
	db   $e4                                         ; $5e78: $e4
	rst  $28                                         ; $5e79: $ef
	reti                                             ; $5e7a: $d9


	and  l                                           ; $5e7b: $a5
	and  $01                                         ; $5e7c: $e6 $01
	ld   [$0dfa], sp                                 ; $5e7e: $08 $fa $0d
	nop                                              ; $5e81: $00
	ld   a, [bc]                                     ; $5e82: $0a
	inc  e                                           ; $5e83: $1c
	inc  b                                           ; $5e84: $04
	ld   b, $06                                      ; $5e85: $06 $06
	ld   bc, $0701                                   ; $5e87: $01 $01 $07
	and  $01                                         ; $5e8a: $e6 $01
	ld   [$0df9], sp                                 ; $5e8c: $08 $f9 $0d
	nop                                              ; $5e8f: $00
	inc  e                                           ; $5e90: $1c
	inc  b                                           ; $5e91: $04
	nop                                              ; $5e92: $00
	nop                                              ; $5e93: $00
	ld   bc, $ff56                                   ; $5e94: $01 $56 $ff
	rst  $38                                         ; $5e97: $ff
	halt                                             ; $5e98: $76
	ld   bc, $9207                                   ; $5e99: $01 $07 $92
	ld   h, e                                        ; $5e9c: $63
	ld   d, d                                        ; $5e9d: $52
	ld   bc, $fa08                                   ; $5e9e: $01 $08 $fa
	dec  c                                           ; $5ea1: $0d
	nop                                              ; $5ea2: $00
	ld   a, [bc]                                     ; $5ea3: $0a
	inc  e                                           ; $5ea4: $1c
	inc  b                                           ; $5ea5: $04
	ld   b, $06                                      ; $5ea6: $06 $06
	ld   bc, $ff50                                   ; $5ea8: $01 $50 $ff
	rst  $38                                         ; $5eab: $ff
	dec  c                                           ; $5eac: $0d
	ld   h, e                                        ; $5ead: $63
	ld   [hl], c                                     ; $5eae: $71
	ld   e, e                                        ; $5eaf: $5b
	ld   d, d                                        ; $5eb0: $52
	ld   [hl], c                                     ; $5eb1: $71
	ld   l, l                                        ; $5eb2: $6d
	sub  d                                           ; $5eb3: $92
	ld   [hl], d                                     ; $5eb4: $72
	ld   l, [hl]                                     ; $5eb5: $6e
	rst  $38                                         ; $5eb6: $ff
	rst  $38                                         ; $5eb7: $ff
	dec  c                                           ; $5eb8: $0d
	nop                                              ; $5eb9: $00
	ld   a, [bc]                                     ; $5eba: $0a
	inc  e                                           ; $5ebb: $1c
	inc  b                                           ; $5ebc: $04
	ld   bc, $0101                                   ; $5ebd: $01 $01 $01
	xor  c                                           ; $5ec0: $a9
	reti                                             ; $5ec1: $d9


	reti                                             ; $5ec2: $d9


	rst  $38                                         ; $5ec3: $ff
	rst  $38                                         ; $5ec4: $ff
	dec  c                                           ; $5ec5: $0d
	and  e                                           ; $5ec6: $a3
	and  l                                           ; $5ec7: $a5
	db   $ec                                         ; $5ec8: $ec
	cp   d                                           ; $5ec9: $ba
	sbc  [hl]                                        ; $5eca: $9e
	adc  h                                           ; $5ecb: $8c
	ld   e, a                                        ; $5ecc: $5f
	ld   l, a                                        ; $5ecd: $6f
	sub  c                                           ; $5ece: $91
	ld   [hl], c                                     ; $5ecf: $71
	ld   l, l                                        ; $5ed0: $6d
	rst  $38                                         ; $5ed1: $ff
	rst  $38                                         ; $5ed2: $ff
	dec  c                                           ; $5ed3: $0d
	nop                                              ; $5ed4: $00
	ld   a, [bc]                                     ; $5ed5: $0a
	dec  e                                           ; $5ed6: $1d
	ld   b, b                                        ; $5ed7: $40
	inc  d                                           ; $5ed8: $14
	inc  bc                                          ; $5ed9: $03
	inc  d                                           ; $5eda: $14
	ld   bc, $2803                                   ; $5edb: $01 $03 $28
	nop                                              ; $5ede: $00
	ld   bc, $9075                                   ; $5edf: $01 $75 $90
	sbc  [hl]                                        ; $5ee2: $9e
	ld   h, a                                        ; $5ee3: $67
	ld   h, d                                        ; $5ee4: $62
	ld   e, l                                        ; $5ee5: $5d
	ld   l, l                                        ; $5ee6: $6d
	ld   a, h                                        ; $5ee7: $7c
	ld   h, l                                        ; $5ee8: $65
	ld   e, c                                        ; $5ee9: $59
	ld   [hl], c                                     ; $5eea: $71
	ld   l, l                                        ; $5eeb: $6d
	sub  [hl]                                        ; $5eec: $96
	sbc  a                                           ; $5eed: $9f
	dec  c                                           ; $5eee: $0d
	ld   d, b                                        ; $5eef: $50
	sbc  b                                           ; $5ef0: $98
	ld   e, d                                        ; $5ef1: $5a
	halt                                             ; $5ef2: $76
	ld   d, h                                        ; $5ef3: $54
	sbc  [hl]                                        ; $5ef4: $9e
	ld   l, a                                        ; $5ef5: $6f
	ld   d, d                                        ; $5ef6: $52
	ld   [bc], a                                     ; $5ef7: $02
	inc  de                                          ; $5ef8: $13
	ld   l, a                                        ; $5ef9: $6f
	sub  c                                           ; $5efa: $91
	and  c                                           ; $5efb: $a1
	sbc  a                                           ; $5efc: $9f
	dec  c                                           ; $5efd: $0d
	nop                                              ; $5efe: $00
	ld   a, [bc]                                     ; $5eff: $0a
	nop                                              ; $5f00: $00
	ld   bc, $fb50                                   ; $5f01: $01 $50 $fb
	sbc  [hl]                                        ; $5f04: $9e
	ld   l, l                                        ; $5f05: $6d
	ld   a, h                                        ; $5f06: $7c
	ld   h, l                                        ; $5f07: $65
	ld   e, c                                        ; $5f08: $59
	ld   [hl], c                                     ; $5f09: $71
	ld   l, l                                        ; $5f0a: $6d
	sbc  a                                           ; $5f0b: $9f
	dec  c                                           ; $5f0c: $0d
	ld   d, b                                        ; $5f0d: $50
	sbc  b                                           ; $5f0e: $98
	ld   e, d                                        ; $5f0f: $5a
	halt                                             ; $5f10: $76
	ld   d, h                                        ; $5f11: $54
	sbc  [hl]                                        ; $5f12: $9e
	ld   l, a                                        ; $5f13: $6f
	ld   d, d                                        ; $5f14: $52
	ld   [bc], a                                     ; $5f15: $02
	inc  de                                          ; $5f16: $13
	ld   l, a                                        ; $5f17: $6f
	sub  c                                           ; $5f18: $91
	and  c                                           ; $5f19: $a1
	sbc  a                                           ; $5f1a: $9f
	dec  c                                           ; $5f1b: $0d
	nop                                              ; $5f1c: $00
	ld   a, [bc]                                     ; $5f1d: $0a
	nop                                              ; $5f1e: $00
	rrca                                             ; $5f1f: $0f
	nop                                              ; $5f20: $00
	ld   bc, $6601                                   ; $5f21: $01 $01 $66
	sub  c                                           ; $5f24: $91
	ld   d, b                                        ; $5f25: $50
	sbc  [hl]                                        ; $5f26: $9e
	or   b                                           ; $5f27: $b0
	and  l                                           ; $5f28: $a5
	cp   e                                           ; $5f29: $bb
	and  b                                           ; $5f2a: $a0
	sub  d                                           ; $5f2b: $92
	sbc  e                                           ; $5f2c: $9b
	ld   d, h                                        ; $5f2d: $54
	sbc  a                                           ; $5f2e: $9f
	dec  c                                           ; $5f2f: $0d
	nop                                              ; $5f30: $00
	ld   a, [bc]                                     ; $5f31: $0a
	inc  e                                           ; $5f32: $1c
	inc  b                                           ; $5f33: $04
	ld   bc, $0101                                   ; $5f34: $01 $01 $01
	ld   d, h                                        ; $5f37: $54
	and  c                                           ; $5f38: $a1
	ld   a, [$660d]                                  ; $5f39: $fa $0d $66
	sub  c                                           ; $5f3c: $91
	sbc  [hl]                                        ; $5f3d: $9e
	and  e                                           ; $5f3e: $a3
	and  l                                           ; $5f3f: $a5
	db   $ec                                         ; $5f40: $ec
	cp   d                                           ; $5f41: $ba
	ld   e, d                                        ; $5f42: $5a
	dec  c                                           ; $5f43: $0d
	sub  b                                           ; $5f44: $90
	and  c                                           ; $5f45: $a1
	ld   l, [hl]                                     ; $5f46: $6e
	ld   d, d                                        ; $5f47: $52
	ld   l, [hl]                                     ; $5f48: $6e
	ld   h, a                                        ; $5f49: $67
	ld   a, [$000d]                                  ; $5f4a: $fa $0d $00
	ld   a, [bc]                                     ; $5f4d: $0a
	inc  e                                           ; $5f4e: $1c
	inc  b                                           ; $5f4f: $04
	nop                                              ; $5f50: $00
	nop                                              ; $5f51: $00
	ld   bc, $0701                                   ; $5f52: $01 $01 $07
	ld   a, b                                        ; $5f55: $78
	ld   h, e                                        ; $5f56: $63
	ld   e, a                                        ; $5f57: $5f
	ld   a, l                                        ; $5f58: $7d
	db   $d3                                         ; $5f59: $d3
	ret                                              ; $5f5a: $c9


	ld   a, h                                        ; $5f5b: $7c
	ld   l, l                                        ; $5f5c: $6d
	adc  a                                           ; $5f5d: $8f
	ld   a, b                                        ; $5f5e: $78
	sub  a                                           ; $5f5f: $97
	ld   l, b                                        ; $5f60: $68
	ld   bc, $0d08                                   ; $5f61: $01 $08 $0d
	halt                                             ; $5f64: $76
	ld   d, d                                        ; $5f65: $52
	ld   d, h                                        ; $5f66: $54
	ld   h, c                                        ; $5f67: $61
	halt                                             ; $5f68: $76
	sbc  l                                           ; $5f69: $9d
	ld   h, h                                        ; $5f6a: $64
	ld   [hl], l                                     ; $5f6b: $75
	sbc  [hl]                                        ; $5f6c: $9e
	dec  c                                           ; $5f6d: $0d
	nop                                              ; $5f6e: $00
	ld   a, [bc]                                     ; $5f6f: $0a
	ld   bc, $0701                                   ; $5f70: $01 $01 $07
	ld   a, b                                        ; $5f73: $78
	ld   h, e                                        ; $5f74: $63
	ld   e, a                                        ; $5f75: $5f
	ld   bc, $7d08                                   ; $5f76: $01 $08 $7d
	dec  c                                           ; $5f79: $0d
	ld   l, [hl]                                     ; $5f7a: $6e
	sbc  d                                           ; $5f7b: $9a
	ld   a, h                                        ; $5f7c: $7c
	ld   l, l                                        ; $5f7d: $6d
	adc  a                                           ; $5f7e: $8f
	ld   a, c                                        ; $5f7f: $79
	ld   e, c                                        ; $5f80: $59
	ld   e, a                                        ; $5f81: $5f
	sbc  c                                           ; $5f82: $99
	ld   a, h                                        ; $5f83: $7c
	ld   sp, hl                                      ; $5f84: $f9
	dec  c                                           ; $5f85: $0d
	nop                                              ; $5f86: $00
	ld   a, [bc]                                     ; $5f87: $0a
	add  hl, de                                      ; $5f88: $19
	dec  b                                           ; $5f89: $05
	inc  bc                                          ; $5f8a: $03
	inc  bc                                          ; $5f8b: $03
	sub  h                                           ; $5f8c: $94
	inc  b                                           ; $5f8d: $04
	sbc  [hl]                                        ; $5f8e: $9e
	ld   e, c                                        ; $5f8f: $59
	ld   a, b                                        ; $5f90: $78
	ld   sp, hl                                      ; $5f91: $f9
	nop                                              ; $5f92: $00
	nop                                              ; $5f93: $00
	ld   b, $3a                                      ; $5f94: $06 $3a
	inc  bc                                          ; $5f96: $03
	sub  d                                           ; $5f97: $92
	ld   e, c                                        ; $5f98: $59
	ld   a, b                                        ; $5f99: $78
	ld   sp, hl                                      ; $5f9a: $f9
	nop                                              ; $5f9b: $00
	ld   bc, $ea04                                   ; $5f9c: $01 $04 $ea
	inc  bc                                          ; $5f9f: $03
	add  d                                           ; $5fa0: $82
	ld   e, c                                        ; $5fa1: $59
	ld   a, b                                        ; $5fa2: $78
	ld   sp, hl                                      ; $5fa3: $f9
	nop                                              ; $5fa4: $00
	ld   [bc], a                                     ; $5fa5: $02
	rlca                                             ; $5fa6: $07
	inc  bc                                          ; $5fa7: $03
	ld   b, $02                                      ; $5fa8: $06 $02
	inc  bc                                          ; $5faa: $03
	ld   bc, $2000                                   ; $5fab: $01 $00 $20
	nop                                              ; $5fae: $00
	rlca                                             ; $5faf: $07
	dec  hl                                          ; $5fb0: $2b
	ld   b, $02                                      ; $5fb1: $06 $02
	inc  bc                                          ; $5fb3: $03
	ld   bc, $2001                                   ; $5fb4: $01 $01 $20
	nop                                              ; $5fb7: $00
	rlca                                             ; $5fb8: $07
	dec  hl                                          ; $5fb9: $2b
	ld   b, $02                                      ; $5fba: $06 $02
	inc  bc                                          ; $5fbc: $03
	ld   bc, $2002                                   ; $5fbd: $01 $02 $20
	nop                                              ; $5fc0: $00
	ld   b, $2b                                      ; $5fc1: $06 $2b
	ld   b, $1c                                      ; $5fc3: $06 $1c
	inc  b                                           ; $5fc5: $04
	ld   bc, $1401                                   ; $5fc6: $01 $01 $14
	dec  de                                          ; $5fc9: $1b
	ld   bc, $d501                                   ; $5fca: $01 $01 $d5
	push af                                          ; $5fcd: $f5
	sbc  $fb                                         ; $5fce: $de $fb
	push af                                          ; $5fd0: $f5
	ld   a, [$660d]                                  ; $5fd1: $fa $0d $66
	add  h                                           ; $5fd4: $84
	and  c                                           ; $5fd5: $a1
	ld   a, h                                        ; $5fd6: $7c
	ld   l, l                                        ; $5fd7: $6d
	adc  a                                           ; $5fd8: $8f
	ld   l, [hl]                                     ; $5fd9: $6e
	sub  [hl]                                        ; $5fda: $96
	ei                                               ; $5fdb: $fb
	sbc  a                                           ; $5fdc: $9f
	dec  c                                           ; $5fdd: $0d
	nop                                              ; $5fde: $00
	ld   a, [bc]                                     ; $5fdf: $0a
	dec  b                                           ; $5fe0: $05
	ld   b, b                                        ; $5fe1: $40
	rst  $38                                         ; $5fe2: $ff
	inc  bc                                          ; $5fe3: $03
	rst  $38                                         ; $5fe4: $ff
	ld   bc, $2801                                   ; $5fe5: $01 $01 $28
	nop                                              ; $5fe8: $00
	ld   b, $49                                      ; $5fe9: $06 $49
	ld   b, $1c                                      ; $5feb: $06 $1c
	inc  b                                           ; $5fed: $04
	nop                                              ; $5fee: $00
	nop                                              ; $5fef: $00
	inc  d                                           ; $5ff0: $14
	inc  e                                           ; $5ff1: $1c
	ld   bc, $d701                                   ; $5ff2: $01 $01 $d7
	ei                                               ; $5ff5: $fb
	ld   a, [$690d]                                  ; $5ff6: $fa $0d $69
	ld   d, d                                        ; $5ff9: $52
	ld   e, c                                        ; $5ffa: $59
	ld   d, d                                        ; $5ffb: $52
	ld   a, l                                        ; $5ffc: $7d
	ld   bc, $6607                                   ; $5ffd: $01 $07 $66
	add  h                                           ; $6000: $84
	and  c                                           ; $6001: $a1
	ld   bc, $6e08                                   ; $6002: $01 $08 $6e
	sub  [hl]                                        ; $6005: $96
	sbc  a                                           ; $6006: $9f
	dec  c                                           ; $6007: $0d
	nop                                              ; $6008: $00
	ld   a, [bc]                                     ; $6009: $0a
	inc  e                                           ; $600a: $1c
	inc  b                                           ; $600b: $04
	nop                                              ; $600c: $00
	nop                                              ; $600d: $00
	ld   bc, $5c72                                   ; $600e: $01 $72 $5c
	ld   a, h                                        ; $6011: $7c
	sub  b                                           ; $6012: $90
	and  c                                           ; $6013: $a1
	ld   l, [hl]                                     ; $6014: $6e
	ld   d, d                                        ; $6015: $52
	sbc  a                                           ; $6016: $9f
	dec  c                                           ; $6017: $0d
	nop                                              ; $6018: $00
	ld   a, [bc]                                     ; $6019: $0a
	ld   bc, $7858                                   ; $601a: $01 $58 $78
	ld   h, [hl]                                     ; $601d: $66
	ld   e, b                                        ; $601e: $58
	sub  b                                           ; $601f: $90
	ld   h, e                                        ; $6020: $63
	ld   a, h                                        ; $6021: $7c
	dec  c                                           ; $6022: $0d
	ld   bc, $5b07                                   ; $6023: $01 $07 $5b
	and  c                                           ; $6026: $a1
	ld   bc, $7608                                   ; $6027: $01 $08 $76
	ld   bc, $5c07                                   ; $602a: $01 $07 $5c
	and  c                                           ; $602d: $a1
	ld   bc, $9f08                                   ; $602e: $01 $08 $9f
	dec  c                                           ; $6031: $0d
	ld   e, b                                        ; $6032: $58
	ld   e, b                                        ; $6033: $58
	ld   e, e                                        ; $6034: $5b
	ld   d, d                                        ; $6035: $52
	ld   a, h                                        ; $6036: $7c
	ld   a, l                                        ; $6037: $7d
	ld   [hl], a                                     ; $6038: $77
	ld   [hl], c                                     ; $6039: $71
	ld   l, a                                        ; $603a: $6f
	ld   sp, hl                                      ; $603b: $f9
	dec  c                                           ; $603c: $0d
	nop                                              ; $603d: $00
	ld   a, [bc]                                     ; $603e: $0a
	add  hl, de                                      ; $603f: $19
	dec  b                                           ; $6040: $05
	inc  bc                                          ; $6041: $03
	ld   [bc], a                                     ; $6042: $02
	ld   l, h                                        ; $6043: $6c
	ld   e, c                                        ; $6044: $59
	ld   a, b                                        ; $6045: $78
	ld   sp, hl                                      ; $6046: $f9
	nop                                              ; $6047: $00
	nop                                              ; $6048: $00
	ld   [bc], a                                     ; $6049: $02
	dec  sp                                          ; $604a: $3b
	ld   e, c                                        ; $604b: $59
	ld   a, b                                        ; $604c: $78
	ld   sp, hl                                      ; $604d: $f9
	nop                                              ; $604e: $00
	ld   bc, $7858                                   ; $604f: $01 $58 $78
	ld   h, [hl]                                     ; $6052: $66
	ld   h, [hl]                                     ; $6053: $66
	sub  c                                           ; $6054: $91
	ld   a, b                                        ; $6055: $78
	ld   d, d                                        ; $6056: $52
	ld   e, c                                        ; $6057: $59
	ld   sp, hl                                      ; $6058: $f9
	nop                                              ; $6059: $00
	ld   [bc], a                                     ; $605a: $02
	rlca                                             ; $605b: $07
	cp   b                                           ; $605c: $b8
	ld   b, $02                                      ; $605d: $06 $02
	inc  bc                                          ; $605f: $03
	ld   bc, $2000                                   ; $6060: $01 $00 $20
	nop                                              ; $6063: $00
	rlca                                             ; $6064: $07
	db   $fc                                         ; $6065: $fc
	ld   b, $02                                      ; $6066: $06 $02
	inc  bc                                          ; $6068: $03
	ld   bc, $2001                                   ; $6069: $01 $01 $20
	nop                                              ; $606c: $00
	rlca                                             ; $606d: $07
	db   $fc                                         ; $606e: $fc
	ld   b, $02                                      ; $606f: $06 $02
	inc  bc                                          ; $6071: $03
	ld   bc, $2002                                   ; $6072: $01 $02 $20
	nop                                              ; $6075: $00
	ld   b, $fc                                      ; $6076: $06 $fc
	ld   b, $1c                                      ; $6078: $06 $1c
	inc  b                                           ; $607a: $04
	ld   bc, $1401                                   ; $607b: $01 $01 $14
	dec  de                                          ; $607e: $1b
	ld   bc, $d501                                   ; $607f: $01 $01 $d5
	push af                                          ; $6082: $f5
	sbc  $fb                                         ; $6083: $de $fb
	push af                                          ; $6085: $f5
	ld   a, [$000d]                                  ; $6086: $fa $0d $00
	ld   a, [bc]                                     ; $6089: $0a
	ld   bc, $0701                                   ; $608a: $01 $01 $07
	ld   e, e                                        ; $608d: $5b
	and  c                                           ; $608e: $a1
	ld   bc, $7c08                                   ; $608f: $01 $08 $7c
	adc  c                                           ; $6092: $89
	ld   d, h                                        ; $6093: $54
	ld   e, d                                        ; $6094: $5a
	ld   e, b                                        ; $6095: $58
	sub  b                                           ; $6096: $90
	ld   d, d                                        ; $6097: $52
	ld   e, c                                        ; $6098: $59
	sub  a                                           ; $6099: $97
	dec  c                                           ; $609a: $0d
	ld   bc, $5c07                                   ; $609b: $01 $07 $5c
	and  c                                           ; $609e: $a1
	ld   bc, $7c08                                   ; $609f: $01 $08 $7c
	adc  c                                           ; $60a2: $89
	ld   d, h                                        ; $60a3: $54
	ld   e, d                                        ; $60a4: $5a
	dec  c                                           ; $60a5: $0d
	ld   e, b                                        ; $60a6: $58
	ld   e, b                                        ; $60a7: $58
	ld   e, e                                        ; $60a8: $5b
	ld   d, d                                        ; $60a9: $52
	and  c                                           ; $60aa: $a1
	ld   l, [hl]                                     ; $60ab: $6e
	sub  [hl]                                        ; $60ac: $96
	sbc  a                                           ; $60ad: $9f
	dec  c                                           ; $60ae: $0d
	nop                                              ; $60af: $00
	ld   a, [bc]                                     ; $60b0: $0a
	dec  b                                           ; $60b1: $05
	ld   b, b                                        ; $60b2: $40
	rst  $38                                         ; $60b3: $ff
	inc  bc                                          ; $60b4: $03
	rst  $38                                         ; $60b5: $ff
	ld   bc, $2801                                   ; $60b6: $01 $01 $28
	nop                                              ; $60b9: $00
	ld   b, $1a                                      ; $60ba: $06 $1a
	rlca                                             ; $60bc: $07
	inc  e                                           ; $60bd: $1c
	inc  b                                           ; $60be: $04
	nop                                              ; $60bf: $00
	nop                                              ; $60c0: $00
	inc  d                                           ; $60c1: $14
	inc  e                                           ; $60c2: $1c
	ld   bc, $d701                                   ; $60c3: $01 $01 $d7
	ei                                               ; $60c6: $fb
	ld   a, [$690d]                                  ; $60c7: $fa $0d $69
	ld   d, d                                        ; $60ca: $52
	ld   e, c                                        ; $60cb: $59
	ld   d, d                                        ; $60cc: $52
	ld   a, l                                        ; $60cd: $7d
	sbc  [hl]                                        ; $60ce: $9e
	ld   bc, $5c07                                   ; $60cf: $01 $07 $5c
	and  c                                           ; $60d2: $a1
	ld   bc, $6e08                                   ; $60d3: $01 $08 $6e
	sub  [hl]                                        ; $60d6: $96
	sbc  a                                           ; $60d7: $9f
	dec  c                                           ; $60d8: $0d
	nop                                              ; $60d9: $00
	ld   a, [bc]                                     ; $60da: $0a
	inc  e                                           ; $60db: $1c
	inc  b                                           ; $60dc: $04
	nop                                              ; $60dd: $00
	nop                                              ; $60de: $00
	ld   bc, $5263                                   ; $60df: $01 $63 $52
	ld   h, d                                        ; $60e2: $62
	ld   a, h                                        ; $60e3: $7c
	sub  b                                           ; $60e4: $90
	and  c                                           ; $60e5: $a1
	ld   l, [hl]                                     ; $60e6: $6e
	ld   d, d                                        ; $60e7: $52
	sbc  a                                           ; $60e8: $9f
	dec  c                                           ; $60e9: $0d
	nop                                              ; $60ea: $00
	ld   a, [bc]                                     ; $60eb: $0a
	ld   bc, $0701                                   ; $60ec: $01 $01 $07
	ld   e, l                                        ; $60ef: $5d
	sbc  e                                           ; $60f0: $9b
	ld   e, d                                        ; $60f1: $5a
	ld   a, e                                        ; $60f2: $7b
	ld   bc, $7d08                                   ; $60f3: $01 $08 $7d
	ld   [hl], h                                     ; $60f6: $74
	ld   [hl], d                                     ; $60f7: $72
	sbc  a                                           ; $60f8: $9f
	dec  c                                           ; $60f9: $0d
	ld   h, [hl]                                     ; $60fa: $66
	sub  c                                           ; $60fb: $91
	ld   d, b                                        ; $60fc: $50
	ld   bc, $5007                                   ; $60fd: $01 $07 $50
	ld   e, c                                        ; $6100: $59
	ld   e, d                                        ; $6101: $5a
	ld   a, e                                        ; $6102: $7b
	ld   bc, $7d08                                   ; $6103: $01 $08 $7d
	ld   sp, hl                                      ; $6106: $f9
	dec  c                                           ; $6107: $0d
	nop                                              ; $6108: $00
	ld   a, [bc]                                     ; $6109: $0a
	add  hl, de                                      ; $610a: $19
	dec  b                                           ; $610b: $05
	inc  bc                                          ; $610c: $03
	db   $fd                                         ; $610d: $fd
	dec  b                                           ; $610e: $05
	db   $f4                                         ; $610f: $f4
	cp   $59                                         ; $6110: $fe $59
	ld   a, b                                        ; $6112: $78
	ld   sp, hl                                      ; $6113: $f9
	nop                                              ; $6114: $00
	nop                                              ; $6115: $00
	db   $fd                                         ; $6116: $fd
	ld   [bc], a                                     ; $6117: $02
	ld   l, h                                        ; $6118: $6c
	cp   $59                                         ; $6119: $fe $59
	ld   a, b                                        ; $611b: $78
	ld   sp, hl                                      ; $611c: $f9
	nop                                              ; $611d: $00
	ld   bc, $02fd                                   ; $611e: $01 $fd $02
	dec  sp                                          ; $6121: $3b
	cp   $59                                         ; $6122: $fe $59
	ld   a, b                                        ; $6124: $78
	ld   sp, hl                                      ; $6125: $f9
	nop                                              ; $6126: $00
	ld   [bc], a                                     ; $6127: $02
	rlca                                             ; $6128: $07
	add  l                                           ; $6129: $85
	rlca                                             ; $612a: $07
	ld   [bc], a                                     ; $612b: $02
	inc  bc                                          ; $612c: $03
	ld   bc, $2000                                   ; $612d: $01 $00 $20
	nop                                              ; $6130: $00
	rlca                                             ; $6131: $07
	jp   $0207                                       ; $6132: $c3 $07 $02


	inc  bc                                          ; $6135: $03
	ld   bc, $2001                                   ; $6136: $01 $01 $20
	nop                                              ; $6139: $00
	rlca                                             ; $613a: $07
	jp   $0207                                       ; $613b: $c3 $07 $02


	inc  bc                                          ; $613e: $03
	ld   bc, $2002                                   ; $613f: $01 $02 $20
	nop                                              ; $6142: $00
	ld   b, $c3                                      ; $6143: $06 $c3
	rlca                                             ; $6145: $07
	inc  e                                           ; $6146: $1c
	inc  b                                           ; $6147: $04
	ld   bc, $1401                                   ; $6148: $01 $01 $14
	dec  de                                          ; $614b: $1b
	ld   bc, $d501                                   ; $614c: $01 $01 $d5
	push af                                          ; $614f: $f5
	sbc  $fb                                         ; $6150: $de $fb
	push af                                          ; $6152: $f5
	ld   a, [$6f0d]                                  ; $6153: $fa $0d $6f
	ld   a, b                                        ; $6156: $78
	adc  l                                           ; $6157: $8d
	ld   a, c                                        ; $6158: $79
	ld   e, e                                        ; $6159: $5b
	and  c                                           ; $615a: $a1
	ld   a, l                                        ; $615b: $7d
	ld   bc, $6107                                   ; $615c: $01 $07 $61
	ld   e, d                                        ; $615f: $5a
	ld   a, e                                        ; $6160: $7b
	ld   bc, $7508                                   ; $6161: $01 $08 $75
	dec  c                                           ; $6164: $0d
	ld   e, h                                        ; $6165: $5c
	and  c                                           ; $6166: $a1
	ld   a, l                                        ; $6167: $7d
	ld   bc, $6507                                   ; $6168: $01 $07 $65
	sbc  e                                           ; $616b: $9b
	ld   e, d                                        ; $616c: $5a
	ld   a, e                                        ; $616d: $7b
	ld   bc, $7808                                   ; $616e: $01 $08 $78
	and  c                                           ; $6171: $a1
	ld   l, [hl]                                     ; $6172: $6e
	sub  [hl]                                        ; $6173: $96
	sbc  a                                           ; $6174: $9f
	dec  c                                           ; $6175: $0d
	nop                                              ; $6176: $00
	ld   a, [bc]                                     ; $6177: $0a
	dec  b                                           ; $6178: $05
	ld   b, b                                        ; $6179: $40
	rst  $38                                         ; $617a: $ff
	inc  bc                                          ; $617b: $03
	rst  $38                                         ; $617c: $ff
	ld   bc, $2801                                   ; $617d: $01 $01 $28
	nop                                              ; $6180: $00
	ld   b, $e2                                      ; $6181: $06 $e2
	rlca                                             ; $6183: $07
	inc  e                                           ; $6184: $1c
	inc  b                                           ; $6185: $04
	nop                                              ; $6186: $00
	nop                                              ; $6187: $00
	inc  d                                           ; $6188: $14
	inc  e                                           ; $6189: $1c
	ld   bc, $d701                                   ; $618a: $01 $01 $d7
	ei                                               ; $618d: $fb
	ld   a, [$690d]                                  ; $618e: $fa $0d $69
	ld   d, d                                        ; $6191: $52
	ld   e, c                                        ; $6192: $59
	ld   d, d                                        ; $6193: $52
	ld   a, l                                        ; $6194: $7d
	sbc  [hl]                                        ; $6195: $9e
	ld   bc, $7707                                   ; $6196: $01 $07 $77
	ld   d, h                                        ; $6199: $54
	ld   bc, $7508                                   ; $619a: $01 $08 $75
	ld   h, l                                        ; $619d: $65
	ld   l, l                                        ; $619e: $6d
	sbc  a                                           ; $619f: $9f
	dec  c                                           ; $61a0: $0d
	nop                                              ; $61a1: $00
	ld   a, [bc]                                     ; $61a2: $0a
	rlca                                             ; $61a3: $07
	add  hl, de                                      ; $61a4: $19
	ld   [$ff03], sp                                 ; $61a5: $08 $03 $ff
	ld   bc, $2301                                   ; $61a8: $01 $01 $23
	nop                                              ; $61ab: $00
	inc  e                                           ; $61ac: $1c
	inc  b                                           ; $61ad: $04
	ld   bc, $1d01                                   ; $61ae: $01 $01 $1d
	ld   b, b                                        ; $61b1: $40
	inc  d                                           ; $61b2: $14
	inc  bc                                          ; $61b3: $03
	inc  d                                           ; $61b4: $14
	ld   bc, $2803                                   ; $61b5: $01 $03 $28
	nop                                              ; $61b8: $00
	ld   bc, $6763                                   ; $61b9: $01 $63 $67
	ld   e, d                                        ; $61bc: $5a
	sbc  [hl]                                        ; $61bd: $9e
	ld   l, a                                        ; $61be: $6f
	ld   d, d                                        ; $61bf: $52
	ld   [bc], a                                     ; $61c0: $02
	inc  de                                          ; $61c1: $13
	ld   l, a                                        ; $61c2: $6f
	sub  c                                           ; $61c3: $91
	and  c                                           ; $61c4: $a1
	ld   l, [hl]                                     ; $61c5: $6e
	ld   a, e                                        ; $61c6: $7b
	sbc  a                                           ; $61c7: $9f
	dec  c                                           ; $61c8: $0d
	ld   d, b                                        ; $61c9: $50
	ei                                               ; $61ca: $fb
	sbc  [hl]                                        ; $61cb: $9e
	ld   e, b                                        ; $61cc: $58
	sub  b                                           ; $61cd: $90
	ld   h, l                                        ; $61ce: $65
	sbc  e                                           ; $61cf: $9b
	ld   e, c                                        ; $61d0: $59
	ld   [hl], c                                     ; $61d1: $71
	ld   l, l                                        ; $61d2: $6d
	sbc  a                                           ; $61d3: $9f
	dec  c                                           ; $61d4: $0d
	nop                                              ; $61d5: $00
	ld   a, [bc]                                     ; $61d6: $0a
	ld   b, $4e                                      ; $61d7: $06 $4e
	ld   [$041c], sp                                 ; $61d9: $08 $1c $04
	inc  bc                                          ; $61dc: $03
	inc  bc                                          ; $61dd: $03
	ld   bc, $976e                                   ; $61de: $01 $6e $97
	ld   h, l                                        ; $61e1: $65
	ld   a, b                                        ; $61e2: $78
	ld   d, d                                        ; $61e3: $52
	ld   a, b                                        ; $61e4: $78
	ld   c, a                                        ; $61e5: $4f
	sbc  [hl]                                        ; $61e6: $9e
	dec  c                                           ; $61e7: $0d
	ld   l, a                                        ; $61e8: $6f
	ld   d, d                                        ; $61e9: $52
	ld   [bc], a                                     ; $61ea: $02
	inc  de                                          ; $61eb: $13
	ld   l, a                                        ; $61ec: $6f
	sub  c                                           ; $61ed: $91
	and  c                                           ; $61ee: $a1
	sbc  a                                           ; $61ef: $9f
	dec  c                                           ; $61f0: $0d
	nop                                              ; $61f1: $00
	inc  e                                           ; $61f2: $1c
	inc  b                                           ; $61f3: $04
	nop                                              ; $61f4: $00
	nop                                              ; $61f5: $00
	ld   bc, $9075                                   ; $61f6: $01 $75 $90
	sbc  [hl]                                        ; $61f9: $9e
	ld   e, b                                        ; $61fa: $58
	sub  b                                           ; $61fb: $90
	ld   h, l                                        ; $61fc: $65
	sbc  e                                           ; $61fd: $9b
	ld   e, c                                        ; $61fe: $59
	ld   [hl], c                                     ; $61ff: $71
	ld   l, l                                        ; $6200: $6d
	sbc  a                                           ; $6201: $9f
	dec  c                                           ; $6202: $0d
	nop                                              ; $6203: $00
	ld   a, [bc]                                     ; $6204: $0a
	dec  e                                           ; $6205: $1d
	ld   b, b                                        ; $6206: $40
	inc  d                                           ; $6207: $14
	inc  bc                                          ; $6208: $03
	inc  d                                           ; $6209: $14
	ld   bc, $2801                                   ; $620a: $01 $01 $28
	nop                                              ; $620d: $00
	nop                                              ; $620e: $00
	ld   bc, $9850                                   ; $620f: $01 $50 $98
	ld   e, d                                        ; $6212: $5a
	halt                                             ; $6213: $76
	ld   d, h                                        ; $6214: $54
	sbc  [hl]                                        ; $6215: $9e
	ld   l, a                                        ; $6216: $6f
	ld   d, d                                        ; $6217: $52
	ld   [bc], a                                     ; $6218: $02
	inc  de                                          ; $6219: $13
	ld   l, a                                        ; $621a: $6f
	sub  c                                           ; $621b: $91
	and  c                                           ; $621c: $a1
	sbc  a                                           ; $621d: $9f
	dec  c                                           ; $621e: $0d
	nop                                              ; $621f: $00
	ld   a, [bc]                                     ; $6220: $0a
	nop                                              ; $6221: $00
	rrca                                             ; $6222: $0f
	nop                                              ; $6223: $00
	ld   bc, $6601                                   ; $6224: $01 $01 $66
	sub  c                                           ; $6227: $91
	ld   d, b                                        ; $6228: $50
	sbc  [hl]                                        ; $6229: $9e
	ld   h, [hl]                                     ; $622a: $66
	sub  c                                           ; $622b: $91
	and  c                                           ; $622c: $a1
	ld   e, a                                        ; $622d: $5f
	and  c                                           ; $622e: $a1
	and  b                                           ; $622f: $a0
	ld   h, l                                        ; $6230: $65
	sub  [hl]                                        ; $6231: $96
	ld   d, h                                        ; $6232: $54
	sbc  a                                           ; $6233: $9f
	dec  c                                           ; $6234: $0d
	nop                                              ; $6235: $00
	ld   a, [bc]                                     ; $6236: $0a
	dec  b                                           ; $6237: $05
	add  b                                           ; $6238: $80
	ld   b, l                                        ; $6239: $45
	ld   bc, $0001                                   ; $623a: $01 $01 $00
	rrca                                             ; $623d: $0f
	inc  b                                           ; $623e: $04
	ld   bc, $5401                                   ; $623f: $01 $01 $54
	and  c                                           ; $6242: $a1
	ld   a, [$000d]                                  ; $6243: $fa $0d $00
	dec  b                                           ; $6246: $05
	ld   b, b                                        ; $6247: $40
	rst  $38                                         ; $6248: $ff
	ld   bc, $0005                                   ; $6249: $01 $05 $00
	ld   bc, $9166                                   ; $624c: $01 $66 $91
	sbc  [hl]                                        ; $624f: $9e
	ld   d, d                                        ; $6250: $52
	ld   e, l                                        ; $6251: $5d
	sub  [hl]                                        ; $6252: $96
	rst  $38                                         ; $6253: $ff
	rst  $38                                         ; $6254: $ff
	dec  c                                           ; $6255: $0d
	ld   h, [hl]                                     ; $6256: $66
	sub  c                                           ; $6257: $91
	and  c                                           ; $6258: $a1
	ld   e, a                                        ; $6259: $5f
	and  c                                           ; $625a: $a1
	adc  e                                           ; $625b: $8b
	and  c                                           ; $625c: $a1
	ld   a, [$000d]                                  ; $625d: $fa $0d $00
	ld   a, [bc]                                     ; $6260: $0a
	rrca                                             ; $6261: $0f
	nop                                              ; $6262: $00
	ld   bc, $0101                                   ; $6263: $01 $01 $01
	inc  bc                                          ; $6266: $03
	and  e                                           ; $6267: $a3
	and  l                                           ; $6268: $a5
	db   $ec                                         ; $6269: $ec
	cp   d                                           ; $626a: $ba
	ld   a, l                                        ; $626b: $7d
	rst  $38                                         ; $626c: $ff
	rst  $38                                         ; $626d: $ff
	jp   nc, $6efb                                   ; $626e: $d2 $fb $6e

	ld   bc, $0d04                                   ; $6271: $01 $04 $0d
	nop                                              ; $6274: $00
	ld   a, [bc]                                     ; $6275: $0a
	add  hl, de                                      ; $6276: $19
	dec  b                                           ; $6277: $05
	inc  bc                                          ; $6278: $03
	or   c                                           ; $6279: $b1
	ei                                               ; $627a: $fb
	and  b                                           ; $627b: $a0
	inc  bc                                          ; $627c: $03
	add  b                                           ; $627d: $80
	ld   h, a                                        ; $627e: $67
	nop                                              ; $627f: $00
	nop                                              ; $6280: $00
	jp   nz, $aee9                                   ; $6281: $c2 $e9 $ae

	and  b                                           ; $6284: $a0
	inc  bc                                          ; $6285: $03
	add  b                                           ; $6286: $80
	ld   h, a                                        ; $6287: $67
	nop                                              ; $6288: $00
	ld   bc, $fbd2                                   ; $6289: $01 $d2 $fb
	and  b                                           ; $628c: $a0
	inc  bc                                          ; $628d: $03
	add  b                                           ; $628e: $80
	ld   h, a                                        ; $628f: $67
	nop                                              ; $6290: $00
	ld   [bc], a                                     ; $6291: $02
	rlca                                             ; $6292: $07
	rst  $28                                         ; $6293: $ef
	ld   [$0302], sp                                 ; $6294: $08 $02 $03
	ld   bc, $2000                                   ; $6297: $01 $00 $20
	nop                                              ; $629a: $00
	rlca                                             ; $629b: $07
	inc  e                                           ; $629c: $1c
	add  hl, bc                                      ; $629d: $09
	ld   [bc], a                                     ; $629e: $02
	inc  bc                                          ; $629f: $03
	ld   bc, $2001                                   ; $62a0: $01 $01 $20
	nop                                              ; $62a3: $00
	rlca                                             ; $62a4: $07
	ld   b, [hl]                                     ; $62a5: $46
	add  hl, bc                                      ; $62a6: $09
	ld   [bc], a                                     ; $62a7: $02
	inc  bc                                          ; $62a8: $03
	ld   bc, $2002                                   ; $62a9: $01 $02 $20
	nop                                              ; $62ac: $00
	ld   b, $6f                                      ; $62ad: $06 $6f
	add  hl, bc                                      ; $62af: $09
	rrca                                             ; $62b0: $0f
	nop                                              ; $62b1: $00
	ld   bc, $b101                                   ; $62b2: $01 $01 $b1
	ei                                               ; $62b5: $fb
	ld   l, [hl]                                     ; $62b6: $6e
	ld   a, [$000d]                                  ; $62b7: $fa $0d $00
	ld   a, [bc]                                     ; $62ba: $0a
	inc  e                                           ; $62bb: $1c
	inc  b                                           ; $62bc: $04
	ld   bc, $0101                                   ; $62bd: $01 $01 $01
	sbc  l                                           ; $62c0: $9d
	ei                                               ; $62c1: $fb
	ld   d, d                                        ; $62c2: $52
	ld   a, [$a30d]                                  ; $62c3: $fa $0d $a3
	and  l                                           ; $62c6: $a5
	db   $ec                                         ; $62c7: $ec
	cp   d                                           ; $62c8: $ba
	ld   a, h                                        ; $62c9: $7c
	ld   e, c                                        ; $62ca: $59
	ld   l, a                                        ; $62cb: $6f
	ei                                               ; $62cc: $fb
	ld   a, [$000d]                                  ; $62cd: $fa $0d $00
	ld   a, [bc]                                     ; $62d0: $0a
	dec  b                                           ; $62d1: $05
	ld   b, b                                        ; $62d2: $40
	rst  $38                                         ; $62d3: $ff
	inc  bc                                          ; $62d4: $03
	rst  $38                                         ; $62d5: $ff
	ld   bc, $2801                                   ; $62d6: $01 $01 $28
	nop                                              ; $62d9: $00
	ld   b, $b1                                      ; $62da: $06 $b1
	add  hl, bc                                      ; $62dc: $09
	rrca                                             ; $62dd: $0f
	nop                                              ; $62de: $00
	ld   bc, wVisitedTitleScreen                                   ; $62df: $01 $01 $c2
	jp   hl                                          ; $62e2: $e9


	xor  [hl]                                        ; $62e3: $ae
	ld   l, [hl]                                     ; $62e4: $6e
	ld   a, [$000d]                                  ; $62e5: $fa $0d $00
	ld   a, [bc]                                     ; $62e8: $0a
	dec  b                                           ; $62e9: $05
	ld   b, b                                        ; $62ea: $40
	rst  $38                                         ; $62eb: $ff
	inc  bc                                          ; $62ec: $03
	rst  $38                                         ; $62ed: $ff
	ld   bc, $2901                                   ; $62ee: $01 $01 $29
	nop                                              ; $62f1: $00
	inc  e                                           ; $62f2: $1c
	inc  b                                           ; $62f3: $04
	ld   b, $06                                      ; $62f4: $06 $06
	ld   bc, $9e50                                   ; $62f6: $01 $50 $9e
	adc  h                                           ; $62f9: $8c
	ld   e, a                                        ; $62fa: $5f
	ld   l, a                                        ; $62fb: $6f
	sub  c                                           ; $62fc: $91
	ld   [hl], c                                     ; $62fd: $71
	ld   l, l                                        ; $62fe: $6d
	rst  $38                                         ; $62ff: $ff
	rst  $38                                         ; $6300: $ff
	dec  c                                           ; $6301: $0d
	nop                                              ; $6302: $00
	ld   a, [bc]                                     ; $6303: $0a
	ld   b, $b1                                      ; $6304: $06 $b1
	add  hl, bc                                      ; $6306: $09
	rrca                                             ; $6307: $0f
	nop                                              ; $6308: $00
	ld   bc, $d201                                   ; $6309: $01 $01 $d2
	ei                                               ; $630c: $fb
	ld   l, [hl]                                     ; $630d: $6e
	ld   a, [$000d]                                  ; $630e: $fa $0d $00
	ld   a, [bc]                                     ; $6311: $0a
	inc  e                                           ; $6312: $1c
	inc  b                                           ; $6313: $04
	nop                                              ; $6314: $00
	nop                                              ; $6315: $00
	ld   bc, $9e50                                   ; $6316: $01 $50 $9e
	ld   d, b                                        ; $6319: $50
	ld   d, d                                        ; $631a: $52
	ld   h, c                                        ; $631b: $61
	ld   l, [hl]                                     ; $631c: $6e
	rst  $38                                         ; $631d: $ff
	rst  $38                                         ; $631e: $ff
	dec  c                                           ; $631f: $0d
	ld   h, [hl]                                     ; $6320: $66
	sub  c                                           ; $6321: $91
	sbc  [hl]                                        ; $6322: $9e
	ld   d, b                                        ; $6323: $50
	ld   d, d                                        ; $6324: $52
	ld   h, c                                        ; $6325: $61
	ld   [hl], l                                     ; $6326: $75
	ld   h, l                                        ; $6327: $65
	sub  l                                           ; $6328: $95
	ld   a, [$000d]                                  ; $6329: $fa $0d $00
	ld   a, [bc]                                     ; $632c: $0a
	ld   b, $ce                                      ; $632d: $06 $ce
	add  hl, bc                                      ; $632f: $09
	inc  e                                           ; $6330: $1c
	inc  b                                           ; $6331: $04
	ld   [bc], a                                     ; $6332: $02
	ld   [bc], a                                     ; $6333: $02
	dec  e                                           ; $6334: $1d
	ld   b, b                                        ; $6335: $40
	inc  d                                           ; $6336: $14
	inc  bc                                          ; $6337: $03
	inc  d                                           ; $6338: $14
	ld   bc, $2903                                   ; $6339: $01 $03 $29
	nop                                              ; $633c: $00
	ld   bc, $526f                                   ; $633d: $01 $6f $52
	ld   [bc], a                                     ; $6340: $02
	inc  de                                          ; $6341: $13
	ld   l, a                                        ; $6342: $6f
	sub  c                                           ; $6343: $91
	and  c                                           ; $6344: $a1
	sbc  [hl]                                        ; $6345: $9e
	cp   e                                           ; $6346: $bb
	db   $ed                                         ; $6347: $ed
	and  l                                           ; $6348: $a5
	ld   a, [$500d]                                  ; $6349: $fa $0d $50
	halt                                             ; $634c: $76
	ld   l, [hl]                                     ; $634d: $6e
	ld   h, l                                        ; $634e: $65
	ld   h, l                                        ; $634f: $65
	ld   l, l                                        ; $6350: $6d
	ei                                               ; $6351: $fb
	ld   a, [$000d]                                  ; $6352: $fa $0d $00
	ld   a, [bc]                                     ; $6355: $0a
	ld   bc, $5490                                   ; $6356: $01 $90 $54
	sbc  [hl]                                        ; $6359: $9e
	ld   l, a                                        ; $635a: $6f
	ld   d, d                                        ; $635b: $52
	ld   [bc], a                                     ; $635c: $02
	inc  de                                          ; $635d: $13
	ld   l, a                                        ; $635e: $6f
	sub  c                                           ; $635f: $91
	and  c                                           ; $6360: $a1
	halt                                             ; $6361: $76
	ld   a, l                                        ; $6362: $7d
	dec  c                                           ; $6363: $0d
	sub  d                                           ; $6364: $92
	and  c                                           ; $6365: $a1
	ld   a, b                                        ; $6366: $78
	ld   d, d                                        ; $6367: $52
	ld   a, [$d60d]                                  ; $6368: $fa $0d $d6
	push af                                          ; $636b: $f5
	ld   l, [hl]                                     ; $636c: $6e
	ld   a, [$000d]                                  ; $636d: $fa $0d $00
	ld   a, [bc]                                     ; $6370: $0a
	nop                                              ; $6371: $00
	inc  e                                           ; $6372: $1c
	inc  b                                           ; $6373: $04
	nop                                              ; $6374: $00
	nop                                              ; $6375: $00
	ld   bc, $9166                                   ; $6376: $01 $66 $91
	sbc  [hl]                                        ; $6379: $9e
	ld   a, c                                        ; $637a: $79
	ld   e, c                                        ; $637b: $59
	ld   d, d                                        ; $637c: $52
	adc  a                                           ; $637d: $8f
	ld   d, d                                        ; $637e: $52
	ld   e, l                                        ; $637f: $5d
	sub  [hl]                                        ; $6380: $96
	rst  $38                                         ; $6381: $ff
	rst  $38                                         ; $6382: $ff
	dec  c                                           ; $6383: $0d
	ld   h, [hl]                                     ; $6384: $66
	sub  c                                           ; $6385: $91
	and  c                                           ; $6386: $a1
	ld   e, a                                        ; $6387: $5f
	and  c                                           ; $6388: $a1
	adc  e                                           ; $6389: $8b
	and  c                                           ; $638a: $a1
	ld   a, [$000d]                                  ; $638b: $fa $0d $00
	ld   a, [bc]                                     ; $638e: $0a
	rrca                                             ; $638f: $0f
	nop                                              ; $6390: $00
	ld   bc, $0101                                   ; $6391: $01 $01 $01
	inc  bc                                          ; $6394: $03
	and  e                                           ; $6395: $a3
	and  l                                           ; $6396: $a5
	db   $ec                                         ; $6397: $ec
	cp   d                                           ; $6398: $ba
	ld   a, l                                        ; $6399: $7d
	rst  $38                                         ; $639a: $ff
	rst  $38                                         ; $639b: $ff
	or   c                                           ; $639c: $b1
	ei                                               ; $639d: $fb
	ld   l, [hl]                                     ; $639e: $6e
	ld   bc, $0d04                                   ; $639f: $01 $04 $0d
	nop                                              ; $63a2: $00
	ld   a, [bc]                                     ; $63a3: $0a
	add  hl, de                                      ; $63a4: $19
	dec  b                                           ; $63a5: $05
	inc  bc                                          ; $63a6: $03
	jp   nz, $aee9                                   ; $63a7: $c2 $e9 $ae

	and  b                                           ; $63aa: $a0
	inc  bc                                          ; $63ab: $03
	add  b                                           ; $63ac: $80
	ld   h, a                                        ; $63ad: $67
	nop                                              ; $63ae: $00
	nop                                              ; $63af: $00
	jp   nc, $a0fb                                   ; $63b0: $d2 $fb $a0

	inc  bc                                          ; $63b3: $03
	add  b                                           ; $63b4: $80
	ld   h, a                                        ; $63b5: $67
	nop                                              ; $63b6: $00
	ld   bc, $fbb1                                   ; $63b7: $01 $b1 $fb
	and  b                                           ; $63ba: $a0
	inc  bc                                          ; $63bb: $03
	add  b                                           ; $63bc: $80
	ld   h, a                                        ; $63bd: $67
	nop                                              ; $63be: $00
	ld   [bc], a                                     ; $63bf: $02
	rlca                                             ; $63c0: $07
	dec  e                                           ; $63c1: $1d
	ld   a, [bc]                                     ; $63c2: $0a
	ld   [bc], a                                     ; $63c3: $02
	inc  bc                                          ; $63c4: $03
	ld   bc, $2000                                   ; $63c5: $01 $00 $20
	nop                                              ; $63c8: $00
	rlca                                             ; $63c9: $07
	ld   c, e                                        ; $63ca: $4b
	ld   a, [bc]                                     ; $63cb: $0a
	ld   [bc], a                                     ; $63cc: $02
	inc  bc                                          ; $63cd: $03
	ld   bc, $2001                                   ; $63ce: $01 $01 $20
	nop                                              ; $63d1: $00
	rlca                                             ; $63d2: $07
	ld   [hl], h                                     ; $63d3: $74
	ld   a, [bc]                                     ; $63d4: $0a
	ld   [bc], a                                     ; $63d5: $02
	inc  bc                                          ; $63d6: $03
	ld   bc, $2002                                   ; $63d7: $01 $02 $20
	nop                                              ; $63da: $00
	ld   b, $6f                                      ; $63db: $06 $6f
	add  hl, bc                                      ; $63dd: $09
	rrca                                             ; $63de: $0f
	nop                                              ; $63df: $00
	ld   bc, wVisitedTitleScreen                                   ; $63e0: $01 $01 $c2
	jp   hl                                          ; $63e3: $e9


	xor  [hl]                                        ; $63e4: $ae
	ld   l, [hl]                                     ; $63e5: $6e
	ld   a, [$000d]                                  ; $63e6: $fa $0d $00
	ld   a, [bc]                                     ; $63e9: $0a
	inc  e                                           ; $63ea: $1c
	inc  b                                           ; $63eb: $04
	ld   bc, $0101                                   ; $63ec: $01 $01 $01
	sbc  l                                           ; $63ef: $9d
	ei                                               ; $63f0: $fb
	ld   d, d                                        ; $63f1: $52
	ld   a, [$a30d]                                  ; $63f2: $fa $0d $a3
	and  l                                           ; $63f5: $a5
	db   $ec                                         ; $63f6: $ec
	cp   d                                           ; $63f7: $ba
	ld   a, h                                        ; $63f8: $7c
	ld   e, c                                        ; $63f9: $59
	ld   l, a                                        ; $63fa: $6f
	ei                                               ; $63fb: $fb
	ld   a, [$000d]                                  ; $63fc: $fa $0d $00
	ld   a, [bc]                                     ; $63ff: $0a
	dec  b                                           ; $6400: $05
	ld   b, b                                        ; $6401: $40
	rst  $38                                         ; $6402: $ff
	inc  bc                                          ; $6403: $03
	rst  $38                                         ; $6404: $ff
	ld   bc, $2801                                   ; $6405: $01 $01 $28
	nop                                              ; $6408: $00
	ld   b, $9d                                      ; $6409: $06 $9d
	ld   a, [bc]                                     ; $640b: $0a
	rrca                                             ; $640c: $0f
	nop                                              ; $640d: $00
	ld   bc, $d201                                   ; $640e: $01 $01 $d2
	ei                                               ; $6411: $fb
	ld   l, [hl]                                     ; $6412: $6e
	ld   a, [$000d]                                  ; $6413: $fa $0d $00
	ld   a, [bc]                                     ; $6416: $0a
	dec  b                                           ; $6417: $05
	ld   b, b                                        ; $6418: $40
	rst  $38                                         ; $6419: $ff
	inc  bc                                          ; $641a: $03
	rst  $38                                         ; $641b: $ff
	ld   bc, $2901                                   ; $641c: $01 $01 $29
	nop                                              ; $641f: $00
	inc  e                                           ; $6420: $1c
	inc  b                                           ; $6421: $04
	ld   b, $06                                      ; $6422: $06 $06
	ld   bc, $9e50                                   ; $6424: $01 $50 $9e
	adc  h                                           ; $6427: $8c
	ld   e, a                                        ; $6428: $5f
	ld   l, a                                        ; $6429: $6f
	sub  c                                           ; $642a: $91
	ld   [hl], c                                     ; $642b: $71
	ld   l, l                                        ; $642c: $6d
	rst  $38                                         ; $642d: $ff
	rst  $38                                         ; $642e: $ff
	dec  c                                           ; $642f: $0d
	nop                                              ; $6430: $00
	ld   a, [bc]                                     ; $6431: $0a
	ld   b, $9d                                      ; $6432: $06 $9d
	ld   a, [bc]                                     ; $6434: $0a
	rrca                                             ; $6435: $0f
	nop                                              ; $6436: $00
	ld   bc, $b101                                   ; $6437: $01 $01 $b1
	ei                                               ; $643a: $fb
	ld   l, [hl]                                     ; $643b: $6e
	ld   a, [$000d]                                  ; $643c: $fa $0d $00
	ld   a, [bc]                                     ; $643f: $0a
	inc  e                                           ; $6440: $1c
	inc  b                                           ; $6441: $04
	nop                                              ; $6442: $00
	nop                                              ; $6443: $00
	ld   bc, $9e50                                   ; $6444: $01 $50 $9e
	ld   d, b                                        ; $6447: $50
	ld   d, d                                        ; $6448: $52
	ld   h, c                                        ; $6449: $61
	ld   l, [hl]                                     ; $644a: $6e
	rst  $38                                         ; $644b: $ff
	rst  $38                                         ; $644c: $ff
	dec  c                                           ; $644d: $0d
	ld   h, [hl]                                     ; $644e: $66
	sub  c                                           ; $644f: $91
	sbc  [hl]                                        ; $6450: $9e
	ld   d, b                                        ; $6451: $50
	ld   d, d                                        ; $6452: $52
	ld   h, c                                        ; $6453: $61
	ld   [hl], l                                     ; $6454: $75
	ld   h, l                                        ; $6455: $65
	sub  l                                           ; $6456: $95
	ld   a, [$000d]                                  ; $6457: $fa $0d $00
	ld   a, [bc]                                     ; $645a: $0a
	ld   b, $bb                                      ; $645b: $06 $bb
	ld   a, [bc]                                     ; $645d: $0a
	inc  e                                           ; $645e: $1c
	inc  b                                           ; $645f: $04
	nop                                              ; $6460: $00
	nop                                              ; $6461: $00
	ld   bc, $9166                                   ; $6462: $01 $66 $91
	sbc  [hl]                                        ; $6465: $9e
	ld   h, e                                        ; $6466: $63
	and  c                                           ; $6467: $a1
	ld   e, c                                        ; $6468: $59
	ld   d, d                                        ; $6469: $52
	adc  a                                           ; $646a: $8f
	ld   d, d                                        ; $646b: $52
	ld   e, l                                        ; $646c: $5d
	sub  [hl]                                        ; $646d: $96
	rst  $38                                         ; $646e: $ff
	rst  $38                                         ; $646f: $ff
	dec  c                                           ; $6470: $0d
	ld   h, [hl]                                     ; $6471: $66
	sub  c                                           ; $6472: $91
	and  c                                           ; $6473: $a1
	ld   e, a                                        ; $6474: $5f
	and  c                                           ; $6475: $a1
	adc  e                                           ; $6476: $8b
	and  c                                           ; $6477: $a1
	ld   a, [$000d]                                  ; $6478: $fa $0d $00
	ld   a, [bc]                                     ; $647b: $0a
	rrca                                             ; $647c: $0f
	nop                                              ; $647d: $00
	ld   bc, $0101                                   ; $647e: $01 $01 $01
	inc  bc                                          ; $6481: $03
	and  e                                           ; $6482: $a3
	and  l                                           ; $6483: $a5
	db   $ec                                         ; $6484: $ec
	cp   d                                           ; $6485: $ba
	ld   a, l                                        ; $6486: $7d
	rst  $38                                         ; $6487: $ff
	rst  $38                                         ; $6488: $ff
	or   c                                           ; $6489: $b1
	ei                                               ; $648a: $fb
	ld   l, [hl]                                     ; $648b: $6e
	ld   bc, $0d04                                   ; $648c: $01 $04 $0d
	nop                                              ; $648f: $00
	ld   a, [bc]                                     ; $6490: $0a
	add  hl, de                                      ; $6491: $19
	dec  b                                           ; $6492: $05
	inc  bc                                          ; $6493: $03
	jp   nz, $aee9                                   ; $6494: $c2 $e9 $ae

	and  b                                           ; $6497: $a0
	inc  bc                                          ; $6498: $03
	add  b                                           ; $6499: $80
	ld   h, a                                        ; $649a: $67
	nop                                              ; $649b: $00
	nop                                              ; $649c: $00
	jp   nc, $a0fb                                   ; $649d: $d2 $fb $a0

	inc  bc                                          ; $64a0: $03
	add  b                                           ; $64a1: $80
	ld   h, a                                        ; $64a2: $67
	nop                                              ; $64a3: $00
	ld   bc, $fbb1                                   ; $64a4: $01 $b1 $fb
	and  b                                           ; $64a7: $a0
	inc  bc                                          ; $64a8: $03
	add  b                                           ; $64a9: $80
	ld   h, a                                        ; $64aa: $67
	nop                                              ; $64ab: $00
	ld   [bc], a                                     ; $64ac: $02
	rlca                                             ; $64ad: $07
	ld   a, [bc]                                     ; $64ae: $0a
	dec  bc                                          ; $64af: $0b
	ld   [bc], a                                     ; $64b0: $02
	inc  bc                                          ; $64b1: $03
	ld   bc, $2000                                   ; $64b2: $01 $00 $20
	nop                                              ; $64b5: $00
	rlca                                             ; $64b6: $07
	jr   c, jr_067_64c4                              ; $64b7: $38 $0b

	ld   [bc], a                                     ; $64b9: $02
	inc  bc                                          ; $64ba: $03
	ld   bc, $2001                                   ; $64bb: $01 $01 $20
	nop                                              ; $64be: $00
	rlca                                             ; $64bf: $07
	ld   h, c                                        ; $64c0: $61
	dec  bc                                          ; $64c1: $0b
	ld   [bc], a                                     ; $64c2: $02
	inc  bc                                          ; $64c3: $03

jr_067_64c4:
	ld   bc, $2002                                   ; $64c4: $01 $02 $20
	nop                                              ; $64c7: $00
	ld   b, $6f                                      ; $64c8: $06 $6f
	add  hl, bc                                      ; $64ca: $09
	rrca                                             ; $64cb: $0f
	nop                                              ; $64cc: $00
	ld   bc, wVisitedTitleScreen                                   ; $64cd: $01 $01 $c2
	jp   hl                                          ; $64d0: $e9


	xor  [hl]                                        ; $64d1: $ae
	ld   l, [hl]                                     ; $64d2: $6e
	ld   a, [$000d]                                  ; $64d3: $fa $0d $00
	ld   a, [bc]                                     ; $64d6: $0a
	inc  e                                           ; $64d7: $1c
	inc  b                                           ; $64d8: $04
	ld   bc, $0101                                   ; $64d9: $01 $01 $01
	sbc  l                                           ; $64dc: $9d
	ei                                               ; $64dd: $fb
	ld   d, d                                        ; $64de: $52
	ld   a, [$a30d]                                  ; $64df: $fa $0d $a3
	and  l                                           ; $64e2: $a5
	db   $ec                                         ; $64e3: $ec
	cp   d                                           ; $64e4: $ba
	ld   a, h                                        ; $64e5: $7c
	ld   e, c                                        ; $64e6: $59
	ld   l, a                                        ; $64e7: $6f
	ei                                               ; $64e8: $fb
	ld   a, [$000d]                                  ; $64e9: $fa $0d $00
	ld   a, [bc]                                     ; $64ec: $0a
	dec  b                                           ; $64ed: $05
	ld   b, b                                        ; $64ee: $40
	rst  $38                                         ; $64ef: $ff
	inc  bc                                          ; $64f0: $03
	rst  $38                                         ; $64f1: $ff
	ld   bc, $2801                                   ; $64f2: $01 $01 $28
	nop                                              ; $64f5: $00
	ld   b, $80                                      ; $64f6: $06 $80
	dec  bc                                          ; $64f8: $0b
	rrca                                             ; $64f9: $0f
	nop                                              ; $64fa: $00
	ld   bc, $d201                                   ; $64fb: $01 $01 $d2
	ei                                               ; $64fe: $fb
	ld   l, [hl]                                     ; $64ff: $6e
	ld   a, [$000d]                                  ; $6500: $fa $0d $00
	ld   a, [bc]                                     ; $6503: $0a
	dec  b                                           ; $6504: $05
	ld   b, b                                        ; $6505: $40
	rst  $38                                         ; $6506: $ff
	inc  bc                                          ; $6507: $03
	rst  $38                                         ; $6508: $ff
	ld   bc, $2901                                   ; $6509: $01 $01 $29
	nop                                              ; $650c: $00

Call_067_650d:
	inc  e                                           ; $650d: $1c
	inc  b                                           ; $650e: $04
	ld   b, $06                                      ; $650f: $06 $06
	ld   bc, $9e50                                   ; $6511: $01 $50 $9e
	adc  h                                           ; $6514: $8c
	ld   e, a                                        ; $6515: $5f
	ld   l, a                                        ; $6516: $6f
	sub  c                                           ; $6517: $91
	ld   [hl], c                                     ; $6518: $71
	ld   l, l                                        ; $6519: $6d
	rst  $38                                         ; $651a: $ff
	rst  $38                                         ; $651b: $ff
	dec  c                                           ; $651c: $0d
	nop                                              ; $651d: $00
	ld   a, [bc]                                     ; $651e: $0a
	ld   b, $80                                      ; $651f: $06 $80
	dec  bc                                          ; $6521: $0b
	rrca                                             ; $6522: $0f
	nop                                              ; $6523: $00
	ld   bc, $b101                                   ; $6524: $01 $01 $b1
	ei                                               ; $6527: $fb
	ld   l, [hl]                                     ; $6528: $6e
	ld   a, [$000d]                                  ; $6529: $fa $0d $00
	ld   a, [bc]                                     ; $652c: $0a
	inc  e                                           ; $652d: $1c
	inc  b                                           ; $652e: $04
	nop                                              ; $652f: $00
	nop                                              ; $6530: $00
	ld   bc, $9a50                                   ; $6531: $01 $50 $9a
	sbc  [hl]                                        ; $6534: $9e
	ld   d, b                                        ; $6535: $50
	ld   d, d                                        ; $6536: $52
	ld   h, c                                        ; $6537: $61
	ld   l, [hl]                                     ; $6538: $6e
	rst  $38                                         ; $6539: $ff
	rst  $38                                         ; $653a: $ff
	dec  c                                           ; $653b: $0d
	nop                                              ; $653c: $00
	ld   a, [bc]                                     ; $653d: $0a
	ld   b, $80                                      ; $653e: $06 $80
	dec  bc                                          ; $6540: $0b
	rrca                                             ; $6541: $0f
	nop                                              ; $6542: $00
	ld   bc, $0101                                   ; $6543: $01 $01 $01
	inc  bc                                          ; $6546: $03
	add  e                                           ; $6547: $83
	ld   d, h                                        ; $6548: $54
	rst  $38                                         ; $6549: $ff
	rst  $38                                         ; $654a: $ff
	ld   h, c                                        ; $654b: $61
	and  c                                           ; $654c: $a1
	ld   a, b                                        ; $654d: $78
	sub  b                                           ; $654e: $90
	and  c                                           ; $654f: $a1
	ld   l, [hl]                                     ; $6550: $6e
	sbc  e                                           ; $6551: $9b
	ld   d, h                                        ; $6552: $54
	ld   bc, $0d04                                   ; $6553: $01 $04 $0d
	nop                                              ; $6556: $00
	ld   a, [bc]                                     ; $6557: $0a
	rlca                                             ; $6558: $07
	ld   l, e                                        ; $6559: $6b
	inc  c                                           ; $655a: $0c
	inc  bc                                          ; $655b: $03
	rst  $38                                         ; $655c: $ff
	ld   bc, $2005                                   ; $655d: $01 $05 $20
	nop                                              ; $6560: $00
	rlca                                             ; $6561: $07
	dec  d                                           ; $6562: $15
	inc  c                                           ; $6563: $0c
	inc  bc                                          ; $6564: $03
	rst  $38                                         ; $6565: $ff
	ld   bc, $2506                                   ; $6566: $01 $06 $25
	nop                                              ; $6569: $00
	inc  e                                           ; $656a: $1c
	inc  b                                           ; $656b: $04
	rlca                                             ; $656c: $07
	rlca                                             ; $656d: $07
	dec  e                                           ; $656e: $1d
	ld   b, b                                        ; $656f: $40
	inc  d                                           ; $6570: $14
	inc  bc                                          ; $6571: $03
	inc  d                                           ; $6572: $14
	ld   bc, $2903                                   ; $6573: $01 $03 $29
	nop                                              ; $6576: $00
	ld   bc, $526f                                   ; $6577: $01 $6f $52
	ld   [bc], a                                     ; $657a: $02
	inc  de                                          ; $657b: $13
	ld   l, a                                        ; $657c: $6f
	sub  c                                           ; $657d: $91
	and  c                                           ; $657e: $a1
	cp   e                                           ; $657f: $bb
	db   $ed                                         ; $6580: $ed
	and  l                                           ; $6581: $a5
	db   $fc                                         ; $6582: $fc
	rst  $38                                         ; $6583: $ff
	rst  $38                                         ; $6584: $ff
	dec  c                                           ; $6585: $0d
	ld   l, d                                        ; $6586: $6a
	ld   [hl], c                                     ; $6587: $71
	ld   l, l                                        ; $6588: $6d
	ld   d, d                                        ; $6589: $52
	sbc  [hl]                                        ; $658a: $9e
	ld   l, d                                        ; $658b: $6a
	ld   [hl], c                                     ; $658c: $71
	ld   l, l                                        ; $658d: $6d
	ld   d, d                                        ; $658e: $52
	sbc  [hl]                                        ; $658f: $9e
	dec  c                                           ; $6590: $0d
	ld   d, b                                        ; $6591: $50
	halt                                             ; $6592: $76
	ld   l, [hl]                                     ; $6593: $6e
	ld   h, l                                        ; $6594: $65
	ld   h, l                                        ; $6595: $65
	ld   l, l                                        ; $6596: $6d
	and  c                                           ; $6597: $a1
	ld   l, [hl]                                     ; $6598: $6e
	rst  $38                                         ; $6599: $ff
	rst  $38                                         ; $659a: $ff
	dec  c                                           ; $659b: $0d
	nop                                              ; $659c: $00
	ld   a, [bc]                                     ; $659d: $0a
	inc  e                                           ; $659e: $1c
	inc  b                                           ; $659f: $04
	inc  b                                           ; $65a0: $04
	inc  b                                           ; $65a1: $04
	ld   bc, $bab1                                   ; $65a2: $01 $b1 $ba
	push af                                          ; $65a5: $f5
	rst  $38                                         ; $65a6: $ff
	rst  $38                                         ; $65a7: $ff
	dec  c                                           ; $65a8: $0d
	and  e                                           ; $65a9: $a3
	and  l                                           ; $65aa: $a5
	db   $ec                                         ; $65ab: $ec
	cp   d                                           ; $65ac: $ba
	ld   h, [hl]                                     ; $65ad: $66
	sub  c                                           ; $65ae: $91
	and  c                                           ; $65af: $a1
	ld   e, a                                        ; $65b0: $5f
	and  c                                           ; $65b1: $a1
	dec  c                                           ; $65b2: $0d
	ld   [hl], d                                     ; $65b3: $72
	sub  [hl]                                        ; $65b4: $96
	ld   d, d                                        ; $65b5: $52
	ld   a, h                                        ; $65b6: $7c
	ld   a, c                                        ; $65b7: $79
	rst  $38                                         ; $65b8: $ff
	rst  $38                                         ; $65b9: $ff
	dec  c                                           ; $65ba: $0d
	nop                                              ; $65bb: $00
	ld   a, [bc]                                     ; $65bc: $0a
	ld   bc, $6152                                   ; $65bd: $01 $52 $61
	ld   d, h                                        ; $65c0: $54
	sbc  [hl]                                        ; $65c1: $9e
	cp   c                                           ; $65c2: $b9
	push hl                                          ; $65c3: $e5
	push af                                          ; $65c4: $f5
	sbc  $fb                                         ; $65c5: $de $fb
	db   $ed                                         ; $65c7: $ed
	rst  $38                                         ; $65c8: $ff
	rst  $38                                         ; $65c9: $ff
	dec  c                                           ; $65ca: $0d
	nop                                              ; $65cb: $00
	ld   a, [bc]                                     ; $65cc: $0a
	dec  c                                           ; $65cd: $0d
	nop                                              ; $65ce: $00
	nop                                              ; $65cf: $00
	rrca                                             ; $65d0: $0f
	nop                                              ; $65d1: $00
	ld   bc, $1e09                                   ; $65d2: $01 $09 $1e
	nop                                              ; $65d5: $00
	inc  e                                           ; $65d6: $1c
	inc  b                                           ; $65d7: $04
	ld   bc, $1d01                                   ; $65d8: $01 $01 $1d
	ld   b, b                                        ; $65db: $40
	inc  d                                           ; $65dc: $14
	inc  bc                                          ; $65dd: $03
	inc  d                                           ; $65de: $14
	ld   bc, $2803                                   ; $65df: $01 $03 $28
	nop                                              ; $65e2: $00
	ld   bc, $fb9d                                   ; $65e3: $01 $9d $fb
	ld   d, d                                        ; $65e6: $52
	sbc  [hl]                                        ; $65e7: $9e
	sbc  l                                           ; $65e8: $9d
	ei                                               ; $65e9: $fb
	ld   d, d                                        ; $65ea: $52
	ld   a, [$a30d]                                  ; $65eb: $fa $0d $a3
	and  l                                           ; $65ee: $a5
	db   $ec                                         ; $65ef: $ec
	cp   d                                           ; $65f0: $ba
	ld   a, h                                        ; $65f1: $7c
	ld   e, c                                        ; $65f2: $59
	ld   l, a                                        ; $65f3: $6f
	ei                                               ; $65f4: $fb
	ld   a, [$000d]                                  ; $65f5: $fa $0d $00
	ld   a, [bc]                                     ; $65f8: $0a
	ld   bc, $7156                                   ; $65f9: $01 $56 $71
	add  [hl]                                        ; $65fc: $86
	and  c                                           ; $65fd: $a1
	ld   a, [$a30d]                                  ; $65fe: $fa $0d $a3
	and  l                                           ; $6601: $a5
	db   $ec                                         ; $6602: $ec
	cp   d                                           ; $6603: $ba
	ld   h, a                                        ; $6604: $67
	ld   h, d                                        ; $6605: $62
	ld   d, d                                        ; $6606: $52
	ld   [hl], l                                     ; $6607: $75
	ld   h, l                                        ; $6608: $65
	sub  l                                           ; $6609: $95
	ld   sp, hl                                      ; $660a: $f9
	dec  c                                           ; $660b: $0d
	nop                                              ; $660c: $00
	ld   a, [bc]                                     ; $660d: $0a
	ld   bc, $fb50                                   ; $660e: $01 $50 $fb
	ld   e, b                                        ; $6611: $58
	sub  b                                           ; $6612: $90
	ld   h, l                                        ; $6613: $65
	sbc  e                                           ; $6614: $9b
	ld   e, c                                        ; $6615: $59
	ld   [hl], c                                     ; $6616: $71
	ld   l, l                                        ; $6617: $6d
	sbc  a                                           ; $6618: $9f
	dec  c                                           ; $6619: $0d
	ld   d, b                                        ; $661a: $50
	sbc  b                                           ; $661b: $98
	ld   e, d                                        ; $661c: $5a
	halt                                             ; $661d: $76
	ld   d, h                                        ; $661e: $54
	sbc  [hl]                                        ; $661f: $9e
	ld   l, a                                        ; $6620: $6f
	ld   d, d                                        ; $6621: $52
	ld   [bc], a                                     ; $6622: $02
	inc  de                                          ; $6623: $13
	ld   l, a                                        ; $6624: $6f
	sub  c                                           ; $6625: $91
	and  c                                           ; $6626: $a1
	sbc  a                                           ; $6627: $9f
	dec  c                                           ; $6628: $0d
	nop                                              ; $6629: $00
	ld   a, [bc]                                     ; $662a: $0a
	nop                                              ; $662b: $00
	inc  e                                           ; $662c: $1c
	inc  b                                           ; $662d: $04
	nop                                              ; $662e: $00
	nop                                              ; $662f: $00
	ld   bc, $5058                                   ; $6630: $01 $58 $50
	ld   d, d                                        ; $6633: $52
	ld   h, c                                        ; $6634: $61
	ld   l, [hl]                                     ; $6635: $6e
	ld   a, e                                        ; $6636: $7b
	sbc  [hl]                                        ; $6637: $9e
	dec  c                                           ; $6638: $0d
	ld   l, a                                        ; $6639: $6f
	ld   d, d                                        ; $663a: $52
	ld   [bc], a                                     ; $663b: $02
	inc  de                                          ; $663c: $13
	ld   l, a                                        ; $663d: $6f
	sub  c                                           ; $663e: $91
	and  c                                           ; $663f: $a1
	sbc  a                                           ; $6640: $9f
	dec  c                                           ; $6641: $0d
	nop                                              ; $6642: $00
	ld   a, [bc]                                     ; $6643: $0a
	dec  e                                           ; $6644: $1d
	ld   b, b                                        ; $6645: $40
	inc  d                                           ; $6646: $14
	inc  bc                                          ; $6647: $03
	inc  d                                           ; $6648: $14
	ld   bc, $2801                                   ; $6649: $01 $01 $28
	nop                                              ; $664c: $00
	ld   bc, $9075                                   ; $664d: $01 $75 $90
	sbc  [hl]                                        ; $6650: $9e
	ld   e, b                                        ; $6651: $58
	sub  b                                           ; $6652: $90
	ld   h, l                                        ; $6653: $65
	sbc  e                                           ; $6654: $9b
	ld   e, c                                        ; $6655: $59
	ld   [hl], c                                     ; $6656: $71
	ld   l, l                                        ; $6657: $6d
	sbc  a                                           ; $6658: $9f
	dec  c                                           ; $6659: $0d
	ld   d, b                                        ; $665a: $50
	sbc  b                                           ; $665b: $98
	ld   e, d                                        ; $665c: $5a
	halt                                             ; $665d: $76
	ld   d, h                                        ; $665e: $54
	sbc  [hl]                                        ; $665f: $9e
	ld   l, a                                        ; $6660: $6f
	ld   d, d                                        ; $6661: $52
	ld   [bc], a                                     ; $6662: $02
	inc  de                                          ; $6663: $13
	ld   l, a                                        ; $6664: $6f
	sub  c                                           ; $6665: $91
	and  c                                           ; $6666: $a1
	sbc  a                                           ; $6667: $9f
	dec  c                                           ; $6668: $0d
	nop                                              ; $6669: $00
	ld   a, [bc]                                     ; $666a: $0a
	nop                                              ; $666b: $00
	ld   bc, $9e50                                   ; $666c: $01 $50 $9e
	ld   l, a                                        ; $666f: $6f
	ld   d, d                                        ; $6670: $52
	ld   [bc], a                                     ; $6671: $02
	inc  de                                          ; $6672: $13
	ld   l, a                                        ; $6673: $6f
	sub  c                                           ; $6674: $91
	and  c                                           ; $6675: $a1
	ld   a, [$500d]                                  ; $6676: $fa $0d $50
	ei                                               ; $6679: $fb
	ld   l, e                                        ; $667a: $6b
	ei                                               ; $667b: $fb
	adc  d                                           ; $667c: $8a
	ei                                               ; $667d: $fb
	ld   a, [$000d]                                  ; $667e: $fa $0d $00
	ld   a, [bc]                                     ; $6681: $0a
	add  hl, de                                      ; $6682: $19
	dec  b                                           ; $6683: $05
	inc  bc                                          ; $6684: $03
	ld   h, l                                        ; $6685: $65
	sbc  b                                           ; $6686: $98
	halt                                             ; $6687: $76
	sbc  b                                           ; $6688: $98
	nop                                              ; $6689: $00
	nop                                              ; $668a: $00
	or   b                                           ; $668b: $b0
	and  l                                           ; $668c: $a5
	cp   e                                           ; $668d: $bb
	nop                                              ; $668e: $00
	ld   bc, $9166                                   ; $668f: $01 $66 $91
	and  c                                           ; $6692: $a1
	ld   e, a                                        ; $6693: $5f
	and  c                                           ; $6694: $a1
	nop                                              ; $6695: $00
	ld   [bc], a                                     ; $6696: $02
	rlca                                             ; $6697: $07
	ld   sp, $020d                                   ; $6698: $31 $0d $02
	inc  bc                                          ; $669b: $03
	ld   bc, $2000                                   ; $669c: $01 $00 $20
	nop                                              ; $669f: $00
	rlca                                             ; $66a0: $07
	ld   l, a                                        ; $66a1: $6f
	db   $10                                         ; $66a2: $10
	ld   [bc], a                                     ; $66a3: $02
	inc  bc                                          ; $66a4: $03
	ld   bc, $2001                                   ; $66a5: $01 $01 $20
	nop                                              ; $66a8: $00
	rlca                                             ; $66a9: $07
	sbc  h                                           ; $66aa: $9c
	inc  de                                          ; $66ab: $13
	ld   [bc], a                                     ; $66ac: $02
	inc  bc                                          ; $66ad: $03
	ld   bc, $2002                                   ; $66ae: $01 $02 $20
	nop                                              ; $66b1: $00
	ld   b, $f4                                      ; $66b2: $06 $f4
	inc  c                                           ; $66b4: $0c
	inc  e                                           ; $66b5: $1c
	inc  b                                           ; $66b6: $04
	rlca                                             ; $66b7: $07
	rlca                                             ; $66b8: $07
	dec  e                                           ; $66b9: $1d
	ld   b, b                                        ; $66ba: $40
	inc  d                                           ; $66bb: $14
	inc  bc                                          ; $66bc: $03
	inc  d                                           ; $66bd: $14
	ld   bc, $2902                                   ; $66be: $01 $02 $29
	nop                                              ; $66c1: $00
	ld   bc, $9e50                                   ; $66c2: $01 $50 $9e
	and  l                                           ; $66c5: $a5
	and  $6b                                         ; $66c6: $e6 $6b
	ld   d, h                                        ; $66c8: $54
	ld   a, b                                        ; $66c9: $78
	ld   e, c                                        ; $66ca: $59
	ld   e, b                                        ; $66cb: $58
	ld   h, l                                        ; $66cc: $65
	ld   [hl], h                                     ; $66cd: $74
	sbc  c                                           ; $66ce: $99
	rst  $38                                         ; $66cf: $ff
	rst  $38                                         ; $66d0: $ff
	dec  c                                           ; $66d1: $0d
	nop                                              ; $66d2: $00
	ld   a, [bc]                                     ; $66d3: $0a
	ld   bc, $5490                                   ; $66d4: $01 $90 $54
	ld   d, d                                        ; $66d7: $52
	ld   d, d                                        ; $66d8: $52
	ld   a, [$520d]                                  ; $66d9: $fa $0d $52
	ld   h, c                                        ; $66dc: $61
	ld   d, h                                        ; $66dd: $54
	sbc  [hl]                                        ; $66de: $9e
	cp   c                                           ; $66df: $b9
	push hl                                          ; $66e0: $e5
	push af                                          ; $66e1: $f5
	sbc  $fb                                         ; $66e2: $de $fb
	db   $ed                                         ; $66e4: $ed
	sbc  a                                           ; $66e5: $9f
	dec  c                                           ; $66e6: $0d
	nop                                              ; $66e7: $00
	ld   a, [bc]                                     ; $66e8: $0a
	dec  c                                           ; $66e9: $0d
	nop                                              ; $66ea: $00
	nop                                              ; $66eb: $00
	rrca                                             ; $66ec: $0f
	nop                                              ; $66ed: $00
	ld   bc, $1e09                                   ; $66ee: $01 $09 $1e
	nop                                              ; $66f1: $00
	rrca                                             ; $66f2: $0f
	nop                                              ; $66f3: $00
	ld   bc, $6601                                   ; $66f4: $01 $01 $66
	sub  c                                           ; $66f7: $91
	ld   d, b                                        ; $66f8: $50
	sbc  [hl]                                        ; $66f9: $9e
	ld   h, l                                        ; $66fa: $65
	sbc  b                                           ; $66fb: $98
	halt                                             ; $66fc: $76
	sbc  b                                           ; $66fd: $98
	and  b                                           ; $66fe: $a0
	sub  d                                           ; $66ff: $92
	sbc  e                                           ; $6700: $9b
	ld   d, h                                        ; $6701: $54
	sbc  a                                           ; $6702: $9f
	dec  c                                           ; $6703: $0d
	nop                                              ; $6704: $00
	ld   a, [bc]                                     ; $6705: $0a
	dec  b                                           ; $6706: $05
	add  b                                           ; $6707: $80
	ld   b, l                                        ; $6708: $45
	ld   bc, $0001                                   ; $6709: $01 $01 $00
	inc  e                                           ; $670c: $1c
	inc  b                                           ; $670d: $04
	nop                                              ; $670e: $00
	nop                                              ; $670f: $00
	ld   bc, $a154                                   ; $6710: $01 $54 $a1
	sbc  [hl]                                        ; $6713: $9e
	ld   d, d                                        ; $6714: $52
	ld   d, d                                        ; $6715: $52
	sub  [hl]                                        ; $6716: $96
	sbc  a                                           ; $6717: $9f
	dec  c                                           ; $6718: $0d
	ld   h, [hl]                                     ; $6719: $66
	sub  c                                           ; $671a: $91
	sbc  [hl]                                        ; $671b: $9e
	and  e                                           ; $671c: $a3
	and  l                                           ; $671d: $a5
	db   $ec                                         ; $671e: $ec
	cp   d                                           ; $671f: $ba
	ld   e, c                                        ; $6720: $59
	sub  a                                           ; $6721: $97
	ld   a, e                                        ; $6722: $7b
	sbc  a                                           ; $6723: $9f
	dec  c                                           ; $6724: $0d
	ld   h, e                                        ; $6725: $63
	ld   d, d                                        ; $6726: $52
	ld   h, l                                        ; $6727: $65
	sub  l                                           ; $6728: $95
	ld   a, l                                        ; $6729: $7d
	ld   bc, $a307                                   ; $672a: $01 $07 $a3
	and  l                                           ; $672d: $a5
	db   $ec                                         ; $672e: $ec
	cp   d                                           ; $672f: $ba
	ld   bc, $6e08                                   ; $6730: $01 $08 $6e
	sub  [hl]                                        ; $6733: $96
	sbc  a                                           ; $6734: $9f
	dec  c                                           ; $6735: $0d
	nop                                              ; $6736: $00
	ld   a, [bc]                                     ; $6737: $0a
	add  hl, de                                      ; $6738: $19
	dec  b                                           ; $6739: $05
	inc  bc                                          ; $673a: $03
	cp   d                                           ; $673b: $ba
	and  l                                           ; $673c: $a5
	xor  h                                           ; $673d: $ac
	nop                                              ; $673e: $00
	nop                                              ; $673f: $00
	cp   d                                           ; $6740: $ba
	pop  af                                          ; $6741: $f1
	push af                                          ; $6742: $f5
	nop                                              ; $6743: $00
	ld   bc, $c9ba                                   ; $6744: $01 $ba $c9
	ei                                               ; $6747: $fb
	push af                                          ; $6748: $f5
	nop                                              ; $6749: $00
	ld   [bc], a                                     ; $674a: $02
	rlca                                             ; $674b: $07
	ld   [$020d], a                                  ; $674c: $ea $0d $02
	inc  bc                                          ; $674f: $03
	ld   bc, $2000                                   ; $6750: $01 $00 $20
	nop                                              ; $6753: $00
	rlca                                             ; $6754: $07
	ret                                              ; $6755: $c9


	dec  c                                           ; $6756: $0d
	ld   [bc], a                                     ; $6757: $02
	inc  bc                                          ; $6758: $03
	ld   bc, $2001                                   ; $6759: $01 $01 $20
	nop                                              ; $675c: $00
	rlca                                             ; $675d: $07
	ret                                              ; $675e: $c9


	dec  c                                           ; $675f: $0d
	ld   [bc], a                                     ; $6760: $02
	inc  bc                                          ; $6761: $03
	ld   bc, $2002                                   ; $6762: $01 $02 $20
	nop                                              ; $6765: $00
	ld   b, $a8                                      ; $6766: $06 $a8
	dec  c                                           ; $6768: $0d
	rrca                                             ; $6769: $0f
	inc  b                                           ; $676a: $04
	nop                                              ; $676b: $00
	ld   bc, $fbd7                                   ; $676c: $01 $d7 $fb
	sbc  [hl]                                        ; $676f: $9e
	ld   h, [hl]                                     ; $6770: $66
	ld   e, c                                        ; $6771: $59
	and  c                                           ; $6772: $a1
	ld   e, h                                        ; $6773: $5c
	sbc  d                                           ; $6774: $9a
	ld   l, [hl]                                     ; $6775: $6e
	sub  [hl]                                        ; $6776: $96
	sbc  a                                           ; $6777: $9f
	dec  c                                           ; $6778: $0d
	ld   l, a                                        ; $6779: $6f
	ld   d, d                                        ; $677a: $52
	ld   [bc], a                                     ; $677b: $02
	inc  de                                          ; $677c: $13
	ld   l, a                                        ; $677d: $6f
	sub  c                                           ; $677e: $91
	and  c                                           ; $677f: $a1
	ld   a, h                                        ; $6780: $7c
	adc  h                                           ; $6781: $8c
	ld   e, a                                        ; $6782: $5f
	sbc  a                                           ; $6783: $9f
	dec  c                                           ; $6784: $0d
	nop                                              ; $6785: $00
	ld   a, [bc]                                     ; $6786: $0a
	ld   b, $51                                      ; $6787: $06 $51
	db   $10                                         ; $6789: $10
	rrca                                             ; $678a: $0f
	inc  b                                           ; $678b: $04
	nop                                              ; $678c: $00
	ld   bc, $0701                                   ; $678d: $01 $01 $07
	push af                                          ; $6790: $f5
	ld   bc, $5a08                                   ; $6791: $01 $08 $5a
	ld   [hl], d                                     ; $6794: $72
	ld   d, d                                        ; $6795: $52
	ld   l, l                                        ; $6796: $6d
	ld   e, c                                        ; $6797: $59
	sub  a                                           ; $6798: $97
	dec  c                                           ; $6799: $0d
	ld   l, a                                        ; $679a: $6f
	ld   d, d                                        ; $679b: $52
	ld   [bc], a                                     ; $679c: $02
	inc  de                                          ; $679d: $13
	ld   l, a                                        ; $679e: $6f
	sub  c                                           ; $679f: $91
	and  c                                           ; $67a0: $a1
	ld   a, h                                        ; $67a1: $7c
	adc  h                                           ; $67a2: $8c
	ld   e, a                                        ; $67a3: $5f
	sbc  a                                           ; $67a4: $9f
	dec  c                                           ; $67a5: $0d
	nop                                              ; $67a6: $00
	ld   a, [bc]                                     ; $67a7: $0a
	ld   b, $51                                      ; $67a8: $06 $51
	db   $10                                         ; $67aa: $10
	rrca                                             ; $67ab: $0f
	nop                                              ; $67ac: $00
	ld   bc, $0101                                   ; $67ad: $01 $01 $01
	rlca                                             ; $67b0: $07
	cp   d                                           ; $67b1: $ba
	and  l                                           ; $67b2: $a5
	xor  h                                           ; $67b3: $ac
	ld   bc, $fa08                                   ; $67b4: $01 $08 $fa
	dec  c                                           ; $67b7: $0d
	nop                                              ; $67b8: $00
	ld   a, [bc]                                     ; $67b9: $0a
	inc  e                                           ; $67ba: $1c
	inc  b                                           ; $67bb: $04
	nop                                              ; $67bc: $00
	nop                                              ; $67bd: $00
	ld   bc, $ffac                                   ; $67be: $01 $ac $ff
	rst  $38                                         ; $67c1: $ff
	ld   bc, $ac07                                   ; $67c2: $01 $07 $ac
	db   $e3                                         ; $67c5: $e3
	db   $eb                                         ; $67c6: $eb
	ld   bc, $fa08                                   ; $67c7: $01 $08 $fa
	dec  c                                           ; $67ca: $0d
	nop                                              ; $67cb: $00
	ld   a, [bc]                                     ; $67cc: $0a
	add  hl, de                                      ; $67cd: $19
	dec  b                                           ; $67ce: $05
	inc  bc                                          ; $67cf: $03
	db   $eb                                         ; $67d0: $eb
	and  l                                           ; $67d1: $a5
	push af                                          ; $67d2: $f5
	pop  bc                                          ; $67d3: $c1
	push af                                          ; $67d4: $f5
	cp   d                                           ; $67d5: $ba
	nop                                              ; $67d6: $00
	nop                                              ; $67d7: $00
	db   $eb                                         ; $67d8: $eb
	ei                                               ; $67d9: $fb
	db   $e3                                         ; $67da: $e3
	push af                                          ; $67db: $f5
	nop                                              ; $67dc: $00
	ld   bc, $a5eb                                   ; $67dd: $01 $eb $a5
	xor  e                                           ; $67e0: $ab
	push af                                          ; $67e1: $f5
	nop                                              ; $67e2: $00
	ld   [bc], a                                     ; $67e3: $02
	rlca                                             ; $67e4: $07
	ld   b, c                                        ; $67e5: $41
	ld   c, $02                                      ; $67e6: $0e $02
	inc  bc                                          ; $67e8: $03
	ld   bc, $2000                                   ; $67e9: $01 $00 $20
	nop                                              ; $67ec: $00
	rlca                                             ; $67ed: $07
	ret                                              ; $67ee: $c9


	dec  c                                           ; $67ef: $0d
	ld   [bc], a                                     ; $67f0: $02
	inc  bc                                          ; $67f1: $03
	ld   bc, $2001                                   ; $67f2: $01 $01 $20
	nop                                              ; $67f5: $00
	rlca                                             ; $67f6: $07
	ret                                              ; $67f7: $c9


	dec  c                                           ; $67f8: $0d
	ld   [bc], a                                     ; $67f9: $02
	inc  bc                                          ; $67fa: $03
	ld   bc, $2002                                   ; $67fb: $01 $02 $20
	nop                                              ; $67fe: $00
	ld   b, $a8                                      ; $67ff: $06 $a8
	dec  c                                           ; $6801: $0d
	rrca                                             ; $6802: $0f
	nop                                              ; $6803: $00
	ld   bc, $0101                                   ; $6804: $01 $01 $01
	rlca                                             ; $6807: $07
	db   $eb                                         ; $6808: $eb
	and  l                                           ; $6809: $a5
	push af                                          ; $680a: $f5
	pop  bc                                          ; $680b: $c1
	push af                                          ; $680c: $f5
	cp   d                                           ; $680d: $ba
	ld   bc, $fa08                                   ; $680e: $01 $08 $fa
	dec  c                                           ; $6811: $0d
	nop                                              ; $6812: $00
	ld   a, [bc]                                     ; $6813: $0a
	inc  e                                           ; $6814: $1c
	inc  b                                           ; $6815: $04
	nop                                              ; $6816: $00
	nop                                              ; $6817: $00
	ld   bc, $ffba                                   ; $6818: $01 $ba $ff
	rst  $38                                         ; $681b: $ff
	ld   bc, $ba07                                   ; $681c: $01 $07 $ba
	and  l                                           ; $681f: $a5
	cp   d                                           ; $6820: $ba
	ld   bc, $fa08                                   ; $6821: $01 $08 $fa
	dec  c                                           ; $6824: $0d
	nop                                              ; $6825: $00
	ld   a, [bc]                                     ; $6826: $0a
	add  hl, de                                      ; $6827: $19
	dec  b                                           ; $6828: $05
	inc  bc                                          ; $6829: $03
	cp   d                                           ; $682a: $ba
	jp   nc, $baa5                                   ; $682b: $d2 $a5 $ba

	nop                                              ; $682e: $00
	nop                                              ; $682f: $00
	cp   d                                           ; $6830: $ba
	pop  af                                          ; $6831: $f1
	push af                                          ; $6832: $f5
	nop                                              ; $6833: $00
	ld   bc, $b2ba                                   ; $6834: $01 $ba $b2
	db   $ed                                         ; $6837: $ed
	ret                                              ; $6838: $c9


	push af                                          ; $6839: $f5
	nop                                              ; $683a: $00
	ld   [bc], a                                     ; $683b: $02
	rlca                                             ; $683c: $07
	sbc  c                                           ; $683d: $99
	ld   c, $02                                      ; $683e: $0e $02
	inc  bc                                          ; $6840: $03
	ld   bc, $2000                                   ; $6841: $01 $00 $20
	nop                                              ; $6844: $00
	rlca                                             ; $6845: $07
	ret                                              ; $6846: $c9


	dec  c                                           ; $6847: $0d
	ld   [bc], a                                     ; $6848: $02
	inc  bc                                          ; $6849: $03
	ld   bc, $2001                                   ; $684a: $01 $01 $20
	nop                                              ; $684d: $00
	rlca                                             ; $684e: $07
	ret                                              ; $684f: $c9


	dec  c                                           ; $6850: $0d
	ld   [bc], a                                     ; $6851: $02
	inc  bc                                          ; $6852: $03
	ld   bc, $2002                                   ; $6853: $01 $02 $20
	nop                                              ; $6856: $00
	ld   b, $a8                                      ; $6857: $06 $a8
	dec  c                                           ; $6859: $0d
	rrca                                             ; $685a: $0f
	nop                                              ; $685b: $00
	ld   bc, $0101                                   ; $685c: $01 $01 $01
	rlca                                             ; $685f: $07
	cp   d                                           ; $6860: $ba
	jp   nc, $baa5                                   ; $6861: $d2 $a5 $ba

	ld   bc, $fa08                                   ; $6864: $01 $08 $fa
	dec  c                                           ; $6867: $0d
	nop                                              ; $6868: $00
	ld   a, [bc]                                     ; $6869: $0a
	inc  e                                           ; $686a: $1c
	inc  b                                           ; $686b: $04
	inc  bc                                          ; $686c: $03
	inc  bc                                          ; $686d: $03
	ld   bc, $6d8c                                   ; $686e: $01 $8c $6d
	ld   bc, $ba07                                   ; $6871: $01 $07 $ba
	ld   bc, $5308                                   ; $6874: $01 $08 $53
	ld   sp, hl                                      ; $6877: $f9
	dec  c                                           ; $6878: $0d
	nop                                              ; $6879: $00
	inc  e                                           ; $687a: $1c
	inc  b                                           ; $687b: $04
	nop                                              ; $687c: $00
	nop                                              ; $687d: $00
	ld   bc, $ff56                                   ; $687e: $01 $56 $ff
	rst  $38                                         ; $6881: $ff
	halt                                             ; $6882: $76
	ld   bc, $6707                                   ; $6883: $01 $07 $67
	sbc  c                                           ; $6886: $99
	adc  a                                           ; $6887: $8f
	ld   bc, $fa08                                   ; $6888: $01 $08 $fa
	dec  c                                           ; $688b: $0d
	nop                                              ; $688c: $00
	ld   a, [bc]                                     ; $688d: $0a
	add  hl, de                                      ; $688e: $19
	dec  b                                           ; $688f: $05
	inc  bc                                          ; $6890: $03
	db   $e3                                         ; $6891: $e3
	pop  bc                                          ; $6892: $c1
	xor  h                                           ; $6893: $ac
	nop                                              ; $6894: $00
	nop                                              ; $6895: $00
	db   $e3                                         ; $6896: $e3
	xor  l                                           ; $6897: $ad
	call c, $00f5                                    ; $6898: $dc $f5 $00
	ld   bc, $528f                                   ; $689b: $01 $8f $52
	ld   h, [hl]                                     ; $689e: $66
	and  c                                           ; $689f: $a1
	nop                                              ; $68a0: $00
	ld   [bc], a                                     ; $68a1: $02
	rlca                                             ; $68a2: $07
	ld   e, h                                        ; $68a3: $5c
	rrca                                             ; $68a4: $0f
	ld   [bc], a                                     ; $68a5: $02
	inc  bc                                          ; $68a6: $03
	ld   bc, $2000                                   ; $68a7: $01 $00 $20
	nop                                              ; $68aa: $00
	rlca                                             ; $68ab: $07
	ld   l, $0f                                      ; $68ac: $2e $0f
	ld   [bc], a                                     ; $68ae: $02
	inc  bc                                          ; $68af: $03
	ld   bc, $2001                                   ; $68b0: $01 $01 $20
	nop                                              ; $68b3: $00
	rlca                                             ; $68b4: $07
	ld   l, $0f                                      ; $68b5: $2e $0f
	ld   [bc], a                                     ; $68b7: $02
	inc  bc                                          ; $68b8: $03
	ld   bc, $2002                                   ; $68b9: $01 $02 $20
	nop                                              ; $68bc: $00
	ld   b, $ff                                      ; $68bd: $06 $ff
	ld   c, $1c                                      ; $68bf: $0e $1c
	inc  b                                           ; $68c1: $04
	ld   bc, $1d01                                   ; $68c2: $01 $01 $1d
	ld   b, b                                        ; $68c5: $40
	inc  d                                           ; $68c6: $14
	inc  bc                                          ; $68c7: $03
	inc  d                                           ; $68c8: $14
	ld   bc, $2802                                   ; $68c9: $01 $02 $28
	nop                                              ; $68cc: $00
	ld   bc, $fbd7                                   ; $68cd: $01 $d7 $fb
	sbc  [hl]                                        ; $68d0: $9e
	ld   h, [hl]                                     ; $68d1: $66
	ld   e, c                                        ; $68d2: $59
	and  c                                           ; $68d3: $a1
	ld   e, h                                        ; $68d4: $5c
	sbc  d                                           ; $68d5: $9a
	ld   l, [hl]                                     ; $68d6: $6e
	sub  [hl]                                        ; $68d7: $96
	sbc  a                                           ; $68d8: $9f
	dec  c                                           ; $68d9: $0d
	and  e                                           ; $68da: $a3
	and  l                                           ; $68db: $a5
	db   $ec                                         ; $68dc: $ec
	cp   d                                           ; $68dd: $ba
	ld   a, h                                        ; $68de: $7c
	ld   e, c                                        ; $68df: $59
	ld   l, a                                        ; $68e0: $6f
	db   $fc                                         ; $68e1: $fc
	sbc  a                                           ; $68e2: $9f
	dec  c                                           ; $68e3: $0d
	xor  c                                           ; $68e4: $a9
	reti                                             ; $68e5: $d9


	reti                                             ; $68e6: $d9


	reti                                             ; $68e7: $d9


	sbc  a                                           ; $68e8: $9f
	dec  c                                           ; $68e9: $0d
	nop                                              ; $68ea: $00
	ld   a, [bc]                                     ; $68eb: $0a
	ld   b, $51                                      ; $68ec: $06 $51
	db   $10                                         ; $68ee: $10
	inc  e                                           ; $68ef: $1c
	inc  b                                           ; $68f0: $04
	ld   bc, $1d01                                   ; $68f1: $01 $01 $1d
	ld   b, b                                        ; $68f4: $40
	inc  d                                           ; $68f5: $14
	inc  bc                                          ; $68f6: $03
	inc  d                                           ; $68f7: $14
	ld   bc, $2802                                   ; $68f8: $01 $02 $28
	nop                                              ; $68fb: $00
	ld   bc, $d9a9                                   ; $68fc: $01 $a9 $d9
	reti                                             ; $68ff: $d9


	reti                                             ; $6900: $d9


	sbc  a                                           ; $6901: $9f
	dec  c                                           ; $6902: $0d
	ld   bc, $f507                                   ; $6903: $01 $07 $f5
	ld   bc, $5a08                                   ; $6906: $01 $08 $5a
	ld   [hl], d                                     ; $6909: $72
	ld   d, d                                        ; $690a: $52
	ld   l, l                                        ; $690b: $6d
	ld   e, c                                        ; $690c: $59
	sub  a                                           ; $690d: $97
	dec  c                                           ; $690e: $0d
	and  e                                           ; $690f: $a3
	and  l                                           ; $6910: $a5
	db   $ec                                         ; $6911: $ec
	cp   d                                           ; $6912: $ba
	ld   a, h                                        ; $6913: $7c
	ld   e, c                                        ; $6914: $59
	ld   l, a                                        ; $6915: $6f
	ld   a, [$000d]                                  ; $6916: $fa $0d $00
	ld   a, [bc]                                     ; $6919: $0a
	ld   b, $51                                      ; $691a: $06 $51
	db   $10                                         ; $691c: $10
	rrca                                             ; $691d: $0f
	nop                                              ; $691e: $00
	ld   bc, $0101                                   ; $691f: $01 $01 $01
	rlca                                             ; $6922: $07
	db   $e3                                         ; $6923: $e3
	pop  bc                                          ; $6924: $c1
	xor  h                                           ; $6925: $ac
	ld   bc, $fa08                                   ; $6926: $01 $08 $fa
	dec  c                                           ; $6929: $0d
	nop                                              ; $692a: $00
	ld   a, [bc]                                     ; $692b: $0a
	inc  e                                           ; $692c: $1c
	inc  b                                           ; $692d: $04
	nop                                              ; $692e: $00
	nop                                              ; $692f: $00
	ld   bc, $f9ac                                   ; $6930: $01 $ac $f9
	db   $10                                         ; $6933: $10
	rst  $38                                         ; $6934: $ff
	rst  $38                                         ; $6935: $ff
	ld   bc, $ac07                                   ; $6936: $01 $07 $ac
	db   $e4                                         ; $6939: $e4
	db   $e3                                         ; $693a: $e3
	ld   bc, $fa08                                   ; $693b: $01 $08 $fa
	dec  c                                           ; $693e: $0d
	nop                                              ; $693f: $00
	ld   a, [bc]                                     ; $6940: $0a
	add  hl, de                                      ; $6941: $19
	dec  b                                           ; $6942: $05
	inc  bc                                          ; $6943: $03
	db   $e3                                         ; $6944: $e3
	sub  $a4                                         ; $6945: $d6 $a4
	cp   d                                           ; $6947: $ba
	ret                                              ; $6948: $c9


	sub  $a8                                         ; $6949: $d6 $a8
	xor  $ba                                         ; $694b: $ee $ba
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	db   $e3                                         ; $694f: $e3
	db   $ed                                         ; $6950: $ed
	reti                                             ; $6951: $d9


	push af                                          ; $6952: $f5
	nop                                              ; $6953: $00
	ld   bc, $efe3                                   ; $6954: $01 $e3 $ef
	push af                                          ; $6957: $f5
	nop                                              ; $6958: $00
	ld   [bc], a                                     ; $6959: $02
	rlca                                             ; $695a: $07
	or   a                                           ; $695b: $b7
	rrca                                             ; $695c: $0f
	ld   [bc], a                                     ; $695d: $02
	inc  bc                                          ; $695e: $03
	ld   bc, $2000                                   ; $695f: $01 $00 $20
	nop                                              ; $6962: $00
	rlca                                             ; $6963: $07
	ld   l, $0f                                      ; $6964: $2e $0f
	ld   [bc], a                                     ; $6966: $02
	inc  bc                                          ; $6967: $03
	ld   bc, $2001                                   ; $6968: $01 $01 $20
	nop                                              ; $696b: $00
	rlca                                             ; $696c: $07
	ld   l, $0f                                      ; $696d: $2e $0f
	ld   [bc], a                                     ; $696f: $02
	inc  bc                                          ; $6970: $03
	ld   bc, $2002                                   ; $6971: $01 $02 $20
	nop                                              ; $6974: $00
	ld   b, $ff                                      ; $6975: $06 $ff
	ld   c, $0f                                      ; $6977: $0e $0f
	nop                                              ; $6979: $00
	ld   bc, $0101                                   ; $697a: $01 $01 $01
	rlca                                             ; $697d: $07
	db   $e3                                         ; $697e: $e3
	sub  $a4                                         ; $697f: $d6 $a4
	cp   d                                           ; $6981: $ba
	ret                                              ; $6982: $c9


	sub  $a8                                         ; $6983: $d6 $a8
	xor  $ba                                         ; $6985: $ee $ba
	ld   bc, $fa08                                   ; $6987: $01 $08 $fa
	dec  c                                           ; $698a: $0d
	nop                                              ; $698b: $00
	ld   a, [bc]                                     ; $698c: $0a
	inc  e                                           ; $698d: $1c
	inc  b                                           ; $698e: $04
	inc  bc                                          ; $698f: $03
	inc  bc                                          ; $6990: $03
	ld   bc, $6d8c                                   ; $6991: $01 $8c $6d
	ld   bc, $ba07                                   ; $6994: $01 $07 $ba
	ld   bc, $5308                                   ; $6997: $01 $08 $53
	ld   sp, hl                                      ; $699a: $f9
	dec  c                                           ; $699b: $0d
	nop                                              ; $699c: $00
	inc  e                                           ; $699d: $1c
	inc  b                                           ; $699e: $04
	nop                                              ; $699f: $00
	nop                                              ; $69a0: $00
	ld   bc, $ff56                                   ; $69a1: $01 $56 $ff
	rst  $38                                         ; $69a4: $ff
	halt                                             ; $69a5: $76
	ld   bc, $ba07                                   ; $69a6: $01 $07 $ba
	and  a                                           ; $69a9: $a7
	xor  b                                           ; $69aa: $a8
	ei                                               ; $69ab: $fb
	ret  z                                           ; $69ac: $c8

	push af                                          ; $69ad: $f5
	ld   bc, $fa08                                   ; $69ae: $01 $08 $fa
	dec  c                                           ; $69b1: $0d
	nop                                              ; $69b2: $00
	ld   a, [bc]                                     ; $69b3: $0a
	inc  e                                           ; $69b4: $1c
	inc  b                                           ; $69b5: $04
	ld   b, $06                                      ; $69b6: $06 $06
	ld   bc, $ff50                                   ; $69b8: $01 $50 $ff
	rst  $38                                         ; $69bb: $ff
	ld   bc, $f507                                   ; $69bc: $01 $07 $f5
	ld   bc, $5a08                                   ; $69bf: $01 $08 $5a
	ld   [hl], d                                     ; $69c2: $72
	ld   d, d                                        ; $69c3: $52
	ld   l, a                                        ; $69c4: $6f
	sub  c                                           ; $69c5: $91
	ld   [hl], c                                     ; $69c6: $71
	ld   l, l                                        ; $69c7: $6d
	sbc  a                                           ; $69c8: $9f
	dec  c                                           ; $69c9: $0d
	nop                                              ; $69ca: $00
	ld   a, [bc]                                     ; $69cb: $0a
	inc  e                                           ; $69cc: $1c
	inc  b                                           ; $69cd: $04
	dec  b                                           ; $69ce: $05
	dec  b                                           ; $69cf: $05
	ld   bc, $d9a9                                   ; $69d0: $01 $a9 $d9
	reti                                             ; $69d3: $d9


	rst  $38                                         ; $69d4: $ff
	rst  $38                                         ; $69d5: $ff
	dec  c                                           ; $69d6: $0d
	and  e                                           ; $69d7: $a3
	and  l                                           ; $69d8: $a5
	db   $ec                                         ; $69d9: $ec
	cp   d                                           ; $69da: $ba
	sbc  [hl]                                        ; $69db: $9e
	adc  h                                           ; $69dc: $8c
	ld   e, a                                        ; $69dd: $5f
	ld   l, a                                        ; $69de: $6f
	sub  c                                           ; $69df: $91
	ld   [hl], c                                     ; $69e0: $71
	ld   l, l                                        ; $69e1: $6d
	rst  $38                                         ; $69e2: $ff
	rst  $38                                         ; $69e3: $ff
	dec  c                                           ; $69e4: $0d
	nop                                              ; $69e5: $00
	ld   a, [bc]                                     ; $69e6: $0a
	dec  e                                           ; $69e7: $1d
	ld   b, b                                        ; $69e8: $40
	inc  d                                           ; $69e9: $14
	inc  bc                                          ; $69ea: $03
	inc  d                                           ; $69eb: $14
	ld   bc, $2803                                   ; $69ec: $01 $03 $28
	nop                                              ; $69ef: $00
	ld   bc, $9075                                   ; $69f0: $01 $75 $90
	sbc  [hl]                                        ; $69f3: $9e
	ld   h, a                                        ; $69f4: $67
	ld   h, d                                        ; $69f5: $62
	ld   e, l                                        ; $69f6: $5d
	ld   l, l                                        ; $69f7: $6d
	ld   a, h                                        ; $69f8: $7c
	ld   h, l                                        ; $69f9: $65
	ld   e, c                                        ; $69fa: $59
	ld   [hl], c                                     ; $69fb: $71
	ld   l, l                                        ; $69fc: $6d
	sub  [hl]                                        ; $69fd: $96
	sbc  a                                           ; $69fe: $9f
	dec  c                                           ; $69ff: $0d
	ld   d, b                                        ; $6a00: $50
	sbc  b                                           ; $6a01: $98
	ld   e, d                                        ; $6a02: $5a

Call_067_6a03:
	halt                                             ; $6a03: $76
	ld   d, h                                        ; $6a04: $54
	sbc  [hl]                                        ; $6a05: $9e
	ld   l, a                                        ; $6a06: $6f
	ld   d, d                                        ; $6a07: $52
	ld   [bc], a                                     ; $6a08: $02
	inc  de                                          ; $6a09: $13
	ld   l, a                                        ; $6a0a: $6f
	sub  c                                           ; $6a0b: $91
	and  c                                           ; $6a0c: $a1
	sbc  a                                           ; $6a0d: $9f
	dec  c                                           ; $6a0e: $0d
	nop                                              ; $6a0f: $00
	ld   a, [bc]                                     ; $6a10: $0a
	nop                                              ; $6a11: $00
	ld   bc, $fb50                                   ; $6a12: $01 $50 $fb
	sbc  [hl]                                        ; $6a15: $9e
	ld   l, l                                        ; $6a16: $6d
	ld   a, h                                        ; $6a17: $7c
	ld   h, l                                        ; $6a18: $65
	ld   e, c                                        ; $6a19: $59
	ld   [hl], c                                     ; $6a1a: $71
	ld   l, l                                        ; $6a1b: $6d
	sbc  a                                           ; $6a1c: $9f
	dec  c                                           ; $6a1d: $0d
	ld   d, b                                        ; $6a1e: $50
	sbc  b                                           ; $6a1f: $98
	ld   e, d                                        ; $6a20: $5a
	halt                                             ; $6a21: $76
	ld   d, h                                        ; $6a22: $54
	sbc  [hl]                                        ; $6a23: $9e
	ld   l, a                                        ; $6a24: $6f
	ld   d, d                                        ; $6a25: $52
	ld   [bc], a                                     ; $6a26: $02
	inc  de                                          ; $6a27: $13
	ld   l, a                                        ; $6a28: $6f
	sub  c                                           ; $6a29: $91
	and  c                                           ; $6a2a: $a1
	sbc  a                                           ; $6a2b: $9f
	dec  c                                           ; $6a2c: $0d
	nop                                              ; $6a2d: $00
	ld   a, [bc]                                     ; $6a2e: $0a
	nop                                              ; $6a2f: $00
	rrca                                             ; $6a30: $0f
	nop                                              ; $6a31: $00
	ld   bc, $6601                                   ; $6a32: $01 $01 $66
	sub  c                                           ; $6a35: $91
	ld   d, b                                        ; $6a36: $50
	sbc  [hl]                                        ; $6a37: $9e
	or   b                                           ; $6a38: $b0
	and  l                                           ; $6a39: $a5
	cp   e                                           ; $6a3a: $bb
	and  b                                           ; $6a3b: $a0
	sub  d                                           ; $6a3c: $92
	sbc  e                                           ; $6a3d: $9b
	ld   d, h                                        ; $6a3e: $54
	sbc  a                                           ; $6a3f: $9f
	dec  c                                           ; $6a40: $0d
	nop                                              ; $6a41: $00
	ld   a, [bc]                                     ; $6a42: $0a
	dec  b                                           ; $6a43: $05
	add  b                                           ; $6a44: $80
	ld   b, l                                        ; $6a45: $45
	ld   bc, $0001                                   ; $6a46: $01 $01 $00
	inc  e                                           ; $6a49: $1c
	inc  b                                           ; $6a4a: $04
	ld   bc, $0101                                   ; $6a4b: $01 $01 $01
	ld   d, h                                        ; $6a4e: $54
	and  c                                           ; $6a4f: $a1
	ld   a, [$660d]                                  ; $6a50: $fa $0d $66
	sub  c                                           ; $6a53: $91
	sbc  [hl]                                        ; $6a54: $9e
	and  e                                           ; $6a55: $a3
	and  l                                           ; $6a56: $a5
	db   $ec                                         ; $6a57: $ec
	cp   d                                           ; $6a58: $ba
	ld   e, d                                        ; $6a59: $5a
	dec  c                                           ; $6a5a: $0d
	sub  b                                           ; $6a5b: $90
	and  c                                           ; $6a5c: $a1
	ld   l, [hl]                                     ; $6a5d: $6e
	ld   d, d                                        ; $6a5e: $52
	ld   l, [hl]                                     ; $6a5f: $6e
	ld   h, a                                        ; $6a60: $67
	ld   a, [$000d]                                  ; $6a61: $fa $0d $00
	ld   a, [bc]                                     ; $6a64: $0a
	inc  e                                           ; $6a65: $1c
	inc  b                                           ; $6a66: $04
	nop                                              ; $6a67: $00
	nop                                              ; $6a68: $00
	ld   bc, $0701                                   ; $6a69: $01 $01 $07
	ret  nc                                          ; $6a6c: $d0

	xor  c                                           ; $6a6d: $a9
	ld   bc, $7608                                   ; $6a6e: $01 $08 $76
	ld   bc, $ac07                                   ; $6a71: $01 $07 $ac
	ld   bc, $5a08                                   ; $6a74: $01 $08 $5a
	dec  c                                           ; $6a77: $0d
	ld   e, e                                        ; $6a78: $5b
	sub  l                                           ; $6a79: $95
	ld   d, h                                        ; $6a7a: $54
	ld   l, e                                        ; $6a7b: $6b
	ld   d, h                                        ; $6a7c: $54
	ld   h, l                                        ; $6a7d: $65
	adc  h                                           ; $6a7e: $8c
	ld   h, l                                        ; $6a7f: $65
	ld   l, l                                        ; $6a80: $6d
	sbc  a                                           ; $6a81: $9f
	dec  c                                           ; $6a82: $0d
	ld   e, c                                        ; $6a83: $59
	ld   [hl], c                                     ; $6a84: $71
	ld   l, l                                        ; $6a85: $6d
	ld   a, h                                        ; $6a86: $7c
	ld   a, l                                        ; $6a87: $7d
	ld   [hl], a                                     ; $6a88: $77
	ld   [hl], c                                     ; $6a89: $71
	ld   l, a                                        ; $6a8a: $6f
	ld   sp, hl                                      ; $6a8b: $f9
	dec  c                                           ; $6a8c: $0d
	nop                                              ; $6a8d: $00
	ld   a, [bc]                                     ; $6a8e: $0a
	add  hl, de                                      ; $6a8f: $19
	dec  b                                           ; $6a90: $05
	inc  bc                                          ; $6a91: $03
	ld   bc, $d007                                   ; $6a92: $01 $07 $d0
	xor  c                                           ; $6a95: $a9
	ld   bc, $5908                                   ; $6a96: $01 $08 $59
	ld   a, b                                        ; $6a99: $78
	ld   sp, hl                                      ; $6a9a: $f9
	nop                                              ; $6a9b: $00
	nop                                              ; $6a9c: $00
	ld   bc, $ac07                                   ; $6a9d: $01 $07 $ac
	ld   bc, $5908                                   ; $6aa0: $01 $08 $59
	ld   a, b                                        ; $6aa3: $78
	ld   sp, hl                                      ; $6aa4: $f9
	nop                                              ; $6aa5: $00
	ld   bc, $5b80                                   ; $6aa6: $01 $80 $5b
	sbc  l                                           ; $6aa9: $9d
	ld   e, a                                        ; $6aaa: $5f
	ld   e, c                                        ; $6aab: $59
	ld   a, b                                        ; $6aac: $78
	ld   sp, hl                                      ; $6aad: $f9
	nop                                              ; $6aae: $00
	ld   [bc], a                                     ; $6aaf: $02
	rlca                                             ; $6ab0: $07
	dec  c                                           ; $6ab1: $0d
	ld   de, $0302                                   ; $6ab2: $11 $02 $03
	ld   bc, $2000                                   ; $6ab5: $01 $00 $20
	nop                                              ; $6ab8: $00
	rlca                                             ; $6ab9: $07
	dec  sp                                          ; $6aba: $3b
	ld   de, $0302                                   ; $6abb: $11 $02 $03
	ld   bc, $2001                                   ; $6abe: $01 $01 $20
	nop                                              ; $6ac1: $00
	rlca                                             ; $6ac2: $07
	dec  sp                                          ; $6ac3: $3b
	ld   de, $0302                                   ; $6ac4: $11 $02 $03
	ld   bc, $2002                                   ; $6ac7: $01 $02 $20
	nop                                              ; $6aca: $00
	ld   b, $3b                                      ; $6acb: $06 $3b
	ld   de, $041c                                   ; $6acd: $11 $1c $04
	ld   bc, $1401                                   ; $6ad0: $01 $01 $14
	dec  de                                          ; $6ad3: $1b
	ld   bc, $d501                                   ; $6ad4: $01 $01 $d5
	push af                                          ; $6ad7: $f5
	sbc  $fb                                         ; $6ad8: $de $fb
	push af                                          ; $6ada: $f5
	ld   a, [$d00d]                                  ; $6adb: $fa $0d $d0
	xor  c                                           ; $6ade: $a9
	ld   l, [hl]                                     ; $6adf: $6e
	ld   e, c                                        ; $6ae0: $59
	sub  a                                           ; $6ae1: $97
	ld   bc, $7d07                                   ; $6ae2: $01 $07 $7d
	ld   d, [hl]                                     ; $6ae5: $56
	ei                                               ; $6ae6: $fb
	ld   bc, $a108                                   ; $6ae7: $01 $08 $a1
	ld   l, [hl]                                     ; $6aea: $6e
	sub  [hl]                                        ; $6aeb: $96
	sbc  a                                           ; $6aec: $9f
	dec  c                                           ; $6aed: $0d
	nop                                              ; $6aee: $00
	ld   a, [bc]                                     ; $6aef: $0a
	dec  b                                           ; $6af0: $05
	ld   b, b                                        ; $6af1: $40
	rst  $38                                         ; $6af2: $ff
	inc  bc                                          ; $6af3: $03
	rst  $38                                         ; $6af4: $ff
	ld   bc, $2801                                   ; $6af5: $01 $01 $28
	nop                                              ; $6af8: $00
	ld   b, $65                                      ; $6af9: $06 $65
	ld   de, $040f                                   ; $6afb: $11 $0f $04
	nop                                              ; $6afe: $00
	inc  d                                           ; $6aff: $14
	inc  e                                           ; $6b00: $1c
	ld   bc, $d701                                   ; $6b01: $01 $01 $d7
	ei                                               ; $6b04: $fb
	ld   a, [$690d]                                  ; $6b05: $fa $0d $69
	ld   d, d                                        ; $6b08: $52
	ld   e, c                                        ; $6b09: $59
	ld   d, d                                        ; $6b0a: $52
	ld   a, l                                        ; $6b0b: $7d
	sbc  [hl]                                        ; $6b0c: $9e
	ret  nc                                          ; $6b0d: $d0

	xor  c                                           ; $6b0e: $a9
	ld   l, [hl]                                     ; $6b0f: $6e
	sub  [hl]                                        ; $6b10: $96
	sbc  a                                           ; $6b11: $9f
	dec  c                                           ; $6b12: $0d
	ret  nc                                          ; $6b13: $d0

	xor  c                                           ; $6b14: $a9
	ld   l, [hl]                                     ; $6b15: $6e
	ld   e, c                                        ; $6b16: $59
	sub  a                                           ; $6b17: $97
	ld   bc, $7d07                                   ; $6b18: $01 $07 $7d
	ld   d, [hl]                                     ; $6b1b: $56
	ei                                               ; $6b1c: $fb
	ld   bc, $a108                                   ; $6b1d: $01 $08 $a1
	ld   l, [hl]                                     ; $6b20: $6e
	sub  [hl]                                        ; $6b21: $96
	sbc  a                                           ; $6b22: $9f
	dec  c                                           ; $6b23: $0d
	nop                                              ; $6b24: $00
	ld   a, [bc]                                     ; $6b25: $0a
	rrca                                             ; $6b26: $0f
	inc  b                                           ; $6b27: $04
	nop                                              ; $6b28: $00
	ld   bc, $5c72                                   ; $6b29: $01 $72 $5c
	ld   a, h                                        ; $6b2c: $7c
	sub  b                                           ; $6b2d: $90
	and  c                                           ; $6b2e: $a1
	ld   l, [hl]                                     ; $6b2f: $6e
	ld   d, d                                        ; $6b30: $52
	sbc  a                                           ; $6b31: $9f
	dec  c                                           ; $6b32: $0d
	ld   bc, $c007                                   ; $6b33: $01 $07 $c0
	or   d                                           ; $6b36: $b2
	ld   bc, $7608                                   ; $6b37: $01 $08 $76
	ld   bc, $df07                                   ; $6b3a: $01 $07 $df
	push bc                                          ; $6b3d: $c5
	ld   bc, $7d08                                   ; $6b3e: $01 $08 $7d
	dec  c                                           ; $6b41: $0d
	ld   [hl], a                                     ; $6b42: $77
	ld   [hl], c                                     ; $6b43: $71
	ld   l, a                                        ; $6b44: $6f
	ld   e, d                                        ; $6b45: $5a
	ld   l, l                                        ; $6b46: $6d
	ld   e, c                                        ; $6b47: $59
	ld   d, d                                        ; $6b48: $52
	ld   sp, hl                                      ; $6b49: $f9
	dec  c                                           ; $6b4a: $0d
	nop                                              ; $6b4b: $00
	ld   a, [bc]                                     ; $6b4c: $0a
	add  hl, de                                      ; $6b4d: $19
	dec  b                                           ; $6b4e: $05
	inc  bc                                          ; $6b4f: $03
	ld   bc, $c007                                   ; $6b50: $01 $07 $c0
	or   d                                           ; $6b53: $b2
	ld   bc, $5908                                   ; $6b54: $01 $08 $59
	ld   a, b                                        ; $6b57: $78
	ld   sp, hl                                      ; $6b58: $f9
	nop                                              ; $6b59: $00
	nop                                              ; $6b5a: $00
	ld   bc, $df07                                   ; $6b5b: $01 $07 $df
	push bc                                          ; $6b5e: $c5
	ld   bc, $5908                                   ; $6b5f: $01 $08 $59
	ld   a, b                                        ; $6b62: $78
	ld   sp, hl                                      ; $6b63: $f9
	nop                                              ; $6b64: $00
	ld   bc, $7858                                   ; $6b65: $01 $58 $78
	ld   h, [hl]                                     ; $6b68: $66
	ld   h, [hl]                                     ; $6b69: $66
	sub  c                                           ; $6b6a: $91
	ld   a, b                                        ; $6b6b: $78
	ld   d, d                                        ; $6b6c: $52
	ld   e, c                                        ; $6b6d: $59
	ld   sp, hl                                      ; $6b6e: $f9
	nop                                              ; $6b6f: $00
	ld   [bc], a                                     ; $6b70: $02
	rlca                                             ; $6b71: $07
	adc  $11                                         ; $6b72: $ce $11
	ld   [bc], a                                     ; $6b74: $02
	inc  bc                                          ; $6b75: $03
	ld   bc, $2000                                   ; $6b76: $01 $00 $20
	nop                                              ; $6b79: $00
	rlca                                             ; $6b7a: $07
	db   $fc                                         ; $6b7b: $fc
	ld   de, $0302                                   ; $6b7c: $11 $02 $03
	ld   bc, $2001                                   ; $6b7f: $01 $01 $20
	nop                                              ; $6b82: $00
	rlca                                             ; $6b83: $07
	db   $fc                                         ; $6b84: $fc
	ld   de, $0302                                   ; $6b85: $11 $02 $03
	ld   bc, $2002                                   ; $6b88: $01 $02 $20
	nop                                              ; $6b8b: $00
	ld   b, $fc                                      ; $6b8c: $06 $fc
	ld   de, $041c                                   ; $6b8e: $11 $1c $04
	ld   bc, $1401                                   ; $6b91: $01 $01 $14
	dec  de                                          ; $6b94: $1b
	ld   bc, $d501                                   ; $6b95: $01 $01 $d5
	push af                                          ; $6b98: $f5
	sbc  $fb                                         ; $6b99: $de $fb
	push af                                          ; $6b9b: $f5
	ld   a, [$c00d]                                  ; $6b9c: $fa $0d $c0
	or   d                                           ; $6b9f: $b2
	ld   l, [hl]                                     ; $6ba0: $6e
	ld   e, c                                        ; $6ba1: $59
	sub  a                                           ; $6ba2: $97
	ld   bc, $6d07                                   ; $6ba3: $01 $07 $6d
	ld   e, a                                        ; $6ba6: $5f
	ld   d, l                                        ; $6ba7: $55
	ld   bc, $a108                                   ; $6ba8: $01 $08 $a1
	ld   l, [hl]                                     ; $6bab: $6e
	sub  [hl]                                        ; $6bac: $96
	sbc  a                                           ; $6bad: $9f
	dec  c                                           ; $6bae: $0d
	nop                                              ; $6baf: $00
	ld   a, [bc]                                     ; $6bb0: $0a
	dec  b                                           ; $6bb1: $05
	ld   b, b                                        ; $6bb2: $40
	rst  $38                                         ; $6bb3: $ff
	inc  bc                                          ; $6bb4: $03
	rst  $38                                         ; $6bb5: $ff
	ld   bc, $2801                                   ; $6bb6: $01 $01 $28
	nop                                              ; $6bb9: $00
	ld   b, $27                                      ; $6bba: $06 $27
	ld   [de], a                                     ; $6bbc: $12
	inc  e                                           ; $6bbd: $1c
	inc  b                                           ; $6bbe: $04
	nop                                              ; $6bbf: $00
	nop                                              ; $6bc0: $00
	inc  d                                           ; $6bc1: $14
	inc  e                                           ; $6bc2: $1c
	ld   bc, $d701                                   ; $6bc3: $01 $01 $d7
	ei                                               ; $6bc6: $fb
	ld   a, [$690d]                                  ; $6bc7: $fa $0d $69
	ld   d, d                                        ; $6bca: $52
	ld   e, c                                        ; $6bcb: $59
	ld   d, d                                        ; $6bcc: $52
	ld   a, l                                        ; $6bcd: $7d
	sbc  [hl]                                        ; $6bce: $9e
	ret  nz                                          ; $6bcf: $c0

	or   d                                           ; $6bd0: $b2
	ld   l, [hl]                                     ; $6bd1: $6e
	sub  [hl]                                        ; $6bd2: $96
	sbc  a                                           ; $6bd3: $9f
	dec  c                                           ; $6bd4: $0d
	ret  nz                                          ; $6bd5: $c0

	or   d                                           ; $6bd6: $b2
	ld   l, [hl]                                     ; $6bd7: $6e
	ld   e, c                                        ; $6bd8: $59
	sub  a                                           ; $6bd9: $97
	ld   bc, $6d07                                   ; $6bda: $01 $07 $6d
	ld   e, a                                        ; $6bdd: $5f
	ld   d, l                                        ; $6bde: $55
	ld   bc, $a108                                   ; $6bdf: $01 $08 $a1
	ld   l, [hl]                                     ; $6be2: $6e
	sub  [hl]                                        ; $6be3: $96
	sbc  a                                           ; $6be4: $9f
	dec  c                                           ; $6be5: $0d
	nop                                              ; $6be6: $00
	ld   a, [bc]                                     ; $6be7: $0a
	inc  e                                           ; $6be8: $1c
	inc  b                                           ; $6be9: $04
	nop                                              ; $6bea: $00
	nop                                              ; $6beb: $00
	ld   bc, $5263                                   ; $6bec: $01 $63 $52
	ld   h, d                                        ; $6bef: $62
	ld   a, h                                        ; $6bf0: $7c
	sub  b                                           ; $6bf1: $90
	and  c                                           ; $6bf2: $a1
	ld   l, [hl]                                     ; $6bf3: $6e
	ld   d, d                                        ; $6bf4: $52
	sbc  a                                           ; $6bf5: $9f
	dec  c                                           ; $6bf6: $0d
	nop                                              ; $6bf7: $00
	ld   a, [bc]                                     ; $6bf8: $0a
	ld   bc, $0701                                   ; $6bf9: $01 $01 $07
	and  a                                           ; $6bfc: $a7
	rst  JumpTable                                         ; $6bfd: $df
	ld   bc, $7608                                   ; $6bfe: $01 $08 $76
	ld   bc, $d707                                   ; $6c01: $01 $07 $d7
	ret  nz                                          ; $6c04: $c0

	ld   bc, $5a08                                   ; $6c05: $01 $08 $5a
	dec  c                                           ; $6c08: $0d
	ld   e, e                                        ; $6c09: $5b
	sub  l                                           ; $6c0a: $95
	ld   d, h                                        ; $6c0b: $54
	ld   l, e                                        ; $6c0c: $6b
	ld   d, h                                        ; $6c0d: $54
	ld   h, l                                        ; $6c0e: $65
	adc  h                                           ; $6c0f: $8c
	ld   h, l                                        ; $6c10: $65
	ld   l, l                                        ; $6c11: $6d
	sbc  a                                           ; $6c12: $9f
	dec  c                                           ; $6c13: $0d
	ld   e, c                                        ; $6c14: $59
	ld   [hl], c                                     ; $6c15: $71
	ld   l, l                                        ; $6c16: $6d
	ld   a, h                                        ; $6c17: $7c
	ld   a, l                                        ; $6c18: $7d
	sbc  [hl]                                        ; $6c19: $9e
	ld   [hl], a                                     ; $6c1a: $77
	ld   [hl], c                                     ; $6c1b: $71
	ld   l, a                                        ; $6c1c: $6f
	ld   sp, hl                                      ; $6c1d: $f9
	dec  c                                           ; $6c1e: $0d
	nop                                              ; $6c1f: $00
	ld   a, [bc]                                     ; $6c20: $0a
	add  hl, de                                      ; $6c21: $19
	dec  b                                           ; $6c22: $05
	inc  bc                                          ; $6c23: $03
	ld   bc, $a707                                   ; $6c24: $01 $07 $a7
	rst  JumpTable                                         ; $6c27: $df
	ld   bc, $5908                                   ; $6c28: $01 $08 $59
	ld   a, b                                        ; $6c2b: $78
	ld   sp, hl                                      ; $6c2c: $f9
	nop                                              ; $6c2d: $00
	nop                                              ; $6c2e: $00
	ld   bc, $d707                                   ; $6c2f: $01 $07 $d7
	ret  nz                                          ; $6c32: $c0

	ld   bc, $5908                                   ; $6c33: $01 $08 $59
	ld   a, b                                        ; $6c36: $78
	ld   sp, hl                                      ; $6c37: $f9
	nop                                              ; $6c38: $00
	ld   bc, $7858                                   ; $6c39: $01 $58 $78
	ld   h, [hl]                                     ; $6c3c: $66
	ld   h, [hl]                                     ; $6c3d: $66
	sub  c                                           ; $6c3e: $91
	ld   a, b                                        ; $6c3f: $78
	ld   d, d                                        ; $6c40: $52
	ld   e, c                                        ; $6c41: $59
	ld   sp, hl                                      ; $6c42: $f9
	nop                                              ; $6c43: $00
	ld   [bc], a                                     ; $6c44: $02
	rlca                                             ; $6c45: $07
	and  d                                           ; $6c46: $a2
	ld   [de], a                                     ; $6c47: $12
	ld   [bc], a                                     ; $6c48: $02
	inc  bc                                          ; $6c49: $03
	ld   bc, $2000                                   ; $6c4a: $01 $00 $20
	nop                                              ; $6c4d: $00
	rlca                                             ; $6c4e: $07
	ldh  [c], a                                      ; $6c4f: $e2
	ld   [de], a                                     ; $6c50: $12
	ld   [bc], a                                     ; $6c51: $02
	inc  bc                                          ; $6c52: $03
	ld   bc, $2001                                   ; $6c53: $01 $01 $20
	nop                                              ; $6c56: $00
	rlca                                             ; $6c57: $07
	ldh  [c], a                                      ; $6c58: $e2
	ld   [de], a                                     ; $6c59: $12
	ld   [bc], a                                     ; $6c5a: $02
	inc  bc                                          ; $6c5b: $03
	ld   bc, $2002                                   ; $6c5c: $01 $02 $20
	nop                                              ; $6c5f: $00
	ld   b, $e2                                      ; $6c60: $06 $e2
	ld   [de], a                                     ; $6c62: $12
	inc  e                                           ; $6c63: $1c
	inc  b                                           ; $6c64: $04
	ld   bc, $1401                                   ; $6c65: $01 $01 $14
	dec  de                                          ; $6c68: $1b
	ld   bc, $d501                                   ; $6c69: $01 $01 $d5
	push af                                          ; $6c6c: $f5
	sbc  $fb                                         ; $6c6d: $de $fb
	push af                                          ; $6c6f: $f5
	ld   a, [$000d]                                  ; $6c70: $fa $0d $00
	ld   a, [bc]                                     ; $6c73: $0a
	ld   bc, $0701                                   ; $6c74: $01 $01 $07
	ret                                              ; $6c77: $c9


	push af                                          ; $6c78: $f5
	ld   bc, $ac08                                   ; $6c79: $01 $08 $ac
	push bc                                          ; $6c7c: $c5
	ld   l, l                                        ; $6c7d: $6d
	add  a                                           ; $6c7e: $87
	ld   [hl], h                                     ; $6c7f: $74
	dec  c                                           ; $6c80: $0d
	ld   bc, $a707                                   ; $6c81: $01 $07 $a7
	rst  JumpTable                                         ; $6c84: $df
	ld   bc, $5908                                   ; $6c85: $01 $08 $59
	ld   [hl], c                                     ; $6c88: $71
	ld   l, l                                        ; $6c89: $6d
	rst  $38                                         ; $6c8a: $ff
	rst  $38                                         ; $6c8b: $ff
	dec  c                                           ; $6c8c: $0d
	ld   a, b                                        ; $6c8d: $78
	and  c                                           ; $6c8e: $a1
	ld   l, a                                        ; $6c8f: $6f
	sub  c                                           ; $6c90: $91
	ld   [hl], c                                     ; $6c91: $71
	ld   [hl], h                                     ; $6c92: $74
	sbc  a                                           ; $6c93: $9f
	dec  c                                           ; $6c94: $0d
	nop                                              ; $6c95: $00
	ld   a, [bc]                                     ; $6c96: $0a
	dec  b                                           ; $6c97: $05
	ld   b, b                                        ; $6c98: $40
	rst  $38                                         ; $6c99: $ff
	inc  bc                                          ; $6c9a: $03
	rst  $38                                         ; $6c9b: $ff
	ld   bc, $2801                                   ; $6c9c: $01 $01 $28
	nop                                              ; $6c9f: $00
	ld   b, $24                                      ; $6ca0: $06 $24
	inc  de                                          ; $6ca2: $13
	inc  e                                           ; $6ca3: $1c
	inc  b                                           ; $6ca4: $04
	nop                                              ; $6ca5: $00
	nop                                              ; $6ca6: $00
	inc  d                                           ; $6ca7: $14
	inc  e                                           ; $6ca8: $1c
	ld   bc, $d701                                   ; $6ca9: $01 $01 $d7
	ei                                               ; $6cac: $fb
	ld   a, [$690d]                                  ; $6cad: $fa $0d $69
	ld   d, d                                        ; $6cb0: $52
	ld   e, c                                        ; $6cb1: $59
	ld   d, d                                        ; $6cb2: $52
	ld   a, l                                        ; $6cb3: $7d
	sbc  [hl]                                        ; $6cb4: $9e
	and  a                                           ; $6cb5: $a7
	rst  JumpTable                                         ; $6cb6: $df
	ld   [hl], l                                     ; $6cb7: $75
	ld   h, l                                        ; $6cb8: $65
	ld   l, l                                        ; $6cb9: $6d
	sbc  a                                           ; $6cba: $9f
	dec  c                                           ; $6cbb: $0d
	nop                                              ; $6cbc: $00
	ld   a, [bc]                                     ; $6cbd: $0a
	inc  e                                           ; $6cbe: $1c
	inc  b                                           ; $6cbf: $04
	ld   bc, $0101                                   ; $6cc0: $01 $01 $01
	ld   bc, $c907                                   ; $6cc3: $01 $07 $c9
	push af                                          ; $6cc6: $f5
	ld   bc, $ac08                                   ; $6cc7: $01 $08 $ac
	push bc                                          ; $6cca: $c5
	ld   l, l                                        ; $6ccb: $6d
	add  a                                           ; $6ccc: $87
	ld   [hl], h                                     ; $6ccd: $74
	dec  c                                           ; $6cce: $0d
	ld   bc, $a707                                   ; $6ccf: $01 $07 $a7
	rst  JumpTable                                         ; $6cd2: $df
	ld   bc, $5908                                   ; $6cd3: $01 $08 $59
	ld   [hl], c                                     ; $6cd6: $71
	ld   l, l                                        ; $6cd7: $6d
	rst  $38                                         ; $6cd8: $ff
	rst  $38                                         ; $6cd9: $ff
	dec  c                                           ; $6cda: $0d
	ld   a, b                                        ; $6cdb: $78
	and  c                                           ; $6cdc: $a1
	ld   l, a                                        ; $6cdd: $6f
	sub  c                                           ; $6cde: $91
	ld   [hl], c                                     ; $6cdf: $71
	ld   [hl], h                                     ; $6ce0: $74
	sbc  a                                           ; $6ce1: $9f
	dec  c                                           ; $6ce2: $0d
	nop                                              ; $6ce3: $00
	ld   a, [bc]                                     ; $6ce4: $0a
	rlca                                             ; $6ce5: $07
	ld   h, a                                        ; $6ce6: $67
	inc  de                                          ; $6ce7: $13
	inc  bc                                          ; $6ce8: $03
	rst  $38                                         ; $6ce9: $ff
	ld   bc, $2301                                   ; $6cea: $01 $01 $23
	nop                                              ; $6ced: $00
	dec  e                                           ; $6cee: $1d
	ld   b, b                                        ; $6cef: $40
	inc  d                                           ; $6cf0: $14
	inc  bc                                          ; $6cf1: $03
	inc  d                                           ; $6cf2: $14
	ld   bc, $2803                                   ; $6cf3: $01 $03 $28
	nop                                              ; $6cf6: $00
	ld   bc, $6763                                   ; $6cf7: $01 $63 $67
	ld   e, d                                        ; $6cfa: $5a
	sbc  [hl]                                        ; $6cfb: $9e
	ld   l, a                                        ; $6cfc: $6f
	ld   d, d                                        ; $6cfd: $52
	ld   [bc], a                                     ; $6cfe: $02
	inc  de                                          ; $6cff: $13
	ld   l, a                                        ; $6d00: $6f
	sub  c                                           ; $6d01: $91
	and  c                                           ; $6d02: $a1
	ld   l, [hl]                                     ; $6d03: $6e
	ld   a, e                                        ; $6d04: $7b
	sbc  a                                           ; $6d05: $9f
	dec  c                                           ; $6d06: $0d
	ld   d, b                                        ; $6d07: $50
	ei                                               ; $6d08: $fb
	sbc  [hl]                                        ; $6d09: $9e
	ld   e, b                                        ; $6d0a: $58
	sub  b                                           ; $6d0b: $90
	ld   h, l                                        ; $6d0c: $65
	sbc  e                                           ; $6d0d: $9b
	ld   e, c                                        ; $6d0e: $59
	ld   [hl], c                                     ; $6d0f: $71
	ld   l, l                                        ; $6d10: $6d
	sbc  a                                           ; $6d11: $9f
	dec  c                                           ; $6d12: $0d
	nop                                              ; $6d13: $00
	ld   a, [bc]                                     ; $6d14: $0a
	ld   bc, $9850                                   ; $6d15: $01 $50 $98
	ld   e, d                                        ; $6d18: $5a
	halt                                             ; $6d19: $76
	ld   d, h                                        ; $6d1a: $54
	sbc  [hl]                                        ; $6d1b: $9e
	ld   l, a                                        ; $6d1c: $6f
	ld   d, d                                        ; $6d1d: $52
	ld   [bc], a                                     ; $6d1e: $02
	inc  de                                          ; $6d1f: $13
	ld   l, a                                        ; $6d20: $6f
	sub  c                                           ; $6d21: $91
	and  c                                           ; $6d22: $a1
	sbc  a                                           ; $6d23: $9f
	dec  c                                           ; $6d24: $0d
	nop                                              ; $6d25: $00
	ld   a, [bc]                                     ; $6d26: $0a
	nop                                              ; $6d27: $00
	inc  e                                           ; $6d28: $1c
	inc  b                                           ; $6d29: $04
	inc  bc                                          ; $6d2a: $03
	inc  bc                                          ; $6d2b: $03
	dec  e                                           ; $6d2c: $1d
	ld   b, b                                        ; $6d2d: $40
	inc  d                                           ; $6d2e: $14
	inc  bc                                          ; $6d2f: $03
	inc  d                                           ; $6d30: $14
	ld   bc, $2801                                   ; $6d31: $01 $01 $28
	nop                                              ; $6d34: $00
	ld   bc, $976e                                   ; $6d35: $01 $6e $97
	ld   h, l                                        ; $6d38: $65
	ld   a, b                                        ; $6d39: $78
	ld   d, d                                        ; $6d3a: $52
	ld   a, b                                        ; $6d3b: $78
	ld   c, a                                        ; $6d3c: $4f
	sbc  [hl]                                        ; $6d3d: $9e
	dec  c                                           ; $6d3e: $0d
	ld   l, a                                        ; $6d3f: $6f
	ld   d, d                                        ; $6d40: $52
	ld   [bc], a                                     ; $6d41: $02
	inc  de                                          ; $6d42: $13
	ld   l, a                                        ; $6d43: $6f
	sub  c                                           ; $6d44: $91
	and  c                                           ; $6d45: $a1
	sbc  a                                           ; $6d46: $9f
	dec  c                                           ; $6d47: $0d
	nop                                              ; $6d48: $00
	inc  e                                           ; $6d49: $1c
	inc  b                                           ; $6d4a: $04
	nop                                              ; $6d4b: $00
	nop                                              ; $6d4c: $00
	ld   bc, $9075                                   ; $6d4d: $01 $75 $90
	sbc  [hl]                                        ; $6d50: $9e
	ld   e, b                                        ; $6d51: $58
	sub  b                                           ; $6d52: $90
	ld   h, l                                        ; $6d53: $65
	sbc  e                                           ; $6d54: $9b
	ld   e, c                                        ; $6d55: $59
	ld   [hl], c                                     ; $6d56: $71
	ld   l, l                                        ; $6d57: $6d
	sbc  a                                           ; $6d58: $9f
	dec  c                                           ; $6d59: $0d
	nop                                              ; $6d5a: $00
	ld   a, [bc]                                     ; $6d5b: $0a
	nop                                              ; $6d5c: $00
	rrca                                             ; $6d5d: $0f
	nop                                              ; $6d5e: $00
	ld   bc, $6601                                   ; $6d5f: $01 $01 $66
	sub  c                                           ; $6d62: $91
	ld   d, b                                        ; $6d63: $50
	sbc  [hl]                                        ; $6d64: $9e
	ld   h, [hl]                                     ; $6d65: $66
	sub  c                                           ; $6d66: $91
	and  c                                           ; $6d67: $a1
	ld   e, a                                        ; $6d68: $5f
	and  c                                           ; $6d69: $a1
	and  b                                           ; $6d6a: $a0
	ld   h, l                                        ; $6d6b: $65
	sub  [hl]                                        ; $6d6c: $96
	ld   d, h                                        ; $6d6d: $54
	sbc  a                                           ; $6d6e: $9f
	dec  c                                           ; $6d6f: $0d
	nop                                              ; $6d70: $00
	ld   a, [bc]                                     ; $6d71: $0a
	dec  b                                           ; $6d72: $05
	add  b                                           ; $6d73: $80
	ld   b, l                                        ; $6d74: $45
	ld   bc, $0001                                   ; $6d75: $01 $01 $00
	rrca                                             ; $6d78: $0f
	inc  b                                           ; $6d79: $04
	ld   bc, $5401                                   ; $6d7a: $01 $01 $54
	and  c                                           ; $6d7d: $a1
	ld   a, [$000d]                                  ; $6d7e: $fa $0d $00
	dec  b                                           ; $6d81: $05
	ld   b, b                                        ; $6d82: $40
	rst  $38                                         ; $6d83: $ff
	ld   bc, $0005                                   ; $6d84: $01 $05 $00
	ld   bc, $9166                                   ; $6d87: $01 $66 $91
	sbc  [hl]                                        ; $6d8a: $9e
	ld   d, d                                        ; $6d8b: $52
	ld   e, l                                        ; $6d8c: $5d
	sub  [hl]                                        ; $6d8d: $96
	rst  $38                                         ; $6d8e: $ff
	rst  $38                                         ; $6d8f: $ff
	dec  c                                           ; $6d90: $0d
	ld   h, [hl]                                     ; $6d91: $66
	sub  c                                           ; $6d92: $91
	and  c                                           ; $6d93: $a1
	ld   e, a                                        ; $6d94: $5f
	and  c                                           ; $6d95: $a1
	adc  e                                           ; $6d96: $8b
	and  c                                           ; $6d97: $a1
	ld   a, [$000d]                                  ; $6d98: $fa $0d $00
	ld   a, [bc]                                     ; $6d9b: $0a
	rrca                                             ; $6d9c: $0f
	nop                                              ; $6d9d: $00
	ld   bc, $0101                                   ; $6d9e: $01 $01 $01
	inc  bc                                          ; $6da1: $03
	and  e                                           ; $6da2: $a3
	and  l                                           ; $6da3: $a5
	db   $ec                                         ; $6da4: $ec
	cp   d                                           ; $6da5: $ba
	ld   a, l                                        ; $6da6: $7d
	rst  $38                                         ; $6da7: $ff
	rst  $38                                         ; $6da8: $ff
	jp   nc, $6efb                                   ; $6da9: $d2 $fb $6e

	ld   bc, $0d04                                   ; $6dac: $01 $04 $0d
	nop                                              ; $6daf: $00
	ld   a, [bc]                                     ; $6db0: $0a
	add  hl, de                                      ; $6db1: $19
	dec  b                                           ; $6db2: $05
	inc  bc                                          ; $6db3: $03
	or   c                                           ; $6db4: $b1
	ei                                               ; $6db5: $fb
	and  b                                           ; $6db6: $a0
	inc  bc                                          ; $6db7: $03
	add  b                                           ; $6db8: $80
	ld   h, a                                        ; $6db9: $67
	nop                                              ; $6dba: $00
	nop                                              ; $6dbb: $00
	jp   nz, $aee9                                   ; $6dbc: $c2 $e9 $ae

	and  b                                           ; $6dbf: $a0
	inc  bc                                          ; $6dc0: $03
	add  b                                           ; $6dc1: $80
	ld   h, a                                        ; $6dc2: $67
	nop                                              ; $6dc3: $00
	ld   bc, $fbd2                                   ; $6dc4: $01 $d2 $fb
	and  b                                           ; $6dc7: $a0
	inc  bc                                          ; $6dc8: $03
	add  b                                           ; $6dc9: $80
	ld   h, a                                        ; $6dca: $67
	nop                                              ; $6dcb: $00
	ld   [bc], a                                     ; $6dcc: $02
	rlca                                             ; $6dcd: $07
	ld   a, [hl+]                                    ; $6dce: $2a
	inc  d                                           ; $6dcf: $14
	ld   [bc], a                                     ; $6dd0: $02
	inc  bc                                          ; $6dd1: $03
	ld   bc, $2000                                   ; $6dd2: $01 $00 $20
	nop                                              ; $6dd5: $00
	rlca                                             ; $6dd6: $07
	ld   d, a                                        ; $6dd7: $57
	inc  d                                           ; $6dd8: $14
	ld   [bc], a                                     ; $6dd9: $02
	inc  bc                                          ; $6dda: $03
	ld   bc, $2001                                   ; $6ddb: $01 $01 $20
	nop                                              ; $6dde: $00
	rlca                                             ; $6ddf: $07
	add  c                                           ; $6de0: $81
	inc  d                                           ; $6de1: $14
	ld   [bc], a                                     ; $6de2: $02
	inc  bc                                          ; $6de3: $03
	ld   bc, $2002                                   ; $6de4: $01 $02 $20
	nop                                              ; $6de7: $00
	ld   b, $aa                                      ; $6de8: $06 $aa
	inc  d                                           ; $6dea: $14
	rrca                                             ; $6deb: $0f
	nop                                              ; $6dec: $00
	ld   bc, $b101                                   ; $6ded: $01 $01 $b1
	ei                                               ; $6df0: $fb
	ld   l, [hl]                                     ; $6df1: $6e
	ld   a, [$000d]                                  ; $6df2: $fa $0d $00
	ld   a, [bc]                                     ; $6df5: $0a
	inc  e                                           ; $6df6: $1c
	inc  b                                           ; $6df7: $04
	ld   bc, $0101                                   ; $6df8: $01 $01 $01
	sbc  l                                           ; $6dfb: $9d
	ei                                               ; $6dfc: $fb
	ld   d, d                                        ; $6dfd: $52
	ld   a, [$a30d]                                  ; $6dfe: $fa $0d $a3
	and  l                                           ; $6e01: $a5
	db   $ec                                         ; $6e02: $ec
	cp   d                                           ; $6e03: $ba
	ld   a, h                                        ; $6e04: $7c
	ld   e, c                                        ; $6e05: $59
	ld   l, a                                        ; $6e06: $6f
	ei                                               ; $6e07: $fb
	ld   a, [$000d]                                  ; $6e08: $fa $0d $00
	ld   a, [bc]                                     ; $6e0b: $0a
	dec  b                                           ; $6e0c: $05
	ld   b, b                                        ; $6e0d: $40
	rst  $38                                         ; $6e0e: $ff
	inc  bc                                          ; $6e0f: $03
	rst  $38                                         ; $6e10: $ff
	ld   bc, $2801                                   ; $6e11: $01 $01 $28
	nop                                              ; $6e14: $00
	ld   b, $f4                                      ; $6e15: $06 $f4
	inc  d                                           ; $6e17: $14
	rrca                                             ; $6e18: $0f
	nop                                              ; $6e19: $00
	ld   bc, wVisitedTitleScreen                                   ; $6e1a: $01 $01 $c2
	jp   hl                                          ; $6e1d: $e9


	xor  [hl]                                        ; $6e1e: $ae
	ld   l, [hl]                                     ; $6e1f: $6e
	ld   a, [$000d]                                  ; $6e20: $fa $0d $00
	ld   a, [bc]                                     ; $6e23: $0a
	dec  b                                           ; $6e24: $05
	ld   b, b                                        ; $6e25: $40
	rst  $38                                         ; $6e26: $ff
	inc  bc                                          ; $6e27: $03
	rst  $38                                         ; $6e28: $ff
	ld   bc, $2901                                   ; $6e29: $01 $01 $29
	nop                                              ; $6e2c: $00
	inc  e                                           ; $6e2d: $1c
	inc  b                                           ; $6e2e: $04
	ld   b, $06                                      ; $6e2f: $06 $06
	ld   bc, $9e50                                   ; $6e31: $01 $50 $9e
	adc  h                                           ; $6e34: $8c
	ld   e, a                                        ; $6e35: $5f
	ld   l, a                                        ; $6e36: $6f
	sub  c                                           ; $6e37: $91
	ld   [hl], c                                     ; $6e38: $71
	ld   l, l                                        ; $6e39: $6d
	rst  $38                                         ; $6e3a: $ff
	rst  $38                                         ; $6e3b: $ff
	dec  c                                           ; $6e3c: $0d
	nop                                              ; $6e3d: $00
	ld   a, [bc]                                     ; $6e3e: $0a
	ld   b, $f4                                      ; $6e3f: $06 $f4
	inc  d                                           ; $6e41: $14
	rrca                                             ; $6e42: $0f
	nop                                              ; $6e43: $00
	ld   bc, $d201                                   ; $6e44: $01 $01 $d2
	ei                                               ; $6e47: $fb
	ld   l, [hl]                                     ; $6e48: $6e
	ld   a, [$000d]                                  ; $6e49: $fa $0d $00
	ld   a, [bc]                                     ; $6e4c: $0a
	inc  e                                           ; $6e4d: $1c
	inc  b                                           ; $6e4e: $04
	nop                                              ; $6e4f: $00
	nop                                              ; $6e50: $00
	ld   bc, $9e50                                   ; $6e51: $01 $50 $9e
	ld   d, b                                        ; $6e54: $50
	ld   d, d                                        ; $6e55: $52
	ld   h, c                                        ; $6e56: $61
	ld   l, [hl]                                     ; $6e57: $6e
	rst  $38                                         ; $6e58: $ff
	rst  $38                                         ; $6e59: $ff
	dec  c                                           ; $6e5a: $0d
	ld   h, [hl]                                     ; $6e5b: $66
	sub  c                                           ; $6e5c: $91
	sbc  [hl]                                        ; $6e5d: $9e
	ld   d, b                                        ; $6e5e: $50
	ld   d, d                                        ; $6e5f: $52
	ld   h, c                                        ; $6e60: $61
	ld   [hl], l                                     ; $6e61: $75
	ld   h, l                                        ; $6e62: $65
	sub  l                                           ; $6e63: $95
	ld   a, [$000d]                                  ; $6e64: $fa $0d $00
	ld   a, [bc]                                     ; $6e67: $0a
	ld   b, $11                                      ; $6e68: $06 $11
	dec  d                                           ; $6e6a: $15
	inc  e                                           ; $6e6b: $1c
	inc  b                                           ; $6e6c: $04
	ld   [bc], a                                     ; $6e6d: $02
	ld   [bc], a                                     ; $6e6e: $02
	dec  e                                           ; $6e6f: $1d
	ld   b, b                                        ; $6e70: $40
	inc  d                                           ; $6e71: $14
	inc  bc                                          ; $6e72: $03
	inc  d                                           ; $6e73: $14
	ld   bc, $2903                                   ; $6e74: $01 $03 $29
	nop                                              ; $6e77: $00
	ld   bc, $526f                                   ; $6e78: $01 $6f $52
	ld   [bc], a                                     ; $6e7b: $02
	inc  de                                          ; $6e7c: $13
	ld   l, a                                        ; $6e7d: $6f
	sub  c                                           ; $6e7e: $91
	and  c                                           ; $6e7f: $a1
	sbc  [hl]                                        ; $6e80: $9e
	cp   e                                           ; $6e81: $bb
	db   $ed                                         ; $6e82: $ed
	and  l                                           ; $6e83: $a5
	ld   a, [$500d]                                  ; $6e84: $fa $0d $50
	halt                                             ; $6e87: $76
	ld   l, [hl]                                     ; $6e88: $6e
	ld   h, l                                        ; $6e89: $65
	ld   h, l                                        ; $6e8a: $65
	ld   l, l                                        ; $6e8b: $6d
	ei                                               ; $6e8c: $fb
	ld   a, [$000d]                                  ; $6e8d: $fa $0d $00
	ld   a, [bc]                                     ; $6e90: $0a
	ld   bc, $5490                                   ; $6e91: $01 $90 $54
	sbc  [hl]                                        ; $6e94: $9e
	ld   l, a                                        ; $6e95: $6f
	ld   d, d                                        ; $6e96: $52
	ld   [bc], a                                     ; $6e97: $02
	inc  de                                          ; $6e98: $13
	ld   l, a                                        ; $6e99: $6f
	sub  c                                           ; $6e9a: $91
	and  c                                           ; $6e9b: $a1
	halt                                             ; $6e9c: $76
	ld   a, l                                        ; $6e9d: $7d
	dec  c                                           ; $6e9e: $0d
	sub  d                                           ; $6e9f: $92
	and  c                                           ; $6ea0: $a1
	ld   a, b                                        ; $6ea1: $78
	ld   d, d                                        ; $6ea2: $52
	ld   a, [$d60d]                                  ; $6ea3: $fa $0d $d6
	push af                                          ; $6ea6: $f5
	ld   l, [hl]                                     ; $6ea7: $6e
	ld   a, [$000d]                                  ; $6ea8: $fa $0d $00
	ld   a, [bc]                                     ; $6eab: $0a
	dec  c                                           ; $6eac: $0d
	nop                                              ; $6ead: $00
	nop                                              ; $6eae: $00
	rrca                                             ; $6eaf: $0f
	nop                                              ; $6eb0: $00
	ld   bc, $1e09                                   ; $6eb1: $01 $09 $1e
	nop                                              ; $6eb4: $00
	inc  e                                           ; $6eb5: $1c
	inc  b                                           ; $6eb6: $04
	nop                                              ; $6eb7: $00
	nop                                              ; $6eb8: $00
	ld   bc, $9166                                   ; $6eb9: $01 $66 $91
	sbc  [hl]                                        ; $6ebc: $9e
	ld   a, c                                        ; $6ebd: $79
	ld   e, c                                        ; $6ebe: $59
	ld   d, d                                        ; $6ebf: $52
	adc  a                                           ; $6ec0: $8f
	ld   d, d                                        ; $6ec1: $52
	ld   e, l                                        ; $6ec2: $5d
	sub  [hl]                                        ; $6ec3: $96
	rst  $38                                         ; $6ec4: $ff
	rst  $38                                         ; $6ec5: $ff
	dec  c                                           ; $6ec6: $0d
	ld   h, [hl]                                     ; $6ec7: $66
	sub  c                                           ; $6ec8: $91
	and  c                                           ; $6ec9: $a1
	ld   e, a                                        ; $6eca: $5f
	and  c                                           ; $6ecb: $a1
	adc  e                                           ; $6ecc: $8b
	and  c                                           ; $6ecd: $a1
	ld   a, [$000d]                                  ; $6ece: $fa $0d $00
	ld   a, [bc]                                     ; $6ed1: $0a
	rrca                                             ; $6ed2: $0f
	nop                                              ; $6ed3: $00
	ld   bc, $0101                                   ; $6ed4: $01 $01 $01
	inc  bc                                          ; $6ed7: $03
	and  e                                           ; $6ed8: $a3
	and  l                                           ; $6ed9: $a5
	db   $ec                                         ; $6eda: $ec
	cp   d                                           ; $6edb: $ba
	ld   a, l                                        ; $6edc: $7d
	rst  $38                                         ; $6edd: $ff
	rst  $38                                         ; $6ede: $ff
	or   c                                           ; $6edf: $b1
	ei                                               ; $6ee0: $fb
	ld   l, [hl]                                     ; $6ee1: $6e
	ld   bc, $0d04                                   ; $6ee2: $01 $04 $0d
	nop                                              ; $6ee5: $00
	ld   a, [bc]                                     ; $6ee6: $0a
	add  hl, de                                      ; $6ee7: $19
	dec  b                                           ; $6ee8: $05
	inc  bc                                          ; $6ee9: $03
	jp   nz, $aee9                                   ; $6eea: $c2 $e9 $ae

	and  b                                           ; $6eed: $a0
	inc  bc                                          ; $6eee: $03
	add  b                                           ; $6eef: $80
	ld   h, a                                        ; $6ef0: $67
	nop                                              ; $6ef1: $00
	nop                                              ; $6ef2: $00
	jp   nc, $a0fb                                   ; $6ef3: $d2 $fb $a0

	inc  bc                                          ; $6ef6: $03
	add  b                                           ; $6ef7: $80
	ld   h, a                                        ; $6ef8: $67
	nop                                              ; $6ef9: $00
	ld   bc, $fbb1                                   ; $6efa: $01 $b1 $fb
	and  b                                           ; $6efd: $a0
	inc  bc                                          ; $6efe: $03
	add  b                                           ; $6eff: $80
	ld   h, a                                        ; $6f00: $67
	nop                                              ; $6f01: $00
	ld   [bc], a                                     ; $6f02: $02
	rlca                                             ; $6f03: $07
	ld   h, b                                        ; $6f04: $60
	dec  d                                           ; $6f05: $15
	ld   [bc], a                                     ; $6f06: $02
	inc  bc                                          ; $6f07: $03
	ld   bc, $2000                                   ; $6f08: $01 $00 $20
	nop                                              ; $6f0b: $00
	rlca                                             ; $6f0c: $07
	adc  [hl]                                        ; $6f0d: $8e
	dec  d                                           ; $6f0e: $15
	ld   [bc], a                                     ; $6f0f: $02
	inc  bc                                          ; $6f10: $03
	ld   bc, $2001                                   ; $6f11: $01 $01 $20
	nop                                              ; $6f14: $00
	rlca                                             ; $6f15: $07
	or   a                                           ; $6f16: $b7
	dec  d                                           ; $6f17: $15
	ld   [bc], a                                     ; $6f18: $02
	inc  bc                                          ; $6f19: $03
	ld   bc, $2002                                   ; $6f1a: $01 $02 $20
	nop                                              ; $6f1d: $00
	ld   b, $aa                                      ; $6f1e: $06 $aa
	inc  d                                           ; $6f20: $14
	rrca                                             ; $6f21: $0f
	nop                                              ; $6f22: $00
	ld   bc, wVisitedTitleScreen                                   ; $6f23: $01 $01 $c2
	jp   hl                                          ; $6f26: $e9


	xor  [hl]                                        ; $6f27: $ae
	ld   l, [hl]                                     ; $6f28: $6e
	ld   a, [$000d]                                  ; $6f29: $fa $0d $00
	ld   a, [bc]                                     ; $6f2c: $0a
	inc  e                                           ; $6f2d: $1c
	inc  b                                           ; $6f2e: $04
	ld   bc, $0101                                   ; $6f2f: $01 $01 $01
	sbc  l                                           ; $6f32: $9d
	ei                                               ; $6f33: $fb
	ld   d, d                                        ; $6f34: $52
	ld   a, [$a30d]                                  ; $6f35: $fa $0d $a3
	and  l                                           ; $6f38: $a5
	db   $ec                                         ; $6f39: $ec
	cp   d                                           ; $6f3a: $ba
	ld   a, h                                        ; $6f3b: $7c
	ld   e, c                                        ; $6f3c: $59
	ld   l, a                                        ; $6f3d: $6f
	ei                                               ; $6f3e: $fb
	ld   a, [$000d]                                  ; $6f3f: $fa $0d $00
	ld   a, [bc]                                     ; $6f42: $0a
	dec  b                                           ; $6f43: $05
	ld   b, b                                        ; $6f44: $40
	rst  $38                                         ; $6f45: $ff
	inc  bc                                          ; $6f46: $03
	rst  $38                                         ; $6f47: $ff
	ld   bc, $2801                                   ; $6f48: $01 $01 $28
	nop                                              ; $6f4b: $00
	ld   b, $e0                                      ; $6f4c: $06 $e0
	dec  d                                           ; $6f4e: $15
	rrca                                             ; $6f4f: $0f
	nop                                              ; $6f50: $00
	ld   bc, $d201                                   ; $6f51: $01 $01 $d2
	ei                                               ; $6f54: $fb
	ld   l, [hl]                                     ; $6f55: $6e
	ld   a, [$000d]                                  ; $6f56: $fa $0d $00
	ld   a, [bc]                                     ; $6f59: $0a
	dec  b                                           ; $6f5a: $05
	ld   b, b                                        ; $6f5b: $40
	rst  $38                                         ; $6f5c: $ff
	inc  bc                                          ; $6f5d: $03
	rst  $38                                         ; $6f5e: $ff
	ld   bc, $2901                                   ; $6f5f: $01 $01 $29
	nop                                              ; $6f62: $00
	inc  e                                           ; $6f63: $1c
	inc  b                                           ; $6f64: $04
	ld   b, $06                                      ; $6f65: $06 $06
	ld   bc, $9e50                                   ; $6f67: $01 $50 $9e
	adc  h                                           ; $6f6a: $8c
	ld   e, a                                        ; $6f6b: $5f
	ld   l, a                                        ; $6f6c: $6f
	sub  c                                           ; $6f6d: $91
	ld   [hl], c                                     ; $6f6e: $71
	ld   l, l                                        ; $6f6f: $6d
	rst  $38                                         ; $6f70: $ff
	rst  $38                                         ; $6f71: $ff
	dec  c                                           ; $6f72: $0d
	nop                                              ; $6f73: $00
	ld   a, [bc]                                     ; $6f74: $0a
	ld   b, $e0                                      ; $6f75: $06 $e0
	dec  d                                           ; $6f77: $15
	rrca                                             ; $6f78: $0f
	nop                                              ; $6f79: $00
	ld   bc, $b101                                   ; $6f7a: $01 $01 $b1
	ei                                               ; $6f7d: $fb
	ld   l, [hl]                                     ; $6f7e: $6e
	ld   a, [$000d]                                  ; $6f7f: $fa $0d $00
	ld   a, [bc]                                     ; $6f82: $0a
	inc  e                                           ; $6f83: $1c
	inc  b                                           ; $6f84: $04
	nop                                              ; $6f85: $00
	nop                                              ; $6f86: $00
	ld   bc, $9e50                                   ; $6f87: $01 $50 $9e
	ld   d, b                                        ; $6f8a: $50
	ld   d, d                                        ; $6f8b: $52
	ld   h, c                                        ; $6f8c: $61
	ld   l, [hl]                                     ; $6f8d: $6e
	rst  $38                                         ; $6f8e: $ff
	rst  $38                                         ; $6f8f: $ff
	dec  c                                           ; $6f90: $0d
	ld   h, [hl]                                     ; $6f91: $66
	sub  c                                           ; $6f92: $91
	sbc  [hl]                                        ; $6f93: $9e
	ld   d, b                                        ; $6f94: $50
	ld   d, d                                        ; $6f95: $52
	ld   h, c                                        ; $6f96: $61
	ld   [hl], l                                     ; $6f97: $75
	ld   h, l                                        ; $6f98: $65
	sub  l                                           ; $6f99: $95
	ld   a, [$000d]                                  ; $6f9a: $fa $0d $00
	ld   a, [bc]                                     ; $6f9d: $0a
	ld   b, $fe                                      ; $6f9e: $06 $fe
	dec  d                                           ; $6fa0: $15
	inc  e                                           ; $6fa1: $1c
	inc  b                                           ; $6fa2: $04
	nop                                              ; $6fa3: $00
	nop                                              ; $6fa4: $00
	ld   bc, $9166                                   ; $6fa5: $01 $66 $91
	sbc  [hl]                                        ; $6fa8: $9e
	ld   h, e                                        ; $6fa9: $63
	and  c                                           ; $6faa: $a1
	ld   e, c                                        ; $6fab: $59
	ld   d, d                                        ; $6fac: $52
	adc  a                                           ; $6fad: $8f
	ld   d, d                                        ; $6fae: $52
	ld   e, l                                        ; $6faf: $5d
	sub  [hl]                                        ; $6fb0: $96
	rst  $38                                         ; $6fb1: $ff
	rst  $38                                         ; $6fb2: $ff
	dec  c                                           ; $6fb3: $0d
	ld   h, [hl]                                     ; $6fb4: $66
	sub  c                                           ; $6fb5: $91
	and  c                                           ; $6fb6: $a1
	ld   e, a                                        ; $6fb7: $5f
	and  c                                           ; $6fb8: $a1
	adc  e                                           ; $6fb9: $8b
	and  c                                           ; $6fba: $a1
	ld   a, [$000d]                                  ; $6fbb: $fa $0d $00
	ld   a, [bc]                                     ; $6fbe: $0a
	rrca                                             ; $6fbf: $0f
	nop                                              ; $6fc0: $00
	ld   bc, $0101                                   ; $6fc1: $01 $01 $01
	inc  bc                                          ; $6fc4: $03
	and  e                                           ; $6fc5: $a3
	and  l                                           ; $6fc6: $a5
	db   $ec                                         ; $6fc7: $ec
	cp   d                                           ; $6fc8: $ba
	ld   a, l                                        ; $6fc9: $7d
	rst  $38                                         ; $6fca: $ff
	rst  $38                                         ; $6fcb: $ff
	or   c                                           ; $6fcc: $b1
	ei                                               ; $6fcd: $fb
	ld   l, [hl]                                     ; $6fce: $6e
	ld   bc, $0d04                                   ; $6fcf: $01 $04 $0d
	nop                                              ; $6fd2: $00
	ld   a, [bc]                                     ; $6fd3: $0a
	add  hl, de                                      ; $6fd4: $19
	dec  b                                           ; $6fd5: $05
	inc  bc                                          ; $6fd6: $03
	jp   nz, $aee9                                   ; $6fd7: $c2 $e9 $ae

	and  b                                           ; $6fda: $a0
	inc  bc                                          ; $6fdb: $03
	add  b                                           ; $6fdc: $80
	ld   h, a                                        ; $6fdd: $67
	nop                                              ; $6fde: $00
	nop                                              ; $6fdf: $00
	jp   nc, $a0fb                                   ; $6fe0: $d2 $fb $a0

	inc  bc                                          ; $6fe3: $03
	add  b                                           ; $6fe4: $80
	ld   h, a                                        ; $6fe5: $67
	nop                                              ; $6fe6: $00
	ld   bc, $fbb1                                   ; $6fe7: $01 $b1 $fb
	and  b                                           ; $6fea: $a0
	inc  bc                                          ; $6feb: $03
	add  b                                           ; $6fec: $80
	ld   h, a                                        ; $6fed: $67
	nop                                              ; $6fee: $00
	ld   [bc], a                                     ; $6fef: $02
	rlca                                             ; $6ff0: $07
	ld   c, l                                        ; $6ff1: $4d
	ld   d, $02                                      ; $6ff2: $16 $02
	inc  bc                                          ; $6ff4: $03
	ld   bc, $2000                                   ; $6ff5: $01 $00 $20
	nop                                              ; $6ff8: $00
	rlca                                             ; $6ff9: $07
	ld   a, e                                        ; $6ffa: $7b
	ld   d, $02                                      ; $6ffb: $16 $02
	inc  bc                                          ; $6ffd: $03
	ld   bc, $2001                                   ; $6ffe: $01 $01 $20
	nop                                              ; $7001: $00
	rlca                                             ; $7002: $07
	and  h                                           ; $7003: $a4
	ld   d, $02                                      ; $7004: $16 $02
	inc  bc                                          ; $7006: $03
	ld   bc, $2002                                   ; $7007: $01 $02 $20
	nop                                              ; $700a: $00
	ld   b, $aa                                      ; $700b: $06 $aa
	inc  d                                           ; $700d: $14
	rrca                                             ; $700e: $0f
	nop                                              ; $700f: $00
	ld   bc, wVisitedTitleScreen                                   ; $7010: $01 $01 $c2
	jp   hl                                          ; $7013: $e9


	xor  [hl]                                        ; $7014: $ae
	ld   l, [hl]                                     ; $7015: $6e
	ld   a, [$000d]                                  ; $7016: $fa $0d $00
	ld   a, [bc]                                     ; $7019: $0a
	inc  e                                           ; $701a: $1c
	inc  b                                           ; $701b: $04
	ld   bc, $0101                                   ; $701c: $01 $01 $01
	sbc  l                                           ; $701f: $9d
	ei                                               ; $7020: $fb
	ld   d, d                                        ; $7021: $52
	ld   a, [$a30d]                                  ; $7022: $fa $0d $a3
	and  l                                           ; $7025: $a5
	db   $ec                                         ; $7026: $ec
	cp   d                                           ; $7027: $ba
	ld   a, h                                        ; $7028: $7c
	ld   e, c                                        ; $7029: $59
	ld   l, a                                        ; $702a: $6f
	ei                                               ; $702b: $fb
	ld   a, [$000d]                                  ; $702c: $fa $0d $00
	ld   a, [bc]                                     ; $702f: $0a
	dec  b                                           ; $7030: $05
	ld   b, b                                        ; $7031: $40
	rst  $38                                         ; $7032: $ff
	inc  bc                                          ; $7033: $03
	rst  $38                                         ; $7034: $ff
	ld   bc, $2801                                   ; $7035: $01 $01 $28
	nop                                              ; $7038: $00
	ld   b, $c3                                      ; $7039: $06 $c3
	ld   d, $0f                                      ; $703b: $16 $0f
	nop                                              ; $703d: $00
	ld   bc, $d201                                   ; $703e: $01 $01 $d2
	ei                                               ; $7041: $fb
	ld   l, [hl]                                     ; $7042: $6e
	ld   a, [$000d]                                  ; $7043: $fa $0d $00
	ld   a, [bc]                                     ; $7046: $0a
	dec  b                                           ; $7047: $05
	ld   b, b                                        ; $7048: $40
	rst  $38                                         ; $7049: $ff
	inc  bc                                          ; $704a: $03
	rst  $38                                         ; $704b: $ff
	ld   bc, $2901                                   ; $704c: $01 $01 $29
	nop                                              ; $704f: $00
	inc  e                                           ; $7050: $1c
	inc  b                                           ; $7051: $04
	ld   b, $06                                      ; $7052: $06 $06
	ld   bc, $9e50                                   ; $7054: $01 $50 $9e
	adc  h                                           ; $7057: $8c
	ld   e, a                                        ; $7058: $5f
	ld   l, a                                        ; $7059: $6f
	sub  c                                           ; $705a: $91
	ld   [hl], c                                     ; $705b: $71
	ld   l, l                                        ; $705c: $6d
	rst  $38                                         ; $705d: $ff
	rst  $38                                         ; $705e: $ff
	dec  c                                           ; $705f: $0d
	nop                                              ; $7060: $00
	ld   a, [bc]                                     ; $7061: $0a
	ld   b, $c3                                      ; $7062: $06 $c3
	ld   d, $0f                                      ; $7064: $16 $0f
	nop                                              ; $7066: $00
	ld   bc, $b101                                   ; $7067: $01 $01 $b1
	ei                                               ; $706a: $fb
	ld   l, [hl]                                     ; $706b: $6e
	ld   a, [$000d]                                  ; $706c: $fa $0d $00
	ld   a, [bc]                                     ; $706f: $0a
	inc  e                                           ; $7070: $1c
	inc  b                                           ; $7071: $04
	nop                                              ; $7072: $00
	nop                                              ; $7073: $00
	ld   bc, $9a50                                   ; $7074: $01 $50 $9a
	sbc  [hl]                                        ; $7077: $9e
	ld   d, b                                        ; $7078: $50
	ld   d, d                                        ; $7079: $52
	ld   h, c                                        ; $707a: $61
	ld   l, [hl]                                     ; $707b: $6e
	rst  $38                                         ; $707c: $ff
	rst  $38                                         ; $707d: $ff
	dec  c                                           ; $707e: $0d
	nop                                              ; $707f: $00
	ld   a, [bc]                                     ; $7080: $0a
	ld   b, $c3                                      ; $7081: $06 $c3
	ld   d, $0f                                      ; $7083: $16 $0f
	nop                                              ; $7085: $00
	ld   bc, $0101                                   ; $7086: $01 $01 $01
	inc  bc                                          ; $7089: $03
	add  e                                           ; $708a: $83
	ld   d, h                                        ; $708b: $54
	rst  $38                                         ; $708c: $ff
	rst  $38                                         ; $708d: $ff
	ld   h, c                                        ; $708e: $61
	and  c                                           ; $708f: $a1
	ld   a, b                                        ; $7090: $78
	sub  b                                           ; $7091: $90
	and  c                                           ; $7092: $a1
	ld   l, [hl]                                     ; $7093: $6e
	sbc  e                                           ; $7094: $9b
	ld   d, h                                        ; $7095: $54
	ld   bc, $0d04                                   ; $7096: $01 $04 $0d
	nop                                              ; $7099: $00
	ld   a, [bc]                                     ; $709a: $0a
	rlca                                             ; $709b: $07
	xor  [hl]                                        ; $709c: $ae
	rla                                              ; $709d: $17
	inc  bc                                          ; $709e: $03
	rst  $38                                         ; $709f: $ff
	ld   bc, $2005                                   ; $70a0: $01 $05 $20
	nop                                              ; $70a3: $00
	rlca                                             ; $70a4: $07
	ld   e, b                                        ; $70a5: $58
	rla                                              ; $70a6: $17
	inc  bc                                          ; $70a7: $03
	rst  $38                                         ; $70a8: $ff
	ld   bc, $2506                                   ; $70a9: $01 $06 $25
	nop                                              ; $70ac: $00
	inc  e                                           ; $70ad: $1c
	inc  b                                           ; $70ae: $04
	rlca                                             ; $70af: $07
	rlca                                             ; $70b0: $07
	dec  e                                           ; $70b1: $1d
	ld   b, b                                        ; $70b2: $40
	inc  d                                           ; $70b3: $14
	inc  bc                                          ; $70b4: $03
	inc  d                                           ; $70b5: $14
	ld   bc, $2903                                   ; $70b6: $01 $03 $29
	nop                                              ; $70b9: $00
	ld   bc, $526f                                   ; $70ba: $01 $6f $52
	ld   [bc], a                                     ; $70bd: $02
	inc  de                                          ; $70be: $13
	ld   l, a                                        ; $70bf: $6f
	sub  c                                           ; $70c0: $91
	and  c                                           ; $70c1: $a1
	cp   e                                           ; $70c2: $bb
	db   $ed                                         ; $70c3: $ed
	and  l                                           ; $70c4: $a5
	db   $fc                                         ; $70c5: $fc
	rst  $38                                         ; $70c6: $ff
	rst  $38                                         ; $70c7: $ff
	dec  c                                           ; $70c8: $0d
	ld   l, d                                        ; $70c9: $6a
	ld   [hl], c                                     ; $70ca: $71
	ld   l, l                                        ; $70cb: $6d
	ld   d, d                                        ; $70cc: $52
	sbc  [hl]                                        ; $70cd: $9e
	ld   l, d                                        ; $70ce: $6a
	ld   [hl], c                                     ; $70cf: $71
	ld   l, l                                        ; $70d0: $6d
	ld   d, d                                        ; $70d1: $52
	sbc  [hl]                                        ; $70d2: $9e
	dec  c                                           ; $70d3: $0d
	ld   d, b                                        ; $70d4: $50
	halt                                             ; $70d5: $76
	ld   l, [hl]                                     ; $70d6: $6e
	ld   h, l                                        ; $70d7: $65
	ld   h, l                                        ; $70d8: $65
	ld   l, l                                        ; $70d9: $6d
	and  c                                           ; $70da: $a1
	ld   l, [hl]                                     ; $70db: $6e
	rst  $38                                         ; $70dc: $ff
	rst  $38                                         ; $70dd: $ff
	dec  c                                           ; $70de: $0d
	nop                                              ; $70df: $00
	ld   a, [bc]                                     ; $70e0: $0a
	inc  e                                           ; $70e1: $1c
	inc  b                                           ; $70e2: $04
	inc  b                                           ; $70e3: $04
	inc  b                                           ; $70e4: $04
	ld   bc, $bab1                                   ; $70e5: $01 $b1 $ba
	push af                                          ; $70e8: $f5
	rst  $38                                         ; $70e9: $ff
	rst  $38                                         ; $70ea: $ff
	dec  c                                           ; $70eb: $0d
	and  e                                           ; $70ec: $a3
	and  l                                           ; $70ed: $a5
	db   $ec                                         ; $70ee: $ec
	cp   d                                           ; $70ef: $ba
	ld   h, [hl]                                     ; $70f0: $66
	sub  c                                           ; $70f1: $91
	and  c                                           ; $70f2: $a1
	ld   e, a                                        ; $70f3: $5f
	and  c                                           ; $70f4: $a1
	dec  c                                           ; $70f5: $0d
	ld   [hl], d                                     ; $70f6: $72
	sub  [hl]                                        ; $70f7: $96
	ld   d, d                                        ; $70f8: $52
	ld   a, h                                        ; $70f9: $7c
	ld   a, c                                        ; $70fa: $79
	rst  $38                                         ; $70fb: $ff
	rst  $38                                         ; $70fc: $ff
	dec  c                                           ; $70fd: $0d
	nop                                              ; $70fe: $00
	ld   a, [bc]                                     ; $70ff: $0a
	ld   bc, $6152                                   ; $7100: $01 $52 $61
	ld   d, h                                        ; $7103: $54
	sbc  [hl]                                        ; $7104: $9e
	cp   c                                           ; $7105: $b9
	push hl                                          ; $7106: $e5
	push af                                          ; $7107: $f5
	sbc  $fb                                         ; $7108: $de $fb
	db   $ed                                         ; $710a: $ed
	rst  $38                                         ; $710b: $ff
	rst  $38                                         ; $710c: $ff
	dec  c                                           ; $710d: $0d
	nop                                              ; $710e: $00
	ld   a, [bc]                                     ; $710f: $0a
	dec  c                                           ; $7110: $0d
	nop                                              ; $7111: $00
	nop                                              ; $7112: $00
	rrca                                             ; $7113: $0f
	nop                                              ; $7114: $00
	ld   bc, $1e09                                   ; $7115: $01 $09 $1e
	nop                                              ; $7118: $00
	inc  e                                           ; $7119: $1c
	inc  b                                           ; $711a: $04
	ld   bc, $1d01                                   ; $711b: $01 $01 $1d
	ld   b, b                                        ; $711e: $40
	inc  d                                           ; $711f: $14
	inc  bc                                          ; $7120: $03
	inc  d                                           ; $7121: $14
	ld   bc, $2803                                   ; $7122: $01 $03 $28
	nop                                              ; $7125: $00
	ld   bc, $fb9d                                   ; $7126: $01 $9d $fb
	ld   d, d                                        ; $7129: $52
	sbc  [hl]                                        ; $712a: $9e
	sbc  l                                           ; $712b: $9d
	ei                                               ; $712c: $fb
	ld   d, d                                        ; $712d: $52
	ld   a, [$a30d]                                  ; $712e: $fa $0d $a3
	and  l                                           ; $7131: $a5
	db   $ec                                         ; $7132: $ec
	cp   d                                           ; $7133: $ba
	ld   a, h                                        ; $7134: $7c
	ld   e, c                                        ; $7135: $59
	ld   l, a                                        ; $7136: $6f
	ei                                               ; $7137: $fb
	ld   a, [$000d]                                  ; $7138: $fa $0d $00
	ld   a, [bc]                                     ; $713b: $0a
	ld   bc, $7156                                   ; $713c: $01 $56 $71
	add  [hl]                                        ; $713f: $86
	and  c                                           ; $7140: $a1
	ld   a, [$a30d]                                  ; $7141: $fa $0d $a3
	and  l                                           ; $7144: $a5
	db   $ec                                         ; $7145: $ec
	cp   d                                           ; $7146: $ba
	ld   h, a                                        ; $7147: $67
	ld   h, d                                        ; $7148: $62
	ld   d, d                                        ; $7149: $52
	ld   [hl], l                                     ; $714a: $75
	ld   h, l                                        ; $714b: $65
	sub  l                                           ; $714c: $95
	ld   sp, hl                                      ; $714d: $f9
	dec  c                                           ; $714e: $0d
	nop                                              ; $714f: $00
	ld   a, [bc]                                     ; $7150: $0a
	ld   bc, $fb50                                   ; $7151: $01 $50 $fb
	ld   e, b                                        ; $7154: $58
	sub  b                                           ; $7155: $90
	ld   h, l                                        ; $7156: $65
	sbc  e                                           ; $7157: $9b
	ld   e, c                                        ; $7158: $59
	ld   [hl], c                                     ; $7159: $71
	ld   l, l                                        ; $715a: $6d
	sbc  a                                           ; $715b: $9f
	dec  c                                           ; $715c: $0d
	ld   d, b                                        ; $715d: $50
	sbc  b                                           ; $715e: $98
	ld   e, d                                        ; $715f: $5a
	halt                                             ; $7160: $76
	ld   d, h                                        ; $7161: $54
	sbc  [hl]                                        ; $7162: $9e
	ld   l, a                                        ; $7163: $6f
	ld   d, d                                        ; $7164: $52
	ld   [bc], a                                     ; $7165: $02
	inc  de                                          ; $7166: $13
	ld   l, a                                        ; $7167: $6f
	sub  c                                           ; $7168: $91
	and  c                                           ; $7169: $a1
	sbc  a                                           ; $716a: $9f
	dec  c                                           ; $716b: $0d
	nop                                              ; $716c: $00
	ld   a, [bc]                                     ; $716d: $0a
	nop                                              ; $716e: $00
	inc  e                                           ; $716f: $1c
	inc  b                                           ; $7170: $04
	nop                                              ; $7171: $00
	nop                                              ; $7172: $00
	ld   bc, $5058                                   ; $7173: $01 $58 $50
	ld   d, d                                        ; $7176: $52
	ld   h, c                                        ; $7177: $61
	ld   l, [hl]                                     ; $7178: $6e
	ld   a, e                                        ; $7179: $7b
	sbc  [hl]                                        ; $717a: $9e
	dec  c                                           ; $717b: $0d
	ld   l, a                                        ; $717c: $6f
	ld   d, d                                        ; $717d: $52
	ld   [bc], a                                     ; $717e: $02
	inc  de                                          ; $717f: $13
	ld   l, a                                        ; $7180: $6f
	sub  c                                           ; $7181: $91
	and  c                                           ; $7182: $a1
	sbc  a                                           ; $7183: $9f
	dec  c                                           ; $7184: $0d
	nop                                              ; $7185: $00
	ld   a, [bc]                                     ; $7186: $0a
	dec  e                                           ; $7187: $1d
	ld   b, b                                        ; $7188: $40
	inc  d                                           ; $7189: $14
	inc  bc                                          ; $718a: $03
	inc  d                                           ; $718b: $14
	ld   bc, $2801                                   ; $718c: $01 $01 $28
	nop                                              ; $718f: $00
	ld   bc, $9075                                   ; $7190: $01 $75 $90
	sbc  [hl]                                        ; $7193: $9e
	ld   e, b                                        ; $7194: $58
	sub  b                                           ; $7195: $90
	ld   h, l                                        ; $7196: $65
	sbc  e                                           ; $7197: $9b
	ld   e, c                                        ; $7198: $59
	ld   [hl], c                                     ; $7199: $71
	ld   l, l                                        ; $719a: $6d
	sbc  a                                           ; $719b: $9f
	dec  c                                           ; $719c: $0d
	ld   d, b                                        ; $719d: $50
	sbc  b                                           ; $719e: $98
	ld   e, d                                        ; $719f: $5a
	halt                                             ; $71a0: $76
	ld   d, h                                        ; $71a1: $54
	sbc  [hl]                                        ; $71a2: $9e
	ld   l, a                                        ; $71a3: $6f
	ld   d, d                                        ; $71a4: $52
	ld   [bc], a                                     ; $71a5: $02
	inc  de                                          ; $71a6: $13
	ld   l, a                                        ; $71a7: $6f
	sub  c                                           ; $71a8: $91
	and  c                                           ; $71a9: $a1
	sbc  a                                           ; $71aa: $9f
	dec  c                                           ; $71ab: $0d
	nop                                              ; $71ac: $00
	ld   a, [bc]                                     ; $71ad: $0a
	nop                                              ; $71ae: $00
	rrca                                             ; $71af: $0f
	nop                                              ; $71b0: $00
	ld   bc, $0101                                   ; $71b1: $01 $01 $01
	rlca                                             ; $71b4: $07
	or   l                                           ; $71b5: $b5
	db   $dd                                         ; $71b6: $dd
	and  a                                           ; $71b7: $a7
	ld   bc, $fa08                                   ; $71b8: $01 $08 $fa
	dec  c                                           ; $71bb: $0d
	nop                                              ; $71bc: $00
	ld   a, [bc]                                     ; $71bd: $0a
	inc  e                                           ; $71be: $1c
	inc  b                                           ; $71bf: $04
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	ld   bc, $ffa7                                   ; $71c2: $01 $a7 $ff
	rst  $38                                         ; $71c5: $ff
	ld   bc, $5407                                   ; $71c6: $01 $07 $54
	adc  a                                           ; $71c9: $8f
	adc  d                                           ; $71ca: $8a
	ld   h, l                                        ; $71cb: $65
	ld   bc, $fa08                                   ; $71cc: $01 $08 $fa
	dec  c                                           ; $71cf: $0d
	nop                                              ; $71d0: $00
	ld   a, [bc]                                     ; $71d1: $0a
	add  hl, de                                      ; $71d2: $19
	dec  b                                           ; $71d3: $05
	inc  bc                                          ; $71d4: $03
	ld   h, l                                        ; $71d5: $65
	sub  l                                           ; $71d6: $95
	ld   d, h                                        ; $71d7: $54
	ld   e, d                                        ; $71d8: $5a
	nop                                              ; $71d9: $00
	nop                                              ; $71da: $00
	ld   h, l                                        ; $71db: $65
	sub  a                                           ; $71dc: $97
	ld   l, l                                        ; $71dd: $6d
	ld   e, e                                        ; $71de: $5b
	nop                                              ; $71df: $00
	ld   bc, $9765                                   ; $71e0: $01 $65 $97
	ld   d, h                                        ; $71e3: $54
	ld   e, b                                        ; $71e4: $58
	nop                                              ; $71e5: $00
	ld   [bc], a                                     ; $71e6: $02
	rlca                                             ; $71e7: $07
	jp   nc, $0218                                   ; $71e8: $d2 $18 $02

	inc  bc                                          ; $71eb: $03
	ld   bc, $2000                                   ; $71ec: $01 $00 $20
	nop                                              ; $71ef: $00
	rlca                                             ; $71f0: $07
	ld   l, d                                        ; $71f1: $6a
	jr   @+$04                                       ; $71f2: $18 $02

	inc  bc                                          ; $71f4: $03
	ld   bc, $2001                                   ; $71f5: $01 $01 $20
	nop                                              ; $71f8: $00
	rlca                                             ; $71f9: $07
	sbc  [hl]                                        ; $71fa: $9e
	jr   @+$04                                       ; $71fb: $18 $02

	inc  bc                                          ; $71fd: $03
	ld   bc, $2002                                   ; $71fe: $01 $02 $20
	nop                                              ; $7201: $00
	ld   b, $44                                      ; $7202: $06 $44
	jr   jr_067_7222                                 ; $7204: $18 $1c

	inc  b                                           ; $7206: $04
	ld   bc, $0101                                   ; $7207: $01 $01 $01
	rst  $10                                         ; $720a: $d7
	ei                                               ; $720b: $fb
	sbc  [hl]                                        ; $720c: $9e
	ld   h, [hl]                                     ; $720d: $66
	ld   e, c                                        ; $720e: $59
	and  c                                           ; $720f: $a1
	ld   e, h                                        ; $7210: $5c
	sbc  d                                           ; $7211: $9a
	ld   l, [hl]                                     ; $7212: $6e
	sub  [hl]                                        ; $7213: $96
	sbc  a                                           ; $7214: $9f
	dec  c                                           ; $7215: $0d
	and  e                                           ; $7216: $a3
	and  l                                           ; $7217: $a5
	db   $ec                                         ; $7218: $ec
	cp   d                                           ; $7219: $ba
	ld   a, h                                        ; $721a: $7c
	ld   e, c                                        ; $721b: $59
	ld   l, a                                        ; $721c: $6f
	db   $fc                                         ; $721d: $fc
	sbc  a                                           ; $721e: $9f
	dec  c                                           ; $721f: $0d
	xor  c                                           ; $7220: $a9
	reti                                             ; $7221: $d9


jr_067_7222:
	reti                                             ; $7222: $d9


	reti                                             ; $7223: $d9


	sbc  a                                           ; $7224: $9f
	dec  c                                           ; $7225: $0d
	nop                                              ; $7226: $00
	ld   a, [bc]                                     ; $7227: $0a
	ld   b, $7f                                      ; $7228: $06 $7f
	dec  e                                           ; $722a: $1d
	inc  e                                           ; $722b: $1c
	inc  b                                           ; $722c: $04
	nop                                              ; $722d: $00
	nop                                              ; $722e: $00
	ld   bc, $0701                                   ; $722f: $01 $01 $07
	ld   h, l                                        ; $7232: $65
	sub  a                                           ; $7233: $97
	ld   l, l                                        ; $7234: $6d
	ld   e, e                                        ; $7235: $5b
	ld   bc, $7d08                                   ; $7236: $01 $08 $7d
	ld   e, l                                        ; $7239: $5d
	ld   l, [hl]                                     ; $723a: $6e
	sub  b                                           ; $723b: $90
	ld   a, h                                        ; $723c: $7c
	ld   [hl], l                                     ; $723d: $75
	sub  b                                           ; $723e: $90
	dec  c                                           ; $723f: $0d
	sub  d                                           ; $7240: $92
	ld   h, e                                        ; $7241: $63
	ld   d, d                                        ; $7242: $52
	ld   [hl], l                                     ; $7243: $75
	sub  b                                           ; $7244: $90
	ld   a, b                                        ; $7245: $78
	ld   d, d                                        ; $7246: $52
	ld   e, c                                        ; $7247: $59
	sub  a                                           ; $7248: $97
	pop  bc                                          ; $7249: $c1
	db   $e3                                         ; $724a: $e3
	db   $fc                                         ; $724b: $fc
	sbc  a                                           ; $724c: $9f
	dec  c                                           ; $724d: $0d
	ld   l, a                                        ; $724e: $6f
	ld   d, d                                        ; $724f: $52
	ld   [bc], a                                     ; $7250: $02
	inc  de                                          ; $7251: $13
	ld   l, a                                        ; $7252: $6f
	sub  c                                           ; $7253: $91
	and  c                                           ; $7254: $a1
	ld   a, h                                        ; $7255: $7c
	adc  h                                           ; $7256: $8c
	ld   e, a                                        ; $7257: $5f
	sbc  a                                           ; $7258: $9f
	dec  c                                           ; $7259: $0d
	nop                                              ; $725a: $00
	ld   a, [bc]                                     ; $725b: $0a
	ld   b, $7f                                      ; $725c: $06 $7f
	dec  e                                           ; $725e: $1d
	inc  e                                           ; $725f: $1c
	inc  b                                           ; $7260: $04
	nop                                              ; $7261: $00
	nop                                              ; $7262: $00
	ld   bc, $0701                                   ; $7263: $01 $01 $07
	ld   h, l                                        ; $7266: $65
	sub  a                                           ; $7267: $97
	ld   d, h                                        ; $7268: $54
	ld   e, b                                        ; $7269: $58
	ld   bc, $7d08                                   ; $726a: $01 $08 $7d
	ld   e, l                                        ; $726d: $5d
	ld   l, [hl]                                     ; $726e: $6e
	sub  b                                           ; $726f: $90
	ld   a, h                                        ; $7270: $7c
	ld   [hl], l                                     ; $7271: $75
	sub  b                                           ; $7272: $90
	dec  c                                           ; $7273: $0d
	sub  d                                           ; $7274: $92
	ld   h, e                                        ; $7275: $63
	ld   d, d                                        ; $7276: $52
	ld   [hl], l                                     ; $7277: $75
	sub  b                                           ; $7278: $90
	ld   a, b                                        ; $7279: $78
	ld   d, d                                        ; $727a: $52
	ld   e, c                                        ; $727b: $59
	sub  a                                           ; $727c: $97
	pop  bc                                          ; $727d: $c1
	db   $e3                                         ; $727e: $e3
	db   $fc                                         ; $727f: $fc
	sbc  a                                           ; $7280: $9f
	dec  c                                           ; $7281: $0d
	ld   l, a                                        ; $7282: $6f
	ld   d, d                                        ; $7283: $52
	ld   [bc], a                                     ; $7284: $02
	inc  de                                          ; $7285: $13
	ld   l, a                                        ; $7286: $6f
	sub  c                                           ; $7287: $91
	and  c                                           ; $7288: $a1
	ld   a, h                                        ; $7289: $7c
	adc  h                                           ; $728a: $8c
	ld   e, a                                        ; $728b: $5f
	sbc  a                                           ; $728c: $9f
	dec  c                                           ; $728d: $0d
	nop                                              ; $728e: $00
	ld   a, [bc]                                     ; $728f: $0a
	ld   b, $7f                                      ; $7290: $06 $7f
	dec  e                                           ; $7292: $1d
	rrca                                             ; $7293: $0f
	nop                                              ; $7294: $00
	ld   bc, $0101                                   ; $7295: $01 $01 $01
	rlca                                             ; $7298: $07
	ld   h, l                                        ; $7299: $65
	sub  l                                           ; $729a: $95
	ld   d, h                                        ; $729b: $54
	ld   e, d                                        ; $729c: $5a
	ld   bc, $fa08                                   ; $729d: $01 $08 $fa
	dec  c                                           ; $72a0: $0d
	nop                                              ; $72a1: $00
	ld   a, [bc]                                     ; $72a2: $0a
	inc  e                                           ; $72a3: $1c
	inc  b                                           ; $72a4: $04
	nop                                              ; $72a5: $00
	nop                                              ; $72a6: $00
	ld   bc, $ff5a                                   ; $72a7: $01 $5a $ff
	rst  $38                                         ; $72aa: $ff
	ld   bc, $ad07                                   ; $72ab: $01 $07 $ad
	ei                                               ; $72ae: $fb
	db   $ec                                         ; $72af: $ec
	call nz, $01b0                                   ; $72b0: $c4 $b0 $01
	ld   [$0dfa], sp                                 ; $72b3: $08 $fa $0d
	nop                                              ; $72b6: $00
	ld   a, [bc]                                     ; $72b7: $0a
	rrca                                             ; $72b8: $0f
	nop                                              ; $72b9: $00
	ld   bc, $0101                                   ; $72ba: $01 $01 $01
	inc  bc                                          ; $72bd: $03
	xor  l                                           ; $72be: $ad
	sbc  [hl]                                        ; $72bf: $9e
	xor  l                                           ; $72c0: $ad
	ei                                               ; $72c1: $fb
	db   $ec                                         ; $72c2: $ec
	call nz, $fab0                                   ; $72c3: $c4 $b0 $fa
	ld   sp, hl                                      ; $72c6: $f9
	dec  c                                           ; $72c7: $0d
	db   $10                                         ; $72c8: $10
	ld   [bc], a                                     ; $72c9: $02
	rlc  d                                           ; $72ca: $cb $02
	adc  a                                           ; $72cc: $8f
	ld   [bc], a                                     ; $72cd: $02
	and  h                                           ; $72ce: $a4
	and  e                                           ; $72cf: $a3
	db   $ec                                         ; $72d0: $ec
	ld   a, b                                        ; $72d1: $78
	ld   a, h                                        ; $72d2: $7c
	ld   e, c                                        ; $72d3: $59
	rst  $38                                         ; $72d4: $ff
	rst  $38                                         ; $72d5: $ff
	ld   bc, $0d04                                   ; $72d6: $01 $04 $0d
	nop                                              ; $72d9: $00
	ld   a, [bc]                                     ; $72da: $0a
	add  hl, de                                      ; $72db: $19
	dec  b                                           ; $72dc: $05
	inc  bc                                          ; $72dd: $03
	or   b                                           ; $72de: $b0
	db   $ed                                         ; $72df: $ed
	ldh  [rP1], a                                    ; $72e0: $e0 $00
	nop                                              ; $72e2: $00
	or   b                                           ; $72e3: $b0
	xor  $be                                         ; $72e4: $ee $be
	push af                                          ; $72e6: $f5
	nop                                              ; $72e7: $00
	ld   bc, $985d                                   ; $72e8: $01 $5d $98
	adc  h                                           ; $72eb: $8c
	and  c                                           ; $72ec: $a1
	ld   h, [hl]                                     ; $72ed: $66
	sub  e                                           ; $72ee: $93
	ld   d, h                                        ; $72ef: $54
	nop                                              ; $72f0: $00
	ld   [bc], a                                     ; $72f1: $02
	rlca                                             ; $72f2: $07
	ei                                               ; $72f3: $fb
	add  hl, de                                      ; $72f4: $19
	ld   [bc], a                                     ; $72f5: $02
	inc  bc                                          ; $72f6: $03
	ld   bc, $2000                                   ; $72f7: $01 $00 $20
	nop                                              ; $72fa: $00
	rlca                                             ; $72fb: $07
	ld   a, [hl]                                     ; $72fc: $7e
	add  hl, de                                      ; $72fd: $19
	ld   [bc], a                                     ; $72fe: $02
	inc  bc                                          ; $72ff: $03
	ld   bc, $2001                                   ; $7300: $01 $01 $20
	nop                                              ; $7303: $00
	rlca                                             ; $7304: $07
	cp   d                                           ; $7305: $ba
	add  hl, de                                      ; $7306: $19
	ld   [bc], a                                     ; $7307: $02
	inc  bc                                          ; $7308: $03
	ld   bc, $2002                                   ; $7309: $01 $02 $20
	nop                                              ; $730c: $00
	ld   b, $4f                                      ; $730d: $06 $4f
	add  hl, de                                      ; $730f: $19
	inc  e                                           ; $7310: $1c
	inc  b                                           ; $7311: $04
	ld   bc, $1d01                                   ; $7312: $01 $01 $1d
	ld   b, b                                        ; $7315: $40
	inc  d                                           ; $7316: $14
	inc  bc                                          ; $7317: $03
	inc  d                                           ; $7318: $14
	ld   bc, $2802                                   ; $7319: $01 $02 $28
	nop                                              ; $731c: $00
	ld   bc, $fbd7                                   ; $731d: $01 $d7 $fb
	sbc  [hl]                                        ; $7320: $9e
	ld   h, [hl]                                     ; $7321: $66
	ld   e, c                                        ; $7322: $59
	and  c                                           ; $7323: $a1
	ld   e, h                                        ; $7324: $5c
	sbc  d                                           ; $7325: $9a
	ld   l, [hl]                                     ; $7326: $6e
	sub  [hl]                                        ; $7327: $96
	sbc  a                                           ; $7328: $9f
	dec  c                                           ; $7329: $0d
	and  e                                           ; $732a: $a3
	and  l                                           ; $732b: $a5
	db   $ec                                         ; $732c: $ec
	cp   d                                           ; $732d: $ba
	ld   a, h                                        ; $732e: $7c
	ld   e, c                                        ; $732f: $59
	ld   l, a                                        ; $7330: $6f
	db   $fc                                         ; $7331: $fc
	sbc  a                                           ; $7332: $9f
	dec  c                                           ; $7333: $0d
	xor  c                                           ; $7334: $a9
	reti                                             ; $7335: $d9


	reti                                             ; $7336: $d9


	reti                                             ; $7337: $d9


	sbc  a                                           ; $7338: $9f
	dec  c                                           ; $7339: $0d
	nop                                              ; $733a: $00
	ld   a, [bc]                                     ; $733b: $0a
	ld   b, $7f                                      ; $733c: $06 $7f
	dec  e                                           ; $733e: $1d
	inc  e                                           ; $733f: $1c
	inc  b                                           ; $7340: $04
	ld   bc, $1d01                                   ; $7341: $01 $01 $1d
	ld   b, b                                        ; $7344: $40
	inc  d                                           ; $7345: $14
	inc  bc                                          ; $7346: $03
	inc  d                                           ; $7347: $14
	ld   bc, $2802                                   ; $7348: $01 $02 $28
	nop                                              ; $734b: $00
	ld   bc, $0701                                   ; $734c: $01 $01 $07
	or   b                                           ; $734f: $b0
	xor  $be                                         ; $7350: $ee $be
	push af                                          ; $7352: $f5
	ld   bc, $7d08                                   ; $7353: $01 $08 $7d
	sub  d                                           ; $7356: $92
	ld   h, e                                        ; $7357: $63
	ld   d, d                                        ; $7358: $52
	ld   l, [hl]                                     ; $7359: $6e
	ld   e, a                                        ; $735a: $5f
	ld   [hl], a                                     ; $735b: $77
	dec  c                                           ; $735c: $0d
	ld   bc, $f507                                   ; $735d: $01 $07 $f5
	ld   bc, $5a08                                   ; $7360: $01 $08 $5a
	ld   [hl], d                                     ; $7363: $72
	ld   e, l                                        ; $7364: $5d
	ld   e, c                                        ; $7365: $59
	sub  a                                           ; $7366: $97
	pop  bc                                          ; $7367: $c1
	db   $e3                                         ; $7368: $e3
	ei                                               ; $7369: $fb
	call nz, $0dfa                                   ; $736a: $c4 $fa $0d
	and  e                                           ; $736d: $a3
	and  l                                           ; $736e: $a5
	db   $ec                                         ; $736f: $ec
	cp   d                                           ; $7370: $ba
	ld   a, h                                        ; $7371: $7c
	ld   e, c                                        ; $7372: $59
	ld   l, a                                        ; $7373: $6f
	ld   a, [$000d]                                  ; $7374: $fa $0d $00
	ld   a, [bc]                                     ; $7377: $0a
	ld   b, $7f                                      ; $7378: $06 $7f
	dec  e                                           ; $737a: $1d
	inc  e                                           ; $737b: $1c
	inc  b                                           ; $737c: $04
	ld   bc, $1d01                                   ; $737d: $01 $01 $1d
	ld   b, b                                        ; $7380: $40
	inc  d                                           ; $7381: $14
	inc  bc                                          ; $7382: $03
	inc  d                                           ; $7383: $14
	ld   bc, $2802                                   ; $7384: $01 $02 $28
	nop                                              ; $7387: $00
	ld   bc, $0701                                   ; $7388: $01 $01 $07
	ld   e, l                                        ; $738b: $5d
	sbc  b                                           ; $738c: $98
	adc  h                                           ; $738d: $8c
	and  c                                           ; $738e: $a1
	ld   h, [hl]                                     ; $738f: $66
	sub  e                                           ; $7390: $93
	ld   d, h                                        ; $7391: $54
	ld   bc, $7d08                                   ; $7392: $01 $08 $7d
	sbc  [hl]                                        ; $7395: $9e
	sub  d                                           ; $7396: $92
	ld   h, e                                        ; $7397: $63
	ld   d, d                                        ; $7398: $52
	dec  c                                           ; $7399: $0d
	ld   [hl], l                                     ; $739a: $75
	sub  b                                           ; $739b: $90
	sbc  [hl]                                        ; $739c: $9e
	ld   e, l                                        ; $739d: $5d
	ld   l, [hl]                                     ; $739e: $6e
	sub  b                                           ; $739f: $90
	ld   a, h                                        ; $73a0: $7c
	ld   [hl], l                                     ; $73a1: $75
	sub  b                                           ; $73a2: $90
	ld   a, b                                        ; $73a3: $78
	ld   d, d                                        ; $73a4: $52
	ld   e, c                                        ; $73a5: $59
	sub  a                                           ; $73a6: $97
	dec  c                                           ; $73a7: $0d
	pop  bc                                          ; $73a8: $c1
	db   $e3                                         ; $73a9: $e3
	ei                                               ; $73aa: $fb
	call nz, $10fa                                   ; $73ab: $c4 $fa $10
	and  e                                           ; $73ae: $a3
	and  l                                           ; $73af: $a5
	db   $ec                                         ; $73b0: $ec
	cp   d                                           ; $73b1: $ba
	ld   a, h                                        ; $73b2: $7c
	ld   e, c                                        ; $73b3: $59
	ld   l, a                                        ; $73b4: $6f
	ld   a, [$000d]                                  ; $73b5: $fa $0d $00
	ld   a, [bc]                                     ; $73b8: $0a
	ld   b, $7f                                      ; $73b9: $06 $7f
	dec  e                                           ; $73bb: $1d
	rrca                                             ; $73bc: $0f
	nop                                              ; $73bd: $00
	ld   bc, $0101                                   ; $73be: $01 $01 $01
	rlca                                             ; $73c1: $07
	or   b                                           ; $73c2: $b0
	db   $ed                                         ; $73c3: $ed
	ldh  [rSB], a                                    ; $73c4: $e0 $01
	ld   [$0dfa], sp                                 ; $73c6: $08 $fa $0d
	nop                                              ; $73c9: $00
	ld   a, [bc]                                     ; $73ca: $0a
	inc  e                                           ; $73cb: $1c
	inc  b                                           ; $73cc: $04
	nop                                              ; $73cd: $00
	nop                                              ; $73ce: $00
	ld   bc, $ffe0                                   ; $73cf: $01 $e0 $ff
	rst  $38                                         ; $73d2: $ff
	ld   bc, $e007                                   ; $73d3: $01 $07 $e0
	push af                                          ; $73d6: $f5
	ret                                              ; $73d7: $c9


	ld   bc, $fa08                                   ; $73d8: $01 $08 $fa
	dec  c                                           ; $73db: $0d
	nop                                              ; $73dc: $00
	ld   a, [bc]                                     ; $73dd: $0a
	add  hl, de                                      ; $73de: $19
	dec  b                                           ; $73df: $05
	inc  bc                                          ; $73e0: $03
	ret                                              ; $73e1: $c9


	rst  JumpTable                                         ; $73e2: $df
	ret                                              ; $73e3: $c9


	nop                                              ; $73e4: $00
	nop                                              ; $73e5: $00
	ret                                              ; $73e6: $c9


	and  a                                           ; $73e7: $a7
	pop  de                                          ; $73e8: $d1
	push af                                          ; $73e9: $f5
	cp   c                                           ; $73ea: $b9
	push hl                                          ; $73eb: $e5
	push af                                          ; $73ec: $f5
	nop                                              ; $73ed: $00
	ld   bc, $a7c9                                   ; $73ee: $01 $c9 $a7
	sub  $00                                         ; $73f1: $d6 $00
	ld   [bc], a                                     ; $73f3: $02
	rlca                                             ; $73f4: $07
	add  $1a                                         ; $73f5: $c6 $1a
	ld   [bc], a                                     ; $73f7: $02
	inc  bc                                          ; $73f8: $03
	ld   bc, $2000                                   ; $73f9: $01 $00 $20
	nop                                              ; $73fc: $00
	rlca                                             ; $73fd: $07
	ld   d, c                                        ; $73fe: $51
	ld   a, [de]                                     ; $73ff: $1a
	ld   [bc], a                                     ; $7400: $02
	inc  bc                                          ; $7401: $03
	ld   bc, $2001                                   ; $7402: $01 $01 $20
	nop                                              ; $7405: $00
	rlca                                             ; $7406: $07
	adc  h                                           ; $7407: $8c
	ld   a, [de]                                     ; $7408: $1a
	ld   [bc], a                                     ; $7409: $02
	inc  bc                                          ; $740a: $03
	ld   bc, $2002                                   ; $740b: $01 $02 $20
	nop                                              ; $740e: $00
	ld   b, $4f                                      ; $740f: $06 $4f
	add  hl, de                                      ; $7411: $19
	inc  e                                           ; $7412: $1c
	inc  b                                           ; $7413: $04
	ld   bc, $1d01                                   ; $7414: $01 $01 $1d
	ld   b, b                                        ; $7417: $40
	inc  d                                           ; $7418: $14
	inc  bc                                          ; $7419: $03
	inc  d                                           ; $741a: $14
	ld   bc, $2802                                   ; $741b: $01 $02 $28
	nop                                              ; $741e: $00
	ld   bc, $0701                                   ; $741f: $01 $01 $07
	ret                                              ; $7422: $c9


	and  a                                           ; $7423: $a7
	pop  de                                          ; $7424: $d1
	push af                                          ; $7425: $f5
	cp   c                                           ; $7426: $b9
	push hl                                          ; $7427: $e5
	push af                                          ; $7428: $f5
	ld   bc, $7108                                   ; $7429: $01 $08 $71
	ld   [hl], h                                     ; $742c: $74
	ld   a, b                                        ; $742d: $78
	ld   a, c                                        ; $742e: $79
	ld   sp, hl                                      ; $742f: $f9
	dec  c                                           ; $7430: $0d
	ld   l, e                                        ; $7431: $6b
	and  c                                           ; $7432: $a1
	ld   a, b                                        ; $7433: $78
	ld   a, h                                        ; $7434: $7c
	ld   h, l                                        ; $7435: $65
	sub  a                                           ; $7436: $97
	ld   a, b                                        ; $7437: $78
	ld   d, d                                        ; $7438: $52
	ld   e, c                                        ; $7439: $59
	sub  a                                           ; $743a: $97
	pop  bc                                          ; $743b: $c1
	db   $e3                                         ; $743c: $e3
	ld   a, [$a30d]                                  ; $743d: $fa $0d $a3
	and  l                                           ; $7440: $a5
	db   $ec                                         ; $7441: $ec
	cp   d                                           ; $7442: $ba
	ld   a, h                                        ; $7443: $7c
	ld   e, c                                        ; $7444: $59
	ld   l, a                                        ; $7445: $6f
	ld   a, [$000d]                                  ; $7446: $fa $0d $00
	ld   a, [bc]                                     ; $7449: $0a
	ld   b, $7f                                      ; $744a: $06 $7f
	dec  e                                           ; $744c: $1d
	inc  e                                           ; $744d: $1c
	inc  b                                           ; $744e: $04
	ld   bc, $1d01                                   ; $744f: $01 $01 $1d

Call_067_7452:
Jump_067_7452:
	ld   b, b                                        ; $7452: $40
	inc  d                                           ; $7453: $14
	inc  bc                                          ; $7454: $03
	inc  d                                           ; $7455: $14
	ld   bc, $2802                                   ; $7456: $01 $02 $28
	nop                                              ; $7459: $00
	ld   bc, $0701                                   ; $745a: $01 $01 $07
	ret                                              ; $745d: $c9


	and  a                                           ; $745e: $a7
	sub  $01                                         ; $745f: $d6 $01
	ld   [$9e7d], sp                                 ; $7461: $08 $7d $9e
	sub  d                                           ; $7464: $92

Jump_067_7465:
	ld   h, e                                        ; $7465: $63
	ld   d, d                                        ; $7466: $52
	ld   [hl], l                                     ; $7467: $75
	sub  b                                           ; $7468: $90
	sbc  [hl]                                        ; $7469: $9e
	dec  c                                           ; $746a: $0d
	ld   e, l                                        ; $746b: $5d
	ld   l, [hl]                                     ; $746c: $6e
	sub  b                                           ; $746d: $90
	ld   a, h                                        ; $746e: $7c
	ld   [hl], l                                     ; $746f: $75
	sub  b                                           ; $7470: $90
	ld   a, b                                        ; $7471: $78
	ld   d, d                                        ; $7472: $52
	ld   e, c                                        ; $7473: $59
	sub  a                                           ; $7474: $97
	pop  bc                                          ; $7475: $c1
	db   $e3                                         ; $7476: $e3
	ld   a, [$a30d]                                  ; $7477: $fa $0d $a3
	and  l                                           ; $747a: $a5
	db   $ec                                         ; $747b: $ec
	cp   d                                           ; $747c: $ba
	ld   a, h                                        ; $747d: $7c
	ld   e, c                                        ; $747e: $59
	ld   l, a                                        ; $747f: $6f
	ld   a, [$000d]                                  ; $7480: $fa $0d $00
	ld   a, [bc]                                     ; $7483: $0a
	ld   b, $7f                                      ; $7484: $06 $7f
	dec  e                                           ; $7486: $1d
	rrca                                             ; $7487: $0f
	nop                                              ; $7488: $00
	ld   bc, $0101                                   ; $7489: $01 $01 $01
	rlca                                             ; $748c: $07
	ret                                              ; $748d: $c9


	rst  JumpTable                                         ; $748e: $df
	ret                                              ; $748f: $c9


	ld   bc, $fa08                                   ; $7490: $01 $08 $fa
	dec  c                                           ; $7493: $0d
	nop                                              ; $7494: $00
	ld   a, [bc]                                     ; $7495: $0a
	inc  e                                           ; $7496: $1c
	inc  b                                           ; $7497: $04
	nop                                              ; $7498: $00
	nop                                              ; $7499: $00
	ld   bc, $ffc9                                   ; $749a: $01 $c9 $ff
	rst  $38                                         ; $749d: $ff
	ld   bc, $c907                                   ; $749e: $01 $07 $c9
	and  a                                           ; $74a1: $a7
	db   $e4                                         ; $74a2: $e4
	rst  $28                                         ; $74a3: $ef
	or   h                                           ; $74a4: $b4
	cp   b                                           ; $74a5: $b8
	ld   bc, $fa08                                   ; $74a6: $01 $08 $fa
	dec  c                                           ; $74a9: $0d
	nop                                              ; $74aa: $00
	ld   a, [bc]                                     ; $74ab: $0a
	add  hl, de                                      ; $74ac: $19
	dec  b                                           ; $74ad: $05
	inc  bc                                          ; $74ae: $03
	ld   h, l                                        ; $74af: $65
	ld   h, l                                        ; $74b0: $65
	halt                                             ; $74b1: $76
	ld   d, h                                        ; $74b2: $54
	nop                                              ; $74b3: $00
	nop                                              ; $74b4: $00
	ld   h, l                                        ; $74b5: $65
	sub  e                                           ; $74b6: $93
	and  c                                           ; $74b7: $a1
	ld   e, h                                        ; $74b8: $5c
	ld   e, l                                        ; $74b9: $5d
	nop                                              ; $74ba: $00
	ld   bc, $8465                                   ; $74bb: $01 $65 $84
	ld   e, d                                        ; $74be: $5a
	ld   e, e                                        ; $74bf: $5b
	nop                                              ; $74c0: $00
	ld   [bc], a                                     ; $74c1: $02
	rlca                                             ; $74c2: $07
	rra                                              ; $74c3: $1f
	dec  de                                          ; $74c4: $1b
	ld   [bc], a                                     ; $74c5: $02
	inc  bc                                          ; $74c6: $03
	ld   bc, $2000                                   ; $74c7: $01 $00 $20
	nop                                              ; $74ca: $00
	rlca                                             ; $74cb: $07
	cp   h                                           ; $74cc: $bc
	dec  de                                          ; $74cd: $1b
	ld   [bc], a                                     ; $74ce: $02
	inc  bc                                          ; $74cf: $03
	ld   bc, $2001                                   ; $74d0: $01 $01 $20
	nop                                              ; $74d3: $00
	rlca                                             ; $74d4: $07
	cp   a                                           ; $74d5: $bf
	inc  e                                           ; $74d6: $1c
	ld   [bc], a                                     ; $74d7: $02
	inc  bc                                          ; $74d8: $03
	ld   bc, $2002                                   ; $74d9: $01 $02 $20
	nop                                              ; $74dc: $00
	ld   b, $4f                                      ; $74dd: $06 $4f
	add  hl, de                                      ; $74df: $19
	rrca                                             ; $74e0: $0f
	nop                                              ; $74e1: $00
	ld   bc, $0101                                   ; $74e2: $01 $01 $01
	rlca                                             ; $74e5: $07
	ld   h, l                                        ; $74e6: $65
	ld   h, l                                        ; $74e7: $65
	halt                                             ; $74e8: $76
	ld   d, h                                        ; $74e9: $54
	ld   bc, $fa08                                   ; $74ea: $01 $08 $fa
	dec  c                                           ; $74ed: $0d
	nop                                              ; $74ee: $00
	ld   a, [bc]                                     ; $74ef: $0a
	inc  e                                           ; $74f0: $1c
	inc  b                                           ; $74f1: $04
	nop                                              ; $74f2: $00
	nop                                              ; $74f3: $00
	ld   bc, $0701                                   ; $74f4: $01 $01 $07
	and  a                                           ; $74f7: $a7
	ld   bc, $f908                                   ; $74f8: $01 $08 $f9
	dec  c                                           ; $74fb: $0d
	ld   d, [hl]                                     ; $74fc: $56
	db   $fc                                         ; $74fd: $fc
	halt                                             ; $74fe: $76
	rst  $38                                         ; $74ff: $ff
	rst  $38                                         ; $7500: $ff
	ld   l, e                                        ; $7501: $6b
	ld   d, h                                        ; $7502: $54
	ld   l, [hl]                                     ; $7503: $6e
	ld   a, [$000d]                                  ; $7504: $fa $0d $00
	inc  e                                           ; $7507: $1c
	inc  b                                           ; $7508: $04
	ld   bc, $0101                                   ; $7509: $01 $01 $01
	ld   bc, $a707                                   ; $750c: $01 $07 $a7
	xor  e                                           ; $750f: $ab
	ei                                               ; $7510: $fb
	ret  nz                                          ; $7511: $c0

	ei                                               ; $7512: $fb
	db   $e3                                         ; $7513: $e3
	rst  $28                                         ; $7514: $ef
	push af                                          ; $7515: $f5
	ld   bc, $fa08                                   ; $7516: $01 $08 $fa
	ld   a, [$000d]                                  ; $7519: $fa $0d $00
	ld   a, [bc]                                     ; $751c: $0a
	inc  e                                           ; $751d: $1c
	inc  b                                           ; $751e: $04
	ld   b, $06                                      ; $751f: $06 $06
	ld   bc, $ff50                                   ; $7521: $01 $50 $ff
	rst  $38                                         ; $7524: $ff
	dec  c                                           ; $7525: $0d
	ld   bc, $f507                                   ; $7526: $01 $07 $f5
	ld   bc, $5a08                                   ; $7529: $01 $08 $5a
	ld   [hl], d                                     ; $752c: $72
	ld   d, d                                        ; $752d: $52
	ld   l, a                                        ; $752e: $6f
	sub  c                                           ; $752f: $91
	ld   [hl], c                                     ; $7530: $71
	ld   l, l                                        ; $7531: $6d
	rst  $38                                         ; $7532: $ff
	rst  $38                                         ; $7533: $ff
	dec  c                                           ; $7534: $0d
	nop                                              ; $7535: $00
	ld   a, [bc]                                     ; $7536: $0a
	inc  e                                           ; $7537: $1c
	inc  b                                           ; $7538: $04
	ld   bc, $0101                                   ; $7539: $01 $01 $01
	xor  c                                           ; $753c: $a9
	reti                                             ; $753d: $d9


	reti                                             ; $753e: $d9


	rst  $38                                         ; $753f: $ff
	rst  $38                                         ; $7540: $ff
	dec  c                                           ; $7541: $0d
	and  e                                           ; $7542: $a3
	and  l                                           ; $7543: $a5
	db   $ec                                         ; $7544: $ec
	cp   d                                           ; $7545: $ba
	sbc  [hl]                                        ; $7546: $9e
	adc  h                                           ; $7547: $8c
	ld   e, a                                        ; $7548: $5f
	ld   l, a                                        ; $7549: $6f
	sub  c                                           ; $754a: $91
	ld   [hl], c                                     ; $754b: $71
	ld   l, l                                        ; $754c: $6d
	rst  $38                                         ; $754d: $ff
	rst  $38                                         ; $754e: $ff
	dec  c                                           ; $754f: $0d
	nop                                              ; $7550: $00
	ld   a, [bc]                                     ; $7551: $0a
	dec  e                                           ; $7552: $1d
	ld   b, b                                        ; $7553: $40
	inc  d                                           ; $7554: $14
	inc  bc                                          ; $7555: $03
	inc  d                                           ; $7556: $14
	ld   bc, $2803                                   ; $7557: $01 $03 $28
	nop                                              ; $755a: $00
	ld   bc, $9075                                   ; $755b: $01 $75 $90
	sbc  [hl]                                        ; $755e: $9e
	ld   h, a                                        ; $755f: $67
	ld   h, d                                        ; $7560: $62
	ld   e, l                                        ; $7561: $5d
	ld   l, l                                        ; $7562: $6d
	ld   a, h                                        ; $7563: $7c
	ld   h, l                                        ; $7564: $65
	ld   e, c                                        ; $7565: $59
	ld   [hl], c                                     ; $7566: $71
	ld   l, l                                        ; $7567: $6d
	sub  [hl]                                        ; $7568: $96
	sbc  a                                           ; $7569: $9f
	dec  c                                           ; $756a: $0d
	ld   d, b                                        ; $756b: $50
	sbc  b                                           ; $756c: $98
	ld   e, d                                        ; $756d: $5a
	halt                                             ; $756e: $76
	ld   d, h                                        ; $756f: $54
	sbc  [hl]                                        ; $7570: $9e
	ld   l, a                                        ; $7571: $6f
	ld   d, d                                        ; $7572: $52
	ld   [bc], a                                     ; $7573: $02
	inc  de                                          ; $7574: $13
	ld   l, a                                        ; $7575: $6f
	sub  c                                           ; $7576: $91
	and  c                                           ; $7577: $a1
	sbc  a                                           ; $7578: $9f
	dec  c                                           ; $7579: $0d
	nop                                              ; $757a: $00
	ld   a, [bc]                                     ; $757b: $0a
	nop                                              ; $757c: $00
	rrca                                             ; $757d: $0f
	nop                                              ; $757e: $00
	ld   bc, $0101                                   ; $757f: $01 $01 $01
	rlca                                             ; $7582: $07
	ld   h, l                                        ; $7583: $65
	sub  e                                           ; $7584: $93
	and  c                                           ; $7585: $a1
	ld   e, h                                        ; $7586: $5c
	ld   e, l                                        ; $7587: $5d
	ld   bc, $fa08                                   ; $7588: $01 $08 $fa
	dec  c                                           ; $758b: $0d
	nop                                              ; $758c: $00
	ld   a, [bc]                                     ; $758d: $0a
	inc  e                                           ; $758e: $1c
	inc  b                                           ; $758f: $04
	nop                                              ; $7590: $00
	nop                                              ; $7591: $00
	ld   bc, $0701                                   ; $7592: $01 $01 $07
	ld   e, l                                        ; $7595: $5d
	ld   bc, $f908                                   ; $7596: $01 $08 $f9
	dec  c                                           ; $7599: $0d
	ld   d, [hl]                                     ; $759a: $56
	db   $fc                                         ; $759b: $fc
	halt                                             ; $759c: $76
	rst  $38                                         ; $759d: $ff

Jump_067_759e:
	rst  $38                                         ; $759e: $ff
	ld   l, e                                        ; $759f: $6b
	ld   d, h                                        ; $75a0: $54
	ld   l, [hl]                                     ; $75a1: $6e
	ld   a, [$000d]                                  ; $75a2: $fa $0d $00
	inc  e                                           ; $75a5: $1c
	inc  b                                           ; $75a6: $04
	ld   bc, $0101                                   ; $75a7: $01 $01 $01
	ld   bc, $b007                                   ; $75aa: $01 $07 $b0
	db   $ed                                         ; $75ad: $ed
	ldh  [rSB], a                                    ; $75ae: $e0 $01
	ld   [$fafa], sp                                 ; $75b0: $08 $fa $fa
	dec  c                                           ; $75b3: $0d
	nop                                              ; $75b4: $00
	ld   a, [bc]                                     ; $75b5: $0a
	inc  e                                           ; $75b6: $1c
	inc  b                                           ; $75b7: $04
	ld   b, $06                                      ; $75b8: $06 $06
	ld   bc, $ffff                                   ; $75ba: $01 $ff $ff
	ld   d, b                                        ; $75bd: $50
	sbc  [hl]                                        ; $75be: $9e
	or   b                                           ; $75bf: $b0
	db   $ed                                         ; $75c0: $ed
	ldh  [$7d], a                                    ; $75c1: $e0 $7d
	dec  c                                           ; $75c3: $0d
	ld   h, e                                        ; $75c4: $63
	ld   [hl], c                                     ; $75c5: $71
	ld   e, e                                        ; $75c6: $5b
	ld   l, a                                        ; $75c7: $6f
	ld   d, d                                        ; $75c8: $52
	ld   [bc], a                                     ; $75c9: $02
	inc  de                                          ; $75ca: $13
	ld   l, a                                        ; $75cb: $6f
	sub  c                                           ; $75cc: $91
	and  c                                           ; $75cd: $a1
	ld   e, d                                        ; $75ce: $5a
	dec  c                                           ; $75cf: $0d
	nop                                              ; $75d0: $00
	inc  e                                           ; $75d1: $1c
	inc  b                                           ; $75d2: $04
	inc  b                                           ; $75d3: $04
	inc  b                                           ; $75d4: $04
	ld   bc, $7152                                   ; $75d5: $01 $52 $71
	ld   l, a                                        ; $75d8: $6f
	sub  c                                           ; $75d9: $91
	ld   [hl], c                                     ; $75da: $71
	ld   l, l                                        ; $75db: $6d
	ld   h, l                                        ; $75dc: $65
	rst  $38                                         ; $75dd: $ff
	rst  $38                                         ; $75de: $ff
	dec  c                                           ; $75df: $0d
	nop                                              ; $75e0: $00
	ld   a, [bc]                                     ; $75e1: $0a
	ld   bc, $fb56                                   ; $75e2: $01 $56 $fb
	ld   [hl], c                                     ; $75e5: $71
	halt                                             ; $75e6: $76
	rst  $38                                         ; $75e7: $ff
	rst  $38                                         ; $75e8: $ff
	dec  c                                           ; $75e9: $0d
	ld   bc, $5d07                                   ; $75ea: $01 $07 $5d
	ld   bc, $7808                                   ; $75ed: $01 $08 $78
	and  c                                           ; $75f0: $a1
	ld   [hl], h                                     ; $75f1: $74
	sub  b                                           ; $75f2: $90
	ld   d, h                                        ; $75f3: $54
	ld   a, b                                        ; $75f4: $78
	ld   d, d                                        ; $75f5: $52
	sub  [hl]                                        ; $75f6: $96
	ld   a, [$6f0d]                                  ; $75f7: $fa $0d $6f
	ld   d, d                                        ; $75fa: $52
	ld   [bc], a                                     ; $75fb: $02
	inc  de                                          ; $75fc: $13
	ld   l, a                                        ; $75fd: $6f
	sub  c                                           ; $75fe: $91
	and  c                                           ; $75ff: $a1
	ld   a, h                                        ; $7600: $7c
	and  l                                           ; $7601: $a5
	cp   c                                           ; $7602: $b9
	pop  af                                          ; $7603: $f1
	db   $ed                                         ; $7604: $ed
	ld   a, [$000d]                                  ; $7605: $fa $0d $00
	ld   a, [bc]                                     ; $7608: $0a
	rrca                                             ; $7609: $0f
	nop                                              ; $760a: $00
	ld   bc, $5601                                   ; $760b: $01 $01 $56
	db   $fc                                         ; $760e: $fc
	sbc  [hl]                                        ; $760f: $9e
	dec  c                                           ; $7610: $0d
	adc  h                                           ; $7611: $8c
	ld   l, [hl]                                     ; $7612: $6e
	ld   bc, $b007                                   ; $7613: $01 $07 $b0
	db   $ec                                         ; $7616: $ec
	ld   bc, $7608                                   ; $7617: $01 $08 $76
	ld   e, c                                        ; $761a: $59
	dec  c                                           ; $761b: $0d
	ld   d, b                                        ; $761c: $50
	sbc  c                                           ; $761d: $99
	ld   h, [hl]                                     ; $761e: $66
	sub  c                                           ; $761f: $91
	ld   a, b                                        ; $7620: $78
	ld   d, d                                        ; $7621: $52
	ld   e, c                                        ; $7622: $59
	sbc  a                                           ; $7623: $9f
	dec  c                                           ; $7624: $0d
	nop                                              ; $7625: $00
	ld   a, [bc]                                     ; $7626: $0a
	inc  e                                           ; $7627: $1c
	inc  b                                           ; $7628: $04
	rlca                                             ; $7629: $07
	rlca                                             ; $762a: $07
	dec  e                                           ; $762b: $1d
	ld   b, b                                        ; $762c: $40
	inc  d                                           ; $762d: $14
	inc  bc                                          ; $762e: $03
	inc  d                                           ; $762f: $14
	ld   bc, $2902                                   ; $7630: $01 $02 $29
	nop                                              ; $7633: $00
	ld   bc, $f5dc                                   ; $7634: $01 $dc $f5
	ret                                              ; $7637: $c9


	ld   l, [hl]                                     ; $7638: $6e
	ld   a, [$780d]                                  ; $7639: $fa $0d $78
	and  c                                           ; $763c: $a1
	ld   [hl], l                                     ; $763d: $75
	ld   e, b                                        ; $763e: $58
	ld   h, l                                        ; $763f: $65
	ld   d, [hl]                                     ; $7640: $56
	ld   [hl], h                                     ; $7641: $74
	ld   e, l                                        ; $7642: $5d
	sbc  d                                           ; $7643: $9a
	ld   a, b                                        ; $7644: $78
	ld   d, d                                        ; $7645: $52
	ld   a, h                                        ; $7646: $7c
	sbc  a                                           ; $7647: $9f
	dec  c                                           ; $7648: $0d
	ld   l, a                                        ; $7649: $6f
	ld   d, d                                        ; $764a: $52
	ld   [bc], a                                     ; $764b: $02
	inc  de                                          ; $764c: $13
	ld   l, a                                        ; $764d: $6f
	sub  c                                           ; $764e: $91
	and  c                                           ; $764f: $a1
	ld   a, h                                        ; $7650: $7c
	or   d                                           ; $7651: $b2
	jp   nz, $0dfa                                   ; $7652: $c2 $fa $0d

	nop                                              ; $7655: $00
	ld   a, [bc]                                     ; $7656: $0a
	inc  e                                           ; $7657: $1c
	inc  b                                           ; $7658: $04
	rlca                                             ; $7659: $07
	rlca                                             ; $765a: $07
	ld   bc, $a5a3                                   ; $765b: $01 $a3 $a5
	db   $ec                                         ; $765e: $ec
	cp   d                                           ; $765f: $ba
	sbc  [hl]                                        ; $7660: $9e
	ld   [hl], d                                     ; $7661: $72
	adc  h                                           ; $7662: $8c
	and  c                                           ; $7663: $a1
	ld   a, b                                        ; $7664: $78
	ld   d, d                                        ; $7665: $52
	sbc  a                                           ; $7666: $9f
	dec  c                                           ; $7667: $0d
	ld   [bc], a                                     ; $7668: $02
	ld   a, a                                        ; $7669: $7f
	ld   h, c                                        ; $766a: $61
	ld   d, h                                        ; $766b: $54
	sbc  [hl]                                        ; $766c: $9e
	cp   c                                           ; $766d: $b9
	push hl                                          ; $766e: $e5
	push af                                          ; $766f: $f5
	sbc  $fb                                         ; $7670: $de $fb
	db   $ed                                         ; $7672: $ed
	sbc  a                                           ; $7673: $9f
	dec  c                                           ; $7674: $0d
	nop                                              ; $7675: $00
	ld   a, [bc]                                     ; $7676: $0a
	dec  c                                           ; $7677: $0d
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	rrca                                             ; $767a: $0f
	nop                                              ; $767b: $00
	ld   bc, $1e09                                   ; $767c: $01 $09 $1e
	nop                                              ; $767f: $00
	rrca                                             ; $7680: $0f
	nop                                              ; $7681: $00
	ld   bc, $0101                                   ; $7682: $01 $01 $01
	rlca                                             ; $7685: $07
	ld   h, l                                        ; $7686: $65
	add  h                                           ; $7687: $84
	ld   e, d                                        ; $7688: $5a
	ld   e, e                                        ; $7689: $5b
	ld   bc, $fa08                                   ; $768a: $01 $08 $fa
	dec  c                                           ; $768d: $0d
	nop                                              ; $768e: $00
	ld   a, [bc]                                     ; $768f: $0a
	inc  e                                           ; $7690: $1c
	inc  b                                           ; $7691: $04
	nop                                              ; $7692: $00
	nop                                              ; $7693: $00
	ld   bc, $0701                                   ; $7694: $01 $01 $07
	ld   e, e                                        ; $7697: $5b
	ld   bc, $f908                                   ; $7698: $01 $08 $f9
	dec  c                                           ; $769b: $0d
	ld   d, [hl]                                     ; $769c: $56
	db   $fc                                         ; $769d: $fc
	halt                                             ; $769e: $76
	rst  $38                                         ; $769f: $ff

Jump_067_76a0:
	rst  $38                                         ; $76a0: $ff
	ld   l, e                                        ; $76a1: $6b
	ld   d, h                                        ; $76a2: $54
	ld   l, [hl]                                     ; $76a3: $6e
	ld   a, [$000d]                                  ; $76a4: $fa $0d $00
	inc  e                                           ; $76a7: $1c
	inc  b                                           ; $76a8: $04
	ld   bc, $0101                                   ; $76a9: $01 $01 $01
	ld   bc, $ae07                                   ; $76ac: $01 $07 $ae
	and  a                                           ; $76af: $a7
	and  l                                           ; $76b0: $a5
	ld   bc, $fa08                                   ; $76b1: $01 $08 $fa
	ld   a, [$000d]                                  ; $76b4: $fa $0d $00
	ld   a, [bc]                                     ; $76b7: $0a
	ld   bc, $527d                                   ; $76b8: $01 $7d $52
	sbc  [hl]                                        ; $76bb: $9e
	ld   e, b                                        ; $76bc: $58
	sbc  l                                           ; $76bd: $9d
	sbc  b                                           ; $76be: $98
	db   $fc                                         ; $76bf: $fc
	dec  c                                           ; $76c0: $0d
	and  e                                           ; $76c1: $a3
	and  l                                           ; $76c2: $a5
	db   $ec                                         ; $76c3: $ec
	cp   d                                           ; $76c4: $ba
	ld   a, h                                        ; $76c5: $7c
	ld   e, c                                        ; $76c6: $59
	ld   l, a                                        ; $76c7: $6f
	db   $fc                                         ; $76c8: $fc
	ld   a, [$a90d]                                  ; $76c9: $fa $0d $a9
	reti                                             ; $76cc: $d9


	reti                                             ; $76cd: $d9


	reti                                             ; $76ce: $d9


	rst  $38                                         ; $76cf: $ff
	rst  $38                                         ; $76d0: $ff
	dec  c                                           ; $76d1: $0d
	nop                                              ; $76d2: $00
	ld   a, [bc]                                     ; $76d3: $0a
	rrca                                             ; $76d4: $0f
	nop                                              ; $76d5: $00
	ld   bc, $5601                                   ; $76d6: $01 $01 $56
	ld   [hl], c                                     ; $76d9: $71
	ld   a, [$9010]                                  ; $76da: $fa $10 $90
	ld   d, h                                        ; $76dd: $54
	inc  bc                                          ; $76de: $03
	ld   a, [hl]                                     ; $76df: $7e
	sbc  l                                           ; $76e0: $9d
	sbc  b                                           ; $76e1: $98
	ld   a, b                                        ; $76e2: $78
	ld   a, h                                        ; $76e3: $7c
	ld   sp, hl                                      ; $76e4: $f9
	dec  c                                           ; $76e5: $0d
	nop                                              ; $76e6: $00
	ld   a, [bc]                                     ; $76e7: $0a
	rrca                                             ; $76e8: $0f
	inc  b                                           ; $76e9: $04
	ld   bc, $5401                                   ; $76ea: $01 $01 $54
	and  c                                           ; $76ed: $a1
	sbc  a                                           ; $76ee: $9f
	and  e                                           ; $76ef: $a3
	and  l                                           ; $76f0: $a5
	db   $ec                                         ; $76f1: $ec
	cp   d                                           ; $76f2: $ba
	ld   h, c                                        ; $76f3: $61
	sbc  d                                           ; $76f4: $9a
	ld   e, c                                        ; $76f5: $59
	sub  a                                           ; $76f6: $97
	dec  c                                           ; $76f7: $0d
	add  h                                           ; $76f8: $84
	ld   l, l                                        ; $76f9: $6d
	ld   d, d                                        ; $76fa: $52
	ld   a, h                                        ; $76fb: $7c
	ld   e, b                                        ; $76fc: $58
	ld   e, a                                        ; $76fd: $5f
	ld   d, d                                        ; $76fe: $52
	ld   h, c                                        ; $76ff: $61
	ld   h, l                                        ; $7700: $65
	ld   a, b                                        ; $7701: $78
	ld   e, l                                        ; $7702: $5d
	ld   l, a                                        ; $7703: $6f
	sub  c                                           ; $7704: $91
	dec  c                                           ; $7705: $0d
	ld   d, d                                        ; $7706: $52
	ld   e, a                                        ; $7707: $5f
	ld   a, b                                        ; $7708: $78
	ld   d, d                                        ; $7709: $52
	ld   e, c                                        ; $770a: $59
	sub  a                                           ; $770b: $97
	rst  $38                                         ; $770c: $ff
	rst  $38                                         ; $770d: $ff
	dec  c                                           ; $770e: $0d
	nop                                              ; $770f: $00
	ld   a, [bc]                                     ; $7710: $0a
	dec  e                                           ; $7711: $1d
	ld   b, b                                        ; $7712: $40
	inc  d                                           ; $7713: $14
	inc  bc                                          ; $7714: $03
	inc  d                                           ; $7715: $14
	ld   bc, $2803                                   ; $7716: $01 $03 $28
	nop                                              ; $7719: $00
	ld   bc, $6267                                   ; $771a: $01 $67 $62
	ld   e, l                                        ; $771d: $5d
	ld   l, l                                        ; $771e: $6d
	ld   a, h                                        ; $771f: $7c
	ld   h, l                                        ; $7720: $65
	ld   e, c                                        ; $7721: $59
	ld   [hl], c                                     ; $7722: $71
	ld   l, l                                        ; $7723: $6d
	sbc  a                                           ; $7724: $9f
	dec  c                                           ; $7725: $0d
	ld   d, b                                        ; $7726: $50
	sbc  b                                           ; $7727: $98
	ld   e, d                                        ; $7728: $5a
	halt                                             ; $7729: $76
	ld   d, h                                        ; $772a: $54
	sbc  [hl]                                        ; $772b: $9e
	ld   l, a                                        ; $772c: $6f
	ld   d, d                                        ; $772d: $52
	ld   [bc], a                                     ; $772e: $02
	inc  de                                          ; $772f: $13
	ld   l, a                                        ; $7730: $6f
	sub  c                                           ; $7731: $91
	and  c                                           ; $7732: $a1
	sbc  a                                           ; $7733: $9f
	dec  c                                           ; $7734: $0d
	nop                                              ; $7735: $00
	ld   a, [bc]                                     ; $7736: $0a
	dec  c                                           ; $7737: $0d
	nop                                              ; $7738: $00
	nop                                              ; $7739: $00
	rrca                                             ; $773a: $0f
	nop                                              ; $773b: $00
	ld   bc, $1e09                                   ; $773c: $01 $09 $1e
	nop                                              ; $773f: $00
	ld   bc, $fb50                                   ; $7740: $01 $50 $fb
	sbc  [hl]                                        ; $7743: $9e
	ld   l, l                                        ; $7744: $6d
	ld   a, h                                        ; $7745: $7c
	ld   h, l                                        ; $7746: $65
	ld   e, c                                        ; $7747: $59
	ld   [hl], c                                     ; $7748: $71
	ld   l, l                                        ; $7749: $6d
	sbc  a                                           ; $774a: $9f
	dec  c                                           ; $774b: $0d
	ld   d, b                                        ; $774c: $50
	sbc  b                                           ; $774d: $98
	ld   e, d                                        ; $774e: $5a
	halt                                             ; $774f: $76
	ld   d, h                                        ; $7750: $54
	sbc  [hl]                                        ; $7751: $9e
	ld   l, a                                        ; $7752: $6f
	ld   d, d                                        ; $7753: $52
	ld   [bc], a                                     ; $7754: $02
	inc  de                                          ; $7755: $13
	ld   l, a                                        ; $7756: $6f
	sub  c                                           ; $7757: $91
	and  c                                           ; $7758: $a1
	sbc  a                                           ; $7759: $9f
	dec  c                                           ; $775a: $0d
	nop                                              ; $775b: $00
	ld   a, [bc]                                     ; $775c: $0a
	nop                                              ; $775d: $00
	nop                                              ; $775e: $00
	inc  b                                           ; $775f: $04
	add  b                                           ; $7760: $80
	ld   [hl], c                                     ; $7761: $71
	ld   bc, $20ff                                   ; $7762: $01 $ff $20
	inc  bc                                          ; $7765: $03
	ld   e, e                                        ; $7766: $5b
	ld   [bc], a                                     ; $7767: $02
	nop                                              ; $7768: $00
	jr   nz, jr_067_7787                             ; $7769: $20 $1c

	nop                                              ; $776b: $00
	ld   c, $88                                      ; $776c: $0e $88
	rrca                                             ; $776e: $0f
	nop                                              ; $776f: $00
	ld   bc, $0102                                   ; $7770: $01 $02 $01
	rst  JumpTable                                         ; $7773: $df
	db   $ec                                         ; $7774: $ec
	and  e                                           ; $7775: $a3
	ld   h, e                                        ; $7776: $63
	and  c                                           ; $7777: $a1
	sbc  a                                           ; $7778: $9f
	dec  c                                           ; $7779: $0d
	ld   e, b                                        ; $777a: $58
	inc  b                                           ; $777b: $04
	rla                                              ; $777c: $17
	ld   l, l                                        ; $777d: $6d
	ld   l, c                                        ; $777e: $69
	ld   h, l                                        ; $777f: $65
	adc  h                                           ; $7780: $8c
	ld   h, l                                        ; $7781: $65
	ld   l, l                                        ; $7782: $6d
	sbc  a                                           ; $7783: $9f
	dec  c                                           ; $7784: $0d
	nop                                              ; $7785: $00
	ld   a, [bc]                                     ; $7786: $0a

jr_067_7787:
	inc  e                                           ; $7787: $1c
	inc  bc                                          ; $7788: $03
	inc  bc                                          ; $7789: $03
	inc  bc                                          ; $778a: $03
	ld   bc, $9166                                   ; $778b: $01 $66 $91
	sbc  [hl]                                        ; $778e: $9e
	dec  b                                           ; $778f: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7790: $cf
	adc  a                                           ; $7791: $8f
	adc  h                                           ; $7792: $8c
	ld   h, l                                        ; $7793: $65
	sub  l                                           ; $7794: $95
	ld   d, h                                        ; $7795: $54
	ld   e, c                                        ; $7796: $59
	sbc  a                                           ; $7797: $9f
	dec  c                                           ; $7798: $0d
	nop                                              ; $7799: $00
	ld   a, [bc]                                     ; $779a: $0a
	inc  e                                           ; $779b: $1c
	inc  bc                                          ; $779c: $03
	nop                                              ; $779d: $00
	nop                                              ; $779e: $00
	ld   bc, $688c                                   ; $779f: $01 $8c $68
	sbc  [hl]                                        ; $77a2: $9e
	ld   e, b                                        ; $77a3: $58
	inc  b                                           ; $77a4: $04
	ccf                                              ; $77a5: $3f
	and  b                                           ; $77a6: $a0
	rst  $38                                         ; $77a7: $ff
	rst  $38                                         ; $77a8: $ff
	dec  c                                           ; $77a9: $0d
	nop                                              ; $77aa: $00
	ld   a, [bc]                                     ; $77ab: $0a
	add  hl, de                                      ; $77ac: $19
	dec  b                                           ; $77ad: $05
	inc  bc                                          ; $77ae: $03
	set  3, d                                        ; $77af: $cb $da
	ld   [hl], l                                     ; $77b1: $75
	ld   a, c                                        ; $77b2: $79
	sbc  c                                           ; $77b3: $99
	nop                                              ; $77b4: $00
	nop                                              ; $77b5: $00
	set  3, a                                        ; $77b6: $cb $df
	ld   [hl], l                                     ; $77b8: $75
	inc  bc                                          ; $77b9: $03
	ld   l, d                                        ; $77ba: $6a
	add  a                                           ; $77bb: $87
	sbc  c                                           ; $77bc: $99
	nop                                              ; $77bd: $00
	ld   bc, $dfac                                   ; $77be: $01 $ac $df
	jp   z, $9275                                    ; $77c1: $ca $75 $92

	ld   e, l                                        ; $77c4: $5d
	nop                                              ; $77c5: $00
	ld   [bc], a                                     ; $77c6: $02
	rlca                                             ; $77c7: $07
	ld   a, c                                        ; $77c8: $79
	nop                                              ; $77c9: $00
	ld   [bc], a                                     ; $77ca: $02
	inc  bc                                          ; $77cb: $03
	ld   bc, $2000                                   ; $77cc: $01 $00 $20
	nop                                              ; $77cf: $00
	rlca                                             ; $77d0: $07
	xor  l                                           ; $77d1: $ad
	nop                                              ; $77d2: $00
	ld   [bc], a                                     ; $77d3: $02
	inc  bc                                          ; $77d4: $03
	ld   bc, $2001                                   ; $77d5: $01 $01 $20
	nop                                              ; $77d8: $00
	rlca                                             ; $77d9: $07
	sub  $00                                         ; $77da: $d6 $00
	ld   [bc], a                                     ; $77dc: $02
	inc  bc                                          ; $77dd: $03
	ld   bc, $2002                                   ; $77de: $01 $02 $20
	nop                                              ; $77e1: $00
	ld   b, $04                                      ; $77e2: $06 $04
	ld   bc, $031c                                   ; $77e4: $01 $1c $03
	inc  bc                                          ; $77e7: $03
	inc  bc                                          ; $77e8: $03
	ld   bc, $546b                                   ; $77e9: $01 $6b $54
	sub  [hl]                                        ; $77ec: $96
	rst  $38                                         ; $77ed: $ff
	rst  $38                                         ; $77ee: $ff
	ld   l, e                                        ; $77ef: $6b
	ld   a, h                                        ; $77f0: $7c
	ld   a, c                                        ; $77f1: $79
	ld   h, [hl]                                     ; $77f2: $66
	sbc  c                                           ; $77f3: $99
	ld   [hl], l                                     ; $77f4: $75
	dec  c                                           ; $77f5: $0d
	inc  b                                           ; $77f6: $04
	rst  $20                                         ; $77f7: $e7
	dec  b                                           ; $77f8: $05
	or   l                                           ; $77f9: $b5
	sub  b                                           ; $77fa: $90
	ld   a, c                                        ; $77fb: $79
	sbc  c                                           ; $77fc: $99
	ld   e, c                                        ; $77fd: $59
	sub  a                                           ; $77fe: $97
	sbc  [hl]                                        ; $77ff: $9e
	ld   h, [hl]                                     ; $7800: $66
	ld   [hl], c                                     ; $7801: $71
	ld   e, l                                        ; $7802: $5d
	sbc  b                                           ; $7803: $98
	dec  c                                           ; $7804: $0d
	ld   a, c                                        ; $7805: $79
	sbc  c                                           ; $7806: $99
	ld   a, h                                        ; $7807: $7c
	sub  [hl]                                        ; $7808: $96
	sbc  a                                           ; $7809: $9f
	dec  c                                           ; $780a: $0d
	nop                                              ; $780b: $00
	ld   a, [bc]                                     ; $780c: $0a
	dec  b                                           ; $780d: $05
	ld   b, b                                        ; $780e: $40
	rst  $38                                         ; $780f: $ff
	inc  bc                                          ; $7810: $03
	rst  $38                                         ; $7811: $ff
	ld   bc, $2801                                   ; $7812: $01 $01 $28
	nop                                              ; $7815: $00
	ld   b, $25                                      ; $7816: $06 $25
	ld   bc, $031c                                   ; $7818: $01 $1c $03
	ld   [bc], a                                     ; $781b: $02
	ld   [bc], a                                     ; $781c: $02
	ld   bc, $dfcb                                   ; $781d: $01 $cb $df
	ld   [hl], l                                     ; $7820: $75
	inc  bc                                          ; $7821: $03
	ld   l, d                                        ; $7822: $6a
	add  a                                           ; $7823: $87
	ld   l, a                                        ; $7824: $6f
	sub  c                                           ; $7825: $91
	pop  bc                                          ; $7826: $c1
	db   $e3                                         ; $7827: $e3
	sub  [hl]                                        ; $7828: $96
	ld   a, [$030d]                                  ; $7829: $fa $0d $03
	pop  de                                          ; $782c: $d1
	ld   [bc], a                                     ; $782d: $02
	jr   nz, @-$60                                   ; $782e: $20 $9e

	ld   [bc], a                                     ; $7830: $02
	and  l                                           ; $7831: $a5
	inc  bc                                          ; $7832: $03
	ld   l, d                                        ; $7833: $6a
	add  a                                           ; $7834: $87
	ld   [hl], h                                     ; $7835: $74
	ld   [hl], a                                     ; $7836: $77
	ld   d, h                                        ; $7837: $54
	ld   h, a                                        ; $7838: $67
	sbc  c                                           ; $7839: $99
	ld   a, h                                        ; $783a: $7c
	ld   a, [$000d]                                  ; $783b: $fa $0d $00
	ld   a, [bc]                                     ; $783e: $0a
	ld   b, $25                                      ; $783f: $06 $25
	ld   bc, $031c                                   ; $7841: $01 $1c $03
	inc  b                                           ; $7844: $04
	inc  b                                           ; $7845: $04
	ld   bc, $dfac                                   ; $7846: $01 $ac $df
	jp   z, $a178                                    ; $7849: $ca $78 $a1

	ld   e, c                                        ; $784c: $59
	ld   a, b                                        ; $784d: $78
	ld   d, d                                        ; $784e: $52
	sbc  l                                           ; $784f: $9d
	rst  $38                                         ; $7850: $ff
	rst  $38                                         ; $7851: $ff
	dec  c                                           ; $7852: $0d
	ld   l, e                                        ; $7853: $6b
	sbc  d                                           ; $7854: $9a
	ld   a, c                                        ; $7855: $79

Call_067_7856:
	ld   e, b                                        ; $7856: $58
	inc  b                                           ; $7857: $04
	ccf                                              ; $7858: $3f
	ld   a, l                                        ; $7859: $7d
	ld   a, c                                        ; $785a: $79
	sbc  c                                           ; $785b: $99
	ld   a, h                                        ; $785c: $7c
	ld   [hl], l                                     ; $785d: $75
	ld   d, b                                        ; $785e: $50
	ld   [hl], c                                     ; $785f: $71
	ld   [hl], h                                     ; $7860: $74
	dec  c                                           ; $7861: $0d
	sub  d                                           ; $7862: $92
	ld   d, d                                        ; $7863: $52
	ld   l, a                                        ; $7864: $6f
	sub  c                                           ; $7865: $91
	pop  bc                                          ; $7866: $c1
	db   $e3                                         ; $7867: $e3
	sub  [hl]                                        ; $7868: $96
	sbc  a                                           ; $7869: $9f
	dec  c                                           ; $786a: $0d
	nop                                              ; $786b: $00
	ld   a, [bc]                                     ; $786c: $0a
	ld   b, $25                                      ; $786d: $06 $25
	ld   bc, $031c                                   ; $786f: $01 $1c $03
	ld   [bc], a                                     ; $7872: $02
	ld   [bc], a                                     ; $7873: $02
	ld   bc, $9789                                   ; $7874: $01 $89 $97
	sbc  [hl]                                        ; $7877: $9e
	db   $dd                                         ; $7878: $dd
	ei                                               ; $7879: $fb
	ld   [hl], c                                     ; $787a: $71
	halt                                             ; $787b: $76
	ld   h, l                                        ; $787c: $65
	ld   a, b                                        ; $787d: $78
	ld   d, d                                        ; $787e: $52
	ld   a, h                                        ; $787f: $7c
	sbc  a                                           ; $7880: $9f
	dec  c                                           ; $7881: $0d
	set  3, d                                        ; $7882: $cb $da
	ld   [hl], l                                     ; $7884: $75
	ld   h, [hl]                                     ; $7885: $66
	ld   [hl], c                                     ; $7886: $71
	ld   e, l                                        ; $7887: $5d
	sbc  b                                           ; $7888: $98
	ld   a, c                                        ; $7889: $79
	sbc  c                                           ; $788a: $99
	ld   a, h                                        ; $788b: $7c
	sub  [hl]                                        ; $788c: $96
	sbc  a                                           ; $788d: $9f
	dec  c                                           ; $788e: $0d
	nop                                              ; $788f: $00
	ld   a, [bc]                                     ; $7890: $0a
	inc  e                                           ; $7891: $1c
	inc  bc                                          ; $7892: $03
	nop                                              ; $7893: $00
	nop                                              ; $7894: $00
	ld   bc, $6803                                   ; $7895: $01 $03 $68
	ld   a, l                                        ; $7898: $7d
	call z, $b9f5                                    ; $7899: $cc $f5 $b9
	push af                                          ; $789c: $f5
	and  b                                           ; $789d: $a0
	rst  $38                                         ; $789e: $ff
	rst  $38                                         ; $789f: $ff
	dec  c                                           ; $78a0: $0d
	nop                                              ; $78a1: $00
	ld   a, [bc]                                     ; $78a2: $0a
	add  hl, de                                      ; $78a3: $19
	dec  b                                           ; $78a4: $05
	inc  bc                                          ; $78a5: $03
	inc  b                                           ; $78a6: $04
	ld   [hl], d                                     ; $78a7: $72
	ld   [bc], a                                     ; $78a8: $02
	sbc  e                                           ; $78a9: $9b
	inc  bc                                          ; $78aa: $03
	dec  de                                          ; $78ab: $1b
	sbc  b                                           ; $78ac: $98
	ld   a, c                                        ; $78ad: $79
	ld   h, a                                        ; $78ae: $67
	sbc  c                                           ; $78af: $99
	nop                                              ; $78b0: $00
	nop                                              ; $78b1: $00
	adc  l                                           ; $78b2: $8d
	ld   h, [hl]                                     ; $78b3: $66
	and  c                                           ; $78b4: $a1
	inc  bc                                          ; $78b5: $03
	dec  de                                          ; $78b6: $1b
	sbc  b                                           ; $78b7: $98
	ld   a, c                                        ; $78b8: $79
	ld   h, a                                        ; $78b9: $67
	sbc  c                                           ; $78ba: $99
	nop                                              ; $78bb: $00
	ld   bc, $9b58                                   ; $78bc: $01 $58 $9b
	ld   h, l                                        ; $78bf: $65
	ld   [bc], a                                     ; $78c0: $02
	dec  sp                                          ; $78c1: $3b
	ld   [hl], l                                     ; $78c2: $75
	ld   e, b                                        ; $78c3: $58
	sbc  e                                           ; $78c4: $9b
	ld   h, a                                        ; $78c5: $67
	nop                                              ; $78c6: $00
	ld   [bc], a                                     ; $78c7: $02
	rlca                                             ; $78c8: $07
	ld   a, d                                        ; $78c9: $7a
	ld   bc, $0302                                   ; $78ca: $01 $02 $03
	ld   bc, $2000                                   ; $78cd: $01 $00 $20
	nop                                              ; $78d0: $00
	rlca                                             ; $78d1: $07
	and  c                                           ; $78d2: $a1
	ld   bc, $0302                                   ; $78d3: $01 $02 $03
	ld   bc, $2001                                   ; $78d6: $01 $01 $20
	nop                                              ; $78d9: $00
	rlca                                             ; $78da: $07
	ret                                              ; $78db: $c9


	ld   bc, $0302                                   ; $78dc: $01 $02 $03
	ld   bc, $2002                                   ; $78df: $01 $02 $20
	nop                                              ; $78e2: $00
	ld   b, $ec                                      ; $78e3: $06 $ec
	ld   bc, $031c                                   ; $78e5: $01 $1c $03
	inc  bc                                          ; $78e8: $03
	inc  bc                                          ; $78e9: $03
	ld   bc, $546b                                   ; $78ea: $01 $6b $54
	ld   l, e                                        ; $78ed: $6b
	ld   d, h                                        ; $78ee: $54
	sbc  a                                           ; $78ef: $9f
	dec  c                                           ; $78f0: $0d
	inc  b                                           ; $78f1: $04
	ld   [hl], d                                     ; $78f2: $72
	ld   [bc], a                                     ; $78f3: $02
	sbc  e                                           ; $78f4: $9b
	inc  bc                                          ; $78f5: $03
	dec  de                                          ; $78f6: $1b
	sbc  b                                           ; $78f7: $98
	ld   a, c                                        ; $78f8: $79
	ld   h, a                                        ; $78f9: $67
	sbc  c                                           ; $78fa: $99
	ld   a, h                                        ; $78fb: $7c
	sub  [hl]                                        ; $78fc: $96
	sbc  a                                           ; $78fd: $9f
	dec  c                                           ; $78fe: $0d
	nop                                              ; $78ff: $00
	ld   a, [bc]                                     ; $7900: $0a
	dec  b                                           ; $7901: $05
	ld   b, b                                        ; $7902: $40
	rst  $38                                         ; $7903: $ff
	inc  bc                                          ; $7904: $03
	rst  $38                                         ; $7905: $ff
	ld   bc, $2801                                   ; $7906: $01 $01 $28
	nop                                              ; $7909: $00
	ld   b, $0e                                      ; $790a: $06 $0e
	ld   [bc], a                                     ; $790c: $02
	inc  e                                           ; $790d: $1c
	inc  bc                                          ; $790e: $03
	ld   [bc], a                                     ; $790f: $02
	ld   [bc], a                                     ; $7910: $02
	ld   bc, $668d                                   ; $7911: $01 $8d $66
	and  c                                           ; $7914: $a1
	inc  bc                                          ; $7915: $03
	dec  de                                          ; $7916: $1b
	sbc  b                                           ; $7917: $98
	ld   a, c                                        ; $7918: $79
	ld   h, l                                        ; $7919: $65
	ld   [hl], h                                     ; $791a: $74
	ld   [hl], a                                     ; $791b: $77
	ld   d, h                                        ; $791c: $54
	ld   h, a                                        ; $791d: $67
	sbc  c                                           ; $791e: $99
	ld   a, h                                        ; $791f: $7c
	ld   a, [$040d]                                  ; $7920: $fa $0d $04
	ld   [hl], d                                     ; $7923: $72
	ld   [bc], a                                     ; $7924: $02
	sbc  e                                           ; $7925: $9b
	inc  bc                                          ; $7926: $03
	dec  de                                          ; $7927: $1b
	sbc  b                                           ; $7928: $98
	ld   a, c                                        ; $7929: $79
	ld   h, a                                        ; $792a: $67
	sbc  c                                           ; $792b: $99
	ld   a, h                                        ; $792c: $7c
	sub  [hl]                                        ; $792d: $96
	sbc  a                                           ; $792e: $9f
	dec  c                                           ; $792f: $0d
	nop                                              ; $7930: $00
	ld   a, [bc]                                     ; $7931: $0a
	ld   b, $0e                                      ; $7932: $06 $0e
	ld   [bc], a                                     ; $7934: $02
	inc  e                                           ; $7935: $1c
	inc  bc                                          ; $7936: $03
	ld   [bc], a                                     ; $7937: $02
	ld   [bc], a                                     ; $7938: $02
	ld   bc, $9b58                                   ; $7939: $01 $58 $9b
	ld   h, l                                        ; $793c: $65
	ld   [hl], h                                     ; $793d: $74
	ld   [hl], a                                     ; $793e: $77
	ld   d, h                                        ; $793f: $54
	ld   h, a                                        ; $7940: $67
	sbc  c                                           ; $7941: $99
	ld   a, h                                        ; $7942: $7c
	ld   a, [$040d]                                  ; $7943: $fa $0d $04
	ld   [hl], d                                     ; $7946: $72
	ld   [bc], a                                     ; $7947: $02
	sbc  e                                           ; $7948: $9b
	inc  bc                                          ; $7949: $03
	dec  de                                          ; $794a: $1b
	sbc  b                                           ; $794b: $98
	ld   a, c                                        ; $794c: $79
	ld   h, a                                        ; $794d: $67
	sbc  c                                           ; $794e: $99
	ld   a, h                                        ; $794f: $7c
	sub  [hl]                                        ; $7950: $96
	sbc  a                                           ; $7951: $9f
	dec  c                                           ; $7952: $0d
	nop                                              ; $7953: $00
	ld   a, [bc]                                     ; $7954: $0a
	ld   b, $0e                                      ; $7955: $06 $0e
	ld   [bc], a                                     ; $7957: $02
	inc  e                                           ; $7958: $1c
	inc  bc                                          ; $7959: $03
	ld   [bc], a                                     ; $795a: $02
	ld   [bc], a                                     ; $795b: $02
	ld   bc, $9789                                   ; $795c: $01 $89 $97
	sbc  [hl]                                        ; $795f: $9e
	db   $dd                                         ; $7960: $dd
	ei                                               ; $7961: $fb
	ld   [hl], c                                     ; $7962: $71
	halt                                             ; $7963: $76
	ld   h, l                                        ; $7964: $65
	ld   a, b                                        ; $7965: $78
	ld   d, d                                        ; $7966: $52
	ld   a, h                                        ; $7967: $7c
	sbc  a                                           ; $7968: $9f
	dec  c                                           ; $7969: $0d
	inc  b                                           ; $796a: $04
	ld   [hl], d                                     ; $796b: $72
	ld   [bc], a                                     ; $796c: $02
	sbc  e                                           ; $796d: $9b
	inc  bc                                          ; $796e: $03
	dec  de                                          ; $796f: $1b
	sbc  b                                           ; $7970: $98
	ld   a, c                                        ; $7971: $79
	ld   h, a                                        ; $7972: $67
	sbc  c                                           ; $7973: $99
	ld   a, h                                        ; $7974: $7c
	sub  [hl]                                        ; $7975: $96
	sbc  a                                           ; $7976: $9f
	dec  c                                           ; $7977: $0d
	nop                                              ; $7978: $00
	ld   a, [bc]                                     ; $7979: $0a
	inc  e                                           ; $797a: $1c
	inc  bc                                          ; $797b: $03
	nop                                              ; $797c: $00
	nop                                              ; $797d: $00
	ld   bc, $7463                                   ; $797e: $01 $63 $74
	rst  $38                                         ; $7981: $ff
	rst  $38                                         ; $7982: $ff
	inc  b                                           ; $7983: $04
	rst  $20                                         ; $7984: $e7
	dec  b                                           ; $7985: $05
	or   l                                           ; $7986: $b5
	sub  b                                           ; $7987: $90
	ld   e, b                                        ; $7988: $58
	inc  b                                           ; $7989: $04
	ccf                                              ; $798a: $3f
	sub  b                                           ; $798b: $90
	dec  c                                           ; $798c: $0d
	ld   h, [hl]                                     ; $798d: $66
	ld   [hl], c                                     ; $798e: $71
	ld   e, l                                        ; $798f: $5d
	sbc  b                                           ; $7990: $98
	ld   a, c                                        ; $7991: $79
	ld   h, c                                        ; $7992: $61
	and  c                                           ; $7993: $a1
	ld   l, [hl]                                     ; $7994: $6e
	ld   h, l                                        ; $7995: $65
	rst  $38                                         ; $7996: $ff
	rst  $38                                         ; $7997: $ff
	dec  c                                           ; $7998: $0d
	inc  bc                                          ; $7999: $03
	ld   l, c                                        ; $799a: $69
	ld   [bc], a                                     ; $799b: $02
	xor  d                                           ; $799c: $aa
	ld   a, l                                        ; $799d: $7d
	inc  b                                           ; $799e: $04
	jp   nc, $5f72                                   ; $799f: $d2 $72 $5f

	sub  [hl]                                        ; $79a2: $96
	sbc  a                                           ; $79a3: $9f
	dec  c                                           ; $79a4: $0d
	nop                                              ; $79a5: $00
	ld   a, [bc]                                     ; $79a6: $0a
	ld   bc, $dfc9                                   ; $79a7: $01 $c9 $df
	ret                                              ; $79aa: $c9


	db   $db                                         ; $79ab: $db
	ei                                               ; $79ac: $fb
	cp   d                                           ; $79ad: $ba
	ret                                              ; $79ae: $c9


	halt                                             ; $79af: $76
	or   d                                           ; $79b0: $b2
	jp   nz, $c4e5                                   ; $79b1: $c2 $e5 $c4

	ret  c                                           ; $79b4: $d8

	sbc  a                                           ; $79b5: $9f
	dec  c                                           ; $79b6: $0d
	ld   l, e                                        ; $79b7: $6b
	sbc  d                                           ; $79b8: $9a
	ld   a, c                                        ; $79b9: $79
	rst  $38                                         ; $79ba: $ff
	rst  $38                                         ; $79bb: $ff
	dec  c                                           ; $79bc: $0d
	nop                                              ; $79bd: $00
	ld   a, [bc]                                     ; $79be: $0a
	add  hl, de                                      ; $79bf: $19
	dec  b                                           ; $79c0: $05
	inc  bc                                          ; $79c1: $03
	ld   e, b                                        ; $79c2: $58
	ld   [bc], a                                     ; $79c3: $02
	dec  l                                           ; $79c4: $2d
	nop                                              ; $79c5: $00
	nop                                              ; $79c6: $00
	ld   h, l                                        ; $79c7: $65
	sub  l                                           ; $79c8: $95
	ld   d, h                                        ; $79c9: $54
	sub  h                                           ; $79ca: $94
	nop                                              ; $79cb: $00
	ld   bc, $6d59                                   ; $79cc: $01 $59 $6d
	ld   e, l                                        ; $79cf: $5d
	sbc  b                                           ; $79d0: $98
	ld   h, c                                        ; $79d1: $61
	nop                                              ; $79d2: $00
	ld   [bc], a                                     ; $79d3: $02
	rlca                                             ; $79d4: $07
	add  [hl]                                        ; $79d5: $86
	ld   [bc], a                                     ; $79d6: $02
	ld   [bc], a                                     ; $79d7: $02
	inc  bc                                          ; $79d8: $03
	ld   bc, $2000                                   ; $79d9: $01 $00 $20
	nop                                              ; $79dc: $00
	rlca                                             ; $79dd: $07
	or   [hl]                                        ; $79de: $b6
	ld   [bc], a                                     ; $79df: $02
	ld   [bc], a                                     ; $79e0: $02
	inc  bc                                          ; $79e1: $03
	ld   bc, $2001                                   ; $79e2: $01 $01 $20
	nop                                              ; $79e5: $00
	rlca                                             ; $79e6: $07
	add  sp, $02                                     ; $79e7: $e8 $02
	ld   [bc], a                                     ; $79e9: $02
	inc  bc                                          ; $79ea: $03
	ld   bc, $2002                                   ; $79eb: $01 $02 $20
	nop                                              ; $79ee: $00
	ld   b, $27                                      ; $79ef: $06 $27
	inc  bc                                          ; $79f1: $03
	inc  e                                           ; $79f2: $1c
	inc  bc                                          ; $79f3: $03
	inc  bc                                          ; $79f4: $03
	inc  bc                                          ; $79f5: $03
	ld   bc, $546b                                   ; $79f6: $01 $6b $54
	sbc  a                                           ; $79f9: $9f
	dec  c                                           ; $79fa: $0d
	ld   e, b                                        ; $79fb: $58
	ld   [bc], a                                     ; $79fc: $02
	dec  l                                           ; $79fd: $2d
	ld   d, d                                        ; $79fe: $52
	sbc  d                                           ; $79ff: $9a
	ld   [hl], h                                     ; $7a00: $74
	inc  b                                           ; $7a01: $04
	jp   nc, Jump_067_76a0                           ; $7a02: $d2 $a0 $76

	halt                                             ; $7a05: $76
	ld   a, h                                        ; $7a06: $7c
	ld   d, [hl]                                     ; $7a07: $56
	sbc  c                                           ; $7a08: $99
	ld   a, h                                        ; $7a09: $7c
	sbc  a                                           ; $7a0a: $9f
	dec  c                                           ; $7a0b: $0d
	nop                                              ; $7a0c: $00
	ld   a, [bc]                                     ; $7a0d: $0a
	dec  b                                           ; $7a0e: $05
	ld   b, b                                        ; $7a0f: $40
	rst  $38                                         ; $7a10: $ff
	inc  bc                                          ; $7a11: $03
	rst  $38                                         ; $7a12: $ff
	ld   bc, $2801                                   ; $7a13: $01 $01 $28
	nop                                              ; $7a16: $00
	dec  c                                           ; $7a17: $0d
	nop                                              ; $7a18: $00
	nop                                              ; $7a19: $00
	rrca                                             ; $7a1a: $0f
	nop                                              ; $7a1b: $00
	ld   bc, $0b0c                                   ; $7a1c: $01 $0c $0b
	ld   b, $56                                      ; $7a1f: $06 $56
	inc  bc                                          ; $7a21: $03
	inc  e                                           ; $7a22: $1c
	inc  bc                                          ; $7a23: $03
	inc  b                                           ; $7a24: $04
	inc  b                                           ; $7a25: $04
	ld   bc, $9565                                   ; $7a26: $01 $65 $95
	ld   d, h                                        ; $7a29: $54
	sub  h                                           ; $7a2a: $94
	ld   a, l                                        ; $7a2b: $7d
	inc  bc                                          ; $7a2c: $03
	xor  [hl]                                        ; $7a2d: $ae
	sbc  l                                           ; $7a2e: $9d
	ld   a, b                                        ; $7a2f: $78
	ld   d, d                                        ; $7a30: $52
	ld   a, h                                        ; $7a31: $7c
	sbc  a                                           ; $7a32: $9f
	dec  c                                           ; $7a33: $0d
	ld   e, b                                        ; $7a34: $58
	ld   [bc], a                                     ; $7a35: $02
	dec  l                                           ; $7a36: $2d
	ld   d, d                                        ; $7a37: $52
	sbc  d                                           ; $7a38: $9a
	ld   [hl], h                                     ; $7a39: $74
	inc  b                                           ; $7a3a: $04
	jp   nc, $0da0                                   ; $7a3b: $d2 $a0 $0d

	halt                                             ; $7a3e: $76
	halt                                             ; $7a3f: $76
	ld   a, h                                        ; $7a40: $7c
	ld   d, [hl]                                     ; $7a41: $56
	sbc  c                                           ; $7a42: $99
	ld   a, h                                        ; $7a43: $7c
	sub  [hl]                                        ; $7a44: $96
	sbc  a                                           ; $7a45: $9f
	dec  c                                           ; $7a46: $0d
	nop                                              ; $7a47: $00
	ld   a, [bc]                                     ; $7a48: $0a
	dec  c                                           ; $7a49: $0d
	nop                                              ; $7a4a: $00
	nop                                              ; $7a4b: $00
	rrca                                             ; $7a4c: $0f
	nop                                              ; $7a4d: $00
	ld   bc, $0b0c                                   ; $7a4e: $01 $0c $0b
	ld   b, $56                                      ; $7a51: $06 $56
	inc  bc                                          ; $7a53: $03
	inc  e                                           ; $7a54: $1c
	inc  bc                                          ; $7a55: $03
	ld   [bc], a                                     ; $7a56: $02
	ld   [bc], a                                     ; $7a57: $02
	ld   bc, $6d59                                   ; $7a58: $01 $59 $6d
	ld   e, l                                        ; $7a5b: $5d
	sbc  b                                           ; $7a5c: $98
	ld   h, c                                        ; $7a5d: $61
	and  b                                           ; $7a5e: $a0
	inc  b                                           ; $7a5f: $04
	ld   b, l                                        ; $7a60: $45
	sbc  d                                           ; $7a61: $9a
	ld   [hl], h                                     ; $7a62: $74
	dec  c                                           ; $7a63: $0d
	ld   [hl], a                                     ; $7a64: $77
	ld   d, h                                        ; $7a65: $54
	ld   h, a                                        ; $7a66: $67
	sbc  c                                           ; $7a67: $99
	ld   a, h                                        ; $7a68: $7c
	ld   a, [$000d]                                  ; $7a69: $fa $0d $00
	ld   a, [bc]                                     ; $7a6c: $0a
	inc  e                                           ; $7a6d: $1c
	inc  bc                                          ; $7a6e: $03
	nop                                              ; $7a6f: $00
	nop                                              ; $7a70: $00
	ld   bc, $0258                                   ; $7a71: $01 $58 $02
	dec  l                                           ; $7a74: $2d
	and  b                                           ; $7a75: $a0
	ld   d, d                                        ; $7a76: $52
	sbc  d                                           ; $7a77: $9a
	ld   [hl], h                                     ; $7a78: $74
	inc  b                                           ; $7a79: $04
	jp   nc, $0da0                                   ; $7a7a: $d2 $a0 $0d

	halt                                             ; $7a7d: $76
	halt                                             ; $7a7e: $76
	ld   a, h                                        ; $7a7f: $7c
	ld   d, [hl]                                     ; $7a80: $56
	sbc  c                                           ; $7a81: $99
	ld   a, h                                        ; $7a82: $7c
	sub  [hl]                                        ; $7a83: $96
	sbc  a                                           ; $7a84: $9f
	dec  c                                           ; $7a85: $0d
	nop                                              ; $7a86: $00
	ld   a, [bc]                                     ; $7a87: $0a
	dec  c                                           ; $7a88: $0d
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	rrca                                             ; $7a8b: $0f
	nop                                              ; $7a8c: $00
	ld   bc, $0b0c                                   ; $7a8d: $01 $0c $0b
	ld   b, $56                                      ; $7a90: $06 $56
	inc  bc                                          ; $7a92: $03
	inc  e                                           ; $7a93: $1c
	inc  bc                                          ; $7a94: $03
	ld   [bc], a                                     ; $7a95: $02
	ld   [bc], a                                     ; $7a96: $02
	ld   bc, $9789                                   ; $7a97: $01 $89 $97
	sbc  [hl]                                        ; $7a9a: $9e
	db   $dd                                         ; $7a9b: $dd
	ei                                               ; $7a9c: $fb
	ld   [hl], c                                     ; $7a9d: $71
	halt                                             ; $7a9e: $76
	ld   h, l                                        ; $7a9f: $65
	ld   a, b                                        ; $7aa0: $78
	ld   d, d                                        ; $7aa1: $52
	ld   a, h                                        ; $7aa2: $7c
	sbc  a                                           ; $7aa3: $9f
	dec  c                                           ; $7aa4: $0d
	ld   e, b                                        ; $7aa5: $58
	ld   [bc], a                                     ; $7aa6: $02
	dec  l                                           ; $7aa7: $2d
	ld   d, d                                        ; $7aa8: $52
	sbc  d                                           ; $7aa9: $9a
	ld   [hl], h                                     ; $7aaa: $74
	inc  b                                           ; $7aab: $04
	jp   nc, $0da0                                   ; $7aac: $d2 $a0 $0d

	halt                                             ; $7aaf: $76
	halt                                             ; $7ab0: $76
	ld   a, h                                        ; $7ab1: $7c
	ld   d, [hl]                                     ; $7ab2: $56
	sbc  c                                           ; $7ab3: $99
	ld   a, h                                        ; $7ab4: $7c
	sub  [hl]                                        ; $7ab5: $96
	sbc  a                                           ; $7ab6: $9f
	dec  c                                           ; $7ab7: $0d
	nop                                              ; $7ab8: $00
	ld   a, [bc]                                     ; $7ab9: $0a
	dec  c                                           ; $7aba: $0d
	nop                                              ; $7abb: $00
	nop                                              ; $7abc: $00
	rrca                                             ; $7abd: $0f
	nop                                              ; $7abe: $00
	ld   bc, $0b0c                                   ; $7abf: $01 $0c $0b
	inc  e                                           ; $7ac2: $1c
	inc  bc                                          ; $7ac3: $03
	inc  bc                                          ; $7ac4: $03
	inc  bc                                          ; $7ac5: $03
	ld   bc, $9e63                                   ; $7ac6: $01 $63 $9e
	ld   [hl], l                                     ; $7ac9: $75
	ld   e, e                                        ; $7aca: $5b
	ld   l, l                                        ; $7acb: $6d
	sbc  l                                           ; $7acc: $9d
	sbc  a                                           ; $7acd: $9f
	dec  c                                           ; $7ace: $0d
	and  a                                           ; $7acf: $a7
	or   b                                           ; $7ad0: $b0
	db   $eb                                         ; $7ad1: $eb
	and  l                                           ; $7ad2: $a5
	rlc  h                                           ; $7ad3: $cb $04
	ld   [hl], a                                     ; $7ad5: $77
	db   $dd                                         ; $7ad6: $dd
	db   $ed                                         ; $7ad7: $ed
	cp   b                                           ; $7ad8: $b8
	jp   nz, $9f96                                   ; $7ad9: $c2 $96 $9f

	dec  c                                           ; $7adc: $0d
	nop                                              ; $7add: $00
	ld   a, [bc]                                     ; $7ade: $0a
	rlca                                             ; $7adf: $07
	push de                                          ; $7ae0: $d5
	inc  bc                                          ; $7ae1: $03
	inc  bc                                          ; $7ae2: $03
	rst  $38                                         ; $7ae3: $ff
	ld   bc, $2002                                   ; $7ae4: $01 $02 $20
	nop                                              ; $7ae7: $00
	rlca                                             ; $7ae8: $07
	rst  $38                                         ; $7ae9: $ff
	inc  bc                                          ; $7aea: $03
	inc  bc                                          ; $7aeb: $03
	rst  $38                                         ; $7aec: $ff
	ld   bc, $2301                                   ; $7aed: $01 $01 $23
	nop                                              ; $7af0: $00
	inc  e                                           ; $7af1: $1c
	inc  bc                                          ; $7af2: $03
	inc  bc                                          ; $7af3: $03
	inc  bc                                          ; $7af4: $03
	dec  e                                           ; $7af5: $1d
	ld   b, b                                        ; $7af6: $40
	inc  de                                          ; $7af7: $13
	inc  bc                                          ; $7af8: $03
	inc  de                                          ; $7af9: $13
	ld   bc, $2803                                   ; $7afa: $01 $03 $28
	nop                                              ; $7afd: $00
	ld   bc, $916f                                   ; $7afe: $01 $6f $91
	and  c                                           ; $7b01: $a1
	halt                                             ; $7b02: $76
	ld   e, b                                        ; $7b03: $58
	dec  b                                           ; $7b04: $05
	ld   [bc], a                                     ; $7b05: $02
	dec  b                                           ; $7b06: $05
	ld   de, $0d5a                                   ; $7b07: $11 $5a $0d
	ld   [hl], l                                     ; $7b0a: $75
	ld   e, e                                        ; $7b0b: $5b
	sbc  c                                           ; $7b0c: $99
	ld   a, h                                        ; $7b0d: $7c
	ld   a, e                                        ; $7b0e: $7b
	rst  $38                                         ; $7b0f: $ff
	rst  $38                                         ; $7b10: $ff
	dec  c                                           ; $7b11: $0d
	ld   d, [hl]                                     ; $7b12: $56
	sub  a                                           ; $7b13: $97
	ld   d, d                                        ; $7b14: $52
	sbc  l                                           ; $7b15: $9d
	sub  [hl]                                        ; $7b16: $96
	sbc  [hl]                                        ; $7b17: $9e
	ld   [$5d00], sp                                 ; $7b18: $08 $00 $5d
	and  c                                           ; $7b1b: $a1
	sbc  a                                           ; $7b1c: $9f
	dec  c                                           ; $7b1d: $0d
	nop                                              ; $7b1e: $00
	ld   a, [bc]                                     ; $7b1f: $0a
	inc  e                                           ; $7b20: $1c
	inc  bc                                          ; $7b21: $03
	inc  bc                                          ; $7b22: $03
	inc  bc                                          ; $7b23: $03
	ld   bc, $6b03                                   ; $7b24: $01 $03 $6b
	inc  b                                           ; $7b27: $04
	ld   [de], a                                     ; $7b28: $12
	ld   [hl], c                                     ; $7b29: $71
	ld   [hl], h                                     ; $7b2a: $74
	ld   e, l                                        ; $7b2b: $5d
	sbc  d                                           ; $7b2c: $9a
	ld   [hl], h                                     ; $7b2d: $74
	dec  c                                           ; $7b2e: $0d
	nop                                              ; $7b2f: $00
	dec  b                                           ; $7b30: $05
	add  b                                           ; $7b31: $80
	ld   [hl], d                                     ; $7b32: $72
	ld   bc, $0001                                   ; $7b33: $01 $01 $00
	ld   bc, $9850                                   ; $7b36: $01 $50 $98
	ld   e, d                                        ; $7b39: $5a
	halt                                             ; $7b3a: $76
	ld   d, h                                        ; $7b3b: $54
	sbc  a                                           ; $7b3c: $9f
	dec  c                                           ; $7b3d: $0d
	nop                                              ; $7b3e: $00
	ld   a, [bc]                                     ; $7b3f: $0a
	nop                                              ; $7b40: $00
	inc  e                                           ; $7b41: $1c
	inc  bc                                          ; $7b42: $03
	inc  bc                                          ; $7b43: $03
	inc  bc                                          ; $7b44: $03
	dec  e                                           ; $7b45: $1d
	ld   b, b                                        ; $7b46: $40
	inc  de                                          ; $7b47: $13
	inc  bc                                          ; $7b48: $03
	inc  de                                          ; $7b49: $13
	ld   bc, $2801                                   ; $7b4a: $01 $01 $28
	nop                                              ; $7b4d: $00
	ld   bc, $6b03                                   ; $7b4e: $01 $03 $6b
	inc  b                                           ; $7b51: $04
	ld   [de], a                                     ; $7b52: $12
	ld   [hl], c                                     ; $7b53: $71
	ld   [hl], h                                     ; $7b54: $74
	ld   e, l                                        ; $7b55: $5d
	sbc  d                                           ; $7b56: $9a
	ld   [hl], h                                     ; $7b57: $74
	dec  c                                           ; $7b58: $0d
	nop                                              ; $7b59: $00
	dec  b                                           ; $7b5a: $05
	add  b                                           ; $7b5b: $80
	ld   [hl], d                                     ; $7b5c: $72
	ld   bc, $0001                                   ; $7b5d: $01 $01 $00
	ld   bc, $9850                                   ; $7b60: $01 $50 $98
	ld   e, d                                        ; $7b63: $5a
	halt                                             ; $7b64: $76
	ld   d, h                                        ; $7b65: $54
	sbc  a                                           ; $7b66: $9f
	dec  c                                           ; $7b67: $0d
	nop                                              ; $7b68: $00
	ld   a, [bc]                                     ; $7b69: $0a
	nop                                              ; $7b6a: $00
	inc  e                                           ; $7b6b: $1c
	inc  bc                                          ; $7b6c: $03
	inc  b                                           ; $7b6d: $04
	inc  b                                           ; $7b6e: $04
	dec  e                                           ; $7b6f: $1d
	ld   b, b                                        ; $7b70: $40
	inc  de                                          ; $7b71: $13
	inc  bc                                          ; $7b72: $03
	inc  de                                          ; $7b73: $13
	ld   bc, $2901                                   ; $7b74: $01 $01 $29
	nop                                              ; $7b77: $00
	ld   bc, $9075                                   ; $7b78: $01 $75 $90
	sbc  [hl]                                        ; $7b7b: $9e
	ld   [$5d00], sp                                 ; $7b7c: $08 $00 $5d
	and  c                                           ; $7b7f: $a1
	ld   a, l                                        ; $7b80: $7d
	dec  c                                           ; $7b81: $0d
	nop                                              ; $7b82: $00
	dec  b                                           ; $7b83: $05
	add  b                                           ; $7b84: $80
	ld   [hl], d                                     ; $7b85: $72
	ld   bc, $0001                                   ; $7b86: $01 $01 $00
	ld   bc, $5490                                   ; $7b89: $01 $90 $54
	ld   l, a                                        ; $7b8c: $6f
	sub  l                                           ; $7b8d: $95
	ld   [hl], c                                     ; $7b8e: $71
	halt                                             ; $7b8f: $76
	dec  b                                           ; $7b90: $05
	ld   [bc], a                                     ; $7b91: $02
	dec  b                                           ; $7b92: $05
	ld   de, $04a0                                   ; $7b93: $11 $a0 $04
	xor  [hl]                                        ; $7b96: $ae
	ld   [bc], a                                     ; $7b97: $02
	call nc, Call_067_650d                           ; $7b98: $d4 $0d $65
	ld   l, l                                        ; $7b9b: $6d
	adc  c                                           ; $7b9c: $89
	ld   d, h                                        ; $7b9d: $54
	ld   e, d                                        ; $7b9e: $5a
	ld   d, d                                        ; $7b9f: $52
	ld   d, d                                        ; $7ba0: $52
	sbc  l                                           ; $7ba1: $9d
	ld   a, e                                        ; $7ba2: $7b
	rst  $38                                         ; $7ba3: $ff
	rst  $38                                         ; $7ba4: $ff
	dec  c                                           ; $7ba5: $0d
	nop                                              ; $7ba6: $00
	ld   a, [bc]                                     ; $7ba7: $0a
	nop                                              ; $7ba8: $00
	nop                                              ; $7ba9: $00
	inc  b                                           ; $7baa: $04
	add  b                                           ; $7bab: $80
	ld   c, c                                        ; $7bac: $49
	ld   bc, $2000                                   ; $7bad: $01 $00 $20
	nop                                              ; $7bb0: $00
	ld   c, $2f                                      ; $7bb1: $0e $2f
	inc  e                                           ; $7bb3: $1c
	dec  c                                           ; $7bb4: $0d
	nop                                              ; $7bb5: $00
	nop                                              ; $7bb6: $00
	ld   [bc], a                                     ; $7bb7: $02
	inc  e                                           ; $7bb8: $1c
	dec  c                                           ; $7bb9: $0d
	nop                                              ; $7bba: $00
	nop                                              ; $7bbb: $00
	ld   bc, $9750                                   ; $7bbc: $01 $50 $97
	sbc  [hl]                                        ; $7bbf: $9e
	ld   [$5d00], sp                                 ; $7bc0: $08 $00 $5d
	and  c                                           ; $7bc3: $a1
	sbc  a                                           ; $7bc4: $9f
	dec  c                                           ; $7bc5: $0d
	nop                                              ; $7bc6: $00
	ld   a, [bc]                                     ; $7bc7: $0a
	inc  e                                           ; $7bc8: $1c
	dec  c                                           ; $7bc9: $0d
	ld   bc, $0101                                   ; $7bca: $01 $01 $01
	ld   a, e                                        ; $7bcd: $7b
	ld   d, [hl]                                     ; $7bce: $56
	ld   a, e                                        ; $7bcf: $7b
	ld   d, [hl]                                     ; $7bd0: $56
	inc  b                                           ; $7bd1: $04
	dec  hl                                          ; $7bd2: $2b
	ld   [hl], c                                     ; $7bd3: $71
	ld   [hl], h                                     ; $7bd4: $74
	sbc  c                                           ; $7bd5: $99
	ld   sp, hl                                      ; $7bd6: $f9
	dec  c                                           ; $7bd7: $0d
	and  e                                           ; $7bd8: $a3
	and  l                                           ; $7bd9: $a5
	db   $ec                                         ; $7bda: $ec
	cp   d                                           ; $7bdb: $ba
	sbc  [hl]                                        ; $7bdc: $9e
	inc  bc                                          ; $7bdd: $03
	add  c                                           ; $7bde: $81
	ld   h, l                                        ; $7bdf: $65
	ld   d, d                                        ; $7be0: $52
	inc  bc                                          ; $7be1: $03
	ld   e, c                                        ; $7be2: $59
	inc  b                                           ; $7be3: $04
	rlca                                             ; $7be4: $07
	and  b                                           ; $7be5: $a0
	dec  c                                           ; $7be6: $0d
	inc  b                                           ; $7be7: $04
	adc  l                                           ; $7be8: $8d
	ld   [hl], c                                     ; $7be9: $71
	ld   l, l                                        ; $7bea: $6d
	ld   a, h                                        ; $7beb: $7c
	sub  [hl]                                        ; $7bec: $96
	dec  c                                           ; $7bed: $0d
	nop                                              ; $7bee: $00
	ld   a, [bc]                                     ; $7bef: $0a
	dec  b                                           ; $7bf0: $05
	ld   b, b                                        ; $7bf1: $40
	ld   e, a                                        ; $7bf2: $5f
	ld   [bc], a                                     ; $7bf3: $02
	nop                                              ; $7bf4: $00
	nop                                              ; $7bf5: $00
	ld   bc, $a502                                   ; $7bf6: $01 $02 $a5
	inc  b                                           ; $7bf9: $04
	xor  d                                           ; $7bfa: $aa
	ld   a, h                                        ; $7bfb: $7c
	inc  b                                           ; $7bfc: $04
	rst  $28                                         ; $7bfd: $ef
	sbc  [hl]                                        ; $7bfe: $9e
	dec  c                                           ; $7bff: $0d
	inc  bc                                          ; $7c00: $03
	ld   e, c                                        ; $7c01: $59
	ld   [bc], a                                     ; $7c02: $02
	ld   [hl-], a                                    ; $7c03: $32
	inc  b                                           ; $7c04: $04
	ld   a, d                                        ; $7c05: $7a
	ld   a, c                                        ; $7c06: $79
	ld   [bc], a                                     ; $7c07: $02
	ld   a, a                                        ; $7c08: $7f
	ld   e, a                                        ; $7c09: $5f
	ld   a, [hl]                                     ; $7c0a: $7e
	dec  c                                           ; $7c0b: $0d
	ld   [bc], a                                     ; $7c0c: $02
	sub  l                                           ; $7c0d: $95
	sub  a                                           ; $7c0e: $97
	sbc  d                                           ; $7c0f: $9a
	sbc  c                                           ; $7c10: $99
	ld   e, c                                        ; $7c11: $59
	sub  b                                           ; $7c12: $90
	ld   h, l                                        ; $7c13: $65
	sbc  d                                           ; $7c14: $9a
	ld   a, b                                        ; $7c15: $78
	ld   d, d                                        ; $7c16: $52
	sbc  l                                           ; $7c17: $9d
	sub  [hl]                                        ; $7c18: $96
	sbc  a                                           ; $7c19: $9f
	dec  c                                           ; $7c1a: $0d
	nop                                              ; $7c1b: $00
	ld   a, [bc]                                     ; $7c1c: $0a
	ld   bc, $9166                                   ; $7c1d: $01 $66 $91
	ld   d, b                                        ; $7c20: $50
	ld   a, e                                        ; $7c21: $7b
	sbc  a                                           ; $7c22: $9f
	dec  c                                           ; $7c23: $0d
	nop                                              ; $7c24: $00
	ld   a, [bc]                                     ; $7c25: $0a
	dec  b                                           ; $7c26: $05
	add  b                                           ; $7c27: $80
	ld   b, a                                        ; $7c28: $47
	ld   bc, $0001                                   ; $7c29: $01 $01 $00
	nop                                              ; $7c2c: $00
	nop                                              ; $7c2d: $00
	inc  b                                           ; $7c2e: $04
	add  b                                           ; $7c2f: $80
	or   e                                           ; $7c30: $b3
	ld   bc, $2000                                   ; $7c31: $01 $00 $20
	nop                                              ; $7c34: $00
	ld   c, $2f                                      ; $7c35: $0e $2f
	inc  e                                           ; $7c37: $1c
	inc  c                                           ; $7c38: $0c
	nop                                              ; $7c39: $00
	nop                                              ; $7c3a: $00
	ld   [bc], a                                     ; $7c3b: $02
	ld   bc, $0008                                   ; $7c3c: $01 $08 $00
	ld   h, e                                        ; $7c3f: $63
	and  c                                           ; $7c40: $a1
	sbc  a                                           ; $7c41: $9f
	dec  c                                           ; $7c42: $0d
	nop                                              ; $7c43: $00
	ld   a, [bc]                                     ; $7c44: $0a
	inc  e                                           ; $7c45: $1c
	inc  c                                           ; $7c46: $0c
	ld   bc, $0101                                   ; $7c47: $01 $01 $01
	ld   d, d                                        ; $7c4a: $52
	ld   d, d                                        ; $7c4b: $52
	ld   h, c                                        ; $7c4c: $61
	halt                                             ; $7c4d: $76
	and  b                                           ; $7c4e: $a0
	ld   [bc], a                                     ; $7c4f: $02
	ret  nc                                          ; $7c50: $d0

	ld   d, [hl]                                     ; $7c51: $56
	ld   [hl], h                                     ; $7c52: $74
	ld   d, b                                        ; $7c53: $50
	ld   h, b                                        ; $7c54: $60
	adc  h                                           ; $7c55: $8c
	ld   h, a                                        ; $7c56: $67
	sbc  a                                           ; $7c57: $9f
	dec  c                                           ; $7c58: $0d
	nop                                              ; $7c59: $00
	ld   a, [bc]                                     ; $7c5a: $0a
	ld   bc, $cf02                                   ; $7c5b: $01 $02 $cf
	dec  b                                           ; $7c5e: $05
	ld   a, [de]                                     ; $7c5f: $1a
	ld   a, h                                        ; $7c60: $7c
	ld   e, c                                        ; $7c61: $59
	ld   e, l                                        ; $7c62: $5d
	ld   h, l                                        ; $7c63: $65
	ld   [bc], a                                     ; $7c64: $02
	ld   c, l                                        ; $7c65: $4d
	ld   a, l                                        ; $7c66: $7d
	dec  c                                           ; $7c67: $0d
	or   [hl]                                        ; $7c68: $b6
	db   $eb                                         ; $7c69: $eb
	ld   [bc], a                                     ; $7c6a: $02
	sub  e                                           ; $7c6b: $93
	ld   h, l                                        ; $7c6c: $65
	ld   a, b                                        ; $7c6d: $78
	and  c                                           ; $7c6e: $a1
	ld   [hl], l                                     ; $7c6f: $75
	ld   h, a                                        ; $7c70: $67
	sub  [hl]                                        ; $7c71: $96
	sbc  a                                           ; $7c72: $9f
	dec  c                                           ; $7c73: $0d
	nop                                              ; $7c74: $00
	ld   a, [bc]                                     ; $7c75: $0a
	ld   bc, $8a58                                   ; $7c76: $01 $58 $8a
	ld   d, [hl]                                     ; $7c79: $56
	ld   [hl], h                                     ; $7c7a: $74
	ld   e, b                                        ; $7c7b: $58
	ld   e, l                                        ; $7c7c: $5d
	halt                                             ; $7c7d: $76
	ld   d, d                                        ; $7c7e: $52
	ld   d, d                                        ; $7c7f: $52
	ld   e, c                                        ; $7c80: $59
	sub  b                                           ; $7c81: $90
	dec  c                                           ; $7c82: $0d
	ld   h, l                                        ; $7c83: $65
	sbc  d                                           ; $7c84: $9a
	adc  h                                           ; $7c85: $8c
	ld   l, c                                        ; $7c86: $69
	and  c                                           ; $7c87: $a1
	sub  [hl]                                        ; $7c88: $96
	sbc  a                                           ; $7c89: $9f
	dec  c                                           ; $7c8a: $0d
	ld   l, e                                        ; $7c8b: $6b
	sbc  d                                           ; $7c8c: $9a
	ld   h, [hl]                                     ; $7c8d: $66
	sub  c                                           ; $7c8e: $91
	sbc  [hl]                                        ; $7c8f: $9e
	inc  bc                                          ; $7c90: $03
	add  e                                           ; $7c91: $83
	dec  b                                           ; $7c92: $05
	dec  c                                           ; $7c93: $0d
	ld   h, l                                        ; $7c94: $65
	adc  h                                           ; $7c95: $8c
	ld   h, a                                        ; $7c96: $67
	sbc  a                                           ; $7c97: $9f
	dec  c                                           ; $7c98: $0d
	nop                                              ; $7c99: $00
	ld   a, [bc]                                     ; $7c9a: $0a
	nop                                              ; $7c9b: $00
	nop                                              ; $7c9c: $00
	ld   c, $26                                      ; $7c9d: $0e $26
	rrca                                             ; $7c9f: $0f
	nop                                              ; $7ca0: $00
	ld   bc, $0102                                   ; $7ca1: $01 $02 $01
	ld   bc, $5003                                   ; $7ca4: $01 $03 $50
	sbc  d                                           ; $7ca7: $9a
	ld   sp, hl                                      ; $7ca8: $f9
	dec  c                                           ; $7ca9: $0d
	db   $10                                         ; $7caa: $10
	xor  h                                           ; $7cab: $ac
	push af                                          ; $7cac: $f5
	bit  4, e                                        ; $7cad: $cb $63
	and  c                                           ; $7caf: $a1
	ld   d, d                                        ; $7cb0: $52
	ld   a, b                                        ; $7cb1: $78
	ld   d, d                                        ; $7cb2: $52
	ld   l, h                                        ; $7cb3: $6c
	rst  $38                                         ; $7cb4: $ff
	rst  $38                                         ; $7cb5: $ff
	ld   bc, $0d04                                   ; $7cb6: $01 $04 $0d
	nop                                              ; $7cb9: $00
	ld   a, [bc]                                     ; $7cba: $0a
	db   $10                                         ; $7cbb: $10
	ld   b, l                                        ; $7cbc: $45
	nop                                              ; $7cbd: $00
	ld   bc, $0301                                   ; $7cbe: $01 $01 $03
	ld   e, b                                        ; $7cc1: $58
	sbc  [hl]                                        ; $7cc2: $9e
	rst  ToBoot                                         ; $7cc3: $c7
	ei                                               ; $7cc4: $fb
	rst  $10                                         ; $7cc5: $d7
	db   $ed                                         ; $7cc6: $ed
	ld   a, h                                        ; $7cc7: $7c
	inc  bc                                          ; $7cc8: $03
	ld   h, l                                        ; $7cc9: $65
	ld   a, c                                        ; $7cca: $79
	dec  c                                           ; $7ccb: $0d
	db   $10                                         ; $7ccc: $10
	ld   d, h                                        ; $7ccd: $54
	adc  h                                           ; $7cce: $8c
	ld   l, e                                        ; $7ccf: $6b
	ld   d, h                                        ; $7cd0: $54
	ld   a, b                                        ; $7cd1: $78
	cp   d                                           ; $7cd2: $ba
	rst  ToBoot                                         ; $7cd3: $c7
	ei                                               ; $7cd4: $fb
	xor  [hl]                                        ; $7cd5: $ae
	ld   e, d                                        ; $7cd6: $5a
	rst  $38                                         ; $7cd7: $ff
	rst  $38                                         ; $7cd8: $ff
	ld   bc, $0d04                                   ; $7cd9: $01 $04 $0d
	nop                                              ; $7cdc: $00
	ld   a, [bc]                                     ; $7cdd: $0a
	add  hl, de                                      ; $7cde: $19
	dec  b                                           ; $7cdf: $05
	ld   [bc], a                                     ; $7ce0: $02
	inc  bc                                          ; $7ce1: $03
	ld   l, d                                        ; $7ce2: $6a
	add  a                                           ; $7ce3: $87
	sbc  c                                           ; $7ce4: $99
	nop                                              ; $7ce5: $00
	nop                                              ; $7ce6: $00
	ld   e, d                                        ; $7ce7: $5a
	adc  h                                           ; $7ce8: $8c
	and  c                                           ; $7ce9: $a1
	ld   h, a                                        ; $7cea: $67
	sbc  c                                           ; $7ceb: $99
	nop                                              ; $7cec: $00
	ld   bc, $6607                                   ; $7ced: $01 $07 $66
	nop                                              ; $7cf0: $00
	ld   [bc], a                                     ; $7cf1: $02
	inc  bc                                          ; $7cf2: $03
	ld   bc, $2000                                   ; $7cf3: $01 $00 $20
	nop                                              ; $7cf6: $00
	rlca                                             ; $7cf7: $07
	and  d                                           ; $7cf8: $a2
	ld   [bc], a                                     ; $7cf9: $02
	ld   [bc], a                                     ; $7cfa: $02
	inc  bc                                          ; $7cfb: $03
	ld   bc, $2001                                   ; $7cfc: $01 $01 $20
	nop                                              ; $7cff: $00
	ld   b, $a2                                      ; $7d00: $06 $a2
	ld   [bc], a                                     ; $7d02: $02
	rrca                                             ; $7d03: $0f
	nop                                              ; $7d04: $00
	ld   bc, $0101                                   ; $7d05: $01 $01 $01
	inc  bc                                          ; $7d08: $03
	inc  bc                                          ; $7d09: $03
	xor  c                                           ; $7d0a: $a9
	ld   a, h                                        ; $7d0b: $7c
	ld   e, c                                        ; $7d0c: $59
	inc  b                                           ; $7d0d: $04
	sbc  [hl]                                        ; $7d0e: $9e
	ld   e, c                                        ; $7d0f: $59
	sub  a                                           ; $7d10: $97
	ld   a, b                                        ; $7d11: $78
	ld   d, d                                        ; $7d12: $52
	ld   e, a                                        ; $7d13: $5f
	ld   [hl], a                                     ; $7d14: $77
	dec  c                                           ; $7d15: $0d
	db   $10                                         ; $7d16: $10
	inc  bc                                          ; $7d17: $03
	ld   l, d                                        ; $7d18: $6a
	add  a                                           ; $7d19: $87
	ld   l, a                                        ; $7d1a: $6f
	sub  c                                           ; $7d1b: $91
	ld   e, b                                        ; $7d1c: $58
	ld   [hl], c                                     ; $7d1d: $71
	halt                                             ; $7d1e: $76
	ld   bc, $0d04                                   ; $7d1f: $01 $04 $0d
	nop                                              ; $7d22: $00
	ld   a, [bc]                                     ; $7d23: $0a
	inc  c                                           ; $7d24: $0c
	dec  bc                                          ; $7d25: $0b
	inc  e                                           ; $7d26: $1c
	ld   b, $01                                      ; $7d27: $06 $01
	ld   bc, $9601                                   ; $7d29: $01 $01 $96
	ei                                               ; $7d2c: $fb
	ld   h, l                                        ; $7d2d: $65
	sbc  [hl]                                        ; $7d2e: $9e
	db   $e3                                         ; $7d2f: $e3
	cp   b                                           ; $7d30: $b8
	inc  bc                                          ; $7d31: $03
	ld   l, d                                        ; $7d32: $6a
	ld   d, h                                        ; $7d33: $54
	ld   l, d                                        ; $7d34: $6a
	ld   a, [$580d]                                  ; $7d35: $fa $0d $58
	sbc  [hl]                                        ; $7d38: $9e
	ld   [$9f00], sp                                 ; $7d39: $08 $00 $9f
	dec  c                                           ; $7d3c: $0d
	ld   a, b                                        ; $7d3d: $78
	ld   a, c                                        ; $7d3e: $79
	ld   h, l                                        ; $7d3f: $65
	ld   [hl], h                                     ; $7d40: $74
	and  c                                           ; $7d41: $a1
	ld   l, [hl]                                     ; $7d42: $6e
	ld   sp, hl                                      ; $7d43: $f9
	dec  c                                           ; $7d44: $0d
	nop                                              ; $7d45: $00
	ld   a, [bc]                                     ; $7d46: $0a
	inc  e                                           ; $7d47: $1c
	ld   b, $03                                      ; $7d48: $06 $03
	inc  bc                                          ; $7d4a: $03
	ld   bc, $fa50                                   ; $7d4b: $01 $50 $fa
	db   $10                                         ; $7d4e: $10
	db   $e3                                         ; $7d4f: $e3
	cp   b                                           ; $7d50: $b8
	ld   e, d                                        ; $7d51: $5a
	ld   a, b                                        ; $7d52: $78
	ld   d, d                                        ; $7d53: $52
	ld   a, [$580d]                                  ; $7d54: $fa $0d $58
	inc  bc                                          ; $7d57: $03
	ld   c, a                                        ; $7d58: $4f
	sbc  [hl]                                        ; $7d59: $9e
	inc  bc                                          ; $7d5a: $03
	ld   l, d                                        ; $7d5b: $6a
	ld   [hl], c                                     ; $7d5c: $71
	ld   l, l                                        ; $7d5d: $6d
	ld   sp, hl                                      ; $7d5e: $f9
	dec  c                                           ; $7d5f: $0d
	nop                                              ; $7d60: $00
	ld   a, [bc]                                     ; $7d61: $0a
	add  hl, de                                      ; $7d62: $19
	dec  b                                           ; $7d63: $05
	ld   [bc], a                                     ; $7d64: $02
	ld   a, l                                        ; $7d65: $7d
	ld   d, d                                        ; $7d66: $52
	nop                                              ; $7d67: $00
	nop                                              ; $7d68: $00
	ld   d, d                                        ; $7d69: $52
	ld   d, d                                        ; $7d6a: $52
	ld   d, [hl]                                     ; $7d6b: $56
	nop                                              ; $7d6c: $00
	ld   bc, $e607                                   ; $7d6d: $01 $07 $e6
	nop                                              ; $7d70: $00
	ld   [bc], a                                     ; $7d71: $02
	inc  bc                                          ; $7d72: $03
	ld   bc, $2000                                   ; $7d73: $01 $00 $20
	nop                                              ; $7d76: $00
	rlca                                             ; $7d77: $07
	ld   e, a                                        ; $7d78: $5f
	ld   bc, $0302                                   ; $7d79: $01 $02 $03
	ld   bc, $2001                                   ; $7d7c: $01 $01 $20
	nop                                              ; $7d7f: $00
	ld   b, $0c                                      ; $7d80: $06 $0c
	ld   [bc], a                                     ; $7d82: $02
	dec  c                                           ; $7d83: $0d
	ld   b, $05                                      ; $7d84: $06 $05
	rrca                                             ; $7d86: $0f
	nop                                              ; $7d87: $00
	ld   bc, $5001                                   ; $7d88: $01 $01 $50
	adc  h                                           ; $7d8b: $8c
	sbc  b                                           ; $7d8c: $98
	ld   a, c                                        ; $7d8d: $79
	ld   e, b                                        ; $7d8e: $58
	ld   d, d                                        ; $7d8f: $52
	ld   h, l                                        ; $7d90: $65
	ld   l, e                                        ; $7d91: $6b
	ld   d, h                                        ; $7d92: $54
	dec  c                                           ; $7d93: $0d
	ld   l, [hl]                                     ; $7d94: $6e
	ld   [hl], c                                     ; $7d95: $71
	ld   l, l                                        ; $7d96: $6d
	db   $e4                                         ; $7d97: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d98: $cf
	ld   [hl], l                                     ; $7d99: $75
	rst  $38                                         ; $7d9a: $ff
	rst  $38                                         ; $7d9b: $ff
	ld   [hl], d                                     ; $7d9c: $72
	ld   d, d                                        ; $7d9d: $52
	rst  $38                                         ; $7d9e: $ff
	rst  $38                                         ; $7d9f: $ff
	dec  c                                           ; $7da0: $0d
	nop                                              ; $7da1: $00
	ld   a, [bc]                                     ; $7da2: $0a
	rrca                                             ; $7da3: $0f
	ld   b, $05                                      ; $7da4: $06 $05
	ld   bc, $fc56                                   ; $7da6: $01 $56 $fc
	ld   a, b                                        ; $7da9: $78
	and  c                                           ; $7daa: $a1
	ld   l, [hl]                                     ; $7dab: $6e
	sub  [hl]                                        ; $7dac: $96
	sub  b                                           ; $7dad: $90
	ld   d, h                                        ; $7dae: $54
	db   $fc                                         ; $7daf: $fc
	sbc  a                                           ; $7db0: $9f
	dec  c                                           ; $7db1: $0d
	nop                                              ; $7db2: $00
	ld   a, [bc]                                     ; $7db3: $0a
	inc  e                                           ; $7db4: $1c
	ld   b, $00                                      ; $7db5: $06 $00
	nop                                              ; $7db7: $00
	dec  e                                           ; $7db8: $1d
	ld   b, b                                        ; $7db9: $40
	ld   d, $03                                      ; $7dba: $16 $03
	ld   d, $01                                      ; $7dbc: $16 $01
	ld   [bc], a                                     ; $7dbe: $02
	jr   z, jr_067_7dc1                              ; $7dbf: $28 $00

jr_067_7dc1:
	ld   bc, $9075                                   ; $7dc1: $01 $75 $90
	sbc  [hl]                                        ; $7dc4: $9e
	adc  h                                           ; $7dc5: $8c
	ld   d, b                                        ; $7dc6: $50
	inc  bc                                          ; $7dc7: $03
	ld   c, d                                        ; $7dc8: $4a
	inc  bc                                          ; $7dc9: $03
	jp   c, $0279                                    ; $7dca: $da $79 $02

	sbc  l                                           ; $7dcd: $9d
	ld   [hl], c                                     ; $7dce: $71
	ld   l, l                                        ; $7dcf: $6d
	ld   e, c                                        ; $7dd0: $59
	sub  a                                           ; $7dd1: $97
	dec  c                                           ; $7dd2: $0d
	ld   e, c                                        ; $7dd3: $59
	and  c                                           ; $7dd4: $a1
	add  a                                           ; $7dd5: $87
	and  c                                           ; $7dd6: $a1
	ld   h, l                                        ; $7dd7: $65
	ld   [hl], h                                     ; $7dd8: $74
	sub  d                                           ; $7dd9: $92
	sbc  c                                           ; $7dda: $99
	ld   l, d                                        ; $7ddb: $6a
	sbc  a                                           ; $7ddc: $9f
	dec  c                                           ; $7ddd: $0d
	nop                                              ; $7dde: $00
	ld   a, [bc]                                     ; $7ddf: $0a
	ld   bc, $7463                                   ; $7de0: $01 $63 $74
	halt                                             ; $7de3: $76
	rst  $38                                         ; $7de4: $ff
	sbc  [hl]                                        ; $7de5: $9e
	ld   h, [hl]                                     ; $7de6: $66
	sub  c                                           ; $7de7: $91
	ld   d, b                                        ; $7de8: $50
	sbc  [hl]                                        ; $7de9: $9e
	sub  b                                           ; $7dea: $90
	ld   d, h                                        ; $7deb: $54
	ld   [de], a                                     ; $7dec: $12
	ld   [bc], a                                     ; $7ded: $02
	sub  e                                           ; $7dee: $93
	dec  c                                           ; $7def: $0d
	inc  bc                                          ; $7df0: $03
	and  $04                                         ; $7df1: $e6 $04
	sub  b                                           ; $7df3: $90
	ld   h, a                                        ; $7df4: $67
	sbc  c                                           ; $7df5: $99
	ld   e, c                                        ; $7df6: $59
	sbc  a                                           ; $7df7: $9f
	dec  c                                           ; $7df8: $0d
	nop                                              ; $7df9: $00
	ld   a, [bc]                                     ; $7dfa: $0a
	nop                                              ; $7dfb: $00
	rrca                                             ; $7dfc: $0f
	nop                                              ; $7dfd: $00
	ld   bc, $5201                                   ; $7dfe: $01 $01 $52
	sbc  [hl]                                        ; $7e01: $9e
	ld   d, d                                        ; $7e02: $52
	ld   d, [hl]                                     ; $7e03: $56
	sbc  a                                           ; $7e04: $9f
	dec  c                                           ; $7e05: $0d
	inc  b                                           ; $7e06: $04
	ld   l, l                                        ; $7e07: $6d
	ld   a, l                                        ; $7e08: $7d
	sbc  [hl]                                        ; $7e09: $9e
	ld   e, b                                        ; $7e0a: $58
	ld   d, d                                        ; $7e0b: $52
	ld   h, l                                        ; $7e0c: $65
	ld   d, d                                        ; $7e0d: $52
	cp   d                                           ; $7e0e: $ba
	rst  ToBoot                                         ; $7e0f: $c7
	ei                                               ; $7e10: $fb
	xor  [hl]                                        ; $7e11: $ae
	ld   a, b                                        ; $7e12: $78
	and  c                                           ; $7e13: $a1
	ld   e, c                                        ; $7e14: $59
	dec  c                                           ; $7e15: $0d
	inc  bc                                          ; $7e16: $03
	ld   l, d                                        ; $7e17: $6a
	add  a                                           ; $7e18: $87
	ld   [hl], h                                     ; $7e19: $74
	adc  h                                           ; $7e1a: $8c
	ld   l, c                                        ; $7e1b: $69
	and  c                                           ; $7e1c: $a1
	sub  [hl]                                        ; $7e1d: $96
	sbc  a                                           ; $7e1e: $9f
	dec  c                                           ; $7e1f: $0d
	nop                                              ; $7e20: $00
	ld   a, [bc]                                     ; $7e21: $0a
	inc  e                                           ; $7e22: $1c
	ld   b, $02                                      ; $7e23: $06 $02
	ld   [bc], a                                     ; $7e25: $02
	ld   bc, $7c6b                                   ; $7e26: $01 $6b $7c
	and  e                                           ; $7e29: $a3
	or   l                                           ; $7e2a: $b5
	ld   a, c                                        ; $7e2b: $79
	ld   [hl], d                                     ; $7e2c: $72
	ld   d, d                                        ; $7e2d: $52
	ld   [hl], h                                     ; $7e2e: $74
	sbc  c                                           ; $7e2f: $99
	dec  c                                           ; $7e30: $0d
	cp   d                                           ; $7e31: $ba
	rst  ToBoot                                         ; $7e32: $c7
	ei                                               ; $7e33: $fb
	xor  [hl]                                        ; $7e34: $ae
	cp   [hl]                                        ; $7e35: $be
	ei                                               ; $7e36: $fb
	cp   d                                           ; $7e37: $ba
	ld   a, l                                        ; $7e38: $7d
	ld   a, b                                        ; $7e39: $78
	and  c                                           ; $7e3a: $a1
	ld   l, [hl]                                     ; $7e3b: $6e
	sbc  a                                           ; $7e3c: $9f
	dec  c                                           ; $7e3d: $0d
	ld   l, e                                        ; $7e3e: $6b
	sbc  d                                           ; $7e3f: $9a
	ld   a, c                                        ; $7e40: $79
	sbc  [hl]                                        ; $7e41: $9e
	ld   e, b                                        ; $7e42: $58
	ld   d, d                                        ; $7e43: $52
	ld   h, l                                        ; $7e44: $65
	ld   d, d                                        ; $7e45: $52
	cp   d                                           ; $7e46: $ba
	rst  ToBoot                                         ; $7e47: $c7
	ei                                               ; $7e48: $fb
	xor  [hl]                                        ; $7e49: $ae
	ld   sp, hl                                      ; $7e4a: $f9
	dec  c                                           ; $7e4b: $0d
	nop                                              ; $7e4c: $00
	ld   a, [bc]                                     ; $7e4d: $0a
	dec  e                                           ; $7e4e: $1d
	ld   b, b                                        ; $7e4f: $40
	ld   d, $03                                      ; $7e50: $16 $03
	ld   d, $01                                      ; $7e52: $16 $01
	ld   [bc], a                                     ; $7e54: $02
	add  hl, hl                                      ; $7e55: $29
	nop                                              ; $7e56: $00
	ld   bc, $5258                                   ; $7e57: $01 $58 $52
	ld   h, l                                        ; $7e5a: $65
	ld   d, d                                        ; $7e5b: $52
	ld   [hl], c                                     ; $7e5c: $71
	ld   [hl], h                                     ; $7e5d: $74
	ld   h, c                                        ; $7e5e: $61
	halt                                             ; $7e5f: $76
	ld   a, l                                        ; $7e60: $7d
	dec  c                                           ; $7e61: $0d
	inc  bc                                          ; $7e62: $03
	ld   l, d                                        ; $7e63: $6a
	add  a                                           ; $7e64: $87
	ld   l, l                                        ; $7e65: $6d
	and  c                                           ; $7e66: $a1
	ld   h, [hl]                                     ; $7e67: $66
	sub  c                                           ; $7e68: $91
	ld   a, e                                        ; $7e69: $7b
	ei                                               ; $7e6a: $fb
	ld   e, c                                        ; $7e6b: $59
	ld   a, [$a70d]                                  ; $7e6c: $fa $0d $a7
	cp   [hl]                                        ; $7e6f: $be
	ld   a, l                                        ; $7e70: $7d
	pop  bc                                          ; $7e71: $c1
	db   $e3                                         ; $7e72: $e3
	ld   l, [hl]                                     ; $7e73: $6e
	ld   l, d                                        ; $7e74: $6a
	sbc  a                                           ; $7e75: $9f
	dec  c                                           ; $7e76: $0d
	nop                                              ; $7e77: $00
	ld   a, [bc]                                     ; $7e78: $0a
	inc  e                                           ; $7e79: $1c
	ld   b, $05                                      ; $7e7a: $06 $05
	dec  b                                           ; $7e7c: $05
	ld   bc, $fb90                                   ; $7e7d: $01 $90 $fb
	sbc  [hl]                                        ; $7e80: $9e
	ld   h, l                                        ; $7e81: $65
	ld   e, c                                        ; $7e82: $59
	ld   l, l                                        ; $7e83: $6d
	ld   a, e                                        ; $7e84: $7b
	ei                                               ; $7e85: $fb
	ld   a, b                                        ; $7e86: $78
	sbc  a                                           ; $7e87: $9f
	dec  c                                           ; $7e88: $0d
	sub  b                                           ; $7e89: $90
	ld   d, h                                        ; $7e8a: $54
	ld   [de], a                                     ; $7e8b: $12
	ld   [bc], a                                     ; $7e8c: $02
	sub  e                                           ; $7e8d: $93
	inc  bc                                          ; $7e8e: $03
	and  $04                                         ; $7e8f: $e6 $04
	sub  b                                           ; $7e91: $90
	ld   h, a                                        ; $7e92: $67
	sbc  c                                           ; $7e93: $99
	ld   e, c                                        ; $7e94: $59
	rst  $38                                         ; $7e95: $ff
	rst  $38                                         ; $7e96: $ff
	dec  c                                           ; $7e97: $0d
	ld   e, b                                        ; $7e98: $58
	inc  bc                                          ; $7e99: $03
	ld   c, a                                        ; $7e9a: $4f
	sbc  [hl]                                        ; $7e9b: $9e
	ld   [hl], a                                     ; $7e9c: $77
	ld   [hl], c                                     ; $7e9d: $71
	ld   e, c                                        ; $7e9e: $59
	add  [hl]                                        ; $7e9f: $86
	ld   [bc], a                                     ; $7ea0: $02
	ld   a, a                                        ; $7ea1: $7f
	ld   e, a                                        ; $7ea2: $5f
	sub  [hl]                                        ; $7ea3: $96
	sbc  a                                           ; $7ea4: $9f
	dec  c                                           ; $7ea5: $0d
	nop                                              ; $7ea6: $00
	ld   a, [bc]                                     ; $7ea7: $0a
	nop                                              ; $7ea8: $00
	inc  e                                           ; $7ea9: $1c
	ld   b, $02                                      ; $7eaa: $06 $02
	ld   [bc], a                                     ; $7eac: $02
	ld   bc, $5477                                   ; $7ead: $01 $77 $54
	ld   h, l                                        ; $7eb0: $65
	ld   l, l                                        ; $7eb1: $6d
	ld   sp, hl                                      ; $7eb2: $f9
	db   $10                                         ; $7eb3: $10
	ld   l, [hl]                                     ; $7eb4: $6e
	and  c                                           ; $7eb5: $a1
	adc  h                                           ; $7eb6: $8c
	sbc  b                                           ; $7eb7: $98
	ld   e, c                                        ; $7eb8: $59
	ld   sp, hl                                      ; $7eb9: $f9
	dec  c                                           ; $7eba: $0d
	ld   l, e                                        ; $7ebb: $6b
	ld   a, h                                        ; $7ebc: $7c
	and  e                                           ; $7ebd: $a3
	or   l                                           ; $7ebe: $b5
	ld   a, c                                        ; $7ebf: $79
	ld   [hl], d                                     ; $7ec0: $72
	ld   d, d                                        ; $7ec1: $52
	ld   [hl], h                                     ; $7ec2: $74
	sbc  c                                           ; $7ec3: $99
	dec  c                                           ; $7ec4: $0d
	cp   d                                           ; $7ec5: $ba
	rst  ToBoot                                         ; $7ec6: $c7
	ei                                               ; $7ec7: $fb
	xor  [hl]                                        ; $7ec8: $ae
	cp   [hl]                                        ; $7ec9: $be
	ei                                               ; $7eca: $fb
	cp   d                                           ; $7ecb: $ba
	ld   a, l                                        ; $7ecc: $7d
	ld   a, b                                        ; $7ecd: $78
	and  c                                           ; $7ece: $a1
	ld   l, [hl]                                     ; $7ecf: $6e
	ld   sp, hl                                      ; $7ed0: $f9
	dec  c                                           ; $7ed1: $0d
	nop                                              ; $7ed2: $00
	ld   a, [bc]                                     ; $7ed3: $0a
	ld   bc, $0008                                   ; $7ed4: $01 $08 $00
	sbc  a                                           ; $7ed7: $9f
	dec  c                                           ; $7ed8: $0d
	ld   e, b                                        ; $7ed9: $58
	inc  bc                                          ; $7eda: $03
	ld   c, a                                        ; $7edb: $4f
	sbc  [hl]                                        ; $7edc: $9e
	ld   d, b                                        ; $7edd: $50
	ld   l, l                                        ; $7ede: $6d
	ld   d, d                                        ; $7edf: $52
	ld   a, h                                        ; $7ee0: $7c
	cp   d                                           ; $7ee1: $ba
	rst  ToBoot                                         ; $7ee2: $c7
	ei                                               ; $7ee3: $fb
	xor  [hl]                                        ; $7ee4: $ae
	dec  c                                           ; $7ee5: $0d
	inc  bc                                          ; $7ee6: $03
	ld   l, d                                        ; $7ee7: $6a
	ld   [hl], c                                     ; $7ee8: $71
	ld   l, l                                        ; $7ee9: $6d
	ld   l, [hl]                                     ; $7eea: $6e
	sbc  e                                           ; $7eeb: $9b
	ld   a, [$000d]                                  ; $7eec: $fa $0d $00
	ld   a, [bc]                                     ; $7eef: $0a
	dec  e                                           ; $7ef0: $1d
	ld   b, b                                        ; $7ef1: $40
	ld   d, $03                                      ; $7ef2: $16 $03
	ld   d, $01                                      ; $7ef4: $16 $01
	inc  bc                                          ; $7ef6: $03
	add  hl, hl                                      ; $7ef7: $29
	nop                                              ; $7ef8: $00
	ld   bc, $4a03                                   ; $7ef9: $01 $03 $4a
	inc  bc                                          ; $7efc: $03
	jp   c, $0279                                    ; $7efd: $da $79 $02

	sbc  l                                           ; $7f00: $9d
	ld   d, [hl]                                     ; $7f01: $56
	ld   a, [hl]                                     ; $7f02: $7e
	ld   [bc], a                                     ; $7f03: $02
	adc  d                                           ; $7f04: $8a
	ld   h, l                                        ; $7f05: $65
	ld   [hl], h                                     ; $7f06: $74
	sub  d                                           ; $7f07: $92
	ld   [hl], c                                     ; $7f08: $71
	ld   l, l                                        ; $7f09: $6d
	dec  c                                           ; $7f0a: $0d
	ld   a, h                                        ; $7f0b: $7c
	ld   a, c                                        ; $7f0c: $79
	ld   a, b                                        ; $7f0d: $78
	sbc  a                                           ; $7f0e: $9f
	dec  c                                           ; $7f0f: $0d
	nop                                              ; $7f10: $00
	ld   a, [bc]                                     ; $7f11: $0a
	inc  e                                           ; $7f12: $1c
	ld   b, $05                                      ; $7f13: $06 $05
	dec  b                                           ; $7f15: $05
	ld   bc, $5965                                   ; $7f16: $01 $65 $59
	ld   l, l                                        ; $7f19: $6d
	ld   a, e                                        ; $7f1a: $7b
	ei                                               ; $7f1b: $fb
	ld   a, b                                        ; $7f1c: $78
	sbc  a                                           ; $7f1d: $9f
	dec  c                                           ; $7f1e: $0d
	sub  b                                           ; $7f1f: $90
	ld   d, h                                        ; $7f20: $54
	ld   [de], a                                     ; $7f21: $12
	ld   [bc], a                                     ; $7f22: $02
	sub  e                                           ; $7f23: $93
	inc  bc                                          ; $7f24: $03
	and  $04                                         ; $7f25: $e6 $04
	sub  b                                           ; $7f27: $90
	ld   h, a                                        ; $7f28: $67
	sbc  c                                           ; $7f29: $99
	ld   e, c                                        ; $7f2a: $59
	rst  $38                                         ; $7f2b: $ff
	rst  $38                                         ; $7f2c: $ff
	dec  c                                           ; $7f2d: $0d
	ld   e, b                                        ; $7f2e: $58
	inc  bc                                          ; $7f2f: $03
	ld   c, a                                        ; $7f30: $4f
	sbc  [hl]                                        ; $7f31: $9e
	ld   [hl], a                                     ; $7f32: $77
	ld   [hl], c                                     ; $7f33: $71
	ld   e, c                                        ; $7f34: $59
	add  [hl]                                        ; $7f35: $86
	ld   [bc], a                                     ; $7f36: $02
	ld   a, a                                        ; $7f37: $7f
	ld   e, a                                        ; $7f38: $5f
	sub  [hl]                                        ; $7f39: $96
	sbc  a                                           ; $7f3a: $9f
	dec  c                                           ; $7f3b: $0d
	nop                                              ; $7f3c: $00
	ld   a, [bc]                                     ; $7f3d: $0a
	nop                                              ; $7f3e: $00
	rrca                                             ; $7f3f: $0f
	nop                                              ; $7f40: $00
	ld   bc, $0101                                   ; $7f41: $01 $01 $01
	inc  bc                                          ; $7f44: $03
	ld   h, c                                        ; $7f45: $61
	sbc  d                                           ; $7f46: $9a
	ld   a, l                                        ; $7f47: $7d
	ld   e, e                                        ; $7f48: $5b
	ld   [hl], c                                     ; $7f49: $71
	halt                                             ; $7f4a: $76
	dec  c                                           ; $7f4b: $0d
	db   $10                                         ; $7f4c: $10
	xor  h                                           ; $7f4d: $ac
	push af                                          ; $7f4e: $f5
	bit  4, e                                        ; $7f4f: $cb $63
	and  c                                           ; $7f51: $a1
	ld   a, h                                        ; $7f52: $7c
	ld   l, [hl]                                     ; $7f53: $6e
	ld   a, b                                        ; $7f54: $78
	rst  $38                                         ; $7f55: $ff
	rst  $38                                         ; $7f56: $ff
	dec  c                                           ; $7f57: $0d
	db   $10                                         ; $7f58: $10
	ld   h, [hl]                                     ; $7f59: $66
	sub  c                                           ; $7f5a: $91
	ld   d, b                                        ; $7f5b: $50
	sbc  [hl]                                        ; $7f5c: $9e
	ld   e, d                                        ; $7f5d: $5a
	adc  h                                           ; $7f5e: $8c
	and  c                                           ; $7f5f: $a1
	ld   h, l                                        ; $7f60: $65
	sub  [hl]                                        ; $7f61: $96
	ld   bc, $0d04                                   ; $7f62: $01 $04 $0d
	nop                                              ; $7f65: $00
	ld   a, [bc]                                     ; $7f66: $0a
	inc  c                                           ; $7f67: $0c
	dec  bc                                          ; $7f68: $0b
	inc  e                                           ; $7f69: $1c
	ld   b, $01                                      ; $7f6a: $06 $01
	ld   bc, $9601                                   ; $7f6c: $01 $01 $96
	ei                                               ; $7f6f: $fb
	ld   h, l                                        ; $7f70: $65
	sbc  [hl]                                        ; $7f71: $9e
	db   $e3                                         ; $7f72: $e3
	cp   b                                           ; $7f73: $b8
	inc  bc                                          ; $7f74: $03
	ld   l, d                                        ; $7f75: $6a
	ld   d, h                                        ; $7f76: $54
	ld   l, d                                        ; $7f77: $6a
	ld   a, [$000d]                                  ; $7f78: $fa $0d $00
	ld   a, [bc]                                     ; $7f7b: $0a
	inc  e                                           ; $7f7c: $1c
	ld   b, $00                                      ; $7f7d: $06 $00
	nop                                              ; $7f7f: $00
	ld   bc, $9e58                                   ; $7f80: $01 $58 $9e
	ld   [$9f00], sp                                 ; $7f83: $08 $00 $9f
	dec  c                                           ; $7f86: $0d
	ld   a, b                                        ; $7f87: $78
	ld   a, c                                        ; $7f88: $79
	ld   h, l                                        ; $7f89: $65
	ld   [hl], h                                     ; $7f8a: $74
	and  c                                           ; $7f8b: $a1
	ld   l, [hl]                                     ; $7f8c: $6e
	ld   sp, hl                                      ; $7f8d: $f9
	dec  c                                           ; $7f8e: $0d
	nop                                              ; $7f8f: $00
	ld   a, [bc]                                     ; $7f90: $0a
	add  hl, de                                      ; $7f91: $19
	dec  b                                           ; $7f92: $05
	inc  bc                                          ; $7f93: $03
	cp   d                                           ; $7f94: $ba
	rst  ToBoot                                         ; $7f95: $c7
	ei                                               ; $7f96: $fb
	xor  [hl]                                        ; $7f97: $ae
	and  b                                           ; $7f98: $a0
	ld   [bc], a                                     ; $7f99: $02
	sub  l                                           ; $7f9a: $95
	inc  b                                           ; $7f9b: $04
	ld   h, $71                                      ; $7f9c: $26 $71
	ld   [hl], h                                     ; $7f9e: $74
	adc  h                                           ; $7f9f: $8c
	ld   h, l                                        ; $7fa0: $65
	ld   l, l                                        ; $7fa1: $6d
	nop                                              ; $7fa2: $00
	nop                                              ; $7fa3: $00
	cp   d                                           ; $7fa4: $ba
	rst  ToBoot                                         ; $7fa5: $c7
	ei                                               ; $7fa6: $fb
	xor  [hl]                                        ; $7fa7: $ae
	ld   a, c                                        ; $7fa8: $79
	ld   [bc], a                                     ; $7fa9: $02
	sub  l                                           ; $7faa: $95
	halt                                             ; $7fab: $76
	sbc  d                                           ; $7fac: $9a
	ld   [hl], h                                     ; $7fad: $74
	adc  h                                           ; $7fae: $8c
	ld   h, l                                        ; $7faf: $65
	ld   l, l                                        ; $7fb0: $6d
	nop                                              ; $7fb1: $00
	ld   bc, $c7ba                                   ; $7fb2: $01 $ba $c7
	ei                                               ; $7fb5: $fb
	xor  [hl]                                        ; $7fb6: $ae
	ld   [hl], l                                     ; $7fb7: $75
	ld   h, a                                        ; $7fb8: $67
	ld   a, e                                        ; $7fb9: $7b
	nop                                              ; $7fba: $00
	ld   [bc], a                                     ; $7fbb: $02
	rlca                                             ; $7fbc: $07
	dec  a                                           ; $7fbd: $3d
	inc  bc                                          ; $7fbe: $03
	ld   [bc], a                                     ; $7fbf: $02
	inc  bc                                          ; $7fc0: $03
	ld   bc, $2000                                   ; $7fc1: $01 $00 $20
	nop                                              ; $7fc4: $00
	rlca                                             ; $7fc5: $07
	sub  h                                           ; $7fc6: $94
	inc  bc                                          ; $7fc7: $03
	ld   [bc], a                                     ; $7fc8: $02
	inc  bc                                          ; $7fc9: $03
	ld   bc, $2001                                   ; $7fca: $01 $01 $20
	nop                                              ; $7fcd: $00
	rlca                                             ; $7fce: $07
	rst  JumpTable                                         ; $7fcf: $df
	inc  bc                                          ; $7fd0: $03
	ld   [bc], a                                     ; $7fd1: $02
	inc  bc                                          ; $7fd2: $03
	ld   bc, $2002                                   ; $7fd3: $01 $02 $20
	nop                                              ; $7fd6: $00
	ld   b, $43                                      ; $7fd7: $06 $43
	inc  b                                           ; $7fd9: $04
	rrca                                             ; $7fda: $0f
	nop                                              ; $7fdb: $00
	ld   bc, $ac01                                   ; $7fdc: $01 $01 $ac
	push af                                          ; $7fdf: $f5
	bit  4, e                                        ; $7fe0: $cb $63
	and  c                                           ; $7fe2: $a1
	ld   a, h                                        ; $7fe3: $7c
	cp   d                                           ; $7fe4: $ba
	rst  ToBoot                                         ; $7fe5: $c7
	ei                                               ; $7fe6: $fb
	xor  [hl]                                        ; $7fe7: $ae
	and  b                                           ; $7fe8: $a0
	dec  c                                           ; $7fe9: $0d
	ld   [bc], a                                     ; $7fea: $02
	sub  l                                           ; $7feb: $95
	inc  b                                           ; $7fec: $04
	ld   h, $71                                      ; $7fed: $26 $71
	ld   [hl], h                                     ; $7fef: $74
	ld   d, d                                        ; $7ff0: $52
	adc  h                                           ; $7ff1: $8c
	ld   h, l                                        ; $7ff2: $65
	ld   l, l                                        ; $7ff3: $6d
	sbc  a                                           ; $7ff4: $9f
	dec  c                                           ; $7ff5: $0d
	nop                                              ; $7ff6: $00
	ld   a, [bc]                                     ; $7ff7: $0a
	inc  e                                           ; $7ff8: $1c
	ld   b, $01                                      ; $7ff9: $06 $01
	ld   bc, $401d                                   ; $7ffb: $01 $1d $40
	ld   d, $03                                      ; $7ffe: $16 $03
