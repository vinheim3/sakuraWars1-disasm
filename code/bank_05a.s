; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $05a", ROMX[$4000], BANK[$5a]

	dec  c                                           ; $4000: $0d
	nop                                              ; $4001: $00
	ld   a, [bc]                                     ; $4002: $0a
	add  hl, de                                      ; $4003: $19
	dec  b                                           ; $4004: $05
	inc  bc                                          ; $4005: $03
	sub  $eb                                         ; $4006: $d6 $eb
	push af                                          ; $4008: $f5
	cp   b                                           ; $4009: $b8
	ei                                               ; $400a: $fb
	call $0000                                      ; $400b: $cd $00 $00
	sub  $eb                                         ; $400e: $d6 $eb
	push af                                          ; $4010: $f5
	cp   [hl]                                        ; $4011: $be
	pop  af                                          ; $4012: $f1
	ei                                               ; $4013: $fb
	cp   e                                           ; $4014: $bb
	nop                                              ; $4015: $00
	ld   bc, $678d                                   ; $4016: $01 $8d $67
	ld   l, b                                        ; $4019: $68
	ld   l, a                                        ; $401a: $6f
	sub  c                                           ; $401b: $91
	and  c                                           ; $401c: $a1
	nop                                              ; $401d: $00
	ld   [bc], a                                     ; $401e: $02
	rlca                                             ; $401f: $07
	or   l                                           ; $4020: $b5
	inc  b                                           ; $4021: $04
	ld   [bc], a                                     ; $4022: $02
	inc  bc                                          ; $4023: $03
	ld   bc, $2000                                   ; $4024: $01 $00 $20
	nop                                              ; $4027: $00
	rlca                                             ; $4028: $07
	jp   nc, $0204                                   ; $4029: $d2 $04 $02

	inc  bc                                          ; $402c: $03
	ld   bc, $2001                                   ; $402d: $01 $01 $20
	nop                                              ; $4030: $00
	rlca                                             ; $4031: $07
	jp   nc, $0204                                   ; $4032: $d2 $04 $02

	inc  bc                                          ; $4035: $03
	ld   bc, $2002                                   ; $4036: $01 $02 $20
	nop                                              ; $4039: $00
	ld   b, $d2                                      ; $403a: $06 $d2
	inc  b                                           ; $403c: $04
	inc  e                                           ; $403d: $1c
	rrca                                             ; $403e: $0f
	ld   bc, $1401                                   ; $403f: $01 $01 $14
	dec  de                                          ; $4042: $1b
	ld   bc, $0301                                   ; $4043: $01 $01 $03
	ld   c, d                                        ; $4046: $4a
	ld   [bc], a                                     ; $4047: $02
	or   h                                           ; $4048: $b4
	ld   l, [hl]                                     ; $4049: $6e
	sbc  a                                           ; $404a: $9f
	dec  c                                           ; $404b: $0d
	nop                                              ; $404c: $00
	ld   a, [bc]                                     ; $404d: $0a
	dec  b                                           ; $404e: $05
	ld   b, b                                        ; $404f: $40
	rst  $38                                         ; $4050: $ff
	inc  bc                                          ; $4051: $03
	rst  $38                                         ; $4052: $ff
	ld   bc, $2801                                   ; $4053: $01 $01 $28
	nop                                              ; $4056: $00
	ld   b, $64                                      ; $4057: $06 $64
	ld   bc, $0f1c                                   ; $4059: $01 $1c $0f
	ld   [bc], a                                     ; $405c: $02
	ld   [bc], a                                     ; $405d: $02
	inc  d                                           ; $405e: $14
	inc  e                                           ; $405f: $1c
	ld   bc, $0301                                   ; $4060: $01 $01 $03
	jr   z, jr_05a_4069                              ; $4063: $28 $04

	ld   c, b                                        ; $4065: $48
	ld   l, [hl]                                     ; $4066: $6e
	ld   [hl], c                                     ; $4067: $71
	ld   l, l                                        ; $4068: $6d

jr_05a_4069:
	ld   a, b                                        ; $4069: $78
	rst  $38                                         ; $406a: $ff
	rst  $38                                         ; $406b: $ff
	dec  c                                           ; $406c: $0d
	inc  bc                                          ; $406d: $03
	ld   c, d                                        ; $406e: $4a
	ld   [bc], a                                     ; $406f: $02
	or   h                                           ; $4070: $b4
	ld   a, l                                        ; $4071: $7d
	ld   bc, $d607                                   ; $4072: $01 $07 $d6
	db   $eb                                         ; $4075: $eb
	push af                                          ; $4076: $f5
	cp   b                                           ; $4077: $b8
	ei                                               ; $4078: $fb
	call $0801                                       ; $4079: $cd $01 $08
	ld   l, [hl]                                     ; $407c: $6e
	sbc  a                                           ; $407d: $9f
	dec  c                                           ; $407e: $0d
	nop                                              ; $407f: $00
	ld   a, [bc]                                     ; $4080: $0a
	ld   b, $64                                      ; $4081: $06 $64
	ld   bc, $9807                                   ; $4083: $01 $07 $98
	dec  b                                           ; $4086: $05
	inc  b                                           ; $4087: $04
	add  b                                           ; $4088: $80
	ld   d, h                                        ; $4089: $54
	ld   bc, $20ff                                   ; $408a: $01 $ff $20
	nop                                              ; $408d: $00
	dec  b                                           ; $408e: $05
	add  b                                           ; $408f: $80
	ld   d, h                                        ; $4090: $54
	ld   bc, $0001                                   ; $4091: $01 $01 $00
	ld   bc, $a5a3                                   ; $4094: $01 $a3 $a5
	db   $ec                                         ; $4097: $ec
	cp   d                                           ; $4098: $ba
	ld   e, d                                        ; $4099: $5a
	inc  bc                                          ; $409a: $03
	cp   c                                           ; $409b: $b9
	sbc  c                                           ; $409c: $99
	dec  c                                           ; $409d: $0d
	ld   [bc], a                                     ; $409e: $02
	jr   c, jr_05a_40a5                              ; $409f: $38 $04

	ld   d, d                                        ; $40a1: $52
	ld   a, h                                        ; $40a2: $7c
	inc  bc                                          ; $40a3: $03
	dec  bc                                          ; $40a4: $0b

jr_05a_40a5:
	ld   a, l                                        ; $40a5: $7d
	ld   sp, hl                                      ; $40a6: $f9
	dec  c                                           ; $40a7: $0d
	nop                                              ; $40a8: $00
	ld   a, [bc]                                     ; $40a9: $0a
	add  hl, de                                      ; $40aa: $19
	dec  b                                           ; $40ab: $05
	inc  bc                                          ; $40ac: $03
	and  l                                           ; $40ad: $a5
	xor  c                                           ; $40ae: $a9
	rst  $28                                         ; $40af: $ef
	ei                                               ; $40b0: $fb
	nop                                              ; $40b1: $00
	nop                                              ; $40b2: $00
	xor  $c4                                         ; $40b3: $ee $c4
	jp   z, Boot                                     ; $40b5: $ca $00 $01

	push de                                          ; $40b8: $d5
	push af                                          ; $40b9: $f5
	or   b                                           ; $40ba: $b0
	nop                                              ; $40bb: $00
	ld   [bc], a                                     ; $40bc: $02
	rlca                                             ; $40bd: $07
	ld   d, e                                        ; $40be: $53
	dec  b                                           ; $40bf: $05
	ld   [bc], a                                     ; $40c0: $02
	inc  bc                                          ; $40c1: $03
	ld   bc, $2000                                   ; $40c2: $01 $00 $20
	nop                                              ; $40c5: $00
	rlca                                             ; $40c6: $07
	ld   [hl], b                                     ; $40c7: $70
	dec  b                                           ; $40c8: $05
	ld   [bc], a                                     ; $40c9: $02
	inc  bc                                          ; $40ca: $03
	ld   bc, $2001                                   ; $40cb: $01 $01 $20
	nop                                              ; $40ce: $00
	rlca                                             ; $40cf: $07
	ld   [hl], b                                     ; $40d0: $70
	dec  b                                           ; $40d1: $05
	ld   [bc], a                                     ; $40d2: $02
	inc  bc                                          ; $40d3: $03
	ld   bc, $2002                                   ; $40d4: $01 $02 $20
	nop                                              ; $40d7: $00
	ld   b, $70                                      ; $40d8: $06 $70
	dec  b                                           ; $40da: $05
	inc  e                                           ; $40db: $1c
	rrca                                             ; $40dc: $0f
	ld   bc, $1401                                   ; $40dd: $01 $01 $14
	dec  de                                          ; $40e0: $1b
	ld   bc, $0301                                   ; $40e1: $01 $01 $03
	ld   c, d                                        ; $40e4: $4a
	ld   [bc], a                                     ; $40e5: $02
	or   h                                           ; $40e6: $b4
	ld   l, [hl]                                     ; $40e7: $6e
	sbc  a                                           ; $40e8: $9f
	dec  c                                           ; $40e9: $0d
	nop                                              ; $40ea: $00
	ld   a, [bc]                                     ; $40eb: $0a
	dec  b                                           ; $40ec: $05
	ld   b, b                                        ; $40ed: $40
	rst  $38                                         ; $40ee: $ff
	inc  bc                                          ; $40ef: $03
	rst  $38                                         ; $40f0: $ff
	ld   bc, $2801                                   ; $40f1: $01 $01 $28
	nop                                              ; $40f4: $00
	ld   b, $64                                      ; $40f5: $06 $64
	ld   bc, $0f1c                                   ; $40f7: $01 $1c $0f
	ld   [bc], a                                     ; $40fa: $02
	ld   [bc], a                                     ; $40fb: $02
	inc  d                                           ; $40fc: $14
	inc  e                                           ; $40fd: $1c
	ld   bc, $0301                                   ; $40fe: $01 $01 $03
	jr   z, jr_05a_4107                              ; $4101: $28 $04

	ld   c, b                                        ; $4103: $48
	ld   l, [hl]                                     ; $4104: $6e
	ld   [hl], c                                     ; $4105: $71
	ld   l, l                                        ; $4106: $6d

jr_05a_4107:
	ld   a, b                                        ; $4107: $78
	rst  $38                                         ; $4108: $ff
	rst  $38                                         ; $4109: $ff
	dec  c                                           ; $410a: $0d
	inc  bc                                          ; $410b: $03
	ld   c, d                                        ; $410c: $4a
	ld   [bc], a                                     ; $410d: $02
	or   h                                           ; $410e: $b4
	ld   a, l                                        ; $410f: $7d
	ld   bc, $a507                                   ; $4110: $01 $07 $a5
	xor  c                                           ; $4113: $a9
	rst  $28                                         ; $4114: $ef
	ei                                               ; $4115: $fb
	ld   bc, $6e08                                   ; $4116: $01 $08 $6e
	sbc  a                                           ; $4119: $9f
	dec  c                                           ; $411a: $0d
	nop                                              ; $411b: $00
	ld   a, [bc]                                     ; $411c: $0a
	ld   b, $64                                      ; $411d: $06 $64
	ld   bc, $4107                                   ; $411f: $01 $07 $41
	ld   b, $04                                      ; $4122: $06 $04
	add  b                                           ; $4124: $80
	ld   d, l                                        ; $4125: $55
	ld   bc, $20ff                                   ; $4126: $01 $ff $20
	nop                                              ; $4129: $00
	dec  b                                           ; $412a: $05
	add  b                                           ; $412b: $80
	ld   d, l                                        ; $412c: $55
	ld   bc, $0001                                   ; $412d: $01 $01 $00
	ld   bc, $5103                                   ; $4130: $01 $03 $51
	ld   [bc], a                                     ; $4133: $02
	ld   a, [hl]                                     ; $4134: $7e
	inc  b                                           ; $4135: $04
	ret  z                                           ; $4136: $c8

	ld   a, l                                        ; $4137: $7d
	ld   [hl], a                                     ; $4138: $77
	and  c                                           ; $4139: $a1
	ld   a, b                                        ; $413a: $78
	inc  bc                                          ; $413b: $03
	cp   c                                           ; $413c: $b9
	sbc  b                                           ; $413d: $98
	inc  b                                           ; $413e: $04
	sub  d                                           ; $413f: $92
	ld   sp, hl                                      ; $4140: $f9
	dec  c                                           ; $4141: $0d
	nop                                              ; $4142: $00
	ld   a, [bc]                                     ; $4143: $0a
	add  hl, de                                      ; $4144: $19
	dec  b                                           ; $4145: $05
	inc  bc                                          ; $4146: $03
	ld   [bc], a                                     ; $4147: $02
	or   [hl]                                        ; $4148: $b6
	and  b                                           ; $4149: $a0
	inc  b                                           ; $414a: $04
	ld   a, a                                        ; $414b: $7f
	add  h                                           ; $414c: $84
	nop                                              ; $414d: $00
	nop                                              ; $414e: $00
	inc  bc                                          ; $414f: $03
	adc  $04                                         ; $4150: $ce $04
	ret  c                                           ; $4152: $d8

	and  b                                           ; $4153: $a0
	sub  b                                           ; $4154: $90
	ld   e, [hl]                                     ; $4155: $5e
	sbc  c                                           ; $4156: $99
	nop                                              ; $4157: $00
	ld   bc, $a303                                   ; $4158: $01 $03 $a3
	ld   [bc], a                                     ; $415b: $02
	add  l                                           ; $415c: $85
	and  b                                           ; $415d: $a0
	dec  b                                           ; $415e: $05
	db   $dd                                         ; $415f: $dd
	adc  [hl]                                        ; $4160: $8e
	nop                                              ; $4161: $00
	ld   [bc], a                                     ; $4162: $02
	rlca                                             ; $4163: $07
	ld   sp, hl                                      ; $4164: $f9
	dec  b                                           ; $4165: $05
	ld   [bc], a                                     ; $4166: $02
	inc  bc                                          ; $4167: $03
	ld   bc, $2000                                   ; $4168: $01 $00 $20
	nop                                              ; $416b: $00
	rlca                                             ; $416c: $07
	ld   d, $06                                      ; $416d: $16 $06
	ld   [bc], a                                     ; $416f: $02
	inc  bc                                          ; $4170: $03
	ld   bc, $2001                                   ; $4171: $01 $01 $20
	nop                                              ; $4174: $00
	rlca                                             ; $4175: $07
	ld   d, $06                                      ; $4176: $16 $06
	ld   [bc], a                                     ; $4178: $02
	inc  bc                                          ; $4179: $03
	ld   bc, $2002                                   ; $417a: $01 $02 $20
	nop                                              ; $417d: $00
	ld   b, $16                                      ; $417e: $06 $16
	ld   b, $1c                                      ; $4180: $06 $1c
	rrca                                             ; $4182: $0f
	ld   bc, $1401                                   ; $4183: $01 $01 $14
	dec  de                                          ; $4186: $1b
	ld   bc, $0301                                   ; $4187: $01 $01 $03
	ld   c, d                                        ; $418a: $4a
	ld   [bc], a                                     ; $418b: $02
	or   h                                           ; $418c: $b4
	ld   l, [hl]                                     ; $418d: $6e
	sbc  a                                           ; $418e: $9f
	dec  c                                           ; $418f: $0d
	nop                                              ; $4190: $00
	ld   a, [bc]                                     ; $4191: $0a
	dec  b                                           ; $4192: $05
	ld   b, b                                        ; $4193: $40
	rst  $38                                         ; $4194: $ff
	inc  bc                                          ; $4195: $03
	rst  $38                                         ; $4196: $ff
	ld   bc, $2801                                   ; $4197: $01 $01 $28
	nop                                              ; $419a: $00
	ld   b, $64                                      ; $419b: $06 $64
	ld   bc, $0f1c                                   ; $419d: $01 $1c $0f
	ld   [bc], a                                     ; $41a0: $02
	ld   [bc], a                                     ; $41a1: $02
	inc  d                                           ; $41a2: $14
	inc  e                                           ; $41a3: $1c
	ld   bc, $0301                                   ; $41a4: $01 $01 $03
	jr   z, jr_05a_41ad                              ; $41a7: $28 $04

	ld   c, b                                        ; $41a9: $48
	ld   l, [hl]                                     ; $41aa: $6e
	ld   [hl], c                                     ; $41ab: $71
	ld   l, l                                        ; $41ac: $6d

jr_05a_41ad:
	ld   a, b                                        ; $41ad: $78
	rst  $38                                         ; $41ae: $ff
	rst  $38                                         ; $41af: $ff
	dec  c                                           ; $41b0: $0d
	inc  bc                                          ; $41b1: $03
	ld   c, d                                        ; $41b2: $4a
	ld   [bc], a                                     ; $41b3: $02
	or   h                                           ; $41b4: $b4
	ld   a, l                                        ; $41b5: $7d
	sbc  [hl]                                        ; $41b6: $9e
	ld   bc, $0207                                   ; $41b7: $01 $07 $02
	or   [hl]                                        ; $41ba: $b6
	and  b                                           ; $41bb: $a0
	inc  b                                           ; $41bc: $04
	ld   a, a                                        ; $41bd: $7f
	add  h                                           ; $41be: $84
	ld   bc, $6e08                                   ; $41bf: $01 $08 $6e
	sbc  a                                           ; $41c2: $9f
	dec  c                                           ; $41c3: $0d
	nop                                              ; $41c4: $00
	ld   a, [bc]                                     ; $41c5: $0a
	ld   b, $64                                      ; $41c6: $06 $64
	ld   bc, $ed07                                   ; $41c8: $01 $07 $ed
	ld   b, $04                                      ; $41cb: $06 $04
	add  b                                           ; $41cd: $80
	ld   d, [hl]                                     ; $41ce: $56
	ld   bc, $20ff                                   ; $41cf: $01 $ff $20
	nop                                              ; $41d2: $00
	dec  b                                           ; $41d3: $05
	add  b                                           ; $41d4: $80
	ld   d, [hl]                                     ; $41d5: $56
	ld   bc, $0001                                   ; $41d6: $01 $01 $00
	ld   bc, $a5a3                                   ; $41d9: $01 $a3 $a5
	db   $ec                                         ; $41dc: $ec
	cp   d                                           ; $41dd: $ba
	ld   a, h                                        ; $41de: $7c
	dec  c                                           ; $41df: $0d
	ld   e, b                                        ; $41e0: $58
	inc  b                                           ; $41e1: $04
	ld   l, $63                                      ; $41e2: $2e $63
	and  c                                           ; $41e4: $a1
	halt                                             ; $41e5: $76
	ld   e, b                                        ; $41e6: $58
	inc  b                                           ; $41e7: $04
	add  c                                           ; $41e8: $81
	ld   h, e                                        ; $41e9: $63
	and  c                                           ; $41ea: $a1
	ld   a, l                                        ; $41eb: $7d
	dec  c                                           ; $41ec: $0d
	ld   a, b                                        ; $41ed: $78
	ld   a, c                                        ; $41ee: $79
	inc  bc                                          ; $41ef: $03
	add  d                                           ; $41f0: $82
	ld   sp, hl                                      ; $41f1: $f9
	dec  c                                           ; $41f2: $0d
	nop                                              ; $41f3: $00
	ld   a, [bc]                                     ; $41f4: $0a
	add  hl, de                                      ; $41f5: $19
	dec  b                                           ; $41f6: $05
	inc  bc                                          ; $41f7: $03
	sub  $eb                                         ; $41f8: $d6 $eb
	push af                                          ; $41fa: $f5
	cp   d                                           ; $41fb: $ba
	inc  bc                                          ; $41fc: $03
	add  d                                           ; $41fd: $82
	nop                                              ; $41fe: $00
	nop                                              ; $41ff: $00
	sub  $eb                                         ; $4200: $d6 $eb
	push af                                          ; $4202: $f5
	cp   d                                           ; $4203: $ba
	jp   nc, $00f5                                   ; $4204: $d2 $f5 $00

	ld   bc, $afa5                                   ; $4207: $01 $a5 $af
	db   $ec                                         ; $420a: $ec
	cp   d                                           ; $420b: $ba
	inc  bc                                          ; $420c: $03
	add  d                                           ; $420d: $82
	nop                                              ; $420e: $00
	ld   [bc], a                                     ; $420f: $02
	rlca                                             ; $4210: $07
	and  [hl]                                        ; $4211: $a6
	ld   b, $02                                      ; $4212: $06 $02
	inc  bc                                          ; $4214: $03
	ld   bc, $2000                                   ; $4215: $01 $00 $20
	nop                                              ; $4218: $00
	rlca                                             ; $4219: $07
	jp   $0206                                       ; $421a: $c3 $06 $02


	inc  bc                                          ; $421d: $03
	ld   bc, $2001                                   ; $421e: $01 $01 $20
	nop                                              ; $4221: $00
	rlca                                             ; $4222: $07
	jp   $0206                                       ; $4223: $c3 $06 $02


	inc  bc                                          ; $4226: $03
	ld   bc, $2002                                   ; $4227: $01 $02 $20
	nop                                              ; $422a: $00
	ld   b, $c3                                      ; $422b: $06 $c3
	ld   b, $1c                                      ; $422d: $06 $1c
	rrca                                             ; $422f: $0f
	ld   bc, $1401                                   ; $4230: $01 $01 $14
	dec  de                                          ; $4233: $1b
	ld   bc, $0301                                   ; $4234: $01 $01 $03
	ld   c, d                                        ; $4237: $4a
	ld   [bc], a                                     ; $4238: $02
	or   h                                           ; $4239: $b4
	ld   l, [hl]                                     ; $423a: $6e
	sbc  a                                           ; $423b: $9f
	dec  c                                           ; $423c: $0d
	nop                                              ; $423d: $00
	ld   a, [bc]                                     ; $423e: $0a
	dec  b                                           ; $423f: $05
	ld   b, b                                        ; $4240: $40
	rst  $38                                         ; $4241: $ff
	inc  bc                                          ; $4242: $03
	rst  $38                                         ; $4243: $ff
	ld   bc, $2801                                   ; $4244: $01 $01 $28
	nop                                              ; $4247: $00
	ld   b, $64                                      ; $4248: $06 $64
	ld   bc, $0f1c                                   ; $424a: $01 $1c $0f
	ld   [bc], a                                     ; $424d: $02
	ld   [bc], a                                     ; $424e: $02
	inc  d                                           ; $424f: $14
	inc  e                                           ; $4250: $1c
	ld   bc, $0301                                   ; $4251: $01 $01 $03
	jr   z, jr_05a_425a                              ; $4254: $28 $04

	ld   c, b                                        ; $4256: $48
	ld   l, [hl]                                     ; $4257: $6e
	ld   [hl], c                                     ; $4258: $71
	ld   l, l                                        ; $4259: $6d

jr_05a_425a:
	ld   a, b                                        ; $425a: $78
	rst  $38                                         ; $425b: $ff
	rst  $38                                         ; $425c: $ff
	dec  c                                           ; $425d: $0d
	inc  bc                                          ; $425e: $03
	ld   c, d                                        ; $425f: $4a
	ld   [bc], a                                     ; $4260: $02
	or   h                                           ; $4261: $b4
	ld   a, l                                        ; $4262: $7d
	ld   bc, $d607                                   ; $4263: $01 $07 $d6
	db   $eb                                         ; $4266: $eb
	push af                                          ; $4267: $f5
	cp   d                                           ; $4268: $ba
	inc  bc                                          ; $4269: $03
	add  d                                           ; $426a: $82
	ld   bc, $6e08                                   ; $426b: $01 $08 $6e
	sbc  a                                           ; $426e: $9f
	dec  c                                           ; $426f: $0d
	nop                                              ; $4270: $00
	ld   a, [bc]                                     ; $4271: $0a
	ld   b, $64                                      ; $4272: $06 $64
	ld   bc, $c507                                   ; $4274: $01 $07 $c5
	ld   bc, $8004                                   ; $4277: $01 $04 $80
	ld   d, a                                        ; $427a: $57
	ld   bc, $20ff                                   ; $427b: $01 $ff $20
	nop                                              ; $427e: $00
	dec  b                                           ; $427f: $05
	add  b                                           ; $4280: $80
	ld   d, a                                        ; $4281: $57
	ld   bc, $0001                                   ; $4282: $01 $01 $00
	ld   bc, $a5a3                                   ; $4285: $01 $a3 $a5
	db   $ec                                         ; $4288: $ec
	cp   d                                           ; $4289: $ba
	ld   a, l                                        ; $428a: $7d
	dec  c                                           ; $428b: $0d
	halt                                             ; $428c: $76
	ld   h, c                                        ; $428d: $61
	sbc  e                                           ; $428e: $9b
	ld   [hl], h                                     ; $428f: $74
	and  c                                           ; $4290: $a1
	ld   a, c                                        ; $4291: $79
	inc  b                                           ; $4292: $04
	ld   c, c                                        ; $4293: $49
	and  b                                           ; $4294: $a0
	ld   e, c                                        ; $4295: $59
	ld   e, a                                        ; $4296: $5f
	sbc  c                                           ; $4297: $99
	ld   sp, hl                                      ; $4298: $f9
	dec  c                                           ; $4299: $0d
	nop                                              ; $429a: $00
	ld   a, [bc]                                     ; $429b: $0a
	add  hl, de                                      ; $429c: $19
	dec  b                                           ; $429d: $05
	inc  bc                                          ; $429e: $03
	ld   a, l                                        ; $429f: $7d
	ld   l, a                                        ; $42a0: $6f
	adc  l                                           ; $42a1: $8d
	ld   [hl], d                                     ; $42a2: $72
	nop                                              ; $42a3: $00
	nop                                              ; $42a4: $00
	ld   h, a                                        ; $42a5: $67
	ld   h, [hl]                                     ; $42a6: $66
	sub  l                                           ; $42a7: $95
	ld   d, h                                        ; $42a8: $54
	sub  h                                           ; $42a9: $94
	nop                                              ; $42aa: $00
	ld   bc, $9b5d                                   ; $42ab: $01 $5d $9b
	adc  l                                           ; $42ae: $8d
	ld   [hl], d                                     ; $42af: $72
	nop                                              ; $42b0: $00
	ld   [bc], a                                     ; $42b1: $02
	rlca                                             ; $42b2: $07
	ld   c, b                                        ; $42b3: $48
	rlca                                             ; $42b4: $07
	ld   [bc], a                                     ; $42b5: $02
	inc  bc                                          ; $42b6: $03
	ld   bc, $2000                                   ; $42b7: $01 $00 $20
	nop                                              ; $42ba: $00
	rlca                                             ; $42bb: $07
	ld   h, l                                        ; $42bc: $65
	rlca                                             ; $42bd: $07
	ld   [bc], a                                     ; $42be: $02
	inc  bc                                          ; $42bf: $03
	ld   bc, $2001                                   ; $42c0: $01 $01 $20
	nop                                              ; $42c3: $00
	rlca                                             ; $42c4: $07
	ld   h, l                                        ; $42c5: $65
	rlca                                             ; $42c6: $07
	ld   [bc], a                                     ; $42c7: $02
	inc  bc                                          ; $42c8: $03
	ld   bc, $2002                                   ; $42c9: $01 $02 $20
	nop                                              ; $42cc: $00
	ld   b, $65                                      ; $42cd: $06 $65
	rlca                                             ; $42cf: $07
	inc  e                                           ; $42d0: $1c
	rrca                                             ; $42d1: $0f
	ld   bc, $1401                                   ; $42d2: $01 $01 $14
	dec  de                                          ; $42d5: $1b
	ld   bc, $0301                                   ; $42d6: $01 $01 $03
	ld   c, d                                        ; $42d9: $4a
	ld   [bc], a                                     ; $42da: $02
	or   h                                           ; $42db: $b4
	ld   l, [hl]                                     ; $42dc: $6e
	sbc  a                                           ; $42dd: $9f
	dec  c                                           ; $42de: $0d
	nop                                              ; $42df: $00
	ld   a, [bc]                                     ; $42e0: $0a
	dec  b                                           ; $42e1: $05
	ld   b, b                                        ; $42e2: $40
	rst  $38                                         ; $42e3: $ff
	inc  bc                                          ; $42e4: $03
	rst  $38                                         ; $42e5: $ff
	ld   bc, $2801                                   ; $42e6: $01 $01 $28
	nop                                              ; $42e9: $00
	ld   b, $64                                      ; $42ea: $06 $64
	ld   bc, $0f1c                                   ; $42ec: $01 $1c $0f
	ld   [bc], a                                     ; $42ef: $02
	ld   [bc], a                                     ; $42f0: $02
	inc  d                                           ; $42f1: $14
	inc  e                                           ; $42f2: $1c
	ld   bc, $0301                                   ; $42f3: $01 $01 $03
	jr   z, jr_05a_42fc                              ; $42f6: $28 $04

	ld   c, b                                        ; $42f8: $48
	ld   l, [hl]                                     ; $42f9: $6e
	ld   [hl], c                                     ; $42fa: $71
	ld   l, l                                        ; $42fb: $6d

jr_05a_42fc:
	ld   a, b                                        ; $42fc: $78
	rst  $38                                         ; $42fd: $ff
	rst  $38                                         ; $42fe: $ff
	dec  c                                           ; $42ff: $0d
	inc  bc                                          ; $4300: $03
	ld   c, d                                        ; $4301: $4a
	ld   [bc], a                                     ; $4302: $02
	or   h                                           ; $4303: $b4
	ld   a, l                                        ; $4304: $7d
	sbc  [hl]                                        ; $4305: $9e
	ld   bc, $7d07                                   ; $4306: $01 $07 $7d
	ld   l, a                                        ; $4309: $6f
	adc  l                                           ; $430a: $8d
	ld   [hl], d                                     ; $430b: $72
	ld   bc, $6e08                                   ; $430c: $01 $08 $6e
	sbc  a                                           ; $430f: $9f
	dec  c                                           ; $4310: $0d
	nop                                              ; $4311: $00
	ld   a, [bc]                                     ; $4312: $0a
	ld   b, $64                                      ; $4313: $06 $64
	ld   bc, $0e00                                   ; $4315: $01 $00 $0e
	rra                                              ; $4318: $1f
	rrca                                             ; $4319: $0f
	nop                                              ; $431a: $00
	ld   bc, $050d                                   ; $431b: $01 $0d $05
	nop                                              ; $431e: $00
	ld   [bc], a                                     ; $431f: $02
	ld   bc, $cf02                                   ; $4320: $01 $02 $cf
	dec  b                                           ; $4323: $05
	ld   a, [de]                                     ; $4324: $1a
	ld   h, e                                        ; $4325: $63
	and  c                                           ; $4326: $a1
	sbc  [hl]                                        ; $4327: $9e
	inc  b                                           ; $4328: $04
	ld   c, c                                        ; $4329: $49
	ld   h, l                                        ; $432a: $65
	ld   [hl], h                                     ; $432b: $74
	sbc  c                                           ; $432c: $99
	and  c                                           ; $432d: $a1
	ld   [hl], l                                     ; $432e: $75
	ld   h, a                                        ; $432f: $67
	ld   e, c                                        ; $4330: $59
	ld   sp, hl                                      ; $4331: $f9
	dec  c                                           ; $4332: $0d
	nop                                              ; $4333: $00
	ld   a, [bc]                                     ; $4334: $0a
	inc  e                                           ; $4335: $1c
	dec  b                                           ; $4336: $05
	ld   bc, $0101                                   ; $4337: $01 $01 $01
	ld   e, b                                        ; $433a: $58
	ld   e, b                                        ; $433b: $58
	sbc  [hl]                                        ; $433c: $9e
	ld   [$7d00], sp                                 ; $433d: $08 $00 $7d
	and  c                                           ; $4340: $a1
	sbc  a                                           ; $4341: $9f
	dec  c                                           ; $4342: $0d
	xor  c                                           ; $4343: $a9
	xor  c                                           ; $4344: $a9
	halt                                             ; $4345: $76
	ld   h, c                                        ; $4346: $61
	ld   a, c                                        ; $4347: $79
	ld   e, e                                        ; $4348: $5b
	ld   l, l                                        ; $4349: $6d
	ld   a, b                                        ; $434a: $78
	sbc  a                                           ; $434b: $9f
	dec  c                                           ; $434c: $0d
	nop                                              ; $434d: $00
	ld   a, [bc]                                     ; $434e: $0a
	ld   bc, $6803                                   ; $434f: $01 $03 $68
	ld   [bc], a                                     ; $4352: $02
	sub  e                                           ; $4353: $93
	ld   a, h                                        ; $4354: $7c
	ld   [bc], a                                     ; $4355: $02
	sbc  c                                           ; $4356: $99
	ld   [bc], a                                     ; $4357: $02
	rra                                              ; $4358: $1f
	inc  b                                           ; $4359: $04
	di                                               ; $435a: $f3
	ld   a, h                                        ; $435b: $7c
	ld   h, l                                        ; $435c: $65
	ld   e, c                                        ; $435d: $59
	ld   e, a                                        ; $435e: $5f
	and  b                                           ; $435f: $a0
	dec  c                                           ; $4360: $0d
	inc  bc                                          ; $4361: $03
	dec  c                                           ; $4362: $0d
	ld   [bc], a                                     ; $4363: $02
	ld   b, b                                        ; $4364: $40
	adc  [hl]                                        ; $4365: $8e
	ld   [hl], d                                     ; $4366: $72
	ld   d, d                                        ; $4367: $52
	ld   [hl], l                                     ; $4368: $75
	ld   a, c                                        ; $4369: $79
	sbc  [hl]                                        ; $436a: $9e
	inc  b                                           ; $436b: $04
	ld   c, $04                                      ; $436c: $0e $04
	ld   d, $02                                      ; $436e: $16 $02
	xor  b                                           ; $4370: $a8
	ld   a, l                                        ; $4371: $7d
	and  c                                           ; $4372: $a1
	ld   a, h                                        ; $4373: $7c
	dec  c                                           ; $4374: $0d
	inc  bc                                          ; $4375: $03
	ld   l, e                                        ; $4376: $6b
	inc  b                                           ; $4377: $04
	ld   [de], a                                     ; $4378: $12
	ld   d, d                                        ; $4379: $52
	and  b                                           ; $437a: $a0
	ld   h, l                                        ; $437b: $65
	ld   [hl], h                                     ; $437c: $74
	sbc  c                                           ; $437d: $99
	and  c                                           ; $437e: $a1
	sub  d                                           ; $437f: $92
	sbc  a                                           ; $4380: $9f
	dec  c                                           ; $4381: $0d
	nop                                              ; $4382: $00
	ld   a, [bc]                                     ; $4383: $0a
	inc  e                                           ; $4384: $1c
	dec  b                                           ; $4385: $05
	nop                                              ; $4386: $00
	nop                                              ; $4387: $00
	ld   bc, $8c67                                   ; $4388: $01 $67 $8c
	and  c                                           ; $438b: $a1
	ld   e, a                                        ; $438c: $5f
	ld   [hl], a                                     ; $438d: $77
	sbc  [hl]                                        ; $438e: $9e
	dec  c                                           ; $438f: $0d
	ld   l, e                                        ; $4390: $6b
	ld   h, c                                        ; $4391: $61
	ld   a, h                                        ; $4392: $7c
	ld   bc, $7807                                   ; $4393: $01 $07 $78
	ld   e, [hl]                                     ; $4396: $5e
	sbc  b                                           ; $4397: $98
	ld   bc, $0308                                   ; $4398: $01 $08 $03
	jr   @+$73                                       ; $439b: $18 $71

	ld   [hl], h                                     ; $439d: $74
	dec  c                                           ; $439e: $0d
	ld   e, l                                        ; $439f: $5d
	sbc  d                                           ; $43a0: $9a
	add  [hl]                                        ; $43a1: $86
	and  c                                           ; $43a2: $a1
	ld   e, c                                        ; $43a3: $59
	ld   sp, hl                                      ; $43a4: $f9
	dec  c                                           ; $43a5: $0d
	nop                                              ; $43a6: $00
	ld   a, [bc]                                     ; $43a7: $0a
	rrca                                             ; $43a8: $0f
	nop                                              ; $43a9: $00
	ld   bc, $0101                                   ; $43aa: $01 $01 $01
	inc  bc                                          ; $43ad: $03
	ld   bc, $7807                                   ; $43ae: $01 $07 $78
	ld   e, [hl]                                     ; $43b1: $5e
	sbc  b                                           ; $43b2: $98
	ld   bc, $7108                                   ; $43b3: $01 $08 $71
	ld   [hl], h                                     ; $43b6: $74
	ld   a, b                                        ; $43b7: $78
	and  c                                           ; $43b8: $a1
	ld   l, [hl]                                     ; $43b9: $6e
	ld   sp, hl                                      ; $43ba: $f9
	ld   bc, $0d04                                   ; $43bb: $01 $04 $0d
	nop                                              ; $43be: $00
	ld   a, [bc]                                     ; $43bf: $0a
	add  hl, de                                      ; $43c0: $19
	dec  b                                           ; $43c1: $05
	inc  bc                                          ; $43c2: $03
	ret                                              ; $43c3: $c9


	push af                                          ; $43c4: $f5
	xor  h                                           ; $43c5: $ac
	jp   nz, $03a0                                   ; $43c6: $c2 $a0 $03

	ld   [$0067], a                                  ; $43c9: $ea $67 $00
	nop                                              ; $43cc: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43cd: $cf
	or   h                                           ; $43ce: $b4
	xor  a                                           ; $43cf: $af
	db   $ec                                         ; $43d0: $ec
	and  b                                           ; $43d1: $a0
	inc  bc                                          ; $43d2: $03
	ld   [$0067], a                                  ; $43d3: $ea $67 $00
	ld   bc, $dfd0                                   ; $43d6: $01 $d0 $df
	or   c                                           ; $43d9: $b1
	db   $ec                                         ; $43da: $ec
	and  b                                           ; $43db: $a0
	inc  bc                                          ; $43dc: $03
	ld   [$0067], a                                  ; $43dd: $ea $67 $00
	ld   [bc], a                                     ; $43e0: $02
	rlca                                             ; $43e1: $07
	add  sp, $00                                     ; $43e2: $e8 $00
	ld   [bc], a                                     ; $43e4: $02
	inc  bc                                          ; $43e5: $03
	ld   bc, $2000                                   ; $43e6: $01 $00 $20
	nop                                              ; $43e9: $00
	rlca                                             ; $43ea: $07
	dec  e                                           ; $43eb: $1d
	ld   bc, $0302                                   ; $43ec: $01 $02 $03
	ld   bc, $2001                                   ; $43ef: $01 $01 $20
	nop                                              ; $43f2: $00
	rlca                                             ; $43f3: $07
	ld   c, [hl]                                     ; $43f4: $4e
	ld   bc, $0302                                   ; $43f5: $01 $02 $03
	ld   bc, $2002                                   ; $43f8: $01 $02 $20
	nop                                              ; $43fb: $00
	ld   b, $dc                                      ; $43fc: $06 $dc
	ld   bc, $051c                                   ; $43fe: $01 $1c $05
	ld   bc, $1d01                                   ; $4401: $01 $01 $1d
	ld   b, b                                        ; $4404: $40
	dec  d                                           ; $4405: $15
	inc  bc                                          ; $4406: $03
	dec  d                                           ; $4407: $15
	ld   bc, $2802                                   ; $4408: $01 $02 $28
	nop                                              ; $440b: $00
	ld   bc, $5858                                   ; $440c: $01 $58 $58
	ld   e, e                                        ; $440f: $5b
	ld   a, c                                        ; $4410: $79
	sbc  a                                           ; $4411: $9f
	dec  c                                           ; $4412: $0d
	ld   [$7d00], sp                                 ; $4413: $08 $00 $7d
	and  c                                           ; $4416: $a1
	sbc  [hl]                                        ; $4417: $9e
	inc  bc                                          ; $4418: $03
	inc  b                                           ; $4419: $04
	ld   b, $56                                      ; $441a: $06 $56
	inc  b                                           ; $441c: $04
	di                                               ; $441d: $f3
	ld   [bc], a                                     ; $441e: $02
	and  h                                           ; $441f: $a4
	dec  c                                           ; $4420: $0d
	sbc  l                                           ; $4421: $9d
	ld   e, c                                        ; $4422: $59
	and  c                                           ; $4423: $a1
	ld   a, e                                        ; $4424: $7b
	and  c                                           ; $4425: $a1
	ld   a, b                                        ; $4426: $78
	sbc  a                                           ; $4427: $9f
	ld   h, a                                        ; $4428: $67
	ld   h, d                                        ; $4429: $62
	ld   d, d                                        ; $442a: $52
	ld   a, b                                        ; $442b: $78
	db   $fc                                         ; $442c: $fc
	sbc  a                                           ; $442d: $9f
	dec  c                                           ; $442e: $0d
	nop                                              ; $442f: $00
	ld   a, [bc]                                     ; $4430: $0a
	ld   b, $07                                      ; $4431: $06 $07
	ld   [bc], a                                     ; $4433: $02
	inc  e                                           ; $4434: $1c
	dec  b                                           ; $4435: $05
	nop                                              ; $4436: $00
	nop                                              ; $4437: $00
	ld   bc, $5a6f                                   ; $4438: $01 $6f $5a
	ld   d, h                                        ; $443b: $54
	ld   [hl], h                                     ; $443c: $74
	sbc  a                                           ; $443d: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $443e: $cf
	or   h                                           ; $443f: $b4
	xor  a                                           ; $4440: $af
	db   $ec                                         ; $4441: $ec
	sub  d                                           ; $4442: $92
	ld   a, b                                        ; $4443: $78
	ld   d, d                                        ; $4444: $52
	ld   [hl], l                                     ; $4445: $75
	sbc  a                                           ; $4446: $9f
	dec  c                                           ; $4447: $0d
	ld   bc, $7807                                   ; $4448: $01 $07 $78
	ld   e, [hl]                                     ; $444b: $5e
	sbc  b                                           ; $444c: $98
	ld   bc, $7108                                   ; $444d: $01 $08 $71
	ld   l, a                                        ; $4450: $6f
	sub  e                                           ; $4451: $93
	ei                                               ; $4452: $fb
	ld   a, h                                        ; $4453: $7c
	ld   a, l                                        ; $4454: $7d
	dec  c                                           ; $4455: $0d
	ret                                              ; $4456: $c9


	push af                                          ; $4457: $f5
	xor  h                                           ; $4458: $ac
	jp   nz, Jump_05a_617c                           ; $4459: $c2 $7c $61

	halt                                             ; $445c: $76
	sub  d                                           ; $445d: $92
	sbc  a                                           ; $445e: $9f
	dec  c                                           ; $445f: $0d
	nop                                              ; $4460: $00
	ld   a, [bc]                                     ; $4461: $0a
	ld   b, $07                                      ; $4462: $06 $07
	ld   [bc], a                                     ; $4464: $02
	inc  e                                           ; $4465: $1c
	dec  b                                           ; $4466: $05
	dec  b                                           ; $4467: $05
	dec  b                                           ; $4468: $05
	ld   bc, $546b                                   ; $4469: $01 $6b $54
	ld   l, e                                        ; $446c: $6b
	ld   d, h                                        ; $446d: $54
	sbc  [hl]                                        ; $446e: $9e
	ld   h, c                                        ; $446f: $61
	ld   a, h                                        ; $4470: $7c
	ld   e, c                                        ; $4471: $59
	ld   l, l                                        ; $4472: $6d
	ld   h, e                                        ; $4473: $63
	ld   e, d                                        ; $4474: $5a
	dec  c                                           ; $4475: $0d
	or   b                                           ; $4476: $b0
	xor  a                                           ; $4477: $af
	and  b                                           ; $4478: $a0
	dec  b                                           ; $4479: $05
	pop  af                                          ; $447a: $f1
	ld   [hl], d                                     ; $447b: $72
	ld   a, h                                        ; $447c: $7c
	ld   a, c                                        ; $447d: $79
	ld   l, a                                        ; $447e: $6f
	sub  l                                           ; $447f: $95
	ld   d, h                                        ; $4480: $54
	ld   [hl], a                                     ; $4481: $77
	xor  c                                           ; $4482: $a9
	xor  c                                           ; $4483: $a9
	sbc  a                                           ; $4484: $9f
	dec  c                                           ; $4485: $0d
	inc  bc                                          ; $4486: $03
	ld   l, d                                        ; $4487: $6a
	add  a                                           ; $4488: $87
	ld   [hl], h                                     ; $4489: $74
	sub  b                                           ; $448a: $90
	ld   d, h                                        ; $448b: $54
	adc  h                                           ; $448c: $8c
	ld   d, d                                        ; $448d: $52
	ld   h, l                                        ; $448e: $65
	ld   a, b                                        ; $448f: $78
	db   $fc                                         ; $4490: $fc
	sbc  a                                           ; $4491: $9f
	dec  c                                           ; $4492: $0d
	nop                                              ; $4493: $00
	ld   a, [bc]                                     ; $4494: $0a
	inc  e                                           ; $4495: $1c
	dec  b                                           ; $4496: $05
	inc  bc                                          ; $4497: $03
	inc  bc                                          ; $4498: $03
	ld   bc, $7471                                   ; $4499: $01 $71 $74
	ld   l, a                                        ; $449c: $6f
	sub  c                                           ; $449d: $91
	ld   d, h                                        ; $449e: $54
	sub  d                                           ; $449f: $92
	and  c                                           ; $44a0: $a1
	ld   e, a                                        ; $44a1: $5f
	ld   a, [$780d]                                  ; $44a2: $fa $0d $78
	and  c                                           ; $44a5: $a1
	ld   [hl], l                                     ; $44a6: $75
	sbc  [hl]                                        ; $44a7: $9e
	ret  nc                                          ; $44a8: $d0

	rst  JumpTable                                         ; $44a9: $df
	or   c                                           ; $44aa: $b1
	db   $ec                                         ; $44ab: $ec
	ld   e, d                                        ; $44ac: $5a
	dec  c                                           ; $44ad: $0d
	ld   h, c                                        ; $44ae: $61
	and  c                                           ; $44af: $a1
	ld   a, b                                        ; $44b0: $78
	halt                                             ; $44b1: $76
	ld   h, c                                        ; $44b2: $61
	ld   a, c                                        ; $44b3: $79
	ld   d, b                                        ; $44b4: $50
	and  c                                           ; $44b5: $a1
	ld   a, e                                        ; $44b6: $7b
	and  c                                           ; $44b7: $a1
	ld   a, [$000d]                                  ; $44b8: $fa $0d $00
	ld   a, [bc]                                     ; $44bb: $0a
	inc  e                                           ; $44bc: $1c
	dec  b                                           ; $44bd: $05
	ld   bc, $1d01                                   ; $44be: $01 $01 $1d
	ld   b, b                                        ; $44c1: $40
	dec  d                                           ; $44c2: $15
	inc  bc                                          ; $44c3: $03
	dec  d                                           ; $44c4: $15
	ld   bc, $2803                                   ; $44c5: $01 $03 $28
	nop                                              ; $44c8: $00
	ld   bc, $f5c9                                   ; $44c9: $01 $c9 $f5
	xor  h                                           ; $44cc: $ac
	jp   nz, Jump_05a_7192                           ; $44cd: $c2 $92 $71

	ld   l, a                                        ; $44d0: $6f
	sub  e                                           ; $44d1: $93
	ei                                               ; $44d2: $fb
	ld   a, h                                        ; $44d3: $7c
	ld   a, [$5f0d]                                  ; $44d4: $fa $0d $5f
	ld   [hl], a                                     ; $44d7: $77
	sbc  [hl]                                        ; $44d8: $9e
	ld   a, b                                        ; $44d9: $78
	ld   e, c                                        ; $44da: $59
	ld   a, b                                        ; $44db: $78
	ld   e, c                                        ; $44dc: $59
	xor  c                                           ; $44dd: $a9
	xor  c                                           ; $44de: $a9
	db   $dd                                         ; $44df: $dd
	or   d                                           ; $44e0: $b2
	sub  d                                           ; $44e1: $92
	and  c                                           ; $44e2: $a1
	sbc  a                                           ; $44e3: $9f
	dec  c                                           ; $44e4: $0d
	ld   h, e                                        ; $44e5: $63
	ld   h, a                                        ; $44e6: $67
	ld   e, d                                        ; $44e7: $5a
	ld   [$7d00], sp                                 ; $44e8: $08 $00 $7d
	and  c                                           ; $44eb: $a1
	ld   a, [$000d]                                  ; $44ec: $fa $0d $00
	ld   a, [bc]                                     ; $44ef: $0a
	ld   b, $07                                      ; $44f0: $06 $07
	ld   [bc], a                                     ; $44f2: $02
	inc  e                                           ; $44f3: $1c
	dec  b                                           ; $44f4: $05
	nop                                              ; $44f5: $00
	nop                                              ; $44f6: $00
	ld   bc, $7150                                   ; $44f7: $01 $50 $71
	sbc  [hl]                                        ; $44fa: $9e
	ld   l, e                                        ; $44fb: $6b
	ld   d, h                                        ; $44fc: $54
	ld   e, c                                        ; $44fd: $59
	sbc  a                                           ; $44fe: $9f
	dec  c                                           ; $44ff: $0d
	ld   bc, $7807                                   ; $4500: $01 $07 $78
	ld   e, [hl]                                     ; $4503: $5e
	sbc  b                                           ; $4504: $98
	ld   bc, $7108                                   ; $4505: $01 $08 $71
	ld   l, a                                        ; $4508: $6f
	sub  e                                           ; $4509: $93
	ei                                               ; $450a: $fb
	ld   a, h                                        ; $450b: $7c
	ld   a, l                                        ; $450c: $7d
	dec  c                                           ; $450d: $0d
	ld   l, e                                        ; $450e: $6b
	ld   h, c                                        ; $450f: $61
	ld   a, h                                        ; $4510: $7c
	sbc  [hl]                                        ; $4511: $9e
	ret                                              ; $4512: $c9


	push af                                          ; $4513: $f5
	xor  h                                           ; $4514: $ac
	jp   nz, Jump_05a_617c                           ; $4515: $c2 $7c $61

	halt                                             ; $4518: $76
	sub  d                                           ; $4519: $92
	sbc  a                                           ; $451a: $9f
	dec  c                                           ; $451b: $0d
	nop                                              ; $451c: $00
	ld   a, [bc]                                     ; $451d: $0a
	ld   bc, $7889                                   ; $451e: $01 $89 $78
	sbc  [hl]                                        ; $4521: $9e
	inc  bc                                          ; $4522: $03
	ld   l, b                                        ; $4523: $68
	ld   a, l                                        ; $4524: $7d
	dec  c                                           ; $4525: $0d
	ld   l, e                                        ; $4526: $6b
	ld   h, c                                        ; $4527: $61
	ld   a, h                                        ; $4528: $7c
	ld   bc, $7d07                                   ; $4529: $01 $07 $7d
	ld   h, c                                        ; $452c: $61
	ld   d, h                                        ; $452d: $54
	adc  h                                           ; $452e: $8c
	ld   bc, $0308                                   ; $452f: $01 $08 $03
	jr   jr_05a_45a5                                 ; $4532: $18 $71

	ld   [hl], h                                     ; $4534: $74
	dec  c                                           ; $4535: $0d
	ld   e, l                                        ; $4536: $5d
	sbc  d                                           ; $4537: $9a
	add  [hl]                                        ; $4538: $86
	and  c                                           ; $4539: $a1
	ld   e, c                                        ; $453a: $59
	ld   sp, hl                                      ; $453b: $f9
	dec  c                                           ; $453c: $0d
	nop                                              ; $453d: $00
	ld   a, [bc]                                     ; $453e: $0a
	rrca                                             ; $453f: $0f
	nop                                              ; $4540: $00
	ld   bc, $0101                                   ; $4541: $01 $01 $01
	inc  bc                                          ; $4544: $03
	ld   bc, $7d07                                   ; $4545: $01 $07 $7d
	ld   h, c                                        ; $4548: $61
	ld   d, h                                        ; $4549: $54
	adc  h                                           ; $454a: $8c
	ld   bc, $7108                                   ; $454b: $01 $08 $71
	ld   [hl], h                                     ; $454e: $74
	ld   a, b                                        ; $454f: $78
	and  c                                           ; $4550: $a1
	ld   l, [hl]                                     ; $4551: $6e
	ld   sp, hl                                      ; $4552: $f9
	ld   bc, $0d04                                   ; $4553: $01 $04 $0d
	nop                                              ; $4556: $00
	ld   a, [bc]                                     ; $4557: $0a
	add  hl, de                                      ; $4558: $19
	dec  b                                           ; $4559: $05
	inc  bc                                          ; $455a: $03
	inc  b                                           ; $455b: $04
	push de                                          ; $455c: $d5
	inc  b                                           ; $455d: $04
	add  a                                           ; $455e: $87
	and  b                                           ; $455f: $a0
	inc  bc                                          ; $4560: $03
	ld   [$0067], a                                  ; $4561: $ea $67 $00
	nop                                              ; $4564: $00
	adc  c                                           ; $4565: $89
	ld   d, h                                        ; $4566: $54
	ld   e, e                                        ; $4567: $5b
	and  b                                           ; $4568: $a0
	inc  bc                                          ; $4569: $03
	ld   [$0067], a                                  ; $456a: $ea $67 $00
	ld   bc, $5604                                   ; $456d: $01 $04 $56
	ld   a, h                                        ; $4570: $7c
	ld   [bc], a                                     ; $4571: $02
	ld   de, $4c03                                   ; $4572: $11 $03 $4c
	and  b                                           ; $4575: $a0
	inc  bc                                          ; $4576: $03
	ld   [$0067], a                                  ; $4577: $ea $67 $00
	ld   [bc], a                                     ; $457a: $02
	rlca                                             ; $457b: $07
	add  d                                           ; $457c: $82
	ld   [bc], a                                     ; $457d: $02
	ld   [bc], a                                     ; $457e: $02
	inc  bc                                          ; $457f: $03
	ld   bc, $2000                                   ; $4580: $01 $00 $20
	nop                                              ; $4583: $00
	rlca                                             ; $4584: $07
	or   [hl]                                        ; $4585: $b6
	ld   [bc], a                                     ; $4586: $02
	ld   [bc], a                                     ; $4587: $02
	inc  bc                                          ; $4588: $03
	ld   bc, $2001                                   ; $4589: $01 $01 $20
	nop                                              ; $458c: $00
	rlca                                             ; $458d: $07
	add  hl, bc                                      ; $458e: $09
	inc  bc                                          ; $458f: $03
	ld   [bc], a                                     ; $4590: $02
	inc  bc                                          ; $4591: $03
	ld   bc, $2002                                   ; $4592: $01 $02 $20
	nop                                              ; $4595: $00
	ld   b, $95                                      ; $4596: $06 $95
	inc  bc                                          ; $4598: $03
	inc  e                                           ; $4599: $1c
	dec  b                                           ; $459a: $05
	ld   bc, $1d01                                   ; $459b: $01 $01 $1d
	ld   b, b                                        ; $459e: $40
	dec  d                                           ; $459f: $15
	inc  bc                                          ; $45a0: $03
	dec  d                                           ; $45a1: $15
	ld   bc, $2802                                   ; $45a2: $01 $02 $28

jr_05a_45a5:
	nop                                              ; $45a5: $00
	ld   bc, $5858                                   ; $45a6: $01 $58 $58
	ld   e, e                                        ; $45a9: $5b
	ld   a, c                                        ; $45aa: $79
	sbc  a                                           ; $45ab: $9f
	dec  c                                           ; $45ac: $0d
	ld   h, c                                        ; $45ad: $61
	ld   a, h                                        ; $45ae: $7c
	inc  b                                           ; $45af: $04
	push de                                          ; $45b0: $d5
	ld   [hl], l                                     ; $45b1: $75
	ld   [hl], l                                     ; $45b2: $75
	ld   e, e                                        ; $45b3: $5b
	ld   l, l                                        ; $45b4: $6d
	rst  $10                                         ; $45b5: $d7
	rst  $28                                         ; $45b6: $ef
	call nz, Call_05a_75b0                           ; $45b7: $c4 $b0 $75
	dec  c                                           ; $45ba: $0d
	inc  b                                           ; $45bb: $04
	xor  b                                           ; $45bc: $a8
	inc  b                                           ; $45bd: $04
	inc  c                                           ; $45be: $0c
	and  b                                           ; $45bf: $a0
	inc  bc                                          ; $45c0: $03
	add  l                                           ; $45c1: $85
	ld   d, [hl]                                     ; $45c2: $56
	and  c                                           ; $45c3: $a1
	ld   a, e                                        ; $45c4: $7b
	and  c                                           ; $45c5: $a1
	sbc  a                                           ; $45c6: $9f
	dec  c                                           ; $45c7: $0d
	nop                                              ; $45c8: $00
	ld   a, [bc]                                     ; $45c9: $0a
	ld   b, $ca                                      ; $45ca: $06 $ca
	inc  bc                                          ; $45cc: $03
	inc  e                                           ; $45cd: $1c
	dec  b                                           ; $45ce: $05
	ld   [bc], a                                     ; $45cf: $02
	ld   [bc], a                                     ; $45d0: $02
	ld   bc, $5a6f                                   ; $45d1: $01 $6f $5a
	ld   d, h                                        ; $45d4: $54
	ld   [hl], h                                     ; $45d5: $74
	sbc  a                                           ; $45d6: $9f
	adc  c                                           ; $45d7: $89
	ld   d, h                                        ; $45d8: $54
	ld   e, e                                        ; $45d9: $5b
	sub  d                                           ; $45da: $92
	ld   a, b                                        ; $45db: $78
	ld   d, d                                        ; $45dc: $52
	ld   [hl], l                                     ; $45dd: $75
	sbc  a                                           ; $45de: $9f
	dec  c                                           ; $45df: $0d
	ld   bc, $7d07                                   ; $45e0: $01 $07 $7d
	ld   h, c                                        ; $45e3: $61
	ld   d, h                                        ; $45e4: $54
	adc  h                                           ; $45e5: $8c
	ld   bc, $7108                                   ; $45e6: $01 $08 $71
	ld   l, a                                        ; $45e9: $6f
	sub  e                                           ; $45ea: $93
	ei                                               ; $45eb: $fb
	ld   a, h                                        ; $45ec: $7c
	ld   a, l                                        ; $45ed: $7d
	dec  c                                           ; $45ee: $0d
	inc  b                                           ; $45ef: $04
	push de                                          ; $45f0: $d5
	inc  b                                           ; $45f1: $04
	add  a                                           ; $45f2: $87
	ld   a, h                                        ; $45f3: $7c
	ld   h, c                                        ; $45f4: $61
	halt                                             ; $45f5: $76
	sub  d                                           ; $45f6: $92
	sbc  a                                           ; $45f7: $9f
	dec  c                                           ; $45f8: $0d
	nop                                              ; $45f9: $00
	ld   a, [bc]                                     ; $45fa: $0a
	inc  e                                           ; $45fb: $1c
	dec  b                                           ; $45fc: $05
	nop                                              ; $45fd: $00
	nop                                              ; $45fe: $00
	ld   bc, $7c61                                   ; $45ff: $01 $61 $7c
	inc  b                                           ; $4602: $04
	push de                                          ; $4603: $d5
	ld   [hl], l                                     ; $4604: $75
	ld   [hl], l                                     ; $4605: $75
	ld   e, e                                        ; $4606: $5b
	ld   l, l                                        ; $4607: $6d
	rst  $10                                         ; $4608: $d7
	rst  $28                                         ; $4609: $ef
	call nz, Call_05a_75b0                           ; $460a: $c4 $b0 $75
	dec  c                                           ; $460d: $0d
	inc  b                                           ; $460e: $04
	xor  b                                           ; $460f: $a8
	inc  b                                           ; $4610: $04
	inc  c                                           ; $4611: $0c
	and  b                                           ; $4612: $a0
	inc  bc                                          ; $4613: $03
	add  l                                           ; $4614: $85
	ld   d, [hl]                                     ; $4615: $56
	and  c                                           ; $4616: $a1
	ld   a, e                                        ; $4617: $7b
	and  c                                           ; $4618: $a1
	sbc  a                                           ; $4619: $9f
	dec  c                                           ; $461a: $0d
	nop                                              ; $461b: $00
	ld   a, [bc]                                     ; $461c: $0a
	ld   b, $ca                                      ; $461d: $06 $ca
	inc  bc                                          ; $461f: $03
	inc  e                                           ; $4620: $1c
	dec  b                                           ; $4621: $05
	dec  b                                           ; $4622: $05
	dec  b                                           ; $4623: $05
	ld   bc, $546b                                   ; $4624: $01 $6b $54
	ld   l, e                                        ; $4627: $6b
	ld   d, h                                        ; $4628: $54
	sbc  [hl]                                        ; $4629: $9e
	ld   h, c                                        ; $462a: $61
	sbc  d                                           ; $462b: $9a
	and  b                                           ; $462c: $a0
	inc  b                                           ; $462d: $04
	rlca                                             ; $462e: $07
	ld   [hl], h                                     ; $462f: $74
	ld   a, b                                        ; $4630: $78
	dec  c                                           ; $4631: $0d
	ld   d, d                                        ; $4632: $52
	ld   a, b                                        ; $4633: $78
	ld   a, b                                        ; $4634: $78
	ld   d, d                                        ; $4635: $52
	ld   l, l                                        ; $4636: $6d
	sub  a                                           ; $4637: $97
	sbc  [hl]                                        ; $4638: $9e
	sub  b                                           ; $4639: $90
	ld   d, h                                        ; $463a: $54
	ld   [bc], a                                     ; $463b: $02
	and  c                                           ; $463c: $a1
	inc  b                                           ; $463d: $04
	sbc  [hl]                                        ; $463e: $9e
	ld   a, l                                        ; $463f: $7d
	inc  b                                           ; $4640: $04
	ld   d, [hl]                                     ; $4641: $56
	ld   a, [$ff0d]                                  ; $4642: $fa $0d $ff
	rst  $38                                         ; $4645: $ff
	rst  $38                                         ; $4646: $ff
	rst  $38                                         ; $4647: $ff
	rst  $38                                         ; $4648: $ff
	rst  $38                                         ; $4649: $ff
	dec  c                                           ; $464a: $0d
	nop                                              ; $464b: $00
	ld   a, [bc]                                     ; $464c: $0a
	inc  e                                           ; $464d: $1c
	dec  b                                           ; $464e: $05
	inc  bc                                          ; $464f: $03
	inc  bc                                          ; $4650: $03
	dec  e                                           ; $4651: $1d
	ld   b, b                                        ; $4652: $40
	dec  d                                           ; $4653: $15
	inc  bc                                          ; $4654: $03
	dec  d                                           ; $4655: $15
	ld   bc, $2802                                   ; $4656: $01 $02 $28
	nop                                              ; $4659: $00
	ld   bc, $7471                                   ; $465a: $01 $71 $74
	ld   a, b                                        ; $465d: $78
	and  c                                           ; $465e: $a1
	ld   [hl], l                                     ; $465f: $75
	sub  d                                           ; $4660: $92
	ld   a, e                                        ; $4661: $7b
	and  c                                           ; $4662: $a1
	ld   a, [$ff0d]                                  ; $4663: $fa $0d $ff
	rst  $38                                         ; $4666: $ff
	adc  h                                           ; $4667: $8c
	ld   d, b                                        ; $4668: $50
	adc  h                                           ; $4669: $8c
	ld   d, b                                        ; $466a: $50
	ld   a, h                                        ; $466b: $7c
	db   $dd                                         ; $466c: $dd
	or   d                                           ; $466d: $b2
	sub  d                                           ; $466e: $92
	ld   a, b                                        ; $466f: $78
	sbc  a                                           ; $4670: $9f
	dec  c                                           ; $4671: $0d
	nop                                              ; $4672: $00
	ld   a, [bc]                                     ; $4673: $0a
	inc  e                                           ; $4674: $1c
	dec  b                                           ; $4675: $05
	nop                                              ; $4676: $00
	nop                                              ; $4677: $00
	ld   bc, $0701                                   ; $4678: $01 $01 $07
	ld   a, l                                        ; $467b: $7d
	ld   h, c                                        ; $467c: $61
	ld   d, h                                        ; $467d: $54
	adc  h                                           ; $467e: $8c
	ld   bc, $7108                                   ; $467f: $01 $08 $71
	ld   l, a                                        ; $4682: $6f
	sub  e                                           ; $4683: $93
	ei                                               ; $4684: $fb
	ld   a, h                                        ; $4685: $7c
	ld   a, l                                        ; $4686: $7d
	sbc  [hl]                                        ; $4687: $9e
	dec  c                                           ; $4688: $0d
	ld   l, e                                        ; $4689: $6b
	ld   h, c                                        ; $468a: $61
	ld   a, h                                        ; $468b: $7c
	inc  b                                           ; $468c: $04
	push de                                          ; $468d: $d5
	inc  b                                           ; $468e: $04
	add  a                                           ; $468f: $87
	ld   a, h                                        ; $4690: $7c
	ld   h, c                                        ; $4691: $61
	halt                                             ; $4692: $76
	sbc  a                                           ; $4693: $9f
	dec  c                                           ; $4694: $0d
	ld   l, e                                        ; $4695: $6b
	ld   a, h                                        ; $4696: $7c
	inc  b                                           ; $4697: $04
	add  a                                           ; $4698: $87
	ld   [hl], l                                     ; $4699: $75
	inc  b                                           ; $469a: $04
	xor  b                                           ; $469b: $a8
	inc  b                                           ; $469c: $04
	inc  c                                           ; $469d: $0c
	and  b                                           ; $469e: $a0
	inc  bc                                          ; $469f: $03
	add  l                                           ; $46a0: $85
	ld   d, [hl]                                     ; $46a1: $56
	and  c                                           ; $46a2: $a1
	ld   a, e                                        ; $46a3: $7b
	and  c                                           ; $46a4: $a1
	sbc  a                                           ; $46a5: $9f
	dec  c                                           ; $46a6: $0d
	nop                                              ; $46a7: $00
	ld   a, [bc]                                     ; $46a8: $0a
	ld   b, $ca                                      ; $46a9: $06 $ca
	inc  bc                                          ; $46ab: $03
	inc  e                                           ; $46ac: $1c
	dec  b                                           ; $46ad: $05
	nop                                              ; $46ae: $00
	nop                                              ; $46af: $00
	ld   bc, $0701                                   ; $46b0: $01 $01 $07
	ld   a, l                                        ; $46b3: $7d
	ld   h, c                                        ; $46b4: $61
	ld   d, h                                        ; $46b5: $54
	adc  h                                           ; $46b6: $8c
	ld   bc, $7108                                   ; $46b7: $01 $08 $71
	ld   l, a                                        ; $46ba: $6f
	sub  e                                           ; $46bb: $93
	ei                                               ; $46bc: $fb
	ld   a, h                                        ; $46bd: $7c
	ld   a, l                                        ; $46be: $7d
	sbc  [hl]                                        ; $46bf: $9e
	dec  c                                           ; $46c0: $0d
	ld   l, e                                        ; $46c1: $6b
	ld   h, c                                        ; $46c2: $61
	ld   a, h                                        ; $46c3: $7c
	inc  b                                           ; $46c4: $04
	push de                                          ; $46c5: $d5
	inc  b                                           ; $46c6: $04
	add  a                                           ; $46c7: $87
	ld   a, h                                        ; $46c8: $7c
	ld   h, c                                        ; $46c9: $61
	halt                                             ; $46ca: $76
	sbc  a                                           ; $46cb: $9f
	dec  c                                           ; $46cc: $0d
	ld   l, e                                        ; $46cd: $6b
	ld   a, h                                        ; $46ce: $7c
	inc  b                                           ; $46cf: $04
	add  a                                           ; $46d0: $87
	ld   [hl], l                                     ; $46d1: $75
	inc  b                                           ; $46d2: $04
	xor  b                                           ; $46d3: $a8
	inc  b                                           ; $46d4: $04
	inc  c                                           ; $46d5: $0c
	and  b                                           ; $46d6: $a0
	inc  bc                                          ; $46d7: $03
	add  l                                           ; $46d8: $85
	ld   d, [hl]                                     ; $46d9: $56
	and  c                                           ; $46da: $a1
	ld   a, e                                        ; $46db: $7b
	and  c                                           ; $46dc: $a1
	sbc  a                                           ; $46dd: $9f
	dec  c                                           ; $46de: $0d
	nop                                              ; $46df: $00
	ld   a, [bc]                                     ; $46e0: $0a
	ld   bc, $7889                                   ; $46e1: $01 $89 $78
	sbc  [hl]                                        ; $46e4: $9e
	inc  bc                                          ; $46e5: $03
	ld   l, c                                        ; $46e6: $69
	ld   [bc], a                                     ; $46e7: $02
	xor  d                                           ; $46e8: $aa
	ld   a, c                                        ; $46e9: $79
	dec  c                                           ; $46ea: $0d
	ld   l, e                                        ; $46eb: $6b
	ld   h, c                                        ; $46ec: $61
	ld   a, h                                        ; $46ed: $7c
	ld   bc, $ad07                                   ; $46ee: $01 $07 $ad
	jp   nz, $0801                                   ; $46f1: $c2 $01 $08

	inc  bc                                          ; $46f4: $03
	jr   jr_05a_4768                                 ; $46f5: $18 $71

	ld   [hl], h                                     ; $46f7: $74
	dec  c                                           ; $46f8: $0d
	ld   e, l                                        ; $46f9: $5d
	sbc  d                                           ; $46fa: $9a
	add  [hl]                                        ; $46fb: $86
	and  c                                           ; $46fc: $a1
	ld   e, c                                        ; $46fd: $59
	ld   sp, hl                                      ; $46fe: $f9
	dec  c                                           ; $46ff: $0d
	nop                                              ; $4700: $00
	ld   a, [bc]                                     ; $4701: $0a
	rrca                                             ; $4702: $0f
	nop                                              ; $4703: $00
	ld   bc, $0101                                   ; $4704: $01 $01 $01
	inc  bc                                          ; $4707: $03
	ld   bc, $ad07                                   ; $4708: $01 $07 $ad
	jp   nz, $0801                                   ; $470b: $c2 $01 $08

	ld   [hl], c                                     ; $470e: $71
	ld   [hl], h                                     ; $470f: $74
	ld   a, b                                        ; $4710: $78
	and  c                                           ; $4711: $a1
	ld   l, [hl]                                     ; $4712: $6e
	ld   sp, hl                                      ; $4713: $f9
	ld   bc, $0d04                                   ; $4714: $01 $04 $0d
	nop                                              ; $4717: $00
	ld   a, [bc]                                     ; $4718: $0a
	add  hl, de                                      ; $4719: $19
	dec  b                                           ; $471a: $05
	inc  bc                                          ; $471b: $03
	ld   [bc], a                                     ; $471c: $02
	dec  sp                                          ; $471d: $3b
	ld   [bc], a                                     ; $471e: $02
	xor  b                                           ; $471f: $a8
	and  b                                           ; $4720: $a0
	inc  bc                                          ; $4721: $03
	ld   [$0067], a                                  ; $4722: $ea $67 $00
	nop                                              ; $4725: $00
	db   $db                                         ; $4726: $db
	push af                                          ; $4727: $f5
	jp   nz, $03a0                                   ; $4728: $c2 $a0 $03

	ld   [$0067], a                                  ; $472b: $ea $67 $00
	ld   bc, $4504                                   ; $472e: $01 $04 $45
	sbc  d                                           ; $4731: $9a
	ld   b, $4c                                      ; $4732: $06 $4c
	and  b                                           ; $4734: $a0
	inc  bc                                          ; $4735: $03
	ld   [$0067], a                                  ; $4736: $ea $67 $00
	ld   [bc], a                                     ; $4739: $02
	rlca                                             ; $473a: $07
	ld   b, c                                        ; $473b: $41
	inc  b                                           ; $473c: $04
	ld   [bc], a                                     ; $473d: $02
	inc  bc                                          ; $473e: $03
	ld   bc, $2000                                   ; $473f: $01 $00 $20
	nop                                              ; $4742: $00
	rlca                                             ; $4743: $07
	halt                                             ; $4744: $76
	inc  b                                           ; $4745: $04
	ld   [bc], a                                     ; $4746: $02
	inc  bc                                          ; $4747: $03
	ld   bc, $2001                                   ; $4748: $01 $01 $20
	nop                                              ; $474b: $00
	rlca                                             ; $474c: $07
	call nz, $0204                                   ; $474d: $c4 $04 $02
	inc  bc                                          ; $4750: $03
	ld   bc, $2002                                   ; $4751: $01 $02 $20
	nop                                              ; $4754: $00
	ld   b, $62                                      ; $4755: $06 $62
	dec  b                                           ; $4757: $05
	inc  e                                           ; $4758: $1c
	dec  b                                           ; $4759: $05
	ld   bc, $1d01                                   ; $475a: $01 $01 $1d
	ld   b, b                                        ; $475d: $40
	dec  d                                           ; $475e: $15
	inc  bc                                          ; $475f: $03
	dec  d                                           ; $4760: $15
	ld   bc, $2802                                   ; $4761: $01 $02 $28
	nop                                              ; $4764: $00
	ld   bc, $5858                                   ; $4765: $01 $58 $58

jr_05a_4768:
	ld   e, e                                        ; $4768: $5b
	ld   a, c                                        ; $4769: $79
	sbc  a                                           ; $476a: $9f
	dec  c                                           ; $476b: $0d
	ld   h, c                                        ; $476c: $61
	ld   a, h                                        ; $476d: $7c
	inc  b                                           ; $476e: $04
	jr   c, jr_05a_4776                              ; $476f: $38 $05

	db   $d3                                         ; $4771: $d3
	ld   a, h                                        ; $4772: $7c
	ld   [bc], a                                     ; $4773: $02
	dec  sp                                          ; $4774: $3b
	ld   [bc], a                                     ; $4775: $02

jr_05a_4776:
	xor  b                                           ; $4776: $a8
	ld   [hl], l                                     ; $4777: $75
	inc  b                                           ; $4778: $04
	xor  b                                           ; $4779: $a8
	inc  b                                           ; $477a: $04
	inc  c                                           ; $477b: $0c
	and  b                                           ; $477c: $a0
	dec  c                                           ; $477d: $0d
	dec  b                                           ; $477e: $05
	adc  c                                           ; $477f: $89
	inc  bc                                          ; $4780: $03
	call nc, $a167                                   ; $4781: $d4 $67 $a1
	ld   a, e                                        ; $4784: $7b
	and  c                                           ; $4785: $a1
	sbc  a                                           ; $4786: $9f
	dec  c                                           ; $4787: $0d
	nop                                              ; $4788: $00
	ld   a, [bc]                                     ; $4789: $0a
	ld   b, $9c                                      ; $478a: $06 $9c
	dec  b                                           ; $478c: $05
	inc  e                                           ; $478d: $1c
	dec  b                                           ; $478e: $05
	nop                                              ; $478f: $00
	nop                                              ; $4790: $00
	ld   bc, $916f                                   ; $4791: $01 $6f $91
	ld   d, h                                        ; $4794: $54
	sbc  [hl]                                        ; $4795: $9e
	ld   l, a                                        ; $4796: $6f
	sub  c                                           ; $4797: $91
	ld   d, h                                        ; $4798: $54
	sbc  a                                           ; $4799: $9f
	dec  c                                           ; $479a: $0d
	ld   bc, $ad07                                   ; $479b: $01 $07 $ad
	jp   nz, $0801                                   ; $479e: $c2 $01 $08

	ld   [hl], c                                     ; $47a1: $71
	ld   l, a                                        ; $47a2: $6f
	sub  e                                           ; $47a3: $93
	ei                                               ; $47a4: $fb
	ld   a, h                                        ; $47a5: $7c
	ld   a, l                                        ; $47a6: $7d
	dec  c                                           ; $47a7: $0d
	inc  b                                           ; $47a8: $04
	jr   c, jr_05a_47b0                              ; $47a9: $38 $05

	db   $d3                                         ; $47ab: $d3
	ld   a, h                                        ; $47ac: $7c
	ld   [bc], a                                     ; $47ad: $02
	dec  sp                                          ; $47ae: $3b
	ld   [bc], a                                     ; $47af: $02

jr_05a_47b0:
	xor  b                                           ; $47b0: $a8
	ld   a, h                                        ; $47b1: $7c
	ld   h, c                                        ; $47b2: $61
	halt                                             ; $47b3: $76
	sub  d                                           ; $47b4: $92
	sbc  a                                           ; $47b5: $9f
	dec  c                                           ; $47b6: $0d
	nop                                              ; $47b7: $00
	ld   a, [bc]                                     ; $47b8: $0a
	ld   bc, $7c61                                   ; $47b9: $01 $61 $7c
	inc  b                                           ; $47bc: $04
	jr   c, jr_05a_47c4                              ; $47bd: $38 $05

	db   $d3                                         ; $47bf: $d3
	ld   a, h                                        ; $47c0: $7c
	ld   [bc], a                                     ; $47c1: $02
	dec  sp                                          ; $47c2: $3b
	ld   [bc], a                                     ; $47c3: $02

jr_05a_47c4:
	xor  b                                           ; $47c4: $a8
	ld   [hl], l                                     ; $47c5: $75
	inc  b                                           ; $47c6: $04
	xor  b                                           ; $47c7: $a8
	inc  b                                           ; $47c8: $04
	inc  c                                           ; $47c9: $0c
	and  b                                           ; $47ca: $a0
	dec  c                                           ; $47cb: $0d
	dec  b                                           ; $47cc: $05
	adc  c                                           ; $47cd: $89
	inc  bc                                          ; $47ce: $03
	call nc, $a167                                   ; $47cf: $d4 $67 $a1
	ld   a, e                                        ; $47d2: $7b
	and  c                                           ; $47d3: $a1
	sbc  a                                           ; $47d4: $9f
	dec  c                                           ; $47d5: $0d
	nop                                              ; $47d6: $00
	ld   a, [bc]                                     ; $47d7: $0a
	ld   b, $9c                                      ; $47d8: $06 $9c
	dec  b                                           ; $47da: $05
	inc  e                                           ; $47db: $1c
	dec  b                                           ; $47dc: $05
	dec  b                                           ; $47dd: $05
	dec  b                                           ; $47de: $05
	ld   bc, $546b                                   ; $47df: $01 $6b $54
	ld   l, e                                        ; $47e2: $6b
	ld   d, h                                        ; $47e3: $54
	sbc  [hl]                                        ; $47e4: $9e
	ld   h, c                                        ; $47e5: $61
	sbc  d                                           ; $47e6: $9a
	and  b                                           ; $47e7: $a0
	xor  l                                           ; $47e8: $ad
	jp   nz, $c2ad                                   ; $47e9: $c2 $ad $c2

	dec  c                                           ; $47ec: $0d
	ld   d, d                                        ; $47ed: $52
	sbc  l                                           ; $47ee: $9d
	ld   l, c                                        ; $47ef: $69
	ld   [hl], h                                     ; $47f0: $74
	ld   a, b                                        ; $47f1: $78
	sbc  [hl]                                        ; $47f2: $9e
	ld   h, e                                        ; $47f3: $63
	ld   e, l                                        ; $47f4: $5d
	sub  a                                           ; $47f5: $97
	ld   a, l                                        ; $47f6: $7d
	and  c                                           ; $47f7: $a1
	and  b                                           ; $47f8: $a0
	dec  c                                           ; $47f9: $0d
	ld   e, b                                        ; $47fa: $58
	ld   [hl], a                                     ; $47fb: $77
	sbc  e                                           ; $47fc: $9b
	ld   e, c                                        ; $47fd: $59
	ld   h, a                                        ; $47fe: $67
	and  c                                           ; $47ff: $a1
	sub  d                                           ; $4800: $92
	rst  $38                                         ; $4801: $ff
	rst  $38                                         ; $4802: $ff
	dec  c                                           ; $4803: $0d
	nop                                              ; $4804: $00
	ld   a, [bc]                                     ; $4805: $0a
	inc  e                                           ; $4806: $1c
	dec  b                                           ; $4807: $05
	inc  bc                                          ; $4808: $03
	inc  bc                                          ; $4809: $03
	dec  e                                           ; $480a: $1d
	ld   b, b                                        ; $480b: $40
	dec  d                                           ; $480c: $15
	inc  bc                                          ; $480d: $03
	dec  d                                           ; $480e: $15
	ld   bc, $2801                                   ; $480f: $01 $01 $28
	nop                                              ; $4812: $00
	ld   bc, $7471                                   ; $4813: $01 $71 $74
	ld   a, b                                        ; $4816: $78
	and  c                                           ; $4817: $a1
	ld   [hl], l                                     ; $4818: $75
	sub  d                                           ; $4819: $92
	ld   a, e                                        ; $481a: $7b
	and  c                                           ; $481b: $a1
	ld   a, [$030d]                                  ; $481c: $fa $0d $03
	ld   hl, sp-$69                                  ; $481f: $f8 $97
	sbc  d                                           ; $4821: $9a
	sbc  c                                           ; $4822: $99
	ld   e, d                                        ; $4823: $5a
	ld   a, b                                        ; $4824: $78
	sbc  [hl]                                        ; $4825: $9e
	ld   h, e                                        ; $4826: $63
	ld   e, l                                        ; $4827: $5d
	sub  a                                           ; $4828: $97
	ld   a, l                                        ; $4829: $7d
	and  c                                           ; $482a: $a1
	ld   a, c                                        ; $482b: $79
	sbc  a                                           ; $482c: $9f
	dec  c                                           ; $482d: $0d
	ld   a, b                                        ; $482e: $78
	and  c                                           ; $482f: $a1
	ld   l, a                                        ; $4830: $6f
	sub  e                                           ; $4831: $93
	ei                                               ; $4832: $fb
	db   $dd                                         ; $4833: $dd
	or   d                                           ; $4834: $b2
	and  b                                           ; $4835: $a0
	sub  d                                           ; $4836: $92
	sub  a                                           ; $4837: $97
	ld   h, a                                        ; $4838: $67
	ld   a, e                                        ; $4839: $7b
	and  c                                           ; $483a: $a1
	sbc  a                                           ; $483b: $9f
	dec  c                                           ; $483c: $0d
	nop                                              ; $483d: $00
	ld   a, [bc]                                     ; $483e: $0a
	inc  e                                           ; $483f: $1c
	dec  b                                           ; $4840: $05
	nop                                              ; $4841: $00
	nop                                              ; $4842: $00
	ld   bc, $0701                                   ; $4843: $01 $01 $07
	xor  l                                           ; $4846: $ad
	jp   nz, $0801                                   ; $4847: $c2 $01 $08

	ld   [hl], c                                     ; $484a: $71
	ld   l, a                                        ; $484b: $6f
	sub  e                                           ; $484c: $93
	ei                                               ; $484d: $fb
	ld   a, h                                        ; $484e: $7c
	ld   a, l                                        ; $484f: $7d
	sbc  [hl]                                        ; $4850: $9e
	dec  c                                           ; $4851: $0d
	ld   l, e                                        ; $4852: $6b
	ld   h, c                                        ; $4853: $61
	ld   a, h                                        ; $4854: $7c
	inc  b                                           ; $4855: $04
	jr   c, jr_05a_485d                              ; $4856: $38 $05

	db   $d3                                         ; $4858: $d3
	ld   a, h                                        ; $4859: $7c
	ld   [bc], a                                     ; $485a: $02
	dec  sp                                          ; $485b: $3b
	ld   [bc], a                                     ; $485c: $02

jr_05a_485d:
	xor  b                                           ; $485d: $a8
	sbc  a                                           ; $485e: $9f
	dec  c                                           ; $485f: $0d
	inc  b                                           ; $4860: $04
	xor  b                                           ; $4861: $a8
	inc  b                                           ; $4862: $04
	inc  c                                           ; $4863: $0c
	and  b                                           ; $4864: $a0
	dec  b                                           ; $4865: $05
	adc  c                                           ; $4866: $89
	inc  bc                                          ; $4867: $03
	call nc, $9967                                   ; $4868: $d4 $67 $99
	ld   a, h                                        ; $486b: $7c
	ld   a, c                                        ; $486c: $79
	inc  bc                                          ; $486d: $03
	xor  [hl]                                        ; $486e: $ae
	ld   d, h                                        ; $486f: $54
	and  c                                           ; $4870: $a1
	sub  d                                           ; $4871: $92
	sbc  a                                           ; $4872: $9f
	dec  c                                           ; $4873: $0d
	nop                                              ; $4874: $00
	ld   a, [bc]                                     ; $4875: $0a
	ld   b, $9c                                      ; $4876: $06 $9c
	dec  b                                           ; $4878: $05
	inc  e                                           ; $4879: $1c
	dec  b                                           ; $487a: $05
	nop                                              ; $487b: $00
	nop                                              ; $487c: $00
	ld   bc, $0701                                   ; $487d: $01 $01 $07
	xor  l                                           ; $4880: $ad
	jp   nz, $0801                                   ; $4881: $c2 $01 $08

	ld   [hl], c                                     ; $4884: $71
	ld   l, a                                        ; $4885: $6f
	sub  e                                           ; $4886: $93
	ei                                               ; $4887: $fb
	ld   a, h                                        ; $4888: $7c
	ld   a, l                                        ; $4889: $7d
	sbc  [hl]                                        ; $488a: $9e
	dec  c                                           ; $488b: $0d
	ld   l, e                                        ; $488c: $6b
	ld   h, c                                        ; $488d: $61
	ld   a, h                                        ; $488e: $7c
	inc  b                                           ; $488f: $04
	jr   c, jr_05a_4897                              ; $4890: $38 $05

	db   $d3                                         ; $4892: $d3
	ld   a, h                                        ; $4893: $7c
	ld   [bc], a                                     ; $4894: $02
	dec  sp                                          ; $4895: $3b
	ld   [bc], a                                     ; $4896: $02

jr_05a_4897:
	xor  b                                           ; $4897: $a8
	ld   a, h                                        ; $4898: $7c
	ld   h, c                                        ; $4899: $61
	halt                                             ; $489a: $76
	sbc  a                                           ; $489b: $9f
	dec  c                                           ; $489c: $0d
	inc  b                                           ; $489d: $04
	xor  b                                           ; $489e: $a8
	inc  b                                           ; $489f: $04
	inc  c                                           ; $48a0: $0c
	and  b                                           ; $48a1: $a0
	dec  b                                           ; $48a2: $05
	adc  c                                           ; $48a3: $89
	inc  bc                                          ; $48a4: $03
	call nc, $9967                                   ; $48a5: $d4 $67 $99
	ld   a, h                                        ; $48a8: $7c
	ld   a, c                                        ; $48a9: $79
	inc  bc                                          ; $48aa: $03
	xor  [hl]                                        ; $48ab: $ae
	ld   d, h                                        ; $48ac: $54
	and  c                                           ; $48ad: $a1
	sub  d                                           ; $48ae: $92
	sbc  a                                           ; $48af: $9f
	dec  c                                           ; $48b0: $0d
	nop                                              ; $48b1: $00
	ld   a, [bc]                                     ; $48b2: $0a
	ld   bc, $6596                                   ; $48b3: $01 $96 $65
	sbc  [hl]                                        ; $48b6: $9e
	ld   h, c                                        ; $48b7: $61
	sbc  d                                           ; $48b8: $9a
	ld   [hl], l                                     ; $48b9: $75
	inc  b                                           ; $48ba: $04
	inc  c                                           ; $48bb: $0c
	ld   e, d                                        ; $48bc: $5a
	ld   [hl], l                                     ; $48bd: $75
	ld   e, e                                        ; $48be: $5b
	ld   l, l                                        ; $48bf: $6d
	sbc  a                                           ; $48c0: $9f
	dec  c                                           ; $48c1: $0d
	ld   [bc], a                                     ; $48c2: $02
	rra                                              ; $48c3: $1f
	ld   [bc], a                                     ; $48c4: $02
	sub  d                                           ; $48c5: $92
	ld   [hl], l                                     ; $48c6: $75
	ld   a, l                                        ; $48c7: $7d
	sbc  [hl]                                        ; $48c8: $9e
	ld   h, c                                        ; $48c9: $61
	ld   d, h                                        ; $48ca: $54
	sub  d                                           ; $48cb: $92
	ld   [hl], c                                     ; $48cc: $71
	ld   [hl], h                                     ; $48cd: $74
	inc  b                                           ; $48ce: $04
	inc  c                                           ; $48cf: $0c
	and  b                                           ; $48d0: $a0
	dec  c                                           ; $48d1: $0d
	ld   [hl], d                                     ; $48d2: $72
	ld   e, l                                        ; $48d3: $5d
	sbc  c                                           ; $48d4: $99
	and  c                                           ; $48d5: $a1
	sub  d                                           ; $48d6: $92
	sbc  a                                           ; $48d7: $9f
	dec  c                                           ; $48d8: $0d
	nop                                              ; $48d9: $00
	ld   a, [bc]                                     ; $48da: $0a
	ld   bc, $0008                                   ; $48db: $01 $08 $00
	ld   a, l                                        ; $48de: $7d
	and  c                                           ; $48df: $a1
	sbc  a                                           ; $48e0: $9f
	dec  c                                           ; $48e1: $0d
	inc  bc                                          ; $48e2: $03
	ld   l, e                                        ; $48e3: $6b
	inc  b                                           ; $48e4: $04
	ld   [de], a                                     ; $48e5: $12
	ld   [hl], c                                     ; $48e6: $71
	ld   [hl], h                                     ; $48e7: $74
	ld   e, l                                        ; $48e8: $5d
	sbc  d                                           ; $48e9: $9a
	ld   [hl], h                                     ; $48ea: $74
	sbc  [hl]                                        ; $48eb: $9e
	ld   e, b                                        ; $48ec: $58
	ld   e, b                                        ; $48ed: $58
	ld   e, e                                        ; $48ee: $5b
	ld   a, c                                        ; $48ef: $79
	ld   a, b                                        ; $48f0: $78
	sbc  a                                           ; $48f1: $9f
	dec  c                                           ; $48f2: $0d
	nop                                              ; $48f3: $00
	ld   a, [bc]                                     ; $48f4: $0a
	nop                                              ; $48f5: $00
	nop                                              ; $48f6: $00
	ld   c, $65                                      ; $48f7: $0e $65
	inc  e                                           ; $48f9: $1c
	ld   [bc], a                                     ; $48fa: $02
	nop                                              ; $48fb: $00
	nop                                              ; $48fc: $00
	ld   [bc], a                                     ; $48fd: $02
	ld   bc, $9e50                                   ; $48fe: $01 $50 $9e
	ld   [$6300], sp                                 ; $4901: $08 $00 $63
	and  c                                           ; $4904: $a1
	sbc  a                                           ; $4905: $9f
	dec  c                                           ; $4906: $0d
	ld   l, a                                        ; $4907: $6f
	sub  l                                           ; $4908: $95
	ld   d, h                                        ; $4909: $54
	ld   [hl], a                                     ; $490a: $77
	ld   d, d                                        ; $490b: $52
	ld   d, d                                        ; $490c: $52
	halt                                             ; $490d: $76
	ld   h, c                                        ; $490e: $61
	sbc  e                                           ; $490f: $9b
	ld   a, c                                        ; $4910: $79
	rst  $38                                         ; $4911: $ff
	rst  $38                                         ; $4912: $ff
	dec  c                                           ; $4913: $0d
	nop                                              ; $4914: $00
	ld   a, [bc]                                     ; $4915: $0a
	ld   bc, $e5b8                                   ; $4916: $01 $b8 $e5
	pop  af                                          ; $4919: $f1
	ei                                               ; $491a: $fb
	ld   a, h                                        ; $491b: $7c
	inc  bc                                          ; $491c: $03
	cp   $03                                         ; $491d: $fe $03
	add  [hl]                                        ; $491f: $86
	ld   e, d                                        ; $4920: $5a
	ld   e, b                                        ; $4921: $58
	ld   e, c                                        ; $4922: $59
	ld   h, l                                        ; $4923: $65
	ld   e, l                                        ; $4924: $5d
	ld   [hl], h                                     ; $4925: $74
	dec  c                                           ; $4926: $0d
	dec  b                                           ; $4927: $05
	sub  [hl]                                        ; $4928: $96
	ld   [hl], c                                     ; $4929: $71
	ld   [hl], h                                     ; $492a: $74
	ld   d, d                                        ; $492b: $52
	sbc  c                                           ; $492c: $99
	ld   a, h                                        ; $492d: $7c
	sbc  a                                           ; $492e: $9f
	dec  c                                           ; $492f: $0d
	ld   [bc], a                                     ; $4930: $02
	sub  l                                           ; $4931: $95
	ld   [hl], h                                     ; $4932: $74
	ld   l, a                                        ; $4933: $6f
	sub  l                                           ; $4934: $95
	ld   d, h                                        ; $4935: $54
	ld   l, [hl]                                     ; $4936: $6e
	ld   d, d                                        ; $4937: $52
	sbc  a                                           ; $4938: $9f
	dec  c                                           ; $4939: $0d
	nop                                              ; $493a: $00
	ld   a, [bc]                                     ; $493b: $0a
	add  hl, de                                      ; $493c: $19
	dec  b                                           ; $493d: $05
	ld   [bc], a                                     ; $493e: $02
	ld   a, l                                        ; $493f: $7d
	ld   d, d                                        ; $4940: $52
	nop                                              ; $4941: $00
	nop                                              ; $4942: $00
	ld   d, d                                        ; $4943: $52
	ld   d, d                                        ; $4944: $52
	ld   d, [hl]                                     ; $4945: $56
	nop                                              ; $4946: $00
	ld   bc, $da07                                   ; $4947: $01 $07 $da
	nop                                              ; $494a: $00
	ld   [bc], a                                     ; $494b: $02
	inc  bc                                          ; $494c: $03
	ld   bc, $2000                                   ; $494d: $01 $00 $20
	nop                                              ; $4950: $00
	rlca                                             ; $4951: $07
	ld   h, [hl]                                     ; $4952: $66
	nop                                              ; $4953: $00
	ld   [bc], a                                     ; $4954: $02
	inc  bc                                          ; $4955: $03
	ld   bc, $2001                                   ; $4956: $01 $01 $20
	nop                                              ; $4959: $00
	ld   b, $a6                                      ; $495a: $06 $a6
	nop                                              ; $495c: $00
	rrca                                             ; $495d: $0f
	nop                                              ; $495e: $00
	ld   bc, $6701                                   ; $495f: $01 $01 $67
	adc  l                                           ; $4962: $8d
	adc  h                                           ; $4963: $8c
	ld   l, c                                        ; $4964: $69
	and  c                                           ; $4965: $a1
	sbc  a                                           ; $4966: $9f
	dec  c                                           ; $4967: $0d
	ld   [bc], a                                     ; $4968: $02
	and  l                                           ; $4969: $a5
	ld   l, a                                        ; $496a: $6f
	sub  l                                           ; $496b: $95
	ld   [hl], c                                     ; $496c: $71
	halt                                             ; $496d: $76
	inc  b                                           ; $496e: $04
	ld   [hl], l                                     ; $496f: $75
	ld   h, l                                        ; $4970: $65
	ld   d, d                                        ; $4971: $52
	and  c                                           ; $4972: $a1
	ld   [hl], l                                     ; $4973: $75
	ld   h, a                                        ; $4974: $67
	sbc  a                                           ; $4975: $9f
	dec  c                                           ; $4976: $0d
	nop                                              ; $4977: $00
	ld   a, [bc]                                     ; $4978: $0a
	inc  e                                           ; $4979: $1c
	ld   [bc], a                                     ; $497a: $02
	dec  b                                           ; $497b: $05
	dec  b                                           ; $497c: $05
	dec  e                                           ; $497d: $1d
	ld   b, b                                        ; $497e: $40
	ld   [de], a                                     ; $497f: $12
	inc  bc                                          ; $4980: $03
	ld   [de], a                                     ; $4981: $12
	ld   bc, $2902                                   ; $4982: $01 $02 $29
	nop                                              ; $4985: $00
	ld   bc, $546b                                   ; $4986: $01 $6b $54
	ld   [hl], l                                     ; $4989: $75
	ld   h, a                                        ; $498a: $67
	ld   e, c                                        ; $498b: $59
	sbc  a                                           ; $498c: $9f
	dec  c                                           ; $498d: $0d
	ld   a, b                                        ; $498e: $78
	sub  a                                           ; $498f: $97
	sbc  [hl]                                        ; $4990: $9e
	ld   e, a                                        ; $4991: $5f
	ld   [hl], c                                     ; $4992: $71
	ld   h, c                                        ; $4993: $61
	ld   d, h                                        ; $4994: $54
	ld   [hl], l                                     ; $4995: $75
	ld   h, a                                        ; $4996: $67
	sbc  l                                           ; $4997: $9d
	sbc  a                                           ; $4998: $9f
	dec  c                                           ; $4999: $0d
	nop                                              ; $499a: $00
	ld   a, [bc]                                     ; $499b: $0a
	nop                                              ; $499c: $00
	inc  e                                           ; $499d: $1c
	ld   [bc], a                                     ; $499e: $02
	ld   [bc], a                                     ; $499f: $02
	ld   [bc], a                                     ; $49a0: $02
	dec  e                                           ; $49a1: $1d

jr_05a_49a2:
	ld   b, b                                        ; $49a2: $40
	ld   [de], a                                     ; $49a3: $12
	inc  bc                                          ; $49a4: $03
	ld   [de], a                                     ; $49a5: $12
	ld   bc, $2903                                   ; $49a6: $01 $03 $29
	nop                                              ; $49a9: $00
	ld   bc, $5477                                   ; $49aa: $01 $77 $54
	ld   h, l                                        ; $49ad: $65
	ld   l, l                                        ; $49ae: $6d
	and  c                                           ; $49af: $a1
	ld   [hl], l                                     ; $49b0: $75
	ld   h, a                                        ; $49b1: $67
	ld   a, h                                        ; $49b2: $7c
	ld   sp, hl                                      ; $49b3: $f9
	dec  c                                           ; $49b4: $0d
	ld   d, d                                        ; $49b5: $52
	sub  d                                           ; $49b6: $92
	ld   a, b                                        ; $49b7: $78
	sub  a                                           ; $49b8: $97
	ld   d, d                                        ; $49b9: $52
	sub  d                                           ; $49ba: $92
	halt                                             ; $49bb: $76
	ld   [bc], a                                     ; $49bc: $02
	sbc  l                                           ; $49bd: $9d
	ld   d, d                                        ; $49be: $52
	ld   a, b                                        ; $49bf: $78
	ld   h, e                                        ; $49c0: $63
	ld   d, d                                        ; $49c1: $52
	sbc  a                                           ; $49c2: $9f
	dec  c                                           ; $49c3: $0d
	sub  b                                           ; $49c4: $90
	ld   d, h                                        ; $49c5: $54
	sbc  [hl]                                        ; $49c6: $9e
	ld   d, d                                        ; $49c7: $52
	ld   d, d                                        ; $49c8: $52
	ld   [hl], l                                     ; $49c9: $75
	ld   h, a                                        ; $49ca: $67
	sbc  l                                           ; $49cb: $9d
	ld   a, [$000d]                                  ; $49cc: $fa $0d $00
	ld   a, [bc]                                     ; $49cf: $0a
	nop                                              ; $49d0: $00
	rrca                                             ; $49d1: $0f
	nop                                              ; $49d2: $00
	ld   bc, $7d01                                   ; $49d3: $01 $01 $7d
	ld   d, d                                        ; $49d6: $52
	sbc  [hl]                                        ; $49d7: $9e
	sbc  l                                           ; $49d8: $9d
	ld   e, c                                        ; $49d9: $59
	sbc  b                                           ; $49da: $98
	adc  h                                           ; $49db: $8c
	ld   h, l                                        ; $49dc: $65
	ld   l, l                                        ; $49dd: $6d
	sbc  a                                           ; $49de: $9f
	dec  c                                           ; $49df: $0d
	ld   [bc], a                                     ; $49e0: $02
	sub  l                                           ; $49e1: $95
	ld   [hl], h                                     ; $49e2: $74
	adc  l                                           ; $49e3: $8d
	adc  h                                           ; $49e4: $8c
	ld   h, l                                        ; $49e5: $65
	sub  l                                           ; $49e6: $95
	ld   d, h                                        ; $49e7: $54
	sbc  a                                           ; $49e8: $9f
	dec  c                                           ; $49e9: $0d
	nop                                              ; $49ea: $00
	ld   a, [bc]                                     ; $49eb: $0a
	inc  c                                           ; $49ec: $0c
	dec  bc                                          ; $49ed: $0b
	ld   bc, $7e03                                   ; $49ee: $01 $03 $7e
	sbc  l                                           ; $49f1: $9d
	sbc  b                                           ; $49f2: $98
	adc  h                                           ; $49f3: $8c
	ld   h, l                                        ; $49f4: $65
	ld   l, l                                        ; $49f5: $6d
	sbc  a                                           ; $49f6: $9f
	dec  c                                           ; $49f7: $0d
	jp   nc, $aec4                                   ; $49f8: $d2 $c4 $ae

	push af                                          ; $49fb: $f5
	ld   e, d                                        ; $49fc: $5a
	inc  bc                                          ; $49fd: $03
	inc  a                                           ; $49fe: $3c
	ld   [hl], c                                     ; $49ff: $71
	ld   [hl], h                                     ; $4a00: $74
	adc  h                                           ; $4a01: $8c
	ld   h, l                                        ; $4a02: $65
	ld   l, l                                        ; $4a03: $6d
	ld   e, c                                        ; $4a04: $59
	sub  a                                           ; $4a05: $97
	dec  c                                           ; $4a06: $0d
	inc  bc                                          ; $4a07: $03
	jr   jr_05a_49a2                                 ; $4a08: $18 $98

	dec  b                                           ; $4a0a: $05
	scf                                              ; $4a0b: $37
	ld   d, [hl]                                     ; $4a0c: $56
	ld   [hl], h                                     ; $4a0d: $74
	ld   e, b                                        ; $4a0e: $58
	ld   e, e                                        ; $4a0f: $5b
	adc  h                                           ; $4a10: $8c
	ld   h, l                                        ; $4a11: $65
	ld   l, l                                        ; $4a12: $6d
	sbc  a                                           ; $4a13: $9f
	dec  c                                           ; $4a14: $0d
	nop                                              ; $4a15: $00
	ld   a, [bc]                                     ; $4a16: $0a
	inc  e                                           ; $4a17: $1c
	ld   [bc], a                                     ; $4a18: $02
	ld   bc, $1d01                                   ; $4a19: $01 $01 $1d
	ld   b, b                                        ; $4a1c: $40
	ld   [de], a                                     ; $4a1d: $12
	inc  bc                                          ; $4a1e: $03
	ld   [de], a                                     ; $4a1f: $12
	ld   bc, $2802                                   ; $4a20: $01 $02 $28
	nop                                              ; $4a23: $00
	ld   bc, $9850                                   ; $4a24: $01 $50 $98
	ld   e, d                                        ; $4a27: $5a
	halt                                             ; $4a28: $76
	ld   d, h                                        ; $4a29: $54
	sbc  a                                           ; $4a2a: $9f
	dec  c                                           ; $4a2b: $0d
	halt                                             ; $4a2c: $76
	ld   h, c                                        ; $4a2d: $61
	sbc  e                                           ; $4a2e: $9b
	ld   [hl], l                                     ; $4a2f: $75
	sbc  [hl]                                        ; $4a30: $9e
	ld   [$6300], sp                                 ; $4a31: $08 $00 $63
	and  c                                           ; $4a34: $a1
	sbc  a                                           ; $4a35: $9f
	dec  c                                           ; $4a36: $0d
	ld   a, b                                        ; $4a37: $78
	ld   l, d                                        ; $4a38: $6a
	sbc  [hl]                                        ; $4a39: $9e
	ld   h, c                                        ; $4a3a: $61
	ld   h, c                                        ; $4a3b: $61
	ld   a, c                                        ; $4a3c: $79
	dec  b                                           ; $4a3d: $05
	db   $10                                         ; $4a3e: $10
	ld   l, l                                        ; $4a3f: $6d
	ld   a, h                                        ; $4a40: $7c
	ld   sp, hl                                      ; $4a41: $f9
	dec  c                                           ; $4a42: $0d
	nop                                              ; $4a43: $00
	ld   a, [bc]                                     ; $4a44: $0a
	add  hl, de                                      ; $4a45: $19
	dec  b                                           ; $4a46: $05
	ld   [bc], a                                     ; $4a47: $02
	cp   b                                           ; $4a48: $b8
	push hl                                          ; $4a49: $e5
	pop  af                                          ; $4a4a: $f1
	ei                                               ; $4a4b: $fb
	and  b                                           ; $4a4c: $a0
	inc  b                                           ; $4a4d: $04
	and  $81                                         ; $4a4e: $e6 $81
	ld   a, c                                        ; $4a50: $79
	nop                                              ; $4a51: $00
	nop                                              ; $4a52: $00
	ld   h, a                                        ; $4a53: $67
	adc  l                                           ; $4a54: $8d
	sbc  d                                           ; $4a55: $9a
	ld   h, e                                        ; $4a56: $63
	and  c                                           ; $4a57: $a1
	ld   a, h                                        ; $4a58: $7c
	ld   e, b                                        ; $4a59: $58
	ld   [bc], a                                     ; $4a5a: $02
	di                                               ; $4a5b: $f3
	and  b                                           ; $4a5c: $a0
	dec  b                                           ; $4a5d: $05
	ld   d, h                                        ; $4a5e: $54
	ld   [bc], a                                     ; $4a5f: $02
	sub  l                                           ; $4a60: $95
	ld   a, c                                        ; $4a61: $79
	nop                                              ; $4a62: $00
	ld   bc, $8207                                   ; $4a63: $01 $07 $82
	ld   bc, $0302                                   ; $4a66: $01 $02 $03
	ld   bc, $2000                                   ; $4a69: $01 $00 $20
	nop                                              ; $4a6c: $00
	rlca                                             ; $4a6d: $07
	jp   z, $0201                                    ; $4a6e: $ca $01 $02

	inc  bc                                          ; $4a71: $03
	ld   bc, $2001                                   ; $4a72: $01 $01 $20
	nop                                              ; $4a75: $00
	ld   b, $4c                                      ; $4a76: $06 $4c
	ld   [bc], a                                     ; $4a78: $02
	rrca                                             ; $4a79: $0f
	nop                                              ; $4a7a: $00
	ld   bc, $b801                                   ; $4a7b: $01 $01 $b8
	push hl                                          ; $4a7e: $e5
	pop  af                                          ; $4a7f: $f1
	ei                                               ; $4a80: $fb
	and  b                                           ; $4a81: $a0
	inc  b                                           ; $4a82: $04
	and  $81                                         ; $4a83: $e6 $81
	ld   a, c                                        ; $4a85: $79
	dec  b                                           ; $4a86: $05
	db   $10                                         ; $4a87: $10
	ld   l, l                                        ; $4a88: $6d
	and  c                                           ; $4a89: $a1
	ld   [hl], l                                     ; $4a8a: $75
	ld   h, a                                        ; $4a8b: $67
	sbc  a                                           ; $4a8c: $9f
	dec  c                                           ; $4a8d: $0d
	nop                                              ; $4a8e: $00
	ld   a, [bc]                                     ; $4a8f: $0a
	inc  e                                           ; $4a90: $1c
	ld   [bc], a                                     ; $4a91: $02
	nop                                              ; $4a92: $00
	nop                                              ; $4a93: $00
	ld   bc, $9750                                   ; $4a94: $01 $50 $97
	ld   l, e                                        ; $4a97: $6b
	ld   d, h                                        ; $4a98: $54
	ld   a, b                                        ; $4a99: $78
	ld   a, h                                        ; $4a9a: $7c
	ld   sp, hl                                      ; $4a9b: $f9
	dec  c                                           ; $4a9c: $0d
	ld   [hl], l                                     ; $4a9d: $75
	ld   a, l                                        ; $4a9e: $7d
	sbc  [hl]                                        ; $4a9f: $9e
	sbc  l                                           ; $4aa0: $9d
	ld   l, l                                        ; $4aa1: $6d
	ld   e, l                                        ; $4aa2: $5d
	ld   h, l                                        ; $4aa3: $65
	ld   a, h                                        ; $4aa4: $7c
	ld   [bc], a                                     ; $4aa5: $02
	xor  d                                           ; $4aa6: $aa
	ld   a, c                                        ; $4aa7: $79
	ld   a, e                                        ; $4aa8: $7b
	sbc  a                                           ; $4aa9: $9f
	dec  c                                           ; $4aaa: $0d
	ld   e, b                                        ; $4aab: $58
	inc  bc                                          ; $4aac: $03
	ld   a, b                                        ; $4aad: $78
	ld   a, c                                        ; $4aae: $79
	inc  bc                                          ; $4aaf: $03
	add  e                                           ; $4ab0: $83
	dec  b                                           ; $4ab1: $05
	dec  c                                           ; $4ab2: $0d
	rst  $38                                         ; $4ab3: $ff
	rst  $38                                         ; $4ab4: $ff
	dec  c                                           ; $4ab5: $0d
	nop                                              ; $4ab6: $00
	ld   a, [bc]                                     ; $4ab7: $0a
	dec  c                                           ; $4ab8: $0d
	nop                                              ; $4ab9: $00
	nop                                              ; $4aba: $00
	rrca                                             ; $4abb: $0f
	nop                                              ; $4abc: $00
	ld   bc, $1e09                                   ; $4abd: $01 $09 $1e
	nop                                              ; $4ac0: $00
	rrca                                             ; $4ac1: $0f
	nop                                              ; $4ac2: $00
	ld   bc, $6701                                   ; $4ac3: $01 $01 $67
	adc  l                                           ; $4ac6: $8d
	sbc  d                                           ; $4ac7: $9a
	ld   h, e                                        ; $4ac8: $63
	and  c                                           ; $4ac9: $a1
	ld   a, h                                        ; $4aca: $7c
	ld   e, b                                        ; $4acb: $58
	ld   [bc], a                                     ; $4acc: $02
	di                                               ; $4acd: $f3
	and  b                                           ; $4ace: $a0
	dec  b                                           ; $4acf: $05
	ld   d, h                                        ; $4ad0: $54
	ld   [bc], a                                     ; $4ad1: $02
	sub  l                                           ; $4ad2: $95
	ld   h, l                                        ; $4ad3: $65
	ld   a, c                                        ; $4ad4: $79
	rst  $38                                         ; $4ad5: $ff
	dec  c                                           ; $4ad6: $0d
	nop                                              ; $4ad7: $00
	ld   a, [bc]                                     ; $4ad8: $0a
	inc  e                                           ; $4ad9: $1c
	ld   [bc], a                                     ; $4ada: $02
	rlca                                             ; $4adb: $07
	rlca                                             ; $4adc: $07
	ld   bc, $e5b8                                   ; $4add: $01 $b8 $e5
	pop  af                                          ; $4ae0: $f1
	ei                                               ; $4ae1: $fb
	inc  bc                                          ; $4ae2: $03
	ld   c, l                                        ; $4ae3: $4d
	ld   a, c                                        ; $4ae4: $79
	ld   sp, hl                                      ; $4ae5: $f9
	dec  c                                           ; $4ae6: $0d
	ld   [$6300], sp                                 ; $4ae7: $08 $00 $63
	and  c                                           ; $4aea: $a1
	sbc  a                                           ; $4aeb: $9f
	ld   l, e                                        ; $4aec: $6b
	sbc  d                                           ; $4aed: $9a
	ld   a, l                                        ; $4aee: $7d
	sbc  [hl]                                        ; $4aef: $9e
	dec  c                                           ; $4af0: $0d
	ld   a, h                                        ; $4af1: $7c
	ld   l, h                                        ; $4af2: $6c
	ld   e, e                                        ; $4af3: $5b
	halt                                             ; $4af4: $76
	ld   [bc], a                                     ; $4af5: $02
	sbc  l                                           ; $4af6: $9d
	ld   d, h                                        ; $4af7: $54
	sub  b                                           ; $4af8: $90
	ld   a, h                                        ; $4af9: $7c
	ld   [hl], l                                     ; $4afa: $75
	ld   h, a                                        ; $4afb: $67
	sbc  l                                           ; $4afc: $9d
	sbc  a                                           ; $4afd: $9f
	dec  c                                           ; $4afe: $0d
	nop                                              ; $4aff: $00
	ld   a, [bc]                                     ; $4b00: $0a
	inc  e                                           ; $4b01: $1c
	ld   [bc], a                                     ; $4b02: $02
	ld   [bc], a                                     ; $4b03: $02
	ld   [bc], a                                     ; $4b04: $02
	dec  e                                           ; $4b05: $1d
	ld   b, b                                        ; $4b06: $40
	ld   [de], a                                     ; $4b07: $12
	inc  bc                                          ; $4b08: $03
	ld   [de], a                                     ; $4b09: $12
	ld   bc, $2903                                   ; $4b0a: $01 $03 $29
	nop                                              ; $4b0d: $00
	ld   bc, $7850                                   ; $4b0e: $01 $50 $78
	ld   l, l                                        ; $4b11: $6d
	ld   a, l                                        ; $4b12: $7d
	sbc  [hl]                                        ; $4b13: $9e
	inc  b                                           ; $4b14: $04
	dec  c                                           ; $4b15: $0d
	ld   [bc], a                                     ; $4b16: $02
	sub  [hl]                                        ; $4b17: $96
	inc  b                                           ; $4b18: $04
	ld   b, l                                        ; $4b19: $45
	inc  b                                           ; $4b1a: $04
	ld   a, [bc]                                     ; $4b1b: $0a
	inc  b                                           ; $4b1c: $04
	dec  bc                                          ; $4b1d: $0b
	ld   a, b                                        ; $4b1e: $78
	ld   a, h                                        ; $4b1f: $7c
	dec  c                                           ; $4b20: $0d
	ld   [hl], l                                     ; $4b21: $75
	ld   h, a                                        ; $4b22: $67
	sbc  l                                           ; $4b23: $9d
	sub  [hl]                                        ; $4b24: $96
	ld   a, [$9010]                                  ; $4b25: $fa $10 $90
	ld   [hl], c                                     ; $4b28: $71
	halt                                             ; $4b29: $76
	ld   h, [hl]                                     ; $4b2a: $66
	ld   e, c                                        ; $4b2b: $59
	ld   e, l                                        ; $4b2c: $5d
	and  b                                           ; $4b2d: $a0
	dec  c                                           ; $4b2e: $0d
	ld   e, b                                        ; $4b2f: $58
	inc  bc                                          ; $4b30: $03
	and  b                                           ; $4b31: $a0
	ld   l, a                                        ; $4b32: $6f
	ld   a, b                                        ; $4b33: $78
	ld   h, e                                        ; $4b34: $63
	ld   d, d                                        ; $4b35: $52
	ld   a, [$000d]                                  ; $4b36: $fa $0d $00
	ld   a, [bc]                                     ; $4b39: $0a
	dec  c                                           ; $4b3a: $0d
	nop                                              ; $4b3b: $00
	nop                                              ; $4b3c: $00
	rrca                                             ; $4b3d: $0f
	nop                                              ; $4b3e: $00
	ld   bc, $1e09                                   ; $4b3f: $01 $09 $1e
	nop                                              ; $4b42: $00
	rrca                                             ; $4b43: $0f
	nop                                              ; $4b44: $00
	ld   bc, $5001                                   ; $4b45: $01 $01 $50
	ld   a, h                                        ; $4b48: $7c
	rst  $38                                         ; $4b49: $ff
	rst  $38                                         ; $4b4a: $ff
	sbc  [hl]                                        ; $4b4b: $9e
	ld   l, e                                        ; $4b4c: $6b
	ld   a, h                                        ; $4b4d: $7c
	rst  $38                                         ; $4b4e: $ff
	rst  $38                                         ; $4b4f: $ff
	dec  c                                           ; $4b50: $0d
	nop                                              ; $4b51: $00
	ld   a, [bc]                                     ; $4b52: $0a
	inc  e                                           ; $4b53: $1c
	ld   [bc], a                                     ; $4b54: $02
	dec  b                                           ; $4b55: $05
	dec  b                                           ; $4b56: $05
	ld   bc, $4904                                   ; $4b57: $01 $04 $49
	ld   [hl], l                                     ; $4b5a: $75
	ld   h, a                                        ; $4b5b: $67
	ld   a, h                                        ; $4b5c: $7c
	ld   sp, hl                                      ; $4b5d: $f9
	dec  c                                           ; $4b5e: $0d
	ld   a, b                                        ; $4b5f: $78
	and  c                                           ; $4b60: $a1
	ld   l, [hl]                                     ; $4b61: $6e
	ld   e, c                                        ; $4b62: $59
	ld   a, l                                        ; $4b63: $7d
	ld   [hl], c                                     ; $4b64: $71
	ld   e, e                                        ; $4b65: $5b
	sbc  b                                           ; $4b66: $98
	dec  c                                           ; $4b67: $0d
	ld   h, l                                        ; $4b68: $65
	adc  h                                           ; $4b69: $8c
	ld   l, c                                        ; $4b6a: $69
	and  c                                           ; $4b6b: $a1
	ld   [hl], l                                     ; $4b6c: $75
	ld   h, a                                        ; $4b6d: $67
	sbc  l                                           ; $4b6e: $9d
	ld   a, e                                        ; $4b6f: $7b
	ld   sp, hl                                      ; $4b70: $f9
	dec  c                                           ; $4b71: $0d
	nop                                              ; $4b72: $00
	ld   a, [bc]                                     ; $4b73: $0a
	inc  e                                           ; $4b74: $1c
	ld   [bc], a                                     ; $4b75: $02
	nop                                              ; $4b76: $00
	nop                                              ; $4b77: $00
	ld   bc, $ffff                                   ; $4b78: $01 $ff $ff
	adc  h                                           ; $4b7b: $8c
	ld   d, b                                        ; $4b7c: $50
	sbc  [hl]                                        ; $4b7d: $9e
	ld   d, d                                        ; $4b7e: $52
	ld   d, d                                        ; $4b7f: $52
	ld   [hl], l                                     ; $4b80: $75
	ld   h, a                                        ; $4b81: $67
	sbc  l                                           ; $4b82: $9d
	sbc  a                                           ; $4b83: $9f
	dec  c                                           ; $4b84: $0d
	ld   h, [hl]                                     ; $4b85: $66
	sub  c                                           ; $4b86: $91
	sbc  [hl]                                        ; $4b87: $9e
	cp   b                                           ; $4b88: $b8
	push hl                                          ; $4b89: $e5
	pop  af                                          ; $4b8a: $f1
	ei                                               ; $4b8b: $fb
	ld   a, h                                        ; $4b8c: $7c
	inc  bc                                          ; $4b8d: $03
	ld   a, e                                        ; $4b8e: $7b
	dec  b                                           ; $4b8f: $05
	ld   de, $620d                                   ; $4b90: $11 $0d $62
	ld   [bc], a                                     ; $4b93: $02
	sub  h                                           ; $4b94: $94
	dec  b                                           ; $4b95: $05
	rrca                                             ; $4b96: $0f
	ld   h, e                                        ; $4b97: $63
	adc  h                                           ; $4b98: $8c
	ld   [hl], l                                     ; $4b99: $75
	ld   h, l                                        ; $4b9a: $65
	ld   l, l                                        ; $4b9b: $6d
	sbc  a                                           ; $4b9c: $9f
	dec  c                                           ; $4b9d: $0d
	nop                                              ; $4b9e: $00
	ld   a, [bc]                                     ; $4b9f: $0a
	dec  c                                           ; $4ba0: $0d
	nop                                              ; $4ba1: $00
	nop                                              ; $4ba2: $00
	rrca                                             ; $4ba3: $0f
	nop                                              ; $4ba4: $00
	ld   bc, $1e09                                   ; $4ba5: $01 $09 $1e
	nop                                              ; $4ba8: $00
	nop                                              ; $4ba9: $00
	ld   c, $22                                      ; $4baa: $0e $22
	rrca                                             ; $4bac: $0f
	nop                                              ; $4bad: $00
	ld   bc, $0702                                   ; $4bae: $01 $02 $07
	cp   c                                           ; $4bb1: $b9
	nop                                              ; $4bb2: $00
	inc  b                                           ; $4bb3: $04
	add  b                                           ; $4bb4: $80
	inc  bc                                          ; $4bb5: $03
	ld   bc, $2000                                   ; $4bb6: $01 $00 $20
	nop                                              ; $4bb9: $00
	inc  e                                           ; $4bba: $1c
	ld   bc, $0000                                   ; $4bbb: $01 $00 $00
	ld   bc, $9750                                   ; $4bbe: $01 $50 $97
	sbc  [hl]                                        ; $4bc1: $9e
	ld   [$6300], sp                                 ; $4bc2: $08 $00 $63
	and  c                                           ; $4bc5: $a1
	sbc  a                                           ; $4bc6: $9f
	dec  c                                           ; $4bc7: $0d
	nop                                              ; $4bc8: $00
	ld   a, [bc]                                     ; $4bc9: $0a
	inc  e                                           ; $4bca: $1c
	ld   bc, $0303                                   ; $4bcb: $01 $03 $03
	ld   bc, $9e50                                   ; $4bce: $01 $50 $9e
	ld   l, e                                        ; $4bd1: $6b
	ld   a, h                                        ; $4bd2: $7c
	inc  bc                                          ; $4bd3: $03
	ld   [hl], e                                     ; $4bd4: $73
	inc  bc                                          ; $4bd5: $03
	ld   [hl], h                                     ; $4bd6: $74
	rst  $38                                         ; $4bd7: $ff
	rst  $38                                         ; $4bd8: $ff
	dec  c                                           ; $4bd9: $0d
	nop                                              ; $4bda: $00
	ld   a, [bc]                                     ; $4bdb: $0a
	rrca                                             ; $4bdc: $0f
	nop                                              ; $4bdd: $00
	ld   bc, $000d                                   ; $4bde: $01 $0d $00
	nop                                              ; $4be1: $00
	db   $10                                         ; $4be2: $10
	rlca                                             ; $4be3: $07
	rst  $38                                         ; $4be4: $ff
	ld   bc, $9a61                                   ; $4be5: $01 $61 $9a
	ld   [hl], l                                     ; $4be8: $75
	ld   h, a                                        ; $4be9: $67
	ld   e, c                                        ; $4bea: $59
	ld   sp, hl                                      ; $4beb: $f9
	dec  c                                           ; $4bec: $0d
	nop                                              ; $4bed: $00
	ld   a, [bc]                                     ; $4bee: $0a
	inc  b                                           ; $4bef: $04
	dec  c                                           ; $4bf0: $0d
	ld   bc, $0100                                   ; $4bf1: $01 $00 $01
	ld   h, c                                        ; $4bf4: $61
	ld   a, h                                        ; $4bf5: $7c
	inc  bc                                          ; $4bf6: $03
	ld   c, a                                        ; $4bf7: $4f
	sbc  [hl]                                        ; $4bf8: $9e
	inc  b                                           ; $4bf9: $04
	ld   c, $04                                      ; $4bfa: $0e $04
	ld   d, $02                                      ; $4bfc: $16 $02
	xor  b                                           ; $4bfe: $a8
	inc  b                                           ; $4bff: $04
	sub  l                                           ; $4c00: $95
	ld   [bc], a                                     ; $4c01: $02
	ld   hl, $0d75                                   ; $4c02: $21 $75 $0d
	inc  bc                                          ; $4c05: $03
	dec  l                                           ; $4c06: $2d
	ld   [hl], c                                     ; $4c07: $71
	ld   l, l                                        ; $4c08: $6d
	ld   a, h                                        ; $4c09: $7c
	ld   [hl], l                                     ; $4c0a: $75
	ld   h, a                                        ; $4c0b: $67
	ld   e, d                                        ; $4c0c: $5a
	rst  $38                                         ; $4c0d: $ff
	rst  $38                                         ; $4c0e: $ff
	dec  c                                           ; $4c0f: $0d
	nop                                              ; $4c10: $00
	ld   a, [bc]                                     ; $4c11: $0a
	inc  e                                           ; $4c12: $1c
	ld   bc, $0101                                   ; $4c13: $01 $01 $01
	dec  e                                           ; $4c16: $1d
	ld   b, b                                        ; $4c17: $40
	ld   de, $1103                                   ; $4c18: $11 $03 $11
	ld   bc, $2803                                   ; $4c1b: $01 $03 $28
	nop                                              ; $4c1e: $00
	ld   bc, $9850                                   ; $4c1f: $01 $50 $98
	ld   e, d                                        ; $4c22: $5a
	halt                                             ; $4c23: $76
	ld   d, h                                        ; $4c24: $54
	ld   h, d                                        ; $4c25: $62
	ld   h, h                                        ; $4c26: $64
	ld   d, d                                        ; $4c27: $52
	adc  h                                           ; $4c28: $8c
	ld   h, a                                        ; $4c29: $67
	ld   a, [$6b0d]                                  ; $4c2a: $fa $0d $6b
	sbc  d                                           ; $4c2d: $9a
	inc  b                                           ; $4c2e: $04
	inc  d                                           ; $4c2f: $14
	ld   h, l                                        ; $4c30: $65
	ld   [hl], h                                     ; $4c31: $74
	ld   l, l                                        ; $4c32: $6d
	and  c                                           ; $4c33: $a1
	ld   [hl], l                                     ; $4c34: $75
	ld   h, a                                        ; $4c35: $67
	sub  [hl]                                        ; $4c36: $96
	rst  $38                                         ; $4c37: $ff
	rst  $38                                         ; $4c38: $ff
	dec  c                                           ; $4c39: $0d
	nop                                              ; $4c3a: $00
	ld   a, [bc]                                     ; $4c3b: $0a
	ld   bc, $8f04                                   ; $4c3c: $01 $04 $8f
	inc  b                                           ; $4c3f: $04
	jr   jr_05a_4cbb                                 ; $4c40: $18 $79

	inc  bc                                          ; $4c42: $03
	ld   e, e                                        ; $4c43: $5b
	ld   e, c                                        ; $4c44: $59
	sbc  b                                           ; $4c45: $98
	adc  h                                           ; $4c46: $8c
	ld   h, l                                        ; $4c47: $65
	ld   l, l                                        ; $4c48: $6d
	rst  $38                                         ; $4c49: $ff
	rst  $38                                         ; $4c4a: $ff
	dec  c                                           ; $4c4b: $0d
	ld   d, b                                        ; $4c4c: $50
	sbc  b                                           ; $4c4d: $98
	ld   e, d                                        ; $4c4e: $5a
	halt                                             ; $4c4f: $76
	ld   d, h                                        ; $4c50: $54
	ld   h, d                                        ; $4c51: $62
	ld   h, h                                        ; $4c52: $64
	ld   d, d                                        ; $4c53: $52
	adc  h                                           ; $4c54: $8c
	ld   h, a                                        ; $4c55: $67
	sbc  a                                           ; $4c56: $9f
	dec  c                                           ; $4c57: $0d
	nop                                              ; $4c58: $00
	ld   a, [bc]                                     ; $4c59: $0a
	dec  c                                           ; $4c5a: $0d
	nop                                              ; $4c5b: $00
	nop                                              ; $4c5c: $00
	rrca                                             ; $4c5d: $0f
	nop                                              ; $4c5e: $00
	ld   bc, $1e09                                   ; $4c5f: $01 $09 $1e
	nop                                              ; $4c62: $00
	dec  c                                           ; $4c63: $0d
	ld   bc, $0100                                   ; $4c64: $01 $00 $01
	ld   h, e                                        ; $4c67: $63
	ld   e, l                                        ; $4c68: $5d
	sub  a                                           ; $4c69: $97
	ld   h, e                                        ; $4c6a: $63
	and  c                                           ; $4c6b: $a1
	sbc  [hl]                                        ; $4c6c: $9e
	ld   e, b                                        ; $4c6d: $58
	ld   l, e                                        ; $4c6e: $6b
	ld   d, h                                        ; $4c6f: $54
	ld   h, [hl]                                     ; $4c70: $66
	ld   [hl], l                                     ; $4c71: $75
	ld   h, a                                        ; $4c72: $67
	ld   e, c                                        ; $4c73: $59
	ld   sp, hl                                      ; $4c74: $f9
	dec  c                                           ; $4c75: $0d
	nop                                              ; $4c76: $00
	ld   a, [bc]                                     ; $4c77: $0a
	rrca                                             ; $4c78: $0f
	ld   bc, $0100                                   ; $4c79: $01 $00 $01
	ld   d, [hl]                                     ; $4c7c: $56
	ld   d, [hl]                                     ; $4c7d: $56
	sbc  a                                           ; $4c7e: $9f
	dec  c                                           ; $4c7f: $0d
	nop                                              ; $4c80: $00
	ld   a, [bc]                                     ; $4c81: $0a
	add  hl, de                                      ; $4c82: $19
	dec  b                                           ; $4c83: $05
	inc  bc                                          ; $4c84: $03
	inc  bc                                          ; $4c85: $03
	ld   l, e                                        ; $4c86: $6b
	inc  b                                           ; $4c87: $04
	ld   [de], a                                     ; $4c88: $12
	ld   d, d                                        ; $4c89: $52
	adc  h                                           ; $4c8a: $8c
	ld   h, l                                        ; $4c8b: $65
	sub  l                                           ; $4c8c: $95
	ld   d, h                                        ; $4c8d: $54
	ld   e, c                                        ; $4c8e: $59
	ld   sp, hl                                      ; $4c8f: $f9
	nop                                              ; $4c90: $00
	nop                                              ; $4c91: $00
	ld   l, e                                        ; $4c92: $6b
	ld   d, h                                        ; $4c93: $54
	ld   h, [hl]                                     ; $4c94: $66
	ld   e, d                                        ; $4c95: $5a
	ld   [bc], a                                     ; $4c96: $02
	sbc  d                                           ; $4c97: $9a
	ld   e, e                                        ; $4c98: $5b
	ld   a, b                                        ; $4c99: $78
	and  c                                           ; $4c9a: $a1
	ld   [hl], l                                     ; $4c9b: $75
	ld   h, a                                        ; $4c9c: $67
	ld   a, e                                        ; $4c9d: $7b
	nop                                              ; $4c9e: $00
	ld   bc, $5d96                                   ; $4c9f: $01 $96 $5d
	ld   d, b                                        ; $4ca2: $50
	ld   e, e                                        ; $4ca3: $5b
	adc  h                                           ; $4ca4: $8c
	ld   l, c                                        ; $4ca5: $69
	and  c                                           ; $4ca6: $a1
	ld   a, e                                        ; $4ca7: $7b
	nop                                              ; $4ca8: $00
	ld   [bc], a                                     ; $4ca9: $02
	rlca                                             ; $4caa: $07
	ld   e, $01                                      ; $4cab: $1e $01
	ld   [bc], a                                     ; $4cad: $02
	inc  bc                                          ; $4cae: $03
	ld   bc, $2000                                   ; $4caf: $01 $00 $20
	nop                                              ; $4cb2: $00
	rlca                                             ; $4cb3: $07
	ld   e, [hl]                                     ; $4cb4: $5e
	ld   [bc], a                                     ; $4cb5: $02
	ld   [bc], a                                     ; $4cb6: $02
	inc  bc                                          ; $4cb7: $03
	ld   bc, $2001                                   ; $4cb8: $01 $01 $20

jr_05a_4cbb:
	nop                                              ; $4cbb: $00
	rlca                                             ; $4cbc: $07
	or   d                                           ; $4cbd: $b2
	ld   [bc], a                                     ; $4cbe: $02
	ld   [bc], a                                     ; $4cbf: $02
	inc  bc                                          ; $4cc0: $03
	ld   bc, $2002                                   ; $4cc1: $01 $02 $20
	nop                                              ; $4cc4: $00
	ld   b, $22                                      ; $4cc5: $06 $22
	inc  bc                                          ; $4cc7: $03
	rrca                                             ; $4cc8: $0f
	nop                                              ; $4cc9: $00
	ld   bc, $0301                                   ; $4cca: $01 $01 $03
	ld   l, e                                        ; $4ccd: $6b
	inc  b                                           ; $4cce: $04
	ld   [de], a                                     ; $4ccf: $12
	ld   d, d                                        ; $4cd0: $52
	adc  h                                           ; $4cd1: $8c
	ld   h, l                                        ; $4cd2: $65
	sub  l                                           ; $4cd3: $95
	ld   d, h                                        ; $4cd4: $54
	ld   e, c                                        ; $4cd5: $59
	ld   sp, hl                                      ; $4cd6: $f9
	dec  c                                           ; $4cd7: $0d
	nop                                              ; $4cd8: $00
	ld   a, [bc]                                     ; $4cd9: $0a
	rlca                                             ; $4cda: $07
	ld   d, c                                        ; $4cdb: $51
	ld   bc, $1103                                   ; $4cdc: $01 $03 $11
	ld   bc, $24a5                                   ; $4cdf: $01 $a5 $24
	nop                                              ; $4ce2: $00
	rlca                                             ; $4ce3: $07
	pop  af                                          ; $4ce4: $f1
	ld   bc, $1103                                   ; $4ce5: $01 $03 $11
	ld   bc, $23a5                                   ; $4ce8: $01 $a5 $23
	inc  bc                                          ; $4ceb: $03
	ld   de, $8c01                                   ; $4cec: $11 $01 $8c
	dec  h                                           ; $4cef: $25
	inc  e                                           ; $4cf0: $1c
	nop                                              ; $4cf1: $00
	rlca                                             ; $4cf2: $07
	ccf                                              ; $4cf3: $3f
	ld   [bc], a                                     ; $4cf4: $02
	inc  bc                                          ; $4cf5: $03
	ld   de, $8c01                                   ; $4cf6: $11 $01 $8c
	ld   [hl+], a                                    ; $4cf9: $22
	nop                                              ; $4cfa: $00
	inc  e                                           ; $4cfb: $1c
	ld   bc, $0505                                   ; $4cfc: $01 $05 $05
	dec  e                                           ; $4cff: $1d
	ld   b, b                                        ; $4d00: $40
	ld   de, $1103                                   ; $4d01: $11 $03 $11
	ld   bc, $2803                                   ; $4d04: $01 $03 $28
	nop                                              ; $4d07: $00
	ld   bc, $ff56                                   ; $4d08: $01 $56 $ff
	rst  $38                                         ; $4d0b: $ff
	dec  c                                           ; $4d0c: $0d
	dec  b                                           ; $4d0d: $05
	and  c                                           ; $4d0e: $a1
	ld   d, [hl]                                     ; $4d0f: $56
	ld   l, a                                        ; $4d10: $6f
	sub  c                                           ; $4d11: $91
	ld   [hl], c                                     ; $4d12: $71
	ld   [hl], h                                     ; $4d13: $74
	sub  b                                           ; $4d14: $90
	ld   d, d                                        ; $4d15: $52
	ld   d, d                                        ; $4d16: $52
	and  c                                           ; $4d17: $a1
	ld   [hl], l                                     ; $4d18: $75
	ld   h, a                                        ; $4d19: $67
	ld   e, c                                        ; $4d1a: $59
	ld   sp, hl                                      ; $4d1b: $f9
	dec  c                                           ; $4d1c: $0d
	nop                                              ; $4d1d: $00
	ld   a, [bc]                                     ; $4d1e: $0a
	rrca                                             ; $4d1f: $0f
	nop                                              ; $4d20: $00
	ld   bc, $5601                                   ; $4d21: $01 $01 $56
	ld   d, [hl]                                     ; $4d24: $56
	sbc  a                                           ; $4d25: $9f
	dec  c                                           ; $4d26: $0d
	nop                                              ; $4d27: $00
	ld   a, [bc]                                     ; $4d28: $0a
	inc  e                                           ; $4d29: $1c
	ld   bc, $0505                                   ; $4d2a: $01 $05 $05
	ld   bc, $9166                                   ; $4d2d: $01 $66 $91
	sbc  [hl]                                        ; $4d30: $9e
	ld   h, a                                        ; $4d31: $67
	adc  l                                           ; $4d32: $8d
	adc  h                                           ; $4d33: $8c
	ld   l, c                                        ; $4d34: $69
	and  c                                           ; $4d35: $a1
	rst  $38                                         ; $4d36: $ff
	rst  $38                                         ; $4d37: $ff
	dec  c                                           ; $4d38: $0d
	ld   h, c                                        ; $4d39: $61
	ld   a, h                                        ; $4d3a: $7c
	db   $e4                                         ; $4d3b: $e4
	call nz, Call_05a_75d8                           ; $4d3c: $c4 $d8 $75
	ld   e, b                                        ; $4d3f: $58
	ld   [bc], a                                     ; $4d40: $02
	add  b                                           ; $4d41: $80
	ld   d, d                                        ; $4d42: $52
	ld   h, l                                        ; $4d43: $65
	adc  h                                           ; $4d44: $8c
	ld   h, a                                        ; $4d45: $67
	sbc  a                                           ; $4d46: $9f
	dec  c                                           ; $4d47: $0d
	nop                                              ; $4d48: $00
	ld   a, [bc]                                     ; $4d49: $0a
	dec  c                                           ; $4d4a: $0d
	nop                                              ; $4d4b: $00
	nop                                              ; $4d4c: $00
	rrca                                             ; $4d4d: $0f
	nop                                              ; $4d4e: $00
	ld   bc, $020c                                   ; $4d4f: $01 $0c $02
	ld   c, $22                                      ; $4d52: $0e $22
	inc  e                                           ; $4d54: $1c
	ld   bc, $0101                                   ; $4d55: $01 $01 $01
	ld   bc, $0458                                   ; $4d58: $01 $58 $04
	ld   a, e                                        ; $4d5b: $7b
	sbc  d                                           ; $4d5c: $9a
	ld   h, e                                        ; $4d5d: $63
	adc  h                                           ; $4d5e: $8c
	sbc  a                                           ; $4d5f: $9f
	dec  c                                           ; $4d60: $0d
	ld   [$6300], sp                                 ; $4d61: $08 $00 $63
	and  c                                           ; $4d64: $a1
	ld   a, h                                        ; $4d65: $7c
	ld   e, b                                        ; $4d66: $58
	ld   e, c                                        ; $4d67: $59
	ld   h, b                                        ; $4d68: $60
	ld   [hl], l                                     ; $4d69: $75
	dec  c                                           ; $4d6a: $0d
	halt                                             ; $4d6b: $76
	ld   [hl], h                                     ; $4d6c: $74
	sub  b                                           ; $4d6d: $90
	sbc  [hl]                                        ; $4d6e: $9e
	inc  bc                                          ; $4d6f: $03
	ld   [hl], b                                     ; $4d70: $70
	ld   e, l                                        ; $4d71: $5d
	inc  bc                                          ; $4d72: $03
	ld   a, [hl]                                     ; $4d73: $7e
	sbc  l                                           ; $4d74: $9d
	sbc  b                                           ; $4d75: $98
	adc  h                                           ; $4d76: $8c
	ld   h, l                                        ; $4d77: $65
	ld   l, l                                        ; $4d78: $6d
	sbc  a                                           ; $4d79: $9f
	dec  c                                           ; $4d7a: $0d
	nop                                              ; $4d7b: $00
	ld   a, [bc]                                     ; $4d7c: $0a
	ld   bc, $5477                                   ; $4d7d: $01 $77 $54
	sub  b                                           ; $4d80: $90
	sbc  [hl]                                        ; $4d81: $9e
	ld   d, b                                        ; $4d82: $50
	sbc  b                                           ; $4d83: $98
	ld   e, d                                        ; $4d84: $5a
	halt                                             ; $4d85: $76
	ld   d, h                                        ; $4d86: $54
	dec  c                                           ; $4d87: $0d
	ld   h, d                                        ; $4d88: $62
	ld   h, h                                        ; $4d89: $64
	ld   d, d                                        ; $4d8a: $52
	adc  h                                           ; $4d8b: $8c
	ld   h, l                                        ; $4d8c: $65
	ld   l, l                                        ; $4d8d: $6d
	sbc  a                                           ; $4d8e: $9f
	dec  c                                           ; $4d8f: $0d
	nop                                              ; $4d90: $00
	ld   a, [bc]                                     ; $4d91: $0a
	dec  c                                           ; $4d92: $0d
	nop                                              ; $4d93: $00
	nop                                              ; $4d94: $00
	rrca                                             ; $4d95: $0f
	nop                                              ; $4d96: $00
	ld   bc, $1e09                                   ; $4d97: $01 $09 $1e
	nop                                              ; $4d9a: $00
	inc  e                                           ; $4d9b: $1c
	ld   bc, $0101                                   ; $4d9c: $01 $01 $01
	dec  e                                           ; $4d9f: $1d
	ld   b, b                                        ; $4da0: $40
	ld   de, $1103                                   ; $4da1: $11 $03 $11
	ld   bc, $2802                                   ; $4da4: $01 $02 $28
	nop                                              ; $4da7: $00
	ld   bc, $9850                                   ; $4da8: $01 $50 $98
	ld   e, d                                        ; $4dab: $5a
	halt                                             ; $4dac: $76
	ld   d, h                                        ; $4dad: $54
	ld   h, d                                        ; $4dae: $62
	ld   h, h                                        ; $4daf: $64
	ld   d, d                                        ; $4db0: $52
	adc  h                                           ; $4db1: $8c
	ld   h, a                                        ; $4db2: $67
	sbc  a                                           ; $4db3: $9f
	dec  c                                           ; $4db4: $0d
	ld   [hl], l                                     ; $4db5: $75
	sub  b                                           ; $4db6: $90
	sbc  [hl]                                        ; $4db7: $9e
	ld   e, b                                        ; $4db8: $58
	ld   [bc], a                                     ; $4db9: $02
	and  c                                           ; $4dba: $a1
	inc  bc                                          ; $4dbb: $03
	and  b                                           ; $4dbc: $a0
	ld   l, a                                        ; $4dbd: $6f
	ld   l, [hl]                                     ; $4dbe: $6e
	ld   e, a                                        ; $4dbf: $5f
	ld   d, d                                        ; $4dc0: $52
	ld   l, l                                        ; $4dc1: $6d
	ld   l, [hl]                                     ; $4dc2: $6e
	ld   d, d                                        ; $4dc3: $52
	ld   [hl], h                                     ; $4dc4: $74
	dec  c                                           ; $4dc5: $0d
	ld   e, b                                        ; $4dc6: $58
	ld   e, e                                        ; $4dc7: $5b
	adc  h                                           ; $4dc8: $8c
	ld   h, a                                        ; $4dc9: $67
	rst  $38                                         ; $4dca: $ff
	rst  $38                                         ; $4dcb: $ff
	dec  c                                           ; $4dcc: $0d
	nop                                              ; $4dcd: $00
	ld   a, [bc]                                     ; $4dce: $0a
	ld   bc, $9166                                   ; $4dcf: $01 $66 $91
	sbc  [hl]                                        ; $4dd2: $9e
	ld   d, b                                        ; $4dd3: $50
	ld   l, l                                        ; $4dd4: $6d
	ld   h, l                                        ; $4dd5: $65
	ld   a, l                                        ; $4dd6: $7d
	sbc  [hl]                                        ; $4dd7: $9e
	ld   e, b                                        ; $4dd8: $58
	ld   l, e                                        ; $4dd9: $6b
	ld   d, h                                        ; $4dda: $54
	ld   h, [hl]                                     ; $4ddb: $66
	ld   h, l                                        ; $4ddc: $65
	ld   [hl], h                                     ; $4ddd: $74
	dec  c                                           ; $4dde: $0d
	ld   d, d                                        ; $4ddf: $52
	adc  h                                           ; $4de0: $8c
	ld   h, a                                        ; $4de1: $67
	ld   e, c                                        ; $4de2: $59
	sub  a                                           ; $4de3: $97
	sbc  a                                           ; $4de4: $9f
	dec  c                                           ; $4de5: $0d
	nop                                              ; $4de6: $00
	ld   a, [bc]                                     ; $4de7: $0a
	nop                                              ; $4de8: $00
	inc  e                                           ; $4de9: $1c
	ld   bc, $0000                                   ; $4dea: $01 $00 $00
	ld   bc, $5652                                   ; $4ded: $01 $52 $56
	sbc  [hl]                                        ; $4df0: $9e
	inc  bc                                          ; $4df1: $03
	sub  h                                           ; $4df2: $94
	inc  b                                           ; $4df3: $04
	sbc  [hl]                                        ; $4df4: $9e
	ld   [hl], l                                     ; $4df5: $75
	sub  d                                           ; $4df6: $92
	sbc  b                                           ; $4df7: $98
	adc  h                                           ; $4df8: $8c
	ld   h, a                                        ; $4df9: $67
	ld   e, c                                        ; $4dfa: $59
	sub  a                                           ; $4dfb: $97
	sbc  a                                           ; $4dfc: $9f
	dec  c                                           ; $4dfd: $0d
	ld   l, e                                        ; $4dfe: $6b
	sbc  d                                           ; $4dff: $9a
	ld   h, [hl]                                     ; $4e00: $66
	sub  c                                           ; $4e01: $91
	rst  $38                                         ; $4e02: $ff
	rst  $38                                         ; $4e03: $ff
	dec  c                                           ; $4e04: $0d
	nop                                              ; $4e05: $00
	ld   a, [bc]                                     ; $4e06: $0a
	nop                                              ; $4e07: $00
	rrca                                             ; $4e08: $0f
	nop                                              ; $4e09: $00
	ld   bc, $6b01                                   ; $4e0a: $01 $01 $6b
	ld   d, h                                        ; $4e0d: $54
	ld   h, [hl]                                     ; $4e0e: $66
	ld   e, d                                        ; $4e0f: $5a
	ld   [bc], a                                     ; $4e10: $02
	sbc  d                                           ; $4e11: $9a
	ld   e, e                                        ; $4e12: $5b
	ld   a, b                                        ; $4e13: $78
	and  c                                           ; $4e14: $a1
	ld   [hl], l                                     ; $4e15: $75
	ld   h, a                                        ; $4e16: $67
	ld   a, e                                        ; $4e17: $7b
	rst  $38                                         ; $4e18: $ff
	rst  $38                                         ; $4e19: $ff
	dec  c                                           ; $4e1a: $0d
	nop                                              ; $4e1b: $00
	ld   a, [bc]                                     ; $4e1c: $0a
	inc  e                                           ; $4e1d: $1c
	ld   bc, $0101                                   ; $4e1e: $01 $01 $01
	ld   bc, $527d                                   ; $4e21: $01 $7d $52
	sbc  a                                           ; $4e24: $9f
	dec  c                                           ; $4e25: $0d
	ld   e, e                                        ; $4e26: $5b
	sbc  d                                           ; $4e27: $9a
	ld   d, d                                        ; $4e28: $52
	ld   a, c                                        ; $4e29: $79
	ld   h, a                                        ; $4e2a: $67
	sbc  c                                           ; $4e2b: $99
	halt                                             ; $4e2c: $76
	dec  c                                           ; $4e2d: $0d
	ld   [bc], a                                     ; $4e2e: $02
	and  c                                           ; $4e2f: $a1
	inc  bc                                          ; $4e30: $03
	and  b                                           ; $4e31: $a0
	ld   l, a                                        ; $4e32: $6f
	ld   e, d                                        ; $4e33: $5a
	ld   d, d                                        ; $4e34: $52
	ld   d, d                                        ; $4e35: $52
	ld   [hl], l                                     ; $4e36: $75
	ld   h, a                                        ; $4e37: $67
	ld   e, c                                        ; $4e38: $59
	sub  a                                           ; $4e39: $97
	ld   a, e                                        ; $4e3a: $7b
	sbc  a                                           ; $4e3b: $9f
	dec  c                                           ; $4e3c: $0d
	nop                                              ; $4e3d: $00
	ld   a, [bc]                                     ; $4e3e: $0a
	inc  e                                           ; $4e3f: $1c
	ld   bc, $0000                                   ; $4e40: $01 $00 $00
	ld   bc, $9a6b                                   ; $4e43: $01 $6b $9a
	ld   h, [hl]                                     ; $4e46: $66
	sub  c                                           ; $4e47: $91
	ld   d, b                                        ; $4e48: $50
	sbc  [hl]                                        ; $4e49: $9e
	dec  c                                           ; $4e4a: $0d
	ld   l, e                                        ; $4e4b: $6b
	ld   d, h                                        ; $4e4c: $54
	ld   h, [hl]                                     ; $4e4d: $66
	ld   a, h                                        ; $4e4e: $7c
	inc  b                                           ; $4e4f: $04
	ld   [hl-], a                                    ; $4e50: $32
	inc  b                                           ; $4e51: $04
	dec  bc                                          ; $4e52: $0b
	ld   a, b                                        ; $4e53: $78
	ld   a, h                                        ; $4e54: $7c
	ld   [hl], l                                     ; $4e55: $75
	rst  $38                                         ; $4e56: $ff
	rst  $38                                         ; $4e57: $ff
	dec  c                                           ; $4e58: $0d
	nop                                              ; $4e59: $00
	ld   a, [bc]                                     ; $4e5a: $0a
	nop                                              ; $4e5b: $00
	rrca                                             ; $4e5c: $0f
	nop                                              ; $4e5d: $00
	ld   bc, $9601                                   ; $4e5e: $01 $01 $96
	ld   e, l                                        ; $4e61: $5d
	ld   d, b                                        ; $4e62: $50
	ld   e, e                                        ; $4e63: $5b
	adc  h                                           ; $4e64: $8c
	ld   l, c                                        ; $4e65: $69
	and  c                                           ; $4e66: $a1
	ld   a, e                                        ; $4e67: $7b
	rst  $38                                         ; $4e68: $ff
	rst  $38                                         ; $4e69: $ff
	dec  c                                           ; $4e6a: $0d
	nop                                              ; $4e6b: $00
	ld   a, [bc]                                     ; $4e6c: $0a
	inc  e                                           ; $4e6d: $1c
	ld   bc, $0202                                   ; $4e6e: $01 $02 $02
	dec  e                                           ; $4e71: $1d
	ld   b, b                                        ; $4e72: $40
	ld   de, $1103                                   ; $4e73: $11 $03 $11
	ld   bc, $2902                                   ; $4e76: $01 $02 $29
	nop                                              ; $4e79: $00
	ld   bc, $9a61                                   ; $4e7a: $01 $61 $9a
	ld   a, l                                        ; $4e7d: $7d
	ld   e, b                                        ; $4e7e: $58
	inc  bc                                          ; $4e7f: $03
	dec  c                                           ; $4e80: $0d
	ld   [bc], a                                     ; $4e81: $02
	jp   Jump_05a_6775                               ; $4e82: $c3 $75 $67


	sub  [hl]                                        ; $4e85: $96
	rst  $38                                         ; $4e86: $ff
	rst  $38                                         ; $4e87: $ff
	dec  c                                           ; $4e88: $0d
	ld   d, b                                        ; $4e89: $50
	ld   e, e                                        ; $4e8a: $5b
	sbc  c                                           ; $4e8b: $99
	ld   d, b                                        ; $4e8c: $50
	ld   e, e                                        ; $4e8d: $5b
	ld   a, b                                        ; $4e8e: $78
	ld   d, d                                        ; $4e8f: $52
	ld   a, h                                        ; $4e90: $7c
	inc  b                                           ; $4e91: $04
	cp   a                                           ; $4e92: $bf
	inc  b                                           ; $4e93: $04
	dec  d                                           ; $4e94: $15
	ld   h, [hl]                                     ; $4e95: $66
	sub  c                                           ; $4e96: $91
	dec  c                                           ; $4e97: $0d
	ld   a, b                                        ; $4e98: $78
	ld   d, d                                        ; $4e99: $52
	halt                                             ; $4e9a: $76
	dec  b                                           ; $4e9b: $05
	pop  de                                          ; $4e9c: $d1
	ld   d, d                                        ; $4e9d: $52
	adc  h                                           ; $4e9e: $8c
	ld   h, a                                        ; $4e9f: $67
	ld   e, a                                        ; $4ea0: $5f
	ld   [hl], a                                     ; $4ea1: $77
	sbc  a                                           ; $4ea2: $9f
	dec  c                                           ; $4ea3: $0d
	nop                                              ; $4ea4: $00
	ld   a, [bc]                                     ; $4ea5: $0a
	ld   bc, $8d67                                   ; $4ea6: $01 $67 $8d
	adc  h                                           ; $4ea9: $8c
	ld   l, c                                        ; $4eaa: $69
	and  c                                           ; $4eab: $a1
	ld   e, d                                        ; $4eac: $5a
	sbc  [hl]                                        ; $4ead: $9e
	dec  c                                           ; $4eae: $0d
	ld   l, e                                        ; $4eaf: $6b
	ld   d, h                                        ; $4eb0: $54
	ld   h, [hl]                                     ; $4eb1: $66
	ld   a, h                                        ; $4eb2: $7c
	inc  b                                           ; $4eb3: $04
	ld   [hl-], a                                    ; $4eb4: $32
	inc  b                                           ; $4eb5: $04
	dec  bc                                          ; $4eb6: $0b
	ld   [hl], l                                     ; $4eb7: $75
	ld   h, a                                        ; $4eb8: $67
	ld   a, h                                        ; $4eb9: $7c
	ld   [hl], l                                     ; $4eba: $75
	dec  c                                           ; $4ebb: $0d
	ld   h, [hl]                                     ; $4ebc: $66
	sub  c                                           ; $4ebd: $91
	adc  h                                           ; $4ebe: $8c
	ld   h, l                                        ; $4ebf: $65
	ld   a, b                                        ; $4ec0: $78
	ld   d, d                                        ; $4ec1: $52
	ld   [hl], l                                     ; $4ec2: $75
	ld   e, l                                        ; $4ec3: $5d
	ld   l, [hl]                                     ; $4ec4: $6e
	ld   h, e                                        ; $4ec5: $63
	ld   d, d                                        ; $4ec6: $52
	sbc  a                                           ; $4ec7: $9f
	dec  c                                           ; $4ec8: $0d
	nop                                              ; $4ec9: $00
	ld   a, [bc]                                     ; $4eca: $0a
	nop                                              ; $4ecb: $00
	inc  e                                           ; $4ecc: $1c
	ld   bc, $0000                                   ; $4ecd: $01 $00 $00
	ld   bc, $8f62                                   ; $4ed0: $01 $62 $8f
	and  c                                           ; $4ed3: $a1
	ld   a, b                                        ; $4ed4: $78
	ld   h, e                                        ; $4ed5: $63
	ld   d, d                                        ; $4ed6: $52
	sbc  [hl]                                        ; $4ed7: $9e
	dec  c                                           ; $4ed8: $0d
	ld   l, e                                        ; $4ed9: $6b
	ld   d, h                                        ; $4eda: $54
	ld   h, [hl]                                     ; $4edb: $66
	ld   a, h                                        ; $4edc: $7c
	inc  b                                           ; $4edd: $04
	ld   [hl-], a                                    ; $4ede: $32
	inc  b                                           ; $4edf: $04
	dec  bc                                          ; $4ee0: $0b
	ld   a, b                                        ; $4ee1: $78
	ld   a, h                                        ; $4ee2: $7c
	ld   [hl], l                                     ; $4ee3: $75
	rst  $38                                         ; $4ee4: $ff
	rst  $38                                         ; $4ee5: $ff
	dec  c                                           ; $4ee6: $0d
	nop                                              ; $4ee7: $00
	ld   a, [bc]                                     ; $4ee8: $0a
	nop                                              ; $4ee9: $00
	nop                                              ; $4eea: $00
	inc  b                                           ; $4eeb: $04
	add  b                                           ; $4eec: $80
	adc  b                                           ; $4eed: $88
	ld   bc, $2000                                   ; $4eee: $01 $00 $20
	nop                                              ; $4ef1: $00
	ld   c, $2f                                      ; $4ef2: $0e $2f
	inc  e                                           ; $4ef4: $1c
	dec  c                                           ; $4ef5: $0d
	nop                                              ; $4ef6: $00
	nop                                              ; $4ef7: $00
	ld   [bc], a                                     ; $4ef8: $02
	ld   bc, $9750                                   ; $4ef9: $01 $50 $97
	sbc  [hl]                                        ; $4efc: $9e
	ld   [$5d00], sp                                 ; $4efd: $08 $00 $5d
	and  c                                           ; $4f00: $a1
	sbc  a                                           ; $4f01: $9f
	dec  c                                           ; $4f02: $0d
	ld   a, e                                        ; $4f03: $7b
	ld   d, [hl]                                     ; $4f04: $56
	sbc  [hl]                                        ; $4f05: $9e
	inc  b                                           ; $4f06: $04
	dec  hl                                          ; $4f07: $2b
	ld   [hl], c                                     ; $4f08: $71
	ld   [hl], h                                     ; $4f09: $74
	sbc  c                                           ; $4f0a: $99
	ld   sp, hl                                      ; $4f0b: $f9
	dec  c                                           ; $4f0c: $0d
	nop                                              ; $4f0d: $00
	ld   a, [bc]                                     ; $4f0e: $0a
	ld   bc, $f5ac                                   ; $4f0f: $01 $ac $f5
	bit  4, e                                        ; $4f12: $cb $63
	and  c                                           ; $4f14: $a1
	ld   [hl], c                                     ; $4f15: $71
	ld   [hl], h                                     ; $4f16: $74
	sbc  [hl]                                        ; $4f17: $9e
	ld   a, b                                        ; $4f18: $78
	and  c                                           ; $4f19: $a1
	ld   e, c                                        ; $4f1a: $59
	dec  c                                           ; $4f1b: $0d
	halt                                             ; $4f1c: $76
	ld   [hl], c                                     ; $4f1d: $71
	ld   [hl], h                                     ; $4f1e: $74
	ld   e, b                                        ; $4f1f: $58
	ld   e, e                                        ; $4f20: $5b
	ld   a, h                                        ; $4f21: $7c
	xor  $b8                                         ; $4f22: $ee $b8
	push de                                          ; $4f24: $d5
	and  b                                           ; $4f25: $a0
	inc  bc                                          ; $4f26: $03
	and  b                                           ; $4f27: $a0
	ld   [hl], c                                     ; $4f28: $71
	ld   [hl], h                                     ; $4f29: $74
	sbc  c                                           ; $4f2a: $99
	dec  c                                           ; $4f2b: $0d
	sub  a                                           ; $4f2c: $97
	ld   h, l                                        ; $4f2d: $65
	ld   d, d                                        ; $4f2e: $52
	ld   a, h                                        ; $4f2f: $7c
	sub  [hl]                                        ; $4f30: $96
	sbc  a                                           ; $4f31: $9f
	dec  c                                           ; $4f32: $0d
	nop                                              ; $4f33: $00
	ld   a, [bc]                                     ; $4f34: $0a
	inc  e                                           ; $4f35: $1c
	dec  c                                           ; $4f36: $0d
	ld   bc, $0101                                   ; $4f37: $01 $01 $01
	inc  bc                                          ; $4f3a: $03
	ld   c, a                                        ; $4f3b: $4f
	ld   a, c                                        ; $4f3c: $79
	inc  bc                                          ; $4f3d: $03
	ld   l, d                                        ; $4f3e: $6a
	add  a                                           ; $4f3f: $87
	ld   l, l                                        ; $4f40: $6d
	inc  b                                           ; $4f41: $04
	ld   c, $03                                      ; $4f42: $0e $03
	sub  b                                           ; $4f44: $90
	ld   h, e                                        ; $4f45: $63
	and  c                                           ; $4f46: $a1
	ld   a, l                                        ; $4f47: $7d
	dec  c                                           ; $4f48: $0d
	ld   e, b                                        ; $4f49: $58
	ld   d, d                                        ; $4f4a: $52
	ld   h, l                                        ; $4f4b: $65
	ld   d, d                                        ; $4f4c: $52
	ld   [hl], c                                     ; $4f4d: $71
	ld   [hl], h                                     ; $4f4e: $74
	ld   d, d                                        ; $4f4f: $52
	ld   [hl], c                                     ; $4f50: $71
	ld   [hl], h                                     ; $4f51: $74
	ld   l, l                                        ; $4f52: $6d
	sbc  l                                           ; $4f53: $9d
	sbc  a                                           ; $4f54: $9f
	dec  c                                           ; $4f55: $0d
	nop                                              ; $4f56: $00
	ld   a, [bc]                                     ; $4f57: $0a
	ld   bc, $a177                                   ; $4f58: $01 $77 $a1
	ld   a, b                                        ; $4f5b: $78
	dec  b                                           ; $4f5c: $05
	ld   [bc], a                                     ; $4f5d: $02
	dec  b                                           ; $4f5e: $05
	ld   de, $0459                                   ; $4f5f: $11 $59 $04
	sbc  [hl]                                        ; $4f62: $9e
	ld   e, c                                        ; $4f63: $59
	sub  a                                           ; $4f64: $97
	ld   a, b                                        ; $4f65: $78
	ld   d, d                                        ; $4f66: $52
	ld   e, a                                        ; $4f67: $5f
	ld   [hl], a                                     ; $4f68: $77
	dec  c                                           ; $4f69: $0d
	ld   [bc], a                                     ; $4f6a: $02
	jr   nz, jr_05a_4f71                             ; $4f6b: $20 $04

	add  hl, hl                                      ; $4f6d: $29
	sbc  [hl]                                        ; $4f6e: $9e
	inc  bc                                          ; $4f6f: $03
	ld   l, d                                        ; $4f70: $6a

jr_05a_4f71:
	add  a                                           ; $4f71: $87
	ld   [hl], h                                     ; $4f72: $74
	adc  l                                           ; $4f73: $8d
	ld   l, l                                        ; $4f74: $6d
	ld   d, d                                        ; $4f75: $52
	sbc  l                                           ; $4f76: $9d
	sub  [hl]                                        ; $4f77: $96
	ld   a, e                                        ; $4f78: $7b
	sbc  a                                           ; $4f79: $9f
	dec  c                                           ; $4f7a: $0d
	nop                                              ; $4f7b: $00
	ld   a, [bc]                                     ; $4f7c: $0a
	dec  b                                           ; $4f7d: $05
	add  b                                           ; $4f7e: $80
	add  h                                           ; $4f7f: $84
	ld   bc, $0001                                   ; $4f80: $01 $01 $00
	nop                                              ; $4f83: $00
	nop                                              ; $4f84: $00
	inc  b                                           ; $4f85: $04
	add  b                                           ; $4f86: $80
	adc  [hl]                                        ; $4f87: $8e
	ld   bc, $2000                                   ; $4f88: $01 $00 $20
	nop                                              ; $4f8b: $00
	inc  e                                           ; $4f8c: $1c
	ld   b, $00                                      ; $4f8d: $06 $00
	nop                                              ; $4f8f: $00
	ld   [bc], a                                     ; $4f90: $02
	ld   bc, $9e58                                   ; $4f91: $01 $58 $9e
	ld   [$9f00], sp                                 ; $4f94: $08 $00 $9f
	dec  c                                           ; $4f97: $0d
	inc  b                                           ; $4f98: $04
	ld   c, c                                        ; $4f99: $49
	ld   e, c                                        ; $4f9a: $59
	inc  b                                           ; $4f9b: $04
	di                                               ; $4f9c: $f3
	ld   e, c                                        ; $4f9d: $59
	ld   sp, hl                                      ; $4f9e: $f9
	dec  c                                           ; $4f9f: $0d
	nop                                              ; $4fa0: $00
	ld   a, [bc]                                     ; $4fa1: $0a
	add  hl, de                                      ; $4fa2: $19
	dec  b                                           ; $4fa3: $05
	inc  bc                                          ; $4fa4: $03
	ld   e, a                                        ; $4fa5: $5f
	ld   d, d                                        ; $4fa6: $52
	ld   h, c                                        ; $4fa7: $61
	and  b                                           ; $4fa8: $a0
	ld   [hl], d                                     ; $4fa9: $72
	ld   e, a                                        ; $4faa: $5f
	ld   [hl], h                                     ; $4fab: $74
	sub  b                                           ; $4fac: $90
	sub  a                                           ; $4fad: $97
	ld   d, h                                        ; $4fae: $54
	nop                                              ; $4faf: $00
	nop                                              ; $4fb0: $00
	inc  bc                                          ; $4fb1: $03
	and  a                                           ; $4fb2: $a7
	inc  b                                           ; $4fb3: $04
	xor  d                                           ; $4fb4: $aa
	ld   a, h                                        ; $4fb5: $7c
	ld   h, a                                        ; $4fb6: $67
	ld   h, d                                        ; $4fb7: $62
	ld   h, l                                        ; $4fb8: $65
	inc  b                                           ; $4fb9: $04
	ld   a, b                                        ; $4fba: $78
	ld   a, c                                        ; $4fbb: $79
	ld   [hl], d                                     ; $4fbc: $72
	ld   d, d                                        ; $4fbd: $52
	ld   [hl], h                                     ; $4fbe: $74
	ld   [bc], a                                     ; $4fbf: $02
	jp   nz, $005d                                   ; $4fc0: $c2 $5d $00

	ld   bc, $ecdf                                   ; $4fc3: $01 $df $ec
	and  e                                           ; $4fc6: $a3
	ld   a, c                                        ; $4fc7: $79
	ld   [hl], d                                     ; $4fc8: $72
	ld   d, d                                        ; $4fc9: $52
	ld   [hl], h                                     ; $4fca: $74
	ld   [bc], a                                     ; $4fcb: $02
	jp   nz, $005d                                   ; $4fcc: $c2 $5d $00

	ld   [bc], a                                     ; $4fcf: $02
	rlca                                             ; $4fd0: $07
	ld   e, [hl]                                     ; $4fd1: $5e
	ld   bc, $0302                                   ; $4fd2: $01 $02 $03
	ld   bc, $2000                                   ; $4fd5: $01 $00 $20
	nop                                              ; $4fd8: $00
	rlca                                             ; $4fd9: $07
	dec  l                                           ; $4fda: $2d
	ld   [bc], a                                     ; $4fdb: $02
	ld   [bc], a                                     ; $4fdc: $02
	inc  bc                                          ; $4fdd: $03
	ld   bc, $2001                                   ; $4fde: $01 $01 $20
	nop                                              ; $4fe1: $00
	rlca                                             ; $4fe2: $07
	ld   [hl], a                                     ; $4fe3: $77
	ld   b, $02                                      ; $4fe4: $06 $02
	inc  bc                                          ; $4fe6: $03
	ld   bc, $2002                                   ; $4fe7: $01 $02 $20
	nop                                              ; $4fea: $00
	ld   b, $62                                      ; $4feb: $06 $62
	nop                                              ; $4fed: $00
	rrca                                             ; $4fee: $0f
	nop                                              ; $4fef: $00
	ld   bc, $ff01                                   ; $4ff0: $01 $01 $ff
	rst  $38                                         ; $4ff3: $ff
	rst  $38                                         ; $4ff4: $ff
	rst  $38                                         ; $4ff5: $ff
	dec  c                                           ; $4ff6: $0d
	nop                                              ; $4ff7: $00
	ld   a, [bc]                                     ; $4ff8: $0a
	rlca                                             ; $4ff9: $07
	rst  JumpTable                                         ; $4ffa: $df
	nop                                              ; $4ffb: $00
	inc  bc                                          ; $4ffc: $03
	ld   d, $01                                      ; $4ffd: $16 $01
	and  l                                           ; $4fff: $a5
	dec  h                                           ; $5000: $25
	nop                                              ; $5001: $00
	rlca                                             ; $5002: $07
	ld   [hl+], a                                    ; $5003: $22
	ld   bc, $1603                                   ; $5004: $01 $03 $16
	ld   bc, $2391                                   ; $5007: $01 $91 $23
	nop                                              ; $500a: $00
	inc  e                                           ; $500b: $1c
	ld   b, $00                                      ; $500c: $06 $00
	nop                                              ; $500e: $00
	ld   bc, $f9a1                                   ; $500f: $01 $a1 $f9
	db   $10                                         ; $5012: $10
	ld   a, b                                        ; $5013: $78
	and  c                                           ; $5014: $a1
	ld   l, [hl]                                     ; $5015: $6e
	ld   sp, hl                                      ; $5016: $f9
	dec  c                                           ; $5017: $0d
	ld   d, b                                        ; $5018: $50
	ld   l, l                                        ; $5019: $6d
	ld   d, d                                        ; $501a: $52
	ld   a, h                                        ; $501b: $7c
	ld   [bc], a                                     ; $501c: $02
	ld   [hl], d                                     ; $501d: $72
	sbc  [hl]                                        ; $501e: $9e
	ld   l, e                                        ; $501f: $6b
	and  c                                           ; $5020: $a1
	ld   a, b                                        ; $5021: $78
	ld   a, c                                        ; $5022: $79
	dec  c                                           ; $5023: $0d
	adc  l                                           ; $5024: $8d
	sbc  b                                           ; $5025: $98
	sub  l                                           ; $5026: $95
	ld   e, l                                        ; $5027: $5d
	inc  b                                           ; $5028: $04
	jr   nz, jr_05a_5084                             ; $5029: $20 $59

	ld   sp, hl                                      ; $502b: $f9
	dec  c                                           ; $502c: $0d
	nop                                              ; $502d: $00
	ld   a, [bc]                                     ; $502e: $0a
	rrca                                             ; $502f: $0f
	nop                                              ; $5030: $00
	ld   bc, $7d01                                   ; $5031: $01 $01 $7d
	sbc  [hl]                                        ; $5034: $9e
	ld   a, l                                        ; $5035: $7d
	ld   d, d                                        ; $5036: $52
	rst  $38                                         ; $5037: $ff
	rst  $38                                         ; $5038: $ff
	dec  c                                           ; $5039: $0d
	nop                                              ; $503a: $00
	ld   a, [bc]                                     ; $503b: $0a
	inc  e                                           ; $503c: $1c
	ld   b, $01                                      ; $503d: $06 $01
	ld   bc, $7801                                   ; $503f: $01 $01 $78
	ld   a, c                                        ; $5042: $79
	sbc  [hl]                                        ; $5043: $9e
	adc  h                                           ; $5044: $8c
	ld   l, c                                        ; $5045: $69
	ld   l, l                                        ; $5046: $6d
	ld   h, c                                        ; $5047: $61
	halt                                             ; $5048: $76
	ld   [bc], a                                     ; $5049: $02
	sbc  l                                           ; $504a: $9d
	ld   [hl], c                                     ; $504b: $71
	ld   [hl], h                                     ; $504c: $74
	and  c                                           ; $504d: $a1
	ld   l, [hl]                                     ; $504e: $6e
	sbc  a                                           ; $504f: $9f
	dec  c                                           ; $5050: $0d
	db   $e3                                         ; $5051: $e3
	cp   b                                           ; $5052: $b8
	inc  bc                                          ; $5053: $03
	ld   l, d                                        ; $5054: $6a
	ld   d, h                                        ; $5055: $54
	ld   e, c                                        ; $5056: $59
	sub  a                                           ; $5057: $97
	adc  h                                           ; $5058: $8c
	ld   l, l                                        ; $5059: $6d

Jump_05a_505a:
	ld   [bc], a                                     ; $505a: $02
	xor  d                                           ; $505b: $aa
	ld   [hl], l                                     ; $505c: $75
	ld   a, b                                        ; $505d: $78
	sbc  a                                           ; $505e: $9f
	dec  c                                           ; $505f: $0d
	nop                                              ; $5060: $00
	ld   a, [bc]                                     ; $5061: $0a
	dec  c                                           ; $5062: $0d
	nop                                              ; $5063: $00
	nop                                              ; $5064: $00
	rrca                                             ; $5065: $0f
	nop                                              ; $5066: $00
	ld   bc, $1e09                                   ; $5067: $01 $09 $1e
	nop                                              ; $506a: $00
	inc  e                                           ; $506b: $1c
	ld   b, $04                                      ; $506c: $06 $04
	inc  b                                           ; $506e: $04
	dec  e                                           ; $506f: $1d
	ld   b, b                                        ; $5070: $40
	ld   d, $03                                      ; $5071: $16 $03
	ld   d, $01                                      ; $5073: $16 $01
	ld   [bc], a                                     ; $5075: $02
	jr   z, jr_05a_5078                              ; $5076: $28 $00

jr_05a_5078:
	ld   bc, $9e78                                   ; $5078: $01 $78 $9e
	ld   a, b                                        ; $507b: $78
	and  c                                           ; $507c: $a1
	ld   l, [hl]                                     ; $507d: $6e
	sub  [hl]                                        ; $507e: $96
	rst  $38                                         ; $507f: $ff
	rst  $38                                         ; $5080: $ff
	dec  c                                           ; $5081: $0d
	ld   h, [hl]                                     ; $5082: $66
	ld   [hl], c                                     ; $5083: $71

jr_05a_5084:
	halt                                             ; $5084: $76
	ld   [bc], a                                     ; $5085: $02
	sub  l                                           ; $5086: $95
	sbc  c                                           ; $5087: $99
	ld   a, b                                        ; $5088: $78
	sub  [hl]                                        ; $5089: $96
	sbc  a                                           ; $508a: $9f
	dec  c                                           ; $508b: $0d
	inc  bc                                          ; $508c: $03
	ld   h, [hl]                                     ; $508d: $66
	sbc  d                                           ; $508e: $9a
	sbc  c                                           ; $508f: $99
	ld   h, [hl]                                     ; $5090: $66
	sub  c                                           ; $5091: $91
	ld   a, b                                        ; $5092: $78
	ld   d, d                                        ; $5093: $52
	ld   e, c                                        ; $5094: $59
	sub  [hl]                                        ; $5095: $96
	rst  $38                                         ; $5096: $ff
	rst  $38                                         ; $5097: $ff
	dec  c                                           ; $5098: $0d
	nop                                              ; $5099: $00
	ld   a, [bc]                                     ; $509a: $0a
	ld   bc, $718c                                   ; $509b: $01 $8c $71
	ld   l, l                                        ; $509e: $6d
	ld   e, l                                        ; $509f: $5d
	rst  $38                                         ; $50a0: $ff
	rst  $38                                         ; $50a1: $ff
	dec  c                                           ; $50a2: $0d
	nop                                              ; $50a3: $00
	ld   a, [bc]                                     ; $50a4: $0a
	dec  c                                           ; $50a5: $0d
	nop                                              ; $50a6: $00
	nop                                              ; $50a7: $00
	rrca                                             ; $50a8: $0f
	nop                                              ; $50a9: $00
	ld   bc, $1e09                                   ; $50aa: $01 $09 $1e
	nop                                              ; $50ad: $00
	inc  e                                           ; $50ae: $1c
	ld   b, $00                                      ; $50af: $06 $00
	nop                                              ; $50b1: $00
	ld   bc, $4904                                   ; $50b2: $01 $04 $49
	ld   e, c                                        ; $50b5: $59
	inc  b                                           ; $50b6: $04
	di                                               ; $50b7: $f3
	ld   e, d                                        ; $50b8: $5a
	ld   d, b                                        ; $50b9: $50
	sbc  c                                           ; $50ba: $99
	and  c                                           ; $50bb: $a1
	ld   h, [hl]                                     ; $50bc: $66
	sub  c                                           ; $50bd: $91
	ld   a, b                                        ; $50be: $78
	ld   d, d                                        ; $50bf: $52
	ld   a, h                                        ; $50c0: $7c
	ld   e, c                                        ; $50c1: $59
	ld   sp, hl                                      ; $50c2: $f9
	dec  c                                           ; $50c3: $0d
	nop                                              ; $50c4: $00
	ld   a, [bc]                                     ; $50c5: $0a
	ld   bc, $d604                                   ; $50c6: $01 $04 $d6
	ld   d, d                                        ; $50c9: $52
	ld   a, b                                        ; $50ca: $78
	sub  a                                           ; $50cb: $97
	sbc  [hl]                                        ; $50cc: $9e
	ld   h, a                                        ; $50cd: $67
	adc  h                                           ; $50ce: $8c
	ld   a, b                                        ; $50cf: $78
	ld   d, d                                        ; $50d0: $52
	ld   e, d                                        ; $50d1: $5a
	dec  c                                           ; $50d2: $0d
	ld   [bc], a                                     ; $50d3: $02
	and  l                                           ; $50d4: $a5
	ld   e, c                                        ; $50d5: $59
	sub  a                                           ; $50d6: $97
	db   $e3                                         ; $50d7: $e3
	cp   b                                           ; $50d8: $b8
	ld   a, b                                        ; $50d9: $78
	and  c                                           ; $50da: $a1
	ld   [hl], l                                     ; $50db: $75
	ld   a, b                                        ; $50dc: $78
	sbc  a                                           ; $50dd: $9f
	dec  c                                           ; $50de: $0d
	nop                                              ; $50df: $00
	ld   a, [bc]                                     ; $50e0: $0a
	dec  c                                           ; $50e1: $0d
	nop                                              ; $50e2: $00
	nop                                              ; $50e3: $00
	rrca                                             ; $50e4: $0f
	nop                                              ; $50e5: $00
	ld   bc, $1e09                                   ; $50e6: $01 $09 $1e
	nop                                              ; $50e9: $00
	rrca                                             ; $50ea: $0f
	nop                                              ; $50eb: $00
	ld   bc, $0401                                   ; $50ec: $01 $01 $04
	ld   l, l                                        ; $50ef: $6d
	ld   a, c                                        ; $50f0: $79
	ld   [bc], a                                     ; $50f1: $02
	or   [hl]                                        ; $50f2: $b6
	inc  bc                                          ; $50f3: $03
	ld   l, e                                        ; $50f4: $6b
	ld   a, h                                        ; $50f5: $7c
	ld   e, a                                        ; $50f6: $5f
	ld   d, d                                        ; $50f7: $52
	ld   h, c                                        ; $50f8: $61
	and  b                                           ; $50f9: $a0
	dec  c                                           ; $50fa: $0d
	ld   [hl], d                                     ; $50fb: $72
	ld   e, a                                        ; $50fc: $5f
	ld   [hl], h                                     ; $50fd: $74
	sub  b                                           ; $50fe: $90
	sub  a                                           ; $50ff: $97
	ld   d, [hl]                                     ; $5100: $56
	adc  h                                           ; $5101: $8c

Call_05a_5102:
	ld   l, c                                        ; $5102: $69
	and  c                                           ; $5103: $a1
	ld   e, c                                        ; $5104: $59
	ld   sp, hl                                      ; $5105: $f9
	dec  c                                           ; $5106: $0d
	nop                                              ; $5107: $00
	ld   a, [bc]                                     ; $5108: $0a
	inc  e                                           ; $5109: $1c
	ld   b, $01                                      ; $510a: $06 $01
	ld   bc, $5801                                   ; $510c: $01 $01 $58
	ld   d, h                                        ; $510f: $54
	ld   a, [$5210]                                  ; $5110: $fa $10 $52
	ld   d, d                                        ; $5113: $52
	ld   l, d                                        ; $5114: $6a
	sbc  a                                           ; $5115: $9f
	dec  c                                           ; $5116: $0d
	nop                                              ; $5117: $00
	ld   a, [bc]                                     ; $5118: $0a
	ld   a, [de]                                     ; $5119: $1a
	ld   b, $07                                      ; $511a: $06 $07
	and  h                                           ; $511c: $a4
	ld   bc, $0402                                   ; $511d: $01 $02 $04
	ld   bc, $2002                                   ; $5120: $01 $02 $20
	nop                                              ; $5123: $00
	rlca                                             ; $5124: $07
	ret  z                                           ; $5125: $c8

	ld   bc, $0402                                   ; $5126: $01 $02 $04
	ld   bc, $2001                                   ; $5129: $01 $01 $20
	nop                                              ; $512c: $00
	ld   b, $e7                                      ; $512d: $06 $e7
	ld   bc, $061c                                   ; $512f: $01 $1c $06
	rlca                                             ; $5132: $07
	rlca                                             ; $5133: $07
	dec  e                                           ; $5134: $1d
	ld   b, b                                        ; $5135: $40
	ld   d, $03                                      ; $5136: $16 $03
	ld   d, $01                                      ; $5138: $16 $01
	inc  bc                                          ; $513a: $03
	jr   z, jr_05a_513d                              ; $513b: $28 $00

jr_05a_513d:
	ld   bc, $6267                                   ; $513d: $01 $67 $62
	ld   d, d                                        ; $5140: $52
	ld   l, d                                        ; $5141: $6a
	ld   [$9f00], sp                                 ; $5142: $08 $00 $9f
	dec  c                                           ; $5145: $0d
	sub  d                                           ; $5146: $92
	sbc  c                                           ; $5147: $99
	ld   h, [hl]                                     ; $5148: $66
	sub  c                                           ; $5149: $91
	ld   a, b                                        ; $514a: $78
	ld   d, d                                        ; $514b: $52
	ld   e, c                                        ; $514c: $59
	sbc  a                                           ; $514d: $9f
	dec  c                                           ; $514e: $0d
	nop                                              ; $514f: $00
	ld   a, [bc]                                     ; $5150: $0a
	ld   b, $15                                      ; $5151: $06 $15
	ld   [bc], a                                     ; $5153: $02
	inc  e                                           ; $5154: $1c
	ld   b, $01                                      ; $5155: $06 $01
	ld   bc, $401d                                   ; $5157: $01 $1d $40
	ld   d, $03                                      ; $515a: $16 $03
	ld   d, $01                                      ; $515c: $16 $01
	ld   bc, $0028                                   ; $515e: $01 $28 $00
	ld   bc, $508c                                   ; $5161: $01 $8c $50
	adc  h                                           ; $5164: $8c
	ld   d, b                                        ; $5165: $50
	ld   [hl], c                                     ; $5166: $71
	ld   [hl], h                                     ; $5167: $74
	halt                                             ; $5168: $76
	ld   h, c                                        ; $5169: $61
	ld   l, [hl]                                     ; $516a: $6e
	ld   a, b                                        ; $516b: $78
	sbc  a                                           ; $516c: $9f
	dec  c                                           ; $516d: $0d
	nop                                              ; $516e: $00
	ld   a, [bc]                                     ; $516f: $0a
	ld   b, $15                                      ; $5170: $06 $15
	ld   [bc], a                                     ; $5172: $02
	inc  e                                           ; $5173: $1c
	ld   b, $05                                      ; $5174: $06 $05
	dec  b                                           ; $5176: $05
	dec  e                                           ; $5177: $1d
	ld   b, b                                        ; $5178: $40
	ld   d, $03                                      ; $5179: $16 $03
	ld   d, $01                                      ; $517b: $16 $01
	ld   [bc], a                                     ; $517d: $02
	add  hl, hl                                      ; $517e: $29
	nop                                              ; $517f: $00
	ld   bc, $a178                                   ; $5180: $01 $78 $a1
	ld   l, [hl]                                     ; $5183: $6e
	sub  [hl]                                        ; $5184: $96
	db   $fc                                         ; $5185: $fc
	sbc  a                                           ; $5186: $9f
	dec  c                                           ; $5187: $0d
	ld   l, d                                        ; $5188: $6a
	and  c                                           ; $5189: $a1
	ld   l, d                                        ; $518a: $6a
	and  c                                           ; $518b: $a1
	pop  bc                                          ; $518c: $c1
	db   $e3                                         ; $518d: $e3
	ld   h, [hl]                                     ; $518e: $66
	sub  c                                           ; $518f: $91
	ld   a, b                                        ; $5190: $78
	ld   d, d                                        ; $5191: $52
	ld   e, c                                        ; $5192: $59
	sbc  a                                           ; $5193: $9f
	dec  c                                           ; $5194: $0d
	xor  l                                           ; $5195: $ad
	call nz, $b8b0                                   ; $5196: $c4 $b0 $b8
	rst  $38                                         ; $5199: $ff
	rst  $38                                         ; $519a: $ff
	dec  c                                           ; $519b: $0d
	nop                                              ; $519c: $00
	ld   a, [bc]                                     ; $519d: $0a
	ld   b, $15                                      ; $519e: $06 $15
	ld   [bc], a                                     ; $51a0: $02
	inc  e                                           ; $51a1: $1c
	ld   b, $00                                      ; $51a2: $06 $00
	nop                                              ; $51a4: $00
	ld   bc, $9166                                   ; $51a5: $01 $66 $91
	sbc  [hl]                                        ; $51a8: $9e
	adc  h                                           ; $51a9: $8c
	ld   l, l                                        ; $51aa: $6d
	ld   a, b                                        ; $51ab: $78
	sbc  a                                           ; $51ac: $9f
	dec  c                                           ; $51ad: $0d
	nop                                              ; $51ae: $00
	ld   a, [bc]                                     ; $51af: $0a
	dec  c                                           ; $51b0: $0d
	nop                                              ; $51b1: $00
	nop                                              ; $51b2: $00
	rrca                                             ; $51b3: $0f
	nop                                              ; $51b4: $00
	ld   bc, $1e09                                   ; $51b5: $01 $09 $1e
	nop                                              ; $51b8: $00
	rrca                                             ; $51b9: $0f
	nop                                              ; $51ba: $00
	ld   bc, $0301                                   ; $51bb: $01 $01 $03
	and  a                                           ; $51be: $a7
	adc  l                                           ; $51bf: $8d
	ld   a, h                                        ; $51c0: $7c
	inc  b                                           ; $51c1: $04
	xor  d                                           ; $51c2: $aa
	halt                                             ; $51c3: $76
	ld   e, c                                        ; $51c4: $59
	dec  c                                           ; $51c5: $0d
	inc  b                                           ; $51c6: $04
	ld   c, c                                        ; $51c7: $49
	and  b                                           ; $51c8: $a0
	ld   h, l                                        ; $51c9: $65
	ld   [hl], h                                     ; $51ca: $74
	sbc  c                                           ; $51cb: $99
	and  c                                           ; $51cc: $a1
	ld   [hl], l                                     ; $51cd: $75
	ld   h, a                                        ; $51ce: $67
	ld   e, c                                        ; $51cf: $59
	ld   sp, hl                                      ; $51d0: $f9
	dec  c                                           ; $51d1: $0d
	nop                                              ; $51d2: $00
	ld   a, [bc]                                     ; $51d3: $0a
	inc  e                                           ; $51d4: $1c
	ld   b, $00                                      ; $51d5: $06 $00
	nop                                              ; $51d7: $00
	ld   bc, $986b                                   ; $51d8: $01 $6b $98
	sub  c                                           ; $51db: $91
	sub  b                                           ; $51dc: $90
	ld   l, a                                        ; $51dd: $6f
	sbc  e                                           ; $51de: $9b
	and  c                                           ; $51df: $a1
	dec  c                                           ; $51e0: $0d
	ld   [bc], a                                     ; $51e1: $02
	or   [hl]                                        ; $51e2: $b6
	inc  bc                                          ; $51e3: $03
	ld   l, e                                        ; $51e4: $6b
	ld   a, h                                        ; $51e5: $7c
	ld   e, a                                        ; $51e6: $5f
	ld   d, d                                        ; $51e7: $52
	ld   h, c                                        ; $51e8: $61
	ld   h, e                                        ; $51e9: $63
	sbc  a                                           ; $51ea: $9f
	dec  c                                           ; $51eb: $0d
	nop                                              ; $51ec: $00
	ld   a, [bc]                                     ; $51ed: $0a
	ld   bc, $546b                                   ; $51ee: $01 $6b $54
	ld   l, [hl]                                     ; $51f1: $6e
	sbc  [hl]                                        ; $51f2: $9e
	ld   [$9f00], sp                                 ; $51f3: $08 $00 $9f
	dec  c                                           ; $51f6: $0d
	ld   e, c                                        ; $51f7: $59
	sbc  l                                           ; $51f8: $9d
	sub  a                                           ; $51f9: $97
	ld   [bc], a                                     ; $51fa: $02
	halt                                             ; $51fb: $76
	sbc  c                                           ; $51fc: $99
	ld   e, c                                        ; $51fd: $59
	ld   sp, hl                                      ; $51fe: $f9
	dec  c                                           ; $51ff: $0d
	nop                                              ; $5200: $00
	ld   a, [bc]                                     ; $5201: $0a
	add  hl, de                                      ; $5202: $19
	dec  b                                           ; $5203: $05
	ld   [bc], a                                     ; $5204: $02
	ld   a, l                                        ; $5205: $7d
	ld   d, d                                        ; $5206: $52
	nop                                              ; $5207: $00
	nop                                              ; $5208: $00
	ld   d, d                                        ; $5209: $52
	ld   d, d                                        ; $520a: $52
	ld   d, [hl]                                     ; $520b: $56
	nop                                              ; $520c: $00
	ld   bc, $5507                                   ; $520d: $01 $07 $55
	inc  bc                                          ; $5210: $03
	ld   [bc], a                                     ; $5211: $02
	inc  bc                                          ; $5212: $03
	ld   bc, $2000                                   ; $5213: $01 $00 $20
	nop                                              ; $5216: $00
	rlca                                             ; $5217: $07
	sub  a                                           ; $5218: $97
	ld   [bc], a                                     ; $5219: $02
	ld   [bc], a                                     ; $521a: $02
	inc  bc                                          ; $521b: $03
	ld   bc, $2001                                   ; $521c: $01 $01 $20
	nop                                              ; $521f: $00
	ld   b, $dc                                      ; $5220: $06 $dc
	ld   [bc], a                                     ; $5222: $02
	rrca                                             ; $5223: $0f
	nop                                              ; $5224: $00
	ld   bc, $6701                                   ; $5225: $01 $01 $67
	adc  l                                           ; $5228: $8d
	adc  h                                           ; $5229: $8c
	ld   l, c                                        ; $522a: $69
	and  c                                           ; $522b: $a1
	sbc  a                                           ; $522c: $9f
	dec  c                                           ; $522d: $0d
	ld   [bc], a                                     ; $522e: $02
	and  l                                           ; $522f: $a5
	ld   l, a                                        ; $5230: $6f
	sub  l                                           ; $5231: $95
	ld   [hl], c                                     ; $5232: $71
	halt                                             ; $5233: $76
	inc  b                                           ; $5234: $04
	di                                               ; $5235: $f3
	ld   [bc], a                                     ; $5236: $02
	jp   $047c                                       ; $5237: $c3 $7c $04


	ld   [hl-], a                                    ; $523a: $32
	inc  b                                           ; $523b: $04
	dec  bc                                          ; $523c: $0b
	dec  c                                           ; $523d: $0d
	ld   a, b                                        ; $523e: $78
	and  c                                           ; $523f: $a1
	ld   [hl], l                                     ; $5240: $75
	ld   h, a                                        ; $5241: $67
	sub  [hl]                                        ; $5242: $96
	sbc  a                                           ; $5243: $9f
	dec  c                                           ; $5244: $0d
	nop                                              ; $5245: $00
	ld   a, [bc]                                     ; $5246: $0a
	inc  e                                           ; $5247: $1c
	ld   b, $00                                      ; $5248: $06 $00
	nop                                              ; $524a: $00
	ld   bc, $546b                                   ; $524b: $01 $6b $54
	ld   e, c                                        ; $524e: $59
	sbc  [hl]                                        ; $524f: $9e
	ld   h, [hl]                                     ; $5250: $66
	sub  c                                           ; $5251: $91
	ld   d, b                                        ; $5252: $50
	adc  h                                           ; $5253: $8c
	ld   l, l                                        ; $5254: $6d
	dec  c                                           ; $5255: $0d
	ld   [bc], a                                     ; $5256: $02
	and  l                                           ; $5257: $a5
	inc  b                                           ; $5258: $04
	add  hl, hl                                      ; $5259: $29
	ld   a, b                                        ; $525a: $78
	sbc  a                                           ; $525b: $9f
	dec  c                                           ; $525c: $0d
	nop                                              ; $525d: $00
	ld   a, [bc]                                     ; $525e: $0a
	dec  c                                           ; $525f: $0d
	nop                                              ; $5260: $00
	nop                                              ; $5261: $00
	rrca                                             ; $5262: $0f
	nop                                              ; $5263: $00
	ld   bc, $1e09                                   ; $5264: $01 $09 $1e
	nop                                              ; $5267: $00
	inc  e                                           ; $5268: $1c
	ld   b, $05                                      ; $5269: $06 $05
	dec  b                                           ; $526b: $05
	ld   bc, $ffff                                   ; $526c: $01 $ff $ff
	ld   a, b                                        ; $526f: $78
	and  c                                           ; $5270: $a1
	ld   l, [hl]                                     ; $5271: $6e
	sub  [hl]                                        ; $5272: $96
	sbc  [hl]                                        ; $5273: $9e
	dec  c                                           ; $5274: $0d
	ret  nc                                          ; $5275: $d0

Jump_05a_5276:
	call nz, $ecae                                   ; $5276: $c4 $ae $ec
	ld   h, l                                        ; $5279: $65
	ld   a, b                                        ; $527a: $78
	ld   d, d                                        ; $527b: $52
	sub  d                                           ; $527c: $92
	ld   [hl], d                                     ; $527d: $72
	ld   l, [hl]                                     ; $527e: $6e
	ld   a, b                                        ; $527f: $78
	ei                                               ; $5280: $fb
	sbc  a                                           ; $5281: $9f
	dec  c                                           ; $5282: $0d
	nop                                              ; $5283: $00
	ld   a, [bc]                                     ; $5284: $0a
	ld   bc, $9789                                   ; $5285: $01 $89 $97
	sbc  [hl]                                        ; $5288: $9e
	ld   [de], a                                     ; $5289: $12
	ld   [bc], a                                     ; $528a: $02
	sub  e                                           ; $528b: $93
	xor  l                                           ; $528c: $ad
	ei                                               ; $528d: $fb
	push af                                          ; $528e: $f5
	halt                                             ; $528f: $76
	sub  d                                           ; $5290: $92
	ld   [hl], c                                     ; $5291: $71
	ld   [hl], h                                     ; $5292: $74
	dec  c                                           ; $5293: $0d
	adc  l                                           ; $5294: $8d
	sbc  e                                           ; $5295: $9b
	sub  [hl]                                        ; $5296: $96
	sbc  [hl]                                        ; $5297: $9e
	cp   d                                           ; $5298: $ba
	call nz, $ecae                                   ; $5299: $c4 $ae $ec
	ld   h, a                                        ; $529c: $67
	sbc  c                                           ; $529d: $99
	ld   l, d                                        ; $529e: $6a
	ld   a, [$000d]                                  ; $529f: $fa $0d $00
	ld   a, [bc]                                     ; $52a2: $0a
	dec  c                                           ; $52a3: $0d
	ld   b, $00                                      ; $52a4: $06 $00
	rrca                                             ; $52a6: $0f
	nop                                              ; $52a7: $00
	ld   bc, $9d01                                   ; $52a8: $01 $01 $9d
	ld   e, c                                        ; $52ab: $59
	sbc  b                                           ; $52ac: $98
	adc  h                                           ; $52ad: $8c
	ld   h, l                                        ; $52ae: $65
	ld   l, l                                        ; $52af: $6d
	sbc  [hl]                                        ; $52b0: $9e
	dec  c                                           ; $52b1: $0d
	ld   [hl], l                                     ; $52b2: $75
	ld   a, l                                        ; $52b3: $7d
	sbc  [hl]                                        ; $52b4: $9e
	sub  d                                           ; $52b5: $92
	ld   [hl], c                                     ; $52b6: $71
	ld   [hl], h                                     ; $52b7: $74
	adc  l                                           ; $52b8: $8d
	adc  h                                           ; $52b9: $8c
	ld   h, a                                        ; $52ba: $67
	sbc  a                                           ; $52bb: $9f
	dec  c                                           ; $52bc: $0d
	nop                                              ; $52bd: $00
	ld   a, [bc]                                     ; $52be: $0a
	inc  e                                           ; $52bf: $1c
	ld   b, $00                                      ; $52c0: $06 $00
	nop                                              ; $52c2: $00
	ld   bc, $546b                                   ; $52c3: $01 $6b $54
	ld   h, c                                        ; $52c6: $61
	ld   a, b                                        ; $52c7: $78
	ld   e, l                                        ; $52c8: $5d
	ld   [hl], c                                     ; $52c9: $71
	ld   l, a                                        ; $52ca: $6f
	sub  c                                           ; $52cb: $91
	ld   a, b                                        ; $52cc: $78
	ld   a, [$960d]                                  ; $52cd: $fa $0d $96
	ld   h, l                                        ; $52d0: $65
	sbc  [hl]                                        ; $52d1: $9e
	ld   h, [hl]                                     ; $52d2: $66
	sub  c                                           ; $52d3: $91
	ld   d, b                                        ; $52d4: $50
	sbc  [hl]                                        ; $52d5: $9e
	dec  b                                           ; $52d6: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52d7: $cf
	adc  a                                           ; $52d8: $8f
	ld   a, [$0dfa]                                  ; $52d9: $fa $fa $0d
	nop                                              ; $52dc: $00
	ld   a, [bc]                                     ; $52dd: $0a
	ld   b, $6a                                      ; $52de: $06 $6a
	inc  bc                                          ; $52e0: $03
	inc  e                                           ; $52e1: $1c
	ld   b, $02                                      ; $52e2: $06 $02
	ld   [bc], a                                     ; $52e4: $02
	ld   bc, $6596                                   ; $52e5: $01 $96 $65
	sbc  a                                           ; $52e8: $9f
	dec  c                                           ; $52e9: $0d
	ld   h, [hl]                                     ; $52ea: $66
	sub  c                                           ; $52eb: $91
	ld   d, b                                        ; $52ec: $50
	sbc  [hl]                                        ; $52ed: $9e
	dec  b                                           ; $52ee: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52ef: $cf
	adc  a                                           ; $52f0: $8f
	ld   a, [$0dfa]                                  ; $52f1: $fa $fa $0d
	nop                                              ; $52f4: $00
	ld   a, [bc]                                     ; $52f5: $0a
	add  hl, de                                      ; $52f6: $19
	dec  b                                           ; $52f7: $05
	inc  bc                                          ; $52f8: $03
	add  hl, de                                      ; $52f9: $19
	inc  b                                           ; $52fa: $04
	push bc                                          ; $52fb: $c5
	ld   [bc], a                                     ; $52fc: $02
	halt                                             ; $52fd: $76
	sbc  d                                           ; $52fe: $9a
	ld   l, l                                        ; $52ff: $6d
	nop                                              ; $5300: $00
	nop                                              ; $5301: $00
	inc  d                                           ; $5302: $14
	ld   de, $c504                                   ; $5303: $11 $04 $c5
	ld   [bc], a                                     ; $5306: $02
	halt                                             ; $5307: $76
	sbc  b                                           ; $5308: $98
	ld   l, l                                        ; $5309: $6d
	ld   e, c                                        ; $530a: $59
	ld   [hl], c                                     ; $530b: $71
	ld   l, l                                        ; $530c: $6d
	nop                                              ; $530d: $00
	ld   bc, $0416                                   ; $530e: $01 $16 $04
	push bc                                          ; $5311: $c5
	ld   [bc], a                                     ; $5312: $02
	halt                                             ; $5313: $76
	sbc  d                                           ; $5314: $9a
	ld   [hl], h                                     ; $5315: $74
	sub  [hl]                                        ; $5316: $96
	ld   e, c                                        ; $5317: $59
	ld   [hl], c                                     ; $5318: $71
	ld   l, l                                        ; $5319: $6d
	nop                                              ; $531a: $00
	ld   [bc], a                                     ; $531b: $02
	rlca                                             ; $531c: $07
	jr   z, @+$06                                    ; $531d: $28 $04

	ld   [bc], a                                     ; $531f: $02
	inc  bc                                          ; $5320: $03
	ld   bc, $2000                                   ; $5321: $01 $00 $20
	nop                                              ; $5324: $00
	rlca                                             ; $5325: $07
	db   $e3                                         ; $5326: $e3
	inc  bc                                          ; $5327: $03
	ld   [bc], a                                     ; $5328: $02
	inc  bc                                          ; $5329: $03
	ld   bc, $2001                                   ; $532a: $01 $01 $20
	nop                                              ; $532d: $00
	rlca                                             ; $532e: $07
	xor  [hl]                                        ; $532f: $ae
	inc  bc                                          ; $5330: $03
	ld   [bc], a                                     ; $5331: $02
	inc  bc                                          ; $5332: $03
	ld   bc, $2002                                   ; $5333: $01 $02 $20
	nop                                              ; $5336: $00
	ld   b, $60                                      ; $5337: $06 $60
	inc  b                                           ; $5339: $04
	inc  e                                           ; $533a: $1c
	ld   b, $01                                      ; $533b: $06 $01
	ld   bc, $401d                                   ; $533d: $01 $1d $40
	ld   d, $03                                      ; $5340: $16 $03
	ld   d, $01                                      ; $5342: $16 $01
	ld   bc, $0028                                   ; $5344: $01 $28 $00
	ld   bc, $7158                                   ; $5347: $01 $58 $71
	ld   a, [$1610]                                  ; $534a: $fa $10 $16
	inc  b                                           ; $534d: $04
	push bc                                          ; $534e: $c5
	ld   e, c                                        ; $534f: $59
	sbc  a                                           ; $5350: $9f
	dec  c                                           ; $5351: $0d
	adc  h                                           ; $5352: $8c
	ld   d, b                                        ; $5353: $50
	sbc  [hl]                                        ; $5354: $9e
	adc  h                                           ; $5355: $8c
	ld   d, b                                        ; $5356: $50
	ld   [hl], c                                     ; $5357: $71
	ld   [hl], h                                     ; $5358: $74
	halt                                             ; $5359: $76
	ld   h, c                                        ; $535a: $61
	ld   e, c                                        ; $535b: $59
	sbc  a                                           ; $535c: $9f
	dec  c                                           ; $535d: $0d
	ld   h, [hl]                                     ; $535e: $66
	sub  c                                           ; $535f: $91
	ld   d, b                                        ; $5360: $50
	sbc  [hl]                                        ; $5361: $9e
	sub  b                                           ; $5362: $90
	ld   d, h                                        ; $5363: $54
	ld   [bc], a                                     ; $5364: $02
	jr   nz, jr_05a_5369                             ; $5365: $20 $02

	sub  e                                           ; $5367: $93
	sbc  a                                           ; $5368: $9f

jr_05a_5369:
	dec  c                                           ; $5369: $0d
	nop                                              ; $536a: $00
	ld   a, [bc]                                     ; $536b: $0a
	ld   b, $9b                                      ; $536c: $06 $9b
	inc  b                                           ; $536e: $04
	inc  e                                           ; $536f: $1c
	ld   b, $05                                      ; $5370: $06 $05
	dec  b                                           ; $5372: $05
	ld   bc, $9850                                   ; $5373: $01 $50 $98
	sub  c                                           ; $5376: $91
	ei                                               ; $5377: $fb
	sbc  [hl]                                        ; $5378: $9e
	inc  d                                           ; $5379: $14
	ld   de, $c504                                   ; $537a: $11 $04 $c5
	ld   e, l                                        ; $537d: $5d
	sub  a                                           ; $537e: $97
	ld   d, d                                        ; $537f: $52
	dec  c                                           ; $5380: $0d
	ld   [bc], a                                     ; $5381: $02
	halt                                             ; $5382: $76
	sbc  b                                           ; $5383: $98
	ld   l, e                                        ; $5384: $6b
	ld   d, h                                        ; $5385: $54
	ld   a, b                                        ; $5386: $78
	ld   d, d                                        ; $5387: $52
	ld   e, e                                        ; $5388: $5b
	ld   e, b                                        ; $5389: $58
	ld   d, d                                        ; $538a: $52
	ld   l, [hl]                                     ; $538b: $6e
	ld   [hl], c                                     ; $538c: $71
	ld   l, l                                        ; $538d: $6d
	ld   a, h                                        ; $538e: $7c
	ld   a, c                                        ; $538f: $79
	dec  c                                           ; $5390: $0d
	inc  d                                           ; $5391: $14
	inc  b                                           ; $5392: $04
	push bc                                          ; $5393: $c5
	ld   h, l                                        ; $5394: $65
	ld   e, c                                        ; $5395: $59
	ld   [bc], a                                     ; $5396: $02
	halt                                             ; $5397: $76
	sbc  d                                           ; $5398: $9a
	ld   [hl], h                                     ; $5399: $74
	ld   a, b                                        ; $539a: $78
	ld   d, d                                        ; $539b: $52
	ld   l, d                                        ; $539c: $6a
	sbc  a                                           ; $539d: $9f
	dec  c                                           ; $539e: $0d
	nop                                              ; $539f: $00
	ld   a, [bc]                                     ; $53a0: $0a
	ld   bc, $9166                                   ; $53a1: $01 $66 $91
	ld   d, b                                        ; $53a4: $50
	sbc  [hl]                                        ; $53a5: $9e
	sub  b                                           ; $53a6: $90
	ld   d, h                                        ; $53a7: $54
	ld   [bc], a                                     ; $53a8: $02
	jr   nz, jr_05a_53ad                             ; $53a9: $20 $02

	sub  e                                           ; $53ab: $93
	ld   l, [hl]                                     ; $53ac: $6e

jr_05a_53ad:
	sbc  a                                           ; $53ad: $9f
	dec  c                                           ; $53ae: $0d
	nop                                              ; $53af: $00
	ld   a, [bc]                                     ; $53b0: $0a
	ld   b, $9b                                      ; $53b1: $06 $9b
	inc  b                                           ; $53b3: $04
	inc  e                                           ; $53b4: $1c
	ld   b, $01                                      ; $53b5: $06 $01
	ld   bc, $401d                                   ; $53b7: $01 $1d $40
	ld   d, $03                                      ; $53ba: $16 $03
	ld   d, $01                                      ; $53bc: $16 $01
	ld   [bc], a                                     ; $53be: $02
	jr   z, jr_05a_53c1                              ; $53bf: $28 $00

jr_05a_53c1:
	ld   bc, $7158                                   ; $53c1: $01 $58 $71
	ld   a, [$1910]                                  ; $53c4: $fa $10 $19
	inc  b                                           ; $53c7: $04
	push bc                                          ; $53c8: $c5
	sub  b                                           ; $53c9: $90
	ld   [bc], a                                     ; $53ca: $02
	halt                                             ; $53cb: $76
	sbc  c                                           ; $53cc: $99
	halt                                             ; $53cd: $76
	ld   a, l                                        ; $53ce: $7d
	dec  c                                           ; $53cf: $0d
	ld   a, b                                        ; $53d0: $78
	ld   e, c                                        ; $53d1: $59
	ld   a, b                                        ; $53d2: $78
	ld   e, c                                        ; $53d3: $59
	sub  d                                           ; $53d4: $92
	sbc  c                                           ; $53d5: $99
	ld   h, [hl]                                     ; $53d6: $66
	sub  c                                           ; $53d7: $91
	and  c                                           ; $53d8: $a1
	sbc  a                                           ; $53d9: $9f
	dec  c                                           ; $53da: $0d
	sub  [hl]                                        ; $53db: $96
	ld   h, l                                        ; $53dc: $65
	sbc  [hl]                                        ; $53dd: $9e
	sub  b                                           ; $53de: $90
	ld   d, h                                        ; $53df: $54
	ld   [bc], a                                     ; $53e0: $02
	jr   nz, jr_05a_53e5                             ; $53e1: $20 $02

	sub  e                                           ; $53e3: $93
	ld   l, [hl]                                     ; $53e4: $6e

jr_05a_53e5:
	sbc  a                                           ; $53e5: $9f
	dec  c                                           ; $53e6: $0d
	nop                                              ; $53e7: $00
	ld   a, [bc]                                     ; $53e8: $0a
	ld   b, $9b                                      ; $53e9: $06 $9b
	inc  b                                           ; $53eb: $04
	inc  e                                           ; $53ec: $1c
	ld   b, $05                                      ; $53ed: $06 $05
	dec  b                                           ; $53ef: $05
	dec  e                                           ; $53f0: $1d
	ld   b, b                                        ; $53f1: $40
	ld   d, $03                                      ; $53f2: $16 $03
	ld   d, $01                                      ; $53f4: $16 $01
	ld   [bc], a                                     ; $53f6: $02
	add  hl, hl                                      ; $53f7: $29
	nop                                              ; $53f8: $00
	ld   bc, $a178                                   ; $53f9: $01 $78 $a1
	ld   l, [hl]                                     ; $53fc: $6e
	sub  [hl]                                        ; $53fd: $96
	sbc  [hl]                                        ; $53fe: $9e
	ld   h, c                                        ; $53ff: $61
	and  c                                           ; $5400: $a1
	ld   a, b                                        ; $5401: $78
	ld   e, c                                        ; $5402: $59
	sbc  l                                           ; $5403: $9d
	sub  a                                           ; $5404: $97
	dec  c                                           ; $5405: $0d
	ld   e, [hl]                                     ; $5406: $5e
	sub  a                                           ; $5407: $97
	ld   d, d                                        ; $5408: $52
	ld   [hl], l                                     ; $5409: $75
	call nc, $a1d4                                   ; $540a: $d4 $d4 $a1
	ld   a, b                                        ; $540d: $78
	sub  [hl]                                        ; $540e: $96
	ld   a, b                                        ; $540f: $78
	sbc  a                                           ; $5410: $9f
	dec  c                                           ; $5411: $0d
	nop                                              ; $5412: $00
	inc  e                                           ; $5413: $1c
	ld   b, $02                                      ; $5414: $06 $02
	ld   [bc], a                                     ; $5416: $02
	ld   bc, $5490                                   ; $5417: $01 $90 $54
	ld   d, d                                        ; $541a: $52
	ld   d, d                                        ; $541b: $52
	sbc  [hl]                                        ; $541c: $9e
	ld   d, b                                        ; $541d: $50
	ld   [hl], c                                     ; $541e: $71
	ld   l, a                                        ; $541f: $6f
	ld   d, d                                        ; $5420: $52
	ld   e, a                                        ; $5421: $5f
	sbc  a                                           ; $5422: $9f
	dec  c                                           ; $5423: $0d
	nop                                              ; $5424: $00
	ld   a, [bc]                                     ; $5425: $0a
	nop                                              ; $5426: $00
	add  hl, de                                      ; $5427: $19
	dec  b                                           ; $5428: $05
	inc  bc                                          ; $5429: $03
	ld   [de], a                                     ; $542a: $12
	rla                                              ; $542b: $17
	inc  b                                           ; $542c: $04
	push bc                                          ; $542d: $c5
	ld   [bc], a                                     ; $542e: $02
	halt                                             ; $542f: $76
	ld   [hl], c                                     ; $5430: $71
	ld   [hl], h                                     ; $5431: $74
	or   h                                           ; $5432: $b4
	rst  $10                                         ; $5433: $d7
	cp   b                                           ; $5434: $b8
	ld   d, d                                        ; $5435: $52
	ld   l, l                                        ; $5436: $6d
	adc  a                                           ; $5437: $8f
	ld   l, l                                        ; $5438: $6d
	nop                                              ; $5439: $00
	nop                                              ; $543a: $00
	ld   [de], a                                     ; $543b: $12
	inc  de                                          ; $543c: $13
	inc  b                                           ; $543d: $04
	push bc                                          ; $543e: $c5
	ld   [bc], a                                     ; $543f: $02
	halt                                             ; $5440: $76
	sbc  d                                           ; $5441: $9a
	ld   [hl], h                                     ; $5442: $74
	sub  [hl]                                        ; $5443: $96
	ld   e, c                                        ; $5444: $59
	ld   [hl], c                                     ; $5445: $71
	ld   l, l                                        ; $5446: $6d
	nop                                              ; $5447: $00
	ld   bc, $1113                                   ; $5448: $01 $13 $11
	inc  b                                           ; $544b: $04
	push bc                                          ; $544c: $c5
	ld   [bc], a                                     ; $544d: $02
	halt                                             ; $544e: $76
	sbc  d                                           ; $544f: $9a
	ld   l, l                                        ; $5450: $6d
	nop                                              ; $5451: $00
	ld   [bc], a                                     ; $5452: $02
	rlca                                             ; $5453: $07
	push hl                                          ; $5454: $e5
	inc  b                                           ; $5455: $04
	ld   [bc], a                                     ; $5456: $02
	inc  bc                                          ; $5457: $03
	ld   bc, $2000                                   ; $5458: $01 $00 $20
	nop                                              ; $545b: $00
	rlca                                             ; $545c: $07
	inc  a                                           ; $545d: $3c
	dec  b                                           ; $545e: $05
	ld   [bc], a                                     ; $545f: $02
	inc  bc                                          ; $5460: $03
	ld   bc, $2001                                   ; $5461: $01 $01 $20
	nop                                              ; $5464: $00
	rlca                                             ; $5465: $07
	ld   [hl], l                                     ; $5466: $75
	dec  b                                           ; $5467: $05
	ld   [bc], a                                     ; $5468: $02
	inc  bc                                          ; $5469: $03
	ld   bc, $2002                                   ; $546a: $01 $02 $20
	nop                                              ; $546d: $00
	ld   b, $60                                      ; $546e: $06 $60
	inc  b                                           ; $5470: $04
	inc  e                                           ; $5471: $1c
	ld   b, $03                                      ; $5472: $06 $03
	inc  bc                                          ; $5474: $03
	ld   bc, $9850                                   ; $5475: $01 $50 $98
	sub  c                                           ; $5478: $91
	sbc  b                                           ; $5479: $98
	sub  c                                           ; $547a: $91
	rst  $38                                         ; $547b: $ff

Jump_05a_547c:
	rst  $38                                         ; $547c: $ff
	dec  c                                           ; $547d: $0d
	ld   [$9e00], sp                                 ; $547e: $08 $00 $9e
	ld   e, b                                        ; $5481: $58
	inc  bc                                          ; $5482: $03
	ld   c, a                                        ; $5483: $4f
	or   h                                           ; $5484: $b4
	rst  $10                                         ; $5485: $d7
	cp   b                                           ; $5486: $b8
	dec  c                                           ; $5487: $0d
	ld   d, d                                        ; $5488: $52
	ld   l, l                                        ; $5489: $6d
	adc  a                                           ; $548a: $8f
	ld   [hl], h                                     ; $548b: $74
	sbc  c                                           ; $548c: $99
	ld   h, [hl]                                     ; $548d: $66
	sub  c                                           ; $548e: $91
	ld   a, b                                        ; $548f: $78
	ld   d, d                                        ; $5490: $52
	ld   e, c                                        ; $5491: $59
	sbc  a                                           ; $5492: $9f
	dec  c                                           ; $5493: $0d
	nop                                              ; $5494: $00
	ld   a, [bc]                                     ; $5495: $0a
	inc  e                                           ; $5496: $1c
	ld   b, $00                                      ; $5497: $06 $00
	nop                                              ; $5499: $00
	ld   bc, $9861                                   ; $549a: $01 $61 $98
	sub  c                                           ; $549d: $91
	sbc  [hl]                                        ; $549e: $9e
	sub  d                                           ; $549f: $92
	adc  a                                           ; $54a0: $8f
	ld   l, l                                        ; $54a1: $6d
	inc  b                                           ; $54a2: $04
	ld   a, b                                        ; $54a3: $78
	ld   e, d                                        ; $54a4: $5a
	ld   d, d                                        ; $54a5: $52
	ld   d, d                                        ; $54a6: $52
	ld   a, b                                        ; $54a7: $78
	sbc  a                                           ; $54a8: $9f
	dec  c                                           ; $54a9: $0d
	ld   [hl], l                                     ; $54aa: $75
	sub  b                                           ; $54ab: $90
	sbc  [hl]                                        ; $54ac: $9e
	ld   [bc], a                                     ; $54ad: $02
	ld   [hl], $05                                   ; $54ae: $36 $05
	pop  bc                                          ; $54b0: $c1
	ld   l, [hl]                                     ; $54b1: $6e
	ld   e, c                                        ; $54b2: $59
	sub  a                                           ; $54b3: $97
	ld   h, a                                        ; $54b4: $67
	ld   e, [hl]                                     ; $54b5: $5e
	inc  bc                                          ; $54b6: $03
	ld   sp, hl                                      ; $54b7: $f9
	sbc  c                                           ; $54b8: $99
	sub  [hl]                                        ; $54b9: $96
	sbc  a                                           ; $54ba: $9f
	dec  c                                           ; $54bb: $0d
	ld   h, [hl]                                     ; $54bc: $66
	sub  c                                           ; $54bd: $91
	ld   d, b                                        ; $54be: $50
	sbc  [hl]                                        ; $54bf: $9e
	adc  h                                           ; $54c0: $8c
	ld   l, l                                        ; $54c1: $6d
	ld   a, b                                        ; $54c2: $78
	sbc  a                                           ; $54c3: $9f
	dec  c                                           ; $54c4: $0d
	nop                                              ; $54c5: $00
	ld   a, [bc]                                     ; $54c6: $0a
	nop                                              ; $54c7: $00
	inc  e                                           ; $54c8: $1c
	ld   b, $01                                      ; $54c9: $06 $01
	ld   bc, $401d                                   ; $54cb: $01 $1d $40
	ld   d, $03                                      ; $54ce: $16 $03
	ld   d, $01                                      ; $54d0: $16 $01
	ld   [bc], a                                     ; $54d2: $02
	jr   z, jr_05a_54d5                              ; $54d3: $28 $00

jr_05a_54d5:
	ld   bc, $5858                                   ; $54d5: $01 $58 $58
	sbc  [hl]                                        ; $54d8: $9e
	ld   [de], a                                     ; $54d9: $12
	inc  de                                          ; $54da: $13
	inc  b                                           ; $54db: $04
	push bc                                          ; $54dc: $c5
	sub  b                                           ; $54dd: $90
	ld   [bc], a                                     ; $54de: $02
	halt                                             ; $54df: $76
	sbc  b                                           ; $54e0: $98
	sub  d                                           ; $54e1: $92
	ld   e, d                                        ; $54e2: $5a
	ld   [hl], c                                     ; $54e3: $71
	ld   l, l                                        ; $54e4: $6d
	sbc  a                                           ; $54e5: $9f
	dec  c                                           ; $54e6: $0d
	ld   h, a                                        ; $54e7: $67
	ld   h, d                                        ; $54e8: $62
	ld   d, d                                        ; $54e9: $52
	ld   a, b                                        ; $54ea: $78
	sbc  [hl]                                        ; $54eb: $9e
	ld   [$9f00], sp                                 ; $54ec: $08 $00 $9f
	dec  c                                           ; $54ef: $0d
	sub  [hl]                                        ; $54f0: $96
	ld   h, l                                        ; $54f1: $65
	sbc  [hl]                                        ; $54f2: $9e
	db   $eb                                         ; $54f3: $eb
	cp   d                                           ; $54f4: $ba
	ret                                              ; $54f5: $c9


	ld   [bc], a                                     ; $54f6: $02
	jr   nz, jr_05a_54fb                             ; $54f7: $20 $02

	sub  e                                           ; $54f9: $93
	sbc  a                                           ; $54fa: $9f

jr_05a_54fb:
	dec  c                                           ; $54fb: $0d
	nop                                              ; $54fc: $00
	ld   a, [bc]                                     ; $54fd: $0a
	ld   b, $ac                                      ; $54fe: $06 $ac
	dec  b                                           ; $5500: $05
	inc  e                                           ; $5501: $1c
	ld   b, $03                                      ; $5502: $06 $03
	inc  bc                                          ; $5504: $03
	dec  e                                           ; $5505: $1d
	ld   b, b                                        ; $5506: $40
	ld   d, $03                                      ; $5507: $16 $03
	ld   d, $01                                      ; $5509: $16 $01
	inc  bc                                          ; $550b: $03
	jr   z, jr_05a_550e                              ; $550c: $28 $00

jr_05a_550e:
	ld   bc, $9d54                                   ; $550e: $01 $54 $9d
	ld   a, [$ba10]                                  ; $5511: $fa $10 $ba
	call nz, $fbb3                                   ; $5514: $c4 $b3 $fb
	inc  de                                          ; $5517: $13
	ld   de, $c504                                   ; $5518: $11 $04 $c5
	ld   a, [$080d]                                  ; $551b: $fa $0d $08
	nop                                              ; $551e: $00
	ld   e, c                                        ; $551f: $59
	ld   [hl], c                                     ; $5520: $71
	ld   h, c                                        ; $5521: $61
	ld   d, d                                        ; $5522: $52
	ld   d, d                                        ; $5523: $52
	ld   l, d                                        ; $5524: $6a
	sbc  a                                           ; $5525: $9f
	dec  c                                           ; $5526: $0d
	sub  [hl]                                        ; $5527: $96
	ld   h, l                                        ; $5528: $65
	sbc  [hl]                                        ; $5529: $9e
	db   $eb                                         ; $552a: $eb
	cp   d                                           ; $552b: $ba
	ret                                              ; $552c: $c9


	ld   [bc], a                                     ; $552d: $02
	jr   nz, jr_05a_5532                             ; $552e: $20 $02

	sub  e                                           ; $5530: $93
	sbc  a                                           ; $5531: $9f

jr_05a_5532:
	dec  c                                           ; $5532: $0d
	nop                                              ; $5533: $00
	ld   a, [bc]                                     ; $5534: $0a
	ld   b, $ac                                      ; $5535: $06 $ac
	dec  b                                           ; $5537: $05
	add  hl, de                                      ; $5538: $19
	dec  b                                           ; $5539: $05
	inc  bc                                          ; $553a: $03
	dec  d                                           ; $553b: $15
	ld   de, $c504                                   ; $553c: $11 $04 $c5
	ld   [bc], a                                     ; $553f: $02
	halt                                             ; $5540: $76
	ld   [hl], c                                     ; $5541: $71
	ld   [hl], h                                     ; $5542: $74
	or   h                                           ; $5543: $b4
	rst  $10                                         ; $5544: $d7
	cp   b                                           ; $5545: $b8
	ld   d, d                                        ; $5546: $52
	ld   l, l                                        ; $5547: $6d
	adc  a                                           ; $5548: $8f
	ld   l, l                                        ; $5549: $6d
	nop                                              ; $554a: $00
	nop                                              ; $554b: $00
	add  hl, de                                      ; $554c: $19
	inc  b                                           ; $554d: $04
	push bc                                          ; $554e: $c5
	ld   [bc], a                                     ; $554f: $02
	halt                                             ; $5550: $76
	sbc  b                                           ; $5551: $98
	ld   l, l                                        ; $5552: $6d
	ld   e, c                                        ; $5553: $59
	ld   [hl], c                                     ; $5554: $71
	ld   l, l                                        ; $5555: $6d
	nop                                              ; $5556: $00
	ld   bc, $0418                                   ; $5557: $01 $18 $04
	push bc                                          ; $555a: $c5
	ld   [bc], a                                     ; $555b: $02
	halt                                             ; $555c: $76
	sbc  d                                           ; $555d: $9a
	ld   l, l                                        ; $555e: $6d
	nop                                              ; $555f: $00
	ld   [bc], a                                     ; $5560: $02
	rlca                                             ; $5561: $07
	push hl                                          ; $5562: $e5
	inc  b                                           ; $5563: $04
	ld   [bc], a                                     ; $5564: $02
	inc  bc                                          ; $5565: $03
	ld   bc, $2000                                   ; $5566: $01 $00 $20
	nop                                              ; $5569: $00
	rlca                                             ; $556a: $07
	di                                               ; $556b: $f3
	dec  b                                           ; $556c: $05
	ld   [bc], a                                     ; $556d: $02
	inc  bc                                          ; $556e: $03
	ld   bc, $2001                                   ; $556f: $01 $01 $20
	nop                                              ; $5572: $00
	rlca                                             ; $5573: $07
	ld   h, $06                                      ; $5574: $26 $06
	ld   [bc], a                                     ; $5576: $02
	inc  bc                                          ; $5577: $03
	ld   bc, $2002                                   ; $5578: $01 $02 $20
	nop                                              ; $557b: $00
	ld   b, $60                                      ; $557c: $06 $60
	inc  b                                           ; $557e: $04
	inc  e                                           ; $557f: $1c
	ld   b, $00                                      ; $5580: $06 $00
	nop                                              ; $5582: $00
	dec  e                                           ; $5583: $1d
	ld   b, b                                        ; $5584: $40
	ld   d, $03                                      ; $5585: $16 $03
	ld   d, $01                                      ; $5587: $16 $01
	ld   bc, $0028                                   ; $5589: $01 $28 $00
	ld   bc, $7158                                   ; $558c: $01 $58 $71
	sbc  [hl]                                        ; $558f: $9e
	add  hl, de                                      ; $5590: $19
	inc  b                                           ; $5591: $04
	push bc                                          ; $5592: $c5
	ld   sp, hl                                      ; $5593: $f9
	dec  c                                           ; $5594: $0d
	rst  $38                                         ; $5595: $ff
	rst  $38                                         ; $5596: $ff
	ld   e, b                                        ; $5597: $58
	ld   h, l                                        ; $5598: $65
	ld   d, d                                        ; $5599: $52
	ld   a, b                                        ; $559a: $78
	sbc  [hl]                                        ; $559b: $9e
	ld   d, $04                                      ; $559c: $16 $04
	push bc                                          ; $559e: $c5
	ld   l, [hl]                                     ; $559f: $6e
	sbc  a                                           ; $55a0: $9f
	dec  c                                           ; $55a1: $0d
	adc  h                                           ; $55a2: $8c
	ld   d, b                                        ; $55a3: $50
	sbc  [hl]                                        ; $55a4: $9e
	ld   l, e                                        ; $55a5: $6b
	and  c                                           ; $55a6: $a1
	ld   a, b                                        ; $55a7: $78
	halt                                             ; $55a8: $76
	ld   h, c                                        ; $55a9: $61
	ld   e, c                                        ; $55aa: $59
	sbc  a                                           ; $55ab: $9f
	dec  c                                           ; $55ac: $0d
	nop                                              ; $55ad: $00
	ld   a, [bc]                                     ; $55ae: $0a
	ld   b, $49                                      ; $55af: $06 $49
	ld   b, $1c                                      ; $55b1: $06 $1c
	ld   b, $01                                      ; $55b3: $06 $01
	ld   bc, $401d                                   ; $55b5: $01 $1d $40
	ld   d, $03                                      ; $55b8: $16 $03
	ld   d, $01                                      ; $55ba: $16 $01
	ld   [bc], a                                     ; $55bc: $02
	jr   z, jr_05a_55bf                              ; $55bd: $28 $00

jr_05a_55bf:
	ld   bc, $9e58                                   ; $55bf: $01 $58 $9e
	jr   jr_05a_55c8                                 ; $55c2: $18 $04

	push bc                                          ; $55c4: $c5
	ld   e, c                                        ; $55c5: $59
	sbc  a                                           ; $55c6: $9f
	dec  c                                           ; $55c7: $0d

jr_05a_55c8:
	adc  h                                           ; $55c8: $8c
	ld   l, b                                        ; $55c9: $68
	adc  h                                           ; $55ca: $8c
	ld   l, b                                        ; $55cb: $68
	ld   l, [hl]                                     ; $55cc: $6e
	ld   a, b                                        ; $55cd: $78
	sbc  a                                           ; $55ce: $9f
	dec  c                                           ; $55cf: $0d
	nop                                              ; $55d0: $00
	ld   a, [bc]                                     ; $55d1: $0a
	ld   b, $49                                      ; $55d2: $06 $49
	ld   b, $01                                      ; $55d4: $06 $01
	ld   [hl], a                                     ; $55d6: $77
	ld   d, h                                        ; $55d7: $54
	ld   l, [hl]                                     ; $55d8: $6e
	ld   d, d                                        ; $55d9: $52
	sbc  a                                           ; $55da: $9f
	cp   d                                           ; $55db: $ba
	xor  h                                           ; $55dc: $ac
	call nz, Call_05a_6776                           ; $55dd: $c4 $76 $67
	sbc  c                                           ; $55e0: $99
	ld   l, [hl]                                     ; $55e1: $6e
	sbc  e                                           ; $55e2: $9b
	sbc  a                                           ; $55e3: $9f
	dec  c                                           ; $55e4: $0d
	adc  h                                           ; $55e5: $8c
	ld   l, l                                        ; $55e6: $6d
	ld   [bc], a                                     ; $55e7: $02
	ld   e, b                                        ; $55e8: $58
	ld   [bc], a                                     ; $55e9: $02
	add  [hl]                                        ; $55ea: $86
	ld   e, d                                        ; $55eb: $5a
	ld   d, b                                        ; $55ec: $50
	ld   [hl], c                                     ; $55ed: $71
	ld   l, l                                        ; $55ee: $6d
	sub  a                                           ; $55ef: $97
	dec  c                                           ; $55f0: $0d
	ld   [bc], a                                     ; $55f1: $02
	halt                                             ; $55f2: $76
	sub  a                                           ; $55f3: $97
	ld   l, c                                        ; $55f4: $69
	ld   [hl], h                                     ; $55f5: $74
	sub  d                                           ; $55f6: $92
	sbc  c                                           ; $55f7: $99
	sub  [hl]                                        ; $55f8: $96
	sbc  a                                           ; $55f9: $9f
	ld   h, [hl]                                     ; $55fa: $66
	sub  c                                           ; $55fb: $91
	ld   d, b                                        ; $55fc: $50
	ld   a, b                                        ; $55fd: $78
	sbc  a                                           ; $55fe: $9f
	dec  c                                           ; $55ff: $0d
	nop                                              ; $5600: $00
	ld   a, [bc]                                     ; $5601: $0a
	nop                                              ; $5602: $00
	rrca                                             ; $5603: $0f
	nop                                              ; $5604: $00
	ld   bc, $df01                                   ; $5605: $01 $01 $df
	db   $ec                                         ; $5608: $ec
	and  e                                           ; $5609: $a3
	ld   h, e                                        ; $560a: $63
	and  c                                           ; $560b: $a1
	ld   [hl], h                                     ; $560c: $74
	sbc  [hl]                                        ; $560d: $9e
	dec  c                                           ; $560e: $0d
	xor  h                                           ; $560f: $ac
	push af                                          ; $5610: $f5
	bit  4, e                                        ; $5611: $cb $63
	and  c                                           ; $5613: $a1
	ld   e, c                                        ; $5614: $59
	sub  a                                           ; $5615: $97
	ld   [bc], a                                     ; $5616: $02
	sub  l                                           ; $5617: $95
	ld   [hl], h                                     ; $5618: $74
	dec  c                                           ; $5619: $0d
	ld   [hl], a                                     ; $561a: $77
	ld   d, h                                        ; $561b: $54
	ld   [hl], l                                     ; $561c: $75
	ld   h, a                                        ; $561d: $67
	ld   e, c                                        ; $561e: $59
	ld   sp, hl                                      ; $561f: $f9
	dec  c                                           ; $5620: $0d
	nop                                              ; $5621: $00
	ld   a, [bc]                                     ; $5622: $0a
	inc  e                                           ; $5623: $1c
	ld   b, $00                                      ; $5624: $06 $00
	nop                                              ; $5626: $00
	ld   bc, $ecdf                                   ; $5627: $01 $df $ec
	and  e                                           ; $562a: $a3
	ld   sp, hl                                      ; $562b: $f9
	dec  c                                           ; $562c: $0d
	adc  h                                           ; $562d: $8c
	ld   c, a                                        ; $562e: $4f
	ld   d, b                                        ; $562f: $50
	ld   d, d                                        ; $5630: $52
	ld   [hl], d                                     ; $5631: $72
	halt                                             ; $5632: $76
	ld   a, l                                        ; $5633: $7d
	ld   [bc], a                                     ; $5634: $02
	or   c                                           ; $5635: $b1
	ld   d, d                                        ; $5636: $52
	inc  b                                           ; $5637: $04
	ld   [hl], c                                     ; $5638: $71
	ld   e, e                                        ; $5639: $5b
	ld   [bc], a                                     ; $563a: $02
	ld   a, e                                        ; $563b: $7b
	ld   d, d                                        ; $563c: $52
	dec  c                                           ; $563d: $0d
	ld   l, [hl]                                     ; $563e: $6e
	ld   e, c                                        ; $563f: $59
	sub  a                                           ; $5640: $97
	ld   a, e                                        ; $5641: $7b
	sbc  a                                           ; $5642: $9f
	dec  c                                           ; $5643: $0d
	nop                                              ; $5644: $00
	ld   a, [bc]                                     ; $5645: $0a
	ld   bc, $a803                                   ; $5646: $01 $03 $a8
	inc  b                                           ; $5649: $04
	ld   a, d                                        ; $564a: $7a
	ld   [hl], l                                     ; $564b: $75
	ld   [bc], a                                     ; $564c: $02
	ld   h, $03                                      ; $564d: $26 $03
	ld   [hl], l                                     ; $564f: $75
	ld   h, l                                        ; $5650: $65
	ld   [hl], h                                     ; $5651: $74
	dec  c                                           ; $5652: $0d
	dec  b                                           ; $5653: $05
	ld   d, e                                        ; $5654: $53
	inc  b                                           ; $5655: $04
	dec  bc                                          ; $5656: $0b
	and  b                                           ; $5657: $a0
	adc  h                                           ; $5658: $8c
	ld   e, c                                        ; $5659: $59
	ld   l, c                                        ; $565a: $69
	sub  a                                           ; $565b: $97
	sbc  d                                           ; $565c: $9a
	sbc  c                                           ; $565d: $99
	dec  c                                           ; $565e: $0d
	ld   d, b                                        ; $565f: $50
	ld   d, d                                        ; $5660: $52
	adc  d                                           ; $5661: $8a
	ld   d, h                                        ; $5662: $54
	ld   [hl], c                                     ; $5663: $71
	ld   [hl], h                                     ; $5664: $74
	sub  d                                           ; $5665: $92
	ld   [hl], d                                     ; $5666: $72
	ld   e, c                                        ; $5667: $59
	ld   a, b                                        ; $5668: $78
	sbc  a                                           ; $5669: $9f
	dec  c                                           ; $566a: $0d
	nop                                              ; $566b: $00
	ld   a, [bc]                                     ; $566c: $0a
	ld   bc, $8c67                                   ; $566d: $01 $67 $8c
	ld   a, b                                        ; $5670: $78
	ld   d, d                                        ; $5671: $52
	ld   e, d                                        ; $5672: $5a
	sbc  [hl]                                        ; $5673: $9e
	ld   [bc], a                                     ; $5674: $02
	and  l                                           ; $5675: $a5
	ld   e, c                                        ; $5676: $59
	sub  a                                           ; $5677: $97
	dec  c                                           ; $5678: $0d
	db   $e3                                         ; $5679: $e3
	cp   b                                           ; $567a: $b8
	ld   a, b                                        ; $567b: $78
	and  c                                           ; $567c: $a1
	ld   l, [hl]                                     ; $567d: $6e
	sbc  a                                           ; $567e: $9f
	ld   h, [hl]                                     ; $567f: $66
	sub  c                                           ; $5680: $91
	ld   d, b                                        ; $5681: $50
	ld   a, b                                        ; $5682: $78
	sbc  a                                           ; $5683: $9f
	dec  c                                           ; $5684: $0d
	nop                                              ; $5685: $00
	ld   a, [bc]                                     ; $5686: $0a
	dec  c                                           ; $5687: $0d
	nop                                              ; $5688: $00
	nop                                              ; $5689: $00
	rrca                                             ; $568a: $0f
	nop                                              ; $568b: $00
	ld   bc, $1e09                                   ; $568c: $01 $09 $1e
	nop                                              ; $568f: $00
	nop                                              ; $5690: $00
	inc  b                                           ; $5691: $04
	add  b                                           ; $5692: $80
	sbc  e                                           ; $5693: $9b
	ld   bc, $2000                                   ; $5694: $01 $00 $20
	nop                                              ; $5697: $00
	rrca                                             ; $5698: $0f
	nop                                              ; $5699: $00
	ld   bc, $050d                                   ; $569a: $01 $0d $05
	nop                                              ; $569d: $00
	ld   [bc], a                                     ; $569e: $02
	dec  b                                           ; $569f: $05
	add  b                                           ; $56a0: $80
	sbc  e                                           ; $56a1: $9b
	ld   bc, $0001                                   ; $56a2: $01 $01 $00
	ld   bc, $9e50                                   ; $56a5: $01 $50 $9e
	ld   [bc], a                                     ; $56a8: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56a9: $cf
	dec  b                                           ; $56aa: $05
	ld   a, [de]                                     ; $56ab: $1a
	ld   h, e                                        ; $56ac: $63
	and  c                                           ; $56ad: $a1
	sbc  a                                           ; $56ae: $9f
	dec  c                                           ; $56af: $0d
	nop                                              ; $56b0: $00
	ld   a, [bc]                                     ; $56b1: $0a
	inc  e                                           ; $56b2: $1c
	dec  b                                           ; $56b3: $05
	nop                                              ; $56b4: $00
	nop                                              ; $56b5: $00
	ld   bc, $5896                                   ; $56b6: $01 $96 $58
	sbc  [hl]                                        ; $56b9: $9e
	ld   [$7d00], sp                                 ; $56ba: $08 $00 $7d
	and  c                                           ; $56bd: $a1
	sbc  a                                           ; $56be: $9f
	dec  c                                           ; $56bf: $0d
	nop                                              ; $56c0: $00
	ld   a, [bc]                                     ; $56c1: $0a
	inc  e                                           ; $56c2: $1c
	dec  b                                           ; $56c3: $05
	ld   [bc], a                                     ; $56c4: $02
	ld   [bc], a                                     ; $56c5: $02
	ld   bc, $f9a1                                   ; $56c6: $01 $a1 $f9
	db   $10                                         ; $56c9: $10
	ld   [$7d00], sp                                 ; $56ca: $08 $00 $7d
	and  c                                           ; $56cd: $a1
	rst  $38                                         ; $56ce: $ff
	rst  $38                                         ; $56cf: $ff
	dec  c                                           ; $56d0: $0d
	ld   [hl], a                                     ; $56d1: $77
	ld   a, b                                        ; $56d2: $78
	ld   d, d                                        ; $56d3: $52
	ld   h, l                                        ; $56d4: $65
	ld   l, l                                        ; $56d5: $6d
	and  c                                           ; $56d6: $a1
	sub  d                                           ; $56d7: $92
	ld   sp, hl                                      ; $56d8: $f9
	dec  c                                           ; $56d9: $0d
	nop                                              ; $56da: $00
	ld   a, [bc]                                     ; $56db: $0a
	add  hl, de                                      ; $56dc: $19
	dec  b                                           ; $56dd: $05
	inc  bc                                          ; $56de: $03
	inc  b                                           ; $56df: $04
	ld   e, [hl]                                     ; $56e0: $5e
	inc  b                                           ; $56e1: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56e2: $cf
	ld   a, h                                        ; $56e3: $7c
	inc  bc                                          ; $56e4: $03
	ld   l, e                                        ; $56e5: $6b
	inc  b                                           ; $56e6: $04
	ld   [de], a                                     ; $56e7: $12
	ld   d, d                                        ; $56e8: $52
	and  b                                           ; $56e9: $a0
	dec  b                                           ; $56ea: $05
	ld   b, [hl]                                     ; $56eb: $46
	ld   h, l                                        ; $56ec: $65
	inc  bc                                          ; $56ed: $03
	add  b                                           ; $56ee: $80
	sbc  c                                           ; $56ef: $99
	nop                                              ; $56f0: $00
	nop                                              ; $56f1: $00
	inc  bc                                          ; $56f2: $03
	and  a                                           ; $56f3: $a7
	inc  b                                           ; $56f4: $04
	xor  d                                           ; $56f5: $aa
	ld   a, h                                        ; $56f6: $7c
	ld   h, a                                        ; $56f7: $67
	ld   h, d                                        ; $56f8: $62
	ld   h, l                                        ; $56f9: $65
	inc  b                                           ; $56fa: $04
	ld   a, b                                        ; $56fb: $78
	ld   a, c                                        ; $56fc: $79
	ld   [hl], d                                     ; $56fd: $72
	ld   d, d                                        ; $56fe: $52
	ld   [hl], h                                     ; $56ff: $74
	ld   [bc], a                                     ; $5700: $02
	jp   nz, $005d                                   ; $5701: $c2 $5d $00

	ld   bc, $9250                                   ; $5704: $01 $50 $92
	adc  a                                           ; $5707: $8f
	ld   a, c                                        ; $5708: $79
	ld   [hl], d                                     ; $5709: $72
	ld   d, d                                        ; $570a: $52
	ld   [hl], h                                     ; $570b: $74
	ld   [bc], a                                     ; $570c: $02
	jp   nz, $005d                                   ; $570d: $c2 $5d $00

	ld   [bc], a                                     ; $5710: $02
	rlca                                             ; $5711: $07
	sbc  h                                           ; $5712: $9c
	ld   bc, $0302                                   ; $5713: $01 $02 $03
	ld   bc, $2000                                   ; $5716: $01 $00 $20
	nop                                              ; $5719: $00
	rlca                                             ; $571a: $07
	adc  h                                           ; $571b: $8c
	ld   [bc], a                                     ; $571c: $02
	ld   [bc], a                                     ; $571d: $02
	inc  bc                                          ; $571e: $03
	ld   bc, $2001                                   ; $571f: $01 $01 $20
	nop                                              ; $5722: $00
	rlca                                             ; $5723: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5724: $cf
	inc  bc                                          ; $5725: $03
	ld   [bc], a                                     ; $5726: $02
	inc  bc                                          ; $5727: $03
	ld   bc, $2002                                   ; $5728: $01 $02 $20
	nop                                              ; $572b: $00
	ld   b, $97                                      ; $572c: $06 $97
	nop                                              ; $572e: $00
	rrca                                             ; $572f: $0f
	nop                                              ; $5730: $00
	ld   bc, $ff01                                   ; $5731: $01 $01 $ff
	rst  $38                                         ; $5734: $ff
	rst  $38                                         ; $5735: $ff
	rst  $38                                         ; $5736: $ff
	dec  c                                           ; $5737: $0d
	nop                                              ; $5738: $00
	ld   a, [bc]                                     ; $5739: $0a
	rlca                                             ; $573a: $07
	or   a                                           ; $573b: $b7
	nop                                              ; $573c: $00
	inc  bc                                          ; $573d: $03
	dec  d                                           ; $573e: $15
	ld   bc, $25aa                                   ; $573f: $01 $aa $25
	nop                                              ; $5742: $00
	rlca                                             ; $5743: $07
	inc  de                                          ; $5744: $13
	ld   bc, $1503                                   ; $5745: $01 $03 $15
	ld   bc, $2596                                   ; $5748: $01 $96 $25
	nop                                              ; $574b: $00
	ld   b, $51                                      ; $574c: $06 $51
	ld   bc, $051c                                   ; $574e: $01 $1c $05
	inc  b                                           ; $5751: $04
	inc  b                                           ; $5752: $04
	ld   bc, $9e78                                   ; $5753: $01 $78 $9e
	ld   a, b                                        ; $5756: $78
	and  c                                           ; $5757: $a1
	sub  d                                           ; $5758: $92
	rst  $38                                         ; $5759: $ff
	dec  c                                           ; $575a: $0d
	ld   l, e                                        ; $575b: $6b
	and  c                                           ; $575c: $a1
	ld   a, b                                        ; $575d: $78
	ld   a, c                                        ; $575e: $79
	ld   [bc], a                                     ; $575f: $02
	sub  l                                           ; $5760: $95
	ld   [hl], d                                     ; $5761: $72
	adc  a                                           ; $5762: $8f
	ld   [hl], h                                     ; $5763: $74
	rst  $38                                         ; $5764: $ff
	rst  $38                                         ; $5765: $ff
	dec  c                                           ; $5766: $0d
	nop                                              ; $5767: $00
	ld   a, [bc]                                     ; $5768: $0a
	dec  e                                           ; $5769: $1d
	ld   b, b                                        ; $576a: $40
	dec  d                                           ; $576b: $15
	inc  bc                                          ; $576c: $03
	dec  d                                           ; $576d: $15
	ld   bc, $2802                                   ; $576e: $01 $02 $28
	nop                                              ; $5771: $00
	ld   bc, $9e74                                   ; $5772: $01 $74 $9e
	rst  ToBoot                                         ; $5775: $c7
	xor  $99                                         ; $5776: $ee $99
	sub  d                                           ; $5778: $92
	and  c                                           ; $5779: $a1
	rst  $38                                         ; $577a: $ff
	rst  $38                                         ; $577b: $ff
	dec  c                                           ; $577c: $0d
	nop                                              ; $577d: $00
	ld   a, [bc]                                     ; $577e: $0a
	ld   bc, $7889                                   ; $577f: $01 $89 $78
	rst  $38                                         ; $5782: $ff
	rst  $38                                         ; $5783: $ff
	sbc  [hl]                                        ; $5784: $9e
	inc  b                                           ; $5785: $04
	di                                               ; $5786: $f3
	ld   [bc], a                                     ; $5787: $02
	jp   $5278                                       ; $5788: $c3 $78 $52


	and  c                                           ; $578b: $a1
	sub  d                                           ; $578c: $92
	ld   [hl], c                                     ; $578d: $71
	ld   l, l                                        ; $578e: $6d
	sub  a                                           ; $578f: $97
	dec  c                                           ; $5790: $0d
	and  a                                           ; $5791: $a7
	jp   nz, $5d52                                   ; $5792: $c2 $52 $5d

	sbc  l                                           ; $5795: $9d
	sbc  a                                           ; $5796: $9f
	dec  c                                           ; $5797: $0d
	adc  c                                           ; $5798: $89
	ld   a, b                                        ; $5799: $78
	sbc  [hl]                                        ; $579a: $9e
	adc  h                                           ; $579b: $8c
	ld   l, l                                        ; $579c: $6d
	ld   a, b                                        ; $579d: $78
	sbc  a                                           ; $579e: $9f
	dec  c                                           ; $579f: $0d
	nop                                              ; $57a0: $00
	ld   a, [bc]                                     ; $57a1: $0a
	dec  c                                           ; $57a2: $0d
	nop                                              ; $57a3: $00
	nop                                              ; $57a4: $00
	rrca                                             ; $57a5: $0f
	nop                                              ; $57a6: $00
	ld   bc, $1e09                                   ; $57a7: $01 $09 $1e
	nop                                              ; $57aa: $00
	inc  e                                           ; $57ab: $1c
	dec  b                                           ; $57ac: $05
	nop                                              ; $57ad: $00
	nop                                              ; $57ae: $00
	ld   bc, wRandomNumStruct                                   ; $57af: $01 $a7 $c2
	ld   a, h                                        ; $57b2: $7c
	ld   [bc], a                                     ; $57b3: $02
	ld   [hl], d                                     ; $57b4: $72
	ld   a, c                                        ; $57b5: $79
	ld   a, b                                        ; $57b6: $78
	ld   a, c                                        ; $57b7: $79
	ld   e, c                                        ; $57b8: $59
	dec  c                                           ; $57b9: $0d
	ld   [hl], d                                     ; $57ba: $72
	ld   d, d                                        ; $57bb: $52
	ld   [hl], h                                     ; $57bc: $74
	sbc  c                                           ; $57bd: $99
	and  c                                           ; $57be: $a1
	ld   e, c                                        ; $57bf: $59
	ld   sp, hl                                      ; $57c0: $f9
	dec  c                                           ; $57c1: $0d
	nop                                              ; $57c2: $00
	ld   a, [bc]                                     ; $57c3: $0a
	rrca                                             ; $57c4: $0f
	nop                                              ; $57c5: $00
	ld   bc, $5201                                   ; $57c6: $01 $01 $52
	ld   d, d                                        ; $57c9: $52
	ld   d, [hl]                                     ; $57ca: $56
	rst  $38                                         ; $57cb: $ff
	dec  c                                           ; $57cc: $0d
	nop                                              ; $57cd: $00
	ld   a, [bc]                                     ; $57ce: $0a
	rrca                                             ; $57cf: $0f
	dec  b                                           ; $57d0: $05
	nop                                              ; $57d1: $00
	ld   bc, $7889                                   ; $57d2: $01 $89 $78
	sbc  [hl]                                        ; $57d5: $9e
	and  a                                           ; $57d6: $a7
	jp   nz, Jump_05a_7f02                           ; $57d7: $c2 $02 $7f

	ld   e, l                                        ; $57da: $5d
	sbc  l                                           ; $57db: $9d
	sbc  a                                           ; $57dc: $9f
	dec  c                                           ; $57dd: $0d
	nop                                              ; $57de: $00
	ld   a, [bc]                                     ; $57df: $0a
	dec  c                                           ; $57e0: $0d
	nop                                              ; $57e1: $00
	nop                                              ; $57e2: $00
	rrca                                             ; $57e3: $0f
	nop                                              ; $57e4: $00
	ld   bc, $1e09                                   ; $57e5: $01 $09 $1e
	nop                                              ; $57e8: $00
	inc  e                                           ; $57e9: $1c
	dec  b                                           ; $57ea: $05
	ld   [bc], a                                     ; $57eb: $02
	ld   [bc], a                                     ; $57ec: $02
	ld   bc, $a178                                   ; $57ed: $01 $78 $a1
	sub  d                                           ; $57f0: $92
	ld   sp, hl                                      ; $57f1: $f9
	dec  c                                           ; $57f2: $0d
	ld   a, b                                        ; $57f3: $78
	and  c                                           ; $57f4: $a1
	ld   e, c                                        ; $57f5: $59
	inc  b                                           ; $57f6: $04
	di                                               ; $57f7: $f3
	ld   e, d                                        ; $57f8: $5a
	ld   d, b                                        ; $57f9: $50
	sbc  c                                           ; $57fa: $99
	and  c                                           ; $57fb: $a1
	halt                                             ; $57fc: $76
	dec  c                                           ; $57fd: $0d
	ld   l, a                                        ; $57fe: $6f
	sub  c                                           ; $57ff: $91
	ld   d, h                                        ; $5800: $54
	ld   e, c                                        ; $5801: $59
	ld   [hl], c                                     ; $5802: $71
	ld   l, l                                        ; $5803: $6d
	and  c                                           ; $5804: $a1
	ld   e, c                                        ; $5805: $59
	ld   sp, hl                                      ; $5806: $f9
	dec  c                                           ; $5807: $0d
	nop                                              ; $5808: $00
	ld   a, [bc]                                     ; $5809: $0a
	dec  e                                           ; $580a: $1d
	ld   b, b                                        ; $580b: $40
	dec  d                                           ; $580c: $15
	inc  bc                                          ; $580d: $03
	dec  d                                           ; $580e: $15
	ld   bc, $2901                                   ; $580f: $01 $01 $29
	nop                                              ; $5812: $00
	ld   bc, $4904                                   ; $5813: $01 $04 $49
	sub  b                                           ; $5816: $90
	ld   a, b                                        ; $5817: $78
	ld   d, d                                        ; $5818: $52
	and  c                                           ; $5819: $a1
	sub  d                                           ; $581a: $92
	ld   [hl], c                                     ; $581b: $71
	ld   l, l                                        ; $581c: $6d
	sub  a                                           ; $581d: $97
	dec  c                                           ; $581e: $0d
	ld   [bc], a                                     ; $581f: $02
	ld   a, a                                        ; $5820: $7f
	ld   e, l                                        ; $5821: $5d
	ld   [hl], l                                     ; $5822: $75
	sbc  a                                           ; $5823: $9f
	adc  c                                           ; $5824: $89
	ld   a, b                                        ; $5825: $78
	ld   a, b                                        ; $5826: $78
	sbc  a                                           ; $5827: $9f
	dec  c                                           ; $5828: $0d
	nop                                              ; $5829: $00
	ld   a, [bc]                                     ; $582a: $0a
	dec  c                                           ; $582b: $0d
	nop                                              ; $582c: $00
	nop                                              ; $582d: $00
	rrca                                             ; $582e: $0f
	nop                                              ; $582f: $00
	ld   bc, $1e09                                   ; $5830: $01 $09 $1e
	nop                                              ; $5833: $00
	rrca                                             ; $5834: $0f
	nop                                              ; $5835: $00
	ld   bc, $0401                                   ; $5836: $01 $01 $04
	ld   e, [hl]                                     ; $5839: $5e
	inc  b                                           ; $583a: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $583b: $cf
	ld   a, h                                        ; $583c: $7c
	ld   e, b                                        ; $583d: $58
	inc  bc                                          ; $583e: $03
	ld   l, e                                        ; $583f: $6b
	inc  b                                           ; $5840: $04
	ld   [de], a                                     ; $5841: $12
	ld   d, d                                        ; $5842: $52
	and  b                                           ; $5843: $a0
	dec  c                                           ; $5844: $0d
	ld   h, e                                        ; $5845: $63
	ld   l, c                                        ; $5846: $69
	ld   [hl], h                                     ; $5847: $74
	sub  b                                           ; $5848: $90
	sub  a                                           ; $5849: $97
	ld   e, b                                        ; $584a: $58
	ld   d, h                                        ; $584b: $54
	halt                                             ; $584c: $76
	dec  c                                           ; $584d: $0d
	dec  b                                           ; $584e: $05
	pop  de                                          ; $584f: $d1
	ld   d, d                                        ; $5850: $52
	adc  h                                           ; $5851: $8c
	ld   h, l                                        ; $5852: $65
	ld   [hl], h                                     ; $5853: $74
	rst  $38                                         ; $5854: $ff
	rst  $38                                         ; $5855: $ff
	dec  c                                           ; $5856: $0d
	nop                                              ; $5857: $00
	ld   a, [bc]                                     ; $5858: $0a
	inc  e                                           ; $5859: $1c
	dec  b                                           ; $585a: $05
	ld   bc, $0101                                   ; $585b: $01 $01 $01
	ld   l, e                                        ; $585e: $6b
	ld   d, h                                        ; $585f: $54
	ld   e, c                                        ; $5860: $59
	sbc  [hl]                                        ; $5861: $9e
	adc  c                                           ; $5862: $89
	ld   a, b                                        ; $5863: $78
	sbc  [hl]                                        ; $5864: $9e
	dec  c                                           ; $5865: $0d
	inc  bc                                          ; $5866: $03
	ld   l, e                                        ; $5867: $6b
	inc  b                                           ; $5868: $04
	ld   [de], a                                     ; $5869: $12
	ld   [hl], c                                     ; $586a: $71
	ld   [hl], h                                     ; $586b: $74
	sub  b                                           ; $586c: $90
	sub  a                                           ; $586d: $97
	ld   e, b                                        ; $586e: $58
	sbc  a                                           ; $586f: $9f
	dec  c                                           ; $5870: $0d
	nop                                              ; $5871: $00
	ld   a, [bc]                                     ; $5872: $0a
	dec  c                                           ; $5873: $0d
	nop                                              ; $5874: $00
	nop                                              ; $5875: $00
	rrca                                             ; $5876: $0f
	nop                                              ; $5877: $00
	ld   bc, $051a                                   ; $5878: $01 $1a $05
	rlca                                             ; $587b: $07
	ld   hl, sp+$01                                  ; $587c: $f8 $01
	ld   [bc], a                                     ; $587e: $02
	inc  b                                           ; $587f: $04
	ld   bc, $2002                                   ; $5880: $01 $02 $20
	nop                                              ; $5883: $00
	rlca                                             ; $5884: $07
	ld   e, $02                                      ; $5885: $1e $02
	ld   [bc], a                                     ; $5887: $02
	inc  b                                           ; $5888: $04
	ld   bc, $2001                                   ; $5889: $01 $01 $20
	nop                                              ; $588c: $00
	ld   b, $43                                      ; $588d: $06 $43
	ld   [bc], a                                     ; $588f: $02
	inc  e                                           ; $5890: $1c
	dec  b                                           ; $5891: $05
	ld   bc, $1d01                                   ; $5892: $01 $01 $1d
	ld   b, b                                        ; $5895: $40
	dec  d                                           ; $5896: $15
	inc  bc                                          ; $5897: $03
	dec  d                                           ; $5898: $15
	ld   bc, $2803                                   ; $5899: $01 $03 $28
	nop                                              ; $589c: $00
	ld   bc, $6763                                   ; $589d: $01 $63 $67
	ld   e, d                                        ; $58a0: $5a
	ld   [$7d00], sp                                 ; $58a1: $08 $00 $7d
	and  c                                           ; $58a4: $a1
	sub  d                                           ; $58a5: $92
	sbc  a                                           ; $58a6: $9f
	dec  c                                           ; $58a7: $0d
	inc  bc                                          ; $58a8: $03
	and  [hl]                                        ; $58a9: $a6
	dec  b                                           ; $58aa: $05
	call nc, Call_05a_6597                           ; $58ab: $d4 $97 $65
	ld   d, d                                        ; $58ae: $52
	ld   a, [$000d]                                  ; $58af: $fa $0d $00
	ld   a, [bc]                                     ; $58b2: $0a
	ld   b, $6d                                      ; $58b3: $06 $6d
	ld   [bc], a                                     ; $58b5: $02
	inc  e                                           ; $58b6: $1c
	dec  b                                           ; $58b7: $05
	nop                                              ; $58b8: $00
	nop                                              ; $58b9: $00
	dec  e                                           ; $58ba: $1d
	ld   b, b                                        ; $58bb: $40
	dec  d                                           ; $58bc: $15
	inc  bc                                          ; $58bd: $03
	dec  d                                           ; $58be: $15
	ld   bc, $2801                                   ; $58bf: $01 $01 $28
	nop                                              ; $58c2: $00
	ld   bc, $0008                                   ; $58c3: $01 $08 $00
	ld   a, l                                        ; $58c6: $7d
	and  c                                           ; $58c7: $a1
	sbc  a                                           ; $58c8: $9f
	dec  c                                           ; $58c9: $0d
	ld   a, b                                        ; $58ca: $78
	ld   e, c                                        ; $58cb: $59
	ld   a, b                                        ; $58cc: $78
	ld   e, c                                        ; $58cd: $59
	sbc  [hl]                                        ; $58ce: $9e
	sub  d                                           ; $58cf: $92
	sbc  c                                           ; $58d0: $99
	sub  d                                           ; $58d1: $92
	and  c                                           ; $58d2: $a1
	ld   e, c                                        ; $58d3: $59
	sbc  a                                           ; $58d4: $9f
	dec  c                                           ; $58d5: $0d
	nop                                              ; $58d6: $00
	ld   a, [bc]                                     ; $58d7: $0a
	ld   b, $6d                                      ; $58d8: $06 $6d
	ld   [bc], a                                     ; $58da: $02
	inc  e                                           ; $58db: $1c
	dec  b                                           ; $58dc: $05
	ld   [bc], a                                     ; $58dd: $02
	ld   [bc], a                                     ; $58de: $02
	dec  e                                           ; $58df: $1d
	ld   b, b                                        ; $58e0: $40
	dec  d                                           ; $58e1: $15
	inc  bc                                          ; $58e2: $03
	dec  d                                           ; $58e3: $15
	ld   bc, $2902                                   ; $58e4: $01 $02 $29
	nop                                              ; $58e7: $00
	ld   bc, $aca3                                   ; $58e8: $01 $a3 $ac
	push af                                          ; $58eb: $f5
	ld   e, d                                        ; $58ec: $5a
	ld   a, b                                        ; $58ed: $78
	db   $fc                                         ; $58ee: $fc
	sbc  a                                           ; $58ef: $9f
	dec  c                                           ; $58f0: $0d
	sub  b                                           ; $58f1: $90
	ld   d, h                                        ; $58f2: $54
	ld   l, a                                        ; $58f3: $6f
	sub  l                                           ; $58f4: $95
	ld   [hl], c                                     ; $58f5: $71
	halt                                             ; $58f6: $76
	ld   e, d                                        ; $58f7: $5a
	and  c                                           ; $58f8: $a1
	ld   a, [hl]                                     ; $58f9: $7e
	ld   [hl], c                                     ; $58fa: $71
	ld   [hl], h                                     ; $58fb: $74
	db   $fc                                         ; $58fc: $fc
	ld   a, b                                        ; $58fd: $78
	sbc  a                                           ; $58fe: $9f
	dec  c                                           ; $58ff: $0d
	nop                                              ; $5900: $00
	ld   a, [bc]                                     ; $5901: $0a
	ld   b, $6d                                      ; $5902: $06 $6d
	ld   [bc], a                                     ; $5904: $02
	ld   bc, $0458                                   ; $5905: $01 $58 $04
	ld   a, e                                        ; $5908: $7b
	sbc  d                                           ; $5909: $9a
	ld   h, e                                        ; $590a: $63
	and  c                                           ; $590b: $a1
	ld   [hl], l                                     ; $590c: $75
	ld   h, l                                        ; $590d: $65
	ld   l, l                                        ; $590e: $6d
	sbc  a                                           ; $590f: $9f
	dec  c                                           ; $5910: $0d
	adc  c                                           ; $5911: $89
	ld   a, b                                        ; $5912: $78
	sbc  [hl]                                        ; $5913: $9e
	adc  h                                           ; $5914: $8c
	ld   l, l                                        ; $5915: $6d
	ld   a, b                                        ; $5916: $78
	sbc  a                                           ; $5917: $9f
	dec  c                                           ; $5918: $0d
	nop                                              ; $5919: $00
	ld   a, [bc]                                     ; $591a: $0a
	dec  c                                           ; $591b: $0d
	nop                                              ; $591c: $00
	nop                                              ; $591d: $00
	rrca                                             ; $591e: $0f
	nop                                              ; $591f: $00
	ld   bc, $1e09                                   ; $5920: $01 $09 $1e
	nop                                              ; $5923: $00
	rrca                                             ; $5924: $0f
	nop                                              ; $5925: $00
	ld   bc, $0301                                   ; $5926: $01 $01 $03
	and  a                                           ; $5929: $a7
	adc  l                                           ; $592a: $8d
	ld   a, h                                        ; $592b: $7c
	inc  b                                           ; $592c: $04
	xor  d                                           ; $592d: $aa
	halt                                             ; $592e: $76
	ld   e, c                                        ; $592f: $59
	dec  c                                           ; $5930: $0d
	inc  b                                           ; $5931: $04
	ld   c, c                                        ; $5932: $49
	and  b                                           ; $5933: $a0
	ld   h, l                                        ; $5934: $65
	ld   [hl], h                                     ; $5935: $74
	sbc  c                                           ; $5936: $99
	and  c                                           ; $5937: $a1
	ld   [hl], l                                     ; $5938: $75
	ld   h, a                                        ; $5939: $67
	ld   e, c                                        ; $593a: $59
	ld   sp, hl                                      ; $593b: $f9
	dec  c                                           ; $593c: $0d
	nop                                              ; $593d: $00
	ld   a, [bc]                                     ; $593e: $0a
	inc  e                                           ; $593f: $1c
	dec  b                                           ; $5940: $05
	ld   [bc], a                                     ; $5941: $02
	ld   [bc], a                                     ; $5942: $02
	ld   de, $0100                                   ; $5943: $11 $00 $01
	ld   l, e                                        ; $5946: $6b
	sub  d                                           ; $5947: $92
	ld   a, b                                        ; $5948: $78
	rst  $38                                         ; $5949: $ff
	rst  $38                                         ; $594a: $ff
	dec  c                                           ; $594b: $0d
	sub  d                                           ; $594c: $92
	ld   [hl], c                                     ; $594d: $71
	ld   a, a                                        ; $594e: $7f
	ld   h, l                                        ; $594f: $65
	inc  b                                           ; $5950: $04
	ld   e, [hl]                                     ; $5951: $5e
	inc  b                                           ; $5952: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5953: $cf
	ld   e, c                                        ; $5954: $59
	ld   a, b                                        ; $5955: $78
	ld   sp, hl                                      ; $5956: $f9
	dec  c                                           ; $5957: $0d
	nop                                              ; $5958: $00
	ld   a, [bc]                                     ; $5959: $0a
	add  hl, de                                      ; $595a: $19
	dec  b                                           ; $595b: $05
	ld   [bc], a                                     ; $595c: $02
	sub  d                                           ; $595d: $92
	ld   [hl], c                                     ; $595e: $71
	ld   a, a                                        ; $595f: $7f
	sbc  b                                           ; $5960: $98
	nop                                              ; $5961: $00
	nop                                              ; $5962: $00
	ld   [bc], a                                     ; $5963: $02
	bit  7, c                                        ; $5964: $cb $79
	ld   [bc], a                                     ; $5966: $02
	ld   a, a                                        ; $5967: $7f
	ld   e, c                                        ; $5968: $59
	ld   a, b                                        ; $5969: $78
	ld   d, d                                        ; $596a: $52
	ld   a, h                                        ; $596b: $7c
	ld   sp, hl                                      ; $596c: $f9
	nop                                              ; $596d: $00
	ld   bc, $ec07                                   ; $596e: $01 $07 $ec
	ld   [bc], a                                     ; $5971: $02
	ld   [bc], a                                     ; $5972: $02
	inc  bc                                          ; $5973: $03
	ld   bc, $2000                                   ; $5974: $01 $00 $20
	nop                                              ; $5977: $00
	rlca                                             ; $5978: $07
	scf                                              ; $5979: $37
	inc  bc                                          ; $597a: $03
	ld   [bc], a                                     ; $597b: $02
	inc  bc                                          ; $597c: $03
	ld   bc, $2001                                   ; $597d: $01 $01 $20
	nop                                              ; $5980: $00
	ld   b, $a6                                      ; $5981: $06 $a6
	inc  bc                                          ; $5983: $03
	rrca                                             ; $5984: $0f
	nop                                              ; $5985: $00
	ld   bc, rAUD1LEN                                   ; $5986: $01 $11 $ff
	ld   bc, $7192                                   ; $5989: $01 $92 $71
	ld   a, a                                        ; $598c: $7f
	sbc  b                                           ; $598d: $98
	sbc  [hl]                                        ; $598e: $9e
	ld   l, e                                        ; $598f: $6b
	ld   d, h                                        ; $5990: $54
	ld   a, b                                        ; $5991: $78
	and  c                                           ; $5992: $a1
	ld   [hl], l                                     ; $5993: $75
	ld   h, a                                        ; $5994: $67
	ld   a, e                                        ; $5995: $7b
	sbc  a                                           ; $5996: $9f
	dec  c                                           ; $5997: $0d
	nop                                              ; $5998: $00
	ld   a, [bc]                                     ; $5999: $0a
	inc  e                                           ; $599a: $1c
	dec  b                                           ; $599b: $05
	ld   b, $06                                      ; $599c: $06 $06
	dec  e                                           ; $599e: $1d
	ld   b, b                                        ; $599f: $40
	dec  d                                           ; $59a0: $15
	inc  bc                                          ; $59a1: $03
	dec  d                                           ; $59a2: $15
	ld   bc, $2902                                   ; $59a3: $01 $02 $29
	nop                                              ; $59a6: $00
	ld   bc, $7192                                   ; $59a7: $01 $92 $71
	ld   a, a                                        ; $59aa: $7f
	sbc  b                                           ; $59ab: $98
	ld   [hl], c                                     ; $59ac: $71
	ld   [hl], h                                     ; $59ad: $74
	ld   a, b                                        ; $59ae: $78
	and  c                                           ; $59af: $a1
	sub  d                                           ; $59b0: $92
	ld   a, e                                        ; $59b1: $7b
	and  c                                           ; $59b2: $a1
	sbc  a                                           ; $59b3: $9f
	dec  c                                           ; $59b4: $0d
	ld   a, b                                        ; $59b5: $78
	and  c                                           ; $59b6: $a1
	ld   e, c                                        ; $59b7: $59
	sbc  [hl]                                        ; $59b8: $9e
	ld   [bc], a                                     ; $59b9: $02
	and  c                                           ; $59ba: $a1
	inc  b                                           ; $59bb: $04
	sbc  [hl]                                        ; $59bc: $9e
	ld   [bc], a                                     ; $59bd: $02
	jr   z, jr_05a_5a12                              ; $59be: $28 $52

	ld   a, b                                        ; $59c0: $78
	db   $fc                                         ; $59c1: $fc
	sbc  a                                           ; $59c2: $9f
	dec  c                                           ; $59c3: $0d
	nop                                              ; $59c4: $00
	ld   a, [bc]                                     ; $59c5: $0a
	dec  c                                           ; $59c6: $0d
	nop                                              ; $59c7: $00
	nop                                              ; $59c8: $00
	rrca                                             ; $59c9: $0f
	nop                                              ; $59ca: $00
	ld   bc, $1e09                                   ; $59cb: $01 $09 $1e
	nop                                              ; $59ce: $00
	rrca                                             ; $59cf: $0f
	nop                                              ; $59d0: $00
	ld   bc, $0201                                   ; $59d1: $01 $01 $02
	res  0, [hl]                                     ; $59d4: $cb $86
	ld   a, l                                        ; $59d6: $7d
	ld   [bc], a                                     ; $59d7: $02
	ld   a, a                                        ; $59d8: $7f
	ld   [hl], c                                     ; $59d9: $71
	ld   l, l                                        ; $59da: $6d
	sbc  b                                           ; $59db: $98
	ld   h, l                                        ; $59dc: $65
	ld   a, b                                        ; $59dd: $78
	ld   d, d                                        ; $59de: $52
	ld   a, h                                        ; $59df: $7c
	dec  c                                           ; $59e0: $0d
	ld   [hl], l                                     ; $59e1: $75
	ld   h, a                                        ; $59e2: $67
	ld   e, c                                        ; $59e3: $59
	ld   sp, hl                                      ; $59e4: $f9
	dec  c                                           ; $59e5: $0d
	nop                                              ; $59e6: $00
	ld   a, [bc]                                     ; $59e7: $0a
	inc  e                                           ; $59e8: $1c
	dec  b                                           ; $59e9: $05
	nop                                              ; $59ea: $00
	nop                                              ; $59eb: $00
	ld   bc, $7f02                                   ; $59ec: $01 $02 $7f
	ld   e, l                                        ; $59ef: $5d
	ld   [hl], l                                     ; $59f0: $75
	sbc  a                                           ; $59f1: $9f
	dec  c                                           ; $59f2: $0d
	ld   [bc], a                                     ; $59f3: $02
	and  c                                           ; $59f4: $a1
	inc  b                                           ; $59f5: $04
	sbc  [hl]                                        ; $59f6: $9e
	ld   [hl], h                                     ; $59f7: $74
	and  c                                           ; $59f8: $a1
	ld   e, c                                        ; $59f9: $59
	and  c                                           ; $59fa: $a1
	ld   a, h                                        ; $59fb: $7c
	inc  bc                                          ; $59fc: $03
	sub  [hl]                                        ; $59fd: $96
	inc  b                                           ; $59fe: $04
	sbc  a                                           ; $59ff: $9f
	halt                                             ; $5a00: $76
	ld   e, c                                        ; $5a01: $59
	sbc  [hl]                                        ; $5a02: $9e
	dec  c                                           ; $5a03: $0d
	inc  b                                           ; $5a04: $04
	ld   e, [hl]                                     ; $5a05: $5e
	inc  b                                           ; $5a06: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a07: $cf
	ld   [hl], l                                     ; $5a08: $75
	inc  bc                                          ; $5a09: $03
	xor  [hl]                                        ; $5a0a: $ae
	ld   d, h                                        ; $5a0b: $54
	inc  b                                           ; $5a0c: $04
	sub  l                                           ; $5a0d: $95
	inc  b                                           ; $5a0e: $04
	ld   h, c                                        ; $5a0f: $61
	ld   h, e                                        ; $5a10: $63
	ld   e, d                                        ; $5a11: $5a

jr_05a_5a12:
	ld   h, l                                        ; $5a12: $65
	halt                                             ; $5a13: $76
	ld   e, c                                        ; $5a14: $59
	sbc  a                                           ; $5a15: $9f
	dec  c                                           ; $5a16: $0d
	nop                                              ; $5a17: $00
	ld   a, [bc]                                     ; $5a18: $0a
	ld   bc, $7889                                   ; $5a19: $01 $89 $78
	sbc  [hl]                                        ; $5a1c: $9e
	and  a                                           ; $5a1d: $a7
	jp   nz, Jump_05a_5e04                           ; $5a1e: $c2 $04 $5e

	inc  b                                           ; $5a21: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a22: $cf
	ld   a, h                                        ; $5a23: $7c
	dec  c                                           ; $5a24: $0d
	inc  b                                           ; $5a25: $04
	ld   [hl-], a                                    ; $5a26: $32
	inc  b                                           ; $5a27: $04
	dec  bc                                          ; $5a28: $0b
	sub  d                                           ; $5a29: $92
	ld   e, c                                        ; $5a2a: $59
	sub  a                                           ; $5a2b: $97
	sbc  a                                           ; $5a2c: $9f
	dec  c                                           ; $5a2d: $0d
	adc  h                                           ; $5a2e: $8c
	ld   l, l                                        ; $5a2f: $6d
	ld   a, b                                        ; $5a30: $78
	sbc  a                                           ; $5a31: $9f
	dec  c                                           ; $5a32: $0d
	nop                                              ; $5a33: $00
	ld   a, [bc]                                     ; $5a34: $0a
	dec  c                                           ; $5a35: $0d
	nop                                              ; $5a36: $00
	nop                                              ; $5a37: $00
	rrca                                             ; $5a38: $0f
	nop                                              ; $5a39: $00
	ld   bc, $1e09                                   ; $5a3a: $01 $09 $1e
	nop                                              ; $5a3d: $00
	inc  e                                           ; $5a3e: $1c
	dec  b                                           ; $5a3f: $05
	nop                                              ; $5a40: $00
	nop                                              ; $5a41: $00
	ld   bc, $7889                                   ; $5a42: $01 $89 $78
	sbc  [hl]                                        ; $5a45: $9e
	and  a                                           ; $5a46: $a7
	jp   nz, Jump_05a_5e04                           ; $5a47: $c2 $04 $5e

	inc  b                                           ; $5a4a: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a4b: $cf
	ld   a, h                                        ; $5a4c: $7c
	dec  c                                           ; $5a4d: $0d
	inc  b                                           ; $5a4e: $04
	ld   [hl-], a                                    ; $5a4f: $32
	inc  b                                           ; $5a50: $04
	dec  bc                                          ; $5a51: $0b
	sub  d                                           ; $5a52: $92
	ld   e, c                                        ; $5a53: $59
	sub  a                                           ; $5a54: $97
	sbc  a                                           ; $5a55: $9f
	dec  c                                           ; $5a56: $0d
	adc  h                                           ; $5a57: $8c
	ld   l, l                                        ; $5a58: $6d
	ld   a, b                                        ; $5a59: $78
	sbc  a                                           ; $5a5a: $9f
	dec  c                                           ; $5a5b: $0d
	nop                                              ; $5a5c: $00
	ld   a, [bc]                                     ; $5a5d: $0a
	dec  c                                           ; $5a5e: $0d
	nop                                              ; $5a5f: $00
	nop                                              ; $5a60: $00
	rrca                                             ; $5a61: $0f
	nop                                              ; $5a62: $00
	ld   bc, $1e09                                   ; $5a63: $01 $09 $1e
	nop                                              ; $5a66: $00
	rrca                                             ; $5a67: $0f
	nop                                              ; $5a68: $00
	ld   bc, $5001                                   ; $5a69: $01 $01 $50
	sub  d                                           ; $5a6c: $92
	adc  a                                           ; $5a6d: $8f
	ld   h, e                                        ; $5a6e: $63
	and  c                                           ; $5a6f: $a1
	ld   [hl], h                                     ; $5a70: $74
	sbc  [hl]                                        ; $5a71: $9e
	ld   [bc], a                                     ; $5a72: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a73: $cf
	dec  b                                           ; $5a74: $05
	ld   a, [de]                                     ; $5a75: $1a
	ld   h, e                                        ; $5a76: $63
	and  c                                           ; $5a77: $a1
	ld   e, c                                        ; $5a78: $59
	sub  a                                           ; $5a79: $97
	dec  c                                           ; $5a7a: $0d
	ld   [bc], a                                     ; $5a7b: $02
	sub  l                                           ; $5a7c: $95
	ld   [hl], h                                     ; $5a7d: $74
	sbc  [hl]                                        ; $5a7e: $9e
	ld   [hl], a                                     ; $5a7f: $77
	and  c                                           ; $5a80: $a1
	ld   a, b                                        ; $5a81: $78
	inc  b                                           ; $5a82: $04
	ld   a, b                                        ; $5a83: $78
	ld   [hl], l                                     ; $5a84: $75
	ld   h, a                                        ; $5a85: $67
	ld   e, c                                        ; $5a86: $59
	ld   sp, hl                                      ; $5a87: $f9
	dec  c                                           ; $5a88: $0d
	nop                                              ; $5a89: $00
	ld   a, [bc]                                     ; $5a8a: $0a
	inc  e                                           ; $5a8b: $1c
	dec  b                                           ; $5a8c: $05
	ld   bc, $0101                                   ; $5a8d: $01 $01 $01
	ld   d, b                                        ; $5a90: $50
	sub  d                                           ; $5a91: $92
	adc  a                                           ; $5a92: $8f
	ld   a, l                                        ; $5a93: $7d
	and  c                                           ; $5a94: $a1
	ld   a, l                                        ; $5a95: $7d
	sbc  [hl]                                        ; $5a96: $9e
	and  a                                           ; $5a97: $a7
	jp   nz, $067c                                   ; $5a98: $c2 $7c $06

	ld   a, $03                                      ; $5a9b: $3e $03
	add  d                                           ; $5a9d: $82
	sub  d                                           ; $5a9e: $92
	sbc  a                                           ; $5a9f: $9f
	dec  c                                           ; $5aa0: $0d
	inc  b                                           ; $5aa1: $04
	dec  bc                                          ; $5aa2: $0b
	ld   [bc], a                                     ; $5aa3: $02
	adc  a                                           ; $5aa4: $8f
	ld   [hl], l                                     ; $5aa5: $75
	ld   [bc], a                                     ; $5aa6: $02
	jr   nz, jr_05a_5aac                             ; $5aa7: $20 $03

	add  d                                           ; $5aa9: $82
	adc  d                                           ; $5aaa: $8a
	ld   [hl], c                                     ; $5aab: $71

jr_05a_5aac:
	ld   l, a                                        ; $5aac: $6f
	sub  d                                           ; $5aad: $92
	ld   [hl], c                                     ; $5aae: $71
	ld   l, l                                        ; $5aaf: $6d
	and  a                                           ; $5ab0: $a7
	jp   nz, $0da0                                   ; $5ab1: $c2 $a0 $0d

	inc  b                                           ; $5ab4: $04
	xor  d                                           ; $5ab5: $aa
	inc  b                                           ; $5ab6: $04
	adc  a                                           ; $5ab7: $8f
	ld   a, c                                        ; $5ab8: $79
	inc  b                                           ; $5ab9: $04
	db   $fd                                         ; $5aba: $fd
	sbc  d                                           ; $5abb: $9a
	ld   [hl], h                                     ; $5abc: $74
	ld   e, e                                        ; $5abd: $5b
	ld   [hl], h                                     ; $5abe: $74
	ld   e, l                                        ; $5abf: $5d
	sbc  d                                           ; $5ac0: $9a
	ld   l, l                                        ; $5ac1: $6d
	sbc  a                                           ; $5ac2: $9f
	dec  c                                           ; $5ac3: $0d
	nop                                              ; $5ac4: $00
	ld   a, [bc]                                     ; $5ac5: $0a
	ld   bc, $aa04                                   ; $5ac6: $01 $04 $aa
	inc  b                                           ; $5ac9: $04
	adc  a                                           ; $5aca: $8f
	ld   [hl], l                                     ; $5acb: $75
	inc  b                                           ; $5acc: $04
	xor  [hl]                                        ; $5acd: $ae
	ld   [bc], a                                     ; $5ace: $02
	call nc, Call_05a_6390                           ; $5acf: $d4 $90 $63
	ld   l, c                                        ; $5ad2: $69
	ld   [hl], h                                     ; $5ad3: $74
	ld   e, l                                        ; $5ad4: $5d
	sbc  d                                           ; $5ad5: $9a
	ld   l, l                                        ; $5ad6: $6d
	ld   h, l                                        ; $5ad7: $65
	sbc  [hl]                                        ; $5ad8: $9e
	dec  c                                           ; $5ad9: $0d
	and  a                                           ; $5ada: $a7
	jp   nz, $047c                                   ; $5adb: $c2 $7c $04

	ld   c, $02                                      ; $5ade: $0e $02
	sbc  d                                           ; $5ae0: $9a
	ld   e, e                                        ; $5ae1: $5b
	ld   a, b                                        ; $5ae2: $78
	inc  b                                           ; $5ae3: $04
	ld   e, [hl]                                     ; $5ae4: $5e
	inc  b                                           ; $5ae5: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ae6: $cf
	ld   l, [hl]                                     ; $5ae7: $6e
	ld   [hl], c                                     ; $5ae8: $71
	ld   [hl], h                                     ; $5ae9: $74
	dec  c                                           ; $5aea: $0d
	ld   h, e                                        ; $5aeb: $63
	ld   l, c                                        ; $5aec: $69
	ld   [hl], h                                     ; $5aed: $74
	ld   e, l                                        ; $5aee: $5d
	sbc  d                                           ; $5aef: $9a
	sbc  c                                           ; $5af0: $99
	sbc  a                                           ; $5af1: $9f
	dec  c                                           ; $5af2: $0d
	nop                                              ; $5af3: $00
	ld   a, [bc]                                     ; $5af4: $0a
	ld   bc, $9250                                   ; $5af5: $01 $50 $92
	adc  a                                           ; $5af8: $8f
	ld   a, l                                        ; $5af9: $7d
	and  c                                           ; $5afa: $a1
	ld   e, d                                        ; $5afb: $5a
	sbc  [hl]                                        ; $5afc: $9e
	ld   e, b                                        ; $5afd: $58
	sub  a                                           ; $5afe: $97
	and  c                                           ; $5aff: $a1
	ld   e, c                                        ; $5b00: $59
	ld   [hl], c                                     ; $5b01: $71
	ld   l, l                                        ; $5b02: $6d
	sub  a                                           ; $5b03: $97
	dec  c                                           ; $5b04: $0d
	ld   e, e                                        ; $5b05: $5b
	ld   [hl], c                                     ; $5b06: $71
	halt                                             ; $5b07: $76
	ld   [bc], a                                     ; $5b08: $02
	and  l                                           ; $5b09: $a5
	ld   a, h                                        ; $5b0a: $7c
	and  a                                           ; $5b0b: $a7
	jp   nz, $9e7d                                   ; $5b0c: $c2 $7d $9e

	dec  c                                           ; $5b0f: $0d
	ld   e, b                                        ; $5b10: $58
	sub  a                                           ; $5b11: $97
	and  c                                           ; $5b12: $a1
	ld   e, c                                        ; $5b13: $59
	ld   [hl], c                                     ; $5b14: $71
	ld   l, l                                        ; $5b15: $6d
	halt                                             ; $5b16: $76
	dec  b                                           ; $5b17: $05
	pop  de                                          ; $5b18: $d1
	ld   d, h                                        ; $5b19: $54
	ld   [hl], l                                     ; $5b1a: $75
	sbc  a                                           ; $5b1b: $9f
	dec  c                                           ; $5b1c: $0d
	nop                                              ; $5b1d: $00
	ld   a, [bc]                                     ; $5b1e: $0a
	ld   bc, $7889                                   ; $5b1f: $01 $89 $78
	sbc  [hl]                                        ; $5b22: $9e
	and  a                                           ; $5b23: $a7
	jp   nz, Jump_05a_5e04                           ; $5b24: $c2 $04 $5e

	inc  b                                           ; $5b27: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b28: $cf
	ld   a, h                                        ; $5b29: $7c
	dec  c                                           ; $5b2a: $0d
	inc  b                                           ; $5b2b: $04
	ld   [hl-], a                                    ; $5b2c: $32
	inc  b                                           ; $5b2d: $04
	dec  bc                                          ; $5b2e: $0b
	sub  d                                           ; $5b2f: $92
	ld   e, c                                        ; $5b30: $59
	sub  a                                           ; $5b31: $97
	sbc  a                                           ; $5b32: $9f
	dec  c                                           ; $5b33: $0d
	adc  h                                           ; $5b34: $8c
	ld   l, l                                        ; $5b35: $6d
	ld   a, b                                        ; $5b36: $78
	sbc  a                                           ; $5b37: $9f
	dec  c                                           ; $5b38: $0d
	nop                                              ; $5b39: $00
	ld   a, [bc]                                     ; $5b3a: $0a
	dec  c                                           ; $5b3b: $0d
	nop                                              ; $5b3c: $00
	nop                                              ; $5b3d: $00
	rrca                                             ; $5b3e: $0f
	nop                                              ; $5b3f: $00
	ld   bc, $1e09                                   ; $5b40: $01 $09 $1e
	nop                                              ; $5b43: $00
	nop                                              ; $5b44: $00
	inc  b                                           ; $5b45: $04
	add  b                                           ; $5b46: $80
	sub  e                                           ; $5b47: $93
	ld   bc, $2000                                   ; $5b48: $01 $00 $20
	nop                                              ; $5b4b: $00
	rrca                                             ; $5b4c: $0f
	nop                                              ; $5b4d: $00
	ld   bc, $020d                                   ; $5b4e: $01 $0d $02
	nop                                              ; $5b51: $00
	ld   [bc], a                                     ; $5b52: $02
	ld   bc, $8d67                                   ; $5b53: $01 $67 $8d
	sbc  d                                           ; $5b56: $9a
	ld   h, e                                        ; $5b57: $63
	and  c                                           ; $5b58: $a1
	sbc  a                                           ; $5b59: $9f
	dec  c                                           ; $5b5a: $0d
	ld   l, a                                        ; $5b5b: $6f
	sub  l                                           ; $5b5c: $95
	ld   [hl], c                                     ; $5b5d: $71
	halt                                             ; $5b5e: $76
	ld   d, d                                        ; $5b5f: $52
	ld   d, d                                        ; $5b60: $52
	ld   [hl], l                                     ; $5b61: $75
	ld   h, a                                        ; $5b62: $67
	ld   e, c                                        ; $5b63: $59
	ld   sp, hl                                      ; $5b64: $f9
	dec  c                                           ; $5b65: $0d
	nop                                              ; $5b66: $00
	ld   a, [bc]                                     ; $5b67: $0a
	rrca                                             ; $5b68: $0f
	ld   [bc], a                                     ; $5b69: $02
	nop                                              ; $5b6a: $00
	ld   bc, $4904                                   ; $5b6b: $01 $04 $49
	ld   e, c                                        ; $5b6e: $59
	ld   h, l                                        ; $5b6f: $65
	sub  a                                           ; $5b70: $97
	ld   sp, hl                                      ; $5b71: $f9
	dec  c                                           ; $5b72: $0d
	nop                                              ; $5b73: $00
	ld   a, [bc]                                     ; $5b74: $0a
	add  hl, de                                      ; $5b75: $19
	dec  b                                           ; $5b76: $05
	inc  bc                                          ; $5b77: $03
	ld   e, a                                        ; $5b78: $5f
	ld   d, d                                        ; $5b79: $52
	ld   h, c                                        ; $5b7a: $61
	and  b                                           ; $5b7b: $a0
	ld   [hl], d                                     ; $5b7c: $72
	ld   e, a                                        ; $5b7d: $5f
	ld   [hl], h                                     ; $5b7e: $74
	sub  b                                           ; $5b7f: $90
	sub  a                                           ; $5b80: $97
	ld   d, h                                        ; $5b81: $54
	nop                                              ; $5b82: $00
	nop                                              ; $5b83: $00
	inc  bc                                          ; $5b84: $03
	and  a                                           ; $5b85: $a7
	inc  b                                           ; $5b86: $04
	xor  d                                           ; $5b87: $aa
	ld   a, h                                        ; $5b88: $7c
	ld   h, a                                        ; $5b89: $67
	ld   h, d                                        ; $5b8a: $62
	ld   h, l                                        ; $5b8b: $65
	inc  b                                           ; $5b8c: $04
	ld   a, b                                        ; $5b8d: $78
	ld   a, c                                        ; $5b8e: $79
	ld   [hl], d                                     ; $5b8f: $72
	ld   d, d                                        ; $5b90: $52
	ld   [hl], h                                     ; $5b91: $74
	ld   [bc], a                                     ; $5b92: $02
	jp   nz, $005d                                   ; $5b93: $c2 $5d $00

	ld   bc, $8d67                                   ; $5b96: $01 $67 $8d
	sbc  d                                           ; $5b99: $9a
	ld   a, h                                        ; $5b9a: $7c
	ld   h, c                                        ; $5b9b: $61
	halt                                             ; $5b9c: $76
	and  b                                           ; $5b9d: $a0
	ld   [bc], a                                     ; $5b9e: $02
	jp   nz, $005d                                   ; $5b9f: $c2 $5d $00

	ld   [bc], a                                     ; $5ba2: $02
	rlca                                             ; $5ba3: $07
	and  h                                           ; $5ba4: $a4
	ld   bc, $0302                                   ; $5ba5: $01 $02 $03
	ld   bc, $2000                                   ; $5ba8: $01 $00 $20
	nop                                              ; $5bab: $00
	rlca                                             ; $5bac: $07
	sbc  l                                           ; $5bad: $9d
	ld   [bc], a                                     ; $5bae: $02
	ld   [bc], a                                     ; $5baf: $02
	inc  bc                                          ; $5bb0: $03
	ld   bc, $2001                                   ; $5bb1: $01 $01 $20
	nop                                              ; $5bb4: $00
	rlca                                             ; $5bb5: $07
	db   $dd                                         ; $5bb6: $dd
	inc  bc                                          ; $5bb7: $03
	ld   [bc], a                                     ; $5bb8: $02
	inc  bc                                          ; $5bb9: $03
	ld   bc, $2002                                   ; $5bba: $01 $02 $20
	nop                                              ; $5bbd: $00
	ld   b, $75                                      ; $5bbe: $06 $75
	nop                                              ; $5bc0: $00
	rrca                                             ; $5bc1: $0f
	nop                                              ; $5bc2: $00
	ld   bc, $ff01                                   ; $5bc3: $01 $01 $ff
	rst  $38                                         ; $5bc6: $ff
	rst  $38                                         ; $5bc7: $ff
	rst  $38                                         ; $5bc8: $ff
	dec  c                                           ; $5bc9: $0d
	nop                                              ; $5bca: $00
	ld   a, [bc]                                     ; $5bcb: $0a
	rlca                                             ; $5bcc: $07
	and  c                                           ; $5bcd: $a1
	nop                                              ; $5bce: $00
	inc  bc                                          ; $5bcf: $03
	ld   [de], a                                     ; $5bd0: $12
	ld   bc, $25aa                                   ; $5bd1: $01 $aa $25
	nop                                              ; $5bd4: $00
	rlca                                             ; $5bd5: $07
	ld   a, [$0300]                                  ; $5bd6: $fa $00 $03
	ld   [de], a                                     ; $5bd9: $12
	ld   bc, $2597                                   ; $5bda: $01 $97 $25
	inc  bc                                          ; $5bdd: $03
	ld   [de], a                                     ; $5bde: $12
	ld   bc, $23a9                                   ; $5bdf: $01 $a9 $23
	inc  e                                           ; $5be2: $1c
	nop                                              ; $5be3: $00
	rlca                                             ; $5be4: $07
	ld   d, c                                        ; $5be5: $51
	ld   bc, $1203                                   ; $5be6: $01 $03 $12
	ld   bc, $2396                                   ; $5be9: $01 $96 $23
	nop                                              ; $5bec: $00
	inc  e                                           ; $5bed: $1c
	ld   [bc], a                                     ; $5bee: $02
	inc  b                                           ; $5bef: $04
	inc  b                                           ; $5bf0: $04
	ld   bc, $9e78                                   ; $5bf1: $01 $78 $9e
	inc  b                                           ; $5bf4: $04
	ld   c, c                                        ; $5bf5: $49
	ld   [hl], l                                     ; $5bf6: $75
	ld   h, a                                        ; $5bf7: $67
	ld   a, h                                        ; $5bf8: $7c
	dec  c                                           ; $5bf9: $0d
	ld   l, e                                        ; $5bfa: $6b
	and  c                                           ; $5bfb: $a1
	ld   a, b                                        ; $5bfc: $78
	ld   [bc], a                                     ; $5bfd: $02
	sub  l                                           ; $5bfe: $95
	ld   [hl], d                                     ; $5bff: $72
	adc  a                                           ; $5c00: $8f
	ld   [hl], h                                     ; $5c01: $74
	rst  $38                                         ; $5c02: $ff
	rst  $38                                         ; $5c03: $ff
	dec  c                                           ; $5c04: $0d
	nop                                              ; $5c05: $00
	ld   a, [bc]                                     ; $5c06: $0a
	dec  e                                           ; $5c07: $1d
	ld   b, b                                        ; $5c08: $40
	ld   [de], a                                     ; $5c09: $12
	inc  bc                                          ; $5c0a: $03
	ld   [de], a                                     ; $5c0b: $12
	ld   bc, $2802                                   ; $5c0c: $01 $02 $28
	nop                                              ; $5c0f: $00
	ld   bc, $9e74                                   ; $5c10: $01 $74 $9e
	inc  bc                                          ; $5c13: $03
	ld   h, [hl]                                     ; $5c14: $66
	sbc  d                                           ; $5c15: $9a
	sbc  c                                           ; $5c16: $99
	ld   h, [hl]                                     ; $5c17: $66
	sub  c                                           ; $5c18: $91
	ld   d, b                                        ; $5c19: $50
	sbc  b                                           ; $5c1a: $98
	adc  h                                           ; $5c1b: $8c
	ld   l, c                                        ; $5c1c: $69
	and  c                                           ; $5c1d: $a1
	ld   e, c                                        ; $5c1e: $59
	sbc  a                                           ; $5c1f: $9f
	dec  c                                           ; $5c20: $0d
	halt                                             ; $5c21: $76
	ld   e, l                                        ; $5c22: $5d
	ld   a, c                                        ; $5c23: $79
	inc  b                                           ; $5c24: $04
	di                                               ; $5c25: $f3
	ld   e, d                                        ; $5c26: $5a
	ld   a, b                                        ; $5c27: $78
	ld   d, d                                        ; $5c28: $52
	ld   a, h                                        ; $5c29: $7c
	ld   [hl], l                                     ; $5c2a: $75
	ld   h, l                                        ; $5c2b: $65
	ld   l, l                                        ; $5c2c: $6d
	sub  a                                           ; $5c2d: $97
	sbc  [hl]                                        ; $5c2e: $9e
	dec  c                                           ; $5c2f: $0d
	inc  bc                                          ; $5c30: $03
	add  e                                           ; $5c31: $83
	dec  b                                           ; $5c32: $05
	dec  c                                           ; $5c33: $0d
	ld   h, l                                        ; $5c34: $65
	adc  h                                           ; $5c35: $8c
	ld   h, a                                        ; $5c36: $67
	sbc  l                                           ; $5c37: $9d
	rst  $38                                         ; $5c38: $ff
	rst  $38                                         ; $5c39: $ff
	dec  c                                           ; $5c3a: $0d
	nop                                              ; $5c3b: $00
	ld   a, [bc]                                     ; $5c3c: $0a
	dec  c                                           ; $5c3d: $0d
	nop                                              ; $5c3e: $00
	nop                                              ; $5c3f: $00
	rrca                                             ; $5c40: $0f
	nop                                              ; $5c41: $00
	ld   bc, $1e09                                   ; $5c42: $01 $09 $1e
	nop                                              ; $5c45: $00
	inc  e                                           ; $5c46: $1c
	ld   [bc], a                                     ; $5c47: $02
	nop                                              ; $5c48: $00
	nop                                              ; $5c49: $00
	ld   bc, $6d9d                                   ; $5c4a: $01 $9d $6d
	ld   e, l                                        ; $5c4d: $5d
	ld   h, l                                        ; $5c4e: $65
	ld   a, h                                        ; $5c4f: $7c
	ld   [bc], a                                     ; $5c50: $02
	ld   [hl], d                                     ; $5c51: $72
	ld   a, c                                        ; $5c52: $79
	ld   a, b                                        ; $5c53: $78
	ld   a, c                                        ; $5c54: $79
	ld   e, c                                        ; $5c55: $59
	dec  c                                           ; $5c56: $0d
	ld   [hl], d                                     ; $5c57: $72
	ld   d, d                                        ; $5c58: $52
	ld   [hl], h                                     ; $5c59: $74
	adc  h                                           ; $5c5a: $8c
	ld   h, a                                        ; $5c5b: $67
	ld   a, h                                        ; $5c5c: $7c
	ld   sp, hl                                      ; $5c5d: $f9
	dec  c                                           ; $5c5e: $0d
	nop                                              ; $5c5f: $00
	ld   a, [bc]                                     ; $5c60: $0a
	rrca                                             ; $5c61: $0f
	nop                                              ; $5c62: $00
	ld   bc, $5201                                   ; $5c63: $01 $01 $52
	sbc  [hl]                                        ; $5c66: $9e
	ld   d, d                                        ; $5c67: $52
	ld   d, [hl]                                     ; $5c68: $56
	rst  $38                                         ; $5c69: $ff
	rst  $38                                         ; $5c6a: $ff
	dec  c                                           ; $5c6b: $0d
	nop                                              ; $5c6c: $00
	ld   a, [bc]                                     ; $5c6d: $0a
	rrca                                             ; $5c6e: $0f
	ld   [bc], a                                     ; $5c6f: $02
	nop                                              ; $5c70: $00
	ld   bc, $546b                                   ; $5c71: $01 $6b $54
	ld   [hl], l                                     ; $5c74: $75
	ld   h, a                                        ; $5c75: $67
	ld   e, c                                        ; $5c76: $59
	sbc  a                                           ; $5c77: $9f
	dec  c                                           ; $5c78: $0d
	ld   [hl], l                                     ; $5c79: $75
	ld   a, l                                        ; $5c7a: $7d
	sbc  [hl]                                        ; $5c7b: $9e
	sbc  l                                           ; $5c7c: $9d
	ld   l, l                                        ; $5c7d: $6d
	ld   e, l                                        ; $5c7e: $5d
	ld   h, l                                        ; $5c7f: $65
	inc  b                                           ; $5c80: $04
	di                                               ; $5c81: $f3
	ld   e, d                                        ; $5c82: $5a
	ld   d, b                                        ; $5c83: $50
	sbc  b                                           ; $5c84: $98
	adc  h                                           ; $5c85: $8c
	ld   h, a                                        ; $5c86: $67
	dec  c                                           ; $5c87: $0d
	ld   e, c                                        ; $5c88: $59
	sub  a                                           ; $5c89: $97
	rst  $38                                         ; $5c8a: $ff
	inc  bc                                          ; $5c8b: $03
	add  e                                           ; $5c8c: $83
	dec  b                                           ; $5c8d: $05
	dec  c                                           ; $5c8e: $0d
	rst  $38                                         ; $5c8f: $ff
	rst  $38                                         ; $5c90: $ff
	dec  c                                           ; $5c91: $0d
	nop                                              ; $5c92: $00
	ld   a, [bc]                                     ; $5c93: $0a
	dec  c                                           ; $5c94: $0d
	nop                                              ; $5c95: $00
	nop                                              ; $5c96: $00
	rrca                                             ; $5c97: $0f
	nop                                              ; $5c98: $00
	ld   bc, $1e09                                   ; $5c99: $01 $09 $1e
	nop                                              ; $5c9c: $00
	inc  e                                           ; $5c9d: $1c
	ld   [bc], a                                     ; $5c9e: $02
	ld   [bc], a                                     ; $5c9f: $02
	ld   [bc], a                                     ; $5ca0: $02
	ld   bc, $4904                                   ; $5ca1: $01 $04 $49
	ld   e, c                                        ; $5ca4: $59
	ld   h, d                                        ; $5ca5: $62
	inc  b                                           ; $5ca6: $04
	di                                               ; $5ca7: $f3
	ld   e, d                                        ; $5ca8: $5a
	ld   d, b                                        ; $5ca9: $50
	sbc  c                                           ; $5caa: $99
	and  c                                           ; $5cab: $a1
	ld   h, [hl]                                     ; $5cac: $66
	sub  c                                           ; $5cad: $91
	dec  c                                           ; $5cae: $0d
	ld   h, d                                        ; $5caf: $62
	ld   h, h                                        ; $5cb0: $64
	ld   d, d                                        ; $5cb1: $52
	adc  h                                           ; $5cb2: $8c
	ld   l, c                                        ; $5cb3: $69
	and  c                                           ; $5cb4: $a1
	ld   h, c                                        ; $5cb5: $61
	halt                                             ; $5cb6: $76
	ld   sp, hl                                      ; $5cb7: $f9
	dec  c                                           ; $5cb8: $0d
	nop                                              ; $5cb9: $00
	ld   a, [bc]                                     ; $5cba: $0a
	dec  e                                           ; $5cbb: $1d
	ld   b, b                                        ; $5cbc: $40
	ld   [de], a                                     ; $5cbd: $12
	inc  bc                                          ; $5cbe: $03
	ld   [de], a                                     ; $5cbf: $12
	ld   bc, $2901                                   ; $5cc0: $01 $01 $29
	nop                                              ; $5cc3: $00
	ld   bc, $5278                                   ; $5cc4: $01 $78 $52
	ld   a, b                                        ; $5cc7: $78
	sub  a                                           ; $5cc8: $97
	sbc  [hl]                                        ; $5cc9: $9e
	sbc  l                                           ; $5cca: $9d
	ld   l, l                                        ; $5ccb: $6d
	ld   e, l                                        ; $5ccc: $5d
	ld   h, l                                        ; $5ccd: $65
	ld   [bc], a                                     ; $5cce: $02
	ld   h, l                                        ; $5ccf: $65
	ld   d, [hl]                                     ; $5cd0: $56
	ld   [bc], a                                     ; $5cd1: $02
	jp   $0da0                                       ; $5cd2: $c3 $a0 $0d


	ld   h, l                                        ; $5cd5: $65
	ld   [hl], h                                     ; $5cd6: $74
	ld   e, b                                        ; $5cd7: $58
	sbc  b                                           ; $5cd8: $98
	adc  h                                           ; $5cd9: $8c
	ld   h, a                                        ; $5cda: $67
	ld   a, h                                        ; $5cdb: $7c
	ld   [hl], l                                     ; $5cdc: $75
	sbc  [hl]                                        ; $5cdd: $9e
	dec  c                                           ; $5cde: $0d
	ld   [bc], a                                     ; $5cdf: $02
	jr   nz, jr_05a_5ce5                             ; $5ce0: $20 $03

	add  d                                           ; $5ce2: $82
	ld   a, c                                        ; $5ce3: $79
	ld   h, l                                        ; $5ce4: $65

jr_05a_5ce5:
	ld   [hl], h                                     ; $5ce5: $74
	ld   l, a                                        ; $5ce6: $6f
	sub  l                                           ; $5ce7: $95
	ld   d, h                                        ; $5ce8: $54
	ld   l, [hl]                                     ; $5ce9: $6e
	ld   d, d                                        ; $5cea: $52
	sbc  a                                           ; $5ceb: $9f
	dec  c                                           ; $5cec: $0d
	nop                                              ; $5ced: $00
	ld   a, [bc]                                     ; $5cee: $0a
	nop                                              ; $5cef: $00
	rrca                                             ; $5cf0: $0f
	nop                                              ; $5cf1: $00
	ld   bc, $0401                                   ; $5cf2: $01 $01 $04
	ld   l, l                                        ; $5cf5: $6d
	ld   a, c                                        ; $5cf6: $79
	ld   h, a                                        ; $5cf7: $67
	adc  l                                           ; $5cf8: $8d
	sbc  d                                           ; $5cf9: $9a
	ld   h, e                                        ; $5cfa: $63
	and  c                                           ; $5cfb: $a1
	ld   a, h                                        ; $5cfc: $7c
	ld   e, a                                        ; $5cfd: $5f
	ld   d, d                                        ; $5cfe: $52
	ld   h, c                                        ; $5cff: $61
	and  b                                           ; $5d00: $a0
	dec  c                                           ; $5d01: $0d
	ld   [hl], d                                     ; $5d02: $72
	ld   e, a                                        ; $5d03: $5f
	ld   [hl], h                                     ; $5d04: $74
	sub  b                                           ; $5d05: $90
	sub  a                                           ; $5d06: $97
	ld   d, [hl]                                     ; $5d07: $56
	adc  h                                           ; $5d08: $8c
	ld   l, c                                        ; $5d09: $69
	and  c                                           ; $5d0a: $a1
	ld   e, c                                        ; $5d0b: $59
	ld   sp, hl                                      ; $5d0c: $f9
	dec  c                                           ; $5d0d: $0d
	nop                                              ; $5d0e: $00
	ld   a, [bc]                                     ; $5d0f: $0a
	rrca                                             ; $5d10: $0f
	ld   [bc], a                                     ; $5d11: $02
	nop                                              ; $5d12: $00
	ld   bc, $9750                                   ; $5d13: $01 $50 $97
	sbc  [hl]                                        ; $5d16: $9e
	ld   l, b                                        ; $5d17: $68
	ld   d, d                                        ; $5d18: $52
	add  h                                           ; $5d19: $84
	and  c                                           ; $5d1a: $a1
	halt                                             ; $5d1b: $76
	dec  c                                           ; $5d1c: $0d
	sub  d                                           ; $5d1d: $92
	sbc  c                                           ; $5d1e: $99
	ld   [bc], a                                     ; $5d1f: $02
	and  c                                           ; $5d20: $a1
	ld   [hl], l                                     ; $5d21: $75
	ld   h, a                                        ; $5d22: $67
	sbc  l                                           ; $5d23: $9d
	ld   a, e                                        ; $5d24: $7b
	sbc  a                                           ; $5d25: $9f
	dec  c                                           ; $5d26: $0d
	ld   d, d                                        ; $5d27: $52
	ld   d, d                                        ; $5d28: $52
	ld   [hl], l                                     ; $5d29: $75
	ld   h, a                                        ; $5d2a: $67
	sbc  l                                           ; $5d2b: $9d
	sub  [hl]                                        ; $5d2c: $96
	sbc  a                                           ; $5d2d: $9f
	dec  c                                           ; $5d2e: $0d
	nop                                              ; $5d2f: $00
	ld   a, [bc]                                     ; $5d30: $0a
	dec  c                                           ; $5d31: $0d
	nop                                              ; $5d32: $00
	nop                                              ; $5d33: $00
	rrca                                             ; $5d34: $0f
	nop                                              ; $5d35: $00
	ld   bc, $021a                                   ; $5d36: $01 $1a $02
	rlca                                             ; $5d39: $07
	ld   [$0202], sp                                 ; $5d3a: $08 $02 $02
	inc  b                                           ; $5d3d: $04
	ld   bc, $2002                                   ; $5d3e: $01 $02 $20
	nop                                              ; $5d41: $00
	rlca                                             ; $5d42: $07
	add  hl, sp                                      ; $5d43: $39
	ld   [bc], a                                     ; $5d44: $02
	ld   [bc], a                                     ; $5d45: $02
	inc  b                                           ; $5d46: $04
	ld   bc, $2001                                   ; $5d47: $01 $01 $20
	nop                                              ; $5d4a: $00
	rlca                                             ; $5d4b: $07
	ld   [hl], e                                     ; $5d4c: $73
	ld   [bc], a                                     ; $5d4d: $02
	ld   [bc], a                                     ; $5d4e: $02
	inc  b                                           ; $5d4f: $04
	ld   bc, $2000                                   ; $5d50: $01 $00 $20
	nop                                              ; $5d53: $00
	inc  e                                           ; $5d54: $1c
	ld   [bc], a                                     ; $5d55: $02
	ld   b, $06                                      ; $5d56: $06 $06
	ld   bc, $9e9d                                   ; $5d58: $01 $9d $9e
	sbc  l                                           ; $5d5b: $9d
	ld   h, h                                        ; $5d5c: $64
	halt                                             ; $5d5d: $76
	inc  b                                           ; $5d5e: $04
	ld   a, l                                        ; $5d5f: $7d
	ld   e, a                                        ; $5d60: $5f
	ld   [hl], h                                     ; $5d61: $74
	ld   h, e                                        ; $5d62: $63
	ld   h, l                                        ; $5d63: $65
	ld   d, b                                        ; $5d64: $50
	ld   h, b                                        ; $5d65: $60
	ld   l, l                                        ; $5d66: $6d
	dec  c                                           ; $5d67: $0d
	ld   a, h                                        ; $5d68: $7c
	ld   [hl], l                                     ; $5d69: $75
	ld   h, a                                        ; $5d6a: $67
	sbc  l                                           ; $5d6b: $9d
	sub  [hl]                                        ; $5d6c: $96
	rst  $38                                         ; $5d6d: $ff
	rst  $38                                         ; $5d6e: $ff
	dec  c                                           ; $5d6f: $0d
	ld   e, b                                        ; $5d70: $58
	ei                                               ; $5d71: $fb
	adc  c                                           ; $5d72: $89
	adc  c                                           ; $5d73: $89
	adc  c                                           ; $5d74: $89
	adc  c                                           ; $5d75: $89
	adc  c                                           ; $5d76: $89
	rst  $38                                         ; $5d77: $ff
	rst  $38                                         ; $5d78: $ff
	dec  c                                           ; $5d79: $0d
	nop                                              ; $5d7a: $00
	ld   a, [bc]                                     ; $5d7b: $0a
	dec  c                                           ; $5d7c: $0d
	nop                                              ; $5d7d: $00
	nop                                              ; $5d7e: $00
	rrca                                             ; $5d7f: $0f
	nop                                              ; $5d80: $00
	ld   bc, $1e09                                   ; $5d81: $01 $09 $1e
	nop                                              ; $5d84: $00
	inc  e                                           ; $5d85: $1c
	ld   [bc], a                                     ; $5d86: $02
	ld   bc, $0101                                   ; $5d87: $01 $01 $01
	ld   a, b                                        ; $5d8a: $78
	ld   e, c                                        ; $5d8b: $59
	ld   a, b                                        ; $5d8c: $78
	ld   e, c                                        ; $5d8d: $59
	sbc  [hl]                                        ; $5d8e: $9e
	ld   e, d                                        ; $5d8f: $5a
	and  c                                           ; $5d90: $a1
	ld   a, [hl]                                     ; $5d91: $7e
	sbc  b                                           ; $5d92: $98
	adc  h                                           ; $5d93: $8c
	ld   h, l                                        ; $5d94: $65
	ld   l, l                                        ; $5d95: $6d
	ld   e, a                                        ; $5d96: $5f
	ld   [hl], a                                     ; $5d97: $77
	dec  c                                           ; $5d98: $0d
	sub  d                                           ; $5d99: $92
	ld   a, l                                        ; $5d9a: $7d
	sbc  b                                           ; $5d9b: $98
	sbc  l                                           ; $5d9c: $9d
	ld   l, l                                        ; $5d9d: $6d
	ld   e, l                                        ; $5d9e: $5d
	ld   h, l                                        ; $5d9f: $65
	ld   a, h                                        ; $5da0: $7c
	ld   [bc], a                                     ; $5da1: $02
	ld   a, [de]                                     ; $5da2: $1a
	inc  bc                                          ; $5da3: $03
	ld   l, e                                        ; $5da4: $6b
	ld   [hl], l                                     ; $5da5: $75
	ld   a, l                                        ; $5da6: $7d
	dec  c                                           ; $5da7: $0d
	ld   d, b                                        ; $5da8: $50
	sbc  b                                           ; $5da9: $98
	adc  h                                           ; $5daa: $8c
	ld   l, c                                        ; $5dab: $69
	and  c                                           ; $5dac: $a1
	ld   [hl], l                                     ; $5dad: $75
	ld   h, l                                        ; $5dae: $65
	ld   l, l                                        ; $5daf: $6d
	sbc  l                                           ; $5db0: $9d
	ld   a, e                                        ; $5db1: $7b
	sbc  a                                           ; $5db2: $9f
	dec  c                                           ; $5db3: $0d
	nop                                              ; $5db4: $00
	ld   a, [bc]                                     ; $5db5: $0a
	dec  c                                           ; $5db6: $0d
	nop                                              ; $5db7: $00
	nop                                              ; $5db8: $00
	rrca                                             ; $5db9: $0f
	nop                                              ; $5dba: $00
	ld   bc, $1e09                                   ; $5dbb: $01 $09 $1e
	nop                                              ; $5dbe: $00
	inc  e                                           ; $5dbf: $1c
	ld   [bc], a                                     ; $5dc0: $02
	jr   nc, jr_05a_5ddc                             ; $5dc1: $30 $19

	ld   bc, $998c                                   ; $5dc3: $01 $8c $99
	ld   [hl], l                                     ; $5dc6: $75
	ld   [bc], a                                     ; $5dc7: $02
	ld   a, [de]                                     ; $5dc8: $1a
	inc  bc                                          ; $5dc9: $03
	ld   l, e                                        ; $5dca: $6b
	ld   a, c                                        ; $5dcb: $79
	ld   a, b                                        ; $5dcc: $78
	sbc  b                                           ; $5dcd: $98
	adc  h                                           ; $5dce: $8c
	ld   l, c                                        ; $5dcf: $69
	and  c                                           ; $5dd0: $a1
	sbc  l                                           ; $5dd1: $9d
	ld   a, e                                        ; $5dd2: $7b
	sbc  a                                           ; $5dd3: $9f
	dec  c                                           ; $5dd4: $0d
	ld   e, b                                        ; $5dd5: $58
	ei                                               ; $5dd6: $fb
	adc  c                                           ; $5dd7: $89
	adc  c                                           ; $5dd8: $89
	adc  c                                           ; $5dd9: $89
	adc  c                                           ; $5dda: $89
	adc  c                                           ; $5ddb: $89

jr_05a_5ddc:
	sbc  a                                           ; $5ddc: $9f
	dec  c                                           ; $5ddd: $0d
	nop                                              ; $5dde: $00
	ld   a, [bc]                                     ; $5ddf: $0a
	dec  c                                           ; $5de0: $0d
	nop                                              ; $5de1: $00
	nop                                              ; $5de2: $00
	rrca                                             ; $5de3: $0f
	nop                                              ; $5de4: $00
	ld   bc, $1e09                                   ; $5de5: $01 $09 $1e
	nop                                              ; $5de8: $00
	rrca                                             ; $5de9: $0f
	nop                                              ; $5dea: $00
	ld   bc, $0301                                   ; $5deb: $01 $01 $03
	and  a                                           ; $5dee: $a7
	adc  l                                           ; $5def: $8d
	ld   a, h                                        ; $5df0: $7c
	inc  b                                           ; $5df1: $04
	xor  d                                           ; $5df2: $aa
	halt                                             ; $5df3: $76
	ld   e, c                                        ; $5df4: $59
	dec  c                                           ; $5df5: $0d
	inc  b                                           ; $5df6: $04
	ld   c, c                                        ; $5df7: $49
	and  b                                           ; $5df8: $a0
	ld   h, l                                        ; $5df9: $65
	ld   [hl], h                                     ; $5dfa: $74
	sbc  c                                           ; $5dfb: $99
	and  c                                           ; $5dfc: $a1
	ld   [hl], l                                     ; $5dfd: $75
	ld   h, a                                        ; $5dfe: $67
	ld   e, c                                        ; $5dff: $59
	ld   sp, hl                                      ; $5e00: $f9
	dec  c                                           ; $5e01: $0d
	nop                                              ; $5e02: $00
	ld   a, [bc]                                     ; $5e03: $0a

Jump_05a_5e04:
	rrca                                             ; $5e04: $0f
	ld   [bc], a                                     ; $5e05: $02
	nop                                              ; $5e06: $00
	ld   bc, $546b                                   ; $5e07: $01 $6b $54
	ld   [hl], l                                     ; $5e0a: $75
	ld   h, a                                        ; $5e0b: $67
	sbc  l                                           ; $5e0c: $9d
	ld   a, e                                        ; $5e0d: $7b
	rst  $38                                         ; $5e0e: $ff
	rst  $38                                         ; $5e0f: $ff
	dec  c                                           ; $5e10: $0d
	ld   e, b                                        ; $5e11: $58
	inc  bc                                          ; $5e12: $03
	jp   Jump_05a_6d65                               ; $5e13: $c3 $65 $6d


	sbc  b                                           ; $5e16: $98
	sbc  [hl]                                        ; $5e17: $9e
	ld   e, b                                        ; $5e18: $58
	ld   [bc], a                                     ; $5e19: $02
	sbc  b                                           ; $5e1a: $98
	and  b                                           ; $5e1b: $a0
	ld   [bc], a                                     ; $5e1c: $02
	or   a                                           ; $5e1d: $b7
	ld   e, a                                        ; $5e1e: $5f
	ld   l, l                                        ; $5e1f: $6d
	sbc  b                                           ; $5e20: $98
	dec  c                                           ; $5e21: $0d
	ld   h, l                                        ; $5e22: $65
	ld   [hl], h                                     ; $5e23: $74
	ld   d, d                                        ; $5e24: $52
	adc  h                                           ; $5e25: $8c
	ld   h, a                                        ; $5e26: $67
	sbc  l                                           ; $5e27: $9d
	sbc  a                                           ; $5e28: $9f
	dec  c                                           ; $5e29: $0d
	nop                                              ; $5e2a: $00
	ld   a, [bc]                                     ; $5e2b: $0a
	add  hl, de                                      ; $5e2c: $19
	dec  b                                           ; $5e2d: $05
	ld   [bc], a                                     ; $5e2e: $02
	sub  h                                           ; $5e2f: $94
	ld   d, h                                        ; $5e30: $54
	ld   e, d                                        ; $5e31: $5a
	ld   [hl], l                                     ; $5e32: $75
	ld   h, a                                        ; $5e33: $67
	ld   a, e                                        ; $5e34: $7b
	nop                                              ; $5e35: $00
	nop                                              ; $5e36: $00
	ld   e, b                                        ; $5e37: $58
	ld   a, [hl]                                     ; $5e38: $7e
	ld   d, b                                        ; $5e39: $50
	ld   h, e                                        ; $5e3a: $63
	and  c                                           ; $5e3b: $a1
	adc  l                                           ; $5e3c: $8d
	ld   l, l                                        ; $5e3d: $6d
	ld   d, d                                        ; $5e3e: $52
	ld   [hl], l                                     ; $5e3f: $75
	ld   h, a                                        ; $5e40: $67
	ld   a, e                                        ; $5e41: $7b
	nop                                              ; $5e42: $00
	ld   bc, $0d07                                   ; $5e43: $01 $07 $0d
	inc  bc                                          ; $5e46: $03
	ld   [bc], a                                     ; $5e47: $02
	inc  bc                                          ; $5e48: $03
	ld   bc, $2000                                   ; $5e49: $01 $00 $20
	nop                                              ; $5e4c: $00
	rlca                                             ; $5e4d: $07
	ld   c, l                                        ; $5e4e: $4d
	inc  bc                                          ; $5e4f: $03
	ld   [bc], a                                     ; $5e50: $02
	inc  bc                                          ; $5e51: $03
	ld   bc, $2001                                   ; $5e52: $01 $01 $20
	nop                                              ; $5e55: $00
	ld   b, $9f                                      ; $5e56: $06 $9f
	inc  bc                                          ; $5e58: $03
	rrca                                             ; $5e59: $0f
	nop                                              ; $5e5a: $00
	ld   bc, $9401                                   ; $5e5b: $01 $01 $94
	ld   d, h                                        ; $5e5e: $54
	ld   e, d                                        ; $5e5f: $5a
	ld   a, b                                        ; $5e60: $78
	ld   h, d                                        ; $5e61: $62
	ld   h, l                                        ; $5e62: $65
	sub  e                                           ; $5e63: $93
	adc  l                                           ; $5e64: $8d
	ld   [hl], l                                     ; $5e65: $75
	ld   h, a                                        ; $5e66: $67
	ld   a, e                                        ; $5e67: $7b
	sbc  a                                           ; $5e68: $9f
	dec  c                                           ; $5e69: $0d
	nop                                              ; $5e6a: $00
	ld   a, [bc]                                     ; $5e6b: $0a
	inc  e                                           ; $5e6c: $1c
	ld   [bc], a                                     ; $5e6d: $02
	ld   bc, $1d01                                   ; $5e6e: $01 $01 $1d
	ld   b, b                                        ; $5e71: $40
	ld   [de], a                                     ; $5e72: $12
	inc  bc                                          ; $5e73: $03
	ld   [de], a                                     ; $5e74: $12
	ld   bc, $2802                                   ; $5e75: $01 $02 $28
	nop                                              ; $5e78: $00
	ld   bc, $c4c9                                   ; $5e79: $01 $c9 $c4
	ret  c                                           ; $5e7c: $d8

	xor  $c8                                         ; $5e7d: $ee $c8
	and  h                                           ; $5e7f: $a4
	ei                                               ; $5e80: $fb
	halt                                             ; $5e81: $76
	ld   h, l                                        ; $5e82: $65
	ld   [hl], h                                     ; $5e83: $74
	ld   a, h                                        ; $5e84: $7c
	dec  c                                           ; $5e85: $0d
	inc  b                                           ; $5e86: $04
	jr   jr_05a_5e8c                                 ; $5e87: $18 $03

	sbc  c                                           ; $5e89: $99
	ld   a, h                                        ; $5e8a: $7c
	ld   l, l                                        ; $5e8b: $6d

jr_05a_5e8c:
	ld   h, l                                        ; $5e8c: $65
	ld   a, b                                        ; $5e8d: $78
	adc  l                                           ; $5e8e: $8d
	ld   [hl], l                                     ; $5e8f: $75
	ld   h, a                                        ; $5e90: $67
	sbc  l                                           ; $5e91: $9d
	sbc  a                                           ; $5e92: $9f
	dec  c                                           ; $5e93: $0d
	nop                                              ; $5e94: $00
	ld   a, [bc]                                     ; $5e95: $0a
	ld   b, $a2                                      ; $5e96: $06 $a2
	inc  bc                                          ; $5e98: $03
	rrca                                             ; $5e99: $0f
	nop                                              ; $5e9a: $00
	ld   bc, $5801                                   ; $5e9b: $01 $01 $58
	ld   a, [hl]                                     ; $5e9e: $7e
	ld   d, b                                        ; $5e9f: $50
	ld   h, e                                        ; $5ea0: $63
	and  c                                           ; $5ea1: $a1
	adc  l                                           ; $5ea2: $8d
	ld   l, l                                        ; $5ea3: $6d
	ld   d, d                                        ; $5ea4: $52
	ld   a, b                                        ; $5ea5: $78
	dec  c                                           ; $5ea6: $0d
	ld   h, l                                        ; $5ea7: $65
	sub  e                                           ; $5ea8: $93
	adc  l                                           ; $5ea9: $8d
	ld   [hl], l                                     ; $5eaa: $75
	ld   h, a                                        ; $5eab: $67
	ld   a, e                                        ; $5eac: $7b
	sbc  a                                           ; $5ead: $9f
	dec  c                                           ; $5eae: $0d
	nop                                              ; $5eaf: $00
	ld   a, [bc]                                     ; $5eb0: $0a
	inc  e                                           ; $5eb1: $1c
	ld   [bc], a                                     ; $5eb2: $02
	ld   [bc], a                                     ; $5eb3: $02
	ld   [bc], a                                     ; $5eb4: $02
	dec  e                                           ; $5eb5: $1d
	ld   b, b                                        ; $5eb6: $40
	ld   [de], a                                     ; $5eb7: $12
	inc  bc                                          ; $5eb8: $03
	ld   [de], a                                     ; $5eb9: $12
	ld   bc, $2902                                   ; $5eba: $01 $02 $29
	nop                                              ; $5ebd: $00
	ld   bc, $8303                                   ; $5ebe: $01 $03 $83
	dec  b                                           ; $5ec1: $05
	dec  c                                           ; $5ec2: $0d
	ld   a, b                                        ; $5ec3: $78
	ld   a, [$610d]                                  ; $5ec4: $fa $0d $61
	sbc  d                                           ; $5ec7: $9a
	ld   a, l                                        ; $5ec8: $7d
	sbc  [hl]                                        ; $5ec9: $9e
	ret                                              ; $5eca: $c9


	call nz, $eed8                                   ; $5ecb: $c4 $d8 $ee
	ret  z                                           ; $5ece: $c8

	and  h                                           ; $5ecf: $a4
	ei                                               ; $5ed0: $fb
	halt                                             ; $5ed1: $76
	ld   h, l                                        ; $5ed2: $65
	ld   [hl], h                                     ; $5ed3: $74
	dec  c                                           ; $5ed4: $0d
	inc  b                                           ; $5ed5: $04
	jr   jr_05a_5edb                                 ; $5ed6: $18 $03

	sbc  c                                           ; $5ed8: $99
	ld   a, h                                        ; $5ed9: $7c
	ld   l, l                                        ; $5eda: $6d

jr_05a_5edb:
	ld   h, l                                        ; $5edb: $65
	ld   a, b                                        ; $5edc: $78
	adc  l                                           ; $5edd: $8d
	ld   a, b                                        ; $5ede: $78
	ld   a, h                                        ; $5edf: $7c
	ld   [hl], l                                     ; $5ee0: $75
	ld   h, a                                        ; $5ee1: $67
	sbc  l                                           ; $5ee2: $9d
	sub  [hl]                                        ; $5ee3: $96
	sbc  a                                           ; $5ee4: $9f
	dec  c                                           ; $5ee5: $0d
	nop                                              ; $5ee6: $00
	ld   a, [bc]                                     ; $5ee7: $0a
	ld   b, $a2                                      ; $5ee8: $06 $a2
	inc  bc                                          ; $5eea: $03
	rrca                                             ; $5eeb: $0f
	ld   [bc], a                                     ; $5eec: $02
	nop                                              ; $5eed: $00
	ld   bc, $f304                                   ; $5eee: $01 $04 $f3
	ld   a, l                                        ; $5ef1: $7d
	ld   l, e                                        ; $5ef2: $6b
	sbc  d                                           ; $5ef3: $9a
	ld   l, [hl]                                     ; $5ef4: $6e
	ld   e, a                                        ; $5ef5: $5f
	ld   [hl], l                                     ; $5ef6: $75
	ld   h, a                                        ; $5ef7: $67
	ld   e, c                                        ; $5ef8: $59
	ld   sp, hl                                      ; $5ef9: $f9
	dec  c                                           ; $5efa: $0d
	ld   [hl], l                                     ; $5efb: $75
	ld   a, l                                        ; $5efc: $7d
	sbc  [hl]                                        ; $5efd: $9e
	sbc  l                                           ; $5efe: $9d
	ld   l, l                                        ; $5eff: $6d
	ld   e, l                                        ; $5f00: $5d
	ld   h, l                                        ; $5f01: $65
	ld   [bc], a                                     ; $5f02: $02
	ld   h, l                                        ; $5f03: $65
	ld   d, [hl]                                     ; $5f04: $56
	ld   [bc], a                                     ; $5f05: $02
	jp   $0da0                                       ; $5f06: $c3 $a0 $0d


	ld   h, l                                        ; $5f09: $65
	ld   [hl], h                                     ; $5f0a: $74
	ld   e, b                                        ; $5f0b: $58
	sbc  b                                           ; $5f0c: $98
	adc  h                                           ; $5f0d: $8c
	ld   h, a                                        ; $5f0e: $67
	ld   a, h                                        ; $5f0f: $7c
	ld   [hl], l                                     ; $5f10: $75
	rst  $38                                         ; $5f11: $ff
	rst  $38                                         ; $5f12: $ff
	dec  c                                           ; $5f13: $0d
	nop                                              ; $5f14: $00
	ld   a, [bc]                                     ; $5f15: $0a
	rrca                                             ; $5f16: $0f
	nop                                              ; $5f17: $00
	ld   bc, $7501                                   ; $5f18: $01 $01 $75
	ld   a, l                                        ; $5f1b: $7d
	sbc  [hl]                                        ; $5f1c: $9e
	inc  bc                                          ; $5f1d: $03
	add  e                                           ; $5f1e: $83
	dec  b                                           ; $5f1f: $05
	dec  c                                           ; $5f20: $0d
	ld   h, l                                        ; $5f21: $65
	adc  h                                           ; $5f22: $8c
	ld   h, a                                        ; $5f23: $67
	sbc  a                                           ; $5f24: $9f
	dec  c                                           ; $5f25: $0d
	nop                                              ; $5f26: $00
	ld   a, [bc]                                     ; $5f27: $0a
	nop                                              ; $5f28: $00
	rrca                                             ; $5f29: $0f
	nop                                              ; $5f2a: $00
	ld   bc, $6701                                   ; $5f2b: $01 $01 $67
	adc  l                                           ; $5f2e: $8d
	sbc  d                                           ; $5f2f: $9a
	ld   h, e                                        ; $5f30: $63
	and  c                                           ; $5f31: $a1
	ld   a, h                                        ; $5f32: $7c
	ld   h, c                                        ; $5f33: $61
	halt                                             ; $5f34: $76
	and  b                                           ; $5f35: $a0
	dec  c                                           ; $5f36: $0d
	ld   [bc], a                                     ; $5f37: $02
	ret  nc                                          ; $5f38: $d0

	ld   d, [hl]                                     ; $5f39: $56
	ld   [hl], h                                     ; $5f3a: $74
	ld   [bc], a                                     ; $5f3b: $02
	inc  [hl]                                        ; $5f3c: $34
	ld   h, e                                        ; $5f3d: $63
	ld   d, d                                        ; $5f3e: $52
	sbc  a                                           ; $5f3f: $9f
	dec  c                                           ; $5f40: $0d
	nop                                              ; $5f41: $00
	ld   a, [bc]                                     ; $5f42: $0a
	rrca                                             ; $5f43: $0f
	ld   [bc], a                                     ; $5f44: $02
	ld   bc, $6b01                                   ; $5f45: $01 $01 $6b
	ld   d, h                                        ; $5f48: $54
	ld   [hl], l                                     ; $5f49: $75
	ld   h, a                                        ; $5f4a: $67
	ld   a, e                                        ; $5f4b: $7b
	rst  $38                                         ; $5f4c: $ff
	rst  $38                                         ; $5f4d: $ff
	sbc  l                                           ; $5f4e: $9d
	ld   l, l                                        ; $5f4f: $6d
	ld   e, l                                        ; $5f50: $5d
	ld   h, l                                        ; $5f51: $65
	dec  c                                           ; $5f52: $0d
	ld   bc, $0407                                   ; $5f53: $01 $07 $04
	db   $eb                                         ; $5f56: $eb
	inc  b                                           ; $5f57: $04
	ld   [hl], a                                     ; $5f58: $77
	pop  bc                                          ; $5f59: $c1
	push af                                          ; $5f5a: $f5
	cp   d                                           ; $5f5b: $ba
	inc  b                                           ; $5f5c: $04
	call c, $8a02                                    ; $5f5d: $dc $02 $8a
	ld   [bc], a                                     ; $5f60: $02
	sbc  $04                                         ; $5f61: $de $04
	ld   [de], a                                     ; $5f63: $12
	ld   bc, $0d08                                   ; $5f64: $01 $08 $0d
	ld   a, b                                        ; $5f67: $78
	and  c                                           ; $5f68: $a1
	ld   [hl], l                                     ; $5f69: $75
	ld   h, a                                        ; $5f6a: $67
	ld   a, h                                        ; $5f6b: $7c
	sub  [hl]                                        ; $5f6c: $96
	sbc  a                                           ; $5f6d: $9f
	dec  c                                           ; $5f6e: $0d
	nop                                              ; $5f6f: $00
	ld   a, [bc]                                     ; $5f70: $0a
	add  hl, de                                      ; $5f71: $19
	dec  b                                           ; $5f72: $05
	inc  bc                                          ; $5f73: $03
	inc  b                                           ; $5f74: $04
	ld   c, c                                        ; $5f75: $49
	ld   [hl], l                                     ; $5f76: $75
	ld   h, a                                        ; $5f77: $67
	ld   e, c                                        ; $5f78: $59
	sbc  [hl]                                        ; $5f79: $9e
	ld   l, e                                        ; $5f7a: $6b
	sbc  d                                           ; $5f7b: $9a
	ld   sp, hl                                      ; $5f7c: $f9
	nop                                              ; $5f7d: $00
	nop                                              ; $5f7e: $00
	inc  b                                           ; $5f7f: $04
	db   $eb                                         ; $5f80: $eb
	inc  b                                           ; $5f81: $04
	and  l                                           ; $5f82: $a5
	pop  bc                                          ; $5f83: $c1
	push af                                          ; $5f84: $f5
	cp   d                                           ; $5f85: $ba
	ld   sp, hl                                      ; $5f86: $f9
	nop                                              ; $5f87: $00
	ld   bc, $6d04                                   ; $5f88: $01 $04 $6d
	sub  b                                           ; $5f8b: $90
	ld   [hl], l                                     ; $5f8c: $75
	ld   h, a                                        ; $5f8d: $67
	nop                                              ; $5f8e: $00
	ld   [bc], a                                     ; $5f8f: $02
	rlca                                             ; $5f90: $07
	ld   h, d                                        ; $5f91: $62
	inc  b                                           ; $5f92: $04
	ld   [bc], a                                     ; $5f93: $02
	inc  bc                                          ; $5f94: $03
	ld   bc, $2000                                   ; $5f95: $01 $00 $20
	nop                                              ; $5f98: $00
	rlca                                             ; $5f99: $07
	ldh  [c], a                                      ; $5f9a: $e2
	inc  b                                           ; $5f9b: $04
	ld   [bc], a                                     ; $5f9c: $02
	inc  bc                                          ; $5f9d: $03
	ld   bc, $2001                                   ; $5f9e: $01 $01 $20
	nop                                              ; $5fa1: $00
	rlca                                             ; $5fa2: $07
	ld   a, b                                        ; $5fa3: $78
	dec  b                                           ; $5fa4: $05
	ld   [bc], a                                     ; $5fa5: $02
	inc  bc                                          ; $5fa6: $03
	ld   bc, $2002                                   ; $5fa7: $01 $02 $20
	nop                                              ; $5faa: $00
	ld   b, $3e                                      ; $5fab: $06 $3e
	ld   b, $0f                                      ; $5fad: $06 $0f
	nop                                              ; $5faf: $00
	ld   bc, $0401                                   ; $5fb0: $01 $01 $04
	ld   c, c                                        ; $5fb3: $49
	ld   [hl], l                                     ; $5fb4: $75
	ld   h, a                                        ; $5fb5: $67
	ld   e, c                                        ; $5fb6: $59
	sbc  [hl]                                        ; $5fb7: $9e
	ld   l, e                                        ; $5fb8: $6b
	ld   a, h                                        ; $5fb9: $7c
	dec  c                                           ; $5fba: $0d
	ld   bc, $0407                                   ; $5fbb: $01 $07 $04
	db   $eb                                         ; $5fbe: $eb
	inc  b                                           ; $5fbf: $04
	ld   [hl], a                                     ; $5fc0: $77
	pop  bc                                          ; $5fc1: $c1
	push af                                          ; $5fc2: $f5
	cp   d                                           ; $5fc3: $ba
	inc  b                                           ; $5fc4: $04
	call c, $8a02                                    ; $5fc5: $dc $02 $8a
	ld   [bc], a                                     ; $5fc8: $02
	sbc  $04                                         ; $5fc9: $de $04
	ld   [de], a                                     ; $5fcb: $12
	ld   bc, $7108                                   ; $5fcc: $01 $08 $71
	ld   [hl], h                                     ; $5fcf: $74
	sbc  a                                           ; $5fd0: $9f
	dec  c                                           ; $5fd1: $0d
	nop                                              ; $5fd2: $00
	ld   a, [bc]                                     ; $5fd3: $0a
	rrca                                             ; $5fd4: $0f
	ld   [bc], a                                     ; $5fd5: $02
	nop                                              ; $5fd6: $00
	ld   bc, $edf1                                   ; $5fd7: $01 $f1 $ed
	push bc                                          ; $5fda: $c5
	sub  d                                           ; $5fdb: $92
	ret  nz                                          ; $5fdc: $c0

	push af                                          ; $5fdd: $f5
	or   l                                           ; $5fde: $b5
	sbc  a                                           ; $5fdf: $9f
	dec  c                                           ; $5fe0: $0d
	sub  $a2                                         ; $5fe1: $d6 $a2
	and  l                                           ; $5fe3: $a5
	and  $fb                                         ; $5fe4: $e6 $fb
	pop  bc                                          ; $5fe6: $c1
	push af                                          ; $5fe7: $f5
	cp   d                                           ; $5fe8: $ba
	sub  d                                           ; $5fe9: $92
	dec  c                                           ; $5fea: $0d
	or   h                                           ; $5feb: $b4
	or   [hl]                                        ; $5fec: $b6
	call nz, $c1b0                                   ; $5fed: $c4 $b0 $c1
	push af                                          ; $5ff0: $f5
	cp   d                                           ; $5ff1: $ba
	sbc  a                                           ; $5ff2: $9f
	dec  c                                           ; $5ff3: $0d
	nop                                              ; $5ff4: $00
	ld   a, [bc]                                     ; $5ff5: $0a
	ld   bc, $1903                                   ; $5ff6: $01 $03 $19
	ld   [bc], a                                     ; $5ff9: $02
	ld   b, d                                        ; $5ffa: $42
	ld   a, c                                        ; $5ffb: $79
	inc  bc                                          ; $5ffc: $03
	sub  [hl]                                        ; $5ffd: $96
	sub  a                                           ; $5ffe: $97
	ld   a, [hl]                                     ; $5fff: $7e
	sbc  c                                           ; $6000: $99
	ld   d, b                                        ; $6001: $50
	sbc  b                                           ; $6002: $98
	halt                                             ; $6003: $76
	ld   d, b                                        ; $6004: $50
	sub  a                                           ; $6005: $97
	sub  h                                           ; $6006: $94
	sbc  c                                           ; $6007: $99
	dec  c                                           ; $6008: $0d
	pop  bc                                          ; $6009: $c1
	push af                                          ; $600a: $f5
	cp   d                                           ; $600b: $ba
	and  b                                           ; $600c: $a0
	ld   e, e                                        ; $600d: $5b
	sbc  l                                           ; $600e: $9d
	adc  a                                           ; $600f: $8f
	ld   l, l                                        ; $6010: $6d
	inc  bc                                          ; $6011: $03
	or   b                                           ; $6012: $b0
	ld   l, [hl]                                     ; $6013: $6e
	ld   e, a                                        ; $6014: $5f
	ld   e, d                                        ; $6015: $5a
	dec  c                                           ; $6016: $0d
	inc  bc                                          ; $6017: $03
	ld   l, e                                        ; $6018: $6b
	ld   a, c                                        ; $6019: $79
	inc  b                                           ; $601a: $04
	ld   b, l                                        ; $601b: $45
	sbc  d                                           ; $601c: $9a
	sub  a                                           ; $601d: $97
	sbc  d                                           ; $601e: $9a
	sbc  c                                           ; $601f: $99
	inc  b                                           ; $6020: $04
	call c, $8a02                                    ; $6021: $dc $02 $8a
	ld   [hl], l                                     ; $6024: $75
	ld   h, a                                        ; $6025: $67
	sbc  l                                           ; $6026: $9d
	sbc  a                                           ; $6027: $9f
	dec  c                                           ; $6028: $0d
	nop                                              ; $6029: $00
	ld   a, [bc]                                     ; $602a: $0a
	ld   b, $42                                      ; $602b: $06 $42
	ld   b, $0f                                      ; $602d: $06 $0f
	nop                                              ; $602f: $00
	ld   bc, $0401                                   ; $6030: $01 $01 $04
	db   $eb                                         ; $6033: $eb
	inc  b                                           ; $6034: $04
	and  l                                           ; $6035: $a5
	pop  bc                                          ; $6036: $c1
	push af                                          ; $6037: $f5
	cp   d                                           ; $6038: $ba
	inc  b                                           ; $6039: $04
	call c, $8a02                                    ; $603a: $dc $02 $8a
	ld   [bc], a                                     ; $603d: $02
	sbc  $04                                         ; $603e: $de $04
	ld   [de], a                                     ; $6040: $12
	ld   sp, hl                                      ; $6041: $f9
	dec  c                                           ; $6042: $0d
	nop                                              ; $6043: $00
	ld   a, [bc]                                     ; $6044: $0a
	inc  e                                           ; $6045: $1c
	ld   [bc], a                                     ; $6046: $02
	inc  bc                                          ; $6047: $03
	inc  bc                                          ; $6048: $03
	ld   bc, $5a6f                                   ; $6049: $01 $6f $5a
	ld   d, d                                        ; $604c: $52
	adc  h                                           ; $604d: $8c
	ld   h, a                                        ; $604e: $67
	sbc  l                                           ; $604f: $9d
	sbc  a                                           ; $6050: $9f
	dec  c                                           ; $6051: $0d
	inc  b                                           ; $6052: $04
	db   $eb                                         ; $6053: $eb
	inc  b                                           ; $6054: $04
	ld   [hl], a                                     ; $6055: $77
	pop  bc                                          ; $6056: $c1
	push af                                          ; $6057: $f5
	cp   d                                           ; $6058: $ba
	inc  b                                           ; $6059: $04
	call c, $8a02                                    ; $605a: $dc $02 $8a
	ld   [bc], a                                     ; $605d: $02
	sbc  $04                                         ; $605e: $de $04
	ld   [de], a                                     ; $6060: $12
	dec  c                                           ; $6061: $0d
	ld   [hl], l                                     ; $6062: $75
	ld   h, a                                        ; $6063: $67
	sbc  l                                           ; $6064: $9d
	sbc  a                                           ; $6065: $9f
	dec  c                                           ; $6066: $0d
	nop                                              ; $6067: $00
	ld   a, [bc]                                     ; $6068: $0a
	inc  e                                           ; $6069: $1c
	ld   [bc], a                                     ; $606a: $02
	nop                                              ; $606b: $00
	nop                                              ; $606c: $00
	ld   bc, $edf1                                   ; $606d: $01 $f1 $ed
	push bc                                          ; $6070: $c5
	sub  d                                           ; $6071: $92
	ret  nz                                          ; $6072: $c0

	push af                                          ; $6073: $f5
	or   l                                           ; $6074: $b5
	sbc  a                                           ; $6075: $9f
	dec  c                                           ; $6076: $0d
	sub  $a2                                         ; $6077: $d6 $a2
	and  l                                           ; $6079: $a5
	and  $fb                                         ; $607a: $e6 $fb
	pop  bc                                          ; $607c: $c1
	push af                                          ; $607d: $f5
	cp   d                                           ; $607e: $ba
	sub  d                                           ; $607f: $92
	dec  c                                           ; $6080: $0d
	or   h                                           ; $6081: $b4
	or   [hl]                                        ; $6082: $b6
	call nz, $c1b0                                   ; $6083: $c4 $b0 $c1
	push af                                          ; $6086: $f5
	cp   d                                           ; $6087: $ba
	sbc  a                                           ; $6088: $9f
	dec  c                                           ; $6089: $0d
	nop                                              ; $608a: $00
	ld   a, [bc]                                     ; $608b: $0a
	ld   bc, $1903                                   ; $608c: $01 $03 $19
	ld   [bc], a                                     ; $608f: $02
	ld   b, d                                        ; $6090: $42
	ld   a, c                                        ; $6091: $79
	inc  bc                                          ; $6092: $03
	sub  [hl]                                        ; $6093: $96
	sub  a                                           ; $6094: $97
	ld   a, [hl]                                     ; $6095: $7e
	sbc  c                                           ; $6096: $99
	ld   d, b                                        ; $6097: $50
	sbc  b                                           ; $6098: $98
	halt                                             ; $6099: $76
	ld   d, b                                        ; $609a: $50
	sub  a                                           ; $609b: $97
	sub  h                                           ; $609c: $94
	sbc  c                                           ; $609d: $99
	dec  c                                           ; $609e: $0d
	pop  bc                                          ; $609f: $c1
	push af                                          ; $60a0: $f5
	cp   d                                           ; $60a1: $ba
	and  b                                           ; $60a2: $a0
	ld   e, e                                        ; $60a3: $5b
	sbc  l                                           ; $60a4: $9d
	adc  a                                           ; $60a5: $8f
	ld   l, l                                        ; $60a6: $6d
	inc  bc                                          ; $60a7: $03
	or   b                                           ; $60a8: $b0
	ld   l, [hl]                                     ; $60a9: $6e
	ld   e, a                                        ; $60aa: $5f
	ld   e, d                                        ; $60ab: $5a
	dec  c                                           ; $60ac: $0d
	inc  bc                                          ; $60ad: $03
	ld   l, e                                        ; $60ae: $6b
	ld   a, c                                        ; $60af: $79
	inc  b                                           ; $60b0: $04
	ld   b, l                                        ; $60b1: $45
	sbc  d                                           ; $60b2: $9a
	sub  a                                           ; $60b3: $97
	sbc  d                                           ; $60b4: $9a
	sbc  c                                           ; $60b5: $99
	inc  b                                           ; $60b6: $04
	call c, $8a02                                    ; $60b7: $dc $02 $8a
	ld   [hl], l                                     ; $60ba: $75
	ld   h, a                                        ; $60bb: $67
	sbc  l                                           ; $60bc: $9d
	sbc  a                                           ; $60bd: $9f
	dec  c                                           ; $60be: $0d
	nop                                              ; $60bf: $00
	ld   a, [bc]                                     ; $60c0: $0a
	ld   b, $42                                      ; $60c1: $06 $42
	ld   b, $0f                                      ; $60c3: $06 $0f
	nop                                              ; $60c5: $00
	ld   bc, $0401                                   ; $60c6: $01 $01 $04
	ld   l, l                                        ; $60c9: $6d
	sub  b                                           ; $60ca: $90
	inc  bc                                          ; $60cb: $03
	and  b                                           ; $60cc: $a0
	ld   [hl], c                                     ; $60cd: $71
	ld   [hl], h                                     ; $60ce: $74
	adc  h                                           ; $60cf: $8c
	ld   h, a                                        ; $60d0: $67
	sbc  a                                           ; $60d1: $9f
	dec  c                                           ; $60d2: $0d
	ld   l, e                                        ; $60d3: $6b
	ld   a, h                                        ; $60d4: $7c
	inc  b                                           ; $60d5: $04
	call c, $8a02                                    ; $60d6: $dc $02 $8a
	sbc  a                                           ; $60d9: $9f
	dec  c                                           ; $60da: $0d
	nop                                              ; $60db: $00
	ld   a, [bc]                                     ; $60dc: $0a
	inc  e                                           ; $60dd: $1c
	ld   [bc], a                                     ; $60de: $02
	ld   [bc], a                                     ; $60df: $02
	ld   [bc], a                                     ; $60e0: $02
	dec  e                                           ; $60e1: $1d
	ld   b, b                                        ; $60e2: $40
	ld   [de], a                                     ; $60e3: $12
	inc  bc                                          ; $60e4: $03
	ld   [de], a                                     ; $60e5: $12
	ld   bc, $2902                                   ; $60e6: $01 $02 $29
	nop                                              ; $60e9: $00
	ld   bc, $6b54                                   ; $60ea: $01 $54 $6b
	ld   e, b                                        ; $60ed: $58
	ld   [hl], c                                     ; $60ee: $71
	ld   h, l                                        ; $60ef: $65
	sub  c                                           ; $60f0: $91
	ld   d, d                                        ; $60f1: $52
	ld   a, [$040d]                                  ; $60f2: $fa $0d $04
	db   $eb                                         ; $60f5: $eb
	inc  b                                           ; $60f6: $04
	ld   [hl], a                                     ; $60f7: $77
	pop  bc                                          ; $60f8: $c1
	push af                                          ; $60f9: $f5
	cp   d                                           ; $60fa: $ba
	ld   [hl], c                                     ; $60fb: $71
	ld   [hl], h                                     ; $60fc: $74
	ld   d, d                                        ; $60fd: $52
	ld   d, h                                        ; $60fe: $54
	ld   a, h                                        ; $60ff: $7c
	ld   a, l                                        ; $6100: $7d
	rst  $38                                         ; $6101: $ff
	rst  $38                                         ; $6102: $ff
	dec  c                                           ; $6103: $0d
	nop                                              ; $6104: $00
	ld   a, [bc]                                     ; $6105: $0a
	ld   bc, $edf1                                   ; $6106: $01 $f1 $ed
	push bc                                          ; $6109: $c5
	sub  d                                           ; $610a: $92
	ret  nz                                          ; $610b: $c0

	push af                                          ; $610c: $f5
	or   l                                           ; $610d: $b5
	sbc  a                                           ; $610e: $9f
	dec  c                                           ; $610f: $0d
	sub  $a2                                         ; $6110: $d6 $a2
	and  l                                           ; $6112: $a5
	and  $fb                                         ; $6113: $e6 $fb
	pop  bc                                          ; $6115: $c1
	push af                                          ; $6116: $f5
	cp   d                                           ; $6117: $ba
	sub  d                                           ; $6118: $92
	dec  c                                           ; $6119: $0d
	or   h                                           ; $611a: $b4
	or   [hl]                                        ; $611b: $b6
	call nz, $c1b0                                   ; $611c: $c4 $b0 $c1
	push af                                          ; $611f: $f5
	cp   d                                           ; $6120: $ba
	sbc  a                                           ; $6121: $9f
	dec  c                                           ; $6122: $0d
	nop                                              ; $6123: $00
	ld   a, [bc]                                     ; $6124: $0a
	ld   bc, $1903                                   ; $6125: $01 $03 $19
	ld   [bc], a                                     ; $6128: $02
	ld   b, d                                        ; $6129: $42
	ld   a, c                                        ; $612a: $79
	inc  bc                                          ; $612b: $03
	sub  [hl]                                        ; $612c: $96
	sub  a                                           ; $612d: $97
	ld   a, [hl]                                     ; $612e: $7e
	sbc  c                                           ; $612f: $99
	ld   d, b                                        ; $6130: $50
	sbc  b                                           ; $6131: $98
	halt                                             ; $6132: $76
	ld   d, b                                        ; $6133: $50
	sub  a                                           ; $6134: $97
	sub  h                                           ; $6135: $94
	sbc  c                                           ; $6136: $99
	dec  c                                           ; $6137: $0d
	pop  bc                                          ; $6138: $c1
	push af                                          ; $6139: $f5
	cp   d                                           ; $613a: $ba
	and  b                                           ; $613b: $a0
	ld   e, e                                        ; $613c: $5b
	sbc  l                                           ; $613d: $9d
	adc  a                                           ; $613e: $8f
	ld   l, l                                        ; $613f: $6d
	inc  bc                                          ; $6140: $03
	or   b                                           ; $6141: $b0
	ld   l, [hl]                                     ; $6142: $6e
	ld   e, a                                        ; $6143: $5f
	ld   e, d                                        ; $6144: $5a
	dec  c                                           ; $6145: $0d
	inc  bc                                          ; $6146: $03
	ld   l, e                                        ; $6147: $6b
	ld   a, c                                        ; $6148: $79
	inc  b                                           ; $6149: $04
	ld   b, l                                        ; $614a: $45
	sbc  d                                           ; $614b: $9a
	sub  a                                           ; $614c: $97
	sbc  d                                           ; $614d: $9a
	sbc  c                                           ; $614e: $99
	inc  b                                           ; $614f: $04
	call c, $8a02                                    ; $6150: $dc $02 $8a
	ld   [hl], l                                     ; $6153: $75
	ld   h, a                                        ; $6154: $67
	sbc  l                                           ; $6155: $9d
	sbc  a                                           ; $6156: $9f
	dec  c                                           ; $6157: $0d
	nop                                              ; $6158: $00
	ld   a, [bc]                                     ; $6159: $0a
	ld   bc, $a16b                                   ; $615a: $01 $6b $a1
	ld   h, [hl]                                     ; $615d: $66
	sub  l                                           ; $615e: $95
	ld   l, e                                        ; $615f: $6b
	ld   h, c                                        ; $6160: $61
	sub  a                                           ; $6161: $97
	ld   a, h                                        ; $6162: $7c
	inc  bc                                          ; $6163: $03
	call nz, $de04                                   ; $6164: $c4 $04 $de
	ld   e, d                                        ; $6167: $5a
	dec  c                                           ; $6168: $0d
	inc  bc                                          ; $6169: $03
	and  b                                           ; $616a: $a0
	ld   [hl], h                                     ; $616b: $74
	sbc  c                                           ; $616c: $99
	sub  [hl]                                        ; $616d: $96
	ld   d, h                                        ; $616e: $54
	ld   a, b                                        ; $616f: $78
	inc  b                                           ; $6170: $04
	call c, $8a02                                    ; $6171: $dc $02 $8a
	ld   h, [hl]                                     ; $6174: $66
	sub  c                                           ; $6175: $91
	dec  c                                           ; $6176: $0d
	ld   h, d                                        ; $6177: $62
	ld   h, h                                        ; $6178: $64
	ld   d, d                                        ; $6179: $52
	adc  h                                           ; $617a: $8c
	ld   l, c                                        ; $617b: $69

Jump_05a_617c:
	and  c                                           ; $617c: $a1
	ld   a, h                                        ; $617d: $7c
	sub  [hl]                                        ; $617e: $96
	sbc  a                                           ; $617f: $9f
	dec  c                                           ; $6180: $0d
	nop                                              ; $6181: $00
	ld   a, [bc]                                     ; $6182: $0a
	inc  e                                           ; $6183: $1c
	ld   [bc], a                                     ; $6184: $02
	rlca                                             ; $6185: $07
	rlca                                             ; $6186: $07
	ld   b, $42                                      ; $6187: $06 $42
	ld   b, $1c                                      ; $6189: $06 $1c
	ld   [bc], a                                     ; $618b: $02
	nop                                              ; $618c: $00
	nop                                              ; $618d: $00
	ld   bc, $f304                                   ; $618e: $01 $04 $f3
	ld   a, l                                        ; $6191: $7d
	ld   l, e                                        ; $6192: $6b
	sbc  d                                           ; $6193: $9a
	ld   l, [hl]                                     ; $6194: $6e
	ld   e, a                                        ; $6195: $5f
	ld   [hl], l                                     ; $6196: $75
	ld   h, a                                        ; $6197: $67
	ld   e, c                                        ; $6198: $59
	ld   sp, hl                                      ; $6199: $f9
	dec  c                                           ; $619a: $0d
	ld   [hl], l                                     ; $619b: $75
	ld   a, l                                        ; $619c: $7d
	sbc  [hl]                                        ; $619d: $9e
	sbc  l                                           ; $619e: $9d
	ld   l, l                                        ; $619f: $6d
	ld   e, l                                        ; $61a0: $5d
	ld   h, l                                        ; $61a1: $65
	ld   [bc], a                                     ; $61a2: $02
	ld   h, l                                        ; $61a3: $65
	ld   d, [hl]                                     ; $61a4: $56
	ld   [bc], a                                     ; $61a5: $02
	jp   $0da0                                       ; $61a6: $c3 $a0 $0d


	ld   h, l                                        ; $61a9: $65
	ld   [hl], h                                     ; $61aa: $74
	ld   e, b                                        ; $61ab: $58
	sbc  b                                           ; $61ac: $98
	adc  h                                           ; $61ad: $8c
	ld   h, a                                        ; $61ae: $67
	ld   a, h                                        ; $61af: $7c
	ld   [hl], l                                     ; $61b0: $75
	rst  $38                                         ; $61b1: $ff
	rst  $38                                         ; $61b2: $ff
	dec  c                                           ; $61b3: $0d
	nop                                              ; $61b4: $00
	ld   a, [bc]                                     ; $61b5: $0a
	nop                                              ; $61b6: $00
	nop                                              ; $61b7: $00
	inc  b                                           ; $61b8: $04
	add  b                                           ; $61b9: $80
	jp   $0001                                       ; $61ba: $c3 $01 $00


	jr   nz, jr_05a_61bf                             ; $61bd: $20 $00

jr_05a_61bf:
	rrca                                             ; $61bf: $0f
	nop                                              ; $61c0: $00
	ld   bc, $030d                                   ; $61c1: $01 $0d $03
	nop                                              ; $61c4: $00
	ld   [bc], a                                     ; $61c5: $02
	ld   bc, $ecdf                                   ; $61c6: $01 $df $ec
	and  e                                           ; $61c9: $a3
	ld   h, e                                        ; $61ca: $63
	and  c                                           ; $61cb: $a1
	sbc  a                                           ; $61cc: $9f
	dec  c                                           ; $61cd: $0d
	nop                                              ; $61ce: $00
	ld   a, [bc]                                     ; $61cf: $0a
	inc  e                                           ; $61d0: $1c
	inc  bc                                          ; $61d1: $03
	nop                                              ; $61d2: $00
	nop                                              ; $61d3: $00
	ld   bc, $9750                                   ; $61d4: $01 $50 $97
	sbc  [hl]                                        ; $61d7: $9e
	ld   [hl], a                                     ; $61d8: $77
	ld   d, h                                        ; $61d9: $54
	ld   h, l                                        ; $61da: $65
	ld   l, l                                        ; $61db: $6d
	ld   a, h                                        ; $61dc: $7c
	ld   sp, hl                                      ; $61dd: $f9
	dec  c                                           ; $61de: $0d
	nop                                              ; $61df: $00
	ld   a, [bc]                                     ; $61e0: $0a
	rrca                                             ; $61e1: $0f
	nop                                              ; $61e2: $00
	ld   bc, $0101                                   ; $61e3: $01 $01 $01
	inc  bc                                          ; $61e6: $03
	ld   h, e                                        ; $61e7: $63
	ld   [hl], h                                     ; $61e8: $74
	inc  b                                           ; $61e9: $04
	ld   c, c                                        ; $61ea: $49
	and  b                                           ; $61eb: $a0
	dec  b                                           ; $61ec: $05
	jr   nz, jr_05a_625a                             ; $61ed: $20 $6b

	ld   d, h                                        ; $61ef: $54
	ld   e, c                                        ; $61f0: $59
	rst  $38                                         ; $61f1: $ff
	rst  $38                                         ; $61f2: $ff
	ld   bc, $0d04                                   ; $61f3: $01 $04 $0d
	nop                                              ; $61f6: $00
	ld   a, [bc]                                     ; $61f7: $0a
	add  hl, de                                      ; $61f8: $19
	dec  b                                           ; $61f9: $05
	inc  bc                                          ; $61fa: $03
	inc  bc                                          ; $61fb: $03
	daa                                              ; $61fc: $27
	ld   [bc], a                                     ; $61fd: $02
	sub  c                                           ; $61fe: $91
	ld   a, h                                        ; $61ff: $7c
	dec  b                                           ; $6200: $05
	add  hl, de                                      ; $6201: $19
	inc  bc                                          ; $6202: $03
	and  h                                           ; $6203: $a4
	and  b                                           ; $6204: $a0
	ld   h, l                                        ; $6205: $65
	ld   l, l                                        ; $6206: $6d
	ld   d, d                                        ; $6207: $52
	nop                                              ; $6208: $00
	nop                                              ; $6209: $00
	inc  bc                                          ; $620a: $03
	and  a                                           ; $620b: $a7
	inc  b                                           ; $620c: $04
	xor  d                                           ; $620d: $aa
	ld   a, h                                        ; $620e: $7c
	dec  b                                           ; $620f: $05
	jr   nz, jr_05a_6212                             ; $6210: $20 $00

jr_05a_6212:
	ld   bc, $9250                                   ; $6212: $01 $50 $92
	adc  a                                           ; $6215: $8f
	ld   a, h                                        ; $6216: $7c
	dec  b                                           ; $6217: $05
	jr   nz, jr_05a_621a                             ; $6218: $20 $00

jr_05a_621a:
	ld   [bc], a                                     ; $621a: $02
	rlca                                             ; $621b: $07
	and  b                                           ; $621c: $a0
	nop                                              ; $621d: $00
	ld   [bc], a                                     ; $621e: $02
	inc  bc                                          ; $621f: $03
	ld   bc, $2000                                   ; $6220: $01 $00 $20
	nop                                              ; $6223: $00
	rlca                                             ; $6224: $07
	adc  b                                           ; $6225: $88
	ld   bc, $0302                                   ; $6226: $01 $02 $03
	ld   bc, $2001                                   ; $6229: $01 $01 $20
	nop                                              ; $622c: $00
	rlca                                             ; $622d: $07
	ld   d, c                                        ; $622e: $51
	inc  bc                                          ; $622f: $03
	ld   [bc], a                                     ; $6230: $02
	inc  bc                                          ; $6231: $03
	ld   bc, $2002                                   ; $6232: $01 $02 $20
	nop                                              ; $6235: $00
	ld   b, $7a                                      ; $6236: $06 $7a
	nop                                              ; $6238: $00
	inc  e                                           ; $6239: $1c
	inc  bc                                          ; $623a: $03
	nop                                              ; $623b: $00
	nop                                              ; $623c: $00
	ld   bc, $fd03                                   ; $623d: $01 $03 $fd
	ld   a, c                                        ; $6240: $79
	inc  b                                           ; $6241: $04
	di                                               ; $6242: $f3
	ld   a, l                                        ; $6243: $7d
	ld   a, b                                        ; $6244: $78
	ld   d, d                                        ; $6245: $52
	ld   a, h                                        ; $6246: $7c
	ld   a, e                                        ; $6247: $7b
	sbc  a                                           ; $6248: $9f
	dec  c                                           ; $6249: $0d
	ld   h, [hl]                                     ; $624a: $66
	sub  c                                           ; $624b: $91
	ld   d, b                                        ; $624c: $50
	sbc  [hl]                                        ; $624d: $9e
	inc  bc                                          ; $624e: $03
	add  e                                           ; $624f: $83
	dec  b                                           ; $6250: $05
	dec  c                                           ; $6251: $0d
	sbc  a                                           ; $6252: $9f
	dec  c                                           ; $6253: $0d
	nop                                              ; $6254: $00
	ld   a, [bc]                                     ; $6255: $0a
	dec  c                                           ; $6256: $0d
	nop                                              ; $6257: $00
	nop                                              ; $6258: $00
	rrca                                             ; $6259: $0f

jr_05a_625a:
	nop                                              ; $625a: $00
	ld   bc, $1e09                                   ; $625b: $01 $09 $1e
	nop                                              ; $625e: $00
	rrca                                             ; $625f: $0f
	nop                                              ; $6260: $00
	ld   bc, $9001                                   ; $6261: $01 $01 $90
	ld   h, l                                        ; $6264: $65
	ld   e, b                                        ; $6265: $58
	inc  bc                                          ; $6266: $03
	ld   l, a                                        ; $6267: $6f
	ld   [bc], a                                     ; $6268: $02
	xor  c                                           ; $6269: $a9
	ld   e, d                                        ; $626a: $5a
	ld   d, b                                        ; $626b: $50
	ld   [hl], c                                     ; $626c: $71
	ld   l, l                                        ; $626d: $6d
	sub  a                                           ; $626e: $97
	dec  c                                           ; $626f: $0d
	inc  bc                                          ; $6270: $03
	daa                                              ; $6271: $27
	ld   [bc], a                                     ; $6272: $02
	sub  c                                           ; $6273: $91
	ld   a, h                                        ; $6274: $7c
	dec  b                                           ; $6275: $05
	add  hl, de                                      ; $6276: $19
	inc  bc                                          ; $6277: $03
	and  h                                           ; $6278: $a4
	and  b                                           ; $6279: $a0
	ld   e, b                                        ; $627a: $58
	ld   [bc], a                                     ; $627b: $02
	add  b                                           ; $627c: $80
	ld   d, d                                        ; $627d: $52
	dec  c                                           ; $627e: $0d
	ld   h, l                                        ; $627f: $65
	ld   l, l                                        ; $6280: $6d
	ld   d, d                                        ; $6281: $52
	ld   a, h                                        ; $6282: $7c
	ld   [hl], l                                     ; $6283: $75
	ld   h, a                                        ; $6284: $67
	ld   e, a                                        ; $6285: $5f
	ld   [hl], a                                     ; $6286: $77
	rst  $38                                         ; $6287: $ff
	rst  $38                                         ; $6288: $ff
	dec  c                                           ; $6289: $0d
	nop                                              ; $628a: $00
	ld   a, [bc]                                     ; $628b: $0a
	inc  e                                           ; $628c: $1c
	inc  bc                                          ; $628d: $03
	inc  bc                                          ; $628e: $03
	inc  bc                                          ; $628f: $03
	ld   bc, $9750                                   ; $6290: $01 $50 $97
	ld   [bc], a                                     ; $6293: $02
	scf                                              ; $6294: $37
	inc  bc                                          ; $6295: $03
	ld   [hl], l                                     ; $6296: $75
	ld   a, e                                        ; $6297: $7b
	rst  $38                                         ; $6298: $ff
	rst  $38                                         ; $6299: $ff
	dec  c                                           ; $629a: $0d
	ld   d, d                                        ; $629b: $52
	ld   d, d                                        ; $629c: $52
	sbc  l                                           ; $629d: $9d
	sub  [hl]                                        ; $629e: $96
	sbc  a                                           ; $629f: $9f
	dec  c                                           ; $62a0: $0d
	nop                                              ; $62a1: $00
	ld   a, [bc]                                     ; $62a2: $0a
	ld   a, [de]                                     ; $62a3: $1a
	inc  bc                                          ; $62a4: $03
	rlca                                             ; $62a5: $07
	ei                                               ; $62a6: $fb
	nop                                              ; $62a7: $00
	ld   [bc], a                                     ; $62a8: $02
	inc  b                                           ; $62a9: $04
	ld   bc, $2002                                   ; $62aa: $01 $02 $20
	nop                                              ; $62ad: $00
	rlca                                             ; $62ae: $07
	ld   e, $01                                      ; $62af: $1e $01
	ld   [bc], a                                     ; $62b1: $02
	inc  b                                           ; $62b2: $04
	ld   bc, $2001                                   ; $62b3: $01 $01 $20
	nop                                              ; $62b6: $00
	ld   b, $3f                                      ; $62b7: $06 $3f
	ld   bc, $031c                                   ; $62b9: $01 $1c $03
	inc  bc                                          ; $62bc: $03
	inc  bc                                          ; $62bd: $03
	dec  e                                           ; $62be: $1d
	ld   b, b                                        ; $62bf: $40
	inc  de                                          ; $62c0: $13
	inc  bc                                          ; $62c1: $03
	inc  de                                          ; $62c2: $13
	ld   bc, $2803                                   ; $62c3: $01 $03 $28
	nop                                              ; $62c6: $00
	ld   bc, $0008                                   ; $62c7: $01 $08 $00
	ld   e, l                                        ; $62ca: $5d
	and  c                                           ; $62cb: $a1
	sbc  [hl]                                        ; $62cc: $9e
	dec  c                                           ; $62cd: $0d
	ld   h, a                                        ; $62ce: $67
	ld   h, d                                        ; $62cf: $62
	ld   d, d                                        ; $62d0: $52
	ld   h, [hl]                                     ; $62d1: $66
	sub  c                                           ; $62d2: $91
	ld   a, b                                        ; $62d3: $78
	ld   d, d                                        ; $62d4: $52
	ld   a, h                                        ; $62d5: $7c
	sbc  a                                           ; $62d6: $9f
	dec  c                                           ; $62d7: $0d
	nop                                              ; $62d8: $00
	ld   a, [bc]                                     ; $62d9: $0a
	ld   b, $68                                      ; $62da: $06 $68
	ld   bc, $031c                                   ; $62dc: $01 $1c $03
	nop                                              ; $62df: $00
	nop                                              ; $62e0: $00
	dec  e                                           ; $62e1: $1d
	ld   b, b                                        ; $62e2: $40
	inc  de                                          ; $62e3: $13
	inc  bc                                          ; $62e4: $03
	inc  de                                          ; $62e5: $13
	ld   bc, $2801                                   ; $62e6: $01 $01 $28
	nop                                              ; $62e9: $00
	ld   bc, $0008                                   ; $62ea: $01 $08 $00
	ld   e, l                                        ; $62ed: $5d
	and  c                                           ; $62ee: $a1
	sbc  [hl]                                        ; $62ef: $9e
	dec  c                                           ; $62f0: $0d
	ld   d, d                                        ; $62f1: $52
	ld   d, d                                        ; $62f2: $52
	ld   e, c                                        ; $62f3: $59
	and  c                                           ; $62f4: $a1
	ld   h, [hl]                                     ; $62f5: $66
	ld   a, e                                        ; $62f6: $7b
	sbc  a                                           ; $62f7: $9f
	dec  c                                           ; $62f8: $0d
	nop                                              ; $62f9: $00
	ld   a, [bc]                                     ; $62fa: $0a
	ld   b, $68                                      ; $62fb: $06 $68
	ld   bc, $031c                                   ; $62fd: $01 $1c $03
	inc  b                                           ; $6300: $04
	inc  b                                           ; $6301: $04
	dec  e                                           ; $6302: $1d
	ld   b, b                                        ; $6303: $40
	inc  de                                          ; $6304: $13
	inc  bc                                          ; $6305: $03
	inc  de                                          ; $6306: $13
	ld   bc, $2902                                   ; $6307: $01 $02 $29
	nop                                              ; $630a: $00
	ld   bc, $5490                                   ; $630b: $01 $90 $54
	ld   l, a                                        ; $630e: $6f
	sub  l                                           ; $630f: $95
	ld   [hl], c                                     ; $6310: $71
	halt                                             ; $6311: $76
	ld   e, d                                        ; $6312: $5a
	and  c                                           ; $6313: $a1
	ld   a, [hl]                                     ; $6314: $7e
	ld   [hl], c                                     ; $6315: $71
	ld   l, l                                        ; $6316: $6d
	adc  c                                           ; $6317: $89
	ld   d, h                                        ; $6318: $54
	ld   e, d                                        ; $6319: $5a
	dec  c                                           ; $631a: $0d
	ld   d, d                                        ; $631b: $52
	ld   d, d                                        ; $631c: $52
	sbc  l                                           ; $631d: $9d
	ld   a, e                                        ; $631e: $7b
	rst  $38                                         ; $631f: $ff
	rst  $38                                         ; $6320: $ff
	dec  c                                           ; $6321: $0d
	nop                                              ; $6322: $00
	ld   a, [bc]                                     ; $6323: $0a
	ld   b, $68                                      ; $6324: $06 $68
	ld   bc, $031c                                   ; $6326: $01 $1c $03
	inc  bc                                          ; $6329: $03
	inc  bc                                          ; $632a: $03
	ld   bc, $0458                                   ; $632b: $01 $58 $04
	ld   a, e                                        ; $632e: $7b
	sbc  d                                           ; $632f: $9a
	ld   h, e                                        ; $6330: $63
	adc  h                                           ; $6331: $8c
	sbc  a                                           ; $6332: $9f
	dec  c                                           ; $6333: $0d
	ld   h, [hl]                                     ; $6334: $66
	sub  c                                           ; $6335: $91
	sbc  [hl]                                        ; $6336: $9e
	adc  h                                           ; $6337: $8c
	ld   l, l                                        ; $6338: $6d
	ld   a, e                                        ; $6339: $7b
	sbc  a                                           ; $633a: $9f
	dec  c                                           ; $633b: $0d
	nop                                              ; $633c: $00
	ld   a, [bc]                                     ; $633d: $0a
	dec  c                                           ; $633e: $0d
	nop                                              ; $633f: $00
	nop                                              ; $6340: $00
	rrca                                             ; $6341: $0f
	nop                                              ; $6342: $00
	ld   bc, $1e09                                   ; $6343: $01 $09 $1e
	nop                                              ; $6346: $00
	rrca                                             ; $6347: $0f
	nop                                              ; $6348: $00
	ld   bc, $df01                                   ; $6349: $01 $01 $df
	db   $ec                                         ; $634c: $ec
	and  e                                           ; $634d: $a3
	ld   h, e                                        ; $634e: $63
	and  c                                           ; $634f: $a1
	ld   [hl], h                                     ; $6350: $74
	sbc  [hl]                                        ; $6351: $9e
	ld   e, b                                        ; $6352: $58
	inc  bc                                          ; $6353: $03
	and  a                                           ; $6354: $a7
	adc  l                                           ; $6355: $8d
	ld   a, h                                        ; $6356: $7c
	inc  b                                           ; $6357: $04
	xor  d                                           ; $6358: $aa
	ld   a, c                                        ; $6359: $79
	ld   a, l                                        ; $635a: $7d
	dec  c                                           ; $635b: $0d
	inc  b                                           ; $635c: $04
	ld   c, c                                        ; $635d: $49
	and  b                                           ; $635e: $a0
	ld   h, l                                        ; $635f: $65
	ld   [hl], h                                     ; $6360: $74
	sbc  c                                           ; $6361: $99
	and  c                                           ; $6362: $a1
	ld   [hl], l                                     ; $6363: $75
	ld   h, a                                        ; $6364: $67
	ld   e, c                                        ; $6365: $59
	ld   sp, hl                                      ; $6366: $f9
	dec  c                                           ; $6367: $0d
	nop                                              ; $6368: $00
	ld   a, [bc]                                     ; $6369: $0a
	inc  e                                           ; $636a: $1c
	inc  bc                                          ; $636b: $03
	nop                                              ; $636c: $00
	nop                                              ; $636d: $00
	ld   bc, $546b                                   ; $636e: $01 $6b $54
	ld   a, e                                        ; $6371: $7b
	rst  $38                                         ; $6372: $ff
	rst  $38                                         ; $6373: $ff
	dec  c                                           ; $6374: $0d
	inc  b                                           ; $6375: $04
	adc  a                                           ; $6376: $8f
	and  b                                           ; $6377: $a0
	inc  b                                           ; $6378: $04
	ld   de, $6ea1                                   ; $6379: $11 $a1 $6e
	sbc  b                                           ; $637c: $98
	sbc  [hl]                                        ; $637d: $9e
	ld   e, b                                        ; $637e: $58
	ld   [bc], a                                     ; $637f: $02
	and  c                                           ; $6380: $a1
	ld   a, c                                        ; $6381: $79
	inc  b                                           ; $6382: $04
	ld   b, l                                        ; $6383: $45
	sbc  b                                           ; $6384: $98
	ld   a, h                                        ; $6385: $7c
	dec  c                                           ; $6386: $0d
	xor  h                                           ; $6387: $ac
	sub  $a8                                         ; $6388: $d6 $a8
	ld   a, c                                        ; $638a: $79
	ld   [bc], a                                     ; $638b: $02
	ld   a, a                                        ; $638c: $7f
	ld   [hl], c                                     ; $638d: $71
	ld   l, l                                        ; $638e: $6d
	sbc  b                                           ; $638f: $98

Call_05a_6390:
	ld   h, l                                        ; $6390: $65
	ld   [hl], h                                     ; $6391: $74
	sbc  c                                           ; $6392: $99
	sbc  l                                           ; $6393: $9d
	sbc  a                                           ; $6394: $9f
	dec  c                                           ; $6395: $0d
	nop                                              ; $6396: $00
	ld   a, [bc]                                     ; $6397: $0a
	add  hl, de                                      ; $6398: $19
	dec  b                                           ; $6399: $05
	inc  bc                                          ; $639a: $03
	ld   e, b                                        ; $639b: $58
	ld   h, a                                        ; $639c: $67
	ld   h, a                                        ; $639d: $67
	adc  a                                           ; $639e: $8f
	ld   a, h                                        ; $639f: $7c
	inc  b                                           ; $63a0: $04
	adc  a                                           ; $63a1: $8f
	ld   a, l                                        ; $63a2: $7d
	ld   d, b                                        ; $63a3: $50
	sbc  b                                           ; $63a4: $98
	adc  h                                           ; $63a5: $8c
	ld   h, a                                        ; $63a6: $67
	ld   e, c                                        ; $63a7: $59
	ld   sp, hl                                      ; $63a8: $f9
	nop                                              ; $63a9: $00
	nop                                              ; $63aa: $00
	ld   l, e                                        ; $63ab: $6b
	ld   a, h                                        ; $63ac: $7c
	xor  h                                           ; $63ad: $ac
	sub  $a8                                         ; $63ae: $d6 $a8
	ld   a, l                                        ; $63b0: $7d
	ld   [hl], a                                     ; $63b1: $77
	ld   h, c                                        ; $63b2: $61
	ld   [hl], l                                     ; $63b3: $75
	ld   h, a                                        ; $63b4: $67
	ld   e, c                                        ; $63b5: $59
	ld   sp, hl                                      ; $63b6: $f9
	nop                                              ; $63b7: $00
	ld   bc, $8c72                                   ; $63b8: $01 $72 $8c
	sub  a                                           ; $63bb: $97
	ld   a, b                                        ; $63bc: $78
	ld   d, d                                        ; $63bd: $52
	inc  bc                                          ; $63be: $03
	and  a                                           ; $63bf: $a7
	inc  b                                           ; $63c0: $04
	xor  d                                           ; $63c1: $aa
	ld   [hl], l                                     ; $63c2: $75
	ld   h, a                                        ; $63c3: $67
	ld   a, e                                        ; $63c4: $7b
	nop                                              ; $63c5: $00
	ld   [bc], a                                     ; $63c6: $02
	rlca                                             ; $63c7: $07
	ld   b, [hl]                                     ; $63c8: $46
	ld   [bc], a                                     ; $63c9: $02
	ld   [bc], a                                     ; $63ca: $02
	inc  bc                                          ; $63cb: $03
	ld   bc, $2000                                   ; $63cc: $01 $00 $20
	nop                                              ; $63cf: $00
	rlca                                             ; $63d0: $07
	sbc  l                                           ; $63d1: $9d
	ld   [bc], a                                     ; $63d2: $02
	ld   [bc], a                                     ; $63d3: $02
	inc  bc                                          ; $63d4: $03
	ld   bc, $2001                                   ; $63d5: $01 $01 $20
	nop                                              ; $63d8: $00
	rlca                                             ; $63d9: $07
	ldh  [rSC], a                                    ; $63da: $e0 $02
	ld   [bc], a                                     ; $63dc: $02
	inc  bc                                          ; $63dd: $03
	ld   bc, $2002                                   ; $63de: $01 $02 $20
	nop                                              ; $63e1: $00
	ld   b, $26                                      ; $63e2: $06 $26
	ld   [bc], a                                     ; $63e4: $02
	inc  e                                           ; $63e5: $1c
	inc  bc                                          ; $63e6: $03
	nop                                              ; $63e7: $00
	nop                                              ; $63e8: $00
	ld   bc, $9166                                   ; $63e9: $01 $66 $91
	ld   d, b                                        ; $63ec: $50
	sbc  [hl]                                        ; $63ed: $9e
	inc  bc                                          ; $63ee: $03
	ret  z                                           ; $63ef: $c8

	ld   a, l                                        ; $63f0: $7d
	inc  b                                           ; $63f1: $04
	di                                               ; $63f2: $f3
	ld   e, d                                        ; $63f3: $5a
	ld   d, b                                        ; $63f4: $50
	sbc  c                                           ; $63f5: $99
	ld   e, c                                        ; $63f6: $59
	sub  a                                           ; $63f7: $97
	sbc  a                                           ; $63f8: $9f
	dec  c                                           ; $63f9: $0d
	nop                                              ; $63fa: $00
	ld   a, [bc]                                     ; $63fb: $0a
	dec  c                                           ; $63fc: $0d
	nop                                              ; $63fd: $00
	nop                                              ; $63fe: $00
	rrca                                             ; $63ff: $0f
	nop                                              ; $6400: $00
	ld   bc, $1e09                                   ; $6401: $01 $09 $1e
	nop                                              ; $6404: $00
	rrca                                             ; $6405: $0f
	nop                                              ; $6406: $00
	ld   bc, $5801                                   ; $6407: $01 $01 $58
	ld   h, a                                        ; $640a: $67
	ld   h, a                                        ; $640b: $67
	adc  a                                           ; $640c: $8f
	ld   a, h                                        ; $640d: $7c
	inc  b                                           ; $640e: $04
	adc  a                                           ; $640f: $8f
	ld   a, l                                        ; $6410: $7d
	ld   d, b                                        ; $6411: $50
	sbc  b                                           ; $6412: $98
	adc  h                                           ; $6413: $8c
	ld   h, a                                        ; $6414: $67
	ld   e, c                                        ; $6415: $59
	ld   sp, hl                                      ; $6416: $f9
	dec  c                                           ; $6417: $0d
	nop                                              ; $6418: $00
	ld   a, [bc]                                     ; $6419: $0a
	inc  e                                           ; $641a: $1c
	inc  bc                                          ; $641b: $03
	inc  bc                                          ; $641c: $03
	inc  bc                                          ; $641d: $03
	dec  e                                           ; $641e: $1d
	ld   b, b                                        ; $641f: $40
	inc  de                                          ; $6420: $13
	inc  bc                                          ; $6421: $03
	inc  de                                          ; $6422: $13
	ld   bc, $2801                                   ; $6423: $01 $01 $28
	nop                                              ; $6426: $00
	ld   bc, $9a6b                                   ; $6427: $01 $6b $9a
	ld   a, b                                        ; $642a: $78
	sub  a                                           ; $642b: $97
	jp   z, $c9ba                                    ; $642c: $ca $ba $c9

	xor  c                                           ; $642f: $a9
	sub  $ba                                         ; $6430: $d6 $ba
	xor  [hl]                                        ; $6432: $ae
	ei                                               ; $6433: $fb
	ld   a, h                                        ; $6434: $7c
	dec  c                                           ; $6435: $0d
	ld   bc, $0307                                   ; $6436: $01 $07 $03
	ld   e, $76                                      ; $6439: $1e $76
	inc  b                                           ; $643b: $04
	and  d                                           ; $643c: $a2
	ld   bc, $5a08                                   ; $643d: $01 $08 $5a
	ld   d, d                                        ; $6440: $52
	ld   d, d                                        ; $6441: $52
	sbc  l                                           ; $6442: $9d
	sub  [hl]                                        ; $6443: $96
	sbc  a                                           ; $6444: $9f
	dec  c                                           ; $6445: $0d
	inc  bc                                          ; $6446: $03
	ld   d, l                                        ; $6447: $55
	ld   [bc], a                                     ; $6448: $02
	ld   e, c                                        ; $6449: $59
	ld   a, c                                        ; $644a: $79
	ld   d, b                                        ; $644b: $50
	sbc  c                                           ; $644c: $99
	ld   e, c                                        ; $644d: $59
	sub  a                                           ; $644e: $97
	inc  b                                           ; $644f: $04
	ld   de, $788d                                   ; $6450: $11 $8d $78
	ld   h, e                                        ; $6453: $63
	ld   d, d                                        ; $6454: $52
	sbc  a                                           ; $6455: $9f
	dec  c                                           ; $6456: $0d
	nop                                              ; $6457: $00
	ld   a, [bc]                                     ; $6458: $0a
	ld   b, $35                                      ; $6459: $06 $35
	inc  bc                                          ; $645b: $03
	rrca                                             ; $645c: $0f
	nop                                              ; $645d: $00
	ld   bc, $6b01                                   ; $645e: $01 $01 $6b
	ld   a, h                                        ; $6461: $7c
	xor  h                                           ; $6462: $ac
	sub  $a8                                         ; $6463: $d6 $a8
	ld   a, l                                        ; $6465: $7d
	ld   [hl], a                                     ; $6466: $77
	ld   h, c                                        ; $6467: $61
	ld   a, c                                        ; $6468: $79
	ld   d, b                                        ; $6469: $50
	sbc  c                                           ; $646a: $99
	ld   a, h                                        ; $646b: $7c
	dec  c                                           ; $646c: $0d
	ld   [hl], l                                     ; $646d: $75
	ld   h, a                                        ; $646e: $67
	ld   e, c                                        ; $646f: $59
	ld   sp, hl                                      ; $6470: $f9
	dec  c                                           ; $6471: $0d
	nop                                              ; $6472: $00
	ld   a, [bc]                                     ; $6473: $0a
	inc  e                                           ; $6474: $1c
	inc  bc                                          ; $6475: $03
	inc  bc                                          ; $6476: $03
	inc  bc                                          ; $6477: $03
	ld   bc, $a002                                   ; $6478: $01 $02 $a0
	ld   e, l                                        ; $647b: $5d
	ld   a, c                                        ; $647c: $79
	ld   d, b                                        ; $647d: $50
	sbc  c                                           ; $647e: $99
	sbc  l                                           ; $647f: $9d
	sub  [hl]                                        ; $6480: $96
	sbc  a                                           ; $6481: $9f
	dec  c                                           ; $6482: $0d
	ld   [bc], a                                     ; $6483: $02
	ld   e, b                                        ; $6484: $58
	ld   [bc], a                                     ; $6485: $02
	add  [hl]                                        ; $6486: $86
	ld   e, d                                        ; $6487: $5a
	ld   d, b                                        ; $6488: $50
	ld   [hl], c                                     ; $6489: $71
	ld   l, l                                        ; $648a: $6d
	sub  a                                           ; $648b: $97
	sbc  [hl]                                        ; $648c: $9e
	ld   [hl], d                                     ; $648d: $72
	sbc  d                                           ; $648e: $9a
	ld   [hl], h                                     ; $648f: $74
	ld   d, d                                        ; $6490: $52
	ld   [hl], c                                     ; $6491: $71
	ld   [hl], h                                     ; $6492: $74
	dec  c                                           ; $6493: $0d
	ld   d, b                                        ; $6494: $50
	ld   h, b                                        ; $6495: $60
	sbc  c                                           ; $6496: $99
	sbc  l                                           ; $6497: $9d
	sbc  a                                           ; $6498: $9f
	dec  c                                           ; $6499: $0d
	nop                                              ; $649a: $00
	ld   a, [bc]                                     ; $649b: $0a
	ld   b, $35                                      ; $649c: $06 $35
	inc  bc                                          ; $649e: $03
	rrca                                             ; $649f: $0f
	nop                                              ; $64a0: $00
	ld   bc, $7201                                   ; $64a1: $01 $01 $72
	adc  h                                           ; $64a4: $8c
	sub  a                                           ; $64a5: $97
	ld   a, b                                        ; $64a6: $78
	ld   d, d                                        ; $64a7: $52
	inc  bc                                          ; $64a8: $03
	and  a                                           ; $64a9: $a7
	inc  b                                           ; $64aa: $04
	xor  d                                           ; $64ab: $aa
	ld   [hl], l                                     ; $64ac: $75
	ld   h, a                                        ; $64ad: $67
	ld   a, e                                        ; $64ae: $7b
	rst  $38                                         ; $64af: $ff
	rst  $38                                         ; $64b0: $ff
	dec  c                                           ; $64b1: $0d
	nop                                              ; $64b2: $00
	ld   a, [bc]                                     ; $64b3: $0a
	inc  e                                           ; $64b4: $1c
	inc  bc                                          ; $64b5: $03
	ld   [bc], a                                     ; $64b6: $02
	ld   [bc], a                                     ; $64b7: $02
	dec  e                                           ; $64b8: $1d
	ld   b, b                                        ; $64b9: $40
	inc  de                                          ; $64ba: $13
	inc  bc                                          ; $64bb: $03
	inc  de                                          ; $64bc: $13
	ld   bc, $2902                                   ; $64bd: $01 $02 $29
	nop                                              ; $64c0: $00
	ld   bc, $8c72                                   ; $64c1: $01 $72 $8c
	sub  a                                           ; $64c4: $97
	ld   a, b                                        ; $64c5: $78
	ld   d, d                                        ; $64c6: $52
	ld   e, c                                        ; $64c7: $59
	ld   [hl], a                                     ; $64c8: $77
	ld   d, h                                        ; $64c9: $54
	ld   e, c                                        ; $64ca: $59
	ld   a, l                                        ; $64cb: $7d
	dec  c                                           ; $64cc: $0d
	nop                                              ; $64cd: $00
	dec  b                                           ; $64ce: $05
	ld   b, b                                        ; $64cf: $40
	ld   c, d                                        ; $64d0: $4a
	ld   [bc], a                                     ; $64d1: $02
	nop                                              ; $64d2: $00
	nop                                              ; $64d3: $00
	ld   bc, $8203                                   ; $64d4: $01 $03 $82
	ld   l, e                                        ; $64d7: $6b
	sbc  d                                           ; $64d8: $9a
	ld   l, h                                        ; $64d9: $6c
	sbc  d                                           ; $64da: $9a
	ld   a, h                                        ; $64db: $7c
	ld   [bc], a                                     ; $64dc: $02
	rst  $38                                         ; $64dd: $ff
	ld   e, a                                        ; $64de: $5f
	inc  bc                                          ; $64df: $03
	ld   b, c                                        ; $64e0: $41
	adc  a                                           ; $64e1: $8f
	inc  b                                           ; $64e2: $04
	ld   a, b                                        ; $64e3: $78
	dec  c                                           ; $64e4: $0d
	nop                                              ; $64e5: $00
	dec  b                                           ; $64e6: $05
	ld   b, b                                        ; $64e7: $40
	ld   d, b                                        ; $64e8: $50
	ld   bc, $0001                                   ; $64e9: $01 $01 $00
	ld   bc, $6575                                   ; $64ec: $01 $75 $65
	sub  l                                           ; $64ef: $95
	ld   a, [$000d]                                  ; $64f0: $fa $0d $00
	ld   a, [bc]                                     ; $64f3: $0a
	ld   bc, $9166                                   ; $64f4: $01 $66 $91
	ld   d, b                                        ; $64f7: $50
	sbc  [hl]                                        ; $64f8: $9e
	inc  bc                                          ; $64f9: $03
	ret  z                                           ; $64fa: $c8

	ld   a, l                                        ; $64fb: $7d
	inc  b                                           ; $64fc: $04
	di                                               ; $64fd: $f3
	ld   e, d                                        ; $64fe: $5a
	ld   d, b                                        ; $64ff: $50
	sbc  c                                           ; $6500: $99
	ld   e, c                                        ; $6501: $59
	sub  a                                           ; $6502: $97
	sbc  a                                           ; $6503: $9f
	dec  c                                           ; $6504: $0d
	nop                                              ; $6505: $00
	ld   a, [bc]                                     ; $6506: $0a
	dec  c                                           ; $6507: $0d
	nop                                              ; $6508: $00
	nop                                              ; $6509: $00
	rrca                                             ; $650a: $0f
	nop                                              ; $650b: $00
	ld   bc, $1e09                                   ; $650c: $01 $09 $1e
	nop                                              ; $650f: $00
	rrca                                             ; $6510: $0f
	nop                                              ; $6511: $00
	ld   bc, $5001                                   ; $6512: $01 $01 $50
	sub  d                                           ; $6515: $92
	adc  a                                           ; $6516: $8f
	ld   h, e                                        ; $6517: $63
	and  c                                           ; $6518: $a1
	ld   [hl], h                                     ; $6519: $74
	sbc  [hl]                                        ; $651a: $9e
	rst  JumpTable                                         ; $651b: $df
	db   $ec                                         ; $651c: $ec
	and  e                                           ; $651d: $a3
	ld   h, e                                        ; $651e: $63
	and  c                                           ; $651f: $a1
	ld   e, c                                        ; $6520: $59
	sub  a                                           ; $6521: $97
	dec  c                                           ; $6522: $0d
	ld   [bc], a                                     ; $6523: $02
	sub  l                                           ; $6524: $95
	ld   [hl], h                                     ; $6525: $74
	sbc  [hl]                                        ; $6526: $9e
	ld   [hl], a                                     ; $6527: $77
	and  c                                           ; $6528: $a1
	ld   a, b                                        ; $6529: $78
	inc  b                                           ; $652a: $04
	ld   a, b                                        ; $652b: $78
	ld   [hl], l                                     ; $652c: $75
	ld   h, a                                        ; $652d: $67
	ld   e, c                                        ; $652e: $59
	ld   sp, hl                                      ; $652f: $f9
	dec  c                                           ; $6530: $0d
	nop                                              ; $6531: $00
	ld   a, [bc]                                     ; $6532: $0a
	inc  e                                           ; $6533: $1c
	inc  bc                                          ; $6534: $03
	nop                                              ; $6535: $00
	nop                                              ; $6536: $00
	ld   bc, $546b                                   ; $6537: $01 $6b $54
	ld   a, e                                        ; $653a: $7b
	rst  $38                                         ; $653b: $ff
	rst  $38                                         ; $653c: $ff
	halt                                             ; $653d: $76
	ld   [hl], h                                     ; $653e: $74
	sub  b                                           ; $653f: $90
	cp   d                                           ; $6540: $ba
	rst  ToBoot                                         ; $6541: $c7
	xor  [hl]                                        ; $6542: $ae
	ld   a, b                                        ; $6543: $78
	dec  c                                           ; $6544: $0d
	inc  bc                                          ; $6545: $03
	ld   l, [hl]                                     ; $6546: $6e
	ld   [bc], a                                     ; $6547: $02
	db   $fc                                         ; $6548: $fc
	ld   l, [hl]                                     ; $6549: $6e
	halt                                             ; $654a: $76
	dec  b                                           ; $654b: $05
	pop  de                                          ; $654c: $d1
	ld   d, h                                        ; $654d: $54
	sbc  l                                           ; $654e: $9d
	sbc  a                                           ; $654f: $9f
	dec  c                                           ; $6550: $0d
	dec  b                                           ; $6551: $05
	ld   a, d                                        ; $6552: $7a
	inc  bc                                          ; $6553: $03
	add  d                                           ; $6554: $82
	halt                                             ; $6555: $76
	ld   h, l                                        ; $6556: $65
	ld   [hl], h                                     ; $6557: $74
	sub  b                                           ; $6558: $90
	dec  b                                           ; $6559: $05
	ld   d, $04                                      ; $655a: $16 $04
	sbc  l                                           ; $655c: $9d
	ld   l, [hl]                                     ; $655d: $6e
	ld   h, l                                        ; $655e: $65
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	dec  c                                           ; $6561: $0d
	nop                                              ; $6562: $00
	ld   a, [bc]                                     ; $6563: $0a
	ld   bc, $1d06                                   ; $6564: $01 $06 $1d
	inc  bc                                          ; $6567: $03
	ld   l, [hl]                                     ; $6568: $6e
	ld   e, d                                        ; $6569: $5a
	ld   d, d                                        ; $656a: $52
	ld   a, b                                        ; $656b: $78
	ld   e, c                                        ; $656c: $59
	ld   [hl], c                                     ; $656d: $71
	ld   l, l                                        ; $656e: $6d
	sub  a                                           ; $656f: $97
	sbc  [hl]                                        ; $6570: $9e
	inc  bc                                          ; $6571: $03
	ret  z                                           ; $6572: $c8

	ld   e, d                                        ; $6573: $5a
	dec  c                                           ; $6574: $0d
	ld   h, c                                        ; $6575: $61
	ld   h, c                                        ; $6576: $61
	ld   a, c                                        ; $6577: $79
	dec  b                                           ; $6578: $05
	db   $10                                         ; $6579: $10
	sbc  c                                           ; $657a: $99
	ld   h, c                                        ; $657b: $61
	halt                                             ; $657c: $76
	ld   a, l                                        ; $657d: $7d
	ld   a, b                                        ; $657e: $78
	ld   e, c                                        ; $657f: $59
	ld   [hl], c                                     ; $6580: $71
	ld   l, l                                        ; $6581: $6d
	halt                                             ; $6582: $76
	dec  c                                           ; $6583: $0d
	dec  b                                           ; $6584: $05
	pop  de                                          ; $6585: $d1
	ld   d, h                                        ; $6586: $54
	sbc  l                                           ; $6587: $9d
	sbc  a                                           ; $6588: $9f
	dec  c                                           ; $6589: $0d
	nop                                              ; $658a: $00
	ld   a, [bc]                                     ; $658b: $0a
	ld   bc, $9166                                   ; $658c: $01 $66 $91
	ld   d, b                                        ; $658f: $50
	sbc  [hl]                                        ; $6590: $9e
	inc  bc                                          ; $6591: $03
	ret  z                                           ; $6592: $c8

	ld   a, l                                        ; $6593: $7d
	inc  b                                           ; $6594: $04
	di                                               ; $6595: $f3
	ld   e, d                                        ; $6596: $5a

Call_05a_6597:
	ld   d, b                                        ; $6597: $50
	sbc  c                                           ; $6598: $99
	ld   e, c                                        ; $6599: $59
	sub  a                                           ; $659a: $97
	sbc  a                                           ; $659b: $9f
	dec  c                                           ; $659c: $0d
	nop                                              ; $659d: $00
	ld   a, [bc]                                     ; $659e: $0a
	dec  c                                           ; $659f: $0d
	nop                                              ; $65a0: $00
	nop                                              ; $65a1: $00
	rrca                                             ; $65a2: $0f
	nop                                              ; $65a3: $00
	ld   bc, $1e09                                   ; $65a4: $01 $09 $1e
	nop                                              ; $65a7: $00
	nop                                              ; $65a8: $00
	inc  b                                           ; $65a9: $04
	add  b                                           ; $65aa: $80
	push bc                                          ; $65ab: $c5
	ld   bc, $2000                                   ; $65ac: $01 $00 $20
	nop                                              ; $65af: $00
	ld   c, $56                                      ; $65b0: $0e $56
	inc  e                                           ; $65b2: $1c
	inc  b                                           ; $65b3: $04
	ld   hl, $0209                                   ; $65b4: $21 $09 $02
	ld   bc, $9752                                   ; $65b7: $01 $52 $97
	ld   [hl], c                                     ; $65ba: $71
	ld   h, l                                        ; $65bb: $65
	sub  c                                           ; $65bc: $91
	ld   d, d                                        ; $65bd: $52
	sbc  [hl]                                        ; $65be: $9e
	dec  c                                           ; $65bf: $0d
	ld   l, a                                        ; $65c0: $6f
	ld   d, d                                        ; $65c1: $52
	ld   [bc], a                                     ; $65c2: $02
	inc  de                                          ; $65c3: $13
	ld   l, a                                        ; $65c4: $6f
	sub  c                                           ; $65c5: $91
	and  c                                           ; $65c6: $a1
	sbc  a                                           ; $65c7: $9f
	dec  c                                           ; $65c8: $0d
	nop                                              ; $65c9: $00
	ld   a, [bc]                                     ; $65ca: $0a
	ld   bc, $a5a3                                   ; $65cb: $01 $a3 $a5
	db   $ec                                         ; $65ce: $ec
	cp   d                                           ; $65cf: $ba
	sbc  [hl]                                        ; $65d0: $9e
	ld   l, a                                        ; $65d1: $6f
	sub  l                                           ; $65d2: $95
	ld   [hl], c                                     ; $65d3: $71
	halt                                             ; $65d4: $76
	dec  c                                           ; $65d5: $0d
	ld   e, b                                        ; $65d6: $58
	ld   [hl], l                                     ; $65d7: $75
	ld   e, c                                        ; $65d8: $59
	ld   e, a                                        ; $65d9: $5f
	ld   h, l                                        ; $65da: $65
	ld   [hl], h                                     ; $65db: $74
	ld   e, l                                        ; $65dc: $5d
	sbc  c                                           ; $65dd: $99
	ld   e, c                                        ; $65de: $59
	sub  a                                           ; $65df: $97
	dec  c                                           ; $65e0: $0d
	cp   c                                           ; $65e1: $b9
	push hl                                          ; $65e2: $e5
	push af                                          ; $65e3: $f5
	sbc  $fb                                         ; $65e4: $de $fb
	db   $ed                                         ; $65e6: $ed
	halt                                             ; $65e7: $76
	ld   d, b                                        ; $65e8: $50
	ld   l, e                                        ; $65e9: $6b
	and  c                                           ; $65ea: $a1
	ld   [hl], l                                     ; $65eb: $75
	ld   [hl], h                                     ; $65ec: $74
	ld   a, e                                        ; $65ed: $7b
	sbc  a                                           ; $65ee: $9f
	dec  c                                           ; $65ef: $0d
	nop                                              ; $65f0: $00
	ld   a, [bc]                                     ; $65f1: $0a
	db   $10                                         ; $65f2: $10
	ld   h, $00                                      ; $65f3: $26 $00
	add  hl, bc                                      ; $65f5: $09
	ld   e, d                                        ; $65f6: $5a
	dec  c                                           ; $65f7: $0d
	nop                                              ; $65f8: $00
	nop                                              ; $65f9: $00
	rrca                                             ; $65fa: $0f
	nop                                              ; $65fb: $00
	ld   bc, $0101                                   ; $65fc: $01 $01 $01
	inc  bc                                          ; $65ff: $03
	ld   [bc], a                                     ; $6600: $02
	call nc, $2c02                                   ; $6601: $d4 $02 $2c
	ld   a, c                                        ; $6604: $79
	ld   [bc], a                                     ; $6605: $02
	rla                                              ; $6606: $17
	ld   h, l                                        ; $6607: $65
	ld   [hl], d                                     ; $6608: $72
	ld   e, a                                        ; $6609: $5f
	sub  a                                           ; $660a: $97
	sbc  d                                           ; $660b: $9a
	ld   l, l                                        ; $660c: $6d
	rst  $38                                         ; $660d: $ff
	rst  $38                                         ; $660e: $ff
	ld   bc, $0d04                                   ; $660f: $01 $04 $0d
	nop                                              ; $6612: $00
	ld   a, [bc]                                     ; $6613: $0a
	add  hl, de                                      ; $6614: $19
	rrca                                             ; $6615: $0f
	ld   bc, $5490                                   ; $6616: $01 $90 $54
	sub  d                                           ; $6619: $92
	adc  a                                           ; $661a: $8f
	sbc  c                                           ; $661b: $99
	nop                                              ; $661c: $00
	nop                                              ; $661d: $00
	rlca                                             ; $661e: $07
	cp   h                                           ; $661f: $bc
	nop                                              ; $6620: $00
	ld   [bc], a                                     ; $6621: $02
	inc  bc                                          ; $6622: $03
	ld   bc, $2000                                   ; $6623: $01 $00 $20
	nop                                              ; $6626: $00
	ld   b, $7a                                      ; $6627: $06 $7a
	nop                                              ; $6629: $00
	inc  e                                           ; $662a: $1c
	inc  b                                           ; $662b: $04
	jr   nz, jr_05a_6636                             ; $662c: $20 $08

	ld   bc, $6e6d                                   ; $662e: $01 $6d $6e
	ld   d, d                                        ; $6631: $52
	adc  h                                           ; $6632: $8c
	ei                                               ; $6633: $fb
	sbc  a                                           ; $6634: $9f
	dec  c                                           ; $6635: $0d

jr_05a_6636:
	nop                                              ; $6636: $00
	ld   a, [bc]                                     ; $6637: $0a
	inc  e                                           ; $6638: $1c
	inc  b                                           ; $6639: $04
	ld   hl, $1d09                                   ; $663a: $21 $09 $1d
	ld   b, b                                        ; $663d: $40
	inc  d                                           ; $663e: $14
	inc  bc                                          ; $663f: $03
	inc  d                                           ; $6640: $14
	ld   bc, $2803                                   ; $6641: $01 $03 $28
	nop                                              ; $6644: $00
	ld   bc, $916f                                   ; $6645: $01 $6f $91
	and  c                                           ; $6648: $a1
	halt                                             ; $6649: $76
	sbc  [hl]                                        ; $664a: $9e
	ld   d, b                                        ; $664b: $50
	ld   l, e                                        ; $664c: $6b
	and  c                                           ; $664d: $a1
	ld   [hl], l                                     ; $664e: $75
	ld   [hl], h                                     ; $664f: $74
	dec  c                                           ; $6650: $0d
	ld   e, l                                        ; $6651: $5d
	sbc  d                                           ; $6652: $9a
	ld   l, l                                        ; $6653: $6d
	and  c                                           ; $6654: $a1
	ld   l, [hl]                                     ; $6655: $6e
	ld   a, e                                        ; $6656: $7b
	rst  $38                                         ; $6657: $ff
	rst  $38                                         ; $6658: $ff
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
	rrca                                             ; $666c: $0f
	nop                                              ; $666d: $00
	ld   bc, $4005                                   ; $666e: $01 $05 $40
	ld   c, e                                        ; $6671: $4b
	ld   [bc], a                                     ; $6672: $02
	nop                                              ; $6673: $00
	nop                                              ; $6674: $00
	ld   bc, $fb92                                   ; $6675: $01 $92 $fb
	adc  a                                           ; $6678: $8f
	ld   l, l                                        ; $6679: $6d
	sbc  a                                           ; $667a: $9f
	dec  c                                           ; $667b: $0d
	nop                                              ; $667c: $00
	ld   a, [bc]                                     ; $667d: $0a
	dec  b                                           ; $667e: $05
	add  b                                           ; $667f: $80
	ld   b, e                                        ; $6680: $43
	ld   bc, $0001                                   ; $6681: $01 $01 $00
	dec  b                                           ; $6684: $05
	ld   b, b                                        ; $6685: $40
	ld   d, c                                        ; $6686: $51
	ld   bc, $0001                                   ; $6687: $01 $01 $00
	nop                                              ; $668a: $00
	nop                                              ; $668b: $00
	inc  b                                           ; $668c: $04
	add  b                                           ; $668d: $80
	pop  bc                                          ; $668e: $c1
	ld   bc, $2000                                   ; $668f: $01 $00 $20
	nop                                              ; $6692: $00
	inc  e                                           ; $6693: $1c
	ld   bc, $0000                                   ; $6694: $01 $00 $00
	ld   [bc], a                                     ; $6697: $02
	ld   bc, $9750                                   ; $6698: $01 $50 $97
	sbc  [hl]                                        ; $669b: $9e
	ld   [$6300], sp                                 ; $669c: $08 $00 $63
	and  c                                           ; $669f: $a1
	rst  $38                                         ; $66a0: $ff
	rst  $38                                         ; $66a1: $ff
	dec  c                                           ; $66a2: $0d
	ld   [hl], a                                     ; $66a3: $77
	ld   d, h                                        ; $66a4: $54
	ld   h, l                                        ; $66a5: $65
	ld   l, l                                        ; $66a6: $6d
	and  c                                           ; $66a7: $a1
	ld   [hl], l                                     ; $66a8: $75
	ld   h, a                                        ; $66a9: $67
	ld   e, c                                        ; $66aa: $59
	ld   sp, hl                                      ; $66ab: $f9
	dec  c                                           ; $66ac: $0d
	nop                                              ; $66ad: $00
	ld   a, [bc]                                     ; $66ae: $0a
	add  hl, de                                      ; $66af: $19
	dec  b                                           ; $66b0: $05
	inc  bc                                          ; $66b1: $03
	ld   e, a                                        ; $66b2: $5f
	ld   d, d                                        ; $66b3: $52
	ld   h, c                                        ; $66b4: $61
	and  b                                           ; $66b5: $a0
	ld   [hl], d                                     ; $66b6: $72
	ld   e, a                                        ; $66b7: $5f
	ld   [hl], h                                     ; $66b8: $74
	sub  b                                           ; $66b9: $90
	sub  a                                           ; $66ba: $97
	ld   d, h                                        ; $66bb: $54
	nop                                              ; $66bc: $00
	nop                                              ; $66bd: $00
	inc  bc                                          ; $66be: $03
	and  a                                           ; $66bf: $a7
	inc  b                                           ; $66c0: $04
	xor  d                                           ; $66c1: $aa
	ld   a, h                                        ; $66c2: $7c
	ld   h, a                                        ; $66c3: $67
	ld   h, d                                        ; $66c4: $62
	ld   h, l                                        ; $66c5: $65
	inc  b                                           ; $66c6: $04
	ld   a, b                                        ; $66c7: $78
	ld   a, c                                        ; $66c8: $79
	ld   [hl], d                                     ; $66c9: $72
	ld   d, d                                        ; $66ca: $52
	ld   [hl], h                                     ; $66cb: $74
	ld   [bc], a                                     ; $66cc: $02
	jp   nz, $005d                                   ; $66cd: $c2 $5d $00

	ld   bc, $a5a3                                   ; $66d0: $01 $a3 $a5
	db   $ec                                         ; $66d3: $ec
	cp   d                                           ; $66d4: $ba
	ld   a, c                                        ; $66d5: $79
	ld   [hl], d                                     ; $66d6: $72
	ld   d, d                                        ; $66d7: $52
	ld   [hl], h                                     ; $66d8: $74
	ld   [bc], a                                     ; $66d9: $02
	jp   nz, $005d                                   ; $66da: $c2 $5d $00

	ld   [bc], a                                     ; $66dd: $02
	rlca                                             ; $66de: $07
	ld   h, h                                        ; $66df: $64
	ld   bc, $0302                                   ; $66e0: $01 $02 $03
	ld   bc, $2000                                   ; $66e3: $01 $00 $20
	nop                                              ; $66e6: $00
	rlca                                             ; $66e7: $07
	add  e                                           ; $66e8: $83
	ld   [bc], a                                     ; $66e9: $02
	ld   [bc], a                                     ; $66ea: $02
	inc  bc                                          ; $66eb: $03
	ld   bc, $2001                                   ; $66ec: $01 $01 $20
	nop                                              ; $66ef: $00
	rlca                                             ; $66f0: $07
	jr   @+$05                                       ; $66f1: $18 $03

	ld   [bc], a                                     ; $66f3: $02
	inc  bc                                          ; $66f4: $03
	ld   bc, $2002                                   ; $66f5: $01 $02 $20
	nop                                              ; $66f8: $00
	ld   b, $69                                      ; $66f9: $06 $69
	nop                                              ; $66fb: $00
	rrca                                             ; $66fc: $0f
	nop                                              ; $66fd: $00
	ld   bc, $ff01                                   ; $66fe: $01 $01 $ff
	rst  $38                                         ; $6701: $ff
	rst  $38                                         ; $6702: $ff
	rst  $38                                         ; $6703: $ff
	dec  c                                           ; $6704: $0d
	nop                                              ; $6705: $00
	ld   a, [bc]                                     ; $6706: $0a
	rlca                                             ; $6707: $07
	sub  l                                           ; $6708: $95
	nop                                              ; $6709: $00
	inc  bc                                          ; $670a: $03
	ld   de, $a001                                   ; $670b: $11 $01 $a0
	inc  h                                           ; $670e: $24
	nop                                              ; $670f: $00
	rlca                                             ; $6710: $07
	jp   nc, $0300                                   ; $6711: $d2 $00 $03

	ld   de, $a001                                   ; $6714: $11 $01 $a0
	inc  hl                                          ; $6717: $23
	inc  bc                                          ; $6718: $03
	ld   de, $8c01                                   ; $6719: $11 $01 $8c
	inc  h                                           ; $671c: $24
	inc  e                                           ; $671d: $1c
	nop                                              ; $671e: $00
	rlca                                             ; $671f: $07
	rla                                              ; $6720: $17
	ld   bc, $1103                                   ; $6721: $01 $03 $11
	ld   bc, $238c                                   ; $6724: $01 $8c $23
	nop                                              ; $6727: $00
	inc  e                                           ; $6728: $1c
	ld   bc, $0505                                   ; $6729: $01 $05 $05
	dec  e                                           ; $672c: $1d
	ld   b, b                                        ; $672d: $40
	ld   de, $1103                                   ; $672e: $11 $03 $11
	ld   bc, $2802                                   ; $6731: $01 $02 $28
	nop                                              ; $6734: $00
	ld   bc, $6e92                                   ; $6735: $01 $92 $6e
	rst  $38                                         ; $6738: $ff
	rst  $38                                         ; $6739: $ff
	dec  c                                           ; $673a: $0d
	ld   l, e                                        ; $673b: $6b
	and  c                                           ; $673c: $a1
	ld   a, b                                        ; $673d: $78
	ld   [bc], a                                     ; $673e: $02
	sub  l                                           ; $673f: $95
	ld   [hl], d                                     ; $6740: $72
	adc  a                                           ; $6741: $8f
	ld   a, b                                        ; $6742: $78
	ld   d, d                                        ; $6743: $52
	ld   [hl], l                                     ; $6744: $75
	ld   [bc], a                                     ; $6745: $02
	inc  [hl]                                        ; $6746: $34
	ld   h, e                                        ; $6747: $63
	ld   d, d                                        ; $6748: $52
	rst  $38                                         ; $6749: $ff
	rst  $38                                         ; $674a: $ff
	dec  c                                           ; $674b: $0d
	nop                                              ; $674c: $00
	ld   a, [bc]                                     ; $674d: $0a
	ld   bc, $9e65                                   ; $674e: $01 $65 $9e
	inc  bc                                          ; $6751: $03
	add  e                                           ; $6752: $83
	dec  b                                           ; $6753: $05
	dec  c                                           ; $6754: $0d
	ld   h, l                                        ; $6755: $65
	adc  h                                           ; $6756: $8c
	ld   h, a                                        ; $6757: $67
	ld   a, [$000d]                                  ; $6758: $fa $0d $00
	ld   a, [bc]                                     ; $675b: $0a
	dec  c                                           ; $675c: $0d
	nop                                              ; $675d: $00
	nop                                              ; $675e: $00
	rrca                                             ; $675f: $0f
	nop                                              ; $6760: $00
	ld   bc, $1e09                                   ; $6761: $01 $09 $1e
	nop                                              ; $6764: $00
	inc  e                                           ; $6765: $1c
	ld   bc, $0303                                   ; $6766: $01 $03 $03
	ld   bc, $4904                                   ; $6769: $01 $04 $49
	ld   e, c                                        ; $676c: $59
	ld   d, b                                        ; $676d: $50
	ld   l, l                                        ; $676e: $6d
	ld   h, l                                        ; $676f: $65
	ld   a, h                                        ; $6770: $7c
	ld   [bc], a                                     ; $6771: $02
	ld   [hl], d                                     ; $6772: $72
	ld   a, c                                        ; $6773: $79
	dec  c                                           ; $6774: $0d

Jump_05a_6775:
	ld   [hl], d                                     ; $6775: $72

Call_05a_6776:
	ld   d, d                                        ; $6776: $52
	ld   [hl], h                                     ; $6777: $74
	adc  h                                           ; $6778: $8c
	ld   h, a                                        ; $6779: $67
	ld   e, c                                        ; $677a: $59
	ld   sp, hl                                      ; $677b: $f9
	dec  c                                           ; $677c: $0d
	nop                                              ; $677d: $00
	ld   a, [bc]                                     ; $677e: $0a
	rrca                                             ; $677f: $0f
	nop                                              ; $6780: $00
	ld   bc, $5201                                   ; $6781: $01 $01 $52
	sbc  [hl]                                        ; $6784: $9e
	ld   d, d                                        ; $6785: $52
	ld   d, [hl]                                     ; $6786: $56
	rst  $38                                         ; $6787: $ff
	rst  $38                                         ; $6788: $ff
	dec  c                                           ; $6789: $0d
	nop                                              ; $678a: $00
	ld   a, [bc]                                     ; $678b: $0a
	inc  e                                           ; $678c: $1c
	ld   bc, $0000                                   ; $678d: $01 $00 $00
	ld   bc, $9166                                   ; $6790: $01 $66 $91
	sbc  [hl]                                        ; $6793: $9e
	ld   d, b                                        ; $6794: $50
	ld   l, l                                        ; $6795: $6d
	ld   h, l                                        ; $6796: $65
	ld   [bc], a                                     ; $6797: $02
	ld   a, a                                        ; $6798: $7f
	ld   e, e                                        ; $6799: $5b
	adc  h                                           ; $679a: $8c
	ld   h, a                                        ; $679b: $67
	ld   a, e                                        ; $679c: $7b
	sbc  a                                           ; $679d: $9f
	dec  c                                           ; $679e: $0d
	nop                                              ; $679f: $00
	ld   a, [bc]                                     ; $67a0: $0a
	dec  c                                           ; $67a1: $0d
	nop                                              ; $67a2: $00
	nop                                              ; $67a3: $00
	rrca                                             ; $67a4: $0f
	nop                                              ; $67a5: $00
	ld   bc, $1e09                                   ; $67a6: $01 $09 $1e
	nop                                              ; $67a9: $00
	inc  e                                           ; $67aa: $1c
	ld   bc, $0707                                   ; $67ab: $01 $07 $07
	ld   bc, $0462                                   ; $67ae: $01 $62 $04
	di                                               ; $67b1: $f3
	ld   e, d                                        ; $67b2: $5a
	ld   d, b                                        ; $67b3: $50
	sbc  c                                           ; $67b4: $99
	and  c                                           ; $67b5: $a1
	ld   h, [hl]                                     ; $67b6: $66
	sub  c                                           ; $67b7: $91
	dec  c                                           ; $67b8: $0d
	ld   a, b                                        ; $67b9: $78
	ld   e, c                                        ; $67ba: $59
	ld   [hl], c                                     ; $67bb: $71
	ld   l, l                                        ; $67bc: $6d
	and  c                                           ; $67bd: $a1
	ld   [hl], l                                     ; $67be: $75
	ld   h, a                                        ; $67bf: $67
	ld   e, c                                        ; $67c0: $59
	ld   sp, hl                                      ; $67c1: $f9
	dec  c                                           ; $67c2: $0d
	nop                                              ; $67c3: $00
	ld   a, [bc]                                     ; $67c4: $0a
	dec  e                                           ; $67c5: $1d
	ld   b, b                                        ; $67c6: $40
	ld   de, $1103                                   ; $67c7: $11 $03 $11
	ld   bc, $2902                                   ; $67ca: $01 $02 $29
	nop                                              ; $67cd: $00
	ld   bc, $4904                                   ; $67ce: $01 $04 $49
	sub  b                                           ; $67d1: $90
	ld   a, b                                        ; $67d2: $78
	ld   d, d                                        ; $67d3: $52
	ld   a, b                                        ; $67d4: $78
	sub  a                                           ; $67d5: $97
	ld   [bc], a                                     ; $67d6: $02
	ld   a, a                                        ; $67d7: $7f
	ld   e, e                                        ; $67d8: $5b
	adc  h                                           ; $67d9: $8c
	ld   h, a                                        ; $67da: $67
	sub  [hl]                                        ; $67db: $96
	sbc  a                                           ; $67dc: $9f
	dec  c                                           ; $67dd: $0d
	ld   l, e                                        ; $67de: $6b
	sbc  d                                           ; $67df: $9a
	ld   h, [hl]                                     ; $67e0: $66
	sub  c                                           ; $67e1: $91
	sbc  [hl]                                        ; $67e2: $9e
	inc  bc                                          ; $67e3: $03
	add  e                                           ; $67e4: $83
	dec  b                                           ; $67e5: $05
	dec  c                                           ; $67e6: $0d
	ld   h, l                                        ; $67e7: $65
	adc  h                                           ; $67e8: $8c
	ld   h, a                                        ; $67e9: $67
	sbc  a                                           ; $67ea: $9f
	dec  c                                           ; $67eb: $0d
	nop                                              ; $67ec: $00
	ld   a, [bc]                                     ; $67ed: $0a
	dec  c                                           ; $67ee: $0d
	nop                                              ; $67ef: $00
	nop                                              ; $67f0: $00
	rrca                                             ; $67f1: $0f
	nop                                              ; $67f2: $00
	ld   bc, $1e09                                   ; $67f3: $01 $09 $1e
	nop                                              ; $67f6: $00
	rrca                                             ; $67f7: $0f
	nop                                              ; $67f8: $00
	ld   bc, $0401                                   ; $67f9: $01 $01 $04
	ld   l, l                                        ; $67fc: $6d
	ld   a, c                                        ; $67fd: $79
	sbc  [hl]                                        ; $67fe: $9e
	ld   e, a                                        ; $67ff: $5f
	ld   d, d                                        ; $6800: $52
	ld   h, c                                        ; $6801: $61
	and  b                                           ; $6802: $a0
	dec  c                                           ; $6803: $0d
	ld   [hl], d                                     ; $6804: $72
	ld   e, a                                        ; $6805: $5f
	ld   [hl], h                                     ; $6806: $74
	sub  b                                           ; $6807: $90
	sub  a                                           ; $6808: $97
	ld   d, [hl]                                     ; $6809: $56
	adc  h                                           ; $680a: $8c
	ld   l, c                                        ; $680b: $69
	and  c                                           ; $680c: $a1
	ld   e, c                                        ; $680d: $59
	ld   sp, hl                                      ; $680e: $f9
	dec  c                                           ; $680f: $0d
	nop                                              ; $6810: $00
	ld   a, [bc]                                     ; $6811: $0a
	inc  e                                           ; $6812: $1c
	ld   bc, $0101                                   ; $6813: $01 $01 $01
	ld   bc, $5252                                   ; $6816: $01 $52 $52
	ld   [hl], l                                     ; $6819: $75
	ld   h, a                                        ; $681a: $67
	sub  [hl]                                        ; $681b: $96
	sbc  a                                           ; $681c: $9f
	dec  c                                           ; $681d: $0d
	ld   l, e                                        ; $681e: $6b
	sbc  d                                           ; $681f: $9a
	ld   h, [hl]                                     ; $6820: $66
	sub  c                                           ; $6821: $91
	sbc  [hl]                                        ; $6822: $9e
	inc  b                                           ; $6823: $04
	dec  bc                                          ; $6824: $0b
	inc  b                                           ; $6825: $04
	rra                                              ; $6826: $1f
	ld   a, c                                        ; $6827: $79
	dec  b                                           ; $6828: $05
	ld   l, d                                        ; $6829: $6a
	inc  b                                           ; $682a: $04
	dec  de                                          ; $682b: $1b
	dec  c                                           ; $682c: $0d
	ld   h, l                                        ; $682d: $65
	adc  h                                           ; $682e: $8c
	ld   h, l                                        ; $682f: $65
	sub  l                                           ; $6830: $95
	ld   d, h                                        ; $6831: $54
	ld   e, c                                        ; $6832: $59
	sbc  a                                           ; $6833: $9f
	dec  c                                           ; $6834: $0d
	nop                                              ; $6835: $00
	ld   a, [bc]                                     ; $6836: $0a
	dec  c                                           ; $6837: $0d
	nop                                              ; $6838: $00
	nop                                              ; $6839: $00
	rrca                                             ; $683a: $0f
	nop                                              ; $683b: $00
	ld   bc, $9d23                                   ; $683c: $01 $23 $9d
	inc  e                                           ; $683f: $1c
	ld   bc, $0000                                   ; $6840: $01 $00 $00
	ld   bc, $7d75                                   ; $6843: $01 $75 $7d
	sbc  [hl]                                        ; $6846: $9e
	ld   a, l                                        ; $6847: $7d
	ld   h, [hl]                                     ; $6848: $66
	adc  a                                           ; $6849: $8f
	adc  h                                           ; $684a: $8c
	ld   h, a                                        ; $684b: $67
	sub  [hl]                                        ; $684c: $96
	sbc  a                                           ; $684d: $9f
	dec  c                                           ; $684e: $0d
	nop                                              ; $684f: $00
	ld   a, [bc]                                     ; $6850: $0a
	ld   a, [de]                                     ; $6851: $1a
	ld   bc, $db07                                   ; $6852: $01 $07 $db
	ld   bc, $0402                                   ; $6855: $01 $02 $04
	ld   bc, $2002                                   ; $6858: $01 $02 $20
	nop                                              ; $685b: $00
	rlca                                             ; $685c: $07
	nop                                              ; $685d: $00
	ld   [bc], a                                     ; $685e: $02
	ld   [bc], a                                     ; $685f: $02
	inc  b                                           ; $6860: $04
	ld   bc, $2001                                   ; $6861: $01 $01 $20
	nop                                              ; $6864: $00
	rlca                                             ; $6865: $07
	daa                                              ; $6866: $27
	ld   [bc], a                                     ; $6867: $02
	ld   [bc], a                                     ; $6868: $02
	inc  b                                           ; $6869: $04
	ld   bc, $2000                                   ; $686a: $01 $00 $20
	nop                                              ; $686d: $00
	inc  e                                           ; $686e: $1c
	ld   bc, $0101                                   ; $686f: $01 $01 $01
	dec  e                                           ; $6872: $1d
	ld   b, b                                        ; $6873: $40
	ld   de, $1103                                   ; $6874: $11 $03 $11
	ld   bc, $2803                                   ; $6877: $01 $03 $28
	nop                                              ; $687a: $00
	ld   bc, $0008                                   ; $687b: $01 $08 $00
	ld   h, e                                        ; $687e: $63
	and  c                                           ; $687f: $a1
	sbc  [hl]                                        ; $6880: $9e
	dec  c                                           ; $6881: $0d
	ld   h, a                                        ; $6882: $67
	ld   h, d                                        ; $6883: $62
	ld   d, d                                        ; $6884: $52
	ld   h, [hl]                                     ; $6885: $66
	sub  c                                           ; $6886: $91
	ld   a, b                                        ; $6887: $78
	ld   d, d                                        ; $6888: $52
	ld   [hl], l                                     ; $6889: $75
	ld   h, a                                        ; $688a: $67
	ld   e, c                                        ; $688b: $59
	ld   a, [$000d]                                  ; $688c: $fa $0d $00
	ld   a, [bc]                                     ; $688f: $0a
	ld   b, $51                                      ; $6890: $06 $51
	ld   [bc], a                                     ; $6892: $02
	inc  e                                           ; $6893: $1c
	ld   bc, $0000                                   ; $6894: $01 $00 $00
	dec  e                                           ; $6897: $1d
	ld   b, b                                        ; $6898: $40
	ld   de, $1103                                   ; $6899: $11 $03 $11
	ld   bc, $2801                                   ; $689c: $01 $01 $28
	nop                                              ; $689f: $00
	ld   bc, $0008                                   ; $68a0: $01 $08 $00
	ld   h, e                                        ; $68a3: $63
	and  c                                           ; $68a4: $a1
	sbc  [hl]                                        ; $68a5: $9e
	dec  c                                           ; $68a6: $0d
	ld   e, a                                        ; $68a7: $5f
	ld   [hl], c                                     ; $68a8: $71
	ld   h, c                                        ; $68a9: $61
	ld   d, h                                        ; $68aa: $54
	ld   d, d                                        ; $68ab: $52
	ld   d, d                                        ; $68ac: $52
	ld   e, c                                        ; $68ad: $59
	and  c                                           ; $68ae: $a1
	ld   h, [hl]                                     ; $68af: $66
	ld   [hl], l                                     ; $68b0: $75
	ld   h, a                                        ; $68b1: $67
	sub  [hl]                                        ; $68b2: $96
	sbc  a                                           ; $68b3: $9f
	dec  c                                           ; $68b4: $0d
	nop                                              ; $68b5: $00
	ld   a, [bc]                                     ; $68b6: $0a
	ld   b, $51                                      ; $68b7: $06 $51
	ld   [bc], a                                     ; $68b9: $02
	inc  e                                           ; $68ba: $1c
	ld   bc, $0404                                   ; $68bb: $01 $04 $04
	dec  e                                           ; $68be: $1d
	ld   b, b                                        ; $68bf: $40
	ld   de, $1103                                   ; $68c0: $11 $03 $11
	ld   bc, $2902                                   ; $68c3: $01 $02 $29
	nop                                              ; $68c6: $00
	ld   bc, $5490                                   ; $68c7: $01 $90 $54
	ld   l, a                                        ; $68ca: $6f
	sub  l                                           ; $68cb: $95
	ld   [hl], c                                     ; $68cc: $71
	halt                                             ; $68cd: $76
	ld   e, d                                        ; $68ce: $5a
	and  c                                           ; $68cf: $a1
	ld   a, [hl]                                     ; $68d0: $7e
	ld   [hl], c                                     ; $68d1: $71
	ld   l, l                                        ; $68d2: $6d
	adc  c                                           ; $68d3: $89
	ld   d, h                                        ; $68d4: $54
	ld   e, d                                        ; $68d5: $5a
	dec  c                                           ; $68d6: $0d
	ld   d, d                                        ; $68d7: $52
	ld   d, d                                        ; $68d8: $52
	ld   [hl], l                                     ; $68d9: $75
	ld   h, a                                        ; $68da: $67
	ld   a, e                                        ; $68db: $7b
	rst  $38                                         ; $68dc: $ff
	rst  $38                                         ; $68dd: $ff
	dec  c                                           ; $68de: $0d
	nop                                              ; $68df: $00
	ld   a, [bc]                                     ; $68e0: $0a
	ld   b, $51                                      ; $68e1: $06 $51
	ld   [bc], a                                     ; $68e3: $02
	inc  e                                           ; $68e4: $1c
	ld   bc, $0101                                   ; $68e5: $01 $01 $01
	ld   bc, $9a6b                                   ; $68e8: $01 $6b $9a
	ld   h, [hl]                                     ; $68eb: $66
	sub  c                                           ; $68ec: $91
	sbc  [hl]                                        ; $68ed: $9e
	dec  c                                           ; $68ee: $0d
	ld   e, b                                        ; $68ef: $58
	inc  b                                           ; $68f0: $04
	ld   a, e                                        ; $68f1: $7b
	sbc  d                                           ; $68f2: $9a
	ld   h, e                                        ; $68f3: $63
	adc  h                                           ; $68f4: $8c
	ld   [hl], l                                     ; $68f5: $75
	ld   h, l                                        ; $68f6: $65
	ld   l, l                                        ; $68f7: $6d
	sbc  a                                           ; $68f8: $9f
	dec  c                                           ; $68f9: $0d
	adc  h                                           ; $68fa: $8c
	ld   l, l                                        ; $68fb: $6d
	ld   d, d                                        ; $68fc: $52
	ld   [hl], d                                     ; $68fd: $72
	ld   [hl], l                                     ; $68fe: $75
	sub  b                                           ; $68ff: $90
	ld   e, b                                        ; $6900: $58
	ld   [bc], a                                     ; $6901: $02
	ld   a, [de]                                     ; $6902: $1a
	inc  bc                                          ; $6903: $03
	ld   l, e                                        ; $6904: $6b
	ld   h, l                                        ; $6905: $65
	adc  h                                           ; $6906: $8c
	ld   h, a                                        ; $6907: $67
	sub  [hl]                                        ; $6908: $96
	sbc  a                                           ; $6909: $9f
	dec  c                                           ; $690a: $0d
	nop                                              ; $690b: $00
	ld   a, [bc]                                     ; $690c: $0a
	dec  c                                           ; $690d: $0d
	nop                                              ; $690e: $00
	nop                                              ; $690f: $00
	rrca                                             ; $6910: $0f
	nop                                              ; $6911: $00
	ld   bc, $1e09                                   ; $6912: $01 $09 $1e
	nop                                              ; $6915: $00
	rrca                                             ; $6916: $0f
	nop                                              ; $6917: $00
	ld   bc, $0301                                   ; $6918: $01 $01 $03
	and  a                                           ; $691b: $a7
	adc  l                                           ; $691c: $8d
	ld   a, h                                        ; $691d: $7c
	inc  b                                           ; $691e: $04
	xor  d                                           ; $691f: $aa
	halt                                             ; $6920: $76
	ld   e, c                                        ; $6921: $59
	dec  c                                           ; $6922: $0d
	inc  b                                           ; $6923: $04
	ld   c, c                                        ; $6924: $49
	and  b                                           ; $6925: $a0
	ld   h, l                                        ; $6926: $65
	ld   [hl], h                                     ; $6927: $74
	sbc  c                                           ; $6928: $99
	and  c                                           ; $6929: $a1
	ld   [hl], l                                     ; $692a: $75
	ld   h, a                                        ; $692b: $67
	ld   e, c                                        ; $692c: $59
	ld   sp, hl                                      ; $692d: $f9
	dec  c                                           ; $692e: $0d
	nop                                              ; $692f: $00
	ld   a, [bc]                                     ; $6930: $0a
	inc  e                                           ; $6931: $1c
	ld   bc, $0000                                   ; $6932: $01 $00 $00
	ld   bc, $546b                                   ; $6935: $01 $6b $54
	ld   [hl], l                                     ; $6938: $75
	ld   h, a                                        ; $6939: $67
	ld   a, e                                        ; $693a: $7b
	rst  $38                                         ; $693b: $ff
	rst  $38                                         ; $693c: $ff
	dec  c                                           ; $693d: $0d
	inc  bc                                          ; $693e: $03
	sub  [hl]                                        ; $693f: $96
	inc  b                                           ; $6940: $04
	sbc  a                                           ; $6941: $9f
	halt                                             ; $6942: $76
	ld   e, c                                        ; $6943: $59
	ld   [bc], a                                     ; $6944: $02
	or   a                                           ; $6945: $b7
	inc  b                                           ; $6946: $04
	dec  de                                          ; $6947: $1b
	dec  b                                           ; $6948: $05
	call c, $ad03                                    ; $6949: $dc $03 $ad
	and  b                                           ; $694c: $a0
	adc  l                                           ; $694d: $8d
	ld   l, l                                        ; $694e: $6d
	sbc  b                                           ; $694f: $98
	dec  c                                           ; $6950: $0d
	halt                                             ; $6951: $76
	ld   e, c                                        ; $6952: $59
	ld   h, l                                        ; $6953: $65
	ld   [hl], h                                     ; $6954: $74
	adc  h                                           ; $6955: $8c
	ld   h, a                                        ; $6956: $67
	ld   e, a                                        ; $6957: $5f
	ld   [hl], a                                     ; $6958: $77
	sbc  a                                           ; $6959: $9f
	dec  c                                           ; $695a: $0d
	nop                                              ; $695b: $00
	ld   a, [bc]                                     ; $695c: $0a
	inc  e                                           ; $695d: $1c
	ld   bc, $0101                                   ; $695e: $01 $01 $01
	ld   bc, $a502                                   ; $6961: $01 $02 $a5
	inc  b                                           ; $6964: $04
	xor  d                                           ; $6965: $aa
	sub  b                                           ; $6966: $90
	ld   h, c                                        ; $6967: $61
	sbc  d                                           ; $6968: $9a
	ld   e, c                                        ; $6969: $59
	sub  a                                           ; $696a: $97
	inc  bc                                          ; $696b: $03
	ld   h, l                                        ; $696c: $65
	inc  b                                           ; $696d: $04
	rst  $20                                         ; $696e: $e7
	ld   [bc], a                                     ; $696f: $02
	sbc  c                                           ; $6970: $99
	ld   [bc], a                                     ; $6971: $02
	inc  c                                           ; $6972: $0c
	and  b                                           ; $6973: $a0
	dec  c                                           ; $6974: $0d
	inc  bc                                          ; $6975: $03
	sub  [hl]                                        ; $6976: $96
	inc  b                                           ; $6977: $04
	sbc  a                                           ; $6978: $9f
	ld   h, l                                        ; $6979: $65
	ld   [hl], h                                     ; $697a: $74
	ld   h, c                                        ; $697b: $61
	sub  [hl]                                        ; $697c: $96
	ld   d, h                                        ; $697d: $54
	ld   e, c                                        ; $697e: $59
	halt                                             ; $697f: $76
	dec  b                                           ; $6980: $05
	pop  de                                          ; $6981: $d1
	ld   [hl], c                                     ; $6982: $71
	ld   [hl], h                                     ; $6983: $74
	sbc  a                                           ; $6984: $9f
	dec  c                                           ; $6985: $0d
	nop                                              ; $6986: $00
	ld   a, [bc]                                     ; $6987: $0a
	inc  e                                           ; $6988: $1c
	ld   bc, $0000                                   ; $6989: $01 $00 $00
	ld   bc, $9a6b                                   ; $698c: $01 $6b $9a
	ld   h, [hl]                                     ; $698f: $66
	sub  c                                           ; $6990: $91
	sbc  [hl]                                        ; $6991: $9e
	ld   [$6300], sp                                 ; $6992: $08 $00 $63
	and  c                                           ; $6995: $a1
	sbc  a                                           ; $6996: $9f
	dec  c                                           ; $6997: $0d
	adc  h                                           ; $6998: $8c
	ld   l, l                                        ; $6999: $6d
	ld   [bc], a                                     ; $699a: $02
	xor  d                                           ; $699b: $aa
	ld   [hl], l                                     ; $699c: $75
	rst  $38                                         ; $699d: $ff
	rst  $38                                         ; $699e: $ff
	dec  c                                           ; $699f: $0d
	nop                                              ; $69a0: $00
	ld   a, [bc]                                     ; $69a1: $0a
	dec  c                                           ; $69a2: $0d
	nop                                              ; $69a3: $00
	nop                                              ; $69a4: $00
	rrca                                             ; $69a5: $0f
	nop                                              ; $69a6: $00
	ld   bc, $1e09                                   ; $69a7: $01 $09 $1e
	nop                                              ; $69aa: $00
	rrca                                             ; $69ab: $0f
	nop                                              ; $69ac: $00
	ld   bc, $6301                                   ; $69ad: $01 $01 $63
	ld   e, l                                        ; $69b0: $5d
	sub  a                                           ; $69b1: $97
	ld   h, e                                        ; $69b2: $63
	and  c                                           ; $69b3: $a1
	ld   e, c                                        ; $69b4: $59
	sub  a                                           ; $69b5: $97
	ld   [bc], a                                     ; $69b6: $02
	sub  l                                           ; $69b7: $95
	ld   [hl], h                                     ; $69b8: $74
	sbc  [hl]                                        ; $69b9: $9e
	dec  c                                           ; $69ba: $0d
	and  e                                           ; $69bb: $a3
	and  l                                           ; $69bc: $a5
	db   $ec                                         ; $69bd: $ec
	cp   d                                           ; $69be: $ba
	ld   [hl], c                                     ; $69bf: $71
	ld   [hl], h                                     ; $69c0: $74
	ld   [hl], a                                     ; $69c1: $77
	and  c                                           ; $69c2: $a1
	ld   a, b                                        ; $69c3: $78
	inc  bc                                          ; $69c4: $03
	add  [hl]                                        ; $69c5: $86
	ld   [hl], l                                     ; $69c6: $75
	ld   h, a                                        ; $69c7: $67
	ld   e, c                                        ; $69c8: $59
	ld   sp, hl                                      ; $69c9: $f9
	dec  c                                           ; $69ca: $0d
	nop                                              ; $69cb: $00
	ld   a, [bc]                                     ; $69cc: $0a
	inc  e                                           ; $69cd: $1c
	ld   bc, $0101                                   ; $69ce: $01 $01 $01
	ld   bc, $546b                                   ; $69d1: $01 $6b $54
	ld   [hl], l                                     ; $69d4: $75
	ld   h, a                                        ; $69d5: $67
	ld   a, e                                        ; $69d6: $7b
	rst  $38                                         ; $69d7: $ff
	rst  $38                                         ; $69d8: $ff
	dec  c                                           ; $69d9: $0d
	ld   [bc], a                                     ; $69da: $02
	adc  e                                           ; $69db: $8b
	ld   [bc], a                                     ; $69dc: $02
	dec  hl                                          ; $69dd: $2b
	ld   e, l                                        ; $69de: $5d
	ld   [hl], h                                     ; $69df: $74
	sbc  [hl]                                        ; $69e0: $9e
	adc  [hl]                                        ; $69e1: $8e
	ld   h, [hl]                                     ; $69e2: $66
	sub  c                                           ; $69e3: $91
	ld   e, e                                        ; $69e4: $5b
	ld   [hl], l                                     ; $69e5: $75
	dec  c                                           ; $69e6: $0d
	ld   b, $26                                      ; $69e7: $06 $26
	adc  l                                           ; $69e9: $8d
	ld   l, l                                        ; $69ea: $6d
	ld   d, d                                        ; $69eb: $52
	ld   a, b                                        ; $69ec: $78
	inc  bc                                          ; $69ed: $03
	add  [hl]                                        ; $69ee: $86
	ld   [hl], l                                     ; $69ef: $75
	ld   h, a                                        ; $69f0: $67
	sub  [hl]                                        ; $69f1: $96
	sbc  a                                           ; $69f2: $9f
	dec  c                                           ; $69f3: $0d
	nop                                              ; $69f4: $00
	ld   a, [bc]                                     ; $69f5: $0a
	ld   bc, $9e50                                   ; $69f6: $01 $50 $9e
	ld   [hl], l                                     ; $69f9: $75
	sub  b                                           ; $69fa: $90
	inc  bc                                          ; $69fb: $03
	add  [hl]                                        ; $69fc: $86
	ld   [bc], a                                     ; $69fd: $02
	xor  l                                           ; $69fe: $ad
	ld   d, b                                        ; $69ff: $50
	ld   [hl], d                                     ; $6a00: $72
	ld   e, c                                        ; $6a01: $59
	ld   d, d                                        ; $6a02: $52
	ld   h, a                                        ; $6a03: $67
	sbc  c                                           ; $6a04: $99
	halt                                             ; $6a05: $76
	dec  c                                           ; $6a06: $0d
	ld   e, b                                        ; $6a07: $58
	ld   h, c                                        ; $6a08: $61
	sbc  c                                           ; $6a09: $99
	ld   e, c                                        ; $6a0a: $59
	sub  a                                           ; $6a0b: $97
	sbc  [hl]                                        ; $6a0c: $9e
	ld   [$6300], sp                                 ; $6a0d: $08 $00 $63
	and  c                                           ; $6a10: $a1
	sub  b                                           ; $6a11: $90
	dec  c                                           ; $6a12: $0d
	ld   [bc], a                                     ; $6a13: $02
	and  c                                           ; $6a14: $a1
	and  b                                           ; $6a15: $a0
	ld   [hl], d                                     ; $6a16: $72
	ld   e, a                                        ; $6a17: $5f
	ld   [hl], h                                     ; $6a18: $74
	ld   [bc], a                                     ; $6a19: $02
	inc  [hl]                                        ; $6a1a: $34
	ld   h, e                                        ; $6a1b: $63
	ld   d, d                                        ; $6a1c: $52
	ld   a, e                                        ; $6a1d: $7b
	sbc  a                                           ; $6a1e: $9f
	dec  c                                           ; $6a1f: $0d
	nop                                              ; $6a20: $00
	ld   a, [bc]                                     ; $6a21: $0a
	dec  c                                           ; $6a22: $0d
	nop                                              ; $6a23: $00
	nop                                              ; $6a24: $00
	rrca                                             ; $6a25: $0f
	nop                                              ; $6a26: $00
	ld   bc, $1e09                                   ; $6a27: $01 $09 $1e
	nop                                              ; $6a2a: $00
	nop                                              ; $6a2b: $00
	ld   c, $41                                      ; $6a2c: $0e $41
	rrca                                             ; $6a2e: $0f
	nop                                              ; $6a2f: $00
	ld   bc, $1c02                                   ; $6a30: $01 $02 $1c
	add  hl, bc                                      ; $6a33: $09
	nop                                              ; $6a34: $00
	nop                                              ; $6a35: $00
	ld   bc, $0008                                   ; $6a36: $01 $08 $00
	ld   e, l                                        ; $6a39: $5d
	and  c                                           ; $6a3a: $a1
	ld   h, [hl]                                     ; $6a3b: $66
	sub  c                                           ; $6a3c: $91
	ld   a, b                                        ; $6a3d: $78
	ld   d, d                                        ; $6a3e: $52
	ld   e, c                                        ; $6a3f: $59
	sbc  a                                           ; $6a40: $9f
	dec  c                                           ; $6a41: $0d
	ld   a, b                                        ; $6a42: $78
	ld   a, c                                        ; $6a43: $79
	ld   e, c                                        ; $6a44: $59
	inc  b                                           ; $6a45: $04
	di                                               ; $6a46: $f3
	ld   e, c                                        ; $6a47: $59
	ld   d, d                                        ; $6a48: $52
	ld   sp, hl                                      ; $6a49: $f9
	dec  c                                           ; $6a4a: $0d
	nop                                              ; $6a4b: $00
	ld   a, [bc]                                     ; $6a4c: $0a
	add  hl, de                                      ; $6a4d: $19
	dec  b                                           ; $6a4e: $05
	ld   [bc], a                                     ; $6a4f: $02
	inc  b                                           ; $6a50: $04
	ld   a, [bc]                                     ; $6a51: $0a
	ld   [bc], a                                     ; $6a52: $02
	nop                                              ; $6a53: $00
	ld   e, c                                        ; $6a54: $59
	sub  a                                           ; $6a55: $97
	ld   a, h                                        ; $6a56: $7c
	inc  b                                           ; $6a57: $04
	ld   d, a                                        ; $6a58: $57
	inc  b                                           ; $6a59: $04
	ld   h, e                                        ; $6a5a: $63
	and  b                                           ; $6a5b: $a0
	ld   [bc], a                                     ; $6a5c: $02
	jp   nz, $005d                                   ; $6a5d: $c2 $5d $00

	nop                                              ; $6a60: $00
	inc  bc                                          ; $6a61: $03
	ld   l, l                                        ; $6a62: $6d
	dec  b                                           ; $6a63: $05
	add  hl, de                                      ; $6a64: $19
	ld   a, h                                        ; $6a65: $7c
	and  e                                           ; $6a66: $a3
	jp   z, $a5d1                                    ; $6a67: $ca $d1 $a5

	cp   d                                           ; $6a6a: $ba
	and  b                                           ; $6a6b: $a0
	ld   [bc], a                                     ; $6a6c: $02
	jp   nz, $005d                                   ; $6a6d: $c2 $5d $00

	ld   bc, $8b07                                   ; $6a70: $01 $07 $8b
	ld   bc, $0302                                   ; $6a73: $01 $02 $03
	ld   bc, $2000                                   ; $6a76: $01 $00 $20
	nop                                              ; $6a79: $00
	rlca                                             ; $6a7a: $07
	ld   c, c                                        ; $6a7b: $49
	ld   a, [bc]                                     ; $6a7c: $0a
	ld   [bc], a                                     ; $6a7d: $02
	inc  bc                                          ; $6a7e: $03
	ld   bc, $2001                                   ; $6a7f: $01 $01 $20
	nop                                              ; $6a82: $00
	ld   b, $5a                                      ; $6a83: $06 $5a
	nop                                              ; $6a85: $00
	rrca                                             ; $6a86: $0f
	nop                                              ; $6a87: $00
	ld   bc, $5201                                   ; $6a88: $01 $01 $52
	ld   d, [hl]                                     ; $6a8b: $56
	rst  $38                                         ; $6a8c: $ff
	rst  $38                                         ; $6a8d: $ff
	sbc  a                                           ; $6a8e: $9f
	dec  c                                           ; $6a8f: $0d
	halt                                             ; $6a90: $76
	ld   e, l                                        ; $6a91: $5d
	ld   a, c                                        ; $6a92: $79
	inc  b                                           ; $6a93: $04
	di                                               ; $6a94: $f3
	ld   [bc], a                                     ; $6a95: $02
	jp   Jump_05a_5276                               ; $6a96: $c3 $76 $52


	ld   d, h                                        ; $6a99: $54
	sbc  l                                           ; $6a9a: $9d
	ld   e, a                                        ; $6a9b: $5f
	ld   [hl], l                                     ; $6a9c: $75
	ld   a, l                                        ; $6a9d: $7d
	rst  $38                                         ; $6a9e: $ff
	sbc  a                                           ; $6a9f: $9f
	dec  c                                           ; $6aa0: $0d
	nop                                              ; $6aa1: $00
	ld   a, [bc]                                     ; $6aa2: $0a
	rlca                                             ; $6aa3: $07
	rst  JumpTable                                         ; $6aa4: $df
	nop                                              ; $6aa5: $00
	inc  bc                                          ; $6aa6: $03
	jr   nz, jr_05a_6aaa                             ; $6aa7: $20 $01

	ld   h, h                                        ; $6aa9: $64

jr_05a_6aaa:
	inc  hl                                          ; $6aaa: $23
	nop                                              ; $6aab: $00
	rrca                                             ; $6aac: $0f
	add  hl, bc                                      ; $6aad: $09
	nop                                              ; $6aae: $00
	ld   bc, $546b                                   ; $6aaf: $01 $6b $54
	ld   e, c                                        ; $6ab2: $59
	rst  $38                                         ; $6ab3: $ff
	rst  $38                                         ; $6ab4: $ff
	adc  h                                           ; $6ab5: $8c
	ld   d, b                                        ; $6ab6: $50
	sbc  [hl]                                        ; $6ab7: $9e
	dec  c                                           ; $6ab8: $0d
	ld   a, b                                        ; $6ab9: $78
	ld   a, c                                        ; $6aba: $79
	ld   e, c                                        ; $6abb: $59
	ld   [bc], a                                     ; $6abc: $02
	ld   a, [de]                                     ; $6abd: $1a
	dec  b                                           ; $6abe: $05
	ldh  a, [$5a]                                    ; $6abf: $f0 $5a
	ld   d, b                                        ; $6ac1: $50
	sbc  c                                           ; $6ac2: $99
	ld   a, b                                        ; $6ac3: $78
	sub  a                                           ; $6ac4: $97
	dec  c                                           ; $6ac5: $0d
	ld   d, d                                        ; $6ac6: $52
	ld   [hl], d                                     ; $6ac7: $72
	ld   [hl], l                                     ; $6ac8: $75
	sub  b                                           ; $6ac9: $90
	dec  b                                           ; $6aca: $05
	db   $10                                         ; $6acb: $10
	sbc  c                                           ; $6acc: $99
	halt                                             ; $6acd: $76
	ld   d, d                                        ; $6ace: $52
	ld   d, d                                        ; $6acf: $52
	sbc  a                                           ; $6ad0: $9f
	dec  c                                           ; $6ad1: $0d
	nop                                              ; $6ad2: $00
	ld   a, [bc]                                     ; $6ad3: $0a
	rrca                                             ; $6ad4: $0f
	nop                                              ; $6ad5: $00
	ld   bc, $7d01                                   ; $6ad6: $01 $01 $7d
	rst  $38                                         ; $6ad9: $ff
	rst  $38                                         ; $6ada: $ff
	ld   a, l                                        ; $6adb: $7d
	ld   d, d                                        ; $6adc: $52
	sbc  a                                           ; $6add: $9f
	dec  c                                           ; $6ade: $0d
	ld   d, b                                        ; $6adf: $50
	sbc  b                                           ; $6ae0: $98
	ld   e, d                                        ; $6ae1: $5a
	halt                                             ; $6ae2: $76
	ld   d, h                                        ; $6ae3: $54
	ld   h, d                                        ; $6ae4: $62
	ld   h, h                                        ; $6ae5: $64
	ld   d, d                                        ; $6ae6: $52
	adc  h                                           ; $6ae7: $8c
	ld   h, a                                        ; $6ae8: $67
	sbc  a                                           ; $6ae9: $9f
	dec  c                                           ; $6aea: $0d
	nop                                              ; $6aeb: $00
	ld   a, [bc]                                     ; $6aec: $0a
	rrca                                             ; $6aed: $0f
	add  hl, bc                                      ; $6aee: $09
	nop                                              ; $6aef: $00
	ld   bc, $9a6b                                   ; $6af0: $01 $6b $9a
	ld   h, [hl]                                     ; $6af3: $66
	sub  c                                           ; $6af4: $91
	sbc  [hl]                                        ; $6af5: $9e
	dec  b                                           ; $6af6: $05
	ld   [hl], e                                     ; $6af7: $73
	sub  b                                           ; $6af8: $90
	inc  bc                                          ; $6af9: $03
	dec  c                                           ; $6afa: $0d
	ld   [bc], a                                     ; $6afb: $02
	jp   Jump_05a_505a                               ; $6afc: $c3 $5a $50


	sbc  c                                           ; $6aff: $99
	ld   e, c                                        ; $6b00: $59
	sub  a                                           ; $6b01: $97
	dec  c                                           ; $6b02: $0d
	ld   h, c                                        ; $6b03: $61
	sbc  d                                           ; $6b04: $9a
	ld   [hl], l                                     ; $6b05: $75
	sbc  a                                           ; $6b06: $9f
	dec  c                                           ; $6b07: $0d
	nop                                              ; $6b08: $00
	ld   a, [bc]                                     ; $6b09: $0a
	nop                                              ; $6b0a: $00
	inc  e                                           ; $6b0b: $1c
	add  hl, bc                                      ; $6b0c: $09
	dec  b                                           ; $6b0d: $05
	ld   a, [bc]                                     ; $6b0e: $0a
	ld   bc, $0008                                   ; $6b0f: $01 $08 $00
	ld   e, l                                        ; $6b12: $5d
	and  c                                           ; $6b13: $a1
	sbc  a                                           ; $6b14: $9f
	dec  c                                           ; $6b15: $0d
	ld   a, b                                        ; $6b16: $78
	and  c                                           ; $6b17: $a1
	ld   l, [hl]                                     ; $6b18: $6e
	ld   e, c                                        ; $6b19: $59
	ld   [bc], a                                     ; $6b1a: $02
	ld   [hl], d                                     ; $6b1b: $72
	inc  bc                                          ; $6b1c: $03
	dec  bc                                          ; $6b1d: $0b
	ld   e, d                                        ; $6b1e: $5a
	ld   [bc], a                                     ; $6b1f: $02
	jr   z, jr_05a_6b74                              ; $6b20: $28 $52

	ld   l, h                                        ; $6b22: $6c
	sbc  a                                           ; $6b23: $9f
	dec  c                                           ; $6b24: $0d
	nop                                              ; $6b25: $00
	ld   a, [bc]                                     ; $6b26: $0a
	inc  e                                           ; $6b27: $1c
	add  hl, bc                                      ; $6b28: $09
	nop                                              ; $6b29: $00
	nop                                              ; $6b2a: $00
	ld   bc, $a15a                                   ; $6b2b: $01 $5a $a1
	ld   a, [hl]                                     ; $6b2e: $7e
	sbc  c                                           ; $6b2f: $99
	ld   a, h                                        ; $6b30: $7c
	sub  b                                           ; $6b31: $90
	ld   d, d                                        ; $6b32: $52
	ld   d, d                                        ; $6b33: $52
	ld   e, d                                        ; $6b34: $5a
	sbc  [hl]                                        ; $6b35: $9e
	dec  c                                           ; $6b36: $0d
	ld   l, l                                        ; $6b37: $6d
	adc  h                                           ; $6b38: $8c
	ld   a, c                                        ; $6b39: $79
	ld   a, l                                        ; $6b3a: $7d
	inc  bc                                          ; $6b3b: $03
	and  a                                           ; $6b3c: $a7
	adc  l                                           ; $6b3d: $8d
	and  b                                           ; $6b3e: $a0
	halt                                             ; $6b3f: $76
	sub  a                                           ; $6b40: $97
	ld   a, b                                        ; $6b41: $78
	ld   d, d                                        ; $6b42: $52
	halt                                             ; $6b43: $76
	dec  c                                           ; $6b44: $0d
	inc  b                                           ; $6b45: $04
	dec  c                                           ; $6b46: $0d
	ld   e, d                                        ; $6b47: $5a
	sub  b                                           ; $6b48: $90
	ld   l, l                                        ; $6b49: $6d
	ld   a, b                                        ; $6b4a: $78
	ld   d, d                                        ; $6b4b: $52
	ld   l, h                                        ; $6b4c: $6c
	sbc  a                                           ; $6b4d: $9f
	dec  c                                           ; $6b4e: $0d
	nop                                              ; $6b4f: $00
	ld   a, [bc]                                     ; $6b50: $0a
	ld   bc, $0a04                                   ; $6b51: $01 $04 $0a
	ld   [bc], a                                     ; $6b54: $02
	nop                                              ; $6b55: $00
	ld   a, c                                        ; $6b56: $79
	halt                                             ; $6b57: $76
	ld   [hl], c                                     ; $6b58: $71
	ld   [hl], h                                     ; $6b59: $74
	ld   a, l                                        ; $6b5a: $7d
	inc  bc                                          ; $6b5b: $03
	sub  h                                           ; $6b5c: $94
	dec  b                                           ; $6b5d: $05
	inc  sp                                          ; $6b5e: $33
	ld   [bc], a                                     ; $6b5f: $02
	ld   l, b                                        ; $6b60: $68
	dec  b                                           ; $6b61: $05
	ld   de, $0d90                                   ; $6b62: $11 $90 $0d
	inc  b                                           ; $6b65: $04
	ld   c, $02                                      ; $6b66: $0e $02
	jp   $0378                                       ; $6b68: $c3 $78 $03


	dec  c                                           ; $6b6b: $0d
	ld   [bc], a                                     ; $6b6c: $02
	jp   Jump_05a_547c                               ; $6b6d: $c3 $7c $54


	ld   l, a                                        ; $6b70: $6f
	ld   l, [hl]                                     ; $6b71: $6e
	ld   e, c                                        ; $6b72: $59
	sub  a                                           ; $6b73: $97

jr_05a_6b74:
	ld   a, b                                        ; $6b74: $78
	sbc  a                                           ; $6b75: $9f
	dec  c                                           ; $6b76: $0d
	nop                                              ; $6b77: $00
	ld   a, [bc]                                     ; $6b78: $0a
	rrca                                             ; $6b79: $0f
	nop                                              ; $6b7a: $00
	ld   bc, $7d01                                   ; $6b7b: $01 $01 $7d
	rst  $38                                         ; $6b7e: $ff
	rst  $38                                         ; $6b7f: $ff
	ld   a, l                                        ; $6b80: $7d
	ld   d, d                                        ; $6b81: $52
	sbc  a                                           ; $6b82: $9f
	dec  c                                           ; $6b83: $0d
	ld   [bc], a                                     ; $6b84: $02
	and  c                                           ; $6b85: $a1
	and  b                                           ; $6b86: $a0
	ld   [hl], d                                     ; $6b87: $72
	ld   e, a                                        ; $6b88: $5f
	adc  h                                           ; $6b89: $8c
	ld   h, a                                        ; $6b8a: $67
	sbc  a                                           ; $6b8b: $9f
	dec  c                                           ; $6b8c: $0d
	nop                                              ; $6b8d: $00
	ld   a, [bc]                                     ; $6b8e: $0a
	inc  e                                           ; $6b8f: $1c
	add  hl, bc                                      ; $6b90: $09
	ld   bc, $0101                                   ; $6b91: $01 $01 $01
	ld   d, h                                        ; $6b94: $54
	and  c                                           ; $6b95: $a1
	sbc  a                                           ; $6b96: $9f
	dec  c                                           ; $6b97: $0d
	ld   l, e                                        ; $6b98: $6b
	sbc  d                                           ; $6b99: $9a
	ld   h, [hl]                                     ; $6b9a: $66
	sub  c                                           ; $6b9b: $91
	sbc  [hl]                                        ; $6b9c: $9e
	dec  b                                           ; $6b9d: $05
	ld   [hl], e                                     ; $6b9e: $73
	sub  b                                           ; $6b9f: $90
	ld   l, e                                        ; $6ba0: $6b
	sbc  e                                           ; $6ba1: $9b
	ld   l, e                                        ; $6ba2: $6b
	sbc  e                                           ; $6ba3: $9b
	inc  bc                                          ; $6ba4: $03
	dec  c                                           ; $6ba5: $0d
	ld   [bc], a                                     ; $6ba6: $02
	jp   $0d79                                       ; $6ba7: $c3 $79 $0d


	sub  b                                           ; $6baa: $90
	ld   [hl], a                                     ; $6bab: $77
	sbc  c                                           ; $6bac: $99
	ld   e, c                                        ; $6bad: $59
	sub  a                                           ; $6bae: $97
	ld   h, c                                        ; $6baf: $61
	sbc  d                                           ; $6bb0: $9a
	ld   [hl], l                                     ; $6bb1: $75
	sbc  a                                           ; $6bb2: $9f
	dec  c                                           ; $6bb3: $0d
	nop                                              ; $6bb4: $00
	ld   a, [bc]                                     ; $6bb5: $0a
	nop                                              ; $6bb6: $00
	rrca                                             ; $6bb7: $0f
	nop                                              ; $6bb8: $00
	ld   bc, $5001                                   ; $6bb9: $01 $01 $50
	ld   a, h                                        ; $6bbc: $7c
	rst  $38                                         ; $6bbd: $ff
	rst  $38                                         ; $6bbe: $ff
	ld   l, a                                        ; $6bbf: $6f
	sub  l                                           ; $6bc0: $95
	ld   [hl], c                                     ; $6bc1: $71
	halt                                             ; $6bc2: $76
	dec  c                                           ; $6bc3: $0d
	ld   e, b                                        ; $6bc4: $58
	ld   [bc], a                                     ; $6bc5: $02
	jp   nz, $655b                                   ; $6bc6: $c2 $5b $65

	ld   l, l                                        ; $6bc9: $6d
	ld   d, d                                        ; $6bca: $52
	ld   h, c                                        ; $6bcb: $61
	halt                                             ; $6bcc: $76
	ld   e, d                                        ; $6bcd: $5a
	dec  c                                           ; $6bce: $0d
	ld   d, b                                        ; $6bcf: $50
	sbc  c                                           ; $6bd0: $99
	and  c                                           ; $6bd1: $a1
	ld   [hl], l                                     ; $6bd2: $75
	ld   h, a                                        ; $6bd3: $67
	ld   e, a                                        ; $6bd4: $5f
	ld   [hl], a                                     ; $6bd5: $77
	rst  $38                                         ; $6bd6: $ff
	dec  c                                           ; $6bd7: $0d
	nop                                              ; $6bd8: $00
	ld   a, [bc]                                     ; $6bd9: $0a
	rrca                                             ; $6bda: $0f
	add  hl, bc                                      ; $6bdb: $09
	nop                                              ; $6bdc: $00
	ld   bc, $ffff                                   ; $6bdd: $01 $ff $ff
	ld   [bc], a                                     ; $6be0: $02
	jp   nz, Jump_05a_6d5b                           ; $6be1: $c2 $5b $6d

	ld   d, d                                        ; $6be4: $52
	ld   h, c                                        ; $6be5: $61
	halt                                             ; $6be6: $76
	ld   sp, hl                                      ; $6be7: $f9
	dec  c                                           ; $6be8: $0d
	nop                                              ; $6be9: $00
	ld   a, [bc]                                     ; $6bea: $0a
	jr   jr_05a_6bf0                                 ; $6beb: $18 $03

	ld   bc, $5d63                                   ; $6bed: $01 $63 $5d

jr_05a_6bf0:
	sub  a                                           ; $6bf0: $97
	ld   e, c                                        ; $6bf1: $59
	sub  a                                           ; $6bf2: $97
	ld   a, h                                        ; $6bf3: $7c
	inc  b                                           ; $6bf4: $04
	ld   d, a                                        ; $6bf5: $57
	inc  b                                           ; $6bf6: $04
	ld   h, e                                        ; $6bf7: $63
	and  b                                           ; $6bf8: $a0
	ld   e, e                                        ; $6bf9: $5b
	ld   e, l                                        ; $6bfa: $5d
	nop                                              ; $6bfb: $00
	nop                                              ; $6bfc: $00
	ld   h, a                                        ; $6bfd: $67
	adc  l                                           ; $6bfe: $8d
	sbc  d                                           ; $6bff: $9a
	ld   e, c                                        ; $6c00: $59
	sub  a                                           ; $6c01: $97
	ld   a, h                                        ; $6c02: $7c
	inc  b                                           ; $6c03: $04
	ld   d, a                                        ; $6c04: $57
	inc  b                                           ; $6c05: $04
	ld   h, e                                        ; $6c06: $63
	and  b                                           ; $6c07: $a0
	ld   e, e                                        ; $6c08: $5b
	ld   e, l                                        ; $6c09: $5d
	nop                                              ; $6c0a: $00
	ld   bc, $7c6b                                   ; $6c0b: $01 $6b $7c
	inc  b                                           ; $6c0e: $04
	ld   e, $7c                                      ; $6c0f: $1e $7c
	inc  bc                                          ; $6c11: $03
	add  d                                           ; $6c12: $82
	ld   a, h                                        ; $6c13: $7c
	inc  b                                           ; $6c14: $04
	ld   d, a                                        ; $6c15: $57
	inc  b                                           ; $6c16: $04
	ld   h, e                                        ; $6c17: $63
	and  b                                           ; $6c18: $a0
	ld   e, e                                        ; $6c19: $5b
	ld   e, l                                        ; $6c1a: $5d
	nop                                              ; $6c1b: $00
	ld   [bc], a                                     ; $6c1c: $02
	rlca                                             ; $6c1d: $07
	ld   h, $03                                      ; $6c1e: $26 $03
	ld   [bc], a                                     ; $6c20: $02
	ld   [bc], a                                     ; $6c21: $02
	ld   bc, $2000                                   ; $6c22: $01 $00 $20
	nop                                              ; $6c25: $00
	rlca                                             ; $6c26: $07
	ld   d, d                                        ; $6c27: $52
	inc  b                                           ; $6c28: $04
	ld   [bc], a                                     ; $6c29: $02
	ld   [bc], a                                     ; $6c2a: $02
	ld   bc, $2001                                   ; $6c2b: $01 $01 $20
	nop                                              ; $6c2e: $00
	rlca                                             ; $6c2f: $07
	inc  c                                           ; $6c30: $0c
	ld   [bc], a                                     ; $6c31: $02
	ld   [bc], a                                     ; $6c32: $02
	ld   [bc], a                                     ; $6c33: $02
	ld   bc, $2002                                   ; $6c34: $01 $02 $20
	nop                                              ; $6c37: $00
	jr   jr_05a_6c3d                                 ; $6c38: $18 $03

	ld   bc, $ecdf                                   ; $6c3a: $01 $df $ec

jr_05a_6c3d:
	and  e                                           ; $6c3d: $a3
	ld   e, c                                        ; $6c3e: $59
	sub  a                                           ; $6c3f: $97
	ld   a, h                                        ; $6c40: $7c
	inc  b                                           ; $6c41: $04
	ld   d, a                                        ; $6c42: $57
	inc  b                                           ; $6c43: $04
	ld   h, e                                        ; $6c44: $63
	and  b                                           ; $6c45: $a0
	ld   e, e                                        ; $6c46: $5b
	ld   e, l                                        ; $6c47: $5d
	nop                                              ; $6c48: $00
	nop                                              ; $6c49: $00
	xor  h                                           ; $6c4a: $ac
	push af                                          ; $6c4b: $f5
	bit  3, c                                        ; $6c4c: $cb $59
	sub  a                                           ; $6c4e: $97
	ld   a, h                                        ; $6c4f: $7c
	inc  b                                           ; $6c50: $04
	ld   d, a                                        ; $6c51: $57
	inc  b                                           ; $6c52: $04
	ld   h, e                                        ; $6c53: $63
	and  b                                           ; $6c54: $a0
	ld   e, e                                        ; $6c55: $5b
	ld   e, l                                        ; $6c56: $5d
	nop                                              ; $6c57: $00
	ld   bc, $7c6b                                   ; $6c58: $01 $6b $7c
	inc  b                                           ; $6c5b: $04
	ld   e, $7c                                      ; $6c5c: $1e $7c
	inc  bc                                          ; $6c5e: $03
	add  d                                           ; $6c5f: $82
	ld   a, h                                        ; $6c60: $7c
	inc  b                                           ; $6c61: $04
	ld   d, a                                        ; $6c62: $57
	inc  b                                           ; $6c63: $04
	ld   h, e                                        ; $6c64: $63
	and  b                                           ; $6c65: $a0
	ld   e, e                                        ; $6c66: $5b
	ld   e, l                                        ; $6c67: $5d
	nop                                              ; $6c68: $00
	ld   [bc], a                                     ; $6c69: $02
	rlca                                             ; $6c6a: $07
	ld   a, [hl]                                     ; $6c6b: $7e
	dec  b                                           ; $6c6c: $05
	ld   [bc], a                                     ; $6c6d: $02
	ld   [bc], a                                     ; $6c6e: $02
	ld   bc, $2000                                   ; $6c6f: $01 $00 $20
	nop                                              ; $6c72: $00
	rlca                                             ; $6c73: $07
	or   $08                                         ; $6c74: $f6 $08
	ld   [bc], a                                     ; $6c76: $02
	ld   [bc], a                                     ; $6c77: $02
	ld   bc, $2001                                   ; $6c78: $01 $01 $20
	nop                                              ; $6c7b: $00
	rlca                                             ; $6c7c: $07
	ld   e, c                                        ; $6c7d: $59
	ld   [bc], a                                     ; $6c7e: $02
	ld   [bc], a                                     ; $6c7f: $02
	ld   [bc], a                                     ; $6c80: $02
	ld   bc, $2002                                   ; $6c81: $01 $02 $20
	nop                                              ; $6c84: $00
	jr   jr_05a_6c8a                                 ; $6c85: $18 $03

	ld   bc, $cf02                                   ; $6c87: $01 $02 $cf

jr_05a_6c8a:
	dec  b                                           ; $6c8a: $05
	ld   a, [de]                                     ; $6c8b: $1a
	ld   e, c                                        ; $6c8c: $59
	sub  a                                           ; $6c8d: $97
	ld   a, h                                        ; $6c8e: $7c
	inc  b                                           ; $6c8f: $04
	ld   d, a                                        ; $6c90: $57
	inc  b                                           ; $6c91: $04
	ld   h, e                                        ; $6c92: $63
	and  b                                           ; $6c93: $a0
	ld   e, e                                        ; $6c94: $5b
	ld   e, l                                        ; $6c95: $5d
	nop                                              ; $6c96: $00
	nop                                              ; $6c97: $00
	and  e                                           ; $6c98: $a3
	and  l                                           ; $6c99: $a5
	db   $ec                                         ; $6c9a: $ec
	cp   d                                           ; $6c9b: $ba
	ld   e, c                                        ; $6c9c: $59
	sub  a                                           ; $6c9d: $97
	ld   a, h                                        ; $6c9e: $7c
	inc  b                                           ; $6c9f: $04
	ld   d, a                                        ; $6ca0: $57
	inc  b                                           ; $6ca1: $04
	ld   h, e                                        ; $6ca2: $63
	and  b                                           ; $6ca3: $a0
	ld   e, e                                        ; $6ca4: $5b
	ld   e, l                                        ; $6ca5: $5d
	nop                                              ; $6ca6: $00
	ld   bc, $7c6b                                   ; $6ca7: $01 $6b $7c
	inc  b                                           ; $6caa: $04
	ld   e, $7c                                      ; $6cab: $1e $7c
	inc  bc                                          ; $6cad: $03
	add  d                                           ; $6cae: $82
	ld   a, h                                        ; $6caf: $7c
	inc  b                                           ; $6cb0: $04
	ld   d, a                                        ; $6cb1: $57
	inc  b                                           ; $6cb2: $04
	ld   h, e                                        ; $6cb3: $63
	and  b                                           ; $6cb4: $a0
	ld   e, e                                        ; $6cb5: $5b
	ld   e, l                                        ; $6cb6: $5d
	nop                                              ; $6cb7: $00
	ld   [bc], a                                     ; $6cb8: $02
	rlca                                             ; $6cb9: $07
	call z, $0207                                    ; $6cba: $cc $07 $02
	ld   [bc], a                                     ; $6cbd: $02
	ld   bc, $2000                                   ; $6cbe: $01 $00 $20
	nop                                              ; $6cc1: $00
	rlca                                             ; $6cc2: $07
	and  h                                           ; $6cc3: $a4
	ld   b, $02                                      ; $6cc4: $06 $02
	ld   [bc], a                                     ; $6cc6: $02
	ld   bc, $2001                                   ; $6cc7: $01 $01 $20
	nop                                              ; $6cca: $00
	rlca                                             ; $6ccb: $07
	xor  b                                           ; $6ccc: $a8
	ld   [bc], a                                     ; $6ccd: $02
	ld   [bc], a                                     ; $6cce: $02
	ld   [bc], a                                     ; $6ccf: $02
	ld   bc, $2002                                   ; $6cd0: $01 $02 $20
	nop                                              ; $6cd3: $00
	jr   @+$04                                       ; $6cd4: $18 $02

	ld   bc, $7192                                   ; $6cd6: $01 $92 $71
	ld   a, a                                        ; $6cd9: $7f
	sbc  b                                           ; $6cda: $98
	sub  d                                           ; $6cdb: $92
	adc  a                                           ; $6cdc: $8f
	sbc  c                                           ; $6cdd: $99
	nop                                              ; $6cde: $00
	nop                                              ; $6cdf: $00
	ld   l, e                                        ; $6ce0: $6b
	ld   a, h                                        ; $6ce1: $7c
	inc  b                                           ; $6ce2: $04
	ld   e, $7c                                      ; $6ce3: $1e $7c
	inc  bc                                          ; $6ce5: $03
	add  d                                           ; $6ce6: $82
	ld   a, h                                        ; $6ce7: $7c
	inc  b                                           ; $6ce8: $04
	ld   d, a                                        ; $6ce9: $57
	inc  b                                           ; $6cea: $04
	ld   h, e                                        ; $6ceb: $63
	and  b                                           ; $6cec: $a0
	ld   e, e                                        ; $6ced: $5b
	ld   e, l                                        ; $6cee: $5d
	nop                                              ; $6cef: $00
	ld   bc, $d707                                   ; $6cf0: $01 $07 $d7
	ld   [bc], a                                     ; $6cf3: $02
	ld   [bc], a                                     ; $6cf4: $02
	ld   [bc], a                                     ; $6cf5: $02
	ld   bc, $2000                                   ; $6cf6: $01 $00 $20
	nop                                              ; $6cf9: $00
	rlca                                             ; $6cfa: $07
	cp   a                                           ; $6cfb: $bf
	ld   bc, $0202                                   ; $6cfc: $01 $02 $02
	ld   bc, $2001                                   ; $6cff: $01 $01 $20
	nop                                              ; $6d02: $00
	rrca                                             ; $6d03: $0f
	nop                                              ; $6d04: $00
	ld   bc, $5001                                   ; $6d05: $01 $01 $50
	sbc  [hl]                                        ; $6d08: $9e
	sub  d                                           ; $6d09: $92
	ld   [hl], c                                     ; $6d0a: $71
	ld   a, a                                        ; $6d0b: $7f
	sbc  b                                           ; $6d0c: $98
	ld   d, d                                        ; $6d0d: $52
	ld   d, d                                        ; $6d0e: $52
	ld   [hl], l                                     ; $6d0f: $75
	ld   h, a                                        ; $6d10: $67
	sbc  a                                           ; $6d11: $9f
	dec  c                                           ; $6d12: $0d
	ld   [hl], l                                     ; $6d13: $75
	ld   a, l                                        ; $6d14: $7d
	sbc  [hl]                                        ; $6d15: $9e
	inc  bc                                          ; $6d16: $03
	add  e                                           ; $6d17: $83
	dec  b                                           ; $6d18: $05
	dec  c                                           ; $6d19: $0d
	ld   h, l                                        ; $6d1a: $65
	adc  h                                           ; $6d1b: $8c
	ld   h, a                                        ; $6d1c: $67
	sbc  a                                           ; $6d1d: $9f
	dec  c                                           ; $6d1e: $0d
	nop                                              ; $6d1f: $00
	ld   a, [bc]                                     ; $6d20: $0a
	rrca                                             ; $6d21: $0f
	add  hl, bc                                      ; $6d22: $09
	nop                                              ; $6d23: $00
	ld   bc, $546b                                   ; $6d24: $01 $6b $54
	ld   e, c                                        ; $6d27: $59
	ld   d, d                                        ; $6d28: $52
	sbc  a                                           ; $6d29: $9f
	dec  c                                           ; $6d2a: $0d
	ld   [hl], l                                     ; $6d2b: $75
	sub  b                                           ; $6d2c: $90
	sbc  [hl]                                        ; $6d2d: $9e
	inc  b                                           ; $6d2e: $04
	di                                               ; $6d2f: $f3
	ld   e, d                                        ; $6d30: $5a
	ld   d, b                                        ; $6d31: $50
	ld   [hl], c                                     ; $6d32: $71
	ld   l, l                                        ; $6d33: $6d
	sub  a                                           ; $6d34: $97
	dec  c                                           ; $6d35: $0d
	ld   d, d                                        ; $6d36: $52
	ld   [hl], d                                     ; $6d37: $72
	ld   [hl], l                                     ; $6d38: $75
	sub  b                                           ; $6d39: $90
	dec  b                                           ; $6d3a: $05
	db   $10                                         ; $6d3b: $10
	sbc  c                                           ; $6d3c: $99
	halt                                             ; $6d3d: $76
	ld   d, d                                        ; $6d3e: $52
	ld   d, d                                        ; $6d3f: $52
	sbc  a                                           ; $6d40: $9f
	dec  c                                           ; $6d41: $0d
	nop                                              ; $6d42: $00
	ld   a, [bc]                                     ; $6d43: $0a
	ld   bc, $9166                                   ; $6d44: $01 $66 $91
	sbc  [hl]                                        ; $6d47: $9e
	ld   e, d                                        ; $6d48: $5a
	and  c                                           ; $6d49: $a1
	ld   a, [hl]                                     ; $6d4a: $7e
	sbc  d                                           ; $6d4b: $9a
	sub  [hl]                                        ; $6d4c: $96
	sbc  a                                           ; $6d4d: $9f
	dec  c                                           ; $6d4e: $0d
	nop                                              ; $6d4f: $00
	ld   a, [bc]                                     ; $6d50: $0a
	nop                                              ; $6d51: $00
	rrca                                             ; $6d52: $0f
	nop                                              ; $6d53: $00
	ld   bc, $6301                                   ; $6d54: $01 $01 $63

jr_05a_6d57:
	ld   e, l                                        ; $6d57: $5d
	sub  a                                           ; $6d58: $97
	ld   h, e                                        ; $6d59: $63
	and  c                                           ; $6d5a: $a1

Jump_05a_6d5b:
	ld   a, h                                        ; $6d5b: $7c
	inc  b                                           ; $6d5c: $04
	ld   l, l                                        ; $6d5d: $6d
	add  [hl]                                        ; $6d5e: $86
	ld   a, h                                        ; $6d5f: $7c
	inc  b                                           ; $6d60: $04
	ld   d, a                                        ; $6d61: $57
	inc  b                                           ; $6d62: $04
	ld   h, e                                        ; $6d63: $63
	ld   [hl], c                                     ; $6d64: $71

Jump_05a_6d65:
	ld   [hl], h                                     ; $6d65: $74
	dec  c                                           ; $6d66: $0d
	ld   [hl], a                                     ; $6d67: $77
	ld   d, h                                        ; $6d68: $54
	ld   a, b                                        ; $6d69: $78
	and  c                                           ; $6d6a: $a1
	ld   [hl], l                                     ; $6d6b: $75
	ld   h, l                                        ; $6d6c: $65
	sub  l                                           ; $6d6d: $95

jr_05a_6d6e:
	ld   d, h                                        ; $6d6e: $54
	ld   e, c                                        ; $6d6f: $59
	ld   sp, hl                                      ; $6d70: $f9
	dec  c                                           ; $6d71: $0d
	nop                                              ; $6d72: $00
	ld   a, [bc]                                     ; $6d73: $0a
	rrca                                             ; $6d74: $0f
	add  hl, bc                                      ; $6d75: $09
	nop                                              ; $6d76: $00
	ld   bc, $8e83                                   ; $6d77: $01 $83 $8e
	sbc  [hl]                                        ; $6d7a: $9e
	ld   l, e                                        ; $6d7b: $6b
	ld   d, h                                        ; $6d7c: $54
	ld   l, [hl]                                     ; $6d7d: $6e
	ld   a, b                                        ; $6d7e: $78
	rst  $38                                         ; $6d7f: $ff
	rst  $38                                         ; $6d80: $ff
	dec  c                                           ; $6d81: $0d
	nop                                              ; $6d82: $00
	ld   a, [bc]                                     ; $6d83: $0a
	rlca                                             ; $6d84: $07
	ret  nz                                          ; $6d85: $c0

	inc  bc                                          ; $6d86: $03
	inc  bc                                          ; $6d87: $03
	ld   de, $7301                                   ; $6d88: $11 $01 $73
	inc  hl                                          ; $6d8b: $23
	nop                                              ; $6d8c: $00
	rlca                                             ; $6d8d: $07
	rrca                                             ; $6d8e: $0f
	inc  b                                           ; $6d8f: $04
	inc  bc                                          ; $6d90: $03
	ld   de, $c401                                   ; $6d91: $11 $01 $c4
	dec  h                                           ; $6d94: $25
	nop                                              ; $6d95: $00
	ld   bc, $5d63                                   ; $6d96: $01 $63 $5d
	sub  a                                           ; $6d99: $97
	ld   e, l                                        ; $6d9a: $5d
	and  c                                           ; $6d9b: $a1
	ld   a, h                                        ; $6d9c: $7c
	sbc  [hl]                                        ; $6d9d: $9e
	ld   [$5d00], sp                                 ; $6d9e: $08 $00 $5d
	and  c                                           ; $6da1: $a1
	dec  c                                           ; $6da2: $0d
	add  [hl]                                        ; $6da3: $86
	ld   a, h                                        ; $6da4: $7c
	inc  b                                           ; $6da5: $04
	ld   d, a                                        ; $6da6: $57
	inc  b                                           ; $6da7: $04
	ld   h, e                                        ; $6da8: $63
	ld   a, l                                        ; $6da9: $7d
	sbc  [hl]                                        ; $6daa: $9e
	adc  h                                           ; $6dab: $8c
	ld   d, b                                        ; $6dac: $50
	adc  h                                           ; $6dad: $8c
	ld   d, b                                        ; $6dae: $50
	dec  c                                           ; $6daf: $0d
	halt                                             ; $6db0: $76
	ld   d, d                                        ; $6db1: $52
	ld   [hl], c                                     ; $6db2: $71
	ld   l, l                                        ; $6db3: $6d
	halt                                             ; $6db4: $76
	ld   h, c                                        ; $6db5: $61
	sbc  e                                           ; $6db6: $9b
	ld   e, c                                        ; $6db7: $59
	ld   a, b                                        ; $6db8: $78
	sbc  a                                           ; $6db9: $9f
	dec  c                                           ; $6dba: $0d
	nop                                              ; $6dbb: $00
	ld   a, [bc]                                     ; $6dbc: $0a
	ld   bc, $5d76                                   ; $6dbd: $01 $76 $5d
	ld   a, c                                        ; $6dc0: $79
	ld   [bc], a                                     ; $6dc1: $02
	jr   z, jr_05a_6e16                              ; $6dc2: $28 $52

	dec  b                                           ; $6dc4: $05
	jr   nz, jr_05a_6d57                             ; $6dc5: $20 $90

	ld   [bc], a                                     ; $6dc7: $02
	jp   nz, Jump_05a_7859                           ; $6dc8: $c2 $59 $78

	ld   d, d                                        ; $6dcb: $52
	ld   h, l                                        ; $6dcc: $65
	rst  $38                                         ; $6dcd: $ff
	rst  $38                                         ; $6dce: $ff
	dec  c                                           ; $6dcf: $0d
	ld   e, c                                        ; $6dd0: $59
	halt                                             ; $6dd1: $76
	ld   d, d                                        ; $6dd2: $52
	ld   [hl], c                                     ; $6dd3: $71
	ld   [hl], h                                     ; $6dd4: $74
	dec  b                                           ; $6dd5: $05
	dec  d                                           ; $6dd6: $15
	ld   d, d                                        ; $6dd7: $52
	halt                                             ; $6dd8: $76
	ld   d, d                                        ; $6dd9: $52
	ld   d, h                                        ; $6dda: $54
	dec  b                                           ; $6ddb: $05
	jr   nz, jr_05a_6d6e                             ; $6ddc: $20 $90

	dec  c                                           ; $6dde: $0d
	ld   [bc], a                                     ; $6ddf: $02
	jp   nz, Jump_05a_7859                           ; $6de0: $c2 $59 $78

	ld   d, d                                        ; $6de3: $52
	ld   a, b                                        ; $6de4: $78
	sbc  a                                           ; $6de5: $9f
	dec  c                                           ; $6de6: $0d
	nop                                              ; $6de7: $00
	ld   a, [bc]                                     ; $6de8: $0a
	ld   b, $1c                                      ; $6de9: $06 $1c
	ld   a, [bc]                                     ; $6deb: $0a
	ld   bc, $5d63                                   ; $6dec: $01 $63 $5d
	sub  a                                           ; $6def: $97
	ld   e, l                                        ; $6df0: $5d
	and  c                                           ; $6df1: $a1
	ld   a, h                                        ; $6df2: $7c
	sbc  [hl]                                        ; $6df3: $9e
	ld   [$5d00], sp                                 ; $6df4: $08 $00 $5d
	and  c                                           ; $6df7: $a1
	dec  c                                           ; $6df8: $0d
	add  [hl]                                        ; $6df9: $86
	ld   a, h                                        ; $6dfa: $7c
	inc  b                                           ; $6dfb: $04
	ld   d, a                                        ; $6dfc: $57
	inc  b                                           ; $6dfd: $04
	ld   h, e                                        ; $6dfe: $63
	ld   a, l                                        ; $6dff: $7d
	rst  $38                                         ; $6e00: $ff
	rst  $38                                         ; $6e01: $ff
	dec  c                                           ; $6e02: $0d
	ld   d, b                                        ; $6e03: $50
	adc  h                                           ; $6e04: $8c
	sbc  b                                           ; $6e05: $98
	sub  [hl]                                        ; $6e06: $96
	ld   e, l                                        ; $6e07: $5d
	ld   a, b                                        ; $6e08: $78
	ld   d, d                                        ; $6e09: $52
	ld   a, b                                        ; $6e0a: $78
	sbc  a                                           ; $6e0b: $9f
	dec  c                                           ; $6e0c: $0d
	nop                                              ; $6e0d: $00
	ld   a, [bc]                                     ; $6e0e: $0a
	ld   bc, $7190                                   ; $6e0f: $01 $90 $71
	halt                                             ; $6e12: $76
	ld   [bc], a                                     ; $6e13: $02
	ld   a, [de]                                     ; $6e14: $1a
	inc  bc                                          ; $6e15: $03

jr_05a_6e16:
	ld   l, e                                        ; $6e16: $6b
	ld   a, h                                        ; $6e17: $7c
	ld   [bc], a                                     ; $6e18: $02
	and  c                                           ; $6e19: $a1
	inc  bc                                          ; $6e1a: $03
	and  b                                           ; $6e1b: $a0
	ld   l, a                                        ; $6e1c: $6f
	and  b                                           ; $6e1d: $a0
	dec  c                                           ; $6e1e: $0d
	ld   [bc], a                                     ; $6e1f: $02
	ld   h, l                                        ; $6e20: $65
	ld   d, [hl]                                     ; $6e21: $56
	ld   [hl], h                                     ; $6e22: $74
	ld   [bc], a                                     ; $6e23: $02
	ld   a, a                                        ; $6e24: $7f
	inc  b                                           ; $6e25: $04
	dec  de                                          ; $6e26: $1b
	ld   h, l                                        ; $6e27: $65
	ld   l, l                                        ; $6e28: $6d
	adc  c                                           ; $6e29: $89
	ld   d, h                                        ; $6e2a: $54
	ld   e, d                                        ; $6e2b: $5a
	ld   d, d                                        ; $6e2c: $52
	ld   d, d                                        ; $6e2d: $52
	halt                                             ; $6e2e: $76
	dec  c                                           ; $6e2f: $0d
	dec  b                                           ; $6e30: $05
	pop  de                                          ; $6e31: $d1
	ld   d, h                                        ; $6e32: $54
	ld   l, h                                        ; $6e33: $6c
	sbc  a                                           ; $6e34: $9f
	dec  c                                           ; $6e35: $0d
	nop                                              ; $6e36: $00
	ld   a, [bc]                                     ; $6e37: $0a
	ld   b, $1c                                      ; $6e38: $06 $1c
	ld   a, [bc]                                     ; $6e3a: $0a
	ld   bc, $5d63                                   ; $6e3b: $01 $63 $5d
	sub  a                                           ; $6e3e: $97
	ld   e, l                                        ; $6e3f: $5d
	and  c                                           ; $6e40: $a1
	ld   a, h                                        ; $6e41: $7c
	sbc  [hl]                                        ; $6e42: $9e
	ld   [$5d00], sp                                 ; $6e43: $08 $00 $5d
	and  c                                           ; $6e46: $a1
	dec  c                                           ; $6e47: $0d
	add  [hl]                                        ; $6e48: $86
	ld   a, h                                        ; $6e49: $7c
	inc  b                                           ; $6e4a: $04
	ld   d, a                                        ; $6e4b: $57
	inc  b                                           ; $6e4c: $04
	ld   h, e                                        ; $6e4d: $63
	ld   a, l                                        ; $6e4e: $7d
	sbc  [hl]                                        ; $6e4f: $9e
	ld   e, c                                        ; $6e50: $59
	ld   a, b                                        ; $6e51: $78
	sbc  b                                           ; $6e52: $98
	ld   d, d                                        ; $6e53: $52
	ld   d, d                                        ; $6e54: $52
	dec  c                                           ; $6e55: $0d
	halt                                             ; $6e56: $76
	dec  b                                           ; $6e57: $05
	pop  de                                          ; $6e58: $d1
	ld   d, h                                        ; $6e59: $54
	ld   l, h                                        ; $6e5a: $6c
	sbc  a                                           ; $6e5b: $9f
	dec  c                                           ; $6e5c: $0d
	nop                                              ; $6e5d: $00
	ld   a, [bc]                                     ; $6e5e: $0a
	ld   bc, $ca02                                   ; $6e5f: $01 $02 $ca
	sub  b                                           ; $6e62: $90
	ld   l, e                                        ; $6e63: $6b
	sbc  d                                           ; $6e64: $9a
	ld   a, c                                        ; $6e65: $79
	ld   [bc], a                                     ; $6e66: $02
	add  hl, bc                                      ; $6e67: $09
	ld   d, [hl]                                     ; $6e68: $56
	sub  a                                           ; $6e69: $97
	sbc  d                                           ; $6e6a: $9a
	sbc  c                                           ; $6e6b: $99
	sub  [hl]                                        ; $6e6c: $96
	ld   d, h                                        ; $6e6d: $54
	ld   a, c                                        ; $6e6e: $79
	dec  c                                           ; $6e6f: $0d
	ld   e, d                                        ; $6e70: $5a
	and  c                                           ; $6e71: $a1
	ld   a, [hl]                                     ; $6e72: $7e
	sbc  c                                           ; $6e73: $99
	and  c                                           ; $6e74: $a1
	ld   l, [hl]                                     ; $6e75: $6e
	ld   l, h                                        ; $6e76: $6c
	sbc  a                                           ; $6e77: $9f
	dec  c                                           ; $6e78: $0d
	nop                                              ; $6e79: $00
	ld   a, [bc]                                     ; $6e7a: $0a
	ld   b, $1c                                      ; $6e7b: $06 $1c
	ld   a, [bc]                                     ; $6e7d: $0a
	rrca                                             ; $6e7e: $0f
	nop                                              ; $6e7f: $00
	ld   bc, $6701                                   ; $6e80: $01 $01 $67

jr_05a_6e83:
	adc  l                                           ; $6e83: $8d
	sbc  d                                           ; $6e84: $9a
	ld   h, e                                        ; $6e85: $63
	and  c                                           ; $6e86: $a1
	ld   a, h                                        ; $6e87: $7c
	inc  b                                           ; $6e88: $04
	ld   l, l                                        ; $6e89: $6d
	add  [hl]                                        ; $6e8a: $86
	ld   a, h                                        ; $6e8b: $7c
	inc  b                                           ; $6e8c: $04
	ld   d, a                                        ; $6e8d: $57
	inc  b                                           ; $6e8e: $04
	ld   h, e                                        ; $6e8f: $63
	ld   [hl], c                                     ; $6e90: $71
	ld   [hl], h                                     ; $6e91: $74
	dec  c                                           ; $6e92: $0d
	ld   [hl], a                                     ; $6e93: $77
	ld   d, h                                        ; $6e94: $54
	ld   a, b                                        ; $6e95: $78
	and  c                                           ; $6e96: $a1
	ld   [hl], l                                     ; $6e97: $75
	ld   h, l                                        ; $6e98: $65
	sub  l                                           ; $6e99: $95

jr_05a_6e9a:
	ld   d, h                                        ; $6e9a: $54
	ld   e, c                                        ; $6e9b: $59
	ld   sp, hl                                      ; $6e9c: $f9
	dec  c                                           ; $6e9d: $0d
	nop                                              ; $6e9e: $00
	ld   a, [bc]                                     ; $6e9f: $0a
	rrca                                             ; $6ea0: $0f
	add  hl, bc                                      ; $6ea1: $09
	nop                                              ; $6ea2: $00
	ld   bc, $8e83                                   ; $6ea3: $01 $83 $8e
	sbc  [hl]                                        ; $6ea6: $9e
	ld   l, e                                        ; $6ea7: $6b
	ld   d, h                                        ; $6ea8: $54
	ld   l, [hl]                                     ; $6ea9: $6e
	ld   a, b                                        ; $6eaa: $78
	rst  $38                                         ; $6eab: $ff
	rst  $38                                         ; $6eac: $ff
	dec  c                                           ; $6ead: $0d
	nop                                              ; $6eae: $00
	ld   a, [bc]                                     ; $6eaf: $0a
	rlca                                             ; $6eb0: $07
	db   $ec                                         ; $6eb1: $ec
	inc  b                                           ; $6eb2: $04
	inc  bc                                          ; $6eb3: $03
	ld   [de], a                                     ; $6eb4: $12
	ld   bc, $2373                                   ; $6eb5: $01 $73 $23
	nop                                              ; $6eb8: $00
	rlca                                             ; $6eb9: $07
	dec  sp                                          ; $6eba: $3b
	dec  b                                           ; $6ebb: $05
	inc  bc                                          ; $6ebc: $03
	ld   [de], a                                     ; $6ebd: $12
	ld   bc, $25c4                                   ; $6ebe: $01 $c4 $25
	nop                                              ; $6ec1: $00
	ld   bc, $8d67                                   ; $6ec2: $01 $67 $8d
	sbc  d                                           ; $6ec5: $9a
	ld   e, l                                        ; $6ec6: $5d
	and  c                                           ; $6ec7: $a1
	ld   a, h                                        ; $6ec8: $7c
	sbc  [hl]                                        ; $6ec9: $9e
	ld   [$5d00], sp                                 ; $6eca: $08 $00 $5d
	and  c                                           ; $6ecd: $a1
	dec  c                                           ; $6ece: $0d
	add  [hl]                                        ; $6ecf: $86
	ld   a, h                                        ; $6ed0: $7c
	inc  b                                           ; $6ed1: $04
	ld   d, a                                        ; $6ed2: $57
	inc  b                                           ; $6ed3: $04
	ld   h, e                                        ; $6ed4: $63
	ld   a, l                                        ; $6ed5: $7d
	sbc  [hl]                                        ; $6ed6: $9e
	adc  h                                           ; $6ed7: $8c
	ld   d, b                                        ; $6ed8: $50
	adc  h                                           ; $6ed9: $8c
	ld   d, b                                        ; $6eda: $50
	dec  c                                           ; $6edb: $0d
	halt                                             ; $6edc: $76
	ld   d, d                                        ; $6edd: $52
	ld   [hl], c                                     ; $6ede: $71
	ld   l, l                                        ; $6edf: $6d
	halt                                             ; $6ee0: $76
	ld   h, c                                        ; $6ee1: $61
	sbc  e                                           ; $6ee2: $9b
	ld   e, c                                        ; $6ee3: $59
	ld   a, b                                        ; $6ee4: $78
	sbc  a                                           ; $6ee5: $9f
	dec  c                                           ; $6ee6: $0d
	nop                                              ; $6ee7: $00
	ld   a, [bc]                                     ; $6ee8: $0a
	ld   bc, $5d76                                   ; $6ee9: $01 $76 $5d
	ld   a, c                                        ; $6eec: $79
	ld   [bc], a                                     ; $6eed: $02
	jr   z, jr_05a_6f42                              ; $6eee: $28 $52

	dec  b                                           ; $6ef0: $05
	jr   nz, jr_05a_6e83                             ; $6ef1: $20 $90

	ld   [bc], a                                     ; $6ef3: $02
	jp   nz, Jump_05a_7859                           ; $6ef4: $c2 $59 $78

	ld   d, d                                        ; $6ef7: $52
	ld   h, l                                        ; $6ef8: $65
	rst  $38                                         ; $6ef9: $ff
	rst  $38                                         ; $6efa: $ff
	dec  c                                           ; $6efb: $0d
	ld   e, c                                        ; $6efc: $59
	halt                                             ; $6efd: $76
	ld   d, d                                        ; $6efe: $52
	ld   [hl], c                                     ; $6eff: $71
	ld   [hl], h                                     ; $6f00: $74
	dec  b                                           ; $6f01: $05
	dec  d                                           ; $6f02: $15
	ld   d, d                                        ; $6f03: $52
	halt                                             ; $6f04: $76
	ld   d, d                                        ; $6f05: $52
	ld   d, h                                        ; $6f06: $54
	dec  b                                           ; $6f07: $05
	jr   nz, jr_05a_6e9a                             ; $6f08: $20 $90

	dec  c                                           ; $6f0a: $0d
	ld   [bc], a                                     ; $6f0b: $02
	jp   nz, Jump_05a_7859                           ; $6f0c: $c2 $59 $78

	ld   d, d                                        ; $6f0f: $52
	ld   a, b                                        ; $6f10: $78
	sbc  a                                           ; $6f11: $9f
	dec  c                                           ; $6f12: $0d
	nop                                              ; $6f13: $00
	ld   a, [bc]                                     ; $6f14: $0a
	ld   b, $1c                                      ; $6f15: $06 $1c
	ld   a, [bc]                                     ; $6f17: $0a
	ld   bc, $8d67                                   ; $6f18: $01 $67 $8d
	sbc  d                                           ; $6f1b: $9a
	ld   e, l                                        ; $6f1c: $5d
	and  c                                           ; $6f1d: $a1
	ld   a, h                                        ; $6f1e: $7c
	sbc  [hl]                                        ; $6f1f: $9e
	ld   [$5d00], sp                                 ; $6f20: $08 $00 $5d
	and  c                                           ; $6f23: $a1
	dec  c                                           ; $6f24: $0d
	add  [hl]                                        ; $6f25: $86
	ld   a, h                                        ; $6f26: $7c
	inc  b                                           ; $6f27: $04
	ld   d, a                                        ; $6f28: $57
	inc  b                                           ; $6f29: $04
	ld   h, e                                        ; $6f2a: $63
	ld   a, l                                        ; $6f2b: $7d
	rst  $38                                         ; $6f2c: $ff
	rst  $38                                         ; $6f2d: $ff
	dec  c                                           ; $6f2e: $0d
	ld   d, b                                        ; $6f2f: $50
	adc  h                                           ; $6f30: $8c
	sbc  b                                           ; $6f31: $98
	sub  [hl]                                        ; $6f32: $96
	ld   e, l                                        ; $6f33: $5d
	ld   a, b                                        ; $6f34: $78
	ld   d, d                                        ; $6f35: $52
	ld   a, b                                        ; $6f36: $78
	sbc  a                                           ; $6f37: $9f
	dec  c                                           ; $6f38: $0d
	nop                                              ; $6f39: $00
	ld   a, [bc]                                     ; $6f3a: $0a
	ld   bc, $7190                                   ; $6f3b: $01 $90 $71
	halt                                             ; $6f3e: $76
	ld   [bc], a                                     ; $6f3f: $02
	ld   a, [de]                                     ; $6f40: $1a
	inc  bc                                          ; $6f41: $03

jr_05a_6f42:
	ld   l, e                                        ; $6f42: $6b
	ld   a, h                                        ; $6f43: $7c
	ld   [bc], a                                     ; $6f44: $02
	and  c                                           ; $6f45: $a1
	inc  bc                                          ; $6f46: $03
	and  b                                           ; $6f47: $a0
	ld   l, a                                        ; $6f48: $6f
	and  b                                           ; $6f49: $a0
	dec  c                                           ; $6f4a: $0d
	ld   [bc], a                                     ; $6f4b: $02
	ld   h, l                                        ; $6f4c: $65
	ld   d, [hl]                                     ; $6f4d: $56
	ld   [hl], h                                     ; $6f4e: $74
	ld   [bc], a                                     ; $6f4f: $02
	ld   a, a                                        ; $6f50: $7f
	inc  b                                           ; $6f51: $04
	dec  de                                          ; $6f52: $1b
	ld   h, l                                        ; $6f53: $65
	ld   l, l                                        ; $6f54: $6d
	adc  c                                           ; $6f55: $89
	ld   d, h                                        ; $6f56: $54
	ld   e, d                                        ; $6f57: $5a
	ld   d, d                                        ; $6f58: $52
	ld   d, d                                        ; $6f59: $52
	halt                                             ; $6f5a: $76
	dec  c                                           ; $6f5b: $0d
	dec  b                                           ; $6f5c: $05
	pop  de                                          ; $6f5d: $d1
	ld   d, h                                        ; $6f5e: $54
	ld   l, h                                        ; $6f5f: $6c
	sbc  a                                           ; $6f60: $9f
	dec  c                                           ; $6f61: $0d
	nop                                              ; $6f62: $00
	ld   a, [bc]                                     ; $6f63: $0a
	ld   b, $1c                                      ; $6f64: $06 $1c
	ld   a, [bc]                                     ; $6f66: $0a
	ld   bc, $8d67                                   ; $6f67: $01 $67 $8d
	sbc  d                                           ; $6f6a: $9a
	ld   e, l                                        ; $6f6b: $5d
	and  c                                           ; $6f6c: $a1
	ld   a, h                                        ; $6f6d: $7c
	sbc  [hl]                                        ; $6f6e: $9e
	ld   [$5d00], sp                                 ; $6f6f: $08 $00 $5d
	and  c                                           ; $6f72: $a1
	dec  c                                           ; $6f73: $0d
	add  [hl]                                        ; $6f74: $86
	ld   a, h                                        ; $6f75: $7c
	inc  b                                           ; $6f76: $04
	ld   d, a                                        ; $6f77: $57
	inc  b                                           ; $6f78: $04
	ld   h, e                                        ; $6f79: $63
	ld   a, l                                        ; $6f7a: $7d
	sbc  [hl]                                        ; $6f7b: $9e
	ld   e, c                                        ; $6f7c: $59
	ld   a, b                                        ; $6f7d: $78
	sbc  b                                           ; $6f7e: $98
	ld   d, d                                        ; $6f7f: $52
	ld   d, d                                        ; $6f80: $52
	dec  c                                           ; $6f81: $0d
	halt                                             ; $6f82: $76
	dec  b                                           ; $6f83: $05
	pop  de                                          ; $6f84: $d1
	ld   d, h                                        ; $6f85: $54
	ld   l, h                                        ; $6f86: $6c
	sbc  a                                           ; $6f87: $9f
	dec  c                                           ; $6f88: $0d
	nop                                              ; $6f89: $00
	ld   a, [bc]                                     ; $6f8a: $0a
	ld   bc, $ca02                                   ; $6f8b: $01 $02 $ca
	sub  b                                           ; $6f8e: $90
	ld   l, e                                        ; $6f8f: $6b
	sbc  d                                           ; $6f90: $9a
	ld   a, c                                        ; $6f91: $79
	ld   [bc], a                                     ; $6f92: $02
	add  hl, bc                                      ; $6f93: $09
	ld   d, [hl]                                     ; $6f94: $56
	sub  a                                           ; $6f95: $97
	sbc  d                                           ; $6f96: $9a
	sbc  c                                           ; $6f97: $99
	sub  [hl]                                        ; $6f98: $96
	ld   d, h                                        ; $6f99: $54
	ld   a, c                                        ; $6f9a: $79
	dec  c                                           ; $6f9b: $0d
	ld   e, d                                        ; $6f9c: $5a
	and  c                                           ; $6f9d: $a1
	ld   a, [hl]                                     ; $6f9e: $7e
	sbc  c                                           ; $6f9f: $99
	and  c                                           ; $6fa0: $a1
	ld   l, [hl]                                     ; $6fa1: $6e
	ld   l, h                                        ; $6fa2: $6c
	sbc  a                                           ; $6fa3: $9f
	dec  c                                           ; $6fa4: $0d
	nop                                              ; $6fa5: $00
	ld   a, [bc]                                     ; $6fa6: $0a
	ld   b, $1c                                      ; $6fa7: $06 $1c
	ld   a, [bc]                                     ; $6fa9: $0a
	rrca                                             ; $6faa: $0f
	nop                                              ; $6fab: $00
	ld   bc, $df01                                   ; $6fac: $01 $01 $df
	db   $ec                                         ; $6faf: $ec
	and  e                                           ; $6fb0: $a3
	ld   h, e                                        ; $6fb1: $63
	and  c                                           ; $6fb2: $a1
	ld   a, h                                        ; $6fb3: $7c
	inc  b                                           ; $6fb4: $04
	ld   l, l                                        ; $6fb5: $6d
	add  [hl]                                        ; $6fb6: $86
	ld   a, h                                        ; $6fb7: $7c
	inc  b                                           ; $6fb8: $04
	ld   d, a                                        ; $6fb9: $57
	inc  b                                           ; $6fba: $04
	ld   h, e                                        ; $6fbb: $63
	ld   [hl], c                                     ; $6fbc: $71
	ld   [hl], h                                     ; $6fbd: $74
	dec  c                                           ; $6fbe: $0d
	ld   [hl], a                                     ; $6fbf: $77
	ld   d, h                                        ; $6fc0: $54
	ld   a, b                                        ; $6fc1: $78
	and  c                                           ; $6fc2: $a1
	ld   [hl], l                                     ; $6fc3: $75

jr_05a_6fc4:
	ld   h, l                                        ; $6fc4: $65
	sub  l                                           ; $6fc5: $95
	ld   d, h                                        ; $6fc6: $54
	ld   e, c                                        ; $6fc7: $59
	ld   sp, hl                                      ; $6fc8: $f9
	dec  c                                           ; $6fc9: $0d
	nop                                              ; $6fca: $00
	ld   a, [bc]                                     ; $6fcb: $0a
	rrca                                             ; $6fcc: $0f
	add  hl, bc                                      ; $6fcd: $09
	nop                                              ; $6fce: $00
	ld   bc, $8e83                                   ; $6fcf: $01 $83 $8e
	sbc  [hl]                                        ; $6fd2: $9e
	ld   l, e                                        ; $6fd3: $6b
	ld   d, h                                        ; $6fd4: $54
	ld   l, [hl]                                     ; $6fd5: $6e
	ld   a, b                                        ; $6fd6: $78
	rst  $38                                         ; $6fd7: $ff
	rst  $38                                         ; $6fd8: $ff
	dec  c                                           ; $6fd9: $0d
	nop                                              ; $6fda: $00
	ld   a, [bc]                                     ; $6fdb: $0a
	rlca                                             ; $6fdc: $07
	ld   d, $06                                      ; $6fdd: $16 $06
	inc  bc                                          ; $6fdf: $03
	inc  de                                          ; $6fe0: $13
	ld   bc, $2373                                   ; $6fe1: $01 $73 $23
	nop                                              ; $6fe4: $00
	rlca                                             ; $6fe5: $07
	ld   h, e                                        ; $6fe6: $63
	ld   b, $03                                      ; $6fe7: $06 $03
	inc  de                                          ; $6fe9: $13
	ld   bc, $25c4                                   ; $6fea: $01 $c4 $25
	nop                                              ; $6fed: $00
	ld   bc, $ecdf                                   ; $6fee: $01 $df $ec
	and  e                                           ; $6ff1: $a3
	ld   a, h                                        ; $6ff2: $7c
	sbc  [hl]                                        ; $6ff3: $9e
	ld   [$5d00], sp                                 ; $6ff4: $08 $00 $5d
	and  c                                           ; $6ff7: $a1
	dec  c                                           ; $6ff8: $0d
	add  [hl]                                        ; $6ff9: $86
	ld   a, h                                        ; $6ffa: $7c
	inc  b                                           ; $6ffb: $04
	ld   d, a                                        ; $6ffc: $57
	inc  b                                           ; $6ffd: $04
	ld   h, e                                        ; $6ffe: $63
	ld   a, l                                        ; $6fff: $7d
	sbc  [hl]                                        ; $7000: $9e
	adc  h                                           ; $7001: $8c
	ld   d, b                                        ; $7002: $50
	adc  h                                           ; $7003: $8c
	ld   d, b                                        ; $7004: $50
	dec  c                                           ; $7005: $0d
	halt                                             ; $7006: $76
	ld   d, d                                        ; $7007: $52
	ld   [hl], c                                     ; $7008: $71
	ld   l, l                                        ; $7009: $6d
	halt                                             ; $700a: $76
	ld   h, c                                        ; $700b: $61
	sbc  e                                           ; $700c: $9b
	ld   e, c                                        ; $700d: $59
	ld   a, b                                        ; $700e: $78
	sbc  a                                           ; $700f: $9f
	dec  c                                           ; $7010: $0d
	nop                                              ; $7011: $00
	ld   a, [bc]                                     ; $7012: $0a
	ld   bc, $5d76                                   ; $7013: $01 $76 $5d
	ld   a, c                                        ; $7016: $79
	ld   [bc], a                                     ; $7017: $02
	jr   z, jr_05a_706c                              ; $7018: $28 $52

	dec  b                                           ; $701a: $05
	jr   nz, @-$6e                                   ; $701b: $20 $90

	ld   [bc], a                                     ; $701d: $02
	jp   nz, Jump_05a_7859                           ; $701e: $c2 $59 $78

	ld   d, d                                        ; $7021: $52
	ld   h, l                                        ; $7022: $65
	rst  $38                                         ; $7023: $ff
	rst  $38                                         ; $7024: $ff
	dec  c                                           ; $7025: $0d
	ld   e, c                                        ; $7026: $59
	halt                                             ; $7027: $76
	ld   d, d                                        ; $7028: $52
	ld   [hl], c                                     ; $7029: $71
	ld   [hl], h                                     ; $702a: $74
	dec  b                                           ; $702b: $05
	dec  d                                           ; $702c: $15
	ld   d, d                                        ; $702d: $52
	halt                                             ; $702e: $76
	ld   d, d                                        ; $702f: $52
	ld   d, h                                        ; $7030: $54
	dec  b                                           ; $7031: $05
	jr   nz, jr_05a_6fc4                             ; $7032: $20 $90

	dec  c                                           ; $7034: $0d
	ld   [bc], a                                     ; $7035: $02
	jp   nz, Jump_05a_7859                           ; $7036: $c2 $59 $78

	ld   d, d                                        ; $7039: $52
	ld   a, b                                        ; $703a: $78
	sbc  a                                           ; $703b: $9f
	dec  c                                           ; $703c: $0d
	nop                                              ; $703d: $00
	ld   a, [bc]                                     ; $703e: $0a
	ld   b, $1c                                      ; $703f: $06 $1c
	ld   a, [bc]                                     ; $7041: $0a
	ld   bc, $ecdf                                   ; $7042: $01 $df $ec
	and  e                                           ; $7045: $a3
	ld   a, h                                        ; $7046: $7c
	sbc  [hl]                                        ; $7047: $9e
	ld   [$5d00], sp                                 ; $7048: $08 $00 $5d
	and  c                                           ; $704b: $a1
	dec  c                                           ; $704c: $0d
	add  [hl]                                        ; $704d: $86
	ld   a, h                                        ; $704e: $7c
	inc  b                                           ; $704f: $04
	ld   d, a                                        ; $7050: $57
	inc  b                                           ; $7051: $04
	ld   h, e                                        ; $7052: $63
	ld   a, l                                        ; $7053: $7d
	rst  $38                                         ; $7054: $ff
	rst  $38                                         ; $7055: $ff
	dec  c                                           ; $7056: $0d
	ld   d, b                                        ; $7057: $50
	adc  h                                           ; $7058: $8c
	sbc  b                                           ; $7059: $98
	sub  [hl]                                        ; $705a: $96
	ld   e, l                                        ; $705b: $5d
	ld   a, b                                        ; $705c: $78
	ld   d, d                                        ; $705d: $52
	ld   a, b                                        ; $705e: $78
	sbc  a                                           ; $705f: $9f
	dec  c                                           ; $7060: $0d
	nop                                              ; $7061: $00
	ld   a, [bc]                                     ; $7062: $0a
	ld   bc, $7190                                   ; $7063: $01 $90 $71
	halt                                             ; $7066: $76
	ld   [bc], a                                     ; $7067: $02
	ld   a, [de]                                     ; $7068: $1a
	inc  bc                                          ; $7069: $03
	ld   l, e                                        ; $706a: $6b
	ld   a, h                                        ; $706b: $7c

jr_05a_706c:
	ld   [bc], a                                     ; $706c: $02
	and  c                                           ; $706d: $a1
	inc  bc                                          ; $706e: $03
	and  b                                           ; $706f: $a0
	ld   l, a                                        ; $7070: $6f
	and  b                                           ; $7071: $a0
	dec  c                                           ; $7072: $0d
	ld   [bc], a                                     ; $7073: $02
	ld   h, l                                        ; $7074: $65
	ld   d, [hl]                                     ; $7075: $56
	ld   [hl], h                                     ; $7076: $74
	ld   [bc], a                                     ; $7077: $02
	ld   a, a                                        ; $7078: $7f
	inc  b                                           ; $7079: $04
	dec  de                                          ; $707a: $1b
	ld   h, l                                        ; $707b: $65
	ld   l, l                                        ; $707c: $6d
	adc  c                                           ; $707d: $89
	ld   d, h                                        ; $707e: $54
	ld   e, d                                        ; $707f: $5a
	ld   d, d                                        ; $7080: $52
	ld   d, d                                        ; $7081: $52
	halt                                             ; $7082: $76
	dec  c                                           ; $7083: $0d
	dec  b                                           ; $7084: $05
	pop  de                                          ; $7085: $d1
	ld   d, h                                        ; $7086: $54
	ld   l, h                                        ; $7087: $6c
	sbc  a                                           ; $7088: $9f
	dec  c                                           ; $7089: $0d
	nop                                              ; $708a: $00
	ld   a, [bc]                                     ; $708b: $0a
	ld   b, $1c                                      ; $708c: $06 $1c
	ld   a, [bc]                                     ; $708e: $0a
	ld   bc, $ecdf                                   ; $708f: $01 $df $ec
	and  e                                           ; $7092: $a3
	ld   a, h                                        ; $7093: $7c
	sbc  [hl]                                        ; $7094: $9e
	ld   [$5d00], sp                                 ; $7095: $08 $00 $5d
	and  c                                           ; $7098: $a1
	dec  c                                           ; $7099: $0d
	add  [hl]                                        ; $709a: $86
	ld   a, h                                        ; $709b: $7c
	inc  b                                           ; $709c: $04
	ld   d, a                                        ; $709d: $57
	inc  b                                           ; $709e: $04
	ld   h, e                                        ; $709f: $63
	ld   a, l                                        ; $70a0: $7d
	sbc  [hl]                                        ; $70a1: $9e
	ld   e, c                                        ; $70a2: $59
	ld   a, b                                        ; $70a3: $78
	sbc  b                                           ; $70a4: $98
	ld   d, d                                        ; $70a5: $52
	ld   d, d                                        ; $70a6: $52
	dec  c                                           ; $70a7: $0d
	halt                                             ; $70a8: $76
	dec  b                                           ; $70a9: $05
	pop  de                                          ; $70aa: $d1
	ld   d, h                                        ; $70ab: $54
	ld   l, h                                        ; $70ac: $6c
	sbc  a                                           ; $70ad: $9f
	dec  c                                           ; $70ae: $0d
	nop                                              ; $70af: $00
	ld   a, [bc]                                     ; $70b0: $0a
	ld   bc, $ca02                                   ; $70b1: $01 $02 $ca
	sub  b                                           ; $70b4: $90
	ld   l, e                                        ; $70b5: $6b
	sbc  d                                           ; $70b6: $9a
	ld   a, c                                        ; $70b7: $79
	ld   [bc], a                                     ; $70b8: $02
	add  hl, bc                                      ; $70b9: $09
	ld   d, [hl]                                     ; $70ba: $56
	sub  a                                           ; $70bb: $97
	sbc  d                                           ; $70bc: $9a
	sbc  c                                           ; $70bd: $99
	sub  [hl]                                        ; $70be: $96
	ld   d, h                                        ; $70bf: $54
	ld   a, c                                        ; $70c0: $79
	dec  c                                           ; $70c1: $0d
	ld   e, d                                        ; $70c2: $5a
	and  c                                           ; $70c3: $a1
	ld   a, [hl]                                     ; $70c4: $7e
	sbc  c                                           ; $70c5: $99
	and  c                                           ; $70c6: $a1
	ld   l, [hl]                                     ; $70c7: $6e
	ld   l, h                                        ; $70c8: $6c
	sbc  a                                           ; $70c9: $9f
	dec  c                                           ; $70ca: $0d
	nop                                              ; $70cb: $00
	ld   a, [bc]                                     ; $70cc: $0a
	ld   b, $1c                                      ; $70cd: $06 $1c
	ld   a, [bc]                                     ; $70cf: $0a
	rrca                                             ; $70d0: $0f
	nop                                              ; $70d1: $00
	ld   bc, $a301                                   ; $70d2: $01 $01 $a3
	and  l                                           ; $70d5: $a5
	db   $ec                                         ; $70d6: $ec
	cp   d                                           ; $70d7: $ba
	ld   a, h                                        ; $70d8: $7c
	inc  b                                           ; $70d9: $04
	ld   l, l                                        ; $70da: $6d
	add  [hl]                                        ; $70db: $86
	ld   a, h                                        ; $70dc: $7c
	inc  b                                           ; $70dd: $04
	ld   d, a                                        ; $70de: $57
	inc  b                                           ; $70df: $04
	ld   h, e                                        ; $70e0: $63
	ld   [hl], c                                     ; $70e1: $71
	ld   [hl], h                                     ; $70e2: $74
	dec  c                                           ; $70e3: $0d
	ld   [hl], a                                     ; $70e4: $77
	ld   d, h                                        ; $70e5: $54
	ld   a, b                                        ; $70e6: $78
	and  c                                           ; $70e7: $a1
	ld   [hl], l                                     ; $70e8: $75
	ld   h, l                                        ; $70e9: $65

jr_05a_70ea:
	sub  l                                           ; $70ea: $95
	ld   d, h                                        ; $70eb: $54
	ld   e, c                                        ; $70ec: $59
	ld   sp, hl                                      ; $70ed: $f9
	dec  c                                           ; $70ee: $0d
	nop                                              ; $70ef: $00
	ld   a, [bc]                                     ; $70f0: $0a
	rrca                                             ; $70f1: $0f
	add  hl, bc                                      ; $70f2: $09
	nop                                              ; $70f3: $00
	ld   bc, $8e83                                   ; $70f4: $01 $83 $8e
	sbc  [hl]                                        ; $70f7: $9e
	ld   l, e                                        ; $70f8: $6b
	ld   d, h                                        ; $70f9: $54
	ld   l, [hl]                                     ; $70fa: $6e
	ld   a, b                                        ; $70fb: $78
	rst  $38                                         ; $70fc: $ff
	rst  $38                                         ; $70fd: $ff
	dec  c                                           ; $70fe: $0d
	nop                                              ; $70ff: $00
	ld   a, [bc]                                     ; $7100: $0a
	rlca                                             ; $7101: $07
	inc  a                                           ; $7102: $3c
	rlca                                             ; $7103: $07
	inc  bc                                          ; $7104: $03
	inc  d                                           ; $7105: $14
	ld   bc, $2373                                   ; $7106: $01 $73 $23
	nop                                              ; $7109: $00
	rlca                                             ; $710a: $07
	adc  d                                           ; $710b: $8a
	rlca                                             ; $710c: $07
	inc  bc                                          ; $710d: $03
	inc  d                                           ; $710e: $14
	ld   bc, $25c4                                   ; $710f: $01 $c4 $25
	nop                                              ; $7112: $00
	ld   bc, $a5a3                                   ; $7113: $01 $a3 $a5
	db   $ec                                         ; $7116: $ec
	cp   d                                           ; $7117: $ba
	ld   a, h                                        ; $7118: $7c
	sbc  [hl]                                        ; $7119: $9e
	ld   [$5d00], sp                                 ; $711a: $08 $00 $5d
	and  c                                           ; $711d: $a1
	dec  c                                           ; $711e: $0d
	add  [hl]                                        ; $711f: $86
	ld   a, h                                        ; $7120: $7c
	inc  b                                           ; $7121: $04
	ld   d, a                                        ; $7122: $57
	inc  b                                           ; $7123: $04
	ld   h, e                                        ; $7124: $63
	ld   a, l                                        ; $7125: $7d
	sbc  [hl]                                        ; $7126: $9e
	adc  h                                           ; $7127: $8c
	ld   d, b                                        ; $7128: $50
	adc  h                                           ; $7129: $8c
	ld   d, b                                        ; $712a: $50
	dec  c                                           ; $712b: $0d
	halt                                             ; $712c: $76
	ld   d, d                                        ; $712d: $52
	ld   [hl], c                                     ; $712e: $71
	ld   l, l                                        ; $712f: $6d
	halt                                             ; $7130: $76
	ld   h, c                                        ; $7131: $61
	sbc  e                                           ; $7132: $9b
	ld   e, c                                        ; $7133: $59
	ld   a, b                                        ; $7134: $78
	sbc  a                                           ; $7135: $9f
	dec  c                                           ; $7136: $0d
	nop                                              ; $7137: $00
	ld   a, [bc]                                     ; $7138: $0a
	ld   bc, $5d76                                   ; $7139: $01 $76 $5d
	ld   a, c                                        ; $713c: $79
	ld   [bc], a                                     ; $713d: $02
	jr   z, jr_05a_7192                              ; $713e: $28 $52

	dec  b                                           ; $7140: $05
	jr   nz, @-$6e                                   ; $7141: $20 $90

	ld   [bc], a                                     ; $7143: $02
	jp   nz, Jump_05a_7859                           ; $7144: $c2 $59 $78

	ld   d, d                                        ; $7147: $52
	ld   h, l                                        ; $7148: $65
	rst  $38                                         ; $7149: $ff
	rst  $38                                         ; $714a: $ff
	dec  c                                           ; $714b: $0d
	ld   e, c                                        ; $714c: $59
	halt                                             ; $714d: $76
	ld   d, d                                        ; $714e: $52
	ld   [hl], c                                     ; $714f: $71
	ld   [hl], h                                     ; $7150: $74
	dec  b                                           ; $7151: $05
	dec  d                                           ; $7152: $15
	ld   d, d                                        ; $7153: $52
	halt                                             ; $7154: $76
	ld   d, d                                        ; $7155: $52
	ld   d, h                                        ; $7156: $54
	dec  b                                           ; $7157: $05
	jr   nz, jr_05a_70ea                             ; $7158: $20 $90

	dec  c                                           ; $715a: $0d
	ld   [bc], a                                     ; $715b: $02
	jp   nz, Jump_05a_7859                           ; $715c: $c2 $59 $78

	ld   d, d                                        ; $715f: $52
	ld   a, b                                        ; $7160: $78
	sbc  a                                           ; $7161: $9f
	dec  c                                           ; $7162: $0d
	nop                                              ; $7163: $00
	ld   a, [bc]                                     ; $7164: $0a
	ld   b, $1c                                      ; $7165: $06 $1c
	ld   a, [bc]                                     ; $7167: $0a
	ld   bc, $a5a3                                   ; $7168: $01 $a3 $a5
	db   $ec                                         ; $716b: $ec
	cp   d                                           ; $716c: $ba
	ld   a, h                                        ; $716d: $7c
	sbc  [hl]                                        ; $716e: $9e
	ld   [$5d00], sp                                 ; $716f: $08 $00 $5d
	and  c                                           ; $7172: $a1
	dec  c                                           ; $7173: $0d
	add  [hl]                                        ; $7174: $86
	ld   a, h                                        ; $7175: $7c
	inc  b                                           ; $7176: $04
	ld   d, a                                        ; $7177: $57
	inc  b                                           ; $7178: $04
	ld   h, e                                        ; $7179: $63
	ld   a, l                                        ; $717a: $7d
	rst  $38                                         ; $717b: $ff
	rst  $38                                         ; $717c: $ff
	dec  c                                           ; $717d: $0d
	ld   d, b                                        ; $717e: $50
	adc  h                                           ; $717f: $8c
	sbc  b                                           ; $7180: $98
	sub  [hl]                                        ; $7181: $96
	ld   e, l                                        ; $7182: $5d
	ld   a, b                                        ; $7183: $78
	ld   d, d                                        ; $7184: $52
	ld   a, b                                        ; $7185: $78
	sbc  a                                           ; $7186: $9f
	dec  c                                           ; $7187: $0d
	nop                                              ; $7188: $00
	ld   a, [bc]                                     ; $7189: $0a
	ld   bc, $7190                                   ; $718a: $01 $90 $71
	halt                                             ; $718d: $76
	ld   [bc], a                                     ; $718e: $02
	ld   a, [de]                                     ; $718f: $1a
	inc  bc                                          ; $7190: $03
	ld   l, e                                        ; $7191: $6b

Jump_05a_7192:
jr_05a_7192:
	ld   a, h                                        ; $7192: $7c
	ld   [bc], a                                     ; $7193: $02
	and  c                                           ; $7194: $a1
	inc  bc                                          ; $7195: $03
	and  b                                           ; $7196: $a0
	ld   l, a                                        ; $7197: $6f
	and  b                                           ; $7198: $a0
	dec  c                                           ; $7199: $0d
	ld   [bc], a                                     ; $719a: $02
	ld   h, l                                        ; $719b: $65
	ld   d, [hl]                                     ; $719c: $56
	ld   [hl], h                                     ; $719d: $74
	ld   [bc], a                                     ; $719e: $02
	ld   a, a                                        ; $719f: $7f
	inc  b                                           ; $71a0: $04
	dec  de                                          ; $71a1: $1b
	ld   h, l                                        ; $71a2: $65
	ld   l, l                                        ; $71a3: $6d
	adc  c                                           ; $71a4: $89
	ld   d, h                                        ; $71a5: $54
	ld   e, d                                        ; $71a6: $5a
	ld   d, d                                        ; $71a7: $52
	ld   d, d                                        ; $71a8: $52
	halt                                             ; $71a9: $76
	dec  c                                           ; $71aa: $0d
	dec  b                                           ; $71ab: $05
	pop  de                                          ; $71ac: $d1
	ld   d, h                                        ; $71ad: $54
	ld   l, h                                        ; $71ae: $6c
	sbc  a                                           ; $71af: $9f
	dec  c                                           ; $71b0: $0d
	nop                                              ; $71b1: $00
	ld   a, [bc]                                     ; $71b2: $0a
	ld   b, $1c                                      ; $71b3: $06 $1c
	ld   a, [bc]                                     ; $71b5: $0a
	ld   bc, $a5a3                                   ; $71b6: $01 $a3 $a5
	db   $ec                                         ; $71b9: $ec
	cp   d                                           ; $71ba: $ba
	ld   a, h                                        ; $71bb: $7c
	sbc  [hl]                                        ; $71bc: $9e
	ld   [$5d00], sp                                 ; $71bd: $08 $00 $5d
	and  c                                           ; $71c0: $a1
	dec  c                                           ; $71c1: $0d
	add  [hl]                                        ; $71c2: $86
	ld   a, h                                        ; $71c3: $7c
	inc  b                                           ; $71c4: $04
	ld   d, a                                        ; $71c5: $57
	inc  b                                           ; $71c6: $04
	ld   h, e                                        ; $71c7: $63
	ld   a, l                                        ; $71c8: $7d
	sbc  [hl]                                        ; $71c9: $9e
	ld   e, c                                        ; $71ca: $59
	ld   a, b                                        ; $71cb: $78
	sbc  b                                           ; $71cc: $98
	ld   d, d                                        ; $71cd: $52
	ld   d, d                                        ; $71ce: $52
	dec  c                                           ; $71cf: $0d
	halt                                             ; $71d0: $76
	dec  b                                           ; $71d1: $05
	pop  de                                          ; $71d2: $d1
	ld   d, h                                        ; $71d3: $54
	ld   l, h                                        ; $71d4: $6c
	sbc  a                                           ; $71d5: $9f
	dec  c                                           ; $71d6: $0d
	nop                                              ; $71d7: $00
	ld   a, [bc]                                     ; $71d8: $0a
	ld   bc, $ca02                                   ; $71d9: $01 $02 $ca
	sub  b                                           ; $71dc: $90
	ld   l, e                                        ; $71dd: $6b
	sbc  d                                           ; $71de: $9a
	ld   a, c                                        ; $71df: $79
	ld   [bc], a                                     ; $71e0: $02
	add  hl, bc                                      ; $71e1: $09
	ld   d, [hl]                                     ; $71e2: $56
	sub  a                                           ; $71e3: $97
	sbc  d                                           ; $71e4: $9a
	sbc  c                                           ; $71e5: $99
	sub  [hl]                                        ; $71e6: $96
	ld   d, h                                        ; $71e7: $54
	ld   a, c                                        ; $71e8: $79
	dec  c                                           ; $71e9: $0d
	ld   e, d                                        ; $71ea: $5a
	and  c                                           ; $71eb: $a1
	ld   a, [hl]                                     ; $71ec: $7e
	sbc  c                                           ; $71ed: $99
	and  c                                           ; $71ee: $a1
	ld   l, [hl]                                     ; $71ef: $6e
	ld   l, h                                        ; $71f0: $6c
	sbc  a                                           ; $71f1: $9f
	dec  c                                           ; $71f2: $0d
	nop                                              ; $71f3: $00
	ld   a, [bc]                                     ; $71f4: $0a
	ld   b, $1c                                      ; $71f5: $06 $1c
	ld   a, [bc]                                     ; $71f7: $0a
	rrca                                             ; $71f8: $0f
	nop                                              ; $71f9: $00
	ld   bc, $0201                                   ; $71fa: $01 $01 $02

jr_05a_71fd:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71fd: $cf
	dec  b                                           ; $71fe: $05
	ld   a, [de]                                     ; $71ff: $1a
	ld   h, e                                        ; $7200: $63
	and  c                                           ; $7201: $a1
	ld   a, h                                        ; $7202: $7c
	inc  b                                           ; $7203: $04
	ld   l, l                                        ; $7204: $6d
	add  [hl]                                        ; $7205: $86
	ld   a, h                                        ; $7206: $7c
	inc  b                                           ; $7207: $04
	ld   d, a                                        ; $7208: $57
	inc  b                                           ; $7209: $04
	ld   h, e                                        ; $720a: $63
	ld   [hl], c                                     ; $720b: $71
	ld   [hl], h                                     ; $720c: $74
	dec  c                                           ; $720d: $0d
	ld   [hl], a                                     ; $720e: $77
	ld   d, h                                        ; $720f: $54
	ld   a, b                                        ; $7210: $78
	and  c                                           ; $7211: $a1
	ld   [hl], l                                     ; $7212: $75
	ld   h, l                                        ; $7213: $65

jr_05a_7214:
	sub  l                                           ; $7214: $95
	ld   d, h                                        ; $7215: $54
	ld   e, c                                        ; $7216: $59
	ld   sp, hl                                      ; $7217: $f9
	dec  c                                           ; $7218: $0d
	nop                                              ; $7219: $00
	ld   a, [bc]                                     ; $721a: $0a
	rrca                                             ; $721b: $0f
	add  hl, bc                                      ; $721c: $09
	nop                                              ; $721d: $00
	ld   bc, $8e83                                   ; $721e: $01 $83 $8e
	sbc  [hl]                                        ; $7221: $9e
	ld   l, e                                        ; $7222: $6b
	ld   d, h                                        ; $7223: $54
	ld   l, [hl]                                     ; $7224: $6e
	ld   a, b                                        ; $7225: $78
	rst  $38                                         ; $7226: $ff
	rst  $38                                         ; $7227: $ff
	dec  c                                           ; $7228: $0d
	nop                                              ; $7229: $00
	ld   a, [bc]                                     ; $722a: $0a
	rlca                                             ; $722b: $07
	ld   h, [hl]                                     ; $722c: $66
	ld   [$1503], sp                                 ; $722d: $08 $03 $15
	ld   bc, $2373                                   ; $7230: $01 $73 $23
	nop                                              ; $7233: $00
	rlca                                             ; $7234: $07
	or   h                                           ; $7235: $b4
	ld   [$1503], sp                                 ; $7236: $08 $03 $15
	ld   bc, $25c4                                   ; $7239: $01 $c4 $25
	nop                                              ; $723c: $00
	ld   bc, $cf02                                   ; $723d: $01 $02 $cf
	dec  b                                           ; $7240: $05
	ld   a, [de]                                     ; $7241: $1a
	ld   a, h                                        ; $7242: $7c
	sbc  [hl]                                        ; $7243: $9e
	ld   [$5d00], sp                                 ; $7244: $08 $00 $5d
	and  c                                           ; $7247: $a1
	dec  c                                           ; $7248: $0d
	add  [hl]                                        ; $7249: $86
	ld   a, h                                        ; $724a: $7c
	inc  b                                           ; $724b: $04
	ld   d, a                                        ; $724c: $57
	inc  b                                           ; $724d: $04
	ld   h, e                                        ; $724e: $63
	ld   a, l                                        ; $724f: $7d
	sbc  [hl]                                        ; $7250: $9e
	adc  h                                           ; $7251: $8c
	ld   d, b                                        ; $7252: $50
	adc  h                                           ; $7253: $8c
	ld   d, b                                        ; $7254: $50
	dec  c                                           ; $7255: $0d
	halt                                             ; $7256: $76
	ld   d, d                                        ; $7257: $52
	ld   [hl], c                                     ; $7258: $71
	ld   l, l                                        ; $7259: $6d
	halt                                             ; $725a: $76
	ld   h, c                                        ; $725b: $61
	sbc  e                                           ; $725c: $9b
	ld   e, c                                        ; $725d: $59
	ld   a, b                                        ; $725e: $78
	sbc  a                                           ; $725f: $9f
	dec  c                                           ; $7260: $0d
	nop                                              ; $7261: $00
	ld   a, [bc]                                     ; $7262: $0a
	ld   bc, $5d76                                   ; $7263: $01 $76 $5d
	ld   a, c                                        ; $7266: $79
	ld   [bc], a                                     ; $7267: $02
	jr   z, jr_05a_72bc                              ; $7268: $28 $52

	dec  b                                           ; $726a: $05
	jr   nz, jr_05a_71fd                             ; $726b: $20 $90

	ld   [bc], a                                     ; $726d: $02
	jp   nz, Jump_05a_7859                           ; $726e: $c2 $59 $78

	ld   d, d                                        ; $7271: $52
	ld   h, l                                        ; $7272: $65
	rst  $38                                         ; $7273: $ff
	rst  $38                                         ; $7274: $ff
	dec  c                                           ; $7275: $0d
	ld   e, c                                        ; $7276: $59
	halt                                             ; $7277: $76
	ld   d, d                                        ; $7278: $52
	ld   [hl], c                                     ; $7279: $71
	ld   [hl], h                                     ; $727a: $74
	dec  b                                           ; $727b: $05
	dec  d                                           ; $727c: $15
	ld   d, d                                        ; $727d: $52
	halt                                             ; $727e: $76
	ld   d, d                                        ; $727f: $52
	ld   d, h                                        ; $7280: $54
	dec  b                                           ; $7281: $05
	jr   nz, jr_05a_7214                             ; $7282: $20 $90

	dec  c                                           ; $7284: $0d
	ld   [bc], a                                     ; $7285: $02
	jp   nz, Jump_05a_7859                           ; $7286: $c2 $59 $78

	ld   d, d                                        ; $7289: $52
	ld   a, b                                        ; $728a: $78
	sbc  a                                           ; $728b: $9f
	dec  c                                           ; $728c: $0d
	nop                                              ; $728d: $00
	ld   a, [bc]                                     ; $728e: $0a
	ld   b, $1c                                      ; $728f: $06 $1c
	ld   a, [bc]                                     ; $7291: $0a
	ld   bc, $cf02                                   ; $7292: $01 $02 $cf
	dec  b                                           ; $7295: $05
	ld   a, [de]                                     ; $7296: $1a
	ld   a, h                                        ; $7297: $7c
	sbc  [hl]                                        ; $7298: $9e
	ld   [$5d00], sp                                 ; $7299: $08 $00 $5d
	and  c                                           ; $729c: $a1
	dec  c                                           ; $729d: $0d
	add  [hl]                                        ; $729e: $86
	ld   a, h                                        ; $729f: $7c
	inc  b                                           ; $72a0: $04
	ld   d, a                                        ; $72a1: $57
	inc  b                                           ; $72a2: $04
	ld   h, e                                        ; $72a3: $63
	ld   a, l                                        ; $72a4: $7d
	rst  $38                                         ; $72a5: $ff
	rst  $38                                         ; $72a6: $ff
	dec  c                                           ; $72a7: $0d
	ld   d, b                                        ; $72a8: $50
	adc  h                                           ; $72a9: $8c
	sbc  b                                           ; $72aa: $98
	sub  [hl]                                        ; $72ab: $96
	ld   e, l                                        ; $72ac: $5d
	ld   a, b                                        ; $72ad: $78
	ld   d, d                                        ; $72ae: $52
	ld   a, b                                        ; $72af: $78
	sbc  a                                           ; $72b0: $9f
	dec  c                                           ; $72b1: $0d
	nop                                              ; $72b2: $00
	ld   a, [bc]                                     ; $72b3: $0a
	ld   bc, $7190                                   ; $72b4: $01 $90 $71
	halt                                             ; $72b7: $76
	ld   [bc], a                                     ; $72b8: $02
	ld   a, [de]                                     ; $72b9: $1a
	inc  bc                                          ; $72ba: $03
	ld   l, e                                        ; $72bb: $6b

jr_05a_72bc:
	ld   a, h                                        ; $72bc: $7c
	ld   [bc], a                                     ; $72bd: $02
	and  c                                           ; $72be: $a1
	inc  bc                                          ; $72bf: $03
	and  b                                           ; $72c0: $a0
	ld   l, a                                        ; $72c1: $6f
	and  b                                           ; $72c2: $a0
	dec  c                                           ; $72c3: $0d
	ld   [bc], a                                     ; $72c4: $02
	ld   h, l                                        ; $72c5: $65
	ld   d, [hl]                                     ; $72c6: $56
	ld   [hl], h                                     ; $72c7: $74
	ld   [bc], a                                     ; $72c8: $02
	ld   a, a                                        ; $72c9: $7f
	inc  b                                           ; $72ca: $04
	dec  de                                          ; $72cb: $1b
	ld   h, l                                        ; $72cc: $65
	ld   l, l                                        ; $72cd: $6d
	adc  c                                           ; $72ce: $89
	ld   d, h                                        ; $72cf: $54
	ld   e, d                                        ; $72d0: $5a
	ld   d, d                                        ; $72d1: $52
	ld   d, d                                        ; $72d2: $52
	halt                                             ; $72d3: $76
	dec  c                                           ; $72d4: $0d
	dec  b                                           ; $72d5: $05
	pop  de                                          ; $72d6: $d1
	ld   d, h                                        ; $72d7: $54
	ld   l, h                                        ; $72d8: $6c
	sbc  a                                           ; $72d9: $9f
	dec  c                                           ; $72da: $0d
	nop                                              ; $72db: $00
	ld   a, [bc]                                     ; $72dc: $0a
	ld   b, $1c                                      ; $72dd: $06 $1c
	ld   a, [bc]                                     ; $72df: $0a
	ld   bc, $cf02                                   ; $72e0: $01 $02 $cf
	dec  b                                           ; $72e3: $05
	ld   a, [de]                                     ; $72e4: $1a
	ld   a, h                                        ; $72e5: $7c
	sbc  [hl]                                        ; $72e6: $9e
	ld   [$5d00], sp                                 ; $72e7: $08 $00 $5d
	and  c                                           ; $72ea: $a1
	dec  c                                           ; $72eb: $0d
	add  [hl]                                        ; $72ec: $86
	ld   a, h                                        ; $72ed: $7c
	inc  b                                           ; $72ee: $04
	ld   d, a                                        ; $72ef: $57
	inc  b                                           ; $72f0: $04
	ld   h, e                                        ; $72f1: $63
	ld   a, l                                        ; $72f2: $7d
	sbc  [hl]                                        ; $72f3: $9e
	ld   e, c                                        ; $72f4: $59
	ld   a, b                                        ; $72f5: $78
	sbc  b                                           ; $72f6: $98
	ld   d, d                                        ; $72f7: $52
	ld   d, d                                        ; $72f8: $52
	dec  c                                           ; $72f9: $0d
	halt                                             ; $72fa: $76
	dec  b                                           ; $72fb: $05
	pop  de                                          ; $72fc: $d1
	ld   d, h                                        ; $72fd: $54
	ld   l, h                                        ; $72fe: $6c
	sbc  a                                           ; $72ff: $9f
	dec  c                                           ; $7300: $0d
	nop                                              ; $7301: $00
	ld   a, [bc]                                     ; $7302: $0a
	ld   bc, $ca02                                   ; $7303: $01 $02 $ca
	sub  b                                           ; $7306: $90
	ld   l, e                                        ; $7307: $6b
	sbc  d                                           ; $7308: $9a
	ld   a, c                                        ; $7309: $79
	ld   [bc], a                                     ; $730a: $02
	add  hl, bc                                      ; $730b: $09
	ld   d, [hl]                                     ; $730c: $56
	sub  a                                           ; $730d: $97
	sbc  d                                           ; $730e: $9a
	sbc  c                                           ; $730f: $99
	sub  [hl]                                        ; $7310: $96
	ld   d, h                                        ; $7311: $54
	ld   a, c                                        ; $7312: $79
	dec  c                                           ; $7313: $0d
	ld   e, d                                        ; $7314: $5a
	and  c                                           ; $7315: $a1
	ld   a, [hl]                                     ; $7316: $7e
	sbc  c                                           ; $7317: $99
	and  c                                           ; $7318: $a1
	ld   l, [hl]                                     ; $7319: $6e
	ld   l, h                                        ; $731a: $6c
	sbc  a                                           ; $731b: $9f
	dec  c                                           ; $731c: $0d
	nop                                              ; $731d: $00
	ld   a, [bc]                                     ; $731e: $0a
	ld   b, $1c                                      ; $731f: $06 $1c
	ld   a, [bc]                                     ; $7321: $0a
	rrca                                             ; $7322: $0f
	nop                                              ; $7323: $00
	ld   bc, $ac01                                   ; $7324: $01 $01 $ac
	push af                                          ; $7327: $f5
	bit  4, e                                        ; $7328: $cb $63
	and  c                                           ; $732a: $a1
	ld   a, h                                        ; $732b: $7c
	inc  b                                           ; $732c: $04
	ld   l, l                                        ; $732d: $6d
	add  [hl]                                        ; $732e: $86
	ld   a, h                                        ; $732f: $7c
	inc  b                                           ; $7330: $04
	ld   d, a                                        ; $7331: $57
	inc  b                                           ; $7332: $04
	ld   h, e                                        ; $7333: $63
	ld   [hl], c                                     ; $7334: $71
	ld   [hl], h                                     ; $7335: $74
	dec  c                                           ; $7336: $0d
	ld   [hl], a                                     ; $7337: $77
	ld   d, h                                        ; $7338: $54
	ld   a, b                                        ; $7339: $78
	and  c                                           ; $733a: $a1
	ld   [hl], l                                     ; $733b: $75

jr_05a_733c:
	ld   h, l                                        ; $733c: $65
	sub  l                                           ; $733d: $95
	ld   d, h                                        ; $733e: $54
	ld   e, c                                        ; $733f: $59
	ld   sp, hl                                      ; $7340: $f9
	dec  c                                           ; $7341: $0d
	nop                                              ; $7342: $00
	ld   a, [bc]                                     ; $7343: $0a
	rrca                                             ; $7344: $0f
	add  hl, bc                                      ; $7345: $09
	nop                                              ; $7346: $00
	ld   bc, $8e83                                   ; $7347: $01 $83 $8e
	sbc  [hl]                                        ; $734a: $9e
	ld   l, e                                        ; $734b: $6b
	ld   d, h                                        ; $734c: $54
	ld   l, [hl]                                     ; $734d: $6e
	ld   a, b                                        ; $734e: $78
	rst  $38                                         ; $734f: $ff
	rst  $38                                         ; $7350: $ff
	dec  c                                           ; $7351: $0d
	nop                                              ; $7352: $00
	ld   a, [bc]                                     ; $7353: $0a
	rlca                                             ; $7354: $07
	adc  [hl]                                        ; $7355: $8e
	add  hl, bc                                      ; $7356: $09
	inc  bc                                          ; $7357: $03
	ld   d, $01                                      ; $7358: $16 $01
	ld   [hl], e                                     ; $735a: $73
	inc  hl                                          ; $735b: $23
	nop                                              ; $735c: $00
	rlca                                             ; $735d: $07
	db   $db                                         ; $735e: $db
	add  hl, bc                                      ; $735f: $09
	inc  bc                                          ; $7360: $03
	ld   d, $01                                      ; $7361: $16 $01
	call nz, $0025                                   ; $7363: $c4 $25 $00
	ld   bc, $f5ac                                   ; $7366: $01 $ac $f5
	bit  7, h                                        ; $7369: $cb $7c
	sbc  [hl]                                        ; $736b: $9e
	ld   [$5d00], sp                                 ; $736c: $08 $00 $5d
	and  c                                           ; $736f: $a1
	dec  c                                           ; $7370: $0d
	add  [hl]                                        ; $7371: $86
	ld   a, h                                        ; $7372: $7c
	inc  b                                           ; $7373: $04
	ld   d, a                                        ; $7374: $57
	inc  b                                           ; $7375: $04
	ld   h, e                                        ; $7376: $63
	ld   a, l                                        ; $7377: $7d
	sbc  [hl]                                        ; $7378: $9e
	adc  h                                           ; $7379: $8c
	ld   d, b                                        ; $737a: $50
	adc  h                                           ; $737b: $8c
	ld   d, b                                        ; $737c: $50
	dec  c                                           ; $737d: $0d
	halt                                             ; $737e: $76
	ld   d, d                                        ; $737f: $52
	ld   [hl], c                                     ; $7380: $71
	ld   l, l                                        ; $7381: $6d
	halt                                             ; $7382: $76
	ld   h, c                                        ; $7383: $61
	sbc  e                                           ; $7384: $9b
	ld   e, c                                        ; $7385: $59
	ld   a, b                                        ; $7386: $78
	sbc  a                                           ; $7387: $9f
	dec  c                                           ; $7388: $0d
	nop                                              ; $7389: $00
	ld   a, [bc]                                     ; $738a: $0a
	ld   bc, $5d76                                   ; $738b: $01 $76 $5d
	ld   a, c                                        ; $738e: $79
	ld   [bc], a                                     ; $738f: $02
	jr   z, jr_05a_73e4                              ; $7390: $28 $52

	dec  b                                           ; $7392: $05
	jr   nz, @-$6e                                   ; $7393: $20 $90

	ld   [bc], a                                     ; $7395: $02
	jp   nz, Jump_05a_7859                           ; $7396: $c2 $59 $78

	ld   d, d                                        ; $7399: $52
	ld   h, l                                        ; $739a: $65
	rst  $38                                         ; $739b: $ff
	rst  $38                                         ; $739c: $ff
	dec  c                                           ; $739d: $0d
	ld   e, c                                        ; $739e: $59
	halt                                             ; $739f: $76
	ld   d, d                                        ; $73a0: $52
	ld   [hl], c                                     ; $73a1: $71
	ld   [hl], h                                     ; $73a2: $74
	dec  b                                           ; $73a3: $05
	dec  d                                           ; $73a4: $15
	ld   d, d                                        ; $73a5: $52
	halt                                             ; $73a6: $76
	ld   d, d                                        ; $73a7: $52
	ld   d, h                                        ; $73a8: $54
	dec  b                                           ; $73a9: $05
	jr   nz, jr_05a_733c                             ; $73aa: $20 $90

	dec  c                                           ; $73ac: $0d
	ld   [bc], a                                     ; $73ad: $02
	jp   nz, Jump_05a_7859                           ; $73ae: $c2 $59 $78

	ld   d, d                                        ; $73b1: $52
	ld   a, b                                        ; $73b2: $78
	sbc  a                                           ; $73b3: $9f
	dec  c                                           ; $73b4: $0d
	nop                                              ; $73b5: $00
	ld   a, [bc]                                     ; $73b6: $0a
	ld   b, $1c                                      ; $73b7: $06 $1c
	ld   a, [bc]                                     ; $73b9: $0a
	ld   bc, $f5ac                                   ; $73ba: $01 $ac $f5
	bit  7, h                                        ; $73bd: $cb $7c
	sbc  [hl]                                        ; $73bf: $9e
	ld   [$5d00], sp                                 ; $73c0: $08 $00 $5d
	and  c                                           ; $73c3: $a1
	dec  c                                           ; $73c4: $0d
	add  [hl]                                        ; $73c5: $86
	ld   a, h                                        ; $73c6: $7c
	inc  b                                           ; $73c7: $04
	ld   d, a                                        ; $73c8: $57
	inc  b                                           ; $73c9: $04
	ld   h, e                                        ; $73ca: $63
	ld   a, l                                        ; $73cb: $7d
	rst  $38                                         ; $73cc: $ff
	rst  $38                                         ; $73cd: $ff
	dec  c                                           ; $73ce: $0d
	ld   d, b                                        ; $73cf: $50
	adc  h                                           ; $73d0: $8c
	sbc  b                                           ; $73d1: $98
	sub  [hl]                                        ; $73d2: $96
	ld   e, l                                        ; $73d3: $5d
	ld   a, b                                        ; $73d4: $78
	ld   d, d                                        ; $73d5: $52
	ld   a, b                                        ; $73d6: $78
	sbc  a                                           ; $73d7: $9f
	dec  c                                           ; $73d8: $0d
	nop                                              ; $73d9: $00
	ld   a, [bc]                                     ; $73da: $0a
	ld   bc, $7190                                   ; $73db: $01 $90 $71
	halt                                             ; $73de: $76
	ld   [bc], a                                     ; $73df: $02
	ld   a, [de]                                     ; $73e0: $1a
	inc  bc                                          ; $73e1: $03
	ld   l, e                                        ; $73e2: $6b
	ld   a, h                                        ; $73e3: $7c

jr_05a_73e4:
	ld   [bc], a                                     ; $73e4: $02
	and  c                                           ; $73e5: $a1
	inc  bc                                          ; $73e6: $03
	and  b                                           ; $73e7: $a0
	ld   l, a                                        ; $73e8: $6f
	and  b                                           ; $73e9: $a0
	dec  c                                           ; $73ea: $0d
	ld   [bc], a                                     ; $73eb: $02
	ld   h, l                                        ; $73ec: $65
	ld   d, [hl]                                     ; $73ed: $56
	ld   [hl], h                                     ; $73ee: $74
	ld   [bc], a                                     ; $73ef: $02
	ld   a, a                                        ; $73f0: $7f
	inc  b                                           ; $73f1: $04
	dec  de                                          ; $73f2: $1b
	ld   h, l                                        ; $73f3: $65
	ld   l, l                                        ; $73f4: $6d
	adc  c                                           ; $73f5: $89
	ld   d, h                                        ; $73f6: $54
	ld   e, d                                        ; $73f7: $5a
	ld   d, d                                        ; $73f8: $52
	ld   d, d                                        ; $73f9: $52
	halt                                             ; $73fa: $76
	dec  c                                           ; $73fb: $0d
	dec  b                                           ; $73fc: $05
	pop  de                                          ; $73fd: $d1
	ld   d, h                                        ; $73fe: $54
	ld   l, h                                        ; $73ff: $6c
	sbc  a                                           ; $7400: $9f
	dec  c                                           ; $7401: $0d
	nop                                              ; $7402: $00
	ld   a, [bc]                                     ; $7403: $0a
	ld   b, $1c                                      ; $7404: $06 $1c
	ld   a, [bc]                                     ; $7406: $0a
	ld   bc, $f5ac                                   ; $7407: $01 $ac $f5
	bit  7, h                                        ; $740a: $cb $7c
	sbc  [hl]                                        ; $740c: $9e
	ld   [$5d00], sp                                 ; $740d: $08 $00 $5d
	and  c                                           ; $7410: $a1
	dec  c                                           ; $7411: $0d
	add  [hl]                                        ; $7412: $86
	ld   a, h                                        ; $7413: $7c
	inc  b                                           ; $7414: $04
	ld   d, a                                        ; $7415: $57
	inc  b                                           ; $7416: $04
	ld   h, e                                        ; $7417: $63
	ld   a, l                                        ; $7418: $7d
	sbc  [hl]                                        ; $7419: $9e
	ld   e, c                                        ; $741a: $59
	ld   a, b                                        ; $741b: $78
	sbc  b                                           ; $741c: $98
	ld   d, d                                        ; $741d: $52
	ld   d, d                                        ; $741e: $52
	dec  c                                           ; $741f: $0d
	halt                                             ; $7420: $76
	dec  b                                           ; $7421: $05
	pop  de                                          ; $7422: $d1
	ld   d, h                                        ; $7423: $54
	ld   l, h                                        ; $7424: $6c
	sbc  a                                           ; $7425: $9f
	dec  c                                           ; $7426: $0d
	nop                                              ; $7427: $00
	ld   a, [bc]                                     ; $7428: $0a
	ld   bc, $ca02                                   ; $7429: $01 $02 $ca
	sub  b                                           ; $742c: $90
	ld   l, e                                        ; $742d: $6b
	sbc  d                                           ; $742e: $9a
	ld   a, c                                        ; $742f: $79
	ld   [bc], a                                     ; $7430: $02
	add  hl, bc                                      ; $7431: $09
	ld   d, [hl]                                     ; $7432: $56
	sub  a                                           ; $7433: $97
	sbc  d                                           ; $7434: $9a
	sbc  c                                           ; $7435: $99
	sub  [hl]                                        ; $7436: $96
	ld   d, h                                        ; $7437: $54
	ld   a, c                                        ; $7438: $79
	dec  c                                           ; $7439: $0d
	ld   e, d                                        ; $743a: $5a
	and  c                                           ; $743b: $a1
	ld   a, [hl]                                     ; $743c: $7e
	sbc  c                                           ; $743d: $99
	and  c                                           ; $743e: $a1
	ld   l, [hl]                                     ; $743f: $6e
	ld   l, h                                        ; $7440: $6c
	sbc  a                                           ; $7441: $9f
	dec  c                                           ; $7442: $0d
	nop                                              ; $7443: $00
	ld   a, [bc]                                     ; $7444: $0a
	ld   b, $1c                                      ; $7445: $06 $1c
	ld   a, [bc]                                     ; $7447: $0a
	rrca                                             ; $7448: $0f
	nop                                              ; $7449: $00
	ld   bc, $6b01                                   ; $744a: $01 $01 $6b
	ld   d, h                                        ; $744d: $54
	ld   [hl], l                                     ; $744e: $75
	ld   h, a                                        ; $744f: $67
	ld   e, c                                        ; $7450: $59
	rst  $38                                         ; $7451: $ff
	rst  $38                                         ; $7452: $ff
	dec  c                                           ; $7453: $0d
	ld   d, b                                        ; $7454: $50
	sbc  b                                           ; $7455: $98
	ld   e, d                                        ; $7456: $5a
	halt                                             ; $7457: $76
	ld   d, h                                        ; $7458: $54
	ld   h, d                                        ; $7459: $62
	ld   h, h                                        ; $745a: $64
	ld   d, d                                        ; $745b: $52
	adc  h                                           ; $745c: $8c
	ld   h, l                                        ; $745d: $65
	ld   l, l                                        ; $745e: $6d
	sbc  a                                           ; $745f: $9f
	dec  c                                           ; $7460: $0d
	nop                                              ; $7461: $00
	ld   a, [bc]                                     ; $7462: $0a
	rrca                                             ; $7463: $0f
	add  hl, bc                                      ; $7464: $09
	nop                                              ; $7465: $00
	ld   bc, $a154                                   ; $7466: $01 $54 $a1
	sbc  a                                           ; $7469: $9f
	dec  c                                           ; $746a: $0d
	ld   e, d                                        ; $746b: $5a
	and  c                                           ; $746c: $a1
	ld   a, [hl]                                     ; $746d: $7e
	sbc  d                                           ; $746e: $9a
	sub  [hl]                                        ; $746f: $96
	sbc  a                                           ; $7470: $9f
	dec  c                                           ; $7471: $0d
	nop                                              ; $7472: $00
	ld   a, [bc]                                     ; $7473: $0a
	nop                                              ; $7474: $00
	rrca                                             ; $7475: $0f
	nop                                              ; $7476: $00
	ld   bc, $5001                                   ; $7477: $01 $01 $50
	ld   a, h                                        ; $747a: $7c
	sbc  [hl]                                        ; $747b: $9e
	inc  bc                                          ; $747c: $03
	ld   l, l                                        ; $747d: $6d
	dec  b                                           ; $747e: $05
	add  hl, de                                      ; $747f: $19
	ld   a, h                                        ; $7480: $7c
	and  e                                           ; $7481: $a3
	jp   z, $a5d1                                    ; $7482: $ca $d1 $a5

	cp   d                                           ; $7485: $ba
	and  b                                           ; $7486: $a0
	dec  c                                           ; $7487: $0d
	ld   e, b                                        ; $7488: $58
	ld   [bc], a                                     ; $7489: $02
	add  b                                           ; $748a: $80
	ld   d, d                                        ; $748b: $52
	ld   h, l                                        ; $748c: $65
	ld   l, l                                        ; $748d: $6d
	ld   d, d                                        ; $748e: $52
	and  c                                           ; $748f: $a1
	ld   [hl], l                                     ; $7490: $75
	ld   h, a                                        ; $7491: $67
	ld   e, a                                        ; $7492: $5f
	ld   [hl], a                                     ; $7493: $77
	sbc  a                                           ; $7494: $9f
	dec  c                                           ; $7495: $0d
	nop                                              ; $7496: $00
	ld   a, [bc]                                     ; $7497: $0a
	rrca                                             ; $7498: $0f
	add  hl, bc                                      ; $7499: $09
	nop                                              ; $749a: $00
	ld   bc, $8e83                                   ; $749b: $01 $83 $8e
	sbc  [hl]                                        ; $749e: $9e
	ld   l, e                                        ; $749f: $6b
	ld   d, h                                        ; $74a0: $54
	ld   l, [hl]                                     ; $74a1: $6e
	ld   a, b                                        ; $74a2: $78
	rst  $38                                         ; $74a3: $ff
	rst  $38                                         ; $74a4: $ff
	dec  c                                           ; $74a5: $0d
	nop                                              ; $74a6: $00
	ld   a, [bc]                                     ; $74a7: $0a
	rlca                                             ; $74a8: $07
	ld   b, d                                        ; $74a9: $42
	dec  bc                                          ; $74aa: $0b
	inc  bc                                          ; $74ab: $03
	inc  hl                                          ; $74ac: $23
	ld   bc, $237d                                   ; $74ad: $01 $7d $23
	inc  bc                                          ; $74b0: $03
	inc  h                                           ; $74b1: $24
	ld   bc, $237d                                   ; $74b2: $01 $7d $23
	inc  e                                           ; $74b5: $1c
	inc  bc                                          ; $74b6: $03
	dec  h                                           ; $74b7: $25
	ld   bc, $237d                                   ; $74b8: $01 $7d $23
	inc  e                                           ; $74bb: $1c
	inc  bc                                          ; $74bc: $03
	ld   [hl+], a                                    ; $74bd: $22
	ld   bc, $237d                                   ; $74be: $01 $7d $23
	inc  e                                           ; $74c1: $1c
	inc  bc                                          ; $74c2: $03
	ld   hl, $7d01                                   ; $74c3: $21 $01 $7d
	inc  hl                                          ; $74c6: $23
	inc  e                                           ; $74c7: $1c
	nop                                              ; $74c8: $00
	rlca                                             ; $74c9: $07
	or   [hl]                                        ; $74ca: $b6
	dec  bc                                          ; $74cb: $0b
	inc  bc                                          ; $74cc: $03
	inc  hl                                          ; $74cd: $23
	ld   bc, $259f                                   ; $74ce: $01 $9f $25
	inc  bc                                          ; $74d1: $03
	inc  h                                           ; $74d2: $24
	ld   bc, $259f                                   ; $74d3: $01 $9f $25
	inc  e                                           ; $74d6: $1c
	inc  bc                                          ; $74d7: $03
	dec  h                                           ; $74d8: $25
	ld   bc, $259f                                   ; $74d9: $01 $9f $25
	inc  e                                           ; $74dc: $1c
	inc  bc                                          ; $74dd: $03
	ld   [hl+], a                                    ; $74de: $22
	ld   bc, $259f                                   ; $74df: $01 $9f $25
	inc  e                                           ; $74e2: $1c
	inc  bc                                          ; $74e3: $03
	ld   hl, $9f01                                   ; $74e4: $21 $01 $9f
	dec  h                                           ; $74e7: $25
	inc  e                                           ; $74e8: $1c
	nop                                              ; $74e9: $00
	rlca                                             ; $74ea: $07
	ld   b, b                                        ; $74eb: $40
	inc  c                                           ; $74ec: $0c
	inc  bc                                          ; $74ed: $03
	inc  hl                                          ; $74ee: $23
	ld   bc, $238c                                   ; $74ef: $01 $8c $23
	inc  bc                                          ; $74f2: $03
	inc  h                                           ; $74f3: $24
	ld   bc, $238c                                   ; $74f4: $01 $8c $23
	inc  e                                           ; $74f7: $1c
	inc  bc                                          ; $74f8: $03
	dec  h                                           ; $74f9: $25
	ld   bc, $238c                                   ; $74fa: $01 $8c $23
	inc  e                                           ; $74fd: $1c
	nop                                              ; $74fe: $00
	rlca                                             ; $74ff: $07
	ldh  a, [$0c]                                    ; $7500: $f0 $0c
	inc  bc                                          ; $7502: $03
	inc  h                                           ; $7503: $24
	inc  bc                                          ; $7504: $03
	inc  hl                                          ; $7505: $23
	inc  hl                                          ; $7506: $23
	inc  bc                                          ; $7507: $03
	inc  h                                           ; $7508: $24
	inc  bc                                          ; $7509: $03
	dec  h                                           ; $750a: $25
	inc  hl                                          ; $750b: $23
	inc  e                                           ; $750c: $1c
	inc  bc                                          ; $750d: $03
	inc  h                                           ; $750e: $24
	inc  bc                                          ; $750f: $03
	ld   [hl+], a                                    ; $7510: $22
	inc  hl                                          ; $7511: $23
	inc  e                                           ; $7512: $1c
	inc  bc                                          ; $7513: $03
	inc  h                                           ; $7514: $24
	inc  bc                                          ; $7515: $03
	ld   hl, $1c23                                   ; $7516: $21 $23 $1c
	nop                                              ; $7519: $00
	rlca                                             ; $751a: $07
	adc  h                                           ; $751b: $8c
	dec  c                                           ; $751c: $0d
	inc  bc                                          ; $751d: $03
	dec  h                                           ; $751e: $25
	inc  bc                                          ; $751f: $03
	inc  hl                                          ; $7520: $23
	inc  hl                                          ; $7521: $23
	inc  bc                                          ; $7522: $03
	dec  h                                           ; $7523: $25
	inc  bc                                          ; $7524: $03
	inc  h                                           ; $7525: $24
	inc  hl                                          ; $7526: $23
	inc  e                                           ; $7527: $1c
	inc  bc                                          ; $7528: $03
	dec  h                                           ; $7529: $25
	inc  bc                                          ; $752a: $03
	ld   [hl+], a                                    ; $752b: $22
	inc  hl                                          ; $752c: $23
	inc  e                                           ; $752d: $1c
	inc  bc                                          ; $752e: $03
	dec  h                                           ; $752f: $25
	inc  bc                                          ; $7530: $03
	ld   hl, $1c23                                   ; $7531: $21 $23 $1c
	nop                                              ; $7534: $00
	rlca                                             ; $7535: $07
	dec  l                                           ; $7536: $2d
	ld   c, $03                                      ; $7537: $0e $03
	ld   [hl+], a                                    ; $7539: $22
	inc  bc                                          ; $753a: $03
	inc  hl                                          ; $753b: $23
	inc  hl                                          ; $753c: $23
	inc  bc                                          ; $753d: $03
	ld   [hl+], a                                    ; $753e: $22
	inc  bc                                          ; $753f: $03
	inc  h                                           ; $7540: $24
	inc  hl                                          ; $7541: $23
	inc  e                                           ; $7542: $1c
	inc  bc                                          ; $7543: $03
	ld   [hl+], a                                    ; $7544: $22
	inc  bc                                          ; $7545: $03
	dec  h                                           ; $7546: $25
	inc  hl                                          ; $7547: $23
	inc  e                                           ; $7548: $1c
	inc  bc                                          ; $7549: $03
	ld   [hl+], a                                    ; $754a: $22
	inc  bc                                          ; $754b: $03
	ld   hl, $1c23                                   ; $754c: $21 $23 $1c
	nop                                              ; $754f: $00
	rlca                                             ; $7550: $07
	ld   h, a                                        ; $7551: $67
	rrca                                             ; $7552: $0f
	inc  bc                                          ; $7553: $03
	inc  hl                                          ; $7554: $23
	inc  bc                                          ; $7555: $03
	ld   [hl+], a                                    ; $7556: $22
	inc  hl                                          ; $7557: $23
	inc  bc                                          ; $7558: $03
	inc  hl                                          ; $7559: $23
	inc  bc                                          ; $755a: $03
	inc  h                                           ; $755b: $24
	inc  hl                                          ; $755c: $23
	inc  e                                           ; $755d: $1c
	inc  bc                                          ; $755e: $03
	inc  hl                                          ; $755f: $23
	inc  bc                                          ; $7560: $03
	ld   [hl+], a                                    ; $7561: $22
	inc  hl                                          ; $7562: $23
	inc  e                                           ; $7563: $1c
	inc  bc                                          ; $7564: $03
	inc  hl                                          ; $7565: $23
	inc  bc                                          ; $7566: $03
	ld   hl, $1c23                                   ; $7567: $21 $23 $1c
	nop                                              ; $756a: $00
	ld   b, $c3                                      ; $756b: $06 $c3
	ld   c, $0f                                      ; $756d: $0e $0f
	add  hl, bc                                      ; $756f: $09
	nop                                              ; $7570: $00
	ld   bc, $ca02                                   ; $7571: $01 $02 $ca
	ld   a, h                                        ; $7574: $7c
	inc  b                                           ; $7575: $04
	ld   a, d                                        ; $7576: $7a
	ld   [bc], a                                     ; $7577: $02
	ld   a, e                                        ; $7578: $7b
	sbc  [hl]                                        ; $7579: $9e
	and  e                                           ; $757a: $a3
	jp   z, $a5d1                                    ; $757b: $ca $d1 $a5

	cp   d                                           ; $757e: $ba
	ld   d, d                                        ; $757f: $52
	ld   l, d                                        ; $7580: $6a
	and  c                                           ; $7581: $a1
	ld   a, c                                        ; $7582: $79
	dec  c                                           ; $7583: $0d
	sub  b                                           ; $7584: $90
	ld   [hl], c                                     ; $7585: $71
	halt                                             ; $7586: $76
	ld   l, a                                        ; $7587: $6f
	sub  c                                           ; $7588: $91
	and  c                                           ; $7589: $a1
	halt                                             ; $758a: $76
	inc  bc                                          ; $758b: $03
	ld   l, l                                        ; $758c: $6d
	dec  b                                           ; $758d: $05
	add  hl, de                                      ; $758e: $19
	ld   a, c                                        ; $758f: $79
	dec  c                                           ; $7590: $0d
	inc  bc                                          ; $7591: $03
	add  b                                           ; $7592: $80
	ld   l, l                                        ; $7593: $6d
	adc  c                                           ; $7594: $89
	ld   d, h                                        ; $7595: $54
	ld   e, d                                        ; $7596: $5a
	ld   d, d                                        ; $7597: $52
	ld   d, d                                        ; $7598: $52
	ld   a, b                                        ; $7599: $78
	sbc  a                                           ; $759a: $9f
	dec  c                                           ; $759b: $0d
	nop                                              ; $759c: $00
	ld   a, [bc]                                     ; $759d: $0a
	ld   bc, $d303                                   ; $759e: $01 $03 $d3
	dec  b                                           ; $75a1: $05
	ld   a, [bc]                                     ; $75a2: $0a
	sub  b                                           ; $75a3: $90
	ld   l, c                                        ; $75a4: $69
	ld   l, b                                        ; $75a5: $68
	ld   a, c                                        ; $75a6: $79
	ld   [bc], a                                     ; $75a7: $02
	reti                                             ; $75a8: $d9


	ld   [bc], a                                     ; $75a9: $02
	ld   h, e                                        ; $75aa: $63
	ld   l, [hl]                                     ; $75ab: $6e
	ld   e, a                                        ; $75ac: $5f
	dec  c                                           ; $75ad: $0d
	sub  b                                           ; $75ae: $90
	halt                                             ; $75af: $76

Call_05a_75b0:
	adc  a                                           ; $75b0: $8f
	sbc  c                                           ; $75b1: $99
	sub  [hl]                                        ; $75b2: $96
	ld   d, h                                        ; $75b3: $54
	ld   [hl], l                                     ; $75b4: $75
	ld   a, l                                        ; $75b5: $7d
	pop  bc                                          ; $75b6: $c1
	db   $e3                                         ; $75b7: $e3
	ld   l, [hl]                                     ; $75b8: $6e
	ld   l, h                                        ; $75b9: $6c
	sbc  a                                           ; $75ba: $9f
	dec  c                                           ; $75bb: $0d
	nop                                              ; $75bc: $00
	ld   a, [bc]                                     ; $75bd: $0a
	rrca                                             ; $75be: $0f
	nop                                              ; $75bf: $00
	ld   bc, $7d01                                   ; $75c0: $01 $01 $7d
	sbc  [hl]                                        ; $75c3: $9e
	ld   a, l                                        ; $75c4: $7d
	ld   d, d                                        ; $75c5: $52
	sbc  a                                           ; $75c6: $9f
	dec  c                                           ; $75c7: $0d
	sbc  l                                           ; $75c8: $9d
	ld   e, c                                        ; $75c9: $59
	sbc  b                                           ; $75ca: $98
	adc  h                                           ; $75cb: $8c
	ld   h, l                                        ; $75cc: $65
	ld   l, l                                        ; $75cd: $6d
	ld   a, [$0dfa]                                  ; $75ce: $fa $fa $0d
	ld   d, b                                        ; $75d1: $50
	sbc  b                                           ; $75d2: $98
	ld   e, d                                        ; $75d3: $5a
	halt                                             ; $75d4: $76
	ld   d, h                                        ; $75d5: $54
	ld   h, d                                        ; $75d6: $62
	ld   h, h                                        ; $75d7: $64

Call_05a_75d8:
	ld   d, d                                        ; $75d8: $52
	adc  h                                           ; $75d9: $8c
	ld   h, a                                        ; $75da: $67
	ld   a, [$000d]                                  ; $75db: $fa $0d $00
	ld   a, [bc]                                     ; $75de: $0a
	ld   b, $08                                      ; $75df: $06 $08
	db   $10                                         ; $75e1: $10
	inc  e                                           ; $75e2: $1c
	add  hl, bc                                      ; $75e3: $09
	ld   bc, $0101                                   ; $75e4: $01 $01 $01
	ld   [$5d00], sp                                 ; $75e7: $08 $00 $5d
	and  c                                           ; $75ea: $a1
	ld   a, l                                        ; $75eb: $7d
	dec  c                                           ; $75ec: $0d
	ld   [bc], a                                     ; $75ed: $02
	and  l                                           ; $75ee: $a5
	ld   a, h                                        ; $75ef: $7c
	halt                                             ; $75f0: $76
	ld   h, c                                        ; $75f1: $61
	sbc  e                                           ; $75f2: $9b
	ld   [bc], a                                     ; $75f3: $02
	sbc  l                                           ; $75f4: $9d
	ld   d, h                                        ; $75f5: $54
	ld   h, c                                        ; $75f6: $61
	halt                                             ; $75f7: $76
	ld   a, b                                        ; $75f8: $78
	ld   h, l                                        ; $75f9: $65
	ld   l, [hl]                                     ; $75fa: $6e
	ld   a, b                                        ; $75fb: $78
	sbc  a                                           ; $75fc: $9f
	dec  c                                           ; $75fd: $0d
	nop                                              ; $75fe: $00
	ld   a, [bc]                                     ; $75ff: $0a
	ld   bc, $7c77                                   ; $7600: $01 $77 $7c
	inc  bc                                          ; $7603: $03
	ld   l, l                                        ; $7604: $6d
	dec  b                                           ; $7605: $05
	add  hl, de                                      ; $7606: $19
	sub  b                                           ; $7607: $90
	adc  h                                           ; $7608: $8c
	and  c                                           ; $7609: $a1
	add  a                                           ; $760a: $87
	and  c                                           ; $760b: $a1
	ld   a, b                                        ; $760c: $78
	ld   e, l                                        ; $760d: $5d
	dec  c                                           ; $760e: $0d
	ld   e, d                                        ; $760f: $5a
	and  c                                           ; $7610: $a1
	ld   a, [hl]                                     ; $7611: $7e
	ld   [hl], c                                     ; $7612: $71
	ld   [hl], h                                     ; $7613: $74
	sub  d                                           ; $7614: $92
	ld   [hl], c                                     ; $7615: $71
	ld   [hl], h                                     ; $7616: $74
	ld   d, d                                        ; $7617: $52
	sbc  c                                           ; $7618: $99
	dec  c                                           ; $7619: $0d
	sub  [hl]                                        ; $761a: $96
	ld   d, h                                        ; $761b: $54
	ld   l, [hl]                                     ; $761c: $6e
	ld   h, l                                        ; $761d: $65
	rst  $38                                         ; $761e: $ff
	rst  $38                                         ; $761f: $ff
	dec  c                                           ; $7620: $0d
	nop                                              ; $7621: $00
	ld   a, [bc]                                     ; $7622: $0a
	ld   bc, $9a61                                   ; $7623: $01 $61 $9a
	ld   e, c                                        ; $7626: $59
	sub  a                                           ; $7627: $97
	sub  b                                           ; $7628: $90
	sbc  [hl]                                        ; $7629: $9e
	ld   h, c                                        ; $762a: $61
	ld   a, h                                        ; $762b: $7c
	inc  bc                                          ; $762c: $03
	cp   $03                                         ; $762d: $fe $03
	add  [hl]                                        ; $762f: $86
	ld   [hl], l                                     ; $7630: $75
	dec  c                                           ; $7631: $0d
	ld   d, d                                        ; $7632: $52
	ld   e, a                                        ; $7633: $5f
	ld   a, [hl]                                     ; $7634: $7e
	sbc  [hl]                                        ; $7635: $9e
	ld   [bc], a                                     ; $7636: $02
	sbc  l                                           ; $7637: $9d
	ld   d, h                                        ; $7638: $54
	ld   h, c                                        ; $7639: $61
	halt                                             ; $763a: $76
	ld   a, b                                        ; $763b: $78
	ld   h, l                                        ; $763c: $65
	ld   l, [hl]                                     ; $763d: $6e
	sbc  a                                           ; $763e: $9f
	dec  c                                           ; $763f: $0d
	nop                                              ; $7640: $00
	ld   a, [bc]                                     ; $7641: $0a
	rrca                                             ; $7642: $0f
	nop                                              ; $7643: $00
	ld   bc, $7d01                                   ; $7644: $01 $01 $7d
	ld   d, d                                        ; $7647: $52
	ld   a, [$500d]                                  ; $7648: $fa $0d $50
	sbc  b                                           ; $764b: $98
	ld   e, d                                        ; $764c: $5a
	halt                                             ; $764d: $76
	ld   d, h                                        ; $764e: $54
	ld   h, d                                        ; $764f: $62
	ld   h, h                                        ; $7650: $64
	ld   d, d                                        ; $7651: $52
	adc  h                                           ; $7652: $8c
	ld   h, a                                        ; $7653: $67
	ld   a, [$0dfa]                                  ; $7654: $fa $fa $0d
	ld   [bc], a                                     ; $7657: $02
	and  l                                           ; $7658: $a5
	ld   [bc], a                                     ; $7659: $02
	xor  d                                           ; $765a: $aa
	sub  b                                           ; $765b: $90
	sbc  [hl]                                        ; $765c: $9e
	ld   e, d                                        ; $765d: $5a
	and  c                                           ; $765e: $a1
	ld   a, [hl]                                     ; $765f: $7e
	sbc  b                                           ; $7660: $98
	adc  h                                           ; $7661: $8c
	ld   h, a                                        ; $7662: $67
	ld   [hl], c                                     ; $7663: $71
	ld   a, [$0dfa]                                  ; $7664: $fa $fa $0d
	nop                                              ; $7667: $00
	ld   a, [bc]                                     ; $7668: $0a
	ld   b, $08                                      ; $7669: $06 $08
	db   $10                                         ; $766b: $10
	rrca                                             ; $766c: $0f
	add  hl, bc                                      ; $766d: $09
	nop                                              ; $766e: $00
	ld   bc, $0008                                   ; $766f: $01 $08 $00
	ld   e, l                                        ; $7672: $5d
	and  c                                           ; $7673: $a1
	ld   a, l                                        ; $7674: $7d
	dec  c                                           ; $7675: $0d
	ld   [bc], a                                     ; $7676: $02
	jr   nc, jr_05a_767d                             ; $7677: $30 $04

	dec  de                                          ; $7679: $1b
	inc  b                                           ; $767a: $04
	ld   b, e                                        ; $767b: $43
	dec  b                                           ; $767c: $05

jr_05a_767d:
	ld   a, [bc]                                     ; $767d: $0a
	ld   a, h                                        ; $767e: $7c
	inc  b                                           ; $767f: $04
	ld   d, a                                        ; $7680: $57
	dec  b                                           ; $7681: $05
	add  hl, hl                                      ; $7682: $29
	ld   e, d                                        ; $7683: $5a
	inc  bc                                          ; $7684: $03
	ld   d, a                                        ; $7685: $57
	inc  b                                           ; $7686: $04
	dec  c                                           ; $7687: $0d
	inc  b                                           ; $7688: $04
	jr   nz, jr_05a_7704                             ; $7689: $20 $79

	dec  c                                           ; $768b: $0d
	inc  bc                                          ; $768c: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $768d: $cf
	ld   d, d                                        ; $768e: $52
	sub  [hl]                                        ; $768f: $96
	ld   d, h                                        ; $7690: $54
	ld   l, [hl]                                     ; $7691: $6e
	ld   a, b                                        ; $7692: $78
	sbc  a                                           ; $7693: $9f
	dec  c                                           ; $7694: $0d
	nop                                              ; $7695: $00
	ld   a, [bc]                                     ; $7696: $0a
	ld   bc, $5d63                                   ; $7697: $01 $63 $5d
	sub  a                                           ; $769a: $97
	ld   e, l                                        ; $769b: $5d
	and  c                                           ; $769c: $a1
	ld   a, h                                        ; $769d: $7c
	inc  bc                                          ; $769e: $03
	ld   l, l                                        ; $769f: $6d
	dec  b                                           ; $76a0: $05
	add  hl, de                                      ; $76a1: $19
	and  b                                           ; $76a2: $a0
	dec  c                                           ; $76a3: $0d
	ld   l, a                                        ; $76a4: $6f
	sub  l                                           ; $76a5: $95
	ld   [hl], c                                     ; $76a6: $71
	halt                                             ; $76a7: $76
	inc  b                                           ; $76a8: $04
	rrca                                             ; $76a9: $0f
	adc  a                                           ; $76aa: $8f
	ld   a, c                                        ; $76ab: $79
	halt                                             ; $76ac: $76
	ld   [hl], c                                     ; $76ad: $71
	ld   [hl], h                                     ; $76ae: $74
	ld   e, b                                        ; $76af: $58
	ld   e, l                                        ; $76b0: $5d
	halt                                             ; $76b1: $76
	dec  c                                           ; $76b2: $0d
	ld   d, d                                        ; $76b3: $52
	ld   d, d                                        ; $76b4: $52
	and  c                                           ; $76b5: $a1
	ld   h, [hl]                                     ; $76b6: $66
	sub  c                                           ; $76b7: $91
	ld   a, b                                        ; $76b8: $78
	ld   d, d                                        ; $76b9: $52
	ld   e, c                                        ; $76ba: $59
	ld   a, b                                        ; $76bb: $78
	sbc  a                                           ; $76bc: $9f
	dec  c                                           ; $76bd: $0d
	nop                                              ; $76be: $00
	ld   a, [bc]                                     ; $76bf: $0a
	ld   bc, $5d63                                   ; $76c0: $01 $63 $5d
	sub  a                                           ; $76c3: $97
	ld   e, l                                        ; $76c4: $5d
	and  c                                           ; $76c5: $a1
	ld   a, h                                        ; $76c6: $7c
	inc  bc                                          ; $76c7: $03
	ld   l, l                                        ; $76c8: $6d
	dec  b                                           ; $76c9: $05
	add  hl, de                                      ; $76ca: $19
	ld   a, l                                        ; $76cb: $7d
	sbc  [hl]                                        ; $76cc: $9e
	dec  c                                           ; $76cd: $0d
	inc  bc                                          ; $76ce: $03
	ld   [hl], l                                     ; $76cf: $75
	di                                               ; $76d0: $f3
	ld   [bc], a                                     ; $76d1: $02
	adc  h                                           ; $76d2: $8c
	di                                               ; $76d3: $f3
	inc  b                                           ; $76d4: $04
	dec  c                                           ; $76d5: $0d
	db   $10                                         ; $76d6: $10
	halt                                             ; $76d7: $76
	sbc  [hl]                                        ; $76d8: $9e
	inc  bc                                          ; $76d9: $03
	ld   d, a                                        ; $76da: $57
	ld   [hl], h                                     ; $76db: $74
	ld   a, h                                        ; $76dc: $7c
	inc  b                                           ; $76dd: $04
	rst  JumpTable                                         ; $76de: $df
	inc  bc                                          ; $76df: $03
	and  [hl]                                        ; $76e0: $a6
	ld   e, d                                        ; $76e1: $5a
	dec  c                                           ; $76e2: $0d
	ld   [bc], a                                     ; $76e3: $02
	call nc, Call_05a_5102                           ; $76e4: $d4 $02 $51
	ld   h, e                                        ; $76e7: $63
	sbc  d                                           ; $76e8: $9a
	sbc  c                                           ; $76e9: $99
	ld   e, c                                        ; $76ea: $59
	sub  a                                           ; $76eb: $97
	ld   a, e                                        ; $76ec: $7b
	sbc  a                                           ; $76ed: $9f
	dec  c                                           ; $76ee: $0d
	nop                                              ; $76ef: $00
	ld   a, [bc]                                     ; $76f0: $0a
	rrca                                             ; $76f1: $0f
	nop                                              ; $76f2: $00
	ld   bc, $7801                                   ; $76f3: $01 $01 $78
	sbc  c                                           ; $76f6: $99
	adc  c                                           ; $76f7: $89
	ld   [hl], a                                     ; $76f8: $77
	rst  $38                                         ; $76f9: $ff
	rst  $38                                         ; $76fa: $ff
	dec  c                                           ; $76fb: $0d
	sbc  l                                           ; $76fc: $9d
	ld   e, c                                        ; $76fd: $59
	sbc  b                                           ; $76fe: $98
	adc  h                                           ; $76ff: $8c
	ld   h, l                                        ; $7700: $65
	ld   l, l                                        ; $7701: $6d
	sbc  [hl]                                        ; $7702: $9e
	and  e                                           ; $7703: $a3

jr_05a_7704:
	jp   z, $a5d1                                    ; $7704: $ca $d1 $a5

	cp   d                                           ; $7707: $ba
	sbc  [hl]                                        ; $7708: $9e
	dec  c                                           ; $7709: $0d
	ld   d, b                                        ; $770a: $50
	sbc  b                                           ; $770b: $98
	ld   e, d                                        ; $770c: $5a
	halt                                             ; $770d: $76
	ld   d, h                                        ; $770e: $54
	ld   h, d                                        ; $770f: $62
	ld   h, h                                        ; $7710: $64
	ld   d, d                                        ; $7711: $52
	adc  h                                           ; $7712: $8c
	ld   h, l                                        ; $7713: $65
	ld   l, l                                        ; $7714: $6d
	sbc  a                                           ; $7715: $9f
	dec  c                                           ; $7716: $0d
	nop                                              ; $7717: $00
	ld   a, [bc]                                     ; $7718: $0a
	ld   b, $08                                      ; $7719: $06 $08
	db   $10                                         ; $771b: $10
	rrca                                             ; $771c: $0f
	add  hl, bc                                      ; $771d: $09
	nop                                              ; $771e: $00
	ld   bc, $0008                                   ; $771f: $01 $08 $00
	ld   e, l                                        ; $7722: $5d
	and  c                                           ; $7723: $a1
	ld   a, l                                        ; $7724: $7d
	dec  c                                           ; $7725: $0d
	inc  bc                                          ; $7726: $03
	and  [hl]                                        ; $7727: $a6
	inc  bc                                          ; $7728: $03
	ld   [hl], b                                     ; $7729: $70
	ld   h, e                                        ; $772a: $63
	ld   a, h                                        ; $772b: $7c
	inc  b                                           ; $772c: $04
	ld   d, a                                        ; $772d: $57
	dec  b                                           ; $772e: $05
	add  hl, hl                                      ; $772f: $29
	ld   e, d                                        ; $7730: $5a
	dec  c                                           ; $7731: $0d
	inc  bc                                          ; $7732: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7733: $cf
	ld   d, d                                        ; $7734: $52
	sub  [hl]                                        ; $7735: $96
	ld   d, h                                        ; $7736: $54
	ld   l, [hl]                                     ; $7737: $6e
	ld   a, b                                        ; $7738: $78
	sbc  a                                           ; $7739: $9f
	dec  c                                           ; $773a: $0d
	nop                                              ; $773b: $00
	ld   a, [bc]                                     ; $773c: $0a
	ld   bc, $8d67                                   ; $773d: $01 $67 $8d
	sbc  d                                           ; $7740: $9a
	ld   e, l                                        ; $7741: $5d
	and  c                                           ; $7742: $a1
	ld   a, h                                        ; $7743: $7c
	inc  bc                                          ; $7744: $03
	ld   l, l                                        ; $7745: $6d
	dec  b                                           ; $7746: $05
	add  hl, de                                      ; $7747: $19
	and  b                                           ; $7748: $a0
	dec  c                                           ; $7749: $0d
	ld   l, a                                        ; $774a: $6f
	sub  l                                           ; $774b: $95
	ld   [hl], c                                     ; $774c: $71
	halt                                             ; $774d: $76
	inc  b                                           ; $774e: $04
	rrca                                             ; $774f: $0f
	adc  a                                           ; $7750: $8f
	ld   a, c                                        ; $7751: $79
	halt                                             ; $7752: $76
	ld   [hl], c                                     ; $7753: $71
	ld   [hl], h                                     ; $7754: $74
	ld   e, b                                        ; $7755: $58
	ld   e, l                                        ; $7756: $5d
	halt                                             ; $7757: $76
	dec  c                                           ; $7758: $0d
	ld   d, d                                        ; $7759: $52
	ld   d, d                                        ; $775a: $52
	and  c                                           ; $775b: $a1
	ld   h, [hl]                                     ; $775c: $66
	sub  c                                           ; $775d: $91
	ld   a, b                                        ; $775e: $78
	ld   d, d                                        ; $775f: $52
	ld   e, c                                        ; $7760: $59
	ld   a, b                                        ; $7761: $78
	sbc  a                                           ; $7762: $9f
	dec  c                                           ; $7763: $0d
	nop                                              ; $7764: $00
	ld   a, [bc]                                     ; $7765: $0a
	ld   bc, $8d67                                   ; $7766: $01 $67 $8d
	sbc  d                                           ; $7769: $9a
	ld   e, l                                        ; $776a: $5d
	and  c                                           ; $776b: $a1
	ld   a, h                                        ; $776c: $7c
	inc  bc                                          ; $776d: $03
	ld   l, l                                        ; $776e: $6d
	dec  b                                           ; $776f: $05
	add  hl, de                                      ; $7770: $19
	ld   a, l                                        ; $7771: $7d
	dec  c                                           ; $7772: $0d
	inc  bc                                          ; $7773: $03
	and  [hl]                                        ; $7774: $a6
	inc  bc                                          ; $7775: $03
	ld   [hl], b                                     ; $7776: $70
	ld   h, e                                        ; $7777: $63
	ld   a, h                                        ; $7778: $7c
	ld   [bc], a                                     ; $7779: $02
	call nc, Call_05a_5102                           ; $777a: $d4 $02 $51
	ld   a, c                                        ; $777d: $79
	ld   a, l                                        ; $777e: $7d
	dec  c                                           ; $777f: $0d
	ld   d, h                                        ; $7780: $54
	ld   [hl], c                                     ; $7781: $71
	ld   [hl], h                                     ; $7782: $74
	ld   [hl], d                                     ; $7783: $72
	ld   e, a                                        ; $7784: $5f
	ld   l, [hl]                                     ; $7785: $6e
	ld   e, c                                        ; $7786: $59
	sub  a                                           ; $7787: $97
	ld   a, e                                        ; $7788: $7b
	sbc  a                                           ; $7789: $9f
	dec  c                                           ; $778a: $0d
	nop                                              ; $778b: $00
	ld   a, [bc]                                     ; $778c: $0a
	rrca                                             ; $778d: $0f
	nop                                              ; $778e: $00
	ld   bc, $7801                                   ; $778f: $01 $01 $78
	sbc  c                                           ; $7792: $99
	adc  c                                           ; $7793: $89
	ld   [hl], a                                     ; $7794: $77
	rst  $38                                         ; $7795: $ff
	rst  $38                                         ; $7796: $ff
	dec  c                                           ; $7797: $0d
	sbc  l                                           ; $7798: $9d
	ld   e, c                                        ; $7799: $59
	sbc  b                                           ; $779a: $98
	adc  h                                           ; $779b: $8c
	ld   h, l                                        ; $779c: $65
	ld   l, l                                        ; $779d: $6d
	sbc  [hl]                                        ; $779e: $9e
	and  e                                           ; $779f: $a3
	jp   z, $a5d1                                    ; $77a0: $ca $d1 $a5

	cp   d                                           ; $77a3: $ba
	sbc  [hl]                                        ; $77a4: $9e
	dec  c                                           ; $77a5: $0d
	ld   d, b                                        ; $77a6: $50
	sbc  b                                           ; $77a7: $98
	ld   e, d                                        ; $77a8: $5a
	halt                                             ; $77a9: $76
	ld   d, h                                        ; $77aa: $54
	ld   h, d                                        ; $77ab: $62
	ld   h, h                                        ; $77ac: $64
	ld   d, d                                        ; $77ad: $52
	adc  h                                           ; $77ae: $8c
	ld   h, l                                        ; $77af: $65
	ld   l, l                                        ; $77b0: $6d
	sbc  a                                           ; $77b1: $9f
	dec  c                                           ; $77b2: $0d
	nop                                              ; $77b3: $00
	ld   a, [bc]                                     ; $77b4: $0a
	ld   b, $08                                      ; $77b5: $06 $08
	db   $10                                         ; $77b7: $10
	rrca                                             ; $77b8: $0f
	add  hl, bc                                      ; $77b9: $09
	nop                                              ; $77ba: $00
	ld   bc, $0008                                   ; $77bb: $01 $08 $00
	ld   e, l                                        ; $77be: $5d
	and  c                                           ; $77bf: $a1
	ld   a, l                                        ; $77c0: $7d
	dec  c                                           ; $77c1: $0d
	ld   b, $25                                      ; $77c2: $06 $25
	inc  b                                           ; $77c4: $04
	dec  bc                                          ; $77c5: $0b
	ld   b, $80                                      ; $77c6: $06 $80
	ld   a, h                                        ; $77c8: $7c
	inc  b                                           ; $77c9: $04
	ld   d, a                                        ; $77ca: $57
	dec  b                                           ; $77cb: $05
	add  hl, hl                                      ; $77cc: $29
	ld   e, d                                        ; $77cd: $5a
	dec  c                                           ; $77ce: $0d
	inc  bc                                          ; $77cf: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77d0: $cf
	ld   d, d                                        ; $77d1: $52
	sub  [hl]                                        ; $77d2: $96
	ld   d, h                                        ; $77d3: $54
	ld   l, [hl]                                     ; $77d4: $6e
	ld   a, b                                        ; $77d5: $78
	sbc  a                                           ; $77d6: $9f
	dec  c                                           ; $77d7: $0d
	nop                                              ; $77d8: $00
	ld   a, [bc]                                     ; $77d9: $0a
	ld   bc, $ecdf                                   ; $77da: $01 $df $ec
	and  e                                           ; $77dd: $a3
	ld   a, h                                        ; $77de: $7c
	inc  bc                                          ; $77df: $03
	ld   l, l                                        ; $77e0: $6d
	dec  b                                           ; $77e1: $05
	add  hl, de                                      ; $77e2: $19
	and  b                                           ; $77e3: $a0
	dec  c                                           ; $77e4: $0d
	ld   l, a                                        ; $77e5: $6f
	sub  l                                           ; $77e6: $95
	ld   [hl], c                                     ; $77e7: $71
	halt                                             ; $77e8: $76
	inc  b                                           ; $77e9: $04
	rrca                                             ; $77ea: $0f
	adc  a                                           ; $77eb: $8f
	ld   a, c                                        ; $77ec: $79
	halt                                             ; $77ed: $76
	ld   [hl], c                                     ; $77ee: $71
	ld   [hl], h                                     ; $77ef: $74
	ld   e, b                                        ; $77f0: $58
	ld   e, l                                        ; $77f1: $5d
	halt                                             ; $77f2: $76
	dec  c                                           ; $77f3: $0d
	ld   d, d                                        ; $77f4: $52
	ld   d, d                                        ; $77f5: $52
	and  c                                           ; $77f6: $a1
	ld   h, [hl]                                     ; $77f7: $66
	sub  c                                           ; $77f8: $91
	ld   a, b                                        ; $77f9: $78
	ld   d, d                                        ; $77fa: $52
	ld   e, c                                        ; $77fb: $59
	ld   a, b                                        ; $77fc: $78
	sbc  a                                           ; $77fd: $9f
	dec  c                                           ; $77fe: $0d
	nop                                              ; $77ff: $00
	ld   a, [bc]                                     ; $7800: $0a
	ld   bc, $ecdf                                   ; $7801: $01 $df $ec
	and  e                                           ; $7804: $a3
	ld   a, h                                        ; $7805: $7c
	inc  bc                                          ; $7806: $03
	ld   l, l                                        ; $7807: $6d
	dec  b                                           ; $7808: $05
	add  hl, de                                      ; $7809: $19
	ld   a, l                                        ; $780a: $7d
	inc  bc                                          ; $780b: $03
	daa                                              ; $780c: $27
	ld   [bc], a                                     ; $780d: $02
	sub  c                                           ; $780e: $91
	ld   l, [hl]                                     ; $780f: $6e
	ld   e, c                                        ; $7810: $59
	sub  a                                           ; $7811: $97
	sbc  [hl]                                        ; $7812: $9e
	dec  c                                           ; $7813: $0d
	ld   e, c                                        ; $7814: $59
	ld   a, b                                        ; $7815: $78
	sbc  b                                           ; $7816: $98
	ld   a, h                                        ; $7817: $7c
	ld   b, $25                                      ; $7818: $06 $25
	inc  b                                           ; $781a: $04
	dec  bc                                          ; $781b: $0b
	ld   b, $80                                      ; $781c: $06 $80
	and  b                                           ; $781e: $a0
	dec  c                                           ; $781f: $0d
	inc  b                                           ; $7820: $04
	rst  JumpTable                                         ; $7821: $df
	ld   b, $85                                      ; $7822: $06 $85
	ld   h, e                                        ; $7824: $63
	sbc  d                                           ; $7825: $9a
	sbc  c                                           ; $7826: $99
	ld   e, c                                        ; $7827: $59
	sub  a                                           ; $7828: $97
	ld   a, e                                        ; $7829: $7b
	sbc  a                                           ; $782a: $9f
	dec  c                                           ; $782b: $0d
	nop                                              ; $782c: $00
	ld   a, [bc]                                     ; $782d: $0a
	rrca                                             ; $782e: $0f
	nop                                              ; $782f: $00
	ld   bc, $7801                                   ; $7830: $01 $01 $78
	sbc  c                                           ; $7833: $99
	adc  c                                           ; $7834: $89
	ld   [hl], a                                     ; $7835: $77
	rst  $38                                         ; $7836: $ff
	rst  $38                                         ; $7837: $ff
	dec  c                                           ; $7838: $0d
	sbc  l                                           ; $7839: $9d
	ld   e, c                                        ; $783a: $59
	sbc  b                                           ; $783b: $98
	adc  h                                           ; $783c: $8c
	ld   h, l                                        ; $783d: $65
	ld   l, l                                        ; $783e: $6d
	sbc  [hl]                                        ; $783f: $9e
	and  e                                           ; $7840: $a3
	jp   z, $a5d1                                    ; $7841: $ca $d1 $a5

	cp   d                                           ; $7844: $ba
	sbc  [hl]                                        ; $7845: $9e
	dec  c                                           ; $7846: $0d
	ld   d, b                                        ; $7847: $50
	sbc  b                                           ; $7848: $98
	ld   e, d                                        ; $7849: $5a
	halt                                             ; $784a: $76
	ld   d, h                                        ; $784b: $54
	ld   h, d                                        ; $784c: $62
	ld   h, h                                        ; $784d: $64
	ld   d, d                                        ; $784e: $52
	adc  h                                           ; $784f: $8c
	ld   h, l                                        ; $7850: $65
	ld   l, l                                        ; $7851: $6d
	sbc  a                                           ; $7852: $9f
	dec  c                                           ; $7853: $0d
	nop                                              ; $7854: $00
	ld   a, [bc]                                     ; $7855: $0a
	ld   b, $08                                      ; $7856: $06 $08
	db   $10                                         ; $7858: $10

Jump_05a_7859:
	rrca                                             ; $7859: $0f
	add  hl, bc                                      ; $785a: $09
	nop                                              ; $785b: $00
	ld   bc, $0008                                   ; $785c: $01 $08 $00
	ld   e, l                                        ; $785f: $5d
	and  c                                           ; $7860: $a1
	ld   a, l                                        ; $7861: $7d
	dec  c                                           ; $7862: $0d
	dec  b                                           ; $7863: $05
	add  hl, bc                                      ; $7864: $09
	dec  b                                           ; $7865: $05
	ld   a, [bc]                                     ; $7866: $0a
	ld   a, h                                        ; $7867: $7c
	inc  b                                           ; $7868: $04
	ld   d, a                                        ; $7869: $57
	dec  b                                           ; $786a: $05
	add  hl, hl                                      ; $786b: $29
	ld   e, d                                        ; $786c: $5a
	dec  c                                           ; $786d: $0d
	inc  bc                                          ; $786e: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $786f: $cf
	ld   d, d                                        ; $7870: $52
	sub  [hl]                                        ; $7871: $96
	ld   d, h                                        ; $7872: $54
	ld   l, [hl]                                     ; $7873: $6e
	ld   a, b                                        ; $7874: $78
	sbc  a                                           ; $7875: $9f
	dec  c                                           ; $7876: $0d
	nop                                              ; $7877: $00
	ld   a, [bc]                                     ; $7878: $0a

Call_05a_7879:
	ld   bc, $a5a3                                   ; $7879: $01 $a3 $a5
	db   $ec                                         ; $787c: $ec
	cp   d                                           ; $787d: $ba
	ld   a, h                                        ; $787e: $7c
	inc  bc                                          ; $787f: $03
	ld   l, l                                        ; $7880: $6d
	dec  b                                           ; $7881: $05
	add  hl, de                                      ; $7882: $19
	and  b                                           ; $7883: $a0
	dec  c                                           ; $7884: $0d
	ld   l, a                                        ; $7885: $6f
	sub  l                                           ; $7886: $95
	ld   [hl], c                                     ; $7887: $71
	halt                                             ; $7888: $76
	inc  b                                           ; $7889: $04
	rrca                                             ; $788a: $0f
	adc  a                                           ; $788b: $8f
	ld   a, c                                        ; $788c: $79
	halt                                             ; $788d: $76
	ld   [hl], c                                     ; $788e: $71
	ld   [hl], h                                     ; $788f: $74
	ld   e, b                                        ; $7890: $58
	ld   e, l                                        ; $7891: $5d
	halt                                             ; $7892: $76
	dec  c                                           ; $7893: $0d
	ld   d, d                                        ; $7894: $52
	ld   d, d                                        ; $7895: $52
	and  c                                           ; $7896: $a1
	ld   h, [hl]                                     ; $7897: $66
	sub  c                                           ; $7898: $91
	ld   a, b                                        ; $7899: $78
	ld   d, d                                        ; $789a: $52
	ld   e, c                                        ; $789b: $59
	ld   a, b                                        ; $789c: $78
	sbc  a                                           ; $789d: $9f
	dec  c                                           ; $789e: $0d
	nop                                              ; $789f: $00
	ld   a, [bc]                                     ; $78a0: $0a
	ld   bc, $a5a3                                   ; $78a1: $01 $a3 $a5
	db   $ec                                         ; $78a4: $ec
	cp   d                                           ; $78a5: $ba
	ld   a, h                                        ; $78a6: $7c
	inc  bc                                          ; $78a7: $03
	ld   l, l                                        ; $78a8: $6d
	dec  b                                           ; $78a9: $05
	add  hl, de                                      ; $78aa: $19
	ld   a, l                                        ; $78ab: $7d
	dec  c                                           ; $78ac: $0d
	dec  b                                           ; $78ad: $05
	add  hl, bc                                      ; $78ae: $09
	dec  b                                           ; $78af: $05
	ld   a, [bc]                                     ; $78b0: $0a
	and  e                                           ; $78b1: $a3
	call nz, Call_05a_79d8                           ; $78b2: $c4 $d8 $79
	ld   a, l                                        ; $78b5: $7d
	dec  c                                           ; $78b6: $0d
	ld   d, h                                        ; $78b7: $54
	ld   [hl], c                                     ; $78b8: $71
	ld   [hl], h                                     ; $78b9: $74
	ld   [hl], d                                     ; $78ba: $72
	ld   e, a                                        ; $78bb: $5f
	ld   l, [hl]                                     ; $78bc: $6e
	ld   e, c                                        ; $78bd: $59
	sub  a                                           ; $78be: $97
	ld   a, e                                        ; $78bf: $7b
	sbc  a                                           ; $78c0: $9f
	dec  c                                           ; $78c1: $0d
	nop                                              ; $78c2: $00
	ld   a, [bc]                                     ; $78c3: $0a
	rrca                                             ; $78c4: $0f
	nop                                              ; $78c5: $00
	ld   bc, $7801                                   ; $78c6: $01 $01 $78
	sbc  c                                           ; $78c9: $99
	adc  c                                           ; $78ca: $89
	ld   [hl], a                                     ; $78cb: $77
	rst  $38                                         ; $78cc: $ff
	rst  $38                                         ; $78cd: $ff
	dec  c                                           ; $78ce: $0d
	sbc  l                                           ; $78cf: $9d
	ld   e, c                                        ; $78d0: $59
	sbc  b                                           ; $78d1: $98
	adc  h                                           ; $78d2: $8c
	ld   h, l                                        ; $78d3: $65
	ld   l, l                                        ; $78d4: $6d
	sbc  [hl]                                        ; $78d5: $9e
	and  e                                           ; $78d6: $a3
	jp   z, $a5d1                                    ; $78d7: $ca $d1 $a5

	cp   d                                           ; $78da: $ba
	sbc  [hl]                                        ; $78db: $9e
	dec  c                                           ; $78dc: $0d
	ld   d, b                                        ; $78dd: $50
	sbc  b                                           ; $78de: $98
	ld   e, d                                        ; $78df: $5a
	halt                                             ; $78e0: $76
	ld   d, h                                        ; $78e1: $54
	ld   h, d                                        ; $78e2: $62
	ld   h, h                                        ; $78e3: $64
	ld   d, d                                        ; $78e4: $52
	adc  h                                           ; $78e5: $8c
	ld   h, l                                        ; $78e6: $65
	ld   l, l                                        ; $78e7: $6d
	sbc  a                                           ; $78e8: $9f
	dec  c                                           ; $78e9: $0d
	nop                                              ; $78ea: $00
	ld   a, [bc]                                     ; $78eb: $0a
	ld   b, $08                                      ; $78ec: $06 $08
	db   $10                                         ; $78ee: $10
	rrca                                             ; $78ef: $0f
	add  hl, bc                                      ; $78f0: $09
	nop                                              ; $78f1: $00
	ld   bc, $0008                                   ; $78f2: $01 $08 $00
	ld   e, l                                        ; $78f5: $5d
	and  c                                           ; $78f6: $a1
	ld   a, l                                        ; $78f7: $7d
	dec  c                                           ; $78f8: $0d
	sub  b                                           ; $78f9: $90
	ld   d, h                                        ; $78fa: $54
	inc  bc                                          ; $78fb: $03
	ld   l, h                                        ; $78fc: $6c
	ld   h, l                                        ; $78fd: $65
	ld   [bc], a                                     ; $78fe: $02
	add  h                                           ; $78ff: $84
	ld   [bc], a                                     ; $7900: $02
	and  d                                           ; $7901: $a2
	inc  b                                           ; $7902: $04
	jr   nz, jr_05a_7909                             ; $7903: $20 $04

	dec  hl                                          ; $7905: $2b
	inc  bc                                          ; $7906: $03
	dec  [hl]                                        ; $7907: $35
	and  b                                           ; $7908: $a0

jr_05a_7909:
	dec  c                                           ; $7909: $0d
	inc  b                                           ; $790a: $04
	pop  de                                          ; $790b: $d1
	ld   a, c                                        ; $790c: $79
	ld   [hl], d                                     ; $790d: $72
	ld   e, a                                        ; $790e: $5f
	ld   l, l                                        ; $790f: $6d
	adc  c                                           ; $7910: $89
	ld   d, h                                        ; $7911: $54
	ld   e, d                                        ; $7912: $5a
	ld   d, d                                        ; $7913: $52
	ld   d, d                                        ; $7914: $52
	ld   a, b                                        ; $7915: $78
	sbc  a                                           ; $7916: $9f
	dec  c                                           ; $7917: $0d
	nop                                              ; $7918: $00
	ld   a, [bc]                                     ; $7919: $0a
	ld   bc, $cf02                                   ; $791a: $01 $02 $cf
	dec  b                                           ; $791d: $05
	ld   a, [de]                                     ; $791e: $1a
	ld   a, h                                        ; $791f: $7c
	inc  bc                                          ; $7920: $03
	ld   l, l                                        ; $7921: $6d
	dec  b                                           ; $7922: $05
	add  hl, de                                      ; $7923: $19
	and  b                                           ; $7924: $a0
	dec  c                                           ; $7925: $0d
	ld   l, a                                        ; $7926: $6f
	sub  l                                           ; $7927: $95
	ld   [hl], c                                     ; $7928: $71
	halt                                             ; $7929: $76
	inc  b                                           ; $792a: $04
	rrca                                             ; $792b: $0f
	adc  a                                           ; $792c: $8f
	ld   a, c                                        ; $792d: $79
	halt                                             ; $792e: $76
	ld   [hl], c                                     ; $792f: $71
	ld   [hl], h                                     ; $7930: $74
	ld   e, b                                        ; $7931: $58
	ld   e, l                                        ; $7932: $5d
	halt                                             ; $7933: $76
	dec  c                                           ; $7934: $0d
	ld   d, d                                        ; $7935: $52
	ld   d, d                                        ; $7936: $52
	and  c                                           ; $7937: $a1
	ld   h, [hl]                                     ; $7938: $66
	sub  c                                           ; $7939: $91
	ld   a, b                                        ; $793a: $78
	ld   d, d                                        ; $793b: $52
	ld   e, c                                        ; $793c: $59
	ld   a, b                                        ; $793d: $78
	sbc  a                                           ; $793e: $9f
	dec  c                                           ; $793f: $0d
	nop                                              ; $7940: $00
	ld   a, [bc]                                     ; $7941: $0a
	ld   bc, $cf02                                   ; $7942: $01 $02 $cf
	dec  b                                           ; $7945: $05
	ld   a, [de]                                     ; $7946: $1a
	ld   a, h                                        ; $7947: $7c
	ld   [bc], a                                     ; $7948: $02
	ld   l, d                                        ; $7949: $6a
	ld   b, $44                                      ; $794a: $06 $44
	and  b                                           ; $794c: $a0
	sbc  [hl]                                        ; $794d: $9e
	ld   l, e                                        ; $794e: $6b
	ld   a, [hl]                                     ; $794f: $7e
	ld   [hl], l                                     ; $7950: $75
	ld   [bc], a                                     ; $7951: $02
	sub  l                                           ; $7952: $95
	ld   [hl], h                                     ; $7953: $74
	sbc  c                                           ; $7954: $99
	dec  c                                           ; $7955: $0d
	ld   l, [hl]                                     ; $7956: $6e
	ld   e, a                                        ; $7957: $5f
	ld   [hl], l                                     ; $7958: $75
	sub  b                                           ; $7959: $90
	inc  b                                           ; $795a: $04
	xor  [hl]                                        ; $795b: $ae
	ld   [bc], a                                     ; $795c: $02
	call nc, Call_05a_7879                           ; $795d: $d4 $79 $78
	sbc  c                                           ; $7960: $99
	ld   e, c                                        ; $7961: $59
	sub  a                                           ; $7962: $97
	ld   a, e                                        ; $7963: $7b
	sbc  a                                           ; $7964: $9f
	dec  c                                           ; $7965: $0d
	nop                                              ; $7966: $00
	ld   a, [bc]                                     ; $7967: $0a
	rrca                                             ; $7968: $0f
	nop                                              ; $7969: $00
	ld   bc, $7801                                   ; $796a: $01 $01 $78
	sbc  c                                           ; $796d: $99
	adc  c                                           ; $796e: $89
	ld   [hl], a                                     ; $796f: $77
	rst  $38                                         ; $7970: $ff
	rst  $38                                         ; $7971: $ff
	dec  c                                           ; $7972: $0d
	sbc  l                                           ; $7973: $9d
	ld   e, c                                        ; $7974: $59
	sbc  b                                           ; $7975: $98
	adc  h                                           ; $7976: $8c
	ld   h, l                                        ; $7977: $65
	ld   l, l                                        ; $7978: $6d
	sbc  [hl]                                        ; $7979: $9e
	and  e                                           ; $797a: $a3
	jp   z, $a5d1                                    ; $797b: $ca $d1 $a5

	cp   d                                           ; $797e: $ba
	sbc  [hl]                                        ; $797f: $9e
	dec  c                                           ; $7980: $0d
	ld   d, b                                        ; $7981: $50
	sbc  b                                           ; $7982: $98
	ld   e, d                                        ; $7983: $5a
	halt                                             ; $7984: $76
	ld   d, h                                        ; $7985: $54
	ld   h, d                                        ; $7986: $62
	ld   h, h                                        ; $7987: $64
	ld   d, d                                        ; $7988: $52
	adc  h                                           ; $7989: $8c
	ld   h, l                                        ; $798a: $65
	ld   l, l                                        ; $798b: $6d
	sbc  a                                           ; $798c: $9f
	dec  c                                           ; $798d: $0d
	nop                                              ; $798e: $00
	ld   a, [bc]                                     ; $798f: $0a
	ld   b, $08                                      ; $7990: $06 $08
	db   $10                                         ; $7992: $10
	rrca                                             ; $7993: $0f
	add  hl, bc                                      ; $7994: $09
	nop                                              ; $7995: $00
	ld   bc, $0008                                   ; $7996: $01 $08 $00
	ld   e, l                                        ; $7999: $5d
	and  c                                           ; $799a: $a1
	ld   a, l                                        ; $799b: $7d
	dec  c                                           ; $799c: $0d
	sub  b                                           ; $799d: $90
	ld   [hl], c                                     ; $799e: $71
	halt                                             ; $799f: $76
	ld   [bc], a                                     ; $79a0: $02
	and  c                                           ; $79a1: $a1
	ld   [bc], a                                     ; $79a2: $02
	ld   a, e                                        ; $79a3: $7b
	ld   d, d                                        ; $79a4: $52
	and  b                                           ; $79a5: $a0
	dec  c                                           ; $79a6: $0d
	inc  b                                           ; $79a7: $04
	pop  de                                          ; $79a8: $d1
	ld   a, c                                        ; $79a9: $79
	ld   [hl], d                                     ; $79aa: $72
	ld   e, a                                        ; $79ab: $5f
	ld   l, l                                        ; $79ac: $6d
	adc  c                                           ; $79ad: $89
	ld   d, h                                        ; $79ae: $54
	ld   e, d                                        ; $79af: $5a
	ld   d, d                                        ; $79b0: $52
	ld   d, d                                        ; $79b1: $52
	ld   a, b                                        ; $79b2: $78
	sbc  a                                           ; $79b3: $9f
	dec  c                                           ; $79b4: $0d
	nop                                              ; $79b5: $00
	ld   a, [bc]                                     ; $79b6: $0a
	ld   bc, $f5ac                                   ; $79b7: $01 $ac $f5
	bit  7, h                                        ; $79ba: $cb $7c
	inc  bc                                          ; $79bc: $03
	ld   l, l                                        ; $79bd: $6d
	dec  b                                           ; $79be: $05
	add  hl, de                                      ; $79bf: $19
	and  b                                           ; $79c0: $a0
	dec  c                                           ; $79c1: $0d
	ld   l, a                                        ; $79c2: $6f
	sub  l                                           ; $79c3: $95
	ld   [hl], c                                     ; $79c4: $71
	halt                                             ; $79c5: $76
	inc  b                                           ; $79c6: $04
	rrca                                             ; $79c7: $0f
	adc  a                                           ; $79c8: $8f
	ld   a, c                                        ; $79c9: $79
	halt                                             ; $79ca: $76
	ld   [hl], c                                     ; $79cb: $71
	ld   [hl], h                                     ; $79cc: $74
	ld   e, b                                        ; $79cd: $58
	ld   e, l                                        ; $79ce: $5d
	halt                                             ; $79cf: $76
	dec  c                                           ; $79d0: $0d
	ld   d, d                                        ; $79d1: $52
	ld   d, d                                        ; $79d2: $52
	and  c                                           ; $79d3: $a1
	ld   h, [hl]                                     ; $79d4: $66
	sub  c                                           ; $79d5: $91
	ld   a, b                                        ; $79d6: $78
	ld   d, d                                        ; $79d7: $52

Call_05a_79d8:
	ld   e, c                                        ; $79d8: $59
	ld   a, b                                        ; $79d9: $78
	sbc  a                                           ; $79da: $9f
	dec  c                                           ; $79db: $0d
	nop                                              ; $79dc: $00
	ld   a, [bc]                                     ; $79dd: $0a
	ld   bc, $f5ac                                   ; $79de: $01 $ac $f5
	bit  7, h                                        ; $79e1: $cb $7c
	ld   [bc], a                                     ; $79e3: $02
	or   [hl]                                        ; $79e4: $b6
	inc  bc                                          ; $79e5: $03
	ld   l, e                                        ; $79e6: $6b
	ld   a, l                                        ; $79e7: $7d
	dec  c                                           ; $79e8: $0d
	adc  h                                           ; $79e9: $8c
	ld   h, e                                        ; $79ea: $63
	ld   a, c                                        ; $79eb: $79
	ld   bc, $0207                                   ; $79ec: $01 $07 $02
	and  c                                           ; $79ef: $a1
	ld   [bc], a                                     ; $79f0: $02
	ld   a, e                                        ; $79f1: $7b
	ld   d, d                                        ; $79f2: $52
	ld   a, h                                        ; $79f3: $7c
	inc  b                                           ; $79f4: $04
	ld   d, d                                        ; $79f5: $52
	inc  bc                                          ; $79f6: $03
	db   $10                                         ; $79f7: $10
	ld   bc, $0d08                                   ; $79f8: $01 $08 $0d
	halt                                             ; $79fb: $76
	ld   d, d                                        ; $79fc: $52
	ld   d, h                                        ; $79fd: $54
	ld   [bc], a                                     ; $79fe: $02
	scf                                              ; $79ff: $37
	ld   h, [hl]                                     ; $7a00: $66
	ld   l, [hl]                                     ; $7a01: $6e
	ld   e, c                                        ; $7a02: $59
	sub  a                                           ; $7a03: $97
	ld   a, e                                        ; $7a04: $7b
	sbc  a                                           ; $7a05: $9f
	dec  c                                           ; $7a06: $0d
	nop                                              ; $7a07: $00
	ld   a, [bc]                                     ; $7a08: $0a
	rrca                                             ; $7a09: $0f
	nop                                              ; $7a0a: $00
	ld   bc, $7801                                   ; $7a0b: $01 $01 $78
	sbc  c                                           ; $7a0e: $99
	adc  c                                           ; $7a0f: $89
	ld   [hl], a                                     ; $7a10: $77
	rst  $38                                         ; $7a11: $ff
	rst  $38                                         ; $7a12: $ff
	dec  c                                           ; $7a13: $0d
	sbc  l                                           ; $7a14: $9d
	ld   e, c                                        ; $7a15: $59
	sbc  b                                           ; $7a16: $98
	adc  h                                           ; $7a17: $8c
	ld   h, l                                        ; $7a18: $65
	ld   l, l                                        ; $7a19: $6d
	sbc  [hl]                                        ; $7a1a: $9e
	and  e                                           ; $7a1b: $a3
	jp   z, $a5d1                                    ; $7a1c: $ca $d1 $a5

	cp   d                                           ; $7a1f: $ba
	sbc  [hl]                                        ; $7a20: $9e
	dec  c                                           ; $7a21: $0d
	ld   d, b                                        ; $7a22: $50
	sbc  b                                           ; $7a23: $98
	ld   e, d                                        ; $7a24: $5a
	halt                                             ; $7a25: $76
	ld   d, h                                        ; $7a26: $54
	ld   h, d                                        ; $7a27: $62

jr_05a_7a28:
	ld   h, h                                        ; $7a28: $64
	ld   d, d                                        ; $7a29: $52
	adc  h                                           ; $7a2a: $8c
	ld   h, l                                        ; $7a2b: $65
	ld   l, l                                        ; $7a2c: $6d
	sbc  a                                           ; $7a2d: $9f
	dec  c                                           ; $7a2e: $0d
	nop                                              ; $7a2f: $00
	ld   a, [bc]                                     ; $7a30: $0a
	ld   b, $08                                      ; $7a31: $06 $08
	db   $10                                         ; $7a33: $10
	inc  e                                           ; $7a34: $1c
	add  hl, bc                                      ; $7a35: $09
	ld   bc, $0101                                   ; $7a36: $01 $01 $01
	ld   d, h                                        ; $7a39: $54
	and  c                                           ; $7a3a: $a1
	sbc  a                                           ; $7a3b: $9f
	dec  c                                           ; $7a3c: $0d
	ld   l, e                                        ; $7a3d: $6b
	sbc  d                                           ; $7a3e: $9a
	ld   h, [hl]                                     ; $7a3f: $66
	sub  c                                           ; $7a40: $91
	sbc  [hl]                                        ; $7a41: $9e
	ld   e, d                                        ; $7a42: $5a
	and  c                                           ; $7a43: $a1
	ld   a, [hl]                                     ; $7a44: $7e
	sbc  d                                           ; $7a45: $9a
	sub  [hl]                                        ; $7a46: $96
	sbc  a                                           ; $7a47: $9f
	dec  c                                           ; $7a48: $0d
	nop                                              ; $7a49: $00
	ld   a, [bc]                                     ; $7a4a: $0a
	nop                                              ; $7a4b: $00
	nop                                              ; $7a4c: $00
	rrca                                             ; $7a4d: $0f
	nop                                              ; $7a4e: $00
	ld   bc, $060d                                   ; $7a4f: $01 $0d $06
	nop                                              ; $7a52: $00
	ld   [bc], a                                     ; $7a53: $02
	dec  b                                           ; $7a54: $05
	add  b                                           ; $7a55: $80
	add  a                                           ; $7a56: $87
	ld   bc, $0001                                   ; $7a57: $01 $01 $00
	ld   bc, $f5ac                                   ; $7a5a: $01 $ac $f5
	bit  4, e                                        ; $7a5d: $cb $63
	and  c                                           ; $7a5f: $a1
	sbc  a                                           ; $7a60: $9f
	dec  c                                           ; $7a61: $0d
	ld   e, b                                        ; $7a62: $58
	inc  b                                           ; $7a63: $04
	ld   a, e                                        ; $7a64: $7b
	sbc  d                                           ; $7a65: $9a
	ld   h, e                                        ; $7a66: $63
	adc  h                                           ; $7a67: $8c
	ld   [hl], l                                     ; $7a68: $75
	ld   h, a                                        ; $7a69: $67
	sbc  a                                           ; $7a6a: $9f
	dec  c                                           ; $7a6b: $0d
	nop                                              ; $7a6c: $00
	ld   a, [bc]                                     ; $7a6d: $0a
	inc  e                                           ; $7a6e: $1c
	ld   b, $01                                      ; $7a6f: $06 $01
	ld   bc, $9601                                   ; $7a71: $01 $01 $96
	ld   e, b                                        ; $7a74: $58
	sbc  [hl]                                        ; $7a75: $9e
	ld   [$9f00], sp                                 ; $7a76: $08 $00 $9f
	dec  c                                           ; $7a79: $0d
	nop                                              ; $7a7a: $00
	ld   a, [bc]                                     ; $7a7b: $0a
	rrca                                             ; $7a7c: $0f
	nop                                              ; $7a7d: $00
	ld   bc, $0101                                   ; $7a7e: $01 $01 $01
	inc  bc                                          ; $7a81: $03
	inc  b                                           ; $7a82: $04
	ld   c, c                                        ; $7a83: $49
	ld   a, h                                        ; $7a84: $7c
	dec  b                                           ; $7a85: $05
	jr   nz, jr_05a_7a28                             ; $7a86: $20 $a0

	ld   h, l                                        ; $7a88: $65
	sub  [hl]                                        ; $7a89: $96
	ld   d, h                                        ; $7a8a: $54
	ld   e, c                                        ; $7a8b: $59
	ld   a, b                                        ; $7a8c: $78
	rst  $38                                         ; $7a8d: $ff
	rst  $38                                         ; $7a8e: $ff
	ld   bc, $0d04                                   ; $7a8f: $01 $04 $0d
	nop                                              ; $7a92: $00
	ld   a, [bc]                                     ; $7a93: $0a
	add  hl, de                                      ; $7a94: $19
	dec  b                                           ; $7a95: $05
	inc  bc                                          ; $7a96: $03
	inc  bc                                          ; $7a97: $03
	xor  b                                           ; $7a98: $a8
	ld   d, d                                        ; $7a99: $52
	ld   [hl], l                                     ; $7a9a: $75
	ld   a, h                                        ; $7a9b: $7c
	inc  bc                                          ; $7a9c: $03
	ld   [hl], l                                     ; $7a9d: $75
	ld   e, d                                        ; $7a9e: $5a
	adc  h                                           ; $7a9f: $8c
	ld   d, [hl]                                     ; $7aa0: $56
	and  b                                           ; $7aa1: $a0
	ld   [bc], a                                     ; $7aa2: $02
	jp   nz, $005d                                   ; $7aa3: $c2 $5d $00

	nop                                              ; $7aa6: $00
	ret  c                                           ; $7aa7: $d8

	xor  $bd                                         ; $7aa8: $ee $bd
	push af                                          ; $7aaa: $f5
	ret                                              ; $7aab: $c9


	and  b                                           ; $7aac: $a0
	inc  bc                                          ; $7aad: $03
	ld   [$0067], a                                  ; $7aae: $ea $67 $00
	ld   bc, $a5a3                                   ; $7ab1: $01 $a3 $a5
	db   $ec                                         ; $7ab4: $ec
	cp   d                                           ; $7ab5: $ba
	ld   a, c                                        ; $7ab6: $79
	ld   [hl], d                                     ; $7ab7: $72
	ld   d, d                                        ; $7ab8: $52
	ld   [hl], h                                     ; $7ab9: $74
	ld   [bc], a                                     ; $7aba: $02
	jp   nz, $005d                                   ; $7abb: $c2 $5d $00

	ld   [bc], a                                     ; $7abe: $02
	rlca                                             ; $7abf: $07
	or   [hl]                                        ; $7ac0: $b6
	nop                                              ; $7ac1: $00
	ld   [bc], a                                     ; $7ac2: $02
	inc  bc                                          ; $7ac3: $03
	ld   bc, $2000                                   ; $7ac4: $01 $00 $20
	nop                                              ; $7ac7: $00
	rlca                                             ; $7ac8: $07
	push af                                          ; $7ac9: $f5
	ld   [bc], a                                     ; $7aca: $02
	ld   [bc], a                                     ; $7acb: $02
	inc  bc                                          ; $7acc: $03
	ld   bc, $2001                                   ; $7acd: $01 $01 $20
	nop                                              ; $7ad0: $00
	rlca                                             ; $7ad1: $07
	adc  l                                           ; $7ad2: $8d
	inc  b                                           ; $7ad3: $04
	ld   [bc], a                                     ; $7ad4: $02
	inc  bc                                          ; $7ad5: $03
	ld   bc, $2002                                   ; $7ad6: $01 $02 $20
	nop                                              ; $7ad9: $00
	ld   b, $90                                      ; $7ada: $06 $90
	nop                                              ; $7adc: $00
	rrca                                             ; $7add: $0f
	ld   b, $01                                      ; $7ade: $06 $01
	ld   bc, $6f03                                   ; $7ae0: $01 $03 $6f
	ld   [bc], a                                     ; $7ae3: $02
	xor  c                                           ; $7ae4: $a9
	ld   e, d                                        ; $7ae5: $5a
	ld   d, b                                        ; $7ae6: $50
	ld   d, d                                        ; $7ae7: $52
	ld   [hl], h                                     ; $7ae8: $74
	sbc  c                                           ; $7ae9: $99
	ld   a, b                                        ; $7aea: $78
	sub  a                                           ; $7aeb: $97
	dec  c                                           ; $7aec: $0d
	inc  b                                           ; $7aed: $04
	dec  c                                           ; $7aee: $0d
	and  b                                           ; $7aef: $a0
	ld   e, e                                        ; $7af0: $5b
	ld   l, l                                        ; $7af1: $6d
	ld   d, [hl]                                     ; $7af2: $56
	halt                                             ; $7af3: $76
	ld   e, a                                        ; $7af4: $5f
	sub  [hl]                                        ; $7af5: $96
	sbc  a                                           ; $7af6: $9f
	dec  c                                           ; $7af7: $0d
	nop                                              ; $7af8: $00
	ld   a, [bc]                                     ; $7af9: $0a
	dec  c                                           ; $7afa: $0d
	nop                                              ; $7afb: $00
	nop                                              ; $7afc: $00
	rrca                                             ; $7afd: $0f
	nop                                              ; $7afe: $00
	ld   bc, $1e09                                   ; $7aff: $01 $09 $1e
	nop                                              ; $7b02: $00
	rrca                                             ; $7b03: $0f
	nop                                              ; $7b04: $00
	ld   bc, $ac01                                   ; $7b05: $01 $01 $ac
	push af                                          ; $7b08: $f5
	bit  4, e                                        ; $7b09: $cb $63
	and  c                                           ; $7b0b: $a1
	sbc  [hl]                                        ; $7b0c: $9e
	inc  bc                                          ; $7b0d: $03
	xor  b                                           ; $7b0e: $a8
	inc  b                                           ; $7b0f: $04
	ld   a, d                                        ; $7b10: $7a
	ld   a, c                                        ; $7b11: $79
	ld   e, b                                        ; $7b12: $58
	ld   d, d                                        ; $7b13: $52
	ld   [hl], h                                     ; $7b14: $74
	dec  c                                           ; $7b15: $0d
	inc  bc                                          ; $7b16: $03
	ccf                                              ; $7b17: $3f
	inc  b                                           ; $7b18: $04
	rst  JumpTable                                         ; $7b19: $df
	ld   a, b                                        ; $7b1a: $78
	db   $e4                                         ; $7b1b: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b1c: $cf
	ld   [hl], c                                     ; $7b1d: $71
	ld   [hl], h                                     ; $7b1e: $74
	ld   a, b                                        ; $7b1f: $78
	and  c                                           ; $7b20: $a1
	ld   [hl], l                                     ; $7b21: $75
	ld   h, a                                        ; $7b22: $67
	ld   e, c                                        ; $7b23: $59
	ld   sp, hl                                      ; $7b24: $f9
	dec  c                                           ; $7b25: $0d
	nop                                              ; $7b26: $00
	ld   a, [bc]                                     ; $7b27: $0a
	inc  e                                           ; $7b28: $1c
	ld   b, $00                                      ; $7b29: $06 $00
	nop                                              ; $7b2b: $00
	ld   bc, $0008                                   ; $7b2c: $01 $08 $00
	ld   a, l                                        ; $7b2f: $7d
	inc  b                                           ; $7b30: $04
	ld   c, c                                        ; $7b31: $49
	ld   l, [hl]                                     ; $7b32: $6e
	halt                                             ; $7b33: $76
	dec  b                                           ; $7b34: $05
	pop  de                                          ; $7b35: $d1
	ld   d, h                                        ; $7b36: $54
	ld   sp, hl                                      ; $7b37: $f9
	dec  c                                           ; $7b38: $0d
	nop                                              ; $7b39: $00
	ld   a, [bc]                                     ; $7b3a: $0a
	add  hl, de                                      ; $7b3b: $19
	dec  b                                           ; $7b3c: $05
	inc  bc                                          ; $7b3d: $03
	ld   [bc], a                                     ; $7b3e: $02
	and  c                                           ; $7b3f: $a1
	ld   [bc], a                                     ; $7b40: $02
	ld   a, e                                        ; $7b41: $7b
	ld   d, d                                        ; $7b42: $52
	nop                                              ; $7b43: $00
	nop                                              ; $7b44: $00
	ld   [bc], a                                     ; $7b45: $02
	adc  h                                           ; $7b46: $8c
	nop                                              ; $7b47: $00
	ld   bc, $0d04                                   ; $7b48: $01 $04 $0d
	dec  b                                           ; $7b4b: $05
	ld   a, [bc]                                     ; $7b4c: $0a
	nop                                              ; $7b4d: $00
	ld   [bc], a                                     ; $7b4e: $02
	rlca                                             ; $7b4f: $07
	jr   nz, jr_05a_7b53                             ; $7b50: $20 $01

	ld   [bc], a                                     ; $7b52: $02

jr_05a_7b53:
	inc  bc                                          ; $7b53: $03
	ld   bc, $2000                                   ; $7b54: $01 $00 $20
	nop                                              ; $7b57: $00
	rlca                                             ; $7b58: $07
	adc  e                                           ; $7b59: $8b
	ld   bc, $0302                                   ; $7b5a: $01 $02 $03
	ld   bc, $2001                                   ; $7b5d: $01 $01 $20
	nop                                              ; $7b60: $00
	rlca                                             ; $7b61: $07
	inc  bc                                          ; $7b62: $03
	ld   [bc], a                                     ; $7b63: $02
	ld   [bc], a                                     ; $7b64: $02
	inc  bc                                          ; $7b65: $03
	ld   bc, $2002                                   ; $7b66: $01 $02 $20
	nop                                              ; $7b69: $00
	ld   b, $78                                      ; $7b6a: $06 $78
	ld   [bc], a                                     ; $7b6c: $02
	rrca                                             ; $7b6d: $0f
	nop                                              ; $7b6e: $00
	ld   bc, $9001                                   ; $7b6f: $01 $01 $90
	ld   l, a                                        ; $7b72: $6f
	sbc  e                                           ; $7b73: $9b
	and  c                                           ; $7b74: $a1
	sbc  a                                           ; $7b75: $9f
	dec  c                                           ; $7b76: $0d
	ld   [bc], a                                     ; $7b77: $02
	and  c                                           ; $7b78: $a1
	ld   [bc], a                                     ; $7b79: $02
	ld   a, e                                        ; $7b7a: $7b
	ld   d, d                                        ; $7b7b: $52
	ld   [hl], l                                     ; $7b7c: $75
	ld   h, a                                        ; $7b7d: $67
	sub  [hl]                                        ; $7b7e: $96
	ld   a, e                                        ; $7b7f: $7b
	sbc  a                                           ; $7b80: $9f
	dec  c                                           ; $7b81: $0d
	nop                                              ; $7b82: $00
	ld   a, [bc]                                     ; $7b83: $0a
	inc  e                                           ; $7b84: $1c
	ld   b, $07                                      ; $7b85: $06 $07
	rlca                                             ; $7b87: $07
	dec  e                                           ; $7b88: $1d
	ld   b, b                                        ; $7b89: $40
	ld   d, $03                                      ; $7b8a: $16 $03
	ld   d, $01                                      ; $7b8c: $16 $01
	inc  bc                                          ; $7b8e: $03
	jr   z, jr_05a_7b91                              ; $7b8f: $28 $00

jr_05a_7b91:
	ld   bc, $599d                                   ; $7b91: $01 $9d $59
	ld   [hl], c                                     ; $7b94: $71
	ld   [hl], h                                     ; $7b95: $74
	sbc  c                                           ; $7b96: $99
	ld   h, [hl]                                     ; $7b97: $66
	sub  c                                           ; $7b98: $91
	ld   a, b                                        ; $7b99: $78
	ld   d, d                                        ; $7b9a: $52
	ld   e, c                                        ; $7b9b: $59
	sbc  a                                           ; $7b9c: $9f
	dec  c                                           ; $7b9d: $0d
	ld   l, e                                        ; $7b9e: $6b
	ld   d, h                                        ; $7b9f: $54
	ld   a, b                                        ; $7ba0: $78
	and  c                                           ; $7ba1: $a1
	ld   l, [hl]                                     ; $7ba2: $6e
	sub  [hl]                                        ; $7ba3: $96
	sbc  a                                           ; $7ba4: $9f
	dec  c                                           ; $7ba5: $0d
	inc  b                                           ; $7ba6: $04
	ld   c, c                                        ; $7ba7: $49
	ld   a, l                                        ; $7ba8: $7d
	ld   a, b                                        ; $7ba9: $78
	ld   e, l                                        ; $7baa: $5d
	halt                                             ; $7bab: $76
	sub  b                                           ; $7bac: $90
	ld   [bc], a                                     ; $7bad: $02
	and  c                                           ; $7bae: $a1
	ld   [bc], a                                     ; $7baf: $02
	ld   a, e                                        ; $7bb0: $7b
	ld   d, d                                        ; $7bb1: $52
	ld   l, [hl]                                     ; $7bb2: $6e
	ld   a, [$000d]                                  ; $7bb3: $fa $0d $00
	ld   a, [bc]                                     ; $7bb6: $0a
	ld   bc, $a102                                   ; $7bb7: $01 $02 $a1
	ld   [bc], a                                     ; $7bba: $02
	ld   a, e                                        ; $7bbb: $7b
	ld   d, d                                        ; $7bbc: $52
	ld   [bc], a                                     ; $7bbd: $02
	jr   nz, jr_05a_7bc4                             ; $7bbe: $20 $04

	ld   e, [hl]                                     ; $7bc0: $5e
	ld   [hl], l                                     ; $7bc1: $75
	ld   [hl], a                                     ; $7bc2: $77
	and  c                                           ; $7bc3: $a1

jr_05a_7bc4:
	ld   a, b                                        ; $7bc4: $78
	inc  bc                                          ; $7bc5: $03
	db   $dd                                         ; $7bc6: $dd
	sub  b                                           ; $7bc7: $90
	dec  c                                           ; $7bc8: $0d
	and  l                                           ; $7bc9: $a5
	jp   nz, $efb4                                   ; $7bca: $c2 $b4 $ef

	ld   a, b                                        ; $7bcd: $78
	and  c                                           ; $7bce: $a1
	ld   l, [hl]                                     ; $7bcf: $6e
	ld   l, d                                        ; $7bd0: $6a
	sbc  a                                           ; $7bd1: $9f
	dec  c                                           ; $7bd2: $0d
	nop                                              ; $7bd3: $00
	ld   a, [bc]                                     ; $7bd4: $0a
	ld   b, $ba                                      ; $7bd5: $06 $ba
	ld   [bc], a                                     ; $7bd7: $02
	rrca                                             ; $7bd8: $0f
	nop                                              ; $7bd9: $00
	ld   bc, $9201                                   ; $7bda: $01 $01 $92
	ld   [hl], c                                     ; $7bdd: $71
	ld   a, a                                        ; $7bde: $7f
	sbc  b                                           ; $7bdf: $98
	ld   [bc], a                                     ; $7be0: $02
	adc  h                                           ; $7be1: $8c
	ld   [hl], l                                     ; $7be2: $75
	ld   h, a                                        ; $7be3: $67
	ld   e, c                                        ; $7be4: $59
	ld   sp, hl                                      ; $7be5: $f9
	dec  c                                           ; $7be6: $0d
	nop                                              ; $7be7: $00
	ld   a, [bc]                                     ; $7be8: $0a
	inc  e                                           ; $7be9: $1c
	ld   b, $05                                      ; $7bea: $06 $05
	dec  b                                           ; $7bec: $05
	ld   bc, $5a6f                                   ; $7bed: $01 $6f $5a
	ld   d, h                                        ; $7bf0: $54
	sub  [hl]                                        ; $7bf1: $96
	sbc  a                                           ; $7bf2: $9f
	ld   [bc], a                                     ; $7bf3: $02
	adc  h                                           ; $7bf4: $8c
	ld   a, b                                        ; $7bf5: $78
	and  c                                           ; $7bf6: $a1
	ld   [hl], h                                     ; $7bf7: $74
	dec  c                                           ; $7bf8: $0d
	ld   [bc], a                                     ; $7bf9: $02
	adc  h                                           ; $7bfa: $8c
	inc  bc                                          ; $7bfb: $03
	db   $10                                         ; $7bfc: $10
	ld   a, h                                        ; $7bfd: $7c
	inc  b                                           ; $7bfe: $04
	cp   a                                           ; $7bff: $bf
	inc  b                                           ; $7c00: $04
	dec  d                                           ; $7c01: $15
	ld   l, [hl]                                     ; $7c02: $6e
	sbc  e                                           ; $7c03: $9b
	sbc  a                                           ; $7c04: $9f
	dec  c                                           ; $7c05: $0d
	ld   [bc], a                                     ; $7c06: $02
	jr   nz, jr_05a_7c0d                             ; $7c07: $20 $04

	ld   a, c                                        ; $7c09: $79
	inc  b                                           ; $7c0a: $04
	ld   c, $03                                      ; $7c0b: $0e $03

jr_05a_7c0d:
	dec  de                                          ; $7c0d: $1b
	ld   a, b                                        ; $7c0e: $78
	ld   a, h                                        ; $7c0f: $7c
	ld   a, l                                        ; $7c10: $7d
	sbc  [hl]                                        ; $7c11: $9e
	ld   [bc], a                                     ; $7c12: $02
	and  c                                           ; $7c13: $a1
	ld   [bc], a                                     ; $7c14: $02
	ld   a, e                                        ; $7c15: $7b
	ld   d, d                                        ; $7c16: $52
	ld   h, e                                        ; $7c17: $63
	sbc  a                                           ; $7c18: $9f
	dec  c                                           ; $7c19: $0d
	nop                                              ; $7c1a: $00
	ld   a, [bc]                                     ; $7c1b: $0a
	inc  e                                           ; $7c1c: $1c
	ld   b, $01                                      ; $7c1d: $06 $01
	ld   bc, $7701                                   ; $7c1f: $01 $01 $77
	and  c                                           ; $7c22: $a1
	ld   a, b                                        ; $7c23: $78
	ld   a, c                                        ; $7c24: $79
	cp   d                                           ; $7c25: $ba
	or   l                                           ; $7c26: $b5
	and  l                                           ; $7c27: $a5
	ld   [bc], a                                     ; $7c28: $02
	adc  h                                           ; $7c29: $8c
	and  b                                           ; $7c2a: $a0
	inc  bc                                          ; $7c2b: $03
	and  b                                           ; $7c2c: $a0
	ld   [hl], c                                     ; $7c2d: $71
	ld   [hl], h                                     ; $7c2e: $74
	ld   [hl], h                                     ; $7c2f: $74
	sub  b                                           ; $7c30: $90
	dec  c                                           ; $7c31: $0d
	ld   [bc], a                                     ; $7c32: $02
	and  c                                           ; $7c33: $a1
	ld   [bc], a                                     ; $7c34: $02
	ld   a, e                                        ; $7c35: $7b
	ld   d, d                                        ; $7c36: $52
	ld   e, d                                        ; $7c37: $5a
	ld   a, b                                        ; $7c38: $78
	ld   e, a                                        ; $7c39: $5f
	sbc  b                                           ; $7c3a: $98
	sub  c                                           ; $7c3b: $91
	dec  c                                           ; $7c3c: $0d
	inc  bc                                          ; $7c3d: $03
	db   $dd                                         ; $7c3e: $dd
	ld   a, c                                        ; $7c3f: $79
	ld   a, h                                        ; $7c40: $7c
	adc  h                                           ; $7c41: $8c
	sbc  d                                           ; $7c42: $9a
	ld   [hl], h                                     ; $7c43: $74
	and  e                                           ; $7c44: $a3
	and  a                                           ; $7c45: $a7
	ret                                              ; $7c46: $c9


	ld   l, [hl]                                     ; $7c47: $6e
	ld   l, d                                        ; $7c48: $6a
	sbc  a                                           ; $7c49: $9f
	dec  c                                           ; $7c4a: $0d
	nop                                              ; $7c4b: $00
	ld   a, [bc]                                     ; $7c4c: $0a
	ld   b, $ba                                      ; $7c4d: $06 $ba
	ld   [bc], a                                     ; $7c4f: $02
	rrca                                             ; $7c50: $0f
	nop                                              ; $7c51: $00
	ld   bc, $6b01                                   ; $7c52: $01 $01 $6b
	sbc  d                                           ; $7c55: $9a
	ld   a, l                                        ; $7c56: $7d
	inc  b                                           ; $7c57: $04
	dec  c                                           ; $7c58: $0d
	dec  b                                           ; $7c59: $05
	ld   a, [bc]                                     ; $7c5a: $0a
	ld   [hl], l                                     ; $7c5b: $75
	ld   h, l                                        ; $7c5c: $65
	sub  l                                           ; $7c5d: $95
	sbc  a                                           ; $7c5e: $9f
	dec  c                                           ; $7c5f: $0d
	nop                                              ; $7c60: $00
	ld   a, [bc]                                     ; $7c61: $0a
	inc  e                                           ; $7c62: $1c
	ld   b, $00                                      ; $7c63: $06 $00
	nop                                              ; $7c65: $00
	ld   bc, $508c                                   ; $7c66: $01 $8c $50
	sbc  [hl]                                        ; $7c69: $9e
	inc  b                                           ; $7c6a: $04
	dec  c                                           ; $7c6b: $0d
	dec  b                                           ; $7c6c: $05
	ld   a, [bc]                                     ; $7c6d: $0a
	ld   e, d                                        ; $7c6e: $5a
	ld   a, b                                        ; $7c6f: $78
	ld   e, e                                        ; $7c70: $5b
	sub  c                                           ; $7c71: $91
	dec  b                                           ; $7c72: $05
	jr   nz, @+$7b                                   ; $7c73: $20 $79

	ld   a, l                                        ; $7c75: $7d
	dec  c                                           ; $7c76: $0d
	ld   a, b                                        ; $7c77: $78
	sub  a                                           ; $7c78: $97
	ld   a, b                                        ; $7c79: $78
	ld   d, d                                        ; $7c7a: $52
	ld   e, a                                        ; $7c7b: $5f
	ld   [hl], a                                     ; $7c7c: $77
	ld   a, b                                        ; $7c7d: $78
	rst  $38                                         ; $7c7e: $ff
	rst  $38                                         ; $7c7f: $ff
	sbc  [hl]                                        ; $7c80: $9e
	ld   [hl], l                                     ; $7c81: $75
	sub  b                                           ; $7c82: $90
	dec  c                                           ; $7c83: $0d
	ld   [bc], a                                     ; $7c84: $02
	jr   nz, jr_05a_7c8b                             ; $7c85: $20 $04

	ld   a, c                                        ; $7c87: $79
	inc  b                                           ; $7c88: $04
	ld   c, $03                                      ; $7c89: $0e $03

jr_05a_7c8b:
	dec  de                                          ; $7c8b: $1b
	ld   a, b                                        ; $7c8c: $78
	ld   a, h                                        ; $7c8d: $7c
	ld   a, l                                        ; $7c8e: $7d
	sbc  [hl]                                        ; $7c8f: $9e
	ld   [bc], a                                     ; $7c90: $02
	and  c                                           ; $7c91: $a1
	ld   [bc], a                                     ; $7c92: $02
	ld   a, e                                        ; $7c93: $7b
	ld   d, d                                        ; $7c94: $52
	ld   l, [hl]                                     ; $7c95: $6e
	sbc  a                                           ; $7c96: $9f
	dec  c                                           ; $7c97: $0d
	nop                                              ; $7c98: $00
	ld   a, [bc]                                     ; $7c99: $0a
	inc  e                                           ; $7c9a: $1c
	ld   b, $01                                      ; $7c9b: $06 $01
	ld   bc, $0201                                   ; $7c9d: $01 $01 $02
	and  c                                           ; $7ca0: $a1
	ld   [bc], a                                     ; $7ca1: $02
	ld   a, e                                        ; $7ca2: $7b
	ld   d, d                                        ; $7ca3: $52
	ld   e, d                                        ; $7ca4: $5a
	sbc  [hl]                                        ; $7ca5: $9e
	ld   [bc], a                                     ; $7ca6: $02
	and  c                                           ; $7ca7: $a1
	dec  b                                           ; $7ca8: $05
	ld   a, [bc]                                     ; $7ca9: $0a
	sub  d                                           ; $7caa: $92
	inc  b                                           ; $7cab: $04
	dec  c                                           ; $7cac: $0d
	dec  b                                           ; $7cad: $05
	ld   a, [bc]                                     ; $7cae: $0a
	and  b                                           ; $7caf: $a0
	dec  c                                           ; $7cb0: $0d
	dec  b                                           ; $7cb1: $05
	rst  ToBoot                                         ; $7cb2: $c7
	inc  bc                                          ; $7cb3: $03
	adc  e                                           ; $7cb4: $8b
	ld   h, e                                        ; $7cb5: $63
	ld   l, c                                        ; $7cb6: $69
	ld   [hl], h                                     ; $7cb7: $74
	ld   e, l                                        ; $7cb8: $5d
	sbc  d                                           ; $7cb9: $9a
	sbc  c                                           ; $7cba: $99
	ld   e, c                                        ; $7cbb: $59
	sub  a                                           ; $7cbc: $97
	ld   a, b                                        ; $7cbd: $78
	sbc  a                                           ; $7cbe: $9f
	dec  c                                           ; $7cbf: $0d
	nop                                              ; $7cc0: $00
	ld   a, [bc]                                     ; $7cc1: $0a
	ld   b, $ba                                      ; $7cc2: $06 $ba
	ld   [bc], a                                     ; $7cc4: $02
	inc  e                                           ; $7cc5: $1c
	ld   b, $00                                      ; $7cc6: $06 $00
	nop                                              ; $7cc8: $00
	ld   bc, $599d                                   ; $7cc9: $01 $9d $59
	and  c                                           ; $7ccc: $a1
	ld   a, b                                        ; $7ccd: $78
	ld   d, d                                        ; $7cce: $52
	ld   e, c                                        ; $7ccf: $59
	ld   a, b                                        ; $7cd0: $78
	ld   sp, hl                                      ; $7cd1: $f9
	dec  c                                           ; $7cd2: $0d
	inc  bc                                          ; $7cd3: $03
	ld   c, d                                        ; $7cd4: $4a
	ld   [bc], a                                     ; $7cd5: $02
	or   h                                           ; $7cd6: $b4
	ld   a, l                                        ; $7cd7: $7d
	ld   [bc], a                                     ; $7cd8: $02
	and  c                                           ; $7cd9: $a1
	ld   [bc], a                                     ; $7cda: $02
	ld   a, e                                        ; $7cdb: $7b
	ld   d, d                                        ; $7cdc: $52
	ld   l, [hl]                                     ; $7cdd: $6e
	sbc  a                                           ; $7cde: $9f
	dec  c                                           ; $7cdf: $0d
	nop                                              ; $7ce0: $00
	ld   a, [bc]                                     ; $7ce1: $0a
	inc  e                                           ; $7ce2: $1c
	ld   b, $01                                      ; $7ce3: $06 $01
	ld   bc, $0201                                   ; $7ce5: $01 $01 $02
	and  c                                           ; $7ce8: $a1
	ld   [bc], a                                     ; $7ce9: $02
	ld   a, e                                        ; $7cea: $7b
	ld   d, d                                        ; $7ceb: $52
	ld   [bc], a                                     ; $7cec: $02
	jr   nz, jr_05a_7cf3                             ; $7ced: $20 $04

	ld   e, [hl]                                     ; $7cef: $5e
	ld   [hl], l                                     ; $7cf0: $75
	ld   [hl], a                                     ; $7cf1: $77
	and  c                                           ; $7cf2: $a1

jr_05a_7cf3:
	ld   a, b                                        ; $7cf3: $78
	inc  bc                                          ; $7cf4: $03
	db   $dd                                         ; $7cf5: $dd
	sub  b                                           ; $7cf6: $90
	dec  c                                           ; $7cf7: $0d
	and  l                                           ; $7cf8: $a5
	jp   nz, $efb4                                   ; $7cf9: $c2 $b4 $ef

	ld   a, b                                        ; $7cfc: $78
	and  c                                           ; $7cfd: $a1
	ld   l, [hl]                                     ; $7cfe: $6e
	ld   l, d                                        ; $7cff: $6a
	sbc  a                                           ; $7d00: $9f
	dec  c                                           ; $7d01: $0d
	nop                                              ; $7d02: $00
	ld   a, [bc]                                     ; $7d03: $0a
	ld   b, $ba                                      ; $7d04: $06 $ba
	ld   [bc], a                                     ; $7d06: $02
	ld   bc, $0d04                                   ; $7d07: $01 $04 $0d
	ld   [bc], a                                     ; $7d0a: $02
	sub  [hl]                                        ; $7d0b: $96
	inc  b                                           ; $7d0c: $04
	ld   b, l                                        ; $7d0d: $45
	inc  b                                           ; $7d0e: $04
	ld   a, [bc]                                     ; $7d0f: $0a
	db   $eb                                         ; $7d10: $eb
	cp   d                                           ; $7d11: $ba
	ret                                              ; $7d12: $c9


	ld   [bc], a                                     ; $7d13: $02
	jr   nz, jr_05a_7d19                             ; $7d14: $20 $03

	ld   a, c                                        ; $7d16: $79
	ld   [bc], a                                     ; $7d17: $02
	xor  c                                           ; $7d18: $a9

jr_05a_7d19:
	ld   l, [hl]                                     ; $7d19: $6e
	ld   e, a                                        ; $7d1a: $5f
	ld   [hl], a                                     ; $7d1b: $77
	dec  c                                           ; $7d1c: $0d
	ld   [bc], a                                     ; $7d1d: $02
	and  c                                           ; $7d1e: $a1
	ld   [bc], a                                     ; $7d1f: $02
	ld   a, e                                        ; $7d20: $7b
	ld   d, d                                        ; $7d21: $52
	inc  b                                           ; $7d22: $04
	ld   b, l                                        ; $7d23: $45
	sbc  d                                           ; $7d24: $9a
	ld   [hl], h                                     ; $7d25: $74
	ld   d, d                                        ; $7d26: $52
	ld   e, a                                        ; $7d27: $5f
	sub  [hl]                                        ; $7d28: $96
	sbc  a                                           ; $7d29: $9f
	dec  c                                           ; $7d2a: $0d
	dec  b                                           ; $7d2b: $05
	sub  b                                           ; $7d2c: $90
	ld   d, d                                        ; $7d2d: $52
	ld   a, h                                        ; $7d2e: $7c
	ld   a, b                                        ; $7d2f: $78
	ld   d, d                                        ; $7d30: $52
	sub  [hl]                                        ; $7d31: $96
	ld   d, h                                        ; $7d32: $54
	ld   a, c                                        ; $7d33: $79
	ld   a, b                                        ; $7d34: $78
	sbc  a                                           ; $7d35: $9f
	dec  c                                           ; $7d36: $0d
	nop                                              ; $7d37: $00
	ld   a, [bc]                                     ; $7d38: $0a
	dec  c                                           ; $7d39: $0d
	nop                                              ; $7d3a: $00
	nop                                              ; $7d3b: $00
	rrca                                             ; $7d3c: $0f
	nop                                              ; $7d3d: $00
	ld   bc, $1e09                                   ; $7d3e: $01 $09 $1e
	nop                                              ; $7d41: $00
	rrca                                             ; $7d42: $0f
	nop                                              ; $7d43: $00
	ld   bc, $ac01                                   ; $7d44: $01 $01 $ac
	push af                                          ; $7d47: $f5
	bit  4, e                                        ; $7d48: $cb $63
	and  c                                           ; $7d4a: $a1
	sbc  a                                           ; $7d4b: $9f
	dec  c                                           ; $7d4c: $0d
	ld   h, c                                        ; $7d4d: $61
	sbc  d                                           ; $7d4e: $9a
	inc  b                                           ; $7d4f: $04
	ld   hl, $bc03                                   ; $7d50: $21 $03 $bc
	ld   e, c                                        ; $7d53: $59
	sub  a                                           ; $7d54: $97
	inc  bc                                          ; $7d55: $03
	sbc  a                                           ; $7d56: $9f
	ld   [hl], c                                     ; $7d57: $71
	ld   [hl], h                                     ; $7d58: $74
	dec  c                                           ; $7d59: $0d
	ld   e, e                                        ; $7d5a: $5b
	ld   l, l                                        ; $7d5b: $6d
	and  c                                           ; $7d5c: $a1
	ld   [hl], l                                     ; $7d5d: $75
	ld   h, a                                        ; $7d5e: $67
	ld   e, a                                        ; $7d5f: $5f
	ld   [hl], a                                     ; $7d60: $77
	rst  $38                                         ; $7d61: $ff
	rst  $38                                         ; $7d62: $ff
	dec  c                                           ; $7d63: $0d
	nop                                              ; $7d64: $00
	ld   a, [bc]                                     ; $7d65: $0a
	inc  e                                           ; $7d66: $1c
	ld   b, $03                                      ; $7d67: $06 $03
	inc  bc                                          ; $7d69: $03
	ld   bc, $f956                                   ; $7d6a: $01 $56 $f9
	dec  c                                           ; $7d6d: $0d
	ld   d, b                                        ; $7d6e: $50
	ld   l, l                                        ; $7d6f: $6d
	ld   d, d                                        ; $7d70: $52
	ld   a, c                                        ; $7d71: $79
	ld   e, c                                        ; $7d72: $59
	ld   sp, hl                                      ; $7d73: $f9
	dec  c                                           ; $7d74: $0d
	nop                                              ; $7d75: $00
	ld   a, [bc]                                     ; $7d76: $0a
	rrca                                             ; $7d77: $0f
	nop                                              ; $7d78: $00
	ld   bc, $060d                                   ; $7d79: $01 $0d $06
	ld   bc, $0101                                   ; $7d7c: $01 $01 $01
	inc  bc                                          ; $7d7f: $03
	ld   [hl], a                                     ; $7d80: $77
	sbc  d                                           ; $7d81: $9a
	and  b                                           ; $7d82: $a0
	inc  bc                                          ; $7d83: $03
	ld   [$546b], a                                  ; $7d84: $ea $6b $54
	ld   e, c                                        ; $7d87: $59
	ld   a, b                                        ; $7d88: $78
	ld   sp, hl                                      ; $7d89: $f9
	ld   bc, $0d04                                   ; $7d8a: $01 $04 $0d
	nop                                              ; $7d8d: $00
	ld   a, [bc]                                     ; $7d8e: $0a
	jr   jr_05a_7d94                                 ; $7d8f: $18 $03

	nop                                              ; $7d91: $00
	ld   [bc], a                                     ; $7d92: $02
	ld   b, [hl]                                     ; $7d93: $46

jr_05a_7d94:
	inc  b                                           ; $7d94: $04
	sub  d                                           ; $7d95: $92
	nop                                              ; $7d96: $00
	nop                                              ; $7d97: $00
	ld   e, c                                        ; $7d98: $59
	and  c                                           ; $7d99: $a1
	ld   h, h                                        ; $7d9a: $64
	ld   h, l                                        ; $7d9b: $65
	nop                                              ; $7d9c: $00
	ld   bc, $9d59                                   ; $7d9d: $01 $59 $9d
	sub  a                                           ; $7da0: $97
	nop                                              ; $7da1: $00
	ld   [bc], a                                     ; $7da2: $02
	rlca                                             ; $7da3: $07
	ld   [hl], c                                     ; $7da4: $71
	inc  bc                                          ; $7da5: $03
	ld   [bc], a                                     ; $7da6: $02
	ld   [bc], a                                     ; $7da7: $02
	ld   bc, $2000                                   ; $7da8: $01 $00 $20
	nop                                              ; $7dab: $00
	rlca                                             ; $7dac: $07
	or   l                                           ; $7dad: $b5
	inc  bc                                          ; $7dae: $03
	ld   [bc], a                                     ; $7daf: $02
	ld   [bc], a                                     ; $7db0: $02
	ld   bc, $2001                                   ; $7db1: $01 $01 $20
	nop                                              ; $7db4: $00
	rlca                                             ; $7db5: $07
	ld   d, $04                                      ; $7db6: $16 $04
	ld   [bc], a                                     ; $7db8: $02
	ld   [bc], a                                     ; $7db9: $02
	ld   bc, $2002                                   ; $7dba: $01 $02 $20
	nop                                              ; $7dbd: $00
	rrca                                             ; $7dbe: $0f
	nop                                              ; $7dbf: $00
	ld   bc, $0201                                   ; $7dc0: $01 $01 $02
	ld   b, [hl]                                     ; $7dc3: $46
	inc  b                                           ; $7dc4: $04
	sub  d                                           ; $7dc5: $92
	ld   a, b                                        ; $7dc6: $78
	and  c                                           ; $7dc7: $a1
	ld   [hl], l                                     ; $7dc8: $75
	ld   h, a                                        ; $7dc9: $67
	ld   e, d                                        ; $7dca: $5a
	dec  c                                           ; $7dcb: $0d
	ld   d, d                                        ; $7dcc: $52
	ld   e, c                                        ; $7dcd: $59
	ld   e, d                                        ; $7dce: $5a
	ld   [hl], l                                     ; $7dcf: $75
	ld   h, a                                        ; $7dd0: $67
	ld   e, c                                        ; $7dd1: $59
	ld   sp, hl                                      ; $7dd2: $f9
	dec  c                                           ; $7dd3: $0d
	nop                                              ; $7dd4: $00
	ld   a, [bc]                                     ; $7dd5: $0a
	db   $10                                         ; $7dd6: $10
	ld   b, d                                        ; $7dd7: $42
	nop                                              ; $7dd8: $00
	inc  e                                           ; $7dd9: $1c
	ld   b, $01                                      ; $7dda: $06 $01
	ld   bc, $401d                                   ; $7ddc: $01 $1d $40
	ld   d, $03                                      ; $7ddf: $16 $03
	ld   d, $01                                      ; $7de1: $16 $01
	ld   [bc], a                                     ; $7de3: $02
	jr   z, jr_05a_7de6                              ; $7de4: $28 $00

jr_05a_7de6:
	ld   bc, $9e58                                   ; $7de6: $01 $58 $9e
	ld   d, h                                        ; $7de9: $54
	adc  h                                           ; $7dea: $8c
	ld   l, e                                        ; $7deb: $6b
	ld   d, h                                        ; $7dec: $54
	ld   l, [hl]                                     ; $7ded: $6e
	ld   a, b                                        ; $7dee: $78
	db   $fc                                         ; $7def: $fc
	sbc  a                                           ; $7df0: $9f
	dec  c                                           ; $7df1: $0d
	ld   d, b                                        ; $7df2: $50
	sbc  b                                           ; $7df3: $98
	ld   e, d                                        ; $7df4: $5a
	ld   l, l                                        ; $7df5: $6d
	ld   e, l                                        ; $7df6: $5d
	inc  bc                                          ; $7df7: $03
	jp   hl                                          ; $7df8: $e9


	ld   e, l                                        ; $7df9: $5d
	ld   l, d                                        ; $7dfa: $6a
	sbc  a                                           ; $7dfb: $9f
	dec  c                                           ; $7dfc: $0d
	nop                                              ; $7dfd: $00
	ld   a, [bc]                                     ; $7dfe: $0a
	ld   b, $5c                                      ; $7dff: $06 $5c
	inc  b                                           ; $7e01: $04
	rrca                                             ; $7e02: $0f
	nop                                              ; $7e03: $00
	ld   bc, $ac01                                   ; $7e04: $01 $01 $ac
	push af                                          ; $7e07: $f5
	bit  4, e                                        ; $7e08: $cb $63
	and  c                                           ; $7e0a: $a1
	ld   a, c                                        ; $7e0b: $79
	ld   a, l                                        ; $7e0c: $7d
	dec  c                                           ; $7e0d: $0d
	ld   h, c                                        ; $7e0e: $61
	ld   a, h                                        ; $7e0f: $7c
	ld   e, c                                        ; $7e10: $59
	and  c                                           ; $7e11: $a1
	ld   h, h                                        ; $7e12: $64
	ld   h, l                                        ; $7e13: $65
	ld   a, b                                        ; $7e14: $78
	and  c                                           ; $7e15: $a1
	ld   e, c                                        ; $7e16: $59
	dec  c                                           ; $7e17: $0d
	ld   d, d                                        ; $7e18: $52
	ld   e, c                                        ; $7e19: $59
	ld   e, d                                        ; $7e1a: $5a
	ld   [hl], l                                     ; $7e1b: $75
	ld   h, a                                        ; $7e1c: $67
	ld   e, c                                        ; $7e1d: $59
	ld   sp, hl                                      ; $7e1e: $f9
	dec  c                                           ; $7e1f: $0d
	nop                                              ; $7e20: $00
	ld   a, [bc]                                     ; $7e21: $0a
	db   $10                                         ; $7e22: $10
	ld   b, e                                        ; $7e23: $43
	nop                                              ; $7e24: $00
	inc  e                                           ; $7e25: $1c
	ld   b, $07                                      ; $7e26: $06 $07
	rlca                                             ; $7e28: $07
	dec  e                                           ; $7e29: $1d
	ld   b, b                                        ; $7e2a: $40
	ld   d, $03                                      ; $7e2b: $16 $03
	ld   d, $01                                      ; $7e2d: $16 $01
	inc  bc                                          ; $7e2f: $03
	jr   z, jr_05a_7e32                              ; $7e30: $28 $00

jr_05a_7e32:
	ld   bc, $5858                                   ; $7e32: $01 $58 $58
	sbc  [hl]                                        ; $7e35: $9e
	ld   d, d                                        ; $7e36: $52
	ld   d, d                                        ; $7e37: $52
	ld   h, [hl]                                     ; $7e38: $66
	sub  c                                           ; $7e39: $91
	ld   a, b                                        ; $7e3a: $78
	ld   d, d                                        ; $7e3b: $52
	ld   e, c                                        ; $7e3c: $59
	sbc  a                                           ; $7e3d: $9f
	dec  c                                           ; $7e3e: $0d
	ld   [bc], a                                     ; $7e3f: $02
	ld   l, [hl]                                     ; $7e40: $6e
	inc  bc                                          ; $7e41: $03
	ld   c, $5b                                      ; $7e42: $0e $5b
	inc  b                                           ; $7e44: $04
	di                                               ; $7e45: $f3
	ld   a, h                                        ; $7e46: $7c
	ld   [bc], a                                     ; $7e47: $02
	ld   l, [hl]                                     ; $7e48: $6e
	ld   a, c                                        ; $7e49: $79
	inc  bc                                          ; $7e4a: $03
	xor  [hl]                                        ; $7e4b: $ae
	ld   d, [hl]                                     ; $7e4c: $56
	sbc  c                                           ; $7e4d: $99
	ld   l, d                                        ; $7e4e: $6a
	sbc  a                                           ; $7e4f: $9f
	dec  c                                           ; $7e50: $0d
	ld   d, b                                        ; $7e51: $50
	sbc  b                                           ; $7e52: $98
	ld   e, d                                        ; $7e53: $5a
	ld   l, l                                        ; $7e54: $6d
	ld   e, l                                        ; $7e55: $5d
	sub  b                                           ; $7e56: $90
	sub  a                                           ; $7e57: $97
	ld   [hl], c                                     ; $7e58: $71
	halt                                             ; $7e59: $76
	ld   e, l                                        ; $7e5a: $5d
	sub  [hl]                                        ; $7e5b: $96
	sbc  a                                           ; $7e5c: $9f
	dec  c                                           ; $7e5d: $0d
	nop                                              ; $7e5e: $00
	ld   a, [bc]                                     ; $7e5f: $0a
	ld   b, $5c                                      ; $7e60: $06 $5c
	inc  b                                           ; $7e62: $04
	rrca                                             ; $7e63: $0f
	nop                                              ; $7e64: $00
	ld   bc, $5901                                   ; $7e65: $01 $01 $59
	sbc  l                                           ; $7e68: $9d
	sub  a                                           ; $7e69: $97
	ld   [hl], l                                     ; $7e6a: $75
	ld   h, a                                        ; $7e6b: $67
	sbc  a                                           ; $7e6c: $9f
	dec  c                                           ; $7e6d: $0d
	ld   [hl], a                                     ; $7e6e: $77
	ld   d, h                                        ; $7e6f: $54
	ld   l, h                                        ; $7e70: $6c
	sbc  a                                           ; $7e71: $9f
	dec  c                                           ; $7e72: $0d
	nop                                              ; $7e73: $00
	ld   a, [bc]                                     ; $7e74: $0a
	db   $10                                         ; $7e75: $10
	ld   b, h                                        ; $7e76: $44
	nop                                              ; $7e77: $00
	inc  e                                           ; $7e78: $1c
	ld   b, $03                                      ; $7e79: $06 $03
	inc  bc                                          ; $7e7b: $03
	dec  e                                           ; $7e7c: $1d
	ld   b, b                                        ; $7e7d: $40
	ld   d, $03                                      ; $7e7e: $16 $03
	ld   d, $01                                      ; $7e80: $16 $01
	ld   bc, $0028                                   ; $7e82: $01 $28 $00
	ld   bc, $9e59                                   ; $7e85: $01 $59 $9e
	ld   e, c                                        ; $7e88: $59
	sbc  l                                           ; $7e89: $9d
	sub  a                                           ; $7e8a: $97
	ld   sp, hl                                      ; $7e8b: $f9
	dec  c                                           ; $7e8c: $0d
	ld   h, [hl]                                     ; $7e8d: $66
	sub  c                                           ; $7e8e: $91
	ld   d, b                                        ; $7e8f: $50
	sbc  [hl]                                        ; $7e90: $9e
	inc  bc                                          ; $7e91: $03
	db   $ec                                         ; $7e92: $ec
	dec  b                                           ; $7e93: $05
	dec  b                                           ; $7e94: $05
	ld   a, c                                        ; $7e95: $79
	inc  bc                                          ; $7e96: $03
	xor  [hl]                                        ; $7e97: $ae
	sbc  l                                           ; $7e98: $9d
	ld   l, c                                        ; $7e99: $69
	ld   [hl], h                                     ; $7e9a: $74
	dec  c                                           ; $7e9b: $0d
	sub  b                                           ; $7e9c: $90
	sub  a                                           ; $7e9d: $97
	ld   e, b                                        ; $7e9e: $58
	ld   d, h                                        ; $7e9f: $54
	ld   e, c                                        ; $7ea0: $59
	ld   a, b                                        ; $7ea1: $78
	sbc  a                                           ; $7ea2: $9f
	dec  c                                           ; $7ea3: $0d
	nop                                              ; $7ea4: $00
	ld   a, [bc]                                     ; $7ea5: $0a
	ld   b, $5c                                      ; $7ea6: $06 $5c
	inc  b                                           ; $7ea8: $04
	inc  e                                           ; $7ea9: $1c
	ld   b, $00                                      ; $7eaa: $06 $00
	nop                                              ; $7eac: $00
	ld   bc, $9166                                   ; $7ead: $01 $66 $91
	sbc  [hl]                                        ; $7eb0: $9e
	ld   d, b                                        ; $7eb1: $50
	ld   l, l                                        ; $7eb2: $6d
	ld   d, d                                        ; $7eb3: $52
	ld   h, c                                        ; $7eb4: $61
	sbc  d                                           ; $7eb5: $9a
	ld   e, c                                        ; $7eb6: $59
	sub  a                                           ; $7eb7: $97
	dec  c                                           ; $7eb8: $0d
	ld   [bc], a                                     ; $7eb9: $02
	or   [hl]                                        ; $7eba: $b6
	inc  bc                                          ; $7ebb: $03
	ld   l, e                                        ; $7ebc: $6b
	ld   a, h                                        ; $7ebd: $7c
	ld   e, a                                        ; $7ebe: $5f
	ld   d, d                                        ; $7ebf: $52
	ld   h, c                                        ; $7ec0: $61
	ld   l, [hl]                                     ; $7ec1: $6e
	ld   e, c                                        ; $7ec2: $59
	sub  a                                           ; $7ec3: $97
	sbc  a                                           ; $7ec4: $9f
	dec  c                                           ; $7ec5: $0d
	adc  h                                           ; $7ec6: $8c
	ld   l, l                                        ; $7ec7: $6d
	sbc  [hl]                                        ; $7ec8: $9e
	ld   [bc], a                                     ; $7ec9: $02
	xor  d                                           ; $7eca: $aa
	ld   [hl], l                                     ; $7ecb: $75
	ld   a, b                                        ; $7ecc: $78
	sbc  a                                           ; $7ecd: $9f
	dec  c                                           ; $7ece: $0d
	nop                                              ; $7ecf: $00
	ld   a, [bc]                                     ; $7ed0: $0a
	dec  c                                           ; $7ed1: $0d
	nop                                              ; $7ed2: $00
	nop                                              ; $7ed3: $00
	rrca                                             ; $7ed4: $0f
	nop                                              ; $7ed5: $00
	ld   bc, $1e09                                   ; $7ed6: $01 $09 $1e
	nop                                              ; $7ed9: $00
	rrca                                             ; $7eda: $0f
	nop                                              ; $7edb: $00
	ld   bc, $ac01                                   ; $7edc: $01 $01 $ac
	push af                                          ; $7edf: $f5
	bit  4, e                                        ; $7ee0: $cb $63
	and  c                                           ; $7ee2: $a1
	ld   e, c                                        ; $7ee3: $59
	sub  a                                           ; $7ee4: $97
	adc  l                                           ; $7ee5: $8d
	ld   [hl], h                                     ; $7ee6: $74
	dec  c                                           ; $7ee7: $0d
	and  e                                           ; $7ee8: $a3
	and  l                                           ; $7ee9: $a5
	db   $ec                                         ; $7eea: $ec
	cp   d                                           ; $7eeb: $ba
	ld   [hl], c                                     ; $7eec: $71
	ld   [hl], h                                     ; $7eed: $74
	ld   [hl], a                                     ; $7eee: $77
	and  c                                           ; $7eef: $a1
	ld   a, b                                        ; $7ef0: $78
	ld   [bc], a                                     ; $7ef1: $02
	cp   b                                           ; $7ef2: $b8
	dec  c                                           ; $7ef3: $0d
	ld   [hl], l                                     ; $7ef4: $75
	ld   h, a                                        ; $7ef5: $67
	ld   e, c                                        ; $7ef6: $59
	ld   sp, hl                                      ; $7ef7: $f9
	dec  c                                           ; $7ef8: $0d
	nop                                              ; $7ef9: $00
	ld   a, [bc]                                     ; $7efa: $0a
	inc  e                                           ; $7efb: $1c
	ld   b, $05                                      ; $7efc: $06 $05
	dec  b                                           ; $7efe: $05
	ld   bc, $a5a3                                   ; $7eff: $01 $a3 $a5

Jump_05a_7f02:
	db   $ec                                         ; $7f02: $ec
	cp   d                                           ; $7f03: $ba
	ld   sp, hl                                      ; $7f04: $f9
	dec  c                                           ; $7f05: $0d
	ld   l, e                                        ; $7f06: $6b
	ld   d, h                                        ; $7f07: $54
	ld   l, [hl]                                     ; $7f08: $6e
	ld   a, b                                        ; $7f09: $78
	sbc  a                                           ; $7f0a: $9f
	ld   l, a                                        ; $7f0b: $6f
	sub  l                                           ; $7f0c: $95
	ld   [hl], c                                     ; $7f0d: $71
	halt                                             ; $7f0e: $76
	dec  c                                           ; $7f0f: $0d
	sbc  l                                           ; $7f10: $9d
	ld   e, d                                        ; $7f11: $5a
	adc  h                                           ; $7f12: $8c
	adc  h                                           ; $7f13: $8c
	ld   e, d                                        ; $7f14: $5a
	inc  b                                           ; $7f15: $04
	call nc, $1605                                   ; $7f16: $d4 $05 $16
	ld   [hl], d                                     ; $7f19: $72
	ld   e, a                                        ; $7f1a: $5f
	ld   [hl], a                                     ; $7f1b: $77
	sbc  [hl]                                        ; $7f1c: $9e
	dec  c                                           ; $7f1d: $0d
	nop                                              ; $7f1e: $00
	ld   a, [bc]                                     ; $7f1f: $0a
	inc  e                                           ; $7f20: $1c
	ld   b, $01                                      ; $7f21: $06 $01
	ld   bc, $7501                                   ; $7f23: $01 $01 $75
	sub  b                                           ; $7f26: $90
	sbc  [hl]                                        ; $7f27: $9e
	ld   d, b                                        ; $7f28: $50
	ld   a, h                                        ; $7f29: $7c
	inc  b                                           ; $7f2a: $04
	ld   d, b                                        ; $7f2b: $50
	ld   a, c                                        ; $7f2c: $79
	ld   h, l                                        ; $7f2d: $65
	ld   [hl], h                                     ; $7f2e: $74
	ld   a, l                                        ; $7f2f: $7d
	dec  c                                           ; $7f30: $0d
	ld   l, b                                        ; $7f31: $68
	ld   d, d                                        ; $7f32: $52
	add  h                                           ; $7f33: $84
	and  c                                           ; $7f34: $a1
	halt                                             ; $7f35: $76
	ld   h, l                                        ; $7f36: $65
	ld   [hl], c                                     ; $7f37: $71
	ld   e, c                                        ; $7f38: $59
	sbc  b                                           ; $7f39: $98
	dec  c                                           ; $7f3a: $0d
	ld   h, l                                        ; $7f3b: $65
	ld   [hl], h                                     ; $7f3c: $74
	sbc  c                                           ; $7f3d: $99
	and  c                                           ; $7f3e: $a1
	ld   h, [hl]                                     ; $7f3f: $66
	sub  c                                           ; $7f40: $91
	ld   a, b                                        ; $7f41: $78
	ld   d, d                                        ; $7f42: $52
	ld   e, c                                        ; $7f43: $59
	ld   a, b                                        ; $7f44: $78
	ld   sp, hl                                      ; $7f45: $f9
	dec  c                                           ; $7f46: $0d
	nop                                              ; $7f47: $00
	ld   a, [bc]                                     ; $7f48: $0a
	ld   bc, $9166                                   ; $7f49: $01 $66 $91
	sbc  [hl]                                        ; $7f4c: $9e
	ld   d, b                                        ; $7f4d: $50
	ld   l, l                                        ; $7f4e: $6d
	ld   d, d                                        ; $7f4f: $52
	ld   a, l                                        ; $7f50: $7d
	ld   h, c                                        ; $7f51: $61
	sbc  d                                           ; $7f52: $9a
	ld   e, c                                        ; $7f53: $59
	sub  a                                           ; $7f54: $97
	dec  c                                           ; $7f55: $0d
	ld   [bc], a                                     ; $7f56: $02
	or   [hl]                                        ; $7f57: $b6
	inc  bc                                          ; $7f58: $03
	ld   l, e                                        ; $7f59: $6b
	ld   a, h                                        ; $7f5a: $7c
	ld   e, a                                        ; $7f5b: $5f
	ld   d, d                                        ; $7f5c: $52
	ld   h, c                                        ; $7f5d: $61
	ld   l, [hl]                                     ; $7f5e: $6e
	sbc  a                                           ; $7f5f: $9f
	dec  c                                           ; $7f60: $0d
	adc  h                                           ; $7f61: $8c
	ld   l, l                                        ; $7f62: $6d
	sbc  [hl]                                        ; $7f63: $9e
	ld   [bc], a                                     ; $7f64: $02
	xor  d                                           ; $7f65: $aa
	ld   [hl], l                                     ; $7f66: $75
	ld   a, b                                        ; $7f67: $78
	sbc  a                                           ; $7f68: $9f
	dec  c                                           ; $7f69: $0d
	nop                                              ; $7f6a: $00
	ld   a, [bc]                                     ; $7f6b: $0a
	dec  c                                           ; $7f6c: $0d
	nop                                              ; $7f6d: $00
	nop                                              ; $7f6e: $00
	rrca                                             ; $7f6f: $0f
	nop                                              ; $7f70: $00
	ld   bc, $1e09                                   ; $7f71: $01 $09 $1e
	nop                                              ; $7f74: $00
	nop                                              ; $7f75: $00
	ld   c, $46                                      ; $7f76: $0e $46
	rrca                                             ; $7f78: $0f
	nop                                              ; $7f79: $00
	ld   bc, $0102                                   ; $7f7a: $01 $02 $01
	rst  JumpTable                                         ; $7f7d: $df
	db   $ec                                         ; $7f7e: $ec
	and  e                                           ; $7f7f: $a3
	ld   h, e                                        ; $7f80: $63
	and  c                                           ; $7f81: $a1
	sbc  [hl]                                        ; $7f82: $9e
	dec  c                                           ; $7f83: $0d
	ld   d, d                                        ; $7f84: $52
	sub  a                                           ; $7f85: $97
	ld   [hl], c                                     ; $7f86: $71
	ld   h, l                                        ; $7f87: $65
	sub  c                                           ; $7f88: $91
	ld   d, d                                        ; $7f89: $52
	adc  h                                           ; $7f8a: $8c
	ld   h, a                                        ; $7f8b: $67
	ld   e, c                                        ; $7f8c: $59
	ld   sp, hl                                      ; $7f8d: $f9
	dec  c                                           ; $7f8e: $0d
	nop                                              ; $7f8f: $00
	ld   a, [bc]                                     ; $7f90: $0a
	rlca                                             ; $7f91: $07
	ld   c, b                                        ; $7f92: $48
	nop                                              ; $7f93: $00
	inc  bc                                          ; $7f94: $03
	inc  de                                          ; $7f95: $13
	ld   bc, $25a0                                   ; $7f96: $01 $a0 $25
	nop                                              ; $7f99: $00
	rrca                                             ; $7f9a: $0f
	inc  bc                                          ; $7f9b: $03
	nop                                              ; $7f9c: $00
	ld   bc, $a502                                   ; $7f9d: $01 $02 $a5
	sbc  [hl]                                        ; $7fa0: $9e
	inc  bc                                          ; $7fa1: $03
	inc  [hl]                                        ; $7fa2: $34
	ld   a, h                                        ; $7fa3: $7c
	inc  bc                                          ; $7fa4: $03
	ld   l, e                                        ; $7fa5: $6b
	inc  b                                           ; $7fa6: $04
	ld   b, l                                        ; $7fa7: $45
	sbc  d                                           ; $7fa8: $9a
	and  b                                           ; $7fa9: $a0
	ld   h, l                                        ; $7faa: $65
	ld   [hl], h                                     ; $7fab: $74
	ld   d, d                                        ; $7fac: $52
	sbc  c                                           ; $7fad: $99
	ld   a, h                                        ; $7fae: $7c
	dec  c                                           ; $7faf: $0d
	rst  $38                                         ; $7fb0: $ff
	rst  $38                                         ; $7fb1: $ff
	adc  h                                           ; $7fb2: $8c
	ld   l, l                                        ; $7fb3: $6d
	ld   [bc], a                                     ; $7fb4: $02
	xor  d                                           ; $7fb5: $aa
	ld   a, c                                        ; $7fb6: $79
	ld   h, l                                        ; $7fb7: $65
	ld   [hl], h                                     ; $7fb8: $74
	sbc  a                                           ; $7fb9: $9f
	dec  c                                           ; $7fba: $0d
	nop                                              ; $7fbb: $00
	ld   a, [bc]                                     ; $7fbc: $0a
	nop                                              ; $7fbd: $00
	rrca                                             ; $7fbe: $0f
	inc  bc                                          ; $7fbf: $03
	nop                                              ; $7fc0: $00
	ld   bc, $5656                                   ; $7fc1: $01 $56 $56
	sbc  [hl]                                        ; $7fc4: $9e
	ld   [hl], a                                     ; $7fc5: $77
	ld   d, h                                        ; $7fc6: $54
	ld   l, h                                        ; $7fc7: $6c
	inc  b                                           ; $7fc8: $04
	ld   b, l                                        ; $7fc9: $45
	ld   [hl], c                                     ; $7fca: $71
	ld   [hl], h                                     ; $7fcb: $74
	rst  $38                                         ; $7fcc: $ff
	rst  $38                                         ; $7fcd: $ff
	dec  c                                           ; $7fce: $0d
	nop                                              ; $7fcf: $00
	ld   a, [bc]                                     ; $7fd0: $0a
	rrca                                             ; $7fd1: $0f
	nop                                              ; $7fd2: $00
	ld   bc, $5223                                   ; $7fd3: $01 $23 $52
	inc  e                                           ; $7fd6: $1c
	inc  bc                                          ; $7fd7: $03
	nop                                              ; $7fd8: $00
	nop                                              ; $7fd9: $00
	ld   bc, $5477                                   ; $7fda: $01 $77 $54
	ld   h, l                                        ; $7fdd: $65
	ld   l, l                                        ; $7fde: $6d
	ld   a, h                                        ; $7fdf: $7c
	ld   sp, hl                                      ; $7fe0: $f9
	dec  c                                           ; $7fe1: $0d
	nop                                              ; $7fe2: $00
	ld   a, [bc]                                     ; $7fe3: $0a
	rrca                                             ; $7fe4: $0f
	nop                                              ; $7fe5: $00
	ld   bc, $5201                                   ; $7fe6: $01 $01 $52
	ld   d, [hl]                                     ; $7fe9: $56
	sbc  [hl]                                        ; $7fea: $9e
	ld   a, b                                        ; $7feb: $78
	and  c                                           ; $7fec: $a1
	halt                                             ; $7fed: $76
	ld   a, b                                        ; $7fee: $78
	ld   e, l                                        ; $7fef: $5d
	rst  $38                                         ; $7ff0: $ff
	rst  $38                                         ; $7ff1: $ff
	dec  c                                           ; $7ff2: $0d
	rst  JumpTable                                         ; $7ff3: $df
	db   $ec                                         ; $7ff4: $ec
	and  e                                           ; $7ff5: $a3
	ld   h, e                                        ; $7ff6: $63
	and  c                                           ; $7ff7: $a1
	ld   a, l                                        ; $7ff8: $7d
	inc  b                                           ; $7ff9: $04
	ld   c, c                                        ; $7ffa: $49
	and  b                                           ; $7ffb: $a0
	ld   h, l                                        ; $7ffc: $65
	ld   [hl], h                                     ; $7ffd: $74
	ld   d, d                                        ; $7ffe: $52
	sbc  c                                           ; $7fff: $99
