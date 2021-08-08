; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

ResetSaveData::
	call Call_00a_40e0                               ; $4000: $cd $e0 $40
	xor  a                                           ; $4003: $af
	call Call_00a_4428                               ; $4004: $cd $28 $44
	ld   a, $01                                      ; $4007: $3e $01
	call Call_00a_4428                               ; $4009: $cd $28 $44
	ld   a, $02                                      ; $400c: $3e $02
	call Call_00a_4428                               ; $400e: $cd $28 $44
	ret                                              ; $4011: $c9


	call Call_00a_4024                               ; $4012: $cd $24 $40
	xor  a                                           ; $4015: $af
	call Call_00a_4333                               ; $4016: $cd $33 $43
	ld   a, $01                                      ; $4019: $3e $01
	call Call_00a_4333                               ; $401b: $cd $33 $43
	ld   a, $02                                      ; $401e: $3e $02
	call Call_00a_4333                               ; $4020: $cd $33 $43
	ret                                              ; $4023: $c9


Call_00a_4024::
	ld   hl, $a000                                   ; $4024: $21 $00 $a0
	call Call_00a_4083                               ; $4027: $cd $83 $40
	ld   b, a                                        ; $402a: $47
	ld   hl, $a160                                   ; $402b: $21 $60 $a1
	push bc                                          ; $402e: $c5
	call Call_00a_4083                               ; $402f: $cd $83 $40
	pop  bc                                          ; $4032: $c1
	ld   c, a                                        ; $4033: $4f
	or   b                                           ; $4034: $b0
	ret  z                                           ; $4035: $c8

	ld   a, b                                        ; $4036: $78
	and  c                                           ; $4037: $a1
	bit  0, a                                        ; $4038: $cb $47
	jr   nz, jr_00a_405a                             ; $403a: $20 $1e

	bit  1, a                                        ; $403c: $cb $4f
	jr   nz, jr_00a_4054                             ; $403e: $20 $14

	ld   a, c                                        ; $4040: $79
	and  $07                                         ; $4041: $e6 $07
	jr   z, jr_00a_405f                              ; $4043: $28 $1a

	ld   a, b                                        ; $4045: $78
	and  $07                                         ; $4046: $e6 $07
	jr   z, jr_00a_4065                              ; $4048: $28 $1b

	ld   a, c                                        ; $404a: $79
	and  $03                                         ; $404b: $e6 $03
	jr   z, jr_00a_406b                              ; $404d: $28 $1c

	ld   a, b                                        ; $404f: $78
	and  $03                                         ; $4050: $e6 $03
	jr   z, jr_00a_4077                              ; $4052: $28 $23

jr_00a_4054:
	call Call_00a_40e0                               ; $4054: $cd $e0 $40
	ld   a, $ff                                      ; $4057: $3e $ff
	ret                                              ; $4059: $c9


jr_00a_405a:
	call Call_00a_40e0                               ; $405a: $cd $e0 $40
	xor  a                                           ; $405d: $af
	ret                                              ; $405e: $c9


jr_00a_405f:
	call Call_00a_40c6                               ; $405f: $cd $c6 $40
	ld   a, $01                                      ; $4062: $3e $01
	ret                                              ; $4064: $c9


jr_00a_4065:
	call Call_00a_40d3                               ; $4065: $cd $d3 $40
	ld   a, $02                                      ; $4068: $3e $02
	ret                                              ; $406a: $c9


jr_00a_406b:
	ld   hl, $a160                                   ; $406b: $21 $60 $a1
	call Call_00a_4119                               ; $406e: $cd $19 $41
	call Call_00a_40c6                               ; $4071: $cd $c6 $40
	ld   a, $03                                      ; $4074: $3e $03
	ret                                              ; $4076: $c9


jr_00a_4077:
	ld   hl, $a000                                   ; $4077: $21 $00 $a0
	call Call_00a_4119                               ; $407a: $cd $19 $41
	call Call_00a_40d3                               ; $407d: $cd $d3 $40
	ld   a, $04                                      ; $4080: $3e $04
	ret                                              ; $4082: $c9


; HL -
Call_00a_4083:
	push hl                                          ; $4083: $e5
	ld   bc, $0150                                   ; $4084: $01 $50 $01
	add  hl, bc                                      ; $4087: $09
	ld   de, $40fc                                   ; $4088: $11 $fc $40
	ld   bc, $0010                                   ; $408b: $01 $10 $00
	call CheckIf2ByteSequencesMatch                                       ; $408e: $cd $72 $0b
	pop  hl                                          ; $4091: $e1
	or   a                                           ; $4092: $b7
	jr   z, jr_00a_4098                              ; $4093: $28 $03

	ld   a, $01                                      ; $4095: $3e $01
	ret                                              ; $4097: $c9

jr_00a_4098:
	push hl                                          ; $4098: $e5
	call Call_00a_42ab                               ; $4099: $cd $ab $42
	pop  hl                                          ; $409c: $e1
	push hl                                          ; $409d: $e5
	ld   bc, $0148                           ; $409e: $01 $48 $01
	add  hl, bc                                      ; $40a1: $09
	ld   de, $b61f                                   ; $40a2: $11 $1f $b6
	ld   bc, $0004                                   ; $40a5: $01 $04 $00
	call CheckIf2ByteSequencesMatch                                       ; $40a8: $cd $72 $0b
	pop  hl                                          ; $40ab: $e1
	or   a                                           ; $40ac: $b7
	jr   z, jr_00a_40b2                              ; $40ad: $28 $03

	ld   a, $02                                      ; $40af: $3e $02
	ret                                              ; $40b1: $c9

jr_00a_40b2:
	push hl                                          ; $40b2: $e5
	ld   bc, $014c                    ; $40b3: $01 $4c $01
	add  hl, bc                                      ; $40b6: $09
	ld   de, $b623                                   ; $40b7: $11 $23 $b6
	ld   bc, $0004                                   ; $40ba: $01 $04 $00
	call CheckIf2ByteSequencesMatch                                       ; $40bd: $cd $72 $0b
	pop  hl                                          ; $40c0: $e1
	or   a                                           ; $40c1: $b7
	ret  z                                           ; $40c2: $c8

	ld   a, $04                                      ; $40c3: $3e $04
	ret                                              ; $40c5: $c9


Call_00a_40c6:
	ld   de, $a000                                   ; $40c6: $11 $00 $a0
	ld   hl, $a160                                   ; $40c9: $21 $60 $a1
	ld   bc, $0160                                   ; $40cc: $01 $60 $01
	call MemCopy                                       ; $40cf: $cd $a9 $09
	ret                                              ; $40d2: $c9


Call_00a_40d3:
	ld   de, $a160                                   ; $40d3: $11 $60 $a1
	ld   hl, $a000                                   ; $40d6: $21 $00 $a0
	ld   bc, $0160                                   ; $40d9: $01 $60 $01
	call MemCopy                                       ; $40dc: $cd $a9 $09
	ret                                              ; $40df: $c9


Call_00a_40e0:
	ld   de, $a150                                   ; $40e0: $11 $50 $a1
	ld   hl, $40fc                                   ; $40e3: $21 $fc $40
	ld   bc, $0010                                   ; $40e6: $01 $10 $00
	call MemCopy                                       ; $40e9: $cd $a9 $09
	ld   hl, $a000                                   ; $40ec: $21 $00 $a0
	call Call_00a_410c                               ; $40ef: $cd $0c $41
	ld   hl, $a000                                   ; $40f2: $21 $00 $a0
	call Call_00a_4119                               ; $40f5: $cd $19 $41
	call Call_00a_40d3                               ; $40f8: $cd $d3 $40
	ret                                              ; $40fb: $c9


	ld   c, e                                        ; $40fc: $4b
	ld   [hl], l                                     ; $40fd: $75
	ld   [hl], d                                     ; $40fe: $72
	ld   [hl], l                                     ; $40ff: $75
	ld   l, l                                        ; $4100: $6d
	ld   l, c                                        ; $4101: $69
	ld   c, h                                        ; $4102: $4c
	ld   l, a                                        ; $4103: $6f
	halt                                             ; $4104: $76
	ld   h, l                                        ; $4105: $65
	ld   c, l                                        ; $4106: $4d
	ld   h, c                                        ; $4107: $61
	ld   l, l                                        ; $4108: $6d
	ld   l, c                                        ; $4109: $69
	ld   a, c                                        ; $410a: $79
	ld   h, c                                        ; $410b: $61

Call_00a_410c:
	push hl                                          ; $410c: $e5
	xor  a                                           ; $410d: $af
	ld   bc, $0100                                   ; $410e: $01 $00 $01
	call MemSet                                       ; $4111: $cd $96 $09
	pop  hl                                          ; $4114: $e1
	call Call_00a_431e                               ; $4115: $cd $1e $43
	ret                                              ; $4118: $c9


Call_00a_4119:
	push hl                                          ; $4119: $e5
	ld   bc, $0100                                   ; $411a: $01 $00 $01
	add  hl, bc                                      ; $411d: $09
	ld   bc, $0048                                   ; $411e: $01 $48 $00

jr_00a_4121:
	xor  a                                           ; $4121: $af
	ld   [hl+], a                                    ; $4122: $22
	dec  bc                                          ; $4123: $0b
	ld   a, b                                        ; $4124: $78
	or   c                                           ; $4125: $b1
	jr   nz, jr_00a_4121                             ; $4126: $20 $f9

	pop  hl                                          ; $4128: $e1
	push hl                                          ; $4129: $e5
	ld   bc, $0102                                   ; $412a: $01 $02 $01
	add  hl, bc                                      ; $412d: $09
	ld   de, $4171                                   ; $412e: $11 $71 $41
	ld   bc, $0006                                   ; $4131: $01 $06 $00

jr_00a_4134:
	push bc                                          ; $4134: $c5
	push hl                                          ; $4135: $e5
	ld   a, [de]                                     ; $4136: $1a
	inc  de                                          ; $4137: $13
	ld   b, $00                                      ; $4138: $06 $00
	ld   c, a                                        ; $413a: $4f
	add  hl, bc                                      ; $413b: $09
	ld   a, [de]                                     ; $413c: $1a
	inc  de                                          ; $413d: $13
	pop  hl                                          ; $413e: $e1
	ld   [hl+], a                                    ; $413f: $22
	pop  bc                                          ; $4140: $c1
	dec  bc                                          ; $4141: $0b
	ld   a, b                                        ; $4142: $78
	or   c                                           ; $4143: $b1
	jr   nz, jr_00a_4134                             ; $4144: $20 $ee

	pop  hl                                          ; $4146: $e1
	push hl                                          ; $4147: $e5
	ld   bc, $0110                                   ; $4148: $01 $10 $01
	add  hl, bc                                      ; $414b: $09
	ld   b, $02                                      ; $414c: $06 $02

jr_00a_414e:
	ld   a, $3b                                      ; $414e: $3e $3b
	ld   [hl+], a                                    ; $4150: $22
	ld   [hl+], a                                    ; $4151: $22
	ld   a, $63                                      ; $4152: $3e $63
	ld   [hl+], a                                    ; $4154: $22
	ld   [hl+], a                                    ; $4155: $22
	dec  b                                           ; $4156: $05
	jr   nz, jr_00a_414e                             ; $4157: $20 $f5

	pop  hl                                          ; $4159: $e1
	push hl                                          ; $415a: $e5
	ld   bc, $0138                                   ; $415b: $01 $38 $01
	add  hl, bc                                      ; $415e: $09
	ld   b, $02                                      ; $415f: $06 $02

jr_00a_4161:
	ld   a, $3b                                      ; $4161: $3e $3b
	ld   [hl+], a                                    ; $4163: $22
	ld   [hl+], a                                    ; $4164: $22
	ld   a, $63                                      ; $4165: $3e $63
	ld   [hl+], a                                    ; $4167: $22
	ld   [hl+], a                                    ; $4168: $22
	dec  b                                           ; $4169: $05
	jr   nz, jr_00a_4161                             ; $416a: $20 $f5

	pop  hl                                          ; $416c: $e1
	call Call_00a_431e                               ; $416d: $cd $1e $43
	ret                                              ; $4170: $c9


	nop                                              ; $4171: $00
	dec  b                                           ; $4172: $05
	ld   bc, $0200                                   ; $4173: $01 $00 $02
	ld   bc, $0103                                   ; $4176: $01 $03 $01
	inc  b                                           ; $4179: $04
	nop                                              ; $417a: $00
	dec  b                                           ; $417b: $05
	ld   bc, $0021                                   ; $417c: $01 $21 $00
	and  b                                           ; $417f: $a0
	call Call_00a_431e                               ; $4180: $cd $1e $43
	call Call_00a_40d3                               ; $4183: $cd $d3 $40
	ret                                              ; $4186: $c9


Stub_0a_4187:
	ret                                              ; $4187: $c9


SetSramValOrFlag:
	push bc                                          ; $4188: $c5
	push de                                          ; $4189: $d5
	push hl                                          ; $418a: $e5
	bit  5, h                                        ; $418b: $cb $6c
	jr   nz, jr_00a_419c                             ; $418d: $20 $0d

	push af                                          ; $418f: $f5
	ld   a, h                                        ; $4190: $7c
	and  $03                                         ; $4191: $e6 $03
	ld   h, a                                        ; $4193: $67
	pop  af                                          ; $4194: $f1
	ld   bc, $a000                                   ; $4195: $01 $00 $a0
	add  hl, bc                                      ; $4198: $09
	ld   [hl], a                                     ; $4199: $77
	jr   jr_00a_41d1                                 ; $419a: $18 $35

jr_00a_419c:
	push af                                          ; $419c: $f5
	ld   a, h                                        ; $419d: $7c
	and  $03                                         ; $419e: $e6 $03
	ld   h, a                                        ; $41a0: $67
	pop  af                                          ; $41a1: $f1
	ld   b, $00                                      ; $41a2: $06 $00
	ld   c, b                                        ; $41a4: $48
	srl  h                                           ; $41a5: $cb $3c
	rr   l                                           ; $41a7: $cb $1d
	rl   c                                           ; $41a9: $cb $11
	srl  h                                           ; $41ab: $cb $3c
	rr   l                                           ; $41ad: $cb $1d
	rl   c                                           ; $41af: $cb $11
	srl  h                                           ; $41b1: $cb $3c
	rr   l                                           ; $41b3: $cb $1d
	rl   c                                           ; $41b5: $cb $11
	ld   d, h                                        ; $41b7: $54
	ld   e, l                                        ; $41b8: $5d
	ld   hl, BitTable                                   ; $41b9: $21 $26 $42
	add  hl, bc                                      ; $41bc: $09
	or   a                                           ; $41bd: $b7
	jr   z, jr_00a_41c9                              ; $41be: $28 $09

	ld   a, [hl]                                     ; $41c0: $7e
	ld   hl, $a080                                   ; $41c1: $21 $80 $a0
	add  hl, de                                      ; $41c4: $19
	or   [hl]                                        ; $41c5: $b6
	ld   [hl], a                                     ; $41c6: $77
	jr   jr_00a_41d1                                 ; $41c7: $18 $08

jr_00a_41c9:
	ld   a, [hl]                                     ; $41c9: $7e
	cpl                                              ; $41ca: $2f
	ld   hl, $a080                                   ; $41cb: $21 $80 $a0
	add  hl, de                                      ; $41ce: $19
	and  [hl]                                        ; $41cf: $a6
	ld   [hl], a                                     ; $41d0: $77

jr_00a_41d1:
	pop  hl                                          ; $41d1: $e1
	pop  de                                          ; $41d2: $d1
	pop  bc                                          ; $41d3: $c1
	jp   $417d                                       ; $41d4: $c3 $7d $41


SetSramByte::
	set  4, h                                        ; $41d7: $cb $e4
	res  5, h                                        ; $41d9: $cb $ac
	jp   SetSramValOrFlag                               ; $41db: $c3 $88 $41


; A - if non-0, set, else unset
SetOrUnsetFlag::
	res  4, h                                        ; $41de: $cb $a4
	set  5, h                                        ; $41e0: $cb $ec
	jp   SetSramValOrFlag                               ; $41e2: $c3 $88 $41


GetSramValOrFlag:
	push bc                                          ; $41e5: $c5
	push de                                          ; $41e6: $d5
	push hl                                          ; $41e7: $e5
	bit  5, h                                        ; $41e8: $cb $6c
	jr   nz, .br_41f7                             ; $41ea: $20 $0b

	ld   a, h                                        ; $41ec: $7c
	and  $03                                         ; $41ed: $e6 $03
	ld   h, a                                        ; $41ef: $67
	ld   bc, $a000                                   ; $41f0: $01 $00 $a0
	add  hl, bc                                      ; $41f3: $09
	ld   a, [hl]                                     ; $41f4: $7e
	jr   .cont_4220                                 ; $41f5: $18 $29

.br_41f7:
; eg 0101, or 0189
	ld   a, h                                        ; $41f7: $7c
	and  $03                                         ; $41f8: $e6 $03
	ld   h, a                                        ; $41fa: $67

; Clear BC
	ld   b, $00                                      ; $41fb: $06 $00
	ld   c, b                                        ; $41fd: $48

; Low 3 bits of C is low 3 bits of L inverted
	srl  h                                           ; $41fe: $cb $3c
	rr   l                                           ; $4200: $cb $1d
	rl   c                                           ; $4202: $cb $11

	srl  h                                           ; $4204: $cb $3c
	rr   l                                           ; $4206: $cb $1d
	rl   c                                           ; $4208: $cb $11

	srl  h                                           ; $420a: $cb $3c
	rr   l                                           ; $420c: $cb $1d
	rl   c                                           ; $420e: $cb $11

; DE = orig HL / 8
	ld   d, h                                        ; $4210: $54
	ld   e, l                                        ; $4211: $5d

; Get appropriate bit based on orig low 3 bits of L
	ld   hl, BitTable                                   ; $4212: $21 $26 $42
	add  hl, bc                                      ; $4215: $09
	ld   a, [hl]                                     ; $4216: $7e

;
	ld   hl, $a080                                   ; $4217: $21 $80 $a0
	add  hl, de                                      ; $421a: $19
	and  [hl]                                        ; $421b: $a6
	jr   z, .cont_4220                              ; $421c: $28 $02

	ld   a, $ff                                      ; $421e: $3e $ff

.cont_4220:
	pop  hl                                          ; $4220: $e1
	pop  de                                          ; $4221: $d1
	pop  bc                                          ; $4222: $c1
	jp   Stub_0a_4187                               ; $4223: $c3 $87 $41


BitTable:
; Low 3 bits of L was = 0, 4, 2, 6, 1, 5, 3, 7
; ie these entries = 2 ^ L's 3 bits
	db $01, $10, $04, $40, $02, $20, $08, $80


GetSramByte::
	set  4, h                                        ; $422e: $cb $e4
	res  5, h                                        ; $4230: $cb $ac
	jp   GetSramValOrFlag                               ; $4232: $c3 $e5 $41


CheckIfFlagSet::
	res  4, h                                        ; $4235: $cb $a4
	set  5, h                                        ; $4237: $cb $ec
	jp   GetSramValOrFlag                               ; $4239: $c3 $e5 $41


	ld   de, $a100                                   ; $423c: $11 $00 $a1
	ld   a, l                                        ; $423f: $7d
	ld   [de], a                                     ; $4240: $12
	inc  de                                          ; $4241: $13
	ld   a, h                                        ; $4242: $7c
	ld   [de], a                                     ; $4243: $12
	ld   hl, $a000                                   ; $4244: $21 $00 $a0
	call Call_00a_431e                               ; $4247: $cd $1e $43
	call Call_00a_40d3                               ; $424a: $cd $d3 $40
	ret                                              ; $424d: $c9


	ld   hl, $a100                                   ; $424e: $21 $00 $a1
	ld   a, [hl+]                                    ; $4251: $2a
	ld   h, [hl]                                     ; $4252: $66
	ld   l, a                                        ; $4253: $6f
	ret                                              ; $4254: $c9


	ld   de, $a102                                   ; $4255: $11 $02 $a1
	ld   hl, sTextSpeedBaseCounter                                   ; $4258: $21 $b3 $b1
	ld   bc, $0006                                   ; $425b: $01 $06 $00
	call MemCopy                                       ; $425e: $cd $a9 $09
	ld   hl, $a000                                   ; $4261: $21 $00 $a0
	call Call_00a_431e                               ; $4264: $cd $1e $43
	call Call_00a_40d3                               ; $4267: $cd $d3 $40
	ret                                              ; $426a: $c9


Func_0a_426b::
	ld   de, sTextSpeedBaseCounter                                   ; $426b: $11 $b3 $b1
	ld   hl, $a102                                   ; $426e: $21 $02 $a1
	ld   bc, $0006                                   ; $4271: $01 $06 $00
	call MemCopy                                       ; $4274: $cd $a9 $09
	ret                                              ; $4277: $c9


	push bc                                          ; $4278: $c5
	sla  a                                           ; $4279: $cb $27
	sla  a                                           ; $427b: $cb $27
	ld   b, $00                                      ; $427d: $06 $00
	ld   c, a                                        ; $427f: $4f
	ld   hl, $a108                                   ; $4280: $21 $08 $a1
	add  hl, bc                                      ; $4283: $09
	pop  bc                                          ; $4284: $c1
	ld   a, b                                        ; $4285: $78
	ld   [hl+], a                                    ; $4286: $22
	ld   a, c                                        ; $4287: $79
	ld   [hl+], a                                    ; $4288: $22
	ld   a, d                                        ; $4289: $7a
	ld   [hl+], a                                    ; $428a: $22
	ld   a, e                                        ; $428b: $7b
	ld   [hl+], a                                    ; $428c: $22
	ld   hl, $a000                                   ; $428d: $21 $00 $a0
	call Call_00a_431e                               ; $4290: $cd $1e $43
	call Call_00a_40d3                               ; $4293: $cd $d3 $40
	ret                                              ; $4296: $c9


	sla  a                                           ; $4297: $cb $27
	sla  a                                           ; $4299: $cb $27
	ld   b, $00                                      ; $429b: $06 $00
	ld   c, a                                        ; $429d: $4f
	ld   hl, $a108                                   ; $429e: $21 $08 $a1
	add  hl, bc                                      ; $42a1: $09
	ld   a, [hl+]                                    ; $42a2: $2a
	ld   b, a                                        ; $42a3: $47
	ld   a, [hl+]                                    ; $42a4: $2a
	ld   c, a                                        ; $42a5: $4f
	ld   a, [hl+]                                    ; $42a6: $2a
	ld   d, a                                        ; $42a7: $57
	ld   a, [hl+]                                    ; $42a8: $2a
	ld   e, a                                        ; $42a9: $5f
	ret                                              ; $42aa: $c9


Call_00a_42ab:
	push hl                                          ; $42ab: $e5
	ld   de, $0000                                   ; $42ac: $11 $00 $00
	ld   bc, $0100                                   ; $42af: $01 $00 $01

jr_00a_42b2:
	ld   a, [hl+]                                    ; $42b2: $2a
	add  e                                           ; $42b3: $83
	ld   e, a                                        ; $42b4: $5f
	ld   a, d                                        ; $42b5: $7a
	adc  $00                                         ; $42b6: $ce $00
	ld   d, a                                        ; $42b8: $57
	dec  bc                                          ; $42b9: $0b
	ld   a, b                                        ; $42ba: $78
	or   c                                           ; $42bb: $b1
	jr   nz, jr_00a_42b2                             ; $42bc: $20 $f4

	pop  hl                                          ; $42be: $e1
	ld   a, e                                        ; $42bf: $7b
	ld   [$b61f], a                                  ; $42c0: $ea $1f $b6
	ld   a, d                                        ; $42c3: $7a
	ld   [$b620], a                                  ; $42c4: $ea $20 $b6
	ld   de, $0000                                   ; $42c7: $11 $00 $00
	ld   bc, $0100                                   ; $42ca: $01 $00 $01

jr_00a_42cd:
	ld   a, [hl+]                                    ; $42cd: $2a
	call Call_00a_480b                               ; $42ce: $cd $0b $48
	add  e                                           ; $42d1: $83
	ld   e, a                                        ; $42d2: $5f
	ld   a, d                                        ; $42d3: $7a
	adc  $00                                         ; $42d4: $ce $00
	ld   d, a                                        ; $42d6: $57
	dec  bc                                          ; $42d7: $0b
	ld   a, b                                        ; $42d8: $78
	or   c                                           ; $42d9: $b1
	jr   nz, jr_00a_42cd                             ; $42da: $20 $f1

	ld   a, e                                        ; $42dc: $7b
	ld   [$b621], a                                  ; $42dd: $ea $21 $b6
	ld   a, d                                        ; $42e0: $7a
	ld   [$b622], a                                  ; $42e1: $ea $22 $b6
	push hl                                          ; $42e4: $e5
	ld   de, $0000                                   ; $42e5: $11 $00 $00
	ld   bc, $0048                                   ; $42e8: $01 $48 $00

jr_00a_42eb:
	ld   a, [hl+]                                    ; $42eb: $2a
	add  e                                           ; $42ec: $83
	ld   e, a                                        ; $42ed: $5f
	ld   a, d                                        ; $42ee: $7a
	adc  $00                                         ; $42ef: $ce $00
	ld   d, a                                        ; $42f1: $57
	dec  bc                                          ; $42f2: $0b
	ld   a, b                                        ; $42f3: $78
	or   c                                           ; $42f4: $b1
	jr   nz, jr_00a_42eb                             ; $42f5: $20 $f4

	pop  hl                                          ; $42f7: $e1
	ld   a, e                                        ; $42f8: $7b
	ld   [$b623], a                                  ; $42f9: $ea $23 $b6
	ld   a, d                                        ; $42fc: $7a
	ld   [$b624], a                                  ; $42fd: $ea $24 $b6
	ld   de, $0000                                   ; $4300: $11 $00 $00
	ld   bc, $0048                                   ; $4303: $01 $48 $00

jr_00a_4306:
	ld   a, [hl+]                                    ; $4306: $2a
	call Call_00a_480b                               ; $4307: $cd $0b $48
	add  e                                           ; $430a: $83
	ld   e, a                                        ; $430b: $5f
	ld   a, d                                        ; $430c: $7a
	adc  $00                                         ; $430d: $ce $00
	ld   d, a                                        ; $430f: $57
	dec  bc                                          ; $4310: $0b
	ld   a, b                                        ; $4311: $78
	or   c                                           ; $4312: $b1
	jr   nz, jr_00a_4306                             ; $4313: $20 $f1

	ld   a, e                                        ; $4315: $7b
	ld   [$b625], a                                  ; $4316: $ea $25 $b6
	ld   a, d                                        ; $4319: $7a
	ld   [$b626], a                                  ; $431a: $ea $26 $b6
	ret                                              ; $431d: $c9


Call_00a_431e:
	push hl                                          ; $431e: $e5
	call Call_00a_42ab                               ; $431f: $cd $ab $42
	pop  hl                                          ; $4322: $e1
	ld   bc, $0148                           ; $4323: $01 $48 $01
	add  hl, bc                                      ; $4326: $09
	ld   d, h                                        ; $4327: $54
	ld   e, l                                        ; $4328: $5d
	ld   hl, $b61f                                   ; $4329: $21 $1f $b6
	ld   bc, $0008                                   ; $432c: $01 $08 $00
	call MemCopy                                       ; $432f: $cd $a9 $09
	ret                                              ; $4332: $c9


Call_00a_4333::
	ld   [$b627], a                                  ; $4333: $ea $27 $b6
	call Call_00a_43b4                               ; $4336: $cd $b4 $43
	ld   b, a                                        ; $4339: $47
	push bc                                          ; $433a: $c5
	ld   a, [$b627]                                  ; $433b: $fa $27 $b6
	set  7, a                                        ; $433e: $cb $ff
	call Call_00a_43b4                               ; $4340: $cd $b4 $43
	pop  bc                                          ; $4343: $c1
	ld   c, a                                        ; $4344: $4f
	or   b                                           ; $4345: $b0
	ret  z                                           ; $4346: $c8

	ld   a, b                                        ; $4347: $78
	and  c                                           ; $4348: $a1
	bit  0, a                                        ; $4349: $cb $47
	jr   nz, jr_00a_436e                             ; $434b: $20 $21

	bit  1, a                                        ; $434d: $cb $4f
	jr   nz, jr_00a_4365                             ; $434f: $20 $14

	ld   a, c                                        ; $4351: $79
	and  $07                                         ; $4352: $e6 $07
	jr   z, jr_00a_4376                              ; $4354: $28 $20

	ld   a, b                                        ; $4356: $78
	and  $07                                         ; $4357: $e6 $07
	jr   z, jr_00a_437f                              ; $4359: $28 $24

	ld   a, c                                        ; $435b: $79
	and  $03                                         ; $435c: $e6 $03
	jr   z, jr_00a_4388                              ; $435e: $28 $28

	ld   a, b                                        ; $4360: $78
	and  $03                                         ; $4361: $e6 $03
	jr   z, jr_00a_4397                              ; $4363: $28 $32

jr_00a_4365:
	ld   a, [$b627]                                  ; $4365: $fa $27 $b6
	call Call_00a_4428                               ; $4368: $cd $28 $44
	ld   a, $ff                                      ; $436b: $3e $ff
	ret                                              ; $436d: $c9


jr_00a_436e:
	ld   a, [$b627]                                  ; $436e: $fa $27 $b6
	call Call_00a_4428                               ; $4371: $cd $28 $44
	xor  a                                           ; $4374: $af
	ret                                              ; $4375: $c9


jr_00a_4376:
	ld   a, [$b627]                                  ; $4376: $fa $27 $b6
	call Call_00a_4416                               ; $4379: $cd $16 $44
	ld   a, $01                                      ; $437c: $3e $01
	ret                                              ; $437e: $c9


jr_00a_437f:
	ld   a, [$b627]                                  ; $437f: $fa $27 $b6
	call Call_00a_4400                               ; $4382: $cd $00 $44
	ld   a, $02                                      ; $4385: $3e $02
	ret                                              ; $4387: $c9


jr_00a_4388:
	ld   a, [$b627]                                  ; $4388: $fa $27 $b6
	call Call_00a_447d                               ; $438b: $cd $7d $44
	ld   a, [$b627]                                  ; $438e: $fa $27 $b6
	call Call_00a_4416                               ; $4391: $cd $16 $44
	ld   a, $03                                      ; $4394: $3e $03
	ret                                              ; $4396: $c9


jr_00a_4397:
	ld   a, [$b627]                                  ; $4397: $fa $27 $b6
	call Call_00a_447d                               ; $439a: $cd $7d $44
	ld   a, [$b627]                                  ; $439d: $fa $27 $b6
	call Call_00a_4400                               ; $43a0: $cd $00 $44
	ld   a, $04                                      ; $43a3: $3e $04
	ret                                              ; $43a5: $c9


Call_00a_43a6:
	ld   hl, $a2c0                                   ; $43a6: $21 $c0 $a2
	ld   bc, $0227                                   ; $43a9: $01 $27 $02
	rlca                                             ; $43ac: $07

jr_00a_43ad:
	dec  a                                           ; $43ad: $3d
	bit  7, a                                        ; $43ae: $cb $7f
	ret  nz                                          ; $43b0: $c0

	add  hl, bc                                      ; $43b1: $09
	jr   jr_00a_43ad                                 ; $43b2: $18 $f9

Call_00a_43b4:
	push af                                          ; $43b4: $f5
	call Call_00a_43a6                               ; $43b5: $cd $a6 $43
	ld   bc, $0217                                   ; $43b8: $01 $17 $02
	add  hl, bc                                      ; $43bb: $09
	ld   de, $444a                                   ; $43bc: $11 $4a $44
	ld   bc, $0010                                   ; $43bf: $01 $10 $00
	call CheckIf2ByteSequencesMatch                                       ; $43c2: $cd $72 $0b
	or   a                                           ; $43c5: $b7
	jr   z, jr_00a_43cc                              ; $43c6: $28 $04

	pop  af                                          ; $43c8: $f1
	ld   a, $01                                      ; $43c9: $3e $01
	ret                                              ; $43cb: $c9


jr_00a_43cc:
	pop  af                                          ; $43cc: $f1
	push af                                          ; $43cd: $f5
	call Call_00a_477d                               ; $43ce: $cd $7d $47
	pop  af                                          ; $43d1: $f1
	push af                                          ; $43d2: $f5
	call Call_00a_43a6                               ; $43d3: $cd $a6 $43
	ld   bc, $020f                                   ; $43d6: $01 $0f $02
	add  hl, bc                                      ; $43d9: $09
	ld   de, $b61f                                   ; $43da: $11 $1f $b6
	ld   bc, $0004                                   ; $43dd: $01 $04 $00
	call CheckIf2ByteSequencesMatch                                       ; $43e0: $cd $72 $0b
	or   a                                           ; $43e3: $b7
	jr   z, jr_00a_43ea                              ; $43e4: $28 $04

	pop  af                                          ; $43e6: $f1
	ld   a, $02                                      ; $43e7: $3e $02
	ret                                              ; $43e9: $c9


jr_00a_43ea:
	pop  af                                          ; $43ea: $f1
	call Call_00a_43a6                               ; $43eb: $cd $a6 $43
	ld   bc, $0213                                   ; $43ee: $01 $13 $02
	add  hl, bc                                      ; $43f1: $09
	ld   de, $b623                                   ; $43f2: $11 $23 $b6
	ld   bc, $0004                                   ; $43f5: $01 $04 $00
	call CheckIf2ByteSequencesMatch                                       ; $43f8: $cd $72 $0b
	or   a                                           ; $43fb: $b7
	ret  z                                           ; $43fc: $c8

	ld   a, $04                                      ; $43fd: $3e $04
	ret                                              ; $43ff: $c9


Call_00a_4400:
	and  $7f                                         ; $4400: $e6 $7f
	call Call_00a_43a6                               ; $4402: $cd $a6 $43
	ld   b, h                                        ; $4405: $44
	ld   c, l                                        ; $4406: $4d
	ld   de, $0227                                   ; $4407: $11 $27 $02
	add  hl, de                                      ; $440a: $19
	ld   d, h                                        ; $440b: $54
	ld   e, l                                        ; $440c: $5d
	ld   h, b                                        ; $440d: $60
	ld   l, c                                        ; $440e: $69
	ld   bc, $0227                                   ; $440f: $01 $27 $02
	call MemCopy                                       ; $4412: $cd $a9 $09
	ret                                              ; $4415: $c9


Call_00a_4416:
	and  $7f                                         ; $4416: $e6 $7f
	call Call_00a_43a6                               ; $4418: $cd $a6 $43
	ld   d, h                                        ; $441b: $54
	ld   e, l                                        ; $441c: $5d
	ld   bc, $0227                                   ; $441d: $01 $27 $02
	add  hl, bc                                      ; $4420: $09
	ld   bc, $0227                                   ; $4421: $01 $27 $02
	call MemCopy                                       ; $4424: $cd $a9 $09
	ret                                              ; $4427: $c9


Call_00a_4428:
	push af                                          ; $4428: $f5
	call Call_00a_43a6                               ; $4429: $cd $a6 $43
	ld   bc, $0217                                   ; $442c: $01 $17 $02
	add  hl, bc                                      ; $442f: $09
	ld   d, h                                        ; $4430: $54
	ld   e, l                                        ; $4431: $5d
	ld   hl, $444a                                   ; $4432: $21 $4a $44
	ld   bc, $0010                                   ; $4435: $01 $10 $00
	call MemCopy                                       ; $4438: $cd $a9 $09
	pop  af                                          ; $443b: $f1
	push af                                          ; $443c: $f5
	call $445a                                       ; $443d: $cd $5a $44
	pop  af                                          ; $4440: $f1
	push af                                          ; $4441: $f5
	call Call_00a_447d                               ; $4442: $cd $7d $44
	pop  af                                          ; $4445: $f1
	call Call_00a_4400                               ; $4446: $cd $00 $44
	ret                                              ; $4449: $c9


	ld   d, e                                        ; $444a: $53
	ld   h, c                                        ; $444b: $61
	ld   l, e                                        ; $444c: $6b
	ld   [hl], l                                     ; $444d: $75
	ld   [hl], d                                     ; $444e: $72
	ld   h, c                                        ; $444f: $61
	ld   c, h                                        ; $4450: $4c
	ld   l, a                                        ; $4451: $6f
	halt                                             ; $4452: $76
	ld   h, l                                        ; $4453: $65
	ld   d, h                                        ; $4454: $54
	ld   h, c                                        ; $4455: $61
	ld   l, [hl]                                     ; $4456: $6e
	ld   h, a                                        ; $4457: $67
	ld   h, l                                        ; $4458: $65
	ld   hl, $cdf5                                   ; $4459: $21 $f5 $cd
	and  [hl]                                        ; $445c: $a6
	ld   b, e                                        ; $445d: $43
	push hl                                          ; $445e: $e5
	xor  a                                           ; $445f: $af
	ld   bc, $0206                                   ; $4460: $01 $06 $02
	call MemSet                                       ; $4463: $cd $96 $09
	pop  hl                                          ; $4466: $e1
	ld   bc, $0000                                   ; $4467: $01 $00 $00
	add  hl, bc                                      ; $446a: $09
	ld   a, $80                                      ; $446b: $3e $80
	ld   [hl+], a                                    ; $446d: $22
	ld   a, $9b                                      ; $446e: $3e $9b
	ld   [hl+], a                                    ; $4470: $22
	ld   a, $52                                      ; $4471: $3e $52
	ld   [hl+], a                                    ; $4473: $22
	xor  a                                           ; $4474: $af
	ld   [hl+], a                                    ; $4475: $22
	ld   [hl+], a                                    ; $4476: $22
	ld   [hl+], a                                    ; $4477: $22
	pop  af                                          ; $4478: $f1
	call Call_00a_47f3                               ; $4479: $cd $f3 $47
	ret                                              ; $447c: $c9


Call_00a_447d:
	push af                                          ; $447d: $f5
	call Call_00a_43a6                               ; $447e: $cd $a6 $43
	push hl                                          ; $4481: $e5
	ld   bc, $0206                                   ; $4482: $01 $06 $02
	add  hl, bc                                      ; $4485: $09
	ld   bc, $0009                                   ; $4486: $01 $09 $00

jr_00a_4489:
	xor  a                                           ; $4489: $af
	ld   [hl+], a                                    ; $448a: $22
	dec  bc                                          ; $448b: $0b
	ld   a, b                                        ; $448c: $78
	or   c                                           ; $448d: $b1
	jr   nz, jr_00a_4489                             ; $448e: $20 $f9

	xor  a                                           ; $4490: $af

jr_00a_4491:
	push af                                          ; $4491: $f5
	call Call_00a_464c                               ; $4492: $cd $4c $46
	bit  7, a                                        ; $4495: $cb $7f
	jr   nz, jr_00a_44a3                             ; $4497: $20 $0a

	pop  af                                          ; $4499: $f1
	pop  hl                                          ; $449a: $e1
	push hl                                          ; $449b: $e5
	ld   bc, $0207                                   ; $449c: $01 $07 $02
	add  hl, bc                                      ; $449f: $09
	ld   [hl], a                                     ; $44a0: $77
	jr   jr_00a_44a7                                 ; $44a1: $18 $04

jr_00a_44a3:
	pop  af                                          ; $44a3: $f1
	inc  a                                           ; $44a4: $3c
	jr   nz, jr_00a_4491                             ; $44a5: $20 $ea

jr_00a_44a7:
	pop  hl                                          ; $44a7: $e1
	push hl                                          ; $44a8: $e5
	ld   bc, $0209                                   ; $44a9: $01 $09 $02
	add  hl, bc                                      ; $44ac: $09
	ld   de, $a102                                   ; $44ad: $11 $02 $a1
	ld   bc, $0006                                   ; $44b0: $01 $06 $00

jr_00a_44b3:
	ld   a, [de]                                     ; $44b3: $1a
	inc  de                                          ; $44b4: $13
	ld   [hl+], a                                    ; $44b5: $22
	dec  bc                                          ; $44b6: $0b
	ld   a, b                                        ; $44b7: $78
	or   c                                           ; $44b8: $b1
	jr   nz, jr_00a_44b3                             ; $44b9: $20 $f8

	pop  hl                                          ; $44bb: $e1
	ld   bc, $0006                                   ; $44bc: $01 $06 $00
	add  hl, bc                                      ; $44bf: $09
	ld   de, $461b                                   ; $44c0: $11 $1b $46

jr_00a_44c3:
	ld   a, [de]                                     ; $44c3: $1a
	cp   $ff                                         ; $44c4: $fe $ff
	jr   z, jr_00a_44d4                              ; $44c6: $28 $0c

	ld   c, a                                        ; $44c8: $4f
	ld   b, $00                                      ; $44c9: $06 $00
	inc  de                                          ; $44cb: $13
	ld   a, [de]                                     ; $44cc: $1a
	inc  de                                          ; $44cd: $13
	push hl                                          ; $44ce: $e5
	add  hl, bc                                      ; $44cf: $09
	ld   [hl], a                                     ; $44d0: $77
	pop  hl                                          ; $44d1: $e1
	jr   jr_00a_44c3                                 ; $44d2: $18 $ef

jr_00a_44d4:
	ld   hl, $0190                                   ; $44d4: $21 $90 $01
	push af                                          ; $44d7: $f5
	ld   a, $d7                                      ; $44d8: $3e $d7
	ld   [wFarCallAddr], a                                  ; $44da: $ea $98 $c2
	ld   a, $71                                      ; $44dd: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $44df: $ea $99 $c2
	ld   a, $0c                                      ; $44e2: $3e $0c
	ld   [wFarCallBank], a                                  ; $44e4: $ea $9a $c2
	pop  af                                          ; $44e7: $f1
	call FarCall                                       ; $44e8: $cd $62 $09
	ld   hl, $00d3                                   ; $44eb: $21 $d3 $00
	push af                                          ; $44ee: $f5
	ld   a, $37                                      ; $44ef: $3e $37
	ld   [wFarCallAddr], a                                  ; $44f1: $ea $98 $c2
	ld   a, $45                                      ; $44f4: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $44f6: $ea $99 $c2
	ld   a, $09                                      ; $44f9: $3e $09
	ld   [wFarCallBank], a                                  ; $44fb: $ea $9a $c2
	pop  af                                          ; $44fe: $f1
	call FarCall                                       ; $44ff: $cd $62 $09
	ld   hl, $01dc                                   ; $4502: $21 $dc $01
	push af                                          ; $4505: $f5
	ld   a, $d7                                      ; $4506: $3e $d7
	ld   [wFarCallAddr], a                                  ; $4508: $ea $98 $c2
	ld   a, $71                                      ; $450b: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $450d: $ea $99 $c2
	ld   a, $0c                                      ; $4510: $3e $0c
	ld   [wFarCallBank], a                                  ; $4512: $ea $9a $c2
	pop  af                                          ; $4515: $f1
	call FarCall                                       ; $4516: $cd $62 $09
	ld   hl, $00f0                                   ; $4519: $21 $f0 $00
	push af                                          ; $451c: $f5
	ld   a, $37                                      ; $451d: $3e $37
	ld   [wFarCallAddr], a                                  ; $451f: $ea $98 $c2
	ld   a, $45                                      ; $4522: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $4524: $ea $99 $c2
	ld   a, $09                                      ; $4527: $3e $09
	ld   [wFarCallBank], a                                  ; $4529: $ea $9a $c2
	pop  af                                          ; $452c: $f1
	call FarCall                                       ; $452d: $cd $62 $09
	ld   hl, $01e8                                   ; $4530: $21 $e8 $01
	push af                                          ; $4533: $f5
	ld   a, $d7                                      ; $4534: $3e $d7
	ld   [wFarCallAddr], a                                  ; $4536: $ea $98 $c2
	ld   a, $71                                      ; $4539: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $453b: $ea $99 $c2
	ld   a, $0c                                      ; $453e: $3e $0c
	ld   [wFarCallBank], a                                  ; $4540: $ea $9a $c2
	pop  af                                          ; $4543: $f1
	call FarCall                                       ; $4544: $cd $62 $09
	ld   hl, $00f1                                   ; $4547: $21 $f1 $00
	push af                                          ; $454a: $f5
	ld   a, $37                                      ; $454b: $3e $37
	ld   [wFarCallAddr], a                                  ; $454d: $ea $98 $c2
	ld   a, $45                                      ; $4550: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $4552: $ea $99 $c2
	ld   a, $09                                      ; $4555: $3e $09
	ld   [wFarCallBank], a                                  ; $4557: $ea $9a $c2
	pop  af                                          ; $455a: $f1
	call FarCall                                       ; $455b: $cd $62 $09
	ld   hl, $01ec                                   ; $455e: $21 $ec $01
	push af                                          ; $4561: $f5
	ld   a, $d7                                      ; $4562: $3e $d7
	ld   [wFarCallAddr], a                                  ; $4564: $ea $98 $c2
	ld   a, $71                                      ; $4567: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $4569: $ea $99 $c2
	ld   a, $0c                                      ; $456c: $3e $0c
	ld   [wFarCallBank], a                                  ; $456e: $ea $9a $c2
	pop  af                                          ; $4571: $f1
	call FarCall                                       ; $4572: $cd $62 $09
	ld   hl, $00f2                                   ; $4575: $21 $f2 $00
	push af                                          ; $4578: $f5
	ld   a, $37                                      ; $4579: $3e $37
	ld   [wFarCallAddr], a                                  ; $457b: $ea $98 $c2
	ld   a, $45                                      ; $457e: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $4580: $ea $99 $c2
	ld   a, $09                                      ; $4583: $3e $09
	ld   [wFarCallBank], a                                  ; $4585: $ea $9a $c2
	pop  af                                          ; $4588: $f1
	call FarCall                                       ; $4589: $cd $62 $09
	ld   hl, $01f0                                   ; $458c: $21 $f0 $01
	push af                                          ; $458f: $f5
	ld   a, $d7                                      ; $4590: $3e $d7
	ld   [wFarCallAddr], a                                  ; $4592: $ea $98 $c2
	ld   a, $71                                      ; $4595: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $4597: $ea $99 $c2
	ld   a, $0c                                      ; $459a: $3e $0c
	ld   [wFarCallBank], a                                  ; $459c: $ea $9a $c2
	pop  af                                          ; $459f: $f1
	call FarCall                                       ; $45a0: $cd $62 $09
	ld   hl, $00f3                                   ; $45a3: $21 $f3 $00
	push af                                          ; $45a6: $f5
	ld   a, $37                                      ; $45a7: $3e $37
	ld   [wFarCallAddr], a                                  ; $45a9: $ea $98 $c2
	ld   a, $45                                      ; $45ac: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $45ae: $ea $99 $c2
	ld   a, $09                                      ; $45b1: $3e $09
	ld   [wFarCallBank], a                                  ; $45b3: $ea $9a $c2
	pop  af                                          ; $45b6: $f1
	call FarCall                                       ; $45b7: $cd $62 $09
	ld   hl, $01f4                                   ; $45ba: $21 $f4 $01
	push af                                          ; $45bd: $f5
	ld   a, $d7                                      ; $45be: $3e $d7
	ld   [wFarCallAddr], a                                  ; $45c0: $ea $98 $c2
	ld   a, $71                                      ; $45c3: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $45c5: $ea $99 $c2
	ld   a, $0c                                      ; $45c8: $3e $0c
	ld   [wFarCallBank], a                                  ; $45ca: $ea $9a $c2
	pop  af                                          ; $45cd: $f1
	call FarCall                                       ; $45ce: $cd $62 $09
	ld   hl, $00f4                                   ; $45d1: $21 $f4 $00
	push af                                          ; $45d4: $f5
	ld   a, $37                                      ; $45d5: $3e $37
	ld   [wFarCallAddr], a                                  ; $45d7: $ea $98 $c2
	ld   a, $45                                      ; $45da: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $45dc: $ea $99 $c2
	ld   a, $09                                      ; $45df: $3e $09
	ld   [wFarCallBank], a                                  ; $45e1: $ea $9a $c2
	pop  af                                          ; $45e4: $f1
	call FarCall                                       ; $45e5: $cd $62 $09
	ld   hl, $01f8                                   ; $45e8: $21 $f8 $01
	push af                                          ; $45eb: $f5
	ld   a, $d7                                      ; $45ec: $3e $d7
	ld   [wFarCallAddr], a                                  ; $45ee: $ea $98 $c2
	ld   a, $71                                      ; $45f1: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $45f3: $ea $99 $c2
	ld   a, $0c                                      ; $45f6: $3e $0c
	ld   [wFarCallBank], a                                  ; $45f8: $ea $9a $c2
	pop  af                                          ; $45fb: $f1
	call FarCall                                       ; $45fc: $cd $62 $09
	ld   hl, $00f5                                   ; $45ff: $21 $f5 $00
	push af                                          ; $4602: $f5
	ld   a, $37                                      ; $4603: $3e $37
	ld   [wFarCallAddr], a                                  ; $4605: $ea $98 $c2
	ld   a, $45                                      ; $4608: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $460a: $ea $99 $c2
	ld   a, $09                                      ; $460d: $3e $09
	ld   [wFarCallBank], a                                  ; $460f: $ea $9a $c2
	pop  af                                          ; $4612: $f1
	call FarCall                                       ; $4613: $cd $62 $09
	pop  af                                          ; $4616: $f1
	call Call_00a_47f3                               ; $4617: $cd $f3 $47
	ret                                              ; $461a: $c9


	db   $10                                         ; $461b: $10
	rlca                                             ; $461c: $07
	ld   de, $1264                                   ; $461d: $11 $64 $12
	ld   h, h                                        ; $4620: $64
	inc  de                                          ; $4621: $13
	ld   h, h                                        ; $4622: $64
	inc  d                                           ; $4623: $14
	ld   h, h                                        ; $4624: $64
	dec  d                                           ; $4625: $15
	ld   h, h                                        ; $4626: $64
	ld   d, $64                                      ; $4627: $16 $64
	rla                                              ; $4629: $17
	ld   h, h                                        ; $462a: $64
	jr   jr_00a_4691                                 ; $462b: $18 $64

	add  hl, de                                      ; $462d: $19
	ld   b, $1a                                      ; $462e: $06 $1a
	dec  b                                           ; $4630: $05
	dec  de                                          ; $4631: $1b
	inc  b                                           ; $4632: $04
	inc  e                                           ; $4633: $1c
	inc  bc                                          ; $4634: $03
	dec  e                                           ; $4635: $1d
	ld   [bc], a                                     ; $4636: $02
	ld   e, $01                                      ; $4637: $1e $01
	rra                                              ; $4639: $1f
	nop                                              ; $463a: $00
	jr   nz, @+$01                                   ; $463b: $20 $ff

	ld   hl, $223f                                   ; $463d: $21 $3f $22
	ccf                                              ; $4640: $3f
	inc  hl                                          ; $4641: $23
	ccf                                              ; $4642: $3f
	inc  h                                           ; $4643: $24
	ccf                                              ; $4644: $3f
	dec  h                                           ; $4645: $25
	ccf                                              ; $4646: $3f
	db   $fc                                         ; $4647: $fc
	nop                                              ; $4648: $00
	db   $fd                                         ; $4649: $fd
	nop                                              ; $464a: $00
	rst  $38                                         ; $464b: $ff

Call_00a_464c:
	push af                                          ; $464c: $f5
	xor  a                                           ; $464d: $af
	call Call_00a_43a6                               ; $464e: $cd $a6 $43
	ld   bc, $0207                                   ; $4651: $01 $07 $02
	add  hl, bc                                      ; $4654: $09
	pop  af                                          ; $4655: $f1
	cp   [hl]                                        ; $4656: $be
	jr   z, jr_00a_4677                              ; $4657: $28 $1e

	push af                                          ; $4659: $f5
	ld   a, $01                                      ; $465a: $3e $01
	call Call_00a_43a6                               ; $465c: $cd $a6 $43
	ld   bc, $0207                                   ; $465f: $01 $07 $02
	add  hl, bc                                      ; $4662: $09
	pop  af                                          ; $4663: $f1
	cp   [hl]                                        ; $4664: $be
	jr   z, jr_00a_4677                              ; $4665: $28 $10

	push af                                          ; $4667: $f5
	ld   a, $02                                      ; $4668: $3e $02
	call Call_00a_43a6                               ; $466a: $cd $a6 $43
	ld   bc, $0207                                   ; $466d: $01 $07 $02
	add  hl, bc                                      ; $4670: $09
	pop  af                                          ; $4671: $f1
	cp   [hl]                                        ; $4672: $be
	jr   z, jr_00a_4677                              ; $4673: $28 $02

	xor  a                                           ; $4675: $af
	ret                                              ; $4676: $c9


jr_00a_4677:
	ld   a, $ff                                      ; $4677: $3e $ff
	ret                                              ; $4679: $c9


	ld   d, h                                        ; $467a: $54
	ld   e, l                                        ; $467b: $5d
	ld   a, d                                        ; $467c: $7a
	call Call_00a_43a6                               ; $467d: $cd $a6 $43
	ld   a, e                                        ; $4680: $7b
	ld   d, h                                        ; $4681: $54
	ld   e, l                                        ; $4682: $5d
	call Call_00a_43a6                               ; $4683: $cd $a6 $43
	ld   bc, $0227                                   ; $4686: $01 $27 $02
	call MemCopy                                       ; $4689: $cd $a9 $09
	ret                                              ; $468c: $c9


	call Call_00a_4428                               ; $468d: $cd $28 $44
	ret                                              ; $4690: $c9


jr_00a_4691:
	push af                                          ; $4691: $f5
	call Call_00a_43a6                               ; $4692: $cd $a6 $43
	ld   d, h                                        ; $4695: $54
	ld   e, l                                        ; $4696: $5d
	ld   hl, sPlayerName                                   ; $4697: $21 $aa $af
	ld   bc, $0227                                   ; $469a: $01 $27 $02
	call MemCopy                                       ; $469d: $cd $a9 $09
	pop  af                                          ; $46a0: $f1
	push af                                          ; $46a1: $f5
	call Call_00a_47f3                               ; $46a2: $cd $f3 $47
	pop  af                                          ; $46a5: $f1
	call Call_00a_4400                               ; $46a6: $cd $00 $44
	ret                                              ; $46a9: $c9


	call Call_00a_43a6                               ; $46aa: $cd $a6 $43
	ld   de, sPlayerName                                   ; $46ad: $11 $aa $af
	ld   bc, $044e                                   ; $46b0: $01 $4e $04
	call MemCopy                                       ; $46b3: $cd $a9 $09
	ret                                              ; $46b6: $c9


	ld   d, h                                        ; $46b7: $54
	ld   e, l                                        ; $46b8: $5d
	call Call_00a_43a6                               ; $46b9: $cd $a6 $43
	push hl                                          ; $46bc: $e5
	ld   bc, $0006                                   ; $46bd: $01 $06 $00
	add  hl, bc                                      ; $46c0: $09
	ld   a, [hl]                                     ; $46c1: $7e
	or   a                                           ; $46c2: $b7
	jr   nz, jr_00a_46c9                             ; $46c3: $20 $04

	pop  hl                                          ; $46c5: $e1
	xor  a                                           ; $46c6: $af
	ld   [de], a                                     ; $46c7: $12
	ret                                              ; $46c8: $c9


jr_00a_46c9:
	ld   h, [hl]                                     ; $46c9: $66
	inc  h                                           ; $46ca: $24
	ld   l, $0a                                      ; $46cb: $2e $0a
	call HLequHdivModL                                       ; $46cd: $cd $fb $0b
	ld   a, $11                                      ; $46d0: $3e $11
	add  h                                           ; $46d2: $84
	ld   [de], a                                     ; $46d3: $12
	inc  de                                          ; $46d4: $13
	ld   a, $11                                      ; $46d5: $3e $11
	add  l                                           ; $46d7: $85
	ld   [de], a                                     ; $46d8: $12
	inc  de                                          ; $46d9: $13
	pop  hl                                          ; $46da: $e1
	ld   bc, $0000                                   ; $46db: $01 $00 $00
	add  hl, bc                                      ; $46de: $09
	ld   bc, $0006                                   ; $46df: $01 $06 $00
	call MemCopy                                       ; $46e2: $cd $a9 $09
	ret                                              ; $46e5: $c9


	ld   c, a                                        ; $46e6: $4f
	ld   b, $02                                      ; $46e7: $06 $02

jr_00a_46e9:
	push bc                                          ; $46e9: $c5
	ld   a, b                                        ; $46ea: $78
	call Call_00a_43a6                               ; $46eb: $cd $a6 $43
	ld   bc, $0207                                   ; $46ee: $01 $07 $02
	add  hl, bc                                      ; $46f1: $09
	ld   a, [hl-]                                    ; $46f2: $3a
	pop  bc                                          ; $46f3: $c1
	cp   c                                           ; $46f4: $b9
	jr   nz, jr_00a_46fa                             ; $46f5: $20 $03

	ld   a, $ff                                      ; $46f7: $3e $ff
	ld   [hl], a                                     ; $46f9: $77

jr_00a_46fa:
	dec  b                                           ; $46fa: $05
	bit  7, b                                        ; $46fb: $cb $78
	jr   z, jr_00a_46e9                              ; $46fd: $28 $ea

	xor  a                                           ; $46ff: $af
	call Call_00a_47f3                               ; $4700: $cd $f3 $47
	ld   a, $01                                      ; $4703: $3e $01
	call Call_00a_47f3                               ; $4705: $cd $f3 $47
	ld   a, $02                                      ; $4708: $3e $02
	call Call_00a_47f3                               ; $470a: $cd $f3 $47
	xor  a                                           ; $470d: $af
	call Call_00a_4400                               ; $470e: $cd $00 $44
	ld   a, $01                                      ; $4711: $3e $01
	call Call_00a_4400                               ; $4713: $cd $00 $44
	ld   a, $02                                      ; $4716: $3e $02
	call Call_00a_4400                               ; $4718: $cd $00 $44
	ret                                              ; $471b: $c9


	ld   c, a                                        ; $471c: $4f
	ld   b, $02                                      ; $471d: $06 $02

jr_00a_471f:
	push bc                                          ; $471f: $c5
	ld   a, b                                        ; $4720: $78
	call Call_00a_43a6                               ; $4721: $cd $a6 $43
	ld   bc, $0207                                   ; $4724: $01 $07 $02
	add  hl, bc                                      ; $4727: $09
	ld   a, [hl+]                                    ; $4728: $2a
	pop  bc                                          ; $4729: $c1
	cp   c                                           ; $472a: $b9
	jr   nz, jr_00a_4730                             ; $472b: $20 $03

	ld   a, $ff                                      ; $472d: $3e $ff
	ld   [hl], a                                     ; $472f: $77

jr_00a_4730:
	dec  b                                           ; $4730: $05
	bit  7, b                                        ; $4731: $cb $78
	jr   z, jr_00a_471f                              ; $4733: $28 $ea

	xor  a                                           ; $4735: $af
	call Call_00a_47f3                               ; $4736: $cd $f3 $47
	ld   a, $01                                      ; $4739: $3e $01
	call Call_00a_47f3                               ; $473b: $cd $f3 $47
	ld   a, $02                                      ; $473e: $3e $02
	call Call_00a_47f3                               ; $4740: $cd $f3 $47
	xor  a                                           ; $4743: $af
	call Call_00a_4400                               ; $4744: $cd $00 $44
	ld   a, $01                                      ; $4747: $3e $01
	call Call_00a_4400                               ; $4749: $cd $00 $44
	ld   a, $02                                      ; $474c: $3e $02
	call Call_00a_4400                               ; $474e: $cd $00 $44
	ret                                              ; $4751: $c9


Func_0a_4752::
	xor  a                                           ; $4752: $af
	call Call_00a_43a6                               ; $4753: $cd $a6 $43
	ld   bc, $0006                                   ; $4756: $01 $06 $00
	add  hl, bc                                      ; $4759: $09
	ld   a, [hl]                                     ; $475a: $7e
	or   a                                           ; $475b: $b7
	jr   nz, jr_00a_477b                             ; $475c: $20 $1d

	ld   a, $01                                      ; $475e: $3e $01
	call Call_00a_43a6                               ; $4760: $cd $a6 $43
	ld   bc, $0006                                   ; $4763: $01 $06 $00
	add  hl, bc                                      ; $4766: $09
	ld   a, [hl]                                     ; $4767: $7e
	or   a                                           ; $4768: $b7
	jr   nz, jr_00a_477b                             ; $4769: $20 $10

	ld   a, $02                                      ; $476b: $3e $02
	call Call_00a_43a6                               ; $476d: $cd $a6 $43
	ld   bc, $0006                                   ; $4770: $01 $06 $00
	add  hl, bc                                      ; $4773: $09
	ld   a, [hl]                                     ; $4774: $7e
	or   a                                           ; $4775: $b7
	jr   nz, jr_00a_477b                             ; $4776: $20 $03

	ld   a, $ff                                      ; $4778: $3e $ff
	ret                                              ; $477a: $c9


jr_00a_477b:
	xor  a                                           ; $477b: $af
	ret                                              ; $477c: $c9


Call_00a_477d:
	call Call_00a_43a6                               ; $477d: $cd $a6 $43
	push hl                                          ; $4780: $e5
	ld   de, $0000                                   ; $4781: $11 $00 $00
	ld   bc, $0206                                   ; $4784: $01 $06 $02

jr_00a_4787:
	ld   a, [hl+]                                    ; $4787: $2a
	add  e                                           ; $4788: $83
	ld   e, a                                        ; $4789: $5f
	ld   a, d                                        ; $478a: $7a
	adc  $00                                         ; $478b: $ce $00
	ld   d, a                                        ; $478d: $57
	dec  bc                                          ; $478e: $0b
	ld   a, b                                        ; $478f: $78
	or   c                                           ; $4790: $b1
	jr   nz, jr_00a_4787                             ; $4791: $20 $f4

	pop  hl                                          ; $4793: $e1
	ld   a, e                                        ; $4794: $7b
	ld   [$b61f], a                                  ; $4795: $ea $1f $b6
	ld   a, d                                        ; $4798: $7a
	ld   [$b620], a                                  ; $4799: $ea $20 $b6
	ld   de, $0000                                   ; $479c: $11 $00 $00
	ld   bc, $0206                                   ; $479f: $01 $06 $02

jr_00a_47a2:
	ld   a, [hl+]                                    ; $47a2: $2a
	call Call_00a_480b                               ; $47a3: $cd $0b $48
	add  e                                           ; $47a6: $83
	ld   e, a                                        ; $47a7: $5f
	ld   a, d                                        ; $47a8: $7a
	adc  $00                                         ; $47a9: $ce $00
	ld   d, a                                        ; $47ab: $57
	dec  bc                                          ; $47ac: $0b
	ld   a, b                                        ; $47ad: $78
	or   c                                           ; $47ae: $b1
	jr   nz, jr_00a_47a2                             ; $47af: $20 $f1

	ld   a, e                                        ; $47b1: $7b
	ld   [$b621], a                                  ; $47b2: $ea $21 $b6
	ld   a, d                                        ; $47b5: $7a
	ld   [$b622], a                                  ; $47b6: $ea $22 $b6
	push hl                                          ; $47b9: $e5
	ld   de, $0000                                   ; $47ba: $11 $00 $00
	ld   bc, $0009                                   ; $47bd: $01 $09 $00

jr_00a_47c0:
	ld   a, [hl+]                                    ; $47c0: $2a
	add  e                                           ; $47c1: $83
	ld   e, a                                        ; $47c2: $5f
	ld   a, d                                        ; $47c3: $7a
	adc  $00                                         ; $47c4: $ce $00
	ld   d, a                                        ; $47c6: $57
	dec  bc                                          ; $47c7: $0b
	ld   a, b                                        ; $47c8: $78
	or   c                                           ; $47c9: $b1
	jr   nz, jr_00a_47c0                             ; $47ca: $20 $f4

	pop  hl                                          ; $47cc: $e1
	ld   a, e                                        ; $47cd: $7b
	ld   [$b623], a                                  ; $47ce: $ea $23 $b6
	ld   a, d                                        ; $47d1: $7a
	ld   [$b624], a                                  ; $47d2: $ea $24 $b6
	ld   de, $0000                                   ; $47d5: $11 $00 $00
	ld   bc, $0009                                   ; $47d8: $01 $09 $00

jr_00a_47db:
	ld   a, [hl+]                                    ; $47db: $2a
	call Call_00a_480b                               ; $47dc: $cd $0b $48
	add  e                                           ; $47df: $83
	ld   e, a                                        ; $47e0: $5f
	ld   a, d                                        ; $47e1: $7a
	adc  $00                                         ; $47e2: $ce $00
	ld   d, a                                        ; $47e4: $57
	dec  bc                                          ; $47e5: $0b
	ld   a, b                                        ; $47e6: $78
	or   c                                           ; $47e7: $b1
	jr   nz, jr_00a_47db                             ; $47e8: $20 $f1

	ld   a, e                                        ; $47ea: $7b
	ld   [$b625], a                                  ; $47eb: $ea $25 $b6
	ld   a, d                                        ; $47ee: $7a
	ld   [$b626], a                                  ; $47ef: $ea $26 $b6
	ret                                              ; $47f2: $c9


Call_00a_47f3:
	push af                                          ; $47f3: $f5
	call Call_00a_477d                               ; $47f4: $cd $7d $47
	pop  af                                          ; $47f7: $f1
	call Call_00a_43a6                               ; $47f8: $cd $a6 $43
	ld   bc, $020f                                   ; $47fb: $01 $0f $02
	add  hl, bc                                      ; $47fe: $09
	ld   d, h                                        ; $47ff: $54
	ld   e, l                                        ; $4800: $5d
	ld   hl, $b61f                                   ; $4801: $21 $1f $b6
	ld   bc, $0008                                   ; $4804: $01 $08 $00
	call MemCopy                                       ; $4807: $cd $a9 $09
	ret                                              ; $480a: $c9


Call_00a_480b:
	push bc                                          ; $480b: $c5
	ld   bc, $0008                                   ; $480c: $01 $08 $00

jr_00a_480f:
	sla  a                                           ; $480f: $cb $27
	jr   nc, jr_00a_4814                             ; $4811: $30 $01

	inc  b                                           ; $4813: $04

jr_00a_4814:
	dec  c                                           ; $4814: $0d
	jr   nz, jr_00a_480f                             ; $4815: $20 $f8

	ld   a, b                                        ; $4817: $78
	pop  bc                                          ; $4818: $c1
	ret                                              ; $4819: $c9


todo_ClearsAndLoadsGfxForConvoScreens::
;
	ld   hl, wLCDC                                   ; $481a: $21 $03 $c2
	bit  7, [hl]                                     ; $481d: $cb $7e
	jr   nz, :+                             ; $481f: $20 $01
	xor  a                                           ; $4821: $af
:	sla  a                                           ; $4822: $cb $27
	ld   h, $00                                      ; $4824: $26 $00
	ld   l, a                                        ; $4826: $6f
	
;
	ld   a, [wWramBank]                                  ; $4827: $fa $93 $c2
	push af                                          ; $482a: $f5
	ld   a, $02                                      ; $482b: $3e $02
	ld   [wWramBank], a                                  ; $482d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4830: $e0 $70

;
	ld   bc, .return                                   ; $4832: $01 $3e $48
	push bc                                          ; $4835: $c5

;
	ld   bc, .table                                   ; $4836: $01 $47 $48
	add  hl, bc                                      ; $4839: $09
	ld   a, [hl+]                                    ; $483a: $2a
	ld   h, [hl]                                     ; $483b: $66
	ld   l, a                                        ; $483c: $6f
	jp   hl                                          ; $483d: $e9

.return:
	ld   b, a                                        ; $483e: $47
	pop  af                                          ; $483f: $f1
	ld   [wWramBank], a                                  ; $4840: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4843: $e0 $70
	ld   a, b                                        ; $4845: $78
	ret                                              ; $4846: $c9

.table:
	dw .thing0
	dw .thing1
	dw .thing2
	dw .thing3

.thing0:
	ld   hl, $d340                                   ; $484f: $21 $40 $d3
	ld   bc, $02a0                                   ; $4852: $01 $a0 $02
	ld   de, $0000                                   ; $4855: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $4858: $cd $9f $09
	
;
	ld   c, $81                                      ; $485b: $0e $81
	ld   de, $8800                                   ; $485d: $11 $00 $88
	ld   a, $02                                      ; $4860: $3e $02
	ld   hl, $d340                                   ; $4862: $21 $40 $d3
	ld   b, $54                                      ; $4865: $06 $54
	call EnqueueHDMATransfer                                       ; $4867: $cd $7c $02
	
;
	ld   a, [wLCDC]                                  ; $486a: $fa $03 $c2
	bit  7, a                                        ; $486d: $cb $7f
	ret  nz                                          ; $486f: $c0

.thing1:
;
	ld   hl, $d000                                   ; $4870: $21 $00 $d0
	ld   bc, $00a0                                   ; $4873: $01 $a0 $00
	ld   de, $0000                                   ; $4876: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $4879: $cd $9f $09

;
	ld   c, $81                                      ; $487c: $0e $81
	ld   de, $9800                                   ; $487e: $11 $00 $98
	ld   a, $02                                      ; $4881: $3e $02
	ld   hl, $d000                                   ; $4883: $21 $00 $d0
	ld   b, $14                                      ; $4886: $06 $14
	call EnqueueHDMATransfer                                       ; $4888: $cd $7c $02
	
	ld   hl, $da80                                   ; $488b: $21 $80 $da
	ld   bc, $0080                                   ; $488e: $01 $80 $00
	ld   de, $0808                                   ; $4891: $11 $08 $08
	call CopyEthenDintoHL_BCtimes                                       ; $4894: $cd $9f $09
	
	ld   c, $81                                      ; $4897: $0e $81
	ld   de, $9940                                   ; $4899: $11 $40 $99
	ld   a, $02                                      ; $489c: $3e $02
	ld   hl, $da80                                   ; $489e: $21 $80 $da
	ld   b, $10                                      ; $48a1: $06 $10
	call EnqueueHDMATransfer                                       ; $48a3: $cd $7c $02
	ld   c, $01                                      ; $48a6: $0e $01
	ld   de, $8f00                                   ; $48a8: $11 $00 $8f
	ld   a, $0d                                      ; $48ab: $3e $0d
	ld   hl, $4000                                   ; $48ad: $21 $00 $40
	ld   b, $10                                      ; $48b0: $06 $10
	call EnqueueHDMATransfer                                       ; $48b2: $cd $7c $02
	ld   a, [wLCDC]                                  ; $48b5: $fa $03 $c2
	bit  7, a                                        ; $48b8: $cb $7f
	ret  nz                                          ; $48ba: $c0

.thing2:
	ld   hl, $d140                                   ; $48bb: $21 $40 $d1
	ld   bc, $00a0                                   ; $48be: $01 $a0 $00
	ld   de, $0000                                   ; $48c1: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $48c4: $cd $9f $09
	
	ld   c, $80                                      ; $48c7: $0e $80
	ld   de, $9800                                   ; $48c9: $11 $00 $98
	ld   a, $02                                      ; $48cc: $3e $02
	ld   hl, $d140                                   ; $48ce: $21 $40 $d1
	ld   b, $14                                      ; $48d1: $06 $14
	call EnqueueHDMATransfer                                       ; $48d3: $cd $7c $02
	
	ld   hl, $da80                                   ; $48d6: $21 $80 $da
	ld   bc, $0080                                   ; $48d9: $01 $80 $00
	ld   de, $ffff                                   ; $48dc: $11 $ff $ff
	call CopyEthenDintoHL_BCtimes                                       ; $48df: $cd $9f $09
	ld   c, $80                                      ; $48e2: $0e $80
	ld   de, $9940                                   ; $48e4: $11 $40 $99
	ld   a, $02                                      ; $48e7: $3e $02
	ld   hl, $da80                                   ; $48e9: $21 $80 $da
	ld   b, $10                                      ; $48ec: $06 $10
	call EnqueueHDMATransfer                                       ; $48ee: $cd $7c $02
	ld   c, $00                                      ; $48f1: $0e $00
	ld   de, $9000                                   ; $48f3: $11 $00 $90
	ld   a, $01                                      ; $48f6: $3e $01
	ld   hl, $7080                                   ; $48f8: $21 $80 $70
	ld   b, $01                                      ; $48fb: $06 $01
	call EnqueueHDMATransfer                                       ; $48fd: $cd $7c $02
	ld   a, [wLCDC]                                  ; $4900: $fa $03 $c2
	bit  7, a                                        ; $4903: $cb $7f
	ret  nz                                          ; $4905: $c0

.thing3:
	ld   a, $0a                                      ; $4906: $3e $0a
	ld   hl, $4928                                   ; $4908: $21 $28 $49
	ld   de, wBGPalettes                                   ; $490b: $11 $de $c2
	ld   bc, $0008                                   ; $490e: $01 $08 $00
	call FarMemCopy                                       ; $4911: $cd $b2 $09
	ld   bc, $0003                                   ; $4914: $01 $03 $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4917: $cd $aa $04
	ld   a, $ff                                      ; $491a: $3e $ff
	ld   hl, $cbcf                                   ; $491c: $21 $cf $cb
	ld   [hl+], a                                    ; $491f: $22
	ld   [hl+], a                                    ; $4920: $22
	ld   [hl+], a                                    ; $4921: $22
	ld   [hl+], a                                    ; $4922: $22
	xor  a                                           ; $4923: $af
	ld   [$cbd7], a                                  ; $4924: $ea $d7 $cb
	ret                                              ; $4927: $c9


;
	rst  $38                                         ; $4928: $ff
	ld   a, a                                        ; $4929: $7f
	db   $fc                                         ; $492a: $fc
	ld   [bc], a                                     ; $492b: $02
	or   h                                           ; $492c: $b4
	inc  c                                           ; $492d: $0c
	nop                                              ; $492e: $00
	nop                                              ; $492f: $00
	ld   [$cbd7], a                                  ; $4930: $ea $d7 $cb
	ret                                              ; $4933: $c9


Func_0a_4934::
	ld   a, [wWramBank]                                  ; $4934: $fa $93 $c2
	push af                                          ; $4937: $f5
	ld   a, $02                                      ; $4938: $3e $02
	ld   [wWramBank], a                                  ; $493a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $493d: $e0 $70
	ld   de, $d280                                   ; $493f: $11 $80 $d2
	ld   a, $0d                                      ; $4942: $3e $0d
	ld   hl, $4220                                   ; $4944: $21 $20 $42
	ld   bc, $00c0                                   ; $4947: $01 $c0 $00
	call FarMemCopy                                       ; $494a: $cd $b2 $09
	pop  af                                          ; $494d: $f1
	ld   [wWramBank], a                                  ; $494e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4951: $e0 $70
	ld   a, [$cbd7]                                  ; $4953: $fa $d7 $cb
	or   a                                           ; $4956: $b7
	jr   z, jr_00a_4978                              ; $4957: $28 $1f

	ld   c, $01                                      ; $4959: $0e $01
	ld   de, $9c00                                   ; $495b: $11 $00 $9c
	ld   a, $0d                                      ; $495e: $3e $0d
	ld   hl, $4200                                   ; $4960: $21 $00 $42
	ld   b, $10                                      ; $4963: $06 $10
	call EnqueueHDMATransfer                                       ; $4965: $cd $7c $02
	ld   c, $00                                      ; $4968: $0e $00
	ld   de, $9c00                                   ; $496a: $11 $00 $9c
	ld   a, $0d                                      ; $496d: $3e $0d
	ld   hl, $4100                                   ; $496f: $21 $00 $41
	ld   b, $10                                      ; $4972: $06 $10
	call EnqueueHDMATransfer                                       ; $4974: $cd $7c $02
	ret                                              ; $4977: $c9

jr_00a_4978:
	ld   c, $01                                      ; $4978: $0e $01
	ld   de, $9940                                   ; $497a: $11 $40 $99
	ld   a, $0d                                      ; $497d: $3e $0d
	ld   hl, $4200                                   ; $497f: $21 $00 $42
	ld   b, $10                                      ; $4982: $06 $10
	call EnqueueHDMATransfer                                       ; $4984: $cd $7c $02
	
	ld   c, $00                                      ; $4987: $0e $00
	ld   de, $9940                                   ; $4989: $11 $40 $99
	ld   a, $0d                                      ; $498c: $3e $0d
	ld   hl, $4100                                   ; $498e: $21 $00 $41
	ld   b, $10                                      ; $4991: $06 $10
	call EnqueueHDMATransfer                                       ; $4993: $cd $7c $02
	ret                                              ; $4996: $c9


; A - data loading step
; HL - scenery idx
LoadSceneryTileDataLayoutAndPalettes::
	ld   b, a                                        ; $4997: $47
	ld   a, h                                        ; $4998: $7c
	or   l                                           ; $4999: $b5
	jp   z, Jump_00a_4a94                            ; $499a: $ca $94 $4a

	ld   a, b                                        ; $499d: $78
	cp   $01                                         ; $499e: $fe $01
	jp   z, Jump_00a_49ed                            ; $49a0: $ca $ed $49

	cp   $02                                         ; $49a3: $fe $02
	jp   z, Jump_00a_4a04                            ; $49a5: $ca $04 $4a

	cp   $03                                         ; $49a8: $fe $03
	jp   z, Jump_00a_4a3e                            ; $49aa: $ca $3e $4a

	cp   $04                                         ; $49ad: $fe $04
	jp   z, Jump_00a_4a55                            ; $49af: $ca $55 $4a

	push hl                                          ; $49b2: $e5
	call Call_00a_5438                               ; $49b3: $cd $38 $54
	pop  hl                                          ; $49b6: $e1
	push hl                                          ; $49b7: $e5

;
	ld   a, [wWramBank]                                  ; $49b8: $fa $93 $c2
	push af                                          ; $49bb: $f5
	ld   a, $07                                      ; $49bc: $3e $07
	ld   [wWramBank], a                                  ; $49be: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $49c1: $e0 $70

; Get bank 0 tile data source, and decompress into ram
	call GetPointerToSceneryDataSources                               ; $49c3: $cd $f1 $4a
	ld   a, [hl+]                                    ; $49c6: $2a
	ld   e, a                                        ; $49c7: $5f
	ld   a, [hl+]                                    ; $49c8: $2a
	ld   d, a                                        ; $49c9: $57
	ld   a, [hl]                                     ; $49ca: $7e
	ld   hl, $d000                                   ; $49cb: $21 $00 $d0
	call RLEXorCopy                                       ; $49ce: $cd $d2 $09
	
;
	ld   c, $80                                      ; $49d1: $0e $80
	ld   de, $9000                                   ; $49d3: $11 $00 $90
	ld   a, $07                                      ; $49d6: $3e $07
	ld   hl, $d000                                   ; $49d8: $21 $00 $d0
	ld   b, $50                                      ; $49db: $06 $50
	call EnqueueHDMATransfer                                       ; $49dd: $cd $7c $02

;
	pop  af                                          ; $49e0: $f1
	ld   [wWramBank], a                                  ; $49e1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $49e4: $e0 $70

;
	pop  hl                                          ; $49e6: $e1
	ld   a, [wLCDC]                                  ; $49e7: $fa $03 $c2
	bit  7, a                                        ; $49ea: $cb $7f
	ret  nz                                          ; $49ec: $c0

Jump_00a_49ed:
;
	push hl                                          ; $49ed: $e5
	ld   c, $80                                      ; $49ee: $0e $80
	ld   de, $9500                                   ; $49f0: $11 $00 $95
	ld   a, $07                                      ; $49f3: $3e $07
	ld   hl, $d500                                   ; $49f5: $21 $00 $d5
	ld   b, $30                                      ; $49f8: $06 $30
	call EnqueueHDMATransfer                                       ; $49fa: $cd $7c $02
	pop  hl                                          ; $49fd: $e1
	ld   a, [wLCDC]                                  ; $49fe: $fa $03 $c2
	bit  7, a                                        ; $4a01: $cb $7f
	ret  nz                                          ; $4a03: $c0

Jump_00a_4a04:
	push hl                                          ; $4a04: $e5
	ld   a, [wWramBank]                                  ; $4a05: $fa $93 $c2
	push af                                          ; $4a08: $f5
	ld   a, $07                                      ; $4a09: $3e $07
	ld   [wWramBank], a                                  ; $4a0b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4a0e: $e0 $70

; HL = bank 1 tile data source
	call GetPointerToSceneryDataSources                               ; $4a10: $cd $f1 $4a
	ld   bc, $0003                                   ; $4a13: $01 $03 $00
	add  hl, bc                                      ; $4a16: $09

;
	ld   a, [hl+]                                    ; $4a17: $2a
	ld   e, a                                        ; $4a18: $5f
	ld   a, [hl+]                                    ; $4a19: $2a
	ld   d, a                                        ; $4a1a: $57
	ld   a, [hl]                                     ; $4a1b: $7e
	ld   hl, $d000                                   ; $4a1c: $21 $00 $d0
	call RLEXorCopy                                       ; $4a1f: $cd $d2 $09
	ld   c, $81                                      ; $4a22: $0e $81
	ld   de, $9000                                   ; $4a24: $11 $00 $90
	ld   a, $07                                      ; $4a27: $3e $07
	ld   hl, $d000                                   ; $4a29: $21 $00 $d0
	ld   b, $50                                      ; $4a2c: $06 $50
	call EnqueueHDMATransfer                                       ; $4a2e: $cd $7c $02
	pop  af                                          ; $4a31: $f1
	ld   [wWramBank], a                                  ; $4a32: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4a35: $e0 $70
	pop  hl                                          ; $4a37: $e1
	ld   a, [wLCDC]                                  ; $4a38: $fa $03 $c2
	bit  7, a                                        ; $4a3b: $cb $7f
	ret  nz                                          ; $4a3d: $c0

Jump_00a_4a3e:
	push hl                                          ; $4a3e: $e5
	ld   c, $81                                      ; $4a3f: $0e $81
	ld   de, $9500                                   ; $4a41: $11 $00 $95
	ld   a, $07                                      ; $4a44: $3e $07
	ld   hl, $d500                                   ; $4a46: $21 $00 $d5
	ld   b, $30                                      ; $4a49: $06 $30
	call EnqueueHDMATransfer                                       ; $4a4b: $cd $7c $02
	pop  hl                                          ; $4a4e: $e1
	ld   a, [wLCDC]                                  ; $4a4f: $fa $03 $c2
	bit  7, a                                        ; $4a52: $cb $7f
	ret  nz                                          ; $4a54: $c0

Jump_00a_4a55:
	push hl                                                         ; $4a55

; HL = 3 palettes used for scenery
	call GetPointerToSceneryDataSources                             ; $4a56
	ld   bc, $0009                                                  ; $4a59
	add  hl, bc                                                     ; $4a5c

; HL = src addr, A = src bank
	ld   a, [hl+]                                                   ; $4a5d
	ld   c, a                                                       ; $4a5e
	ld   a, [hl+]                                                   ; $4a5f
	ld   b, a                                                       ; $4a60
	ld   a, [hl]                                                    ; $4a61
	ld   h, b                                                       ; $4a62
	ld   l, c                                                       ; $4a63

; Copy the 3 palettes used for the background
	ld   de, wBGPalettes+3*8                                      ; $4a64
	ld   bc, 3*8                                                    ; $4a67
	call FarMemCopy                                                 ; $4a6a

; Have those palettes, 3-5 updated in vblank
	ldbc 3*4, 6*4 - 1                                               ; $4a6d
	call SetBGandOBJPaletteRangesToUpdate                           ; $4a70

;
	ld   c, $80                                      ; $4a73: $0e $80
	ld   de, $9800                                   ; $4a75: $11 $00 $98
	ld   a, $02                                      ; $4a78: $3e $02
	ld   hl, $d140                                   ; $4a7a: $21 $40 $d1
	ld   b, $14                                      ; $4a7d: $06 $14
	call EnqueueHDMATransfer                                       ; $4a7f: $cd $7c $02

	ld   c, $81                                      ; $4a82: $0e $81
	ld   de, $9800                                   ; $4a84: $11 $00 $98
	ld   a, $02                                      ; $4a87: $3e $02
	ld   hl, $d000                                   ; $4a89: $21 $00 $d0
	ld   b, $14                                      ; $4a8c: $06 $14
	call EnqueueHDMATransfer                                       ; $4a8e: $cd $7c $02
	
; Return A == 0 to say we're done
	pop  hl                                          ; $4a91: $e1
	xor  a                                           ; $4a92: $af
	ret                                              ; $4a93: $c9

Jump_00a_4a94:
	ld   a, [wWramBank]                                  ; $4a94: $fa $93 $c2
	push af                                          ; $4a97: $f5
	ld   a, $02                                      ; $4a98: $3e $02
	ld   [wWramBank], a                                  ; $4a9a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4a9d: $e0 $70
	ld   hl, $d000                                   ; $4a9f: $21 $00 $d0
	ld   bc, $00a0                                   ; $4aa2: $01 $a0 $00
	ld   de, $0303                                   ; $4aa5: $11 $03 $03
	call CopyEthenDintoHL_BCtimes                                       ; $4aa8: $cd $9f $09
	ld   hl, $d140                                   ; $4aab: $21 $40 $d1
	ld   bc, $00a0                                   ; $4aae: $01 $a0 $00
	ld   de, $0000                                   ; $4ab1: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $4ab4: $cd $9f $09
	pop  af                                          ; $4ab7: $f1
	ld   [wWramBank], a                                  ; $4ab8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4abb: $e0 $70
	ld   c, $80                                      ; $4abd: $0e $80
	ld   de, $9800                                   ; $4abf: $11 $00 $98
	ld   a, $02                                      ; $4ac2: $3e $02
	ld   hl, $d140                                   ; $4ac4: $21 $40 $d1
	ld   b, $14                                      ; $4ac7: $06 $14
	call EnqueueHDMATransfer                                       ; $4ac9: $cd $7c $02
	ld   c, $81                                      ; $4acc: $0e $81
	ld   de, $9800                                   ; $4ace: $11 $00 $98
	ld   a, $02                                      ; $4ad1: $3e $02
	ld   hl, $d000                                   ; $4ad3: $21 $00 $d0
	ld   b, $14                                      ; $4ad6: $06 $14
	call EnqueueHDMATransfer                                       ; $4ad8: $cd $7c $02
	ld   a, $01                                      ; $4adb: $3e $01
	ld   hl, $7000                                   ; $4add: $21 $00 $70
	ld   de, wBGPalettes+3*8                                   ; $4ae0: $11 $f6 $c2
	ld   bc, $0018                                   ; $4ae3: $01 $18 $00
	call FarMemCopy                                       ; $4ae6: $cd $b2 $09
	ld   bc, $0c17                                   ; $4ae9: $01 $17 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4aec: $cd $aa $04
	xor  a                                           ; $4aef: $af
	ret                                              ; $4af0: $c9


; HL - scenery idx starting from 1
GetPointerToSceneryDataSources:
	ld   b, h                                                       ; $4af1
	ld   c, l                                                       ; $4af2
	add  hl, hl                                                     ; $4af3
	add  hl, bc                                                     ; $4af4
	add  hl, hl                                                     ; $4af5
	add  hl, hl                                                     ; $4af6
	ld   bc, .table-12                                              ; $4af7
	add  hl, bc                                                     ; $4afa
	ret                                                             ; $4afb

macro ScenerySources
	AddrBank \1 ; bank 0 tile data
	AddrBank \2 ; bank 1 tile data
	AddrBank \3 ; tilemap+attrs
	AddrBank \4 ; 3 BG palettes (3-5) used for the scenery
endm
.table:
	db $fb, $6f, $7a, $f5, $61, $7d, $48, $7e, $7b, $e3, $7f, $82
	db $fb, $6f, $7a, $f5, $61, $7d, $1a, $7e, $7d, $df, $7f, $83
	db $d8, $7f, $7b, $d4, $7f, $80, $44, $7e, $80, $7b, $6d, $85
	db $97, $69, $74, $1b, $47, $73, $fd, $4d, $81, $93, $6d, $85
	db $97, $69, $74, $1b, $47, $73, $8d, $4f, $81, $93, $6d, $85
	db $00, $40, $74, $80, $5b, $7e, $1d, $51, $81, $ab, $6d, $85
	db $64, $5a, $76, $37, $4d, $76, $ad, $52, $81, $c3, $6d, $85
	db $64, $5a, $76, $37, $4d, $76, $3d, $54, $81, $c3, $6d, $85
	db $ea, $61, $75, $63, $5c, $80, $cd, $55, $81, $db, $6d, $85
	db $15, $64, $7a, $80, $7e, $83, $5d, $57, $81, $f3, $6d, $85
	db $15, $64, $7a, $80, $7e, $83, $ed, $58, $81, $f3, $6d, $85
	db $33, $5d, $7b, $c9, $4c, $80, $7d, $5a, $81, $0b, $6e, $85
	db $33, $5d, $7b, $c9, $4c, $80, $0d, $5c, $81, $0b, $6e, $85
	db $4b, $60, $77, $89, $72, $7e, $9d, $5d, $81, $23, $6e, $85
	db $4b, $60, $77, $89, $72, $7e, $2d, $5f, $81, $23, $6e, $85
	db $7e, $67, $76, $43, $76, $7e, $bd, $60, $81, $3b, $6e, $85
	db $7e, $67, $76, $43, $76, $7e, $4d, $62, $81, $3b, $6e, $85
	db $54, $6a, $73, $66, $7d, $79, $dd, $63, $81, $53, $6e, $85
	db $00, $40, $75, $da, $6f, $7c, $6d, $65, $81, $6b, $6e, $85
	db $00, $40, $75, $da, $6f, $7c, $fd, $66, $81, $83, $6e, $85
	db $40, $76, $70, $fe, $70, $80, $8d, $68, $81, $9b, $6e, $85
	db $00, $40, $72, $73, $44, $7d, $1d, $6a, $81, $b3, $6e, $85
	db $00, $40, $72, $73, $44, $7d, $ad, $6b, $81, $b3, $6e, $85
	db $02, $7b, $76, $49, $7e, $74, $3d, $6d, $81, $cb, $6e, $85
	db $02, $7b, $76, $49, $7e, $74, $cd, $6e, $81, $cb, $6e, $85
	db $02, $7b, $76, $49, $7e, $74, $cd, $6e, $81, $e3, $6e, $85
	db $ac, $57, $70, $f8, $51, $7f, $5d, $70, $81, $fb, $6e, $85
	db $ac, $57, $70, $f8, $51, $7f, $ed, $71, $81, $fb, $6e, $85
	db $2c, $4e, $73, $aa, $7f, $7d, $7d, $73, $81, $13, $6f, $85
	db $02, $79, $7b, $00, $40, $80, $0d, $75, $81, $2b, $6f, $85
	db $02, $79, $7b, $00, $40, $80, $9d, $76, $81, $2b, $6f, $85
	db $02, $79, $7b, $00, $40, $80, $0d, $75, $81, $43, $6f, $85
	db $02, $79, $7b, $00, $40, $80, $9d, $76, $81, $43, $6f, $85
	db $a0, $68, $75, $00, $40, $7e, $2d, $78, $81, $5b, $6f, $85
	db $a0, $68, $75, $00, $40, $7e, $bd, $79, $81, $5b, $6f, $85
	db $a0, $68, $75, $00, $40, $7e, $2d, $78, $81, $73, $6f, $85
	db $a0, $68, $75, $00, $40, $7e, $bd, $79, $81, $73, $6f, $85
	db $ef, $5c, $72, $c6, $59, $7d, $4d, $7b, $81, $8b, $6f, $85
	db $ef, $5c, $72, $c6, $59, $7d, $dd, $7c, $81, $8b, $6f, $85
	db $e4, $4d, $74, $f1, $4f, $80, $6d, $7e, $81, $a3, $6f, $85
	db $c1, $4b, $7b, $0e, $65, $79, $00, $40, $82, $bb, $6f, $85
	db $c1, $4b, $7b, $0e, $65, $79, $90, $41, $82, $bb, $6f, $85
	db $c1, $4b, $7b, $0e, $65, $79, $20, $43, $82, $d3, $6f, $85
	db $c1, $4b, $7b, $0e, $65, $79, $b0, $44, $82, $d3, $6f, $85
	db $72, $4c, $79, $26, $7a, $7d, $40, $46, $82, $eb, $6f, $85
	db $72, $4c, $79, $26, $7a, $7d, $d0, $47, $82, $03, $70, $85
	db $00, $40, $79, $3d, $4d, $7d, $60, $49, $82, $1b, $70, $85
	db $00, $40, $79, $3d, $4d, $7d, $f0, $4a, $82, $33, $70, $85
	db $02, $6e, $76, $50, $6b, $85, $80, $4c, $82, $4b, $70, $85
	db $7c, $53, $77, $80, $7e, $84, $10, $4e, $82, $63, $70, $85
	db $ac, $65, $71, $9d, $76, $80, $a0, $4f, $82, $7b, $70, $85
	db $1c, $4f, $71, $a0, $7c, $75, $30, $51, $82, $93, $70, $85
	db $2b, $5e, $71, $39, $6b, $80, $c0, $52, $82, $ab, $70, $85
	db $a4, $6e, $70, $fe, $73, $7f, $50, $54, $82, $fb, $6e, $85
	db $a4, $6e, $70, $fe, $73, $7f, $e0, $55, $82, $fb, $6e, $85
	db $68, $72, $72, $a1, $7f, $78, $70, $57, $82, $13, $6f, $85
	db $39, $46, $79, $00, $40, $81, $00, $59, $82, $c3, $70, $85
	db $cd, $58, $79, $18, $53, $80, $90, $5a, $82, $db, $70, $85
	db $1d, $5e, $7a, $61, $6d, $7f, $20, $5c, $82, $f3, $70, $85
	db $82, $74, $76, $45, $77, $7f, $b0, $5d, $82, $0b, $71, $85
	db $98, $5d, $7c, $36, $43, $80, $40, $5f, $82, $23, $71, $85
	db $f3, $58, $7c, $54, $59, $80, $d0, $60, $82, $3b, $71, $85
	db $00, $40, $78, $40, $79, $80, $60, $62, $82, $53, $71, $85
	db $a9, $72, $78, $da, $7d, $70, $f0, $63, $82, $6b, $71, $85
	db $16, $4c, $7a, $80, $7e, $82, $80, $65, $82, $83, $71, $85
	db $16, $4c, $7a, $80, $7e, $82, $10, $67, $82, $9b, $71, $85
	db $1c, $52, $7a, $df, $44, $81, $a0, $68, $82, $9b, $71, $85
	db $16, $4c, $7a, $80, $7e, $82, $30, $6a, $82, $b3, $71, $85
	db $1c, $52, $7a, $df, $44, $81, $c0, $6b, $82, $b3, $71, $85
	db $16, $4c, $7a, $80, $7e, $82, $50, $6d, $82, $83, $71, $85
	db $1c, $52, $7a, $df, $44, $81, $e0, $6e, $82, $83, $71, $85
	db $16, $4c, $7a, $80, $7e, $82, $70, $70, $82, $83, $71, $85
	db $1c, $52, $7a, $df, $44, $81, $00, $72, $82, $83, $71, $85
	db $16, $4c, $7a, $80, $7e, $82, $90, $73, $82, $cb, $71, $85
	db $1c, $52, $7a, $df, $44, $81, $20, $75, $82, $cb, $71, $85
	db $16, $4c, $7a, $80, $7e, $82, $b0, $76, $82, $83, $71, $85
	db $1c, $52, $7a, $df, $44, $81, $40, $78, $82, $83, $71, $85
	db $39, $55, $73, $17, $6a, $7d, $d0, $79, $82, $e3, $71, $85
	db $00, $40, $73, $a4, $55, $7d, $60, $7b, $82, $fb, $71, $85
	db $00, $40, $76, $60, $6b, $7c, $f0, $7c, $82, $13, $72, $85
	db $66, $77, $74, $20, $6e, $7d, $00, $40, $83, $2b, $72, $85
	db $2b, $54, $7c, $50, $68, $80, $90, $41, $83, $43, $72, $85
	db $42, $45, $7c, $43, $47, $81, $20, $43, $83, $5b, $72, $85
	db $af, $66, $77, $28, $76, $7d, $b0, $44, $83, $73, $72, $85
	db $d4, $54, $74, $67, $5f, $80, $40, $46, $83, $8b, $72, $85
	db $f5, $60, $76, $b1, $70, $7f, $d0, $47, $83, $a3, $72, $85
	db $fd, $75, $75, $e5, $5f, $7f, $60, $49, $83, $bb, $72, $85
	db $2d, $6b, $79, $61, $4f, $7c, $f0, $4a, $83, $d3, $72, $85
	db $56, $77, $79, $fe, $6a, $7e, $80, $4c, $83, $eb, $72, $85
	db $46, $6e, $7b, $38, $62, $7c, $10, $4e, $83, $03, $73, $85
	db $46, $6e, $7b, $38, $62, $7c, $a0, $4f, $83, $1b, $73, $85
	db $96, $51, $7b, $f7, $4b, $81, $30, $51, $83, $33, $73, $85
	db $96, $51, $7b, $f7, $4b, $81, $c0, $52, $83, $4b, $73, $85
	db $b0, $68, $7b, $4f, $74, $7c, $50, $54, $83, $03, $73, $85
	db $b0, $68, $7b, $4f, $74, $7c, $e0, $55, $83, $63, $73, $85
	db $00, $40, $7a, $cb, $7b, $80, $70, $57, $83, $03, $73, $85
	db $00, $40, $7a, $cb, $7b, $80, $00, $59, $83, $63, $73, $85
	db $d0, $66, $7c, $28, $72, $7d, $90, $5a, $83, $7b, $73, $85
	db $45, $5c, $73, $c9, $7b, $71, $20, $5c, $83, $93, $73, $85
	db $7f, $4e, $72, $d3, $4b, $7e, $b0, $5d, $83, $ab, $73, $85
	db $f3, $78, $78, $dd, $4a, $7f, $40, $5f, $83, $c3, $73, $85
	db $66, $59, $78, $84, $79, $72, $d0, $60, $83, $db, $73, $85
	db $66, $59, $78, $84, $79, $72, $60, $62, $83, $db, $73, $85
	db $66, $59, $78, $84, $79, $72, $f0, $63, $83, $db, $73, $85
	db $66, $59, $78, $84, $79, $72, $80, $65, $83, $db, $73, $85
	db $66, $59, $78, $84, $79, $72, $10, $67, $83, $db, $73, $85
	db $66, $59, $78, $84, $79, $72, $a0, $68, $83, $db, $73, $85
	db $b9, $5f, $78, $6d, $4e, $7f, $30, $6a, $83, $db, $73, $85
	db $b9, $5f, $78, $6d, $4e, $7f, $c0, $6b, $83, $db, $73, $85
	db $13, $6d, $77, $6a, $4a, $7c, $50, $6d, $83, $f3, $73, $85
	db $13, $6d, $77, $6a, $4a, $7c, $e0, $6e, $83, $f3, $73, $85
	db $13, $6d, $77, $6a, $4a, $7c, $70, $70, $83, $f3, $73, $85
	db $f2, $46, $74, $6b, $46, $80, $00, $72, $83, $0b, $74, $85
	db $13, $6d, $71, $d3, $79, $77, $90, $73, $83, $23, $74, $85
	db $13, $6d, $71, $d3, $79, $77, $20, $75, $83, $23, $74, $85
	db $e5, $45, $7b, $06, $66, $7d, $b0, $76, $83, $3b, $74, $85
	db $e5, $45, $7b, $06, $66, $7d, $40, $78, $83, $3b, $74, $85
	db $e5, $45, $7b, $06, $66, $7d, $d0, $79, $83, $3b, $74, $85
	db $e5, $45, $7b, $06, $66, $7d, $60, $7b, $83, $3b, $74, $85
	db $ba, $4c, $78, $64, $5f, $7e, $f0, $7c, $83, $53, $74, $85
	db $44, $47, $72, $ad, $53, $7e, $00, $40, $84, $6b, $74, $85
	db $00, $40, $7b, $46, $47, $7f, $90, $41, $84, $83, $74, $85
	db $91, $47, $71, $7e, $51, $7d, $20, $43, $84, $9b, $74, $85
	db $00, $40, $70, $00, $40, $7d, $b0, $44, $84, $b3, $74, $85
	db $06, $67, $70, $70, $42, $81, $40, $46, $84, $cb, $74, $85
	db $c1, $5b, $74, $c9, $6e, $7e, $d0, $47, $84, $e3, $74, $85
	db $e6, $59, $77, $e1, $5d, $7d, $60, $49, $84, $e3, $74, $85
	db $00, $40, $71, $29, $67, $7e, $f0, $4a, $84, $fb, $74, $85
	db $0c, $66, $78, $9d, $49, $80, $80, $4c, $84, $13, $75, $85
	db $b9, $55, $72, $c0, $4f, $7e, $10, $4e, $84, $2b, $75, $85
	db $6d, $54, $75, $1e, $6e, $80, $a0, $4f, $84, $43, $75, $85
	db $a5, $56, $71, $d1, $73, $80, $30, $51, $84, $5b, $75, $85
	db $b7, $73, $7b, $6b, $6c, $85, $c0, $52, $84, $73, $75, $85
	db $ac, $62, $74, $99, $57, $7e, $50, $54, $84, $8b, $75, $85
	db $22, $58, $7a, $a4, $49, $81, $e0, $55, $84, $a3, $75, $85
	db $45, $78, $73, $e4, $48, $7d, $70, $57, $84, $bb, $75, $85
	db $45, $78, $73, $e4, $48, $7d, $00, $59, $84, $d3, $75, $85
	db $a0, $68, $75, $00, $40, $7e, $90, $5a, $84, $5b, $6f, $85
	db $a0, $68, $75, $00, $40, $7e, $20, $5c, $84, $5b, $6f, $85
	db $72, $4c, $79, $26, $7a, $7d, $b0, $5d, $84, $eb, $6f, $85
	db $66, $59, $78, $84, $79, $72, $40, $5f, $84, $db, $73, $85
	db $66, $59, $78, $84, $79, $72, $d0, $60, $84, $db, $73, $85
	db $fc, $79, $7e, $00, $40, $77, $60, $62, $84, $eb, $75, $85
	db $2f, $5b, $75, $a8, $7d, $7e, $f0, $63, $84, $03, $76, $85
	db $ff, $4c, $77, $ae, $66, $7f, $80, $65, $84, $1b, $76, $85
	db $47, $6b, $72, $38, $7d, $7c, $10, $67, $84, $33, $76, $85
	db $d8, $46, $75, $4c, $63, $7f, $a0, $68, $84, $4b, $76, $85
	db $20, $64, $72, $e5, $47, $7e, $30, $6a, $84, $4b, $76, $85
	db $0c, $6a, $7a, $30, $6a, $85, $c0, $6b, $84, $63, $76, $85
	db $ee, $5e, $79, $3d, $56, $80, $50, $6d, $84, $7b, $76, $85
	db $a5, $4d, $75, $77, $5c, $7f, $e0, $6e, $84, $93, $76, $85
	db $75, $74, $71, $7d, $55, $7f, $70, $70, $84, $ab, $76, $85
	db $50, $71, $73, $48, $63, $7e, $00, $72, $84, $c3, $76, $85
	db $9c, $46, $76, $00, $59, $7f, $90, $73, $84, $db, $76, $85
	db $d1, $4f, $70, $c4, $78, $7c, $20, $75, $84, $f3, $76, $85
	db $67, $57, $7b, $5b, $65, $80, $b0, $76, $84, $0b, $77, $85
	db $12, $53, $78, $0f, $46, $7a, $40, $78, $84, $23, $77, $85
	db $12, $53, $78, $0f, $46, $7a, $d0, $79, $84, $23, $77, $85
	db $12, $53, $78, $0f, $46, $7a, $60, $7b, $84, $23, $77, $85
	db $12, $53, $78, $0f, $46, $7a, $f0, $7c, $84, $23, $77, $85
	db $12, $53, $78, $0f, $46, $7a, $00, $40, $85, $23, $77, $85
	db $12, $53, $78, $0f, $46, $7a, $90, $41, $85, $23, $77, $85
	db $12, $53, $78, $0f, $46, $7a, $20, $43, $85, $23, $77, $85
	db $74, $73, $77, $0c, $6a, $7f, $b0, $44, $85, $23, $77, $85
	db $74, $73, $77, $0c, $6a, $7f, $40, $46, $85, $23, $77, $85
	db $74, $73, $77, $0c, $6a, $7f, $d0, $47, $85, $23, $77, $85
	db $74, $73, $77, $0c, $6a, $7f, $60, $49, $85, $23, $77, $85
	db $74, $73, $77, $0c, $6a, $7f, $f0, $4a, $85, $23, $77, $85
	db $00, $40, $76, $60, $6b, $7c, $80, $4c, $85, $13, $72, $85
	db $2b, $54, $7c, $50, $68, $80, $10, $4e, $85, $43, $72, $85
	db $af, $66, $77, $28, $76, $7d, $a0, $4f, $85, $73, $72, $85
	db $2d, $6b, $79, $61, $4f, $7c, $30, $51, $85, $d3, $72, $85
	db $5c, $6c, $78, $00, $40, $7f, $c0, $52, $85, $8b, $75, $85
	db $e8, $75, $7a, $bd, $7d, $7f, $50, $54, $85, $3b, $77, $85
	db $00, $40, $7c, $c1, $7f, $82, $e0, $55, $85, $53, $77, $85
	db $f2, $62, $7b, $39, $7f, $73, $70, $57, $85, $6b, $77, $85
	db $4f, $63, $73, $f3, $43, $7e, $00, $59, $85, $8b, $75, $85
	db $f4, $47, $70, $80, $46, $77, $90, $5a, $85, $f3, $76, $85
	db $ce, $53, $76, $bd, $7f, $83, $20, $5c, $85, $83, $77, $85
	db $5e, $46, $78, $b2, $7f, $84, $b0, $5d, $85, $9b, $77, $85
	db $5e, $46, $78, $b2, $7f, $84, $b0, $5d, $85, $b3, $77, $85
	db $ce, $53, $76, $bd, $7f, $83, $20, $5c, $85, $cb, $77, $85
	db $ce, $53, $76, $bd, $7f, $83, $20, $5c, $85, $e3, $77, $85
	db $5e, $46, $78, $b2, $7f, $84, $b0, $5d, $85, $fb, $77, $85
	db $a6, $52, $79, $d4, $7f, $84, $40, $5f, $85, $13, $78, $85
	db $42, $71, $79, $64, $62, $80, $d0, $60, $85, $2b, $78, $85
	db $f4, $47, $70, $80, $46, $77, $60, $62, $85, $f3, $76, $85
	db $5e, $46, $78, $b2, $7f, $84, $b0, $5d, $85, $83, $77, $85
	db $ce, $53, $76, $bd, $7f, $83, $20, $5c, $85, $9b, $77, $85
	db $ce, $53, $76, $bd, $7f, $83, $20, $5c, $85, $b3, $77, $85
	db $5e, $46, $78, $b2, $7f, $84, $b0, $5d, $85, $cb, $77, $85
	db $5e, $46, $78, $b2, $7f, $84, $b0, $5d, $85, $e3, $77, $85
	db $ce, $53, $76, $bd, $7f, $83, $20, $5c, $85, $fb, $77, $85
	db $55, $6f, $75, $3b, $7f, $78, $f0, $63, $85, $43, $78, $85
	db $a5, $43, $7f, $59, $6d, $85, $80, $65, $85, $5b, $78, $85
	db $5d, $5f, $70, $cf, $7b, $7a, $10, $67, $85, $73, $78, $85
	db $7f, $70, $74, $82, $7a, $7f, $a0, $68, $85, $8b, $78, $85



; HL - scenery idx
Call_00a_5438::
	ld   a, h                                        ; $5438: $7c
	or   l                                           ; $5439: $b5
	jr   nz, .non0scenery                             ; $543a: $20 $2a

	ld   a, [wWramBank]                                  ; $543c: $fa $93 $c2
	push af                                          ; $543f: $f5
	ld   a, $02                                      ; $5440: $3e $02
	ld   [wWramBank], a                                  ; $5442: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5445: $e0 $70
	ld   hl, $d000                                   ; $5447: $21 $00 $d0
	ld   bc, $00a0                                   ; $544a: $01 $a0 $00
	ld   de, $0303                                   ; $544d: $11 $03 $03
	call CopyEthenDintoHL_BCtimes                                       ; $5450: $cd $9f $09
	ld   hl, $d140                                   ; $5453: $21 $40 $d1
	ld   bc, $00a0                                   ; $5456: $01 $a0 $00
	ld   de, $0000                                   ; $5459: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $545c: $cd $9f $09
	pop  af                                          ; $545f: $f1
	ld   [wWramBank], a                                  ; $5460: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5463: $e0 $70
	ret                                              ; $5465: $c9

.non0scenery:
	ld   a, [wWramBank]                                  ; $5466: $fa $93 $c2
	push af                                          ; $5469: $f5
	
	ld   a, $02                                      ; $546a: $3e $02
	ld   [wWramBank], a                                  ; $546c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $546f: $e0 $70

; HL points to tile map + attr source
	call GetPointerToSceneryDataSources                               ; $5471: $cd $f1 $4a
	ld   bc, $0006                                   ; $5474: $01 $06 $00
	add  hl, bc                                      ; $5477: $09

;
	ld   a, [hl+]                                    ; $5478: $2a
	ld   e, a                                        ; $5479: $5f
	ld   a, [hl+]                                    ; $547a: $2a
	ld   d, a                                        ; $547b: $57
	ld   a, [hl]                                     ; $547c: $7e
	ld   h, d                                        ; $547d: $62
	ld   l, e                                        ; $547e: $6b
	ld   de, $d140                                   ; $547f: $11 $40 $d1
	ld   b, $0a                                      ; $5482: $06 $0a

jr_00a_5484:
	push bc                                          ; $5484: $c5
	push af                                          ; $5485: $f5
	ld   bc, $0014                                   ; $5486: $01 $14 $00
	call FarMemCopy                                       ; $5489: $cd $b2 $09
	ld   a, $0c                                      ; $548c: $3e $0c
	add  e                                           ; $548e: $83
	ld   e, a                                        ; $548f: $5f
	ld   a, $00                                      ; $5490: $3e $00
	adc  d                                           ; $5492: $8a
	ld   d, a                                        ; $5493: $57
	pop  af                                          ; $5494: $f1
	pop  bc                                          ; $5495: $c1
	dec  b                                           ; $5496: $05
	jr   nz, jr_00a_5484                             ; $5497: $20 $eb

	ld   de, $d000                                   ; $5499: $11 $00 $d0
	ld   b, $0a                                      ; $549c: $06 $0a

jr_00a_549e:
	push bc                                          ; $549e: $c5
	push af                                          ; $549f: $f5
	ld   bc, $0014                                   ; $54a0: $01 $14 $00
	call FarMemCopy                                       ; $54a3: $cd $b2 $09
	ld   a, $0c                                      ; $54a6: $3e $0c
	add  e                                           ; $54a8: $83
	ld   e, a                                        ; $54a9: $5f
	ld   a, $00                                      ; $54aa: $3e $00
	adc  d                                           ; $54ac: $8a
	ld   d, a                                        ; $54ad: $57
	pop  af                                          ; $54ae: $f1
	pop  bc                                          ; $54af: $c1
	dec  b                                           ; $54b0: $05
	jr   nz, jr_00a_549e                             ; $54b1: $20 $eb

	pop  af                                          ; $54b3: $f1
	ld   [wWramBank], a                                  ; $54b4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $54b7: $e0 $70
	ret                                              ; $54b9: $c9


; b - idx into table
Func_0a_54ba::
	ld   a, [wWramBank]                                  ; $54ba: $fa $93 $c2
	push af                                          ; $54bd: $f5
	ld   a, $07                                      ; $54be: $3e $07
	ld   [wWramBank], a                                  ; $54c0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $54c3: $e0 $70
	push bc                                          ; $54c5: $c5
	ld   d, $00                                      ; $54c6: $16 $00
	ld   e, b                                        ; $54c8: $58
	ld   hl, Table_00a_564c                                   ; $54c9: $21 $4c $56
	add  hl, de                                      ; $54cc: $19
	add  hl, de                                      ; $54cd: $19
	add  hl, de                                      ; $54ce: $19
	ld   a, [hl+]                                    ; $54cf: $2a
	ld   [$cbd4], a                                  ; $54d0: $ea $d4 $cb
	ld   a, [hl+]                                    ; $54d3: $2a
	ld   [$cbd5], a                                  ; $54d4: $ea $d5 $cb
	ld   a, [hl]                                     ; $54d7: $7e
	ld   [$cbd6], a                                  ; $54d8: $ea $d6 $cb

;
	pop  bc                                          ; $54db: $c1
	ld   d, $00                                      ; $54dc: $16 $00
	ld   e, b                                        ; $54de: $58
	ld   hl, $4000                                   ; $54df: $21 $00 $40
	add  hl, de                                      ; $54e2: $19
	add  hl, de                                      ; $54e3: $19
	ld   a, $91                                      ; $54e4: $3e $91
	call FarGetHLinHL                                       ; $54e6: $cd $ee $0a
	ld   de, $4000                                   ; $54e9: $11 $00 $40
	add  hl, de                                      ; $54ec: $19
	ld   d, h                                        ; $54ed: $54
	ld   e, l                                        ; $54ee: $5d
	ld   h, $00                                      ; $54ef: $26 $00
	ld   l, c                                        ; $54f1: $69
	add  hl, hl                                      ; $54f2: $29
	add  hl, hl                                      ; $54f3: $29
	ld   b, h                                        ; $54f4: $44
	ld   c, l                                        ; $54f5: $4d
	add  hl, hl                                      ; $54f6: $29
	add  hl, hl                                      ; $54f7: $29
	add  hl, bc                                      ; $54f8: $09
	add  hl, bc                                      ; $54f9: $09
	add  hl, bc                                      ; $54fa: $09
	add  hl, de                                      ; $54fb: $19
	ld   b, h                                        ; $54fc: $44
	ld   c, l                                        ; $54fd: $4d
	ld   a, $91                                      ; $54fe: $3e $91
	ld   de, $d200                                   ; $5500: $11 $00 $d2
	ld   bc, $001c                                   ; $5503: $01 $1c $00
	call FarMemCopy                                       ; $5506: $cd $b2 $09
	ld   hl, $d218                                   ; $5509: $21 $18 $d2
	ld   de, $cb0d                                   ; $550c: $11 $0d $cb
	ld   a, [hl+]                                    ; $550f: $2a
	ld   [de], a                                     ; $5510: $12
	inc  de                                          ; $5511: $13
	ld   a, [hl+]                                    ; $5512: $2a
	ld   [de], a                                     ; $5513: $12
	inc  de                                          ; $5514: $13
	ld   a, [hl+]                                    ; $5515: $2a
	ld   [de], a                                     ; $5516: $12
	inc  de                                          ; $5517: $13
	ld   a, [hl+]                                    ; $5518: $2a
	ld   [de], a                                     ; $5519: $12
	inc  de                                          ; $551a: $13

; loop $18 times (24 portrait bytes)
	ld   de, $d000                                   ; $551b: $11 $00 $d0
	ld   bc, $d200                                   ; $551e: $01 $00 $d2
	ld   a, $18                                      ; $5521: $3e $18

jr_00a_5523:
	push af                                          ; $5523: $f5
	push bc                                          ; $5524: $c5

; h = high nybb, l = low nybble * $10
	ld   a, [bc]                                     ; $5525: $0a
	and  $f0                                         ; $5526: $e6 $f0
	swap a                                           ; $5528: $cb $37
	ld   h, a                                        ; $552a: $67
	ld   a, [bc]                                     ; $552b: $0a
	and  $0f                                         ; $552c: $e6 $0f
	swap a                                           ; $552e: $cb $37
	ld   l, a                                        ; $5530: $6f

; hl += cbd5/4 (offset in data), cbd6 = bank
	ld   a, [$cbd4]                                  ; $5531: $fa $d4 $cb
	ld   c, a                                        ; $5534: $4f
	ld   a, [$cbd5]                                  ; $5535: $fa $d5 $cb
	ld   b, a                                        ; $5538: $47
	ld   a, [$cbd6]                                  ; $5539: $fa $d6 $cb
	add  hl, bc                                      ; $553c: $09
	ld   c, $01                                      ; $553d: $0e $01
	call FarMemCopy16C                                       ; $553f: $cd $82 $0a

	pop  bc                                          ; $5542: $c1
	pop  af                                          ; $5543: $f1
	inc  bc                                          ; $5544: $03
	dec  a                                           ; $5545: $3d
	jr   nz, jr_00a_5523                             ; $5546: $20 $db

	ld   c, $81                                      ; $5548: $0e $81
	ld   de, $8d40                                   ; $554a: $11 $40 $8d
	ld   a, $07                                      ; $554d: $3e $07
	ld   hl, $d000                                   ; $554f: $21 $00 $d0
	ld   b, $18                                      ; $5552: $06 $18
	call EnqueueHDMATransfer                                       ; $5554: $cd $7c $02
	
	pop  af                                          ; $5557: $f1
	ld   [wWramBank], a                                  ; $5558: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $555b: $e0 $70
	ld   a, [wWramBank]                                  ; $555d: $fa $93 $c2
	push af                                          ; $5560: $f5
	ld   a, $02                                      ; $5561: $3e $02
	ld   [wWramBank], a                                  ; $5563: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5566: $e0 $70
	ld   hl, $d281                                   ; $5568: $21 $81 $d2
	ld   e, $09                                      ; $556b: $1e $09
	ld   a, [$cb0d]                                  ; $556d: $fa $0d $cb
	ld   d, a                                        ; $5570: $57
	xor  a                                           ; $5571: $af
	sla  d                                           ; $5572: $cb $22
	adc  e                                           ; $5574: $8b
	ld   [hl+], a                                    ; $5575: $22
	xor  a                                           ; $5576: $af
	sla  d                                           ; $5577: $cb $22
	adc  e                                           ; $5579: $8b
	ld   [hl+], a                                    ; $557a: $22
	xor  a                                           ; $557b: $af
	sla  d                                           ; $557c: $cb $22
	adc  e                                           ; $557e: $8b
	ld   [hl+], a                                    ; $557f: $22
	xor  a                                           ; $5580: $af
	sla  d                                           ; $5581: $cb $22
	adc  e                                           ; $5583: $8b
	ld   [hl+], a                                    ; $5584: $22
	ld   hl, $d2a1                                   ; $5585: $21 $a1 $d2
	xor  a                                           ; $5588: $af
	sla  d                                           ; $5589: $cb $22
	adc  e                                           ; $558b: $8b
	ld   [hl+], a                                    ; $558c: $22
	xor  a                                           ; $558d: $af
	sla  d                                           ; $558e: $cb $22
	adc  e                                           ; $5590: $8b
	ld   [hl+], a                                    ; $5591: $22
	xor  a                                           ; $5592: $af
	sla  d                                           ; $5593: $cb $22
	adc  e                                           ; $5595: $8b
	ld   [hl+], a                                    ; $5596: $22
	xor  a                                           ; $5597: $af
	sla  d                                           ; $5598: $cb $22
	adc  e                                           ; $559a: $8b
	ld   [hl+], a                                    ; $559b: $22
	ld   hl, $d2c1                                   ; $559c: $21 $c1 $d2
	ld   a, [wPlayerName]                                  ; $559f: $fa $0e $cb
	ld   d, a                                        ; $55a2: $57
	xor  a                                           ; $55a3: $af
	sla  d                                           ; $55a4: $cb $22
	adc  e                                           ; $55a6: $8b
	ld   [hl+], a                                    ; $55a7: $22
	xor  a                                           ; $55a8: $af
	sla  d                                           ; $55a9: $cb $22
	adc  e                                           ; $55ab: $8b
	ld   [hl+], a                                    ; $55ac: $22
	xor  a                                           ; $55ad: $af
	sla  d                                           ; $55ae: $cb $22
	adc  e                                           ; $55b0: $8b
	ld   [hl+], a                                    ; $55b1: $22
	xor  a                                           ; $55b2: $af
	sla  d                                           ; $55b3: $cb $22
	adc  e                                           ; $55b5: $8b
	ld   [hl+], a                                    ; $55b6: $22
	ld   hl, $d2e1                                   ; $55b7: $21 $e1 $d2
	xor  a                                           ; $55ba: $af
	sla  d                                           ; $55bb: $cb $22
	adc  e                                           ; $55bd: $8b
	ld   [hl+], a                                    ; $55be: $22
	xor  a                                           ; $55bf: $af
	sla  d                                           ; $55c0: $cb $22
	adc  e                                           ; $55c2: $8b
	ld   [hl+], a                                    ; $55c3: $22
	xor  a                                           ; $55c4: $af
	sla  d                                           ; $55c5: $cb $22
	adc  e                                           ; $55c7: $8b
	ld   [hl+], a                                    ; $55c8: $22
	xor  a                                           ; $55c9: $af
	sla  d                                           ; $55ca: $cb $22
	adc  e                                           ; $55cc: $8b
	ld   [hl+], a                                    ; $55cd: $22
	ld   hl, $d301                                   ; $55ce: $21 $01 $d3
	ld   a, [wPlayerName+1]                                  ; $55d1: $fa $0f $cb
	ld   d, a                                        ; $55d4: $57
	xor  a                                           ; $55d5: $af
	sla  d                                           ; $55d6: $cb $22
	adc  e                                           ; $55d8: $8b
	ld   [hl+], a                                    ; $55d9: $22
	xor  a                                           ; $55da: $af
	sla  d                                           ; $55db: $cb $22
	adc  e                                           ; $55dd: $8b
	ld   [hl+], a                                    ; $55de: $22
	xor  a                                           ; $55df: $af
	sla  d                                           ; $55e0: $cb $22
	adc  e                                           ; $55e2: $8b
	ld   [hl+], a                                    ; $55e3: $22
	xor  a                                           ; $55e4: $af
	sla  d                                           ; $55e5: $cb $22
	adc  e                                           ; $55e7: $8b
	ld   [hl+], a                                    ; $55e8: $22
	ld   hl, $d321                                   ; $55e9: $21 $21 $d3
	xor  a                                           ; $55ec: $af
	sla  d                                           ; $55ed: $cb $22
	adc  e                                           ; $55ef: $8b
	ld   [hl+], a                                    ; $55f0: $22
	xor  a                                           ; $55f1: $af
	sla  d                                           ; $55f2: $cb $22
	adc  e                                           ; $55f4: $8b
	ld   [hl+], a                                    ; $55f5: $22
	xor  a                                           ; $55f6: $af
	sla  d                                           ; $55f7: $cb $22
	adc  e                                           ; $55f9: $8b
	ld   [hl+], a                                    ; $55fa: $22
	xor  a                                           ; $55fb: $af
	sla  d                                           ; $55fc: $cb $22
	adc  e                                           ; $55fe: $8b
	ld   [hl+], a                                    ; $55ff: $22
	pop  af                                          ; $5600: $f1
	ld   [wWramBank], a                                  ; $5601: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5604: $e0 $70
	ld   a, [$cbd7]                                  ; $5606: $fa $d7 $cb
	or   a                                           ; $5609: $b7
	jr   z, jr_00a_561d                              ; $560a: $28 $11

	ld   c, $81                                      ; $560c: $0e $81
	ld   de, $9c20                                   ; $560e: $11 $20 $9c
	ld   a, $02                                      ; $5611: $3e $02
	ld   hl, $d280                                   ; $5613: $21 $80 $d2
	ld   b, $0c                                      ; $5616: $06 $0c
	call EnqueueHDMATransfer                                       ; $5618: $cd $7c $02
	jr   jr_00a_562c                                 ; $561b: $18 $0f

jr_00a_561d:
	ld   c, $81                                      ; $561d: $0e $81
	ld   de, $9960                                   ; $561f: $11 $60 $99
	ld   a, $02                                      ; $5622: $3e $02
	ld   hl, $d280                                   ; $5624: $21 $80 $d2
	ld   b, $0c                                      ; $5627: $06 $0c
	call EnqueueHDMATransfer                                       ; $5629: $cd $7c $02

jr_00a_562c:
	ld   a, [wPlayerName+2]                                  ; $562c: $fa $10 $cb
	ld   h, $00                                      ; $562f: $26 $00
	ld   l, a                                        ; $5631: $6f
	add  hl, hl                                      ; $5632: $29
	add  hl, hl                                      ; $5633: $29
	add  hl, hl                                      ; $5634: $29
	add  hl, hl                                      ; $5635: $29
	ld   bc, $4613                                   ; $5636: $01 $13 $46
	add  hl, bc                                      ; $5639: $09
	ld   a, $a2                                      ; $563a: $3e $a2
	ld   de, wBGPalettes+1*8                                   ; $563c: $11 $e6 $c2
	ld   bc, $0010                                   ; $563f: $01 $10 $00
	call FarMemCopy                                       ; $5642: $cd $b2 $09
	ld   bc, $040b                                   ; $5645: $01 $0b $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5648: $cd $aa $04
	ret                                              ; $564b: $c9


Table_00a_564c:
	db $13, $48, $a2
	db $28, $55, $95
	db $30, $63, $93
	db $35, $67, $98
	db $90, $56, $92
	db $00, $40, $92
	db $6e, $4f, $94
	db $13, $4a, $a2
	db $79, $7e, $9f
	db $28, $5c, $95
	db $f0, $73, $93
	db $1a, $49, $9b
	db $82, $75, $9f
	db $4f, $61, $9c
	db $82, $78, $9f
	db $4f, $65, $9c
	db $4f, $69, $9c
	db $c4, $5e, $91


Func_0a_5682::
	ld   [$cbdd], a                                  ; $5682: $ea $dd $cb
	ld   a, h                                        ; $5685: $7c
	ld   [$cbdc], a                                  ; $5686: $ea $dc $cb
	ld   a, l                                        ; $5689: $7d
	ld   [$cbdb], a                                  ; $568a: $ea $db $cb
	ld   a, b                                        ; $568d: $78
	ld   [$cbdf], a                                  ; $568e: $ea $df $cb
	ld   a, c                                        ; $5691: $79
	ld   [$cbe0], a                                  ; $5692: $ea $e0 $cb
	xor  a                                           ; $5695: $af
	ld   [$cbd8], a                                  ; $5696: $ea $d8 $cb
	ld   [$cbd9], a                                  ; $5699: $ea $d9 $cb
	ld   [$cbda], a                                  ; $569c: $ea $da $cb
	ld   [$cbde], a                                  ; $569f: $ea $de $cb
	ret                                              ; $56a2: $c9


Func_0a_56a3::
	ld   a, [wWramBank]                                  ; $56a3: $fa $93 $c2

jr_00a_56a6:
	push af                                          ; $56a6: $f5
	ld   a, $02                                      ; $56a7: $3e $02
	ld   [wWramBank], a                                  ; $56a9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $56ac: $e0 $70
	ld   bc, $56c2                                   ; $56ae: $01 $c2 $56
	push bc                                          ; $56b1: $c5
	ld   a, [$cbd8]                                  ; $56b2: $fa $d8 $cb
	sla  a                                           ; $56b5: $cb $27

jr_00a_56b7:
	ld   b, $00                                      ; $56b7: $06 $00
	ld   c, a                                        ; $56b9: $4f
	ld   hl, $56c9                                   ; $56ba: $21 $c9 $56
	add  hl, bc                                      ; $56bd: $09
	ld   a, [hl+]                                    ; $56be: $2a
	ld   h, [hl]                                     ; $56bf: $66
	ld   l, a                                        ; $56c0: $6f
	jp   hl                                          ; $56c1: $e9


	pop  af                                          ; $56c2: $f1
	ld   [wWramBank], a                                  ; $56c3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $56c6: $e0 $70
	ret                                              ; $56c8: $c9


	reti                                             ; $56c9: $d9


	ld   d, [hl]                                     ; $56ca: $56
	or   l                                           ; $56cb: $b5
	ld   d, a                                        ; $56cc: $57
	ld   d, $58                                      ; $56cd: $16 $58
	reti                                             ; $56cf: $d9


	ld   d, [hl]                                     ; $56d0: $56
	sub  e                                           ; $56d1: $93
	ld   e, b                                        ; $56d2: $58
	cp   d                                           ; $56d3: $ba
	ld   e, b                                        ; $56d4: $58
	sub  e                                           ; $56d5: $93
	ld   e, b                                        ; $56d6: $58
	ld   b, $59                                      ; $56d7: $06 $59
	ld   hl, $cbd9                                   ; $56d9: $21 $d9 $cb
	ld   a, [hl]                                     ; $56dc: $7e
	inc  [hl]                                        ; $56dd: $34
	or   a                                           ; $56de: $b7
	jr   nz, jr_00a_5711                             ; $56df: $20 $30

	xor  a                                           ; $56e1: $af
	ld   [$cbde], a                                  ; $56e2: $ea $de $cb
	ld   a, $02                                      ; $56e5: $3e $02
	ld   hl, $cbde                                   ; $56e7: $21 $de $cb
	call Call_00a_598f                               ; $56ea: $cd $8f $59
	ld   de, $da00                                   ; $56ed: $11 $00 $da
	ld   hl, wBGPalettes                                   ; $56f0: $21 $de $c2
	ld   bc, $0018                                   ; $56f3: $01 $18 $00
	call MemCopy                                       ; $56f6: $cd $a9 $09
	xor  a                                           ; $56f9: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $56fa: $ea $62 $c3
	ld   a, $0c                                      ; $56fd: $3e $0c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $56ff: $ea $63 $c3
	ld   a, $04                                      ; $5702: $3e $04
	ld   b, $00                                      ; $5704: $06 $00
	ld   hl, wBGPalettes                                   ; $5706: $21 $de $c2
	ld   c, $01                                      ; $5709: $0e $01
	ld   de, $7000                                   ; $570b: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $570e: $cd $48 $07

jr_00a_5711:
	ld   a, [$cbd9]                                  ; $5711: $fa $d9 $cb
	cp   $10                                         ; $5714: $fe $10
	jr   nc, jr_00a_571f                             ; $5716: $30 $07

	ld   bc, $000c                                   ; $5718: $01 $0c $00
	call FadePalettesAndSetRangeToUpdate                                       ; $571b: $cd $32 $08
	ret                                              ; $571e: $c9


jr_00a_571f:
	ld   a, [$cbd8]                                  ; $571f: $fa $d8 $cb
	cp   $03                                         ; $5722: $fe $03
	jr   z, jr_00a_575e                              ; $5724: $28 $38

	ld   bc, $0001                                   ; $5726: $01 $01 $00
	push af                                          ; $5729: $f5
	ld   a, $ba                                      ; $572a: $3e $ba
	ld   [wFarCallAddr], a                                  ; $572c: $ea $98 $c2
	ld   a, $54                                      ; $572f: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $5731: $ea $99 $c2
	ld   a, $0a                                      ; $5734: $3e $0a
	ld   [wFarCallBank], a                                  ; $5736: $ea $9a $c2
	pop  af                                          ; $5739: $f1
	call FarCall                                       ; $573a: $cd $62 $09
	ld   de, $da08                                   ; $573d: $11 $08 $da
	ld   hl, wBGPalettes+1*8                                   ; $5740: $21 $e6 $c2
	ld   bc, $0010                                   ; $5743: $01 $10 $00
	call MemCopy                                       ; $5746: $cd $a9 $09
	ld   hl, wBGPalettes+1*8                                   ; $5749: $21 $e6 $c2
	ld   bc, $0008                                   ; $574c: $01 $08 $00
	ld   de, $7fff                                   ; $574f: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $5752: $cd $9f $09

jr_00a_5755:
	ld   hl, $cbd8                                   ; $5755: $21 $d8 $cb
	inc  [hl]                                        ; $5758: $34
	xor  a                                           ; $5759: $af
	ld   [$cbd9], a                                  ; $575a: $ea $d9 $cb
	ret                                              ; $575d: $c9


jr_00a_575e:
	ld   a, [$cbdf]                                  ; $575e: $fa $df $cb
	bit  7, a                                        ; $5761: $cb $7f
	jr   nz, jr_00a_5798                             ; $5763: $20 $33

	ld   b, a                                        ; $5765: $47
	ld   a, [$cbe0]                                  ; $5766: $fa $e0 $cb
	ld   c, a                                        ; $5769: $4f
	push af                                          ; $576a: $f5
	ld   a, $ba                                      ; $576b: $3e $ba
	ld   [wFarCallAddr], a                                  ; $576d: $ea $98 $c2
	ld   a, $54                                      ; $5770: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $5772: $ea $99 $c2
	ld   a, $0a                                      ; $5775: $3e $0a
	ld   [wFarCallBank], a                                  ; $5777: $ea $9a $c2
	pop  af                                          ; $577a: $f1
	call FarCall                                       ; $577b: $cd $62 $09
	ld   de, $da08                                   ; $577e: $11 $08 $da
	ld   hl, wBGPalettes+1*8                                   ; $5781: $21 $e6 $c2
	ld   bc, $0010                                   ; $5784: $01 $10 $00
	call MemCopy                                       ; $5787: $cd $a9 $09
	ld   hl, wBGPalettes+1*8                                   ; $578a: $21 $e6 $c2
	ld   bc, $0008                                   ; $578d: $01 $08 $00
	ld   de, $7fff                                   ; $5790: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $5793: $cd $9f $09
	jr   jr_00a_5755                                 ; $5796: $18 $bd

jr_00a_5798:
	ld   hl, $d880                                   ; $5798: $21 $80 $d8
	ld   bc, $00c0                                   ; $579b: $01 $c0 $00
	ld   de, $0000                                   ; $579e: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $57a1: $cd $9f $09
	ld   c, $81                                      ; $57a4: $0e $81
	ld   de, $8d40                                   ; $57a6: $11 $40 $8d
	ld   a, $02                                      ; $57a9: $3e $02
	ld   hl, $d880                                   ; $57ab: $21 $80 $d8
	ld   b, $18                                      ; $57ae: $06 $18
	call EnqueueHDMATransfer                                       ; $57b0: $cd $7c $02
	jr   jr_00a_5755                                 ; $57b3: $18 $a0

	ld   hl, $cbd9                                   ; $57b5: $21 $d9 $cb
	ld   a, [hl]                                     ; $57b8: $7e
	inc  [hl]                                        ; $57b9: $34
	or   a                                           ; $57ba: $b7
	jr   nz, jr_00a_57eb                             ; $57bb: $20 $2e

	xor  a                                           ; $57bd: $af
	ld   [$cbdb], a                                  ; $57be: $ea $db $cb
	call Call_00a_594d                               ; $57c1: $cd $4d $59
	ld   c, $81                                      ; $57c4: $0e $81
	ld   de, $8800                                   ; $57c6: $11 $00 $88
	ld   a, $02                                      ; $57c9: $3e $02
	ld   hl, $d340                                   ; $57cb: $21 $40 $d3
	ld   b, $54                                      ; $57ce: $06 $54
	call EnqueueHDMATransfer                                       ; $57d0: $cd $7c $02
	xor  a                                           ; $57d3: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $57d4: $ea $62 $c3
	ld   a, $0c                                      ; $57d7: $3e $0c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $57d9: $ea $63 $c3
	ld   a, $04                                      ; $57dc: $3e $04
	ld   b, $01                                      ; $57de: $06 $01
	ld   hl, $7000                                   ; $57e0: $21 $00 $70
	ld   c, $00                                      ; $57e3: $0e $00
	ld   de, $da00                                   ; $57e5: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $57e8: $cd $48 $07

jr_00a_57eb:
	ld   a, [$cbd9]                                  ; $57eb: $fa $d9 $cb
	cp   $10                                         ; $57ee: $fe $10
	jr   nc, jr_00a_57f9                             ; $57f0: $30 $07

	ld   bc, $000c                                   ; $57f2: $01 $0c $00
	call FadePalettesAndSetRangeToUpdate                                       ; $57f5: $cd $32 $08
	ret                                              ; $57f8: $c9


jr_00a_57f9:
	ld   a, $00                                      ; $57f9: $3e $00
	ld   hl, $da00                                   ; $57fb: $21 $00 $da
	ld   de, wBGPalettes                                   ; $57fe: $11 $de $c2
	ld   bc, $0018                                   ; $5801: $01 $18 $00
	call FarMemCopy                                       ; $5804: $cd $b2 $09
	ld   bc, $000b                                   ; $5807: $01 $0b $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $580a: $cd $aa $04
	ld   hl, $cbd8                                   ; $580d: $21 $d8 $cb
	inc  [hl]                                        ; $5810: $34
	xor  a                                           ; $5811: $af
	ld   [$cbd9], a                                  ; $5812: $ea $d9 $cb
	ret                                              ; $5815: $c9


	ld   a, $02                                      ; $5816: $3e $02
	ld   hl, $cbde                                   ; $5818: $21 $de $cb
	call Call_00a_598f                               ; $581b: $cd $8f $59
	ld   a, [wInGameButtonsPressed]                                  ; $581e: $fa $10 $c2
	bit  0, a                                        ; $5821: $cb $47
	jr   z, jr_00a_584d                              ; $5823: $28 $28

	ld   hl, $cbdb                                   ; $5825: $21 $db $cb
	inc  [hl]                                        ; $5828: $34
	ld   a, $21                                      ; $5829: $3e $21
	call Func_1adf                                       ; $582b: $cd $df $1a
	ld   a, [$cbdd]                                  ; $582e: $fa $dd $cb
	or   a                                           ; $5831: $b7
	jr   z, jr_00a_5844                              ; $5832: $28 $10

	ld   a, [$cbdc]                                  ; $5834: $fa $dc $cb
	cp   [hl]                                        ; $5837: $be
	jr   nz, jr_00a_5844                             ; $5838: $20 $0a

	ld   a, $06                                      ; $583a: $3e $06
	ld   [$cbd8], a                                  ; $583c: $ea $d8 $cb
	xor  a                                           ; $583f: $af
	ld   [$cbd9], a                                  ; $5840: $ea $d9 $cb
	ret                                              ; $5843: $c9


jr_00a_5844:
	ld   hl, $cbd8                                   ; $5844: $21 $d8 $cb
	inc  [hl]                                        ; $5847: $34
	xor  a                                           ; $5848: $af
	ld   [$cbd9], a                                  ; $5849: $ea $d9 $cb
	ret                                              ; $584c: $c9


jr_00a_584d:
	bit  6, a                                        ; $584d: $cb $77
	jr   z, jr_00a_5872                              ; $584f: $28 $21

	ld   a, [$cbdb]                                  ; $5851: $fa $db $cb
	call Call_00a_590d                               ; $5854: $cd $0d $59
	ld   a, $20                                      ; $5857: $3e $20
	call Func_1adf                                       ; $5859: $cd $df $1a
	ld   a, [$cbdb]                                  ; $585c: $fa $db $cb
	dec  a                                           ; $585f: $3d
	ld   [$cbdb], a                                  ; $5860: $ea $db $cb
	bit  7, a                                        ; $5863: $cb $7f
	jr   z, jr_00a_586e                              ; $5865: $28 $07

	ld   a, [$cbdc]                                  ; $5867: $fa $dc $cb
	dec  a                                           ; $586a: $3d
	ld   [$cbdb], a                                  ; $586b: $ea $db $cb

jr_00a_586e:
	call Call_00a_594d                               ; $586e: $cd $4d $59
	ret                                              ; $5871: $c9


jr_00a_5872:
	bit  7, a                                        ; $5872: $cb $7f
	ret  z                                           ; $5874: $c8

	ld   a, $20                                      ; $5875: $3e $20
	call Func_1adf                                       ; $5877: $cd $df $1a
	ld   a, [$cbdb]                                  ; $587a: $fa $db $cb
	call Call_00a_590d                               ; $587d: $cd $0d $59
	ld   a, [$cbdb]                                  ; $5880: $fa $db $cb
	inc  a                                           ; $5883: $3c
	ld   [$cbdb], a                                  ; $5884: $ea $db $cb
	ld   hl, $cbdc                                   ; $5887: $21 $dc $cb
	cp   [hl]                                        ; $588a: $be
	jr   nz, jr_00a_586e                             ; $588b: $20 $e1

	xor  a                                           ; $588d: $af
	ld   [$cbdb], a                                  ; $588e: $ea $db $cb
	jr   jr_00a_586e                                 ; $5891: $18 $db

	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $5893: $cd $09 $14
	ld   hl, $d340                                   ; $5896: $21 $40 $d3
	ld   bc, $02a0                                   ; $5899: $01 $a0 $02
	ld   de, $0000                                   ; $589c: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $589f: $cd $9f $09
	ld   c, $81                                      ; $58a2: $0e $81
	ld   de, $8800                                   ; $58a4: $11 $00 $88
	ld   a, $02                                      ; $58a7: $3e $02
	ld   hl, $d340                                   ; $58a9: $21 $40 $d3
	ld   b, $54                                      ; $58ac: $06 $54
	call EnqueueHDMATransfer                                       ; $58ae: $cd $7c $02
	ld   hl, $cbd8                                   ; $58b1: $21 $d8 $cb
	inc  [hl]                                        ; $58b4: $34
	xor  a                                           ; $58b5: $af
	ld   [$cbd9], a                                  ; $58b6: $ea $d9 $cb
	ret                                              ; $58b9: $c9


	ld   hl, $cbd9                                   ; $58ba: $21 $d9 $cb
	ld   a, [hl]                                     ; $58bd: $7e
	inc  [hl]                                        ; $58be: $34
	or   a                                           ; $58bf: $b7
	jr   nz, jr_00a_58da                             ; $58c0: $20 $18

	xor  a                                           ; $58c2: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $58c3: $ea $62 $c3
	ld   a, $0c                                      ; $58c6: $3e $0c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $58c8: $ea $63 $c3
	ld   a, $04                                      ; $58cb: $3e $04
	ld   b, $01                                      ; $58cd: $06 $01
	ld   hl, $7000                                   ; $58cf: $21 $00 $70
	ld   c, $00                                      ; $58d2: $0e $00
	ld   de, $da00                                   ; $58d4: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $58d7: $cd $48 $07

jr_00a_58da:
	ld   a, [$cbd9]                                  ; $58da: $fa $d9 $cb
	cp   $10                                         ; $58dd: $fe $10
	jr   nc, jr_00a_58e8                             ; $58df: $30 $07

	ld   bc, $000c                                   ; $58e1: $01 $0c $00
	call FadePalettesAndSetRangeToUpdate                                       ; $58e4: $cd $32 $08
	ret                                              ; $58e7: $c9


jr_00a_58e8:
	ld   a, $b4                                      ; $58e8: $3e $b4
	ld   [$da04], a                                  ; $58ea: $ea $04 $da
	ld   a, $0c                                      ; $58ed: $3e $0c
	ld   [$da05], a                                  ; $58ef: $ea $05 $da
	ld   a, $00                                      ; $58f2: $3e $00
	ld   hl, $da00                                   ; $58f4: $21 $00 $da
	ld   de, wBGPalettes                                   ; $58f7: $11 $de $c2
	ld   bc, $0018                                   ; $58fa: $01 $18 $00
	call FarMemCopy                                       ; $58fd: $cd $b2 $09
	ld   bc, $000b                                   ; $5900: $01 $0b $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5903: $cd $aa $04
	ld   a, [$cbdb]                                  ; $5906: $fa $db $cb
	ld   [$cbda], a                                  ; $5909: $ea $da $cb
	ret                                              ; $590c: $c9


Call_00a_590d:
	sla  a                                           ; $590d: $cb $27
	ld   b, $00                                      ; $590f: $06 $00
	ld   c, a                                        ; $5911: $4f
	ld   hl, $5947                                   ; $5912: $21 $47 $59
	add  hl, bc                                      ; $5915: $09
	ld   a, [hl+]                                    ; $5916: $2a
	ld   h, [hl]                                     ; $5917: $66
	ld   l, a                                        ; $5918: $6f
	push hl                                          ; $5919: $e5
	ld   bc, $d340                                   ; $591a: $01 $40 $d3
	add  hl, bc                                      ; $591d: $09
	ld   b, $1c                                      ; $591e: $06 $1c

jr_00a_5920:
	ld   a, [hl+]                                    ; $5920: $2a
	ld   [hl+], a                                    ; $5921: $22
	ld   a, [hl+]                                    ; $5922: $2a
	ld   [hl+], a                                    ; $5923: $22
	ld   a, [hl+]                                    ; $5924: $2a
	ld   [hl+], a                                    ; $5925: $22
	ld   a, [hl+]                                    ; $5926: $2a
	ld   [hl+], a                                    ; $5927: $22
	ld   a, [hl+]                                    ; $5928: $2a
	ld   [hl+], a                                    ; $5929: $22
	ld   a, [hl+]                                    ; $592a: $2a
	ld   [hl+], a                                    ; $592b: $22
	ld   a, [hl+]                                    ; $592c: $2a
	ld   [hl+], a                                    ; $592d: $22
	ld   a, [hl+]                                    ; $592e: $2a
	ld   [hl+], a                                    ; $592f: $22
	dec  b                                           ; $5930: $05
	jr   nz, jr_00a_5920                             ; $5931: $20 $ed

	pop  bc                                          ; $5933: $c1
	ld   hl, $8800                                   ; $5934: $21 $00 $88
	add  hl, bc                                      ; $5937: $09
	ld   d, h                                        ; $5938: $54
	ld   e, l                                        ; $5939: $5d
	ld   hl, $d340                                   ; $593a: $21 $40 $d3
	add  hl, bc                                      ; $593d: $09
	ld   bc, $1c81                                   ; $593e: $01 $81 $1c
	ld   a, $02                                      ; $5941: $3e $02
	call EnqueueHDMATransfer                                       ; $5943: $cd $7c $02
	ret                                              ; $5946: $c9


	nop                                              ; $5947: $00
	nop                                              ; $5948: $00
	ret  nz                                          ; $5949: $c0

	ld   bc, $0380                                   ; $594a: $01 $80 $03

Call_00a_594d:
	sla  a                                           ; $594d: $cb $27
	ld   b, $00                                      ; $594f: $06 $00
	ld   c, a                                        ; $5951: $4f
	ld   hl, $5989                                   ; $5952: $21 $89 $59
	add  hl, bc                                      ; $5955: $09
	ld   a, [hl+]                                    ; $5956: $2a
	ld   h, [hl]                                     ; $5957: $66
	ld   l, a                                        ; $5958: $6f
	push hl                                          ; $5959: $e5
	ld   bc, $d340                                   ; $595a: $01 $40 $d3
	add  hl, bc                                      ; $595d: $09
	ld   a, $ff                                      ; $595e: $3e $ff
	ld   b, $1c                                      ; $5960: $06 $1c

jr_00a_5962:
	inc  hl                                          ; $5962: $23
	ld   [hl+], a                                    ; $5963: $22
	inc  hl                                          ; $5964: $23
	ld   [hl+], a                                    ; $5965: $22
	inc  hl                                          ; $5966: $23
	ld   [hl+], a                                    ; $5967: $22
	inc  hl                                          ; $5968: $23
	ld   [hl+], a                                    ; $5969: $22
	inc  hl                                          ; $596a: $23
	ld   [hl+], a                                    ; $596b: $22
	inc  hl                                          ; $596c: $23
	ld   [hl+], a                                    ; $596d: $22
	inc  hl                                          ; $596e: $23
	ld   [hl+], a                                    ; $596f: $22
	inc  hl                                          ; $5970: $23
	ld   [hl+], a                                    ; $5971: $22
	dec  b                                           ; $5972: $05
	jr   nz, jr_00a_5962                             ; $5973: $20 $ed

	pop  bc                                          ; $5975: $c1
	ld   hl, $8800                                   ; $5976: $21 $00 $88
	add  hl, bc                                      ; $5979: $09
	ld   d, h                                        ; $597a: $54
	ld   e, l                                        ; $597b: $5d
	ld   hl, $d340                                   ; $597c: $21 $40 $d3
	add  hl, bc                                      ; $597f: $09
	ld   bc, $1c81                                   ; $5980: $01 $81 $1c
	ld   a, $02                                      ; $5983: $3e $02
	call EnqueueHDMATransfer                                       ; $5985: $cd $7c $02
	ret                                              ; $5988: $c9


	nop                                              ; $5989: $00
	nop                                              ; $598a: $00
	ret  nz                                          ; $598b: $c0

	ld   bc, $0380                                   ; $598c: $01 $80 $03

Call_00a_598f:
	push af                                          ; $598f: $f5
	ld   a, [hl]                                     ; $5990: $7e
	and  $3f                                         ; $5991: $e6 $3f
	srl  a                                           ; $5993: $cb $3f
	inc  [hl]                                        ; $5995: $34
	ld   h, $00                                      ; $5996: $26 $00
	ld   l, a                                        ; $5998: $6f
	ld   bc, $59c2                                   ; $5999: $01 $c2 $59
	add  hl, bc                                      ; $599c: $09
	ld   a, [hl]                                     ; $599d: $7e
	sla  a                                           ; $599e: $cb $27
	sla  a                                           ; $59a0: $cb $27
	ld   h, $00                                      ; $59a2: $26 $00
	ld   l, a                                        ; $59a4: $6f
	ld   bc, $59e2                                   ; $59a5: $01 $e2 $59
	add  hl, bc                                      ; $59a8: $09
	pop  af                                          ; $59a9: $f1
	ld   b, a                                        ; $59aa: $47
	ld   c, $01                                      ; $59ab: $0e $01
	ld   d, h                                        ; $59ad: $54
	ld   e, l                                        ; $59ae: $5d
	sla  a                                           ; $59af: $cb $27
	add  $de                                         ; $59b1: $c6 $de
	ld   l, a                                        ; $59b3: $6f
	ld   a, $c2                                      ; $59b4: $3e $c2
	adc  $00                                         ; $59b6: $ce $00
	ld   h, a                                        ; $59b8: $67
	ld   a, [de]                                     ; $59b9: $1a
	inc  de                                          ; $59ba: $13
	ld   [hl+], a                                    ; $59bb: $22
	ld   a, [de]                                     ; $59bc: $1a
	ld   [hl+], a                                    ; $59bd: $22
	call SetAllBGPaletteRangeToUpdate                                       ; $59be: $cd $a7 $04
	ret                                              ; $59c1: $c9


	ld   b, $06                                      ; $59c2: $06 $06
	ld   b, $06                                      ; $59c4: $06 $06
	ld   b, $06                                      ; $59c6: $06 $06
	ld   b, $06                                      ; $59c8: $06 $06
	rlca                                             ; $59ca: $07
	ld   [$0a09], sp                                 ; $59cb: $08 $09 $0a
	dec  bc                                          ; $59ce: $0b
	inc  c                                           ; $59cf: $0c
	dec  c                                           ; $59d0: $0d
	ld   c, $0f                                      ; $59d1: $0e $0f
	rrca                                             ; $59d3: $0f
	rrca                                             ; $59d4: $0f
	rrca                                             ; $59d5: $0f
	rrca                                             ; $59d6: $0f
	rrca                                             ; $59d7: $0f
	rrca                                             ; $59d8: $0f
	rrca                                             ; $59d9: $0f
	ld   c, $0d                                      ; $59da: $0e $0d
	inc  c                                           ; $59dc: $0c
	dec  bc                                          ; $59dd: $0b
	ld   a, [bc]                                     ; $59de: $0a
	add  hl, bc                                      ; $59df: $09
	ld   [$ff07], sp                                 ; $59e0: $08 $07 $ff
	ld   a, a                                        ; $59e3: $7f
	rst  $38                                         ; $59e4: $ff
	ld   a, a                                        ; $59e5: $7f
	cp   a                                           ; $59e6: $bf
	ld   [hl], a                                     ; $59e7: $77
	cp   h                                           ; $59e8: $bc
	ld   [hl], a                                     ; $59e9: $77
	ld   a, a                                        ; $59ea: $7f
	ld   l, a                                        ; $59eb: $6f
	ld   a, d                                        ; $59ec: $7a
	ld   l, a                                        ; $59ed: $6f
	ccf                                              ; $59ee: $3f
	ld   h, a                                        ; $59ef: $67
	jr   c, jr_00a_5a59                              ; $59f0: $38 $67

	rst  $38                                         ; $59f2: $ff
	ld   e, [hl]                                     ; $59f3: $5e
	or   $5e                                         ; $59f4: $f6 $5e
	cp   a                                           ; $59f6: $bf
	ld   d, [hl]                                     ; $59f7: $56
	or   h                                           ; $59f8: $b4
	ld   d, [hl]                                     ; $59f9: $56
	ld   a, a                                        ; $59fa: $7f
	ld   c, [hl]                                     ; $59fb: $4e
	ld   [hl], d                                     ; $59fc: $72
	ld   c, [hl]                                     ; $59fd: $4e
	ccf                                              ; $59fe: $3f
	ld   b, [hl]                                     ; $59ff: $46
	jr   nc, @+$48                                   ; $5a00: $30 $46

	rst  $38                                         ; $5a02: $ff
	dec  a                                           ; $5a03: $3d
	xor  $3d                                         ; $5a04: $ee $3d
	cp   a                                           ; $5a06: $bf
	dec  [hl]                                        ; $5a07: $35
	xor  h                                           ; $5a08: $ac
	dec  [hl]                                        ; $5a09: $35
	ld   a, a                                        ; $5a0a: $7f
	dec  l                                           ; $5a0b: $2d
	ld   l, d                                        ; $5a0c: $6a
	dec  l                                           ; $5a0d: $2d
	ccf                                              ; $5a0e: $3f
	dec  h                                           ; $5a0f: $25
	jr   z, @+$27                                    ; $5a10: $28 $25

	rst  $38                                         ; $5a12: $ff
	inc  e                                           ; $5a13: $1c
	and  $1c                                         ; $5a14: $e6 $1c
	cp   a                                           ; $5a16: $bf
	inc  d                                           ; $5a17: $14
	and  h                                           ; $5a18: $a4
	inc  d                                           ; $5a19: $14
	ld   a, a                                        ; $5a1a: $7f
	inc  c                                           ; $5a1b: $0c
	ld   h, d                                        ; $5a1c: $62
	inc  c                                           ; $5a1d: $0c
	rra                                              ; $5a1e: $1f
	nop                                              ; $5a1f: $00
	nop                                              ; $5a20: $00
	nop                                              ; $5a21: $00
	push hl                                          ; $5a22: $e5
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $5a23: $cd $09 $14
	ld   bc, $0e03                                   ; $5a26: $01 $03 $0e
	call SetKanjiTextBoxDimensions                                       ; $5a29: $cd $24 $14
	ld   bc, $0000                                   ; $5a2c: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $5a2f: $cd $34 $14
	pop  hl                                          ; $5a32: $e1
	push af                                          ; $5a33: $f5
	ld   a, $4b                                      ; $5a34: $3e $4b
	ld   [wFarCallAddr], a                                  ; $5a36: $ea $98 $c2
	ld   a, $5b                                      ; $5a39: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $5a3b: $ea $99 $c2
	ld   a, $0a                                      ; $5a3e: $3e $0a
	ld   [wFarCallBank], a                                  ; $5a40: $ea $9a $c2
	pop  af                                          ; $5a43: $f1
	call FarCall                                       ; $5a44: $cd $62 $09
	call FarPopulateKanjiConvoStructForCurrTextBox                                       ; $5a47: $cd $0c $10
	xor  a                                           ; $5a4a: $af
	ld   [$cbe3], a                                  ; $5a4b: $ea $e3 $cb
	ld   [$cbe1], a                                  ; $5a4e: $ea $e1 $cb
	ld   [$cbe2], a                                  ; $5a51: $ea $e2 $cb
	ret                                              ; $5a54: $c9


	ld   a, [wWramBank]                                  ; $5a55: $fa $93 $c2
	push af                                          ; $5a58: $f5

jr_00a_5a59:
	ld   a, $02                                      ; $5a59: $3e $02
	ld   [wWramBank], a                                  ; $5a5b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5a5e: $e0 $70
	ld   bc, $5a74                                   ; $5a60: $01 $74 $5a
	push bc                                          ; $5a63: $c5
	ld   a, [$cbe1]                                  ; $5a64: $fa $e1 $cb
	sla  a                                           ; $5a67: $cb $27
	ld   b, $00                                      ; $5a69: $06 $00
	ld   c, a                                        ; $5a6b: $4f
	ld   hl, $5a7f                                   ; $5a6c: $21 $7f $5a
	add  hl, bc                                      ; $5a6f: $09
	ld   a, [hl+]                                    ; $5a70: $2a
	ld   h, [hl]                                     ; $5a71: $66
	ld   l, a                                        ; $5a72: $6f
	jp   hl                                          ; $5a73: $e9


	pop  af                                          ; $5a74: $f1
	ld   [wWramBank], a                                  ; $5a75: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5a78: $e0 $70
	ld   a, [$cbe1]                                  ; $5a7a: $fa $e1 $cb
	inc  a                                           ; $5a7d: $3c
	ret                                              ; $5a7e: $c9


	add  l                                           ; $5a7f: $85
	ld   e, d                                        ; $5a80: $5a
	xor  h                                           ; $5a81: $ac
	ld   e, d                                        ; $5a82: $5a
	ld   a, [hl+]                                    ; $5a83: $2a
	ld   e, e                                        ; $5a84: $5b
	call CheckIfReachedLastKanjiIdxInCurrTextBox                                       ; $5a85: $cd $71 $14
	or   a                                           ; $5a88: $b7
	jr   nz, jr_00a_5a94                             ; $5a89: $20 $09

	ld   hl, $cbe1                                   ; $5a8b: $21 $e1 $cb
	inc  [hl]                                        ; $5a8e: $34
	xor  a                                           ; $5a8f: $af
	ld   [$cbe2], a                                  ; $5a90: $ea $e2 $cb
	ret                                              ; $5a93: $c9


jr_00a_5a94:
	ld   a, [wInGameButtonsHeld]                                  ; $5a94: $fa $0f $c2
	and  $82                                         ; $5a97: $e6 $82
	jr   nz, jr_00a_5aa2                             ; $5a99: $20 $07

	ld   hl, $cbe3                                   ; $5a9b: $21 $e3 $cb
	dec  [hl]                                        ; $5a9e: $35
	bit  7, [hl]                                     ; $5a9f: $cb $7e
	ret  z                                           ; $5aa1: $c8

jr_00a_5aa2:
	ld   a, [sTextSpeedBaseCounter]                                  ; $5aa2: $fa $b3 $b1
	ld   [$cbe3], a                                  ; $5aa5: $ea $e3 $cb
	call HDMAEnqueueNextTextBoxKanji                                       ; $5aa8: $cd $55 $10
	ret                                              ; $5aab: $c9


	ld   hl, $cbe2                                   ; $5aac: $21 $e2 $cb
	ld   a, [hl]                                     ; $5aaf: $7e
	or   a                                           ; $5ab0: $b7
	jr   nz, jr_00a_5adb                             ; $5ab1: $20 $28

	inc  [hl]                                        ; $5ab3: $34
	ld   c, $01                                      ; $5ab4: $0e $01
	ld   de, $8000                                   ; $5ab6: $11 $00 $80
	ld   a, $8d                                      ; $5ab9: $3e $8d
	ld   hl, $7fe0                                   ; $5abb: $21 $e0 $7f
	ld   b, $02                                      ; $5abe: $06 $02
	call EnqueueHDMATransfer                                       ; $5ac0: $cd $7c $02
	ld   a, $0a                                      ; $5ac3: $3e $0a
	ld   hl, $5b1a                                   ; $5ac5: $21 $1a $5b
	ld   de, $c356                                   ; $5ac8: $11 $56 $c3
	ld   bc, $0008                                   ; $5acb: $01 $08 $00
	call FarMemCopy                                       ; $5ace: $cd $b2 $09
	ld   bc, $3c3f                                   ; $5ad1: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5ad4: $cd $aa $04
	xor  a                                           ; $5ad7: $af
	ld   [$cbe3], a                                  ; $5ad8: $ea $e3 $cb

jr_00a_5adb:
	ld   a, [wInGameButtonsHeld]                                  ; $5adb: $fa $0f $c2
	bit  1, a                                        ; $5ade: $cb $4f
	jr   nz, jr_00a_5b0c                             ; $5ae0: $20 $2a

	ld   a, [wInGameButtonsPressed]                                  ; $5ae2: $fa $10 $c2
	bit  0, a                                        ; $5ae5: $cb $47
	jr   nz, jr_00a_5b0c                             ; $5ae7: $20 $23

	ld   hl, $cbe3                                   ; $5ae9: $21 $e3 $cb
	ld   b, $4c                                      ; $5aec: $06 $4c
	ld   a, [hl]                                     ; $5aee: $7e
	inc  [hl]                                        ; $5aef: $34
	srl  a                                           ; $5af0: $cb $3f
	srl  a                                           ; $5af2: $cb $3f
	and  $07                                         ; $5af4: $e6 $07
	ld   h, $00                                      ; $5af6: $26 $00
	ld   l, a                                        ; $5af8: $6f
	ld   de, $5b22                                   ; $5af9: $11 $22 $5b
	add  hl, de                                      ; $5afc: $19
	ld   a, [hl]                                     ; $5afd: $7e
	add  $84                                         ; $5afe: $c6 $84
	ld   c, a                                        ; $5b00: $4f
	ld   a, $01                                      ; $5b01: $3e $01
	ld   [wSpriteGroup], a                                  ; $5b03: $ea $1a $c2
	ld   a, $34                                      ; $5b06: $3e $34
	call LoadSpriteFromMainTable                                       ; $5b08: $cd $16 $0e
	ret                                              ; $5b0b: $c9


jr_00a_5b0c:
	ld   a, $01                                      ; $5b0c: $3e $01
	call Func_1adf                                       ; $5b0e: $cd $df $1a
	ld   hl, $cbe1                                   ; $5b11: $21 $e1 $cb
	inc  [hl]                                        ; $5b14: $34
	xor  a                                           ; $5b15: $af
	ld   [$cbe2], a                                  ; $5b16: $ea $e2 $cb
	ret                                              ; $5b19: $c9


	rst  $38                                         ; $5b1a: $ff
	ld   a, a                                        ; $5b1b: $7f
	rst  $38                                         ; $5b1c: $ff
	ld   a, a                                        ; $5b1d: $7f
	rst  $38                                         ; $5b1e: $ff
	ld   a, a                                        ; $5b1f: $7f
	nop                                              ; $5b20: $00
	nop                                              ; $5b21: $00
	nop                                              ; $5b22: $00
	ld   bc, $0302                                   ; $5b23: $01 $02 $03
	inc  b                                           ; $5b26: $04
	inc  bc                                          ; $5b27: $03
	ld   [bc], a                                     ; $5b28: $02
	ld   bc, $4021                                   ; $5b29: $01 $21 $40
	db   $d3                                         ; $5b2c: $d3
	ld   bc, $02a0                                   ; $5b2d: $01 $a0 $02
	ld   de, $0000                                   ; $5b30: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5b33: $cd $9f $09
	ld   c, $81                                      ; $5b36: $0e $81
	ld   de, $8800                                   ; $5b38: $11 $00 $88
	ld   a, $02                                      ; $5b3b: $3e $02
	ld   hl, $d340                                   ; $5b3d: $21 $40 $d3
	ld   b, $54                                      ; $5b40: $06 $54
	call EnqueueHDMATransfer                                       ; $5b42: $cd $7c $02
	ld   a, $ff                                      ; $5b45: $3e $ff
	ld   [$cbe1], a                                  ; $5b47: $ea $e1 $cb
	ret                                              ; $5b4a: $c9


Func_0a_5b4b::
	push bc                                          ; $5b4b: $c5
	push de                                          ; $5b4c: $d5

; de = l
	ld   d, $00                                      ; $5b4d: $16 $00
	ld   e, l                                        ; $5b4f: $5d

; h = triple idx into table
	ld   b, $00                                      ; $5b50: $06 $00
	ld   c, h                                        ; $5b52: $4c
	ld   hl, .table                                   ; $5b53: $21 $6b $5b
	add  hl, bc                                      ; $5b56: $09
	add  hl, bc                                      ; $5b57: $09
	add  hl, bc                                      ; $5b58: $09

; get bc, then a in table
	ld   a, [hl+]                                    ; $5b59: $2a
	ld   c, a                                        ; $5b5a: $4f
	ld   a, [hl+]                                    ; $5b5b: $2a
	ld   b, a                                        ; $5b5c: $47
	ld   a, [hl-]                                    ; $5b5d: $3a

	push af                                          ; $5b5e: $f5

; hl = bc from table + double orig L above
	ld   h, b                                        ; $5b5f: $60
	ld   l, c                                        ; $5b60: $69
	add  hl, de                                      ; $5b61: $19
	add  hl, de                                      ; $5b62: $19

; get word in hl, and add bc from table
	call FarGetHLinHL                                       ; $5b63: $cd $ee $0a
	add  hl, bc                                      ; $5b66: $09

; return with hl pointing to the data
	pop  af                                          ; $5b67: $f1
	pop  de                                          ; $5b68: $d1
	pop  bc                                          ; $5b69: $c1
	ret                                              ; $5b6a: $c9

.table:
	AddrBank Data_90_5087
	AddrBank Data_90_4e80
	AddrBank Data_90_5118
	AddrBank Data_90_5234
	AddrBank Data_90_5ac9



	ld   c, $01                                      ; $5b7a: $0e $01
	ld   de, $8000                                   ; $5b7c: $11 $00 $80
	ld   a, $8d                                      ; $5b7f: $3e $8d
	ld   hl, $7fe0                                   ; $5b81: $21 $e0 $7f
	ld   b, $02                                      ; $5b84: $06 $02
	call EnqueueHDMATransfer                                       ; $5b86: $cd $7c $02
	ld   a, $0a                                      ; $5b89: $3e $0a
	ld   hl, $5ba2                                   ; $5b8b: $21 $a2 $5b
	ld   de, $c356                                   ; $5b8e: $11 $56 $c3
	ld   bc, $0008                                   ; $5b91: $01 $08 $00
	call FarMemCopy                                       ; $5b94: $cd $b2 $09
	ld   bc, $3c3f                                   ; $5b97: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5b9a: $cd $aa $04
	xor  a                                           ; $5b9d: $af
	ld   [$cbe3], a                                  ; $5b9e: $ea $e3 $cb
	ret                                              ; $5ba1: $c9


	rst  $38                                         ; $5ba2: $ff
	ld   a, a                                        ; $5ba3: $7f
	rst  $38                                         ; $5ba4: $ff
	ld   a, a                                        ; $5ba5: $7f
	rst  $38                                         ; $5ba6: $ff
	ld   a, a                                        ; $5ba7: $7f
	nop                                              ; $5ba8: $00
	nop                                              ; $5ba9: $00
	ld   a, [wInGameButtonsHeld]                                  ; $5baa: $fa $0f $c2
	bit  1, a                                        ; $5bad: $cb $4f
	jr   nz, jr_00a_5bdd                             ; $5baf: $20 $2c

	ld   a, [wInGameButtonsPressed]                                  ; $5bb1: $fa $10 $c2
	bit  0, a                                        ; $5bb4: $cb $47
	jr   nz, jr_00a_5bdd                             ; $5bb6: $20 $25

	ld   hl, $cbe3                                   ; $5bb8: $21 $e3 $cb
	ld   b, $4c                                      ; $5bbb: $06 $4c
	ld   a, [hl]                                     ; $5bbd: $7e
	inc  [hl]                                        ; $5bbe: $34
	srl  a                                           ; $5bbf: $cb $3f
	srl  a                                           ; $5bc1: $cb $3f
	and  $07                                         ; $5bc3: $e6 $07
	ld   h, $00                                      ; $5bc5: $26 $00
	ld   l, a                                        ; $5bc7: $6f
	ld   de, $5be4                                   ; $5bc8: $11 $e4 $5b
	add  hl, de                                      ; $5bcb: $19
	ld   a, [hl]                                     ; $5bcc: $7e
	add  $84                                         ; $5bcd: $c6 $84
	ld   c, a                                        ; $5bcf: $4f
	ld   a, $01                                      ; $5bd0: $3e $01
	ld   [wSpriteGroup], a                                  ; $5bd2: $ea $1a $c2
	ld   a, $34                                      ; $5bd5: $3e $34
	call LoadSpriteFromMainTable                                       ; $5bd7: $cd $16 $0e
	ld   a, $ff                                      ; $5bda: $3e $ff
	ret                                              ; $5bdc: $c9


jr_00a_5bdd:
	ld   a, $01                                      ; $5bdd: $3e $01
	call Func_1adf                                       ; $5bdf: $cd $df $1a
	xor  a                                           ; $5be2: $af
	ret                                              ; $5be3: $c9


	nop                                              ; $5be4: $00
	ld   bc, $0302                                   ; $5be5: $01 $02 $03
	inc  b                                           ; $5be8: $04
	inc  bc                                          ; $5be9: $03
	ld   [bc], a                                     ; $5bea: $02
	db $01 
	
	
GameState35::
	db $fa, $a1
	jp   nz, $ca3d                                   ; $5bee: $c2 $3d $ca

	ei                                               ; $5bf1: $fb
	ld   e, h                                        ; $5bf2: $5c
	dec  a                                           ; $5bf3: $3d
	jp   z, Jump_00a_5d06                            ; $5bf4: $ca $06 $5d

Call_00a_5bf7:
	ld   a, [wWramBank]                                  ; $5bf7: $fa $93 $c2
	push af                                          ; $5bfa: $f5
	ld   a, $07                                      ; $5bfb: $3e $07
	ld   [wWramBank], a                                  ; $5bfd: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c00: $e0 $70
	ld   a, $07                                      ; $5c02: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $5c04: $cd $e0 $1c
	ld   a, $01                                      ; $5c07: $3e $01
	call PlaySound                                       ; $5c09: $cd $92 $1a
	call ClearDisplayRegsAllowVBlankInt                                       ; $5c0c: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $5c0f: $fa $03 $c2
	and  $e0                                         ; $5c12: $e6 $e0
	or   $87                                         ; $5c14: $f6 $87
	ld   [wLCDC], a                                  ; $5c16: $ea $03 $c2
	ldh  [rLCDC], a                                  ; $5c19: $e0 $40
	ld   a, $01                                      ; $5c1b: $3e $01
	ld   hl, $7000                                   ; $5c1d: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5c20: $11 $de $c2
	ld   bc, $0080                                   ; $5c23: $01 $80 $00
	call FarMemCopy                                       ; $5c26: $cd $b2 $09
	ld   bc, $003f                                   ; $5c29: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5c2c: $cd $aa $04
	ld   a, $ff                                      ; $5c2f: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $5c31: $ea $0e $c2
	call ClearOam                                       ; $5c34: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $5c37: $cd $c9 $2e
	ld   a, $ff                                      ; $5c3a: $3e $ff
	ld   [wtodo_VisitedTitleScreen], a                                  ; $5c3c: $ea $01 $c2
	xor  a                                           ; $5c3f: $af
	ld   [wTitleScreenGirlHairAnimIdx], a                                  ; $5c40: $ea $12 $cc
	ld   [wTitleScreenFrameCountForUpdatingMiddleBitTileMapAttr], a                                  ; $5c43: $ea $13 $cc
	ld   [wTitleScreenPressStartAnimCounter], a                                  ; $5c46: $ea $14 $cc
	ld   [wTitleScreenGirlEyesAnimIdx], a                                  ; $5c49: $ea $15 $cc
	xor  a                                           ; $5c4c: $af
	ld   [wTitleScreenCounterForResettingData], a                                  ; $5c4d: $ea $17 $cc
	ld   [wTitleScreenFrameCounter], a                                  ; $5c50: $ea $10 $cc
	ld   [wTitleScreenFrameCounter+1], a                                  ; $5c53: $ea $11 $cc
	ld   a, $06                                      ; $5c56: $3e $06
	ld   [wTitleScreenAnimationStep], a                                  ; $5c58: $ea $02 $cc
	xor  a                                           ; $5c5b: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $5c5c: $ea $03 $cc
	ld   a, $02                                      ; $5c5f: $3e $02
	ld   [wGameSubstate], a                                  ; $5c61: $ea $a1 $c2
	pop  af                                          ; $5c64: $f1
	ld   [wWramBank], a                                  ; $5c65: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c68: $e0 $70
	ret                                              ; $5c6a: $c9


Call_00a_5c6b:
	ld   a, [wTitleScreenFrameCountForUpdatingMiddleBitTileMapAttr]                                  ; $5c6b: $fa $13 $cc
	sub  $01                                         ; $5c6e: $d6 $01
	ld   [wTitleScreenFrameCountForUpdatingMiddleBitTileMapAttr], a                                  ; $5c70: $ea $13 $cc
	jr   nc, jr_00a_5cb3                             ; $5c73: $30 $3e

	ld   a, $04                                      ; $5c75: $3e $04
	ld   [wRandomNumRange], a                                  ; $5c77: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $5c7a: $cd $10 $0d
	add  $0a                                         ; $5c7d: $c6 $0a
	ld   [wTitleScreenFrameCountForUpdatingMiddleBitTileMapAttr], a                                  ; $5c7f: $ea $13 $cc
	ld   a, [wTitleScreenGirlHairAnimIdx]                                  ; $5c82: $fa $12 $cc
	inc  a                                           ; $5c85: $3c
	and  $03                                         ; $5c86: $e6 $03
	ld   [wTitleScreenGirlHairAnimIdx], a                                  ; $5c88: $ea $12 $cc
	ld   h, a                                        ; $5c8b: $67
	ld   l, $c0                                      ; $5c8c: $2e $c0
	call AequHtimesL                                       ; $5c8e: $cd $ac $0b
	push hl                                          ; $5c91: $e5
	ld   bc, $d240                                   ; $5c92: $01 $40 $d2
	add  hl, bc                                      ; $5c95: $09
	ld   a, $07                                      ; $5c96: $3e $07
	ld   b, $0c                                      ; $5c98: $06 $0c
	ld   c, $81                                      ; $5c9a: $0e $81
	ld   de, $9900                                   ; $5c9c: $11 $00 $99
	call EnqueueHDMATransfer                                       ; $5c9f: $cd $7c $02
	pop  hl                                          ; $5ca2: $e1
	ld   bc, $da40                                   ; $5ca3: $01 $40 $da
	add  hl, bc                                      ; $5ca6: $09
	ld   a, $07                                      ; $5ca7: $3e $07
	ld   b, $0c                                      ; $5ca9: $06 $0c
	ld   c, $80                                      ; $5cab: $0e $80
	ld   de, $9900                                   ; $5cad: $11 $00 $99
	call EnqueueHDMATransfer                                       ; $5cb0: $cd $7c $02

jr_00a_5cb3:
	ld   a, $0c                                      ; $5cb3: $3e $0c
	ld   [wSpriteGroup], a                                  ; $5cb5: $ea $1a $c2
	ld   bc, $4040                                   ; $5cb8: $01 $40 $40
	ld   a, [wSCY]                                  ; $5cbb: $fa $08 $c2
	or   a                                           ; $5cbe: $b7
	jr   z, jr_00a_5cc8                              ; $5cbf: $28 $07

	sub  $20                                         ; $5cc1: $d6 $20
	cpl                                              ; $5cc3: $2f
	inc  a                                           ; $5cc4: $3c
	add  $40                                         ; $5cc5: $c6 $40
	ld   c, a                                        ; $5cc7: $4f

jr_00a_5cc8:
	ld   a, $47                                      ; $5cc8: $3e $47
	call LoadSpriteFromMainTable                                       ; $5cca: $cd $16 $0e
	ld   a, [wTitleScreenGirlEyesAnimIdx]                                  ; $5ccd: $fa $15 $cc
	or   a                                           ; $5cd0: $b7
	jr   z, jr_00a_5cdb                              ; $5cd1: $28 $08

	ld   bc, $0040                                   ; $5cd3: $01 $40 $00
	add  $4c                                         ; $5cd6: $c6 $4c
	call LoadSpriteFromMainTable                                       ; $5cd8: $cd $16 $0e

jr_00a_5cdb:
	ld   bc, $0040                                   ; $5cdb: $01 $40 $00
	ld   a, [wTitleScreenGirlHairAnimIdx]                                  ; $5cde: $fa $12 $cc
	add  $48                                         ; $5ce1: $c6 $48
	call LoadSpriteFromMainTable                                       ; $5ce3: $cd $16 $0e
	ld   a, [wTitleScreenGirlEyesAnimIdx]                                  ; $5ce6: $fa $15 $cc
	or   a                                           ; $5ce9: $b7
	ret  nz                                          ; $5cea: $c0

	ld   hl, wTitleScreenPressStartAnimCounter                                   ; $5ceb: $21 $14 $cc
	inc  [hl]                                        ; $5cee: $34
	bit  5, [hl]                                     ; $5cef: $cb $6e
	ret  nz                                          ; $5cf1: $c0

	ld   bc, $7060                                   ; $5cf2: $01 $60 $70
	ld   a, $4c                                      ; $5cf5: $3e $4c
	call LoadSpriteFromMainTable                                       ; $5cf7: $cd $16 $0e
	ret                                              ; $5cfa: $c9


	call Call_00a_5bf7                               ; $5cfb: $cd $f7 $5b
	xor  a                                           ; $5cfe: $af
	ld   [wTitleScreenAnimationStep], a                                  ; $5cff: $ea $02 $cc
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $5d02: $ea $03 $cc
	ret                                              ; $5d05: $c9


Jump_00a_5d06:
	ld   a, [wWramBank]                                  ; $5d06: $fa $93 $c2
	push af                                          ; $5d09: $f5
	ld   a, $07                                      ; $5d0a: $3e $07
	ld   [wWramBank], a                                  ; $5d0c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5d0f: $e0 $70
	call ClearOam                                       ; $5d11: $cd $d7 $0d
	call UpdateSramRandomSeed                                       ; $5d14: $cd $70 $0c
	ld   a, [wTitleScreenFrameCounter]                                  ; $5d17: $fa $10 $cc
	ld   l, a                                        ; $5d1a: $6f
	ld   a, [wTitleScreenFrameCounter+1]                                  ; $5d1b: $fa $11 $cc
	ld   h, a                                        ; $5d1e: $67
	inc  hl                                          ; $5d1f: $23
	ld   a, l                                        ; $5d20: $7d
	ld   [wTitleScreenFrameCounter], a                                  ; $5d21: $ea $10 $cc
	ld   a, h                                        ; $5d24: $7c
	ld   [wTitleScreenFrameCounter+1], a                                  ; $5d25: $ea $11 $cc
	ld   bc, $5d3b                                   ; $5d28: $01 $3b $5d
	push bc                                          ; $5d2b: $c5
	ld   a, [wTitleScreenAnimationStep]                                  ; $5d2c: $fa $02 $cc
	ld   b, $00                                      ; $5d2f: $06 $00
	ld   c, a                                        ; $5d31: $4f
	ld   hl, $5d4e                                   ; $5d32: $21 $4e $5d
	add  hl, bc                                      ; $5d35: $09
	add  hl, bc                                      ; $5d36: $09
	ld   a, [hl+]                                    ; $5d37: $2a
	ld   h, [hl]                                     ; $5d38: $66
	ld   l, a                                        ; $5d39: $6f
	jp   hl                                          ; $5d3a: $e9


	ld   a, [wTitleScreenAnimationStep]                                  ; $5d3b: $fa $02 $cc
	or   a                                           ; $5d3e: $b7
	jr   z, jr_00a_5d47                              ; $5d3f: $28 $06

	call Call_00a_5c6b                               ; $5d41: $cd $6b $5c
	call AnimateAllAnimatedSpriteSpecs                                       ; $5d44: $cd $d3 $2e

jr_00a_5d47:
	pop  af                                          ; $5d47: $f1
	ld   [wWramBank], a                                  ; $5d48: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5d4b: $e0 $70
	ret                                              ; $5d4d: $c9


	ld   h, d                                        ; $5d4e: $62
	ld   e, l                                        ; $5d4f: $5d
	and  d                                           ; $5d50: $a2
	ld   e, [hl]                                     ; $5d51: $5e
	rst  $28                                         ; $5d52: $ef
	ld   e, [hl]                                     ; $5d53: $5e
	ld   d, [hl]                                     ; $5d54: $56
	ld   e, a                                        ; $5d55: $5f
	ld   [hl], l                                     ; $5d56: $75
	ld   e, a                                        ; $5d57: $5f
	add  b                                           ; $5d58: $80
	ld   e, a                                        ; $5d59: $5f
	ld   [$0b60], sp                                 ; $5d5a: $08 $60 $0b
	ld   h, b                                        ; $5d5d: $60
	ld   bc, $6061                                   ; $5d5e: $01 $61 $60
	ld   h, c                                        ; $5d61: $61

Jump_00a_5d62:
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $5d62: $21 $03 $cc
	ld   a, [hl]                                     ; $5d65: $7e
	inc  [hl]                                        ; $5d66: $34
	sla  a                                           ; $5d67: $cb $27
	ld   h, $00                                      ; $5d69: $26 $00
	ld   l, a                                        ; $5d6b: $6f
	ld   bc, $5d74                                   ; $5d6c: $01 $74 $5d
	add  hl, bc                                      ; $5d6f: $09
	ld   a, [hl+]                                    ; $5d70: $2a
	ld   h, [hl]                                     ; $5d71: $66
	ld   l, a                                        ; $5d72: $6f
	jp   hl                                          ; $5d73: $e9


	add  h                                           ; $5d74: $84
	ld   e, l                                        ; $5d75: $5d
	sbc  a                                           ; $5d76: $9f
	ld   e, l                                        ; $5d77: $5d
	cp   d                                           ; $5d78: $ba
	ld   e, l                                        ; $5d79: $5d
	db   $e4                                         ; $5d7a: $e4
	ld   e, l                                        ; $5d7b: $5d
	rst  $38                                         ; $5d7c: $ff
	ld   e, l                                        ; $5d7d: $5d
	add  hl, hl                                      ; $5d7e: $29
	ld   e, [hl]                                     ; $5d7f: $5e
	ld   c, b                                        ; $5d80: $48
	ld   e, [hl]                                     ; $5d81: $5e
	ld   a, e                                        ; $5d82: $7b
	ld   e, [hl]                                     ; $5d83: $5e
	ld   a, $99                                      ; $5d84: $3e $99
	ld   hl, $d000                                   ; $5d86: $21 $00 $d0
	ld   de, $4000                                   ; $5d89: $11 $00 $40
	call RLEXorCopy                                       ; $5d8c: $cd $d2 $09
	ld   c, $80                                      ; $5d8f: $0e $80
	ld   de, $8000                                   ; $5d91: $11 $00 $80
	ld   a, $07                                      ; $5d94: $3e $07
	ld   hl, $d000                                   ; $5d96: $21 $00 $d0
	ld   b, $60                                      ; $5d99: $06 $60
	call EnqueueHDMATransfer                                       ; $5d9b: $cd $7c $02
	ret                                              ; $5d9e: $c9


	ld   a, $95                                      ; $5d9f: $3e $95
	ld   hl, $d800                                   ; $5da1: $21 $00 $d8
	ld   de, $4716                                   ; $5da4: $11 $16 $47
	call RLEXorCopy                                       ; $5da7: $cd $d2 $09
	ld   c, $80                                      ; $5daa: $0e $80
	ld   de, $8600                                   ; $5dac: $11 $00 $86
	ld   a, $07                                      ; $5daf: $3e $07
	ld   hl, $d600                                   ; $5db1: $21 $00 $d6
	ld   b, $60                                      ; $5db4: $06 $60
	call EnqueueHDMATransfer                                       ; $5db6: $cd $7c $02
	ret                                              ; $5db9: $c9


	ld   a, $98                                      ; $5dba: $3e $98
	ld   hl, $d000                                   ; $5dbc: $21 $00 $d0
	ld   de, $720a                                   ; $5dbf: $11 $0a $72
	call RLEXorCopy                                       ; $5dc2: $cd $d2 $09
	ld   c, $80                                      ; $5dc5: $0e $80
	ld   de, $8c00                                   ; $5dc7: $11 $00 $8c
	ld   a, $07                                      ; $5dca: $3e $07
	ld   hl, $dc00                                   ; $5dcc: $21 $00 $dc
	ld   b, $40                                      ; $5dcf: $06 $40
	call EnqueueHDMATransfer                                       ; $5dd1: $cd $7c $02
	ld   c, $80                                      ; $5dd4: $0e $80
	ld   de, $9000                                   ; $5dd6: $11 $00 $90
	ld   a, $07                                      ; $5dd9: $3e $07
	ld   hl, $d000                                   ; $5ddb: $21 $00 $d0
	ld   b, $20                                      ; $5dde: $06 $20
	call EnqueueHDMATransfer                                       ; $5de0: $cd $7c $02
	ret                                              ; $5de3: $c9


	ld   a, $96                                      ; $5de4: $3e $96
	ld   hl, $d800                                   ; $5de6: $21 $00 $d8
	ld   de, $6f6d                                   ; $5de9: $11 $6d $6f
	call RLEXorCopy                                       ; $5dec: $cd $d2 $09
	ld   c, $80                                      ; $5def: $0e $80
	ld   de, $9200                                   ; $5df1: $11 $00 $92
	ld   a, $07                                      ; $5df4: $3e $07
	ld   hl, $d200                                   ; $5df6: $21 $00 $d2
	ld   b, $60                                      ; $5df9: $06 $60
	call EnqueueHDMATransfer                                       ; $5dfb: $cd $7c $02
	ret                                              ; $5dfe: $c9


	ld   a, $a2                                      ; $5dff: $3e $a2
	ld   hl, $d000                                   ; $5e01: $21 $00 $d0
	ld   de, $65d3                                   ; $5e04: $11 $d3 $65
	call RLEXorCopy                                       ; $5e07: $cd $d2 $09
	ld   c, $81                                      ; $5e0a: $0e $81
	ld   de, $8800                                   ; $5e0c: $11 $00 $88
	ld   a, $07                                      ; $5e0f: $3e $07
	ld   hl, $d800                                   ; $5e11: $21 $00 $d8
	ld   b, $40                                      ; $5e14: $06 $40
	call EnqueueHDMATransfer                                       ; $5e16: $cd $7c $02
	ld   c, $81                                      ; $5e19: $0e $81
	ld   de, $9000                                   ; $5e1b: $11 $00 $90
	ld   a, $07                                      ; $5e1e: $3e $07
	ld   hl, $d000                                   ; $5e20: $21 $00 $d0
	ld   b, $18                                      ; $5e23: $06 $18
	call EnqueueHDMATransfer                                       ; $5e25: $cd $7c $02
	ret                                              ; $5e28: $c9


	ld   c, $81                                      ; $5e29: $0e $81
	ld   de, $8c00                                   ; $5e2b: $11 $00 $8c
	ld   a, $07                                      ; $5e2e: $3e $07
	ld   hl, $dc00                                   ; $5e30: $21 $00 $dc
	ld   b, $40                                      ; $5e33: $06 $40
	call EnqueueHDMATransfer                                       ; $5e35: $cd $7c $02
	ld   c, $81                                      ; $5e38: $0e $81
	ld   de, $9180                                   ; $5e3a: $11 $80 $91
	ld   a, $07                                      ; $5e3d: $3e $07
	ld   hl, $d180                                   ; $5e3f: $21 $80 $d1
	ld   b, $18                                      ; $5e42: $06 $18
	call EnqueueHDMATransfer                                       ; $5e44: $cd $7c $02
	ret                                              ; $5e47: $c9


	ld   a, $96                                      ; $5e48: $3e $96
	ld   de, $7600                                   ; $5e4a: $11 $00 $76
	ld   bc, $142a                                   ; $5e4d: $01 $2a $14
	ld   hl, $d000                                   ; $5e50: $21 $00 $d0
	call FarCopyLayout                                       ; $5e53: $cd $2c $0b
	ld   hl, $d800                                   ; $5e56: $21 $00 $d8
	call FarCopyLayout                                       ; $5e59: $cd $2c $0b
	ld   c, $81                                      ; $5e5c: $0e $81
	ld   de, $9800                                   ; $5e5e: $11 $00 $98
	ld   a, $07                                      ; $5e61: $3e $07
	ld   hl, $d000                                   ; $5e63: $21 $00 $d0
	ld   b, $24                                      ; $5e66: $06 $24
	call EnqueueHDMATransfer                                       ; $5e68: $cd $7c $02
	ld   c, $81                                      ; $5e6b: $0e $81
	ld   de, $9900                                   ; $5e6d: $11 $00 $99
	ld   a, $07                                      ; $5e70: $3e $07
	ld   hl, $d240                                   ; $5e72: $21 $40 $d2
	ld   b, $0c                                      ; $5e75: $06 $0c
	call EnqueueHDMATransfer                                       ; $5e77: $cd $7c $02
	ret                                              ; $5e7a: $c9


	ld   c, $80                                      ; $5e7b: $0e $80
	ld   de, $9800                                   ; $5e7d: $11 $00 $98
	ld   a, $07                                      ; $5e80: $3e $07
	ld   hl, $d800                                   ; $5e82: $21 $00 $d8
	ld   b, $24                                      ; $5e85: $06 $24
	call EnqueueHDMATransfer                                       ; $5e87: $cd $7c $02
	ld   c, $80                                      ; $5e8a: $0e $80
	ld   de, $9900                                   ; $5e8c: $11 $00 $99
	ld   a, $07                                      ; $5e8f: $3e $07
	ld   hl, $da40                                   ; $5e91: $21 $40 $da
	ld   b, $0c                                      ; $5e94: $06 $0c
	call EnqueueHDMATransfer                                       ; $5e96: $cd $7c $02
	ld   hl, wTitleScreenAnimationStep                                   ; $5e99: $21 $02 $cc
	inc  [hl]                                        ; $5e9c: $34
	xor  a                                           ; $5e9d: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $5e9e: $ea $03 $cc
	ret                                              ; $5ea1: $c9


	ld   a, [wTitleScreenMiscCounterIdx]                                  ; $5ea2: $fa $03 $cc
	or   a                                           ; $5ea5: $b7
	jr   nz, jr_00a_5ec0                             ; $5ea6: $20 $18

	xor  a                                           ; $5ea8: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5ea9: $ea $62 $c3
	ld   a, $40                                      ; $5eac: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5eae: $ea $63 $c3
	ld   a, $03                                      ; $5eb1: $3e $03
	ld   b, $00                                      ; $5eb3: $06 $00
	ld   hl, wBGPalettes                                   ; $5eb5: $21 $de $c2
	ld   c, $a3                                      ; $5eb8: $0e $a3
	ld   de, $6e4c                                   ; $5eba: $11 $4c $6e
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5ebd: $cd $48 $07

jr_00a_5ec0:
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $5ec0: $21 $03 $cc
	ld   a, [hl]                                     ; $5ec3: $7e
	inc  [hl]                                        ; $5ec4: $34
	cp   $1f                                         ; $5ec5: $fe $1f
	jr   nc, jr_00a_5ed2                             ; $5ec7: $30 $09

	and  $03                                         ; $5ec9: $e6 $03
	ret  nz                                          ; $5ecb: $c0

	ld   bc, $0040                                   ; $5ecc: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $5ecf: $c3 $32 $08


jr_00a_5ed2:
	ld   a, $a3                                      ; $5ed2: $3e $a3
	ld   hl, $6e4c                                   ; $5ed4: $21 $4c $6e
	ld   de, wBGPalettes                                   ; $5ed7: $11 $de $c2
	ld   bc, $0080                                   ; $5eda: $01 $80 $00
	call FarMemCopy                                       ; $5edd: $cd $b2 $09
	ld   bc, $003f                                   ; $5ee0: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5ee3: $cd $aa $04

Jump_00a_5ee6:
	ld   hl, wTitleScreenAnimationStep                                   ; $5ee6: $21 $02 $cc
	inc  [hl]                                        ; $5ee9: $34
	xor  a                                           ; $5eea: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $5eeb: $ea $03 $cc
	ret                                              ; $5eee: $c9


	ld   a, [wTitleScreenFrameCounter+1]                                  ; $5eef: $fa $11 $cc
	cp   $04                                         ; $5ef2: $fe $04
	jr   c, jr_00a_5f0c                              ; $5ef4: $38 $16

	ld   a, [wTitleScreenFrameCounter]                                  ; $5ef6: $fa $10 $cc
	cp   $38                                         ; $5ef9: $fe $38
	jr   c, jr_00a_5f0c                              ; $5efb: $38 $0f

	ld   a, $47                                      ; $5efd: $3e $47
	ld   [$cc04], a                                  ; $5eff: $ea $04 $cc
	ld   a, $05                                      ; $5f02: $3e $05
	ld   [wTitleScreenAnimationStep], a                                  ; $5f04: $ea $02 $cc
	xor  a                                           ; $5f07: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $5f08: $ea $03 $cc
	ret                                              ; $5f0b: $c9


jr_00a_5f0c:
	ld   hl, wTitleScreenCounterForResettingData                                   ; $5f0c: $21 $17 $cc
	ld   a, [hl]                                     ; $5f0f: $7e
	cp   $05                                         ; $5f10: $fe $05
	jr   c, jr_00a_5f32                              ; $5f12: $38 $1e

	ld   a, $21                                      ; $5f14: $3e $21
	call Func_1adf                                       ; $5f16: $cd $df $1a
	ld   h, $02                                      ; $5f19: $26 $02
	ld   l, $00                                      ; $5f1b: $2e $00
	push af                                          ; $5f1d: $f5
	ld   a, $df                                      ; $5f1e: $3e $df
	ld   [wFarCallAddr], a                                  ; $5f20: $ea $98 $c2
	ld   a, $41                                      ; $5f23: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5f25: $ea $99 $c2
	ld   a, $3e                                      ; $5f28: $3e $3e
	ld   [wFarCallBank], a                                  ; $5f2a: $ea $9a $c2
	pop  af                                          ; $5f2d: $f1
	call FarCall                                       ; $5f2e: $cd $62 $09
	ret                                              ; $5f31: $c9


jr_00a_5f32:
	ld   a, [wInGameButtonsHeld]                                  ; $5f32: $fa $0f $c2
	and  $60                                         ; $5f35: $e6 $60
	cp   $60                                         ; $5f37: $fe $60
	jr   nz, jr_00a_5f43                             ; $5f39: $20 $08

	ld   a, [wInGameButtonsPressed]                                  ; $5f3b: $fa $10 $c2
	bit  2, a                                        ; $5f3e: $cb $57
	jr   z, jr_00a_5f43                              ; $5f40: $28 $01

	inc  [hl]                                        ; $5f42: $34

jr_00a_5f43:
	ld   a, [wInGameButtonsPressed]                                  ; $5f43: $fa $10 $c2
	and  $09                                         ; $5f46: $e6 $09
	ret  z                                           ; $5f48: $c8

	ld   a, $21                                      ; $5f49: $3e $21
	call Func_1adf                                       ; $5f4b: $cd $df $1a
	ld   a, $37                                      ; $5f4e: $3e $37
	ld   [$cc04], a                                  ; $5f50: $ea $04 $cc
	jp   Jump_00a_5ee6                               ; $5f53: $c3 $e6 $5e


	ld   hl, wTitleScreenMiscCounterIdx                                   ; $5f56: $21 $03 $cc
	ld   a, [hl]                                     ; $5f59: $7e
	inc  [hl]                                        ; $5f5a: $34
	ld   h, $00                                      ; $5f5b: $26 $00
	ld   l, a                                        ; $5f5d: $6f
	ld   bc, $5f6c                                   ; $5f5e: $01 $6c $5f
	add  hl, bc                                      ; $5f61: $09
	ld   a, [hl]                                     ; $5f62: $7e
	ld   [wTitleScreenGirlEyesAnimIdx], a                                  ; $5f63: $ea $15 $cc
	cp   $02                                         ; $5f66: $fe $02
	jp   nc, Jump_00a_5ee6                           ; $5f68: $d2 $e6 $5e

	ret                                              ; $5f6b: $c9


	ld   bc, $0101                                   ; $5f6c: $01 $01 $01
	ld   bc, $0101                                   ; $5f6f: $01 $01 $01
	ld   bc, $0201                                   ; $5f72: $01 $01 $02
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $5f75: $21 $03 $cc
	ld   a, [hl]                                     ; $5f78: $7e
	inc  [hl]                                        ; $5f79: $34
	cp   $28                                         ; $5f7a: $fe $28
	jp   nc, Jump_00a_5ee6                           ; $5f7c: $d2 $e6 $5e

	ret                                              ; $5f7f: $c9


	ld   a, [wTitleScreenMiscCounterIdx]                                  ; $5f80: $fa $03 $cc
	or   a                                           ; $5f83: $b7
	jr   nz, jr_00a_5f9e                             ; $5f84: $20 $18

	xor  a                                           ; $5f86: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5f87: $ea $62 $c3
	ld   a, $40                                      ; $5f8a: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5f8c: $ea $63 $c3
	ld   a, $03                                      ; $5f8f: $3e $03
	ld   b, $00                                      ; $5f91: $06 $00
	ld   hl, wBGPalettes                                   ; $5f93: $21 $de $c2
	ld   c, $01                                      ; $5f96: $0e $01
	ld   de, $7000                                   ; $5f98: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5f9b: $cd $48 $07

jr_00a_5f9e:
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $5f9e: $21 $03 $cc
	ld   a, [$cc04]                                  ; $5fa1: $fa $04 $cc
	cp   $47                                         ; $5fa4: $fe $47
	jr   nz, jr_00a_5fb3                             ; $5fa6: $20 $0b

	ld   a, [hl]                                     ; $5fa8: $7e
	cpl                                              ; $5fa9: $2f
	srl  a                                           ; $5faa: $cb $3f
	srl  a                                           ; $5fac: $cb $3f
	and  $07                                         ; $5fae: $e6 $07
	call SafeSetAudVolForMultipleChannels                                       ; $5fb0: $cd $e0 $1c

jr_00a_5fb3:
	ld   a, [hl]                                     ; $5fb3: $7e
	inc  [hl]                                        ; $5fb4: $34
	cp   $1f                                         ; $5fb5: $fe $1f
	jr   nc, jr_00a_5fc2                             ; $5fb7: $30 $09

	and  $03                                         ; $5fb9: $e6 $03
	ret  nz                                          ; $5fbb: $c0

	ld   bc, $0040                                   ; $5fbc: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $5fbf: $c3 $32 $08

jr_00a_5fc2:
	ld   a, $01                                      ; $5fc2: $3e $01
	ld   hl, $7000                                   ; $5fc4: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5fc7: $11 $de $c2
	ld   bc, $0080                                   ; $5fca: $01 $80 $00
	call FarMemCopy                                       ; $5fcd: $cd $b2 $09
	ld   bc, $003f                                   ; $5fd0: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5fd3: $cd $aa $04
	ld   a, [$cc04]                                  ; $5fd6: $fa $04 $cc
	cp   $37                                         ; $5fd9: $fe $37
	jr   nz, jr_00a_5fe7                             ; $5fdb: $20 $0a

	ld   a, $37                                      ; $5fdd: $3e $37
	ld   [wGameState], a                                  ; $5fdf: $ea $a0 $c2
	xor  a                                           ; $5fe2: $af
	ld   [wGameSubstate], a                                  ; $5fe3: $ea $a1 $c2
	ret                                              ; $5fe6: $c9

jr_00a_5fe7:
	xor  a                                           ; $5fe7: $af
	call PlaySound                                       ; $5fe8: $cd $92 $1a
	ld   h, $35                                      ; $5feb: $26 $35
	ld   l, $01                                      ; $5fed: $2e $01
	ld   bc, $0006                                   ; $5fef: $01 $06 $00
	xor  a                                           ; $5ff2: $af

	M_FarCall InitSpecialScript
	ret                                              ; $6007: $c9


;
	jp   Jump_00a_5d62                               ; $6008: $c3 $62 $5d


	ld   hl, wTitleScreenMiscCounterIdx                                   ; $600b: $21 $03 $cc
	ld   a, [hl]                                     ; $600e: $7e
	inc  [hl]                                        ; $600f: $34
	sla  a                                           ; $6010: $cb $27
	ld   h, $00                                      ; $6012: $26 $00
	ld   l, a                                        ; $6014: $6f
	ld   bc, $601d                                   ; $6015: $01 $1d $60
	add  hl, bc                                      ; $6018: $09
	ld   a, [hl+]                                    ; $6019: $2a
	ld   h, [hl]                                     ; $601a: $66
	ld   l, a                                        ; $601b: $6f
	jp   hl                                          ; $601c: $e9


	inc  hl                                          ; $601d: $23
	ld   h, b                                        ; $601e: $60
	ld   h, b                                        ; $601f: $60
	ld   h, b                                        ; $6020: $60
	sub  a                                           ; $6021: $97
	ld   h, b                                        ; $6022: $60
	ld   c, $81                                      ; $6023: $0e $81
	ld   de, $9c00                                   ; $6025: $11 $00 $9c
	ld   a, $07                                      ; $6028: $3e $07
	ld   hl, $d1c0                                   ; $602a: $21 $c0 $d1
	ld   b, $08                                      ; $602d: $06 $08
	call EnqueueHDMATransfer                                       ; $602f: $cd $7c $02
	ld   c, $80                                      ; $6032: $0e $80
	ld   de, $9c00                                   ; $6034: $11 $00 $9c
	ld   a, $07                                      ; $6037: $3e $07
	ld   hl, $d9c0                                   ; $6039: $21 $c0 $d9
	ld   b, $08                                      ; $603c: $06 $08
	call EnqueueHDMATransfer                                       ; $603e: $cd $7c $02
	ld   c, $81                                      ; $6041: $0e $81
	ld   de, $9c80                                   ; $6043: $11 $80 $9c
	ld   a, $07                                      ; $6046: $3e $07
	ld   hl, $d000                                   ; $6048: $21 $00 $d0
	ld   b, $10                                      ; $604b: $06 $10
	call EnqueueHDMATransfer                                       ; $604d: $cd $7c $02
	ld   c, $80                                      ; $6050: $0e $80
	ld   de, $9c80                                   ; $6052: $11 $80 $9c
	ld   a, $07                                      ; $6055: $3e $07
	ld   hl, $d800                                   ; $6057: $21 $00 $d8
	ld   b, $10                                      ; $605a: $06 $10
	call EnqueueHDMATransfer                                       ; $605c: $cd $7c $02
	ret                                              ; $605f: $c9


	ld   hl, $d600                                   ; $6060: $21 $00 $d6
	ld   bc, $0100                                   ; $6063: $01 $00 $01
	ld   de, $0000                                   ; $6066: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $6069: $cd $9f $09
	ld   hl, $de00                                   ; $606c: $21 $00 $de
	ld   bc, $0100                                   ; $606f: $01 $00 $01
	ld   de, $8080                                   ; $6072: $11 $80 $80
	call CopyEthenDintoHL_BCtimes                                       ; $6075: $cd $9f $09
	ld   c, $81                                      ; $6078: $0e $81
	ld   de, $9d80                                   ; $607a: $11 $80 $9d
	ld   a, $07                                      ; $607d: $3e $07
	ld   hl, $d600                                   ; $607f: $21 $00 $d6
	ld   b, $20                                      ; $6082: $06 $20
	call EnqueueHDMATransfer                                       ; $6084: $cd $7c $02
	ld   c, $80                                      ; $6087: $0e $80
	ld   de, $9d80                                   ; $6089: $11 $80 $9d
	ld   a, $07                                      ; $608c: $3e $07
	ld   hl, $de00                                   ; $608e: $21 $00 $de
	ld   b, $20                                      ; $6091: $06 $20
	call EnqueueHDMATransfer                                       ; $6093: $cd $7c $02
	ret                                              ; $6096: $c9


	ld   c, $81                                      ; $6097: $0e $81
	ld   de, $9f80                                   ; $6099: $11 $80 $9f
	ld   a, $07                                      ; $609c: $3e $07
	ld   hl, $d600                                   ; $609e: $21 $00 $d6
	ld   b, $08                                      ; $60a1: $06 $08
	call EnqueueHDMATransfer                                       ; $60a3: $cd $7c $02
	ld   c, $80                                      ; $60a6: $0e $80
	ld   de, $9f80                                   ; $60a8: $11 $80 $9f
	ld   a, $07                                      ; $60ab: $3e $07
	ld   hl, $de00                                   ; $60ad: $21 $00 $de
	ld   b, $08                                      ; $60b0: $06 $08
	call EnqueueHDMATransfer                                       ; $60b2: $cd $7c $02
	ld   a, $a3                                      ; $60b5: $3e $a3
	ld   hl, $6e4c                                   ; $60b7: $21 $4c $6e
	ld   de, wBGPalettes                                   ; $60ba: $11 $de $c2
	ld   bc, $0080                                   ; $60bd: $01 $80 $00
	call FarMemCopy                                       ; $60c0: $cd $b2 $09
	ld   bc, $003f                                   ; $60c3: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $60c6: $cd $aa $04
	ld   hl, $c306                                   ; $60c9: $21 $06 $c3
	ld   bc, $000c                                   ; $60cc: $01 $0c $00
	ld   de, $7fff                                   ; $60cf: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $60d2: $cd $9f $09
	ld   hl, $c336                                   ; $60d5: $21 $36 $c3
	ld   bc, $0010                                   ; $60d8: $01 $10 $00
	ld   de, $7fff                                   ; $60db: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $60de: $cd $9f $09
	ld   a, [wLCDC]                                  ; $60e1: $fa $03 $c2
	or   $68                                         ; $60e4: $f6 $68
	ld   [wLCDC], a                                  ; $60e6: $ea $03 $c2
	ld   a, $60                                      ; $60e9: $3e $60
	ld   [wSCY], a                                  ; $60eb: $ea $08 $c2
	ld   a, $07                                      ; $60ee: $3e $07
	ld   [wWX], a                                  ; $60f0: $ea $09 $c2
	ld   a, $90                                      ; $60f3: $3e $90
	ld   [wWY], a                                  ; $60f5: $ea $0a $c2
	ld   hl, wTitleScreenAnimationStep                                   ; $60f8: $21 $02 $cc
	inc  [hl]                                        ; $60fb: $34
	xor  a                                           ; $60fc: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $60fd: $ea $03 $cc
	ret                                              ; $6100: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $6101: $fa $10 $c2
	and  $0b                                         ; $6104: $e6 $0b
	jr   z, jr_00a_6132                              ; $6106: $28 $2a

	ld   a, [wLCDC]                                  ; $6108: $fa $03 $c2
	and  $97                                         ; $610b: $e6 $97
	ld   [wLCDC], a                                  ; $610d: $ea $03 $c2
	xor  a                                           ; $6110: $af
	ld   [wSCY], a                                  ; $6111: $ea $08 $c2
	ld   a, $a3                                      ; $6114: $3e $a3
	ld   hl, $6e4c                                   ; $6116: $21 $4c $6e
	ld   de, wBGPalettes                                   ; $6119: $11 $de $c2
	ld   bc, $0080                                   ; $611c: $01 $80 $00
	call FarMemCopy                                       ; $611f: $cd $b2 $09
	ld   bc, $003f                                   ; $6122: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6125: $cd $aa $04
	ld   a, $02                                      ; $6128: $3e $02
	ld   [wTitleScreenAnimationStep], a                                  ; $612a: $ea $02 $cc
	xor  a                                           ; $612d: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $612e: $ea $03 $cc
	ret                                              ; $6131: $c9


jr_00a_6132:
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $6132: $21 $03 $cc
	ld   a, [hl]                                     ; $6135: $7e
	inc  [hl]                                        ; $6136: $34
	cp   $40                                         ; $6137: $fe $40
	jr   nc, jr_00a_614b                             ; $6139: $30 $10

	ld   b, a                                        ; $613b: $47
	ld   a, $60                                      ; $613c: $3e $60
	sub  b                                           ; $613e: $90
	ld   [wSCY], a                                  ; $613f: $ea $08 $c2
	srl  b                                           ; $6142: $cb $38
	ld   a, $90                                      ; $6144: $3e $90
	sub  b                                           ; $6146: $90
	ld   [wWY], a                                  ; $6147: $ea $0a $c2
	ret                                              ; $614a: $c9


jr_00a_614b:
	ld   a, [wLCDC]                                  ; $614b: $fa $03 $c2
	and  $97                                         ; $614e: $e6 $97
	ld   [wLCDC], a                                  ; $6150: $ea $03 $c2
	xor  a                                           ; $6153: $af
	ld   [wSCY], a                                  ; $6154: $ea $08 $c2
	ld   hl, wTitleScreenAnimationStep                                   ; $6157: $21 $02 $cc
	inc  [hl]                                        ; $615a: $34
	xor  a                                           ; $615b: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $615c: $ea $03 $cc
	ret                                              ; $615f: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $6160: $fa $10 $c2
	and  $0b                                         ; $6163: $e6 $0b
	jr   nz, jr_00a_6197                             ; $6165: $20 $30

	ld   a, [wTitleScreenMiscCounterIdx]                                  ; $6167: $fa $03 $cc
	or   a                                           ; $616a: $b7
	jr   nz, jr_00a_6185                             ; $616b: $20 $18

	xor  a                                           ; $616d: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $616e: $ea $62 $c3
	ld   a, $40                                      ; $6171: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6173: $ea $63 $c3
	ld   a, $03                                      ; $6176: $3e $03
	ld   b, $00                                      ; $6178: $06 $00
	ld   hl, wBGPalettes                                   ; $617a: $21 $de $c2
	ld   c, $a3                                      ; $617d: $0e $a3
	ld   de, $6e4c                                   ; $617f: $11 $4c $6e
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6182: $cd $48 $07

jr_00a_6185:
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $6185: $21 $03 $cc
	ld   a, [hl]                                     ; $6188: $7e
	inc  [hl]                                        ; $6189: $34
	cp   $3f                                         ; $618a: $fe $3f
	jr   nc, jr_00a_6197                             ; $618c: $30 $09

	and  $07                                         ; $618e: $e6 $07
	ret  nz                                          ; $6190: $c0

	ld   bc, $0040                                   ; $6191: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $6194: $c3 $32 $08


jr_00a_6197:
	ld   a, $a3                                      ; $6197: $3e $a3
	ld   hl, $6e4c                                   ; $6199: $21 $4c $6e
	ld   de, wBGPalettes                                   ; $619c: $11 $de $c2
	ld   bc, $0080                                   ; $619f: $01 $80 $00
	call FarMemCopy                                       ; $61a2: $cd $b2 $09
	ld   bc, $003f                                   ; $61a5: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $61a8: $cd $aa $04
	ld   a, $02                                      ; $61ab: $3e $02
	ld   [wTitleScreenAnimationStep], a                                  ; $61ad: $ea $02 $cc
	xor  a                                           ; $61b0: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $61b1: $ea $03 $cc
	ret                                              ; $61b4: $c9


GameState36_TitleScreen::
; Branch based on substate (1 is unused)
	ld   a, [wGameSubstate]                                         ; $61b5
	dec  a                                                          ; $61b8
	jp   z, TitleScreenSubstate1_ResetState                         ; $61b9

	dec  a                                                          ; $61bc
	jp   z, TitleScreenSubstate2_Main                               ; $61bd

TitleScreenSubstate0:
; Set ram bank of buffers
	ld   a, [wWramBank]                                             ; $61c0
	push af                                                         ; $61c3

	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $61c4
	ld   [wWramBank], a                                             ; $61c6
	ldh  [rSVBK], a                                                 ; $61c9

; Set maximum volume, and play a sound
	ld   a, $07                                                     ; $61cb
	call SafeSetAudVolForMultipleChannels                           ; $61cd

	ld   a, SND_01                                                  ; $61d0
	call PlaySound                                                  ; $61d2

; Clear display regs, allow vblank, retain window and display obj+bg
	call ClearDisplayRegsAllowVBlankInt                             ; $61d5

	ld   a, [wLCDC]                                                 ; $61d8
	and  LCDCF_ON|LCDCF_WIN9C00|LCDCF_WINON                         ; $61db
	or   LCDCF_ON|LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON                ; $61dd
	ld   [wLCDC], a                                                 ; $61df
	ldh  [rLCDC], a                                                 ; $61e2

; Clear palettes and update BG pals
	ld   a, BANK(Palettes_AllWhite)                                 ; $61e4
	ld   hl, Palettes_AllWhite                                      ; $61e6
	ld   de, wBGandOBJPalettes                                      ; $61e9
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $61ec
	call FarMemCopy                                                 ; $61ef

	ld   bc, $003f                                                  ; $61f2
	call SetBGandOBJPaletteRangesToUpdate                           ; $61f5

; Allow inputs and clear oam
	ld   a, $ff                                                     ; $61f8
	ld   [wInGameInputsEnabled], a                                  ; $61fa
	call ClearOam                                                   ; $61fd

;
	call ClearBaseAnimSpriteSpecDetails                                       ; $6200: $cd $c9 $2e

	ld   a, $ff                                      ; $6203: $3e $ff
	ld   [wtodo_VisitedTitleScreen], a                                  ; $6205: $ea $01 $c2

; Initial counter before having girl blink is $f0-$ff
	ld   a, $10                                                     ; $6208
	ld   [wRandomNumRange], a                                       ; $620a

	call GetRandomNumInPreSpecifiedRange                            ; $620d
	add  $f0                                                        ; $6210
	ld   [wTitleScreenCounterBetweenBlinkAnimIdxes], a              ; $6212

; Clear idxes and counters
	xor  a                                                          ; $6215
	ld   [wTitleScreenGirlHairAnimIdx], a                           ; $6216
	ld   [wTitleScreenFrameCountForUpdatingMiddleBitTileMapAttr], a ; $6219
	ld   [wTitleScreenPressStartAnimCounter], a                     ; $621c
	ld   [wTitleScreenGirlEyesAnimIdx], a                           ; $621f
	ld   [wTitleScreenCounterForResettingData], a                   ; $6222
	ld   [wTitleScreenFrameCounter], a                              ; $6225
	ld   [wTitleScreenFrameCounter+1], a                            ; $6228

; Start title screen animation from an alternative init
	ld   a, $05                                                     ; $622b
	ld   [wTitleScreenAnimationStep], a                             ; $622d
	xor  a                                                          ; $6230
	ld   [wTitleScreenMiscCounterIdx], a                            ; $6231

; Set next substate and restore ram bank
	ld   a, $02                                                     ; $6234
	ld   [wGameSubstate], a                                         ; $6236

	pop  af                                                         ; $6239
	ld   [wWramBank], a                                             ; $623a
	ldh  [rSVBK], a                                                 ; $623d
	ret                                                             ; $623f


ProcessTitleScreenAnimations:
; Dec counter for updating tile map+attr for middle bit, jumping if not breached 0
	ld   a, [wTitleScreenFrameCountForUpdatingMiddleBitTileMapAttr] ; $6240
	sub  $01                                                        ; $6243
	ld   [wTitleScreenFrameCountForUpdatingMiddleBitTileMapAttr], a ; $6245

	jr   nc, .afterMiddleBitTileMapAndAttr                          ; $6248

; Once breached 0, get a new counter from $0a-$0d
	ld   a, $04                                                     ; $624a
	ld   [wRandomNumRange], a                                       ; $624c

	call GetRandomNumInPreSpecifiedRange                            ; $624f
	add  $0a                                                        ; $6252
	ld   [wTitleScreenFrameCountForUpdatingMiddleBitTileMapAttr], a ; $6254

; Loop anim idx between 0 -> 3
	ld   a, [wTitleScreenGirlHairAnimIdx]                           ; $6257
	inc  a                                                          ; $625a
	and  $03                                                        ; $625b
	ld   [wTitleScreenGirlHairAnimIdx], a                           ; $625d

; It is 6 rows high
	ld   h, a                                                       ; $6260
	ld   l, SCRN_VX_B * 6                                           ; $6261
	call AequHtimesL                                                ; $6263
	push hl                                                         ; $6266

; The 4 6-row tile attr data is in the buffer after main title screen + copyright
	ld   bc, wTitleScreenTileAttrBuffer+$240                        ; $6267
	add  hl, bc                                                     ; $626a
	ld   a, BANK(wTitleScreenTileAttrBuffer)                        ; $626b
	ld   b, SCRN_VX_B*6/$10                                         ; $626d
	ld   c, $81                                                     ; $626f
	ld   de, _SCRN0+$100                                            ; $6271
	call EnqueueHDMATransfer                                        ; $6274

; Repeat above with tile map
	pop  hl                                                         ; $6277
	ld   bc, wTitleScreenTileMapBuffer+$240                         ; $6278
	add  hl, bc                                                     ; $627b
	ld   a, BANK(wTitleScreenTileMapBuffer)                         ; $627c
	ld   b, SCRN_VX_B*6/$10                                         ; $627e
	ld   c, $80                                                     ; $6280
	ld   de, _SCRN0+$100                                            ; $6282
	call EnqueueHDMATransfer                                        ; $6285

.afterMiddleBitTileMapAndAttr:
; Set sprite group for logo, girl hair + eyes
	ld   a, SG_C                                                    ; $6288
	ld   [wSpriteGroup], a                                          ; $628a

; Display logo by default from $40, $40, except if scrolling in..
	ldbc $40, $40                                                   ; $628d
	ld   a, [wSCY]                                                  ; $6290
	or   a                                                          ; $6293
	jr   z, .afterLogoSpriteY                                       ; $6294

; Otherwise Y = $40-(SCY-$20) (when scrolling, logo is at SCY=$20)
	sub  $20                                                        ; $6296
	cpl                                                             ; $6298
	inc  a                                                          ; $6299
	add  $40                                                        ; $629a
	ld   c, a                                                       ; $629c

.afterLogoSpriteY:
; Load sprites to fill in title screen logo (incl. Sakura Wars text)
	ld   a, SGC_TITLE_SCREEN_LOGO                                   ; $629d
	call LoadSpriteFromMainTable                                    ; $629f

; Load sprites to fill in animated girl
	ldbc $00, $40                                                   ; $62a2
	ld   a, [wTitleScreenGirlHairAnimIdx]                           ; $62a5
	add  SGC_TITLE_SCREEN_GIRL_HAIR1                                ; $62a8
	call LoadSpriteFromMainTable                                    ; $62aa

; Dec counter, skipping changing anim if non-0
	ld   hl, wTitleScreenCounterBetweenBlinkAnimIdxes               ; $62ad
	dec  [hl]                                                       ; $62b0
	jr   nz, .updateEyes                                            ; $62b1

	ld   a, $06                                                     ; $62b3
	ld   [wTitleScreenCounterBetweenBlinkAnimIdxes], a              ; $62b5

; Change eyes anim idx, skipping below if in the process of blinking
	ld   a, [wTitleScreenGirlEyesAnimIdx]                           ; $62b8
	inc  a                                                          ; $62bb
	and  $03                                                        ; $62bc
	ld   [wTitleScreenGirlEyesAnimIdx], a                           ; $62be

	jr   nz, .updateEyes                                            ; $62c1

; Blink in $f0-$ff frames
	ld   a, $10                                                     ; $62c3
	ld   [wRandomNumRange], a                                       ; $62c5

	call GetRandomNumInPreSpecifiedRange                            ; $62c8
	add  $f0                                                        ; $62cb
	ld   [wTitleScreenCounterBetweenBlinkAnimIdxes], a              ; $62cd

.updateEyes:
; HL points to current eyes spec idx
	ld   a, [wTitleScreenGirlEyesAnimIdx]                           ; $62d0
	ld   h, $00                                                     ; $62d3
	ld   l, a                                                       ; $62d5
	ld   bc, .eyeSpecIdxes                                          ; $62d6
	add  hl, bc                                                     ; $62d9

; Update sprite
	ld   a, [hl]                                                    ; $62da
	ldbc $00, $40                                                   ; $62db
	call LoadSpriteFromMainTable                                    ; $62de
	ret                                                             ; $62e1

.eyeSpecIdxes:
	db SGC_TITLE_SCREEN_GIRL_EYES1
	db SGC_TITLE_SCREEN_GIRL_EYES2
	db SGC_TITLE_SCREEN_GIRL_EYES3
	db SGC_TITLE_SCREEN_GIRL_EYES2


TitleScreenSubstate1_ResetState:
; Start from 1st substate, and reset idxs for data load/animation
	call TitleScreenSubstate0                                       ; $62e6
	
	xor  a                                                          ; $62e9
	ld   [wTitleScreenAnimationStep], a                             ; $62ea
	ld   [wTitleScreenMiscCounterIdx], a                            ; $62ed
	ret                                                             ; $62f0


TitleScreenSubstate2_Main:
; Set ram bank to buffer for tile data + screen data
	ld   a, [wWramBank]                                             ; $62f1
	push af                                                         ; $62f4

	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $62f5
	ld   [wWramBank], a                                             ; $62f7
	ldh  [rSVBK], a                                                 ; $62fa

; Clear oam and update random seed
	call ClearOam                                                   ; $62fc
	call UpdateSramRandomSeed                                       ; $62ff

; Inc frame counter for this state
	ld   a, [wTitleScreenFrameCounter]                              ; $6302
	ld   l, a                                                       ; $6305
	ld   a, [wTitleScreenFrameCounter+1]                            ; $6306
	ld   h, a                                                       ; $6309

	inc  hl                                                         ; $630a

	ld   a, l                                                       ; $630b
	ld   [wTitleScreenFrameCounter], a                              ; $630c
	ld   a, h                                                       ; $630f
	ld   [wTitleScreenFrameCounter+1], a                            ; $6310

; Push address to return to
	ld   bc, .return                                                ; $6313
	push bc                                                         ; $6316

; HL = step double idx into the current animation handler
	ld   a, [wTitleScreenAnimationStep]                             ; $6317
	ld   b, $00                                                     ; $631a
	ld   c, a                                                       ; $631c
	ld   hl, .animationHandlers                                     ; $631d
	add  hl, bc                                                     ; $6320
	add  hl, bc                                                     ; $6321

; Jump to that handler
	ld   a, [hl+]                                                   ; $6322
	ld   h, [hl]                                                    ; $6323
	ld   l, a                                                       ; $6324
	jp   hl                                                         ; $6325

.return:
; If not in state 0, animate bg and sprites
	ld   a, [wTitleScreenAnimationStep]                             ; $6326
	or   a                                                          ; $6329
	jr   z, :+                                                      ; $632a

	call ProcessTitleScreenAnimations                               ; $632c
	call AnimateAllAnimatedSpriteSpecs                              ; $632f

; Finally restore ram bank
:	pop  af                                                         ; $6332
	ld   [wWramBank], a                                             ; $6333
	ldh  [rSVBK], a                                                 ; $6336
	ret                                                             ; $6338

.animationHandlers:
	dw TitleScreenAnimationHandler0_LoadInitialTileAndScreenData
	dw TitleScreenAnimationHandler1_FasterUnusedFadeInMiddleBit
	dw TitleScreenAnimationHandler2_Main
	dw TitleScreenAnimationHandler3_WaitBeforeFadeOut
	dw TitleScreenAnimationHandler4_FadeOut
	dw TitleScreenAnimationHandler5_LoadInitialTileAndScreenData
	dw TitleScreenAnimationHandler6_LoadWindow
	dw TitleScreenAnimationHandler7_ScrollIn
	dw TitleScreenAnimationHandler8_FadeInMiddleBit


TitleScreenAnimationHandler0_LoadInitialTileAndScreenData:
; Get, then inc idx for next data load
	ld   hl, wTitleScreenMiscCounterIdx                             ; $634b
	ld   a, [hl]                                                    ; $634e
	inc  [hl]                                                       ; $634f

; HL = double idx into a data load handler
	sla  a                                                          ; $6350
	ld   h, $00                                                     ; $6352
	ld   l, a                                                       ; $6354
	ld   bc, .dataLoadHandlers                                      ; $6355
	add  hl, bc                                                     ; $6358

; Jump to handler
	ld   a, [hl+]                                                   ; $6359
	ld   h, [hl]                                                    ; $635a
	ld   l, a                                                       ; $635b
	jp   hl                                                         ; $635c

.dataLoadHandlers:
	dw .dataLoad0
	dw .dataLoad1
	dw .dataLoad2
	dw .dataLoad3
	dw .dataLoad4
	dw .dataLoad5
	dw .dataLoad6
	dw .dataLoad7
	dw .dataLoad8_tileAttrs
	dw .dataLoad9_tileMap

.dataLoad0:
; Load first $800 tile data bytes for vram bank 0
	ld   a, BANK(RleXorTileData_TitleScreenBank0_8000)              ; $6371
	ld   hl, wTitleScreenTileDataBuffer                             ; $6373
	ld   de, RleXorTileData_TitleScreenBank0_8000                   ; $6376
if def(VWF)
	call TitleScreenVramBank0_8000h_hook
else
	call RLEXorCopy                                                 ; $6379
endc
	
; Enqueue 1st $600 tile data bytes for vram bank 0
	ld   c, $80                                                     ; $637c
	ld   de, _VRAM                                                  ; $637e
	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $6381
	ld   hl, wTitleScreenTileDataBuffer                             ; $6383
	ld   b, $600/$10                                                ; $6386
	call EnqueueHDMATransfer                                        ; $6388
	ret                                                             ; $638b

.dataLoad1:
; Load next $800 tile data bytes
	ld   a, BANK(RleXorTileData_TitleScreenBank0_8800)              ; $638c
	ld   hl, wTitleScreenTileDataBuffer+$800                        ; $638e
	ld   de, RleXorTileData_TitleScreenBank0_8800                   ; $6391
if def(VWF)
	call TitleScreenVramBank0_8800h_hook
else
	call RLEXorCopy                                                 ; $6394
endc

; Enqueue next $600 tile data bytes
	ld   c, $80                                                     ; $6397
	ld   de, _VRAM+$600                                             ; $6399
	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $639c
	ld   hl, wTitleScreenTileDataBuffer+$600                        ; $639e
	ld   b, $600/$10                                                ; $63a1
	call EnqueueHDMATransfer                                        ; $63a3
	ret                                                             ; $63a6

.dataLoad2:
; Load next $800 tile data bytes
	ld   a, BANK(RleXorTileData_TitleScreenBank0_9000)              ; $63a7
	ld   hl, wTitleScreenTileDataBuffer                             ; $63a9
	ld   de, RleXorTileData_TitleScreenBank0_9000                   ; $63ac
if def(VWF)
	call TitleScreenVramBank0_9000h_hook
else
	call RLEXorCopy                                                 ; $63af
endc

; Enqueue next $600 tile data bytes
	ld   c, $80                                                     ; $63b2
	ld   de, _VRAM+$c00                                             ; $63b4
	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $63b7
	ld   hl, wTitleScreenTileDataBuffer+$c00                        ; $63b9
	ld   b, $400/$10                                                ; $63bc
	call EnqueueHDMATransfer                                        ; $63be

	ld   c, $80                                                     ; $63c1
	ld   de, _VRAM+$1000                                            ; $63c3
	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $63c6
	ld   hl, wTitleScreenTileDataBuffer                             ; $63c8
	ld   b, $200/$10                                                ; $63cb
	call EnqueueHDMATransfer                                        ; $63cd
	ret                                                             ; $63d0

.dataLoad3:
; Enqueue last $600 tile data bytes for vram bank 0
	ld   c, $80                                                     ; $63d1
	ld   de, _VRAM+$1200                                            ; $63d3
	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $63d6
	ld   hl, wTitleScreenTileDataBuffer+$200                        ; $63d8
	ld   b, $600/$10                                                ; $63db
	call EnqueueHDMATransfer                                        ; $63dd
	ret                                                             ; $63e0

.dataLoad4:
; Load first $800 tile data bytes for vram bank 1
	ld   a, BANK(RleXorTileData_TitleScreenBank1_8000)              ; $63e1
	ld   hl, wTitleScreenTileDataBuffer+$800                        ; $63e3
	ld   de, RleXorTileData_TitleScreenBank1_8000                   ; $63e6
	call RLEXorCopy                                                 ; $63e9

; Enqueue 1st $600 tile data bytes for vram bank 0
	ld   c, $81                                                     ; $63ec
	ld   de, _VRAM                                                  ; $63ee
	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $63f1
	ld   hl, wTitleScreenTileDataBuffer+$800                        ; $63f3
	ld   b, $600/$10                                                ; $63f6
	call EnqueueHDMATransfer                                        ; $63f8
	ret                                                             ; $63fb

.dataLoad5:
; Load next $800 tile data bytes
	ld   a, BANK(RleXorTileData_TitleScreenBank1_8800)              ; $63fc
	ld   hl, wTitleScreenTileDataBuffer                             ; $63fe
	ld   de, RleXorTileData_TitleScreenBank1_8800                   ; $6401
	call RLEXorCopy                                                 ; $6404

; Enqueue next $600 tile data bytes
	ld   c, $81                                                     ; $6407
	ld   de, _VRAM+$600                                             ; $6409
	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $640c
	ld   hl, wTitleScreenTileDataBuffer+$e00                        ; $640e
	ld   b, $200/$10                                                ; $6411
	call EnqueueHDMATransfer                                        ; $6413

	ld   c, $81                                                     ; $6416
	ld   de, _VRAM+$800                                             ; $6418
	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $641b
	ld   hl, wTitleScreenTileDataBuffer                             ; $641d
	ld   b, $400/$10                                                ; $6420
	call EnqueueHDMATransfer                                        ; $6422
	ret                                                             ; $6425

.dataLoad6:
; Load next $800 tile data bytes
	ld   a, BANK(RleXorTileData_TitleScreenBank1_9000)              ; $6426
	ld   hl, wTitleScreenTileDataBuffer+$800                        ; $6428
	ld   de, RleXorTileData_TitleScreenBank1_9000                   ; $642b
	call RLEXorCopy                                                 ; $642e

; Enqueue next $600 tile data bytes
	ld   c, $81                                                     ; $6431
	ld   de, _VRAM+$c00                                             ; $6433
	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $6436
	ld   hl, wTitleScreenTileDataBuffer+$400                        ; $6438
	ld   b, $400/$10                                                ; $643b
	call EnqueueHDMATransfer                                        ; $643d

	ld   c, $81                                                     ; $6440
	ld   de, _VRAM+$1000                                            ; $6442
	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $6445
	ld   hl, wTitleScreenTileDataBuffer+$800                        ; $6447
	ld   b, $200/$10                                                ; $644a
	call EnqueueHDMATransfer                                        ; $644c
	ret                                                             ; $644f

.dataLoad7:
; Enqueue last $600 tile data bytes for vram bank 1
	ld   c, $81                                                     ; $6450
	ld   de, _VRAM+$1200                                            ; $6452
	ld   a, BANK(wTitleScreenTileDataBuffer)                        ; $6455
	ld   hl, wTitleScreenTileDataBuffer+$a00                        ; $6457
	ld   b, $600/$10                                                ; $645a
	call EnqueueHDMATransfer                                        ; $645c
	ret                                                             ; $645f

.dataLoad8_tileAttrs:
; Buffer tile attr data for main screen + middle image
	ld   a, BANK(TileAttr_TitleScreen)                              ; $6460
	ld   de, TileAttr_TitleScreen                                   ; $6462
	ldbc SCRN_X_B, $2a                                              ; $6465
	ld   hl, wTitleScreenTileAttrBuffer                             ; $6468
	call FarCopyLayout                                              ; $646b

; Same as above, but for TileMap_TitleScreen
	ld   hl, wTitleScreenTileMapBuffer                              ; $646e
	call FarCopyLayout                                              ; $6471

; Enqueue tile attrs for screen (top + bottom)
	ld   c, $81                                                     ; $6474
	ld   de, _SCRN0                                                 ; $6476
	ld   a, BANK(wTitleScreenTileAttrBuffer)                        ; $6479
	ld   hl, wTitleScreenTileAttrBuffer                             ; $647b
	ld   b, SCRN_VX_B*SCRN_Y_B/$10                                  ; $647e
	call EnqueueHDMATransfer                                        ; $6480

; Middle with girl + tree
	ld   c, $81                                                     ; $6483
	ld   de, _SCRN0+$100                                            ; $6485
	ld   a, BANK(wTitleScreenTileAttrBuffer)                        ; $6488
	ld   hl, wTitleScreenTileAttrBuffer+$240                        ; $648a
	ld   b, SCRN_VX_B*6/$10                                         ; $648d
	call EnqueueHDMATransfer                                        ; $648f
	ret                                                             ; $6492

.dataLoad9_tileMap:
; Enqueue tile map for screen (top + bottom)
	ld   c, $80                                                     ; $6493
	ld   de, _SCRN0                                                 ; $6495
	ld   a, BANK(wTitleScreenTileMapBuffer)                         ; $6498
	ld   hl, wTitleScreenTileMapBuffer                              ; $649a
	ld   b, SCRN_VX_B*SCRN_Y_B/$10                                  ; $649d
	call EnqueueHDMATransfer                                        ; $649f

; Middle with girl + tree
	ld   c, $80                                                     ; $64a2
	ld   de, _SCRN0+$100                                            ; $64a4
	ld   a, BANK(wTitleScreenTileMapBuffer)                         ; $64a7
	ld   hl, wTitleScreenTileMapBuffer+$240                         ; $64a9
	ld   b, SCRN_VX_B*6/$10                                         ; $64ac
	call EnqueueHDMATransfer                                        ; $64ae

; Go to next animation step, and clear data load idx
	ld   hl, wTitleScreenAnimationStep                              ; $64b1
	inc  [hl]                                                       ; $64b4

	xor  a                                                          ; $64b5
	ld   [wTitleScreenMiscCounterIdx], a                            ; $64b6
	ret                                                             ; $64b9


TitleScreenAnimationHandler1_FasterUnusedFadeInMiddleBit:
; Jump if we haven't done init block below
	ld   a, [wTitleScreenMiscCounterIdx]                            ; $64ba
	or   a                                                          ; $64bd
	jr   nz, .afterFadeInit                                         ; $64be

; Init fade details (1/8th speed) of all BG palettes in
; (which will be face + tree part)
	xor  a                                                          ; $64c0
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $64c1
	ld   a, $40                                                     ; $64c4
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $64c6

	ld   a, $03                                                     ; $64c9
	ld   b, $00                                                     ; $64cb
	ld   hl, wBGPalettes                                            ; $64cd

	ld   c, BANK(Palettes_TitleScreen)                              ; $64d0
	ld   de, Palettes_TitleScreen                                   ; $64d2
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $64d5

.afterFadeInit:
; Keep inc'ing counter, jumping once $1f frames done
	ld   hl, wTitleScreenMiscCounterIdx                             ; $64d8
	ld   a, [hl]                                                    ; $64db
	inc  [hl]                                                       ; $64dc
	cp   $1f                                                        ; $64dd
	jr   nc, .toState2                                              ; $64df

; Every 4 frames..
	and  $03                                                        ; $64e1
	ret  nz                                                         ; $64e3

; Fade the BG palettes
	ldbc $00, $40                                                   ; $64e4
	jp   FadePalettesAndSetRangeToUpdate                            ; $64e7

.toState2:
; Load final palettes, updating BG's, then go to main anim step
	ld   a, BANK(Palettes_TitleScreen)                              ; $64ea
	ld   hl, Palettes_TitleScreen                                   ; $64ec
	ld   de, wBGandOBJPalettes                                      ; $64ef
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $64f2
	call FarMemCopy                                                 ; $64f5

	ld   bc, $003f                                                  ; $64f8
	call SetBGandOBJPaletteRangesToUpdate                           ; $64fb

IncTitleScreenAnimStepClearMiscCounterIdx:
	ld   hl, wTitleScreenAnimationStep                              ; $64fe
	inc  [hl]                                                       ; $6501
	
	xor  a                                                          ; $6502
	ld   [wTitleScreenMiscCounterIdx], a                            ; $6503
	ret                                                             ; $6506


TitleScreenAnimationHandler2_Main:
; Inc press start counter
	ld   hl, wTitleScreenPressStartAnimCounter                      ; $6507
	inc  [hl]                                                       ; $650a

; Set ram bank of press start tile map data
	ld   a, [wWramBank]                                             ; $650b
	push af                                                         ; $650e

	ld   a, BANK(wTitleScreenPressStartRowTileMap)                  ; $650f
	ld   [wWramBank], a                                             ; $6511
	ldh  [rSVBK], a                                                 ; $6514

; Initially clear tile map
	ld   hl, wTitleScreenPressStartRowTileMap                       ; $6516
	ld   bc, SCRN_VX_B                                              ; $6519
	ld   a, $12                                                     ; $651c
	call MemSet                                                     ; $651e

; Unnecessary clearing of the 6 tiles where Press Start is
	ld   hl, wTitleScreenPressStartRowTileMap+7                     ; $6521
	ld   a, $12                                                     ; $6524
	ld   [hl+], a                                                   ; $6526
	ld   [hl+], a                                                   ; $6527
	ld   [hl+], a                                                   ; $6528
	ld   [hl+], a                                                   ; $6529
	ld   [hl+], a                                                   ; $652a
	ld   [hl+], a                                                   ; $652b

; Restore ram bank
	pop  af                                                         ; $652c
	ld   [wWramBank], a                                             ; $652d
	ldh  [rSVBK], a                                                 ; $6530

; Update Press Start row
	ld   c, $80                                                     ; $6532
	ld   de, _SCRN0+$1c0                                            ; $6534
	ld   a, BANK(wTitleScreenPressStartRowTileMap)                  ; $6537
	ld   hl, wTitleScreenPressStartRowTileMap                       ; $6539
	ld   b, SCRN_VX_B/$10                                           ; $653c
	call EnqueueHDMATransfer                                        ; $653e

; Skip ahead before 18 seconds passed
	ld   a, [wTitleScreenFrameCounter+1]                            ; $6541
	cp   HIGH(18*60)                                                ; $6544
	jr   c, .afterPrologueCheck                                     ; $6546

	ld   a, [wTitleScreenFrameCounter]                              ; $6548
	cp   LOW(18*60)                                                 ; $654b
	jr   c, .afterPrologueCheck                                     ; $654d

;
	ld   a, $47                                      ; $654f: $3e $47
	ld   [$cc04], a                                  ; $6551: $ea $04 $cc

; Go to fade out anim step
	ld   a, $04                                                     ; $6554
	ld   [wTitleScreenAnimationStep], a                             ; $6556
	xor  a                                                          ; $6559
	ld   [wTitleScreenMiscCounterIdx], a                            ; $655a
	ret                                                             ; $655d

.afterPrologueCheck:
; Check if we've suggested 5 times to reset
	ld   hl, wTitleScreenCounterForResettingData                    ; $655e
	ld   a, [hl]                                                    ; $6561
	cp   $05                                                        ; $6562
	jr   c, .afterResetStateCheck                                   ; $6564

;
	ld   a, $21                                      ; $6566: $3e $21
	call Func_1adf                                       ; $6568: $cd $df $1a
	ld   h, $46                                      ; $656b: $26 $46
	ld   l, $00                                      ; $656d: $2e $00

	M_FarCall SetResetDataState
	ret                                                             ; $6583

.afterResetStateCheck:
; Update reset data counter if pressing select, while holding up+left
	ld   a, [wInGameButtonsHeld]                                    ; $6584
	and  PADF_UP|PADF_LEFT                                          ; $6587
	cp   PADF_UP|PADF_LEFT                                          ; $6589
	jr   nz, .afterResetCounterCheck                                ; $658b

	ld   a, [wInGameButtonsPressed]                                 ; $658d
	bit  PADB_SELECT, a                                             ; $6590
	jr   z, .afterResetCounterCheck                                 ; $6592

	inc  [hl]                                                       ; $6594

.afterResetCounterCheck:
; Jump if we've pressed start/A
	ld   a, [wInGameButtonsPressed]                                 ; $6595
	and  PADF_START|PADF_A                                          ; $6598
	jr   nz, .startOrApressed                                       ; $659a

; Return every $20 frames
	ld   a, [wTitleScreenPressStartAnimCounter]                     ; $659c
	bit  5, a                                                       ; $659f
	ret  nz                                                         ; $65a1

; Set ram bank of press start tile map data
	ld   a, [wWramBank]                                             ; $65a2
	push af                                                         ; $65a5

	ld   a, BANK(wTitleScreenPressStartRowTileMap)                  ; $65a6
	ld   [wWramBank], a                                             ; $65a8
	ldh  [rSVBK], a                                                 ; $65ab

; Fill with Press Start text
	ld   hl, wTitleScreenPressStartRowTileMap+7                     ; $65ad
	ld   a, $13                                                     ; $65b0
	ld   [hl+], a                                                   ; $65b2
	inc  a                                                          ; $65b3
	ld   [hl+], a                                                   ; $65b4
	inc  a                                                          ; $65b5
	ld   [hl+], a                                                   ; $65b6
	inc  a                                                          ; $65b7
	ld   [hl+], a                                                   ; $65b8
	inc  a                                                          ; $65b9
	ld   [hl+], a                                                   ; $65ba
	inc  a                                                          ; $65bb
	ld   [hl+], a                                                   ; $65bc

; Restore ram bank
	pop  af                                                         ; $65bd
	ld   [wWramBank], a                                             ; $65be
	ldh  [rSVBK], a                                                 ; $65c1
	ret                                                             ; $65c3

.startOrApressed:
	ld   a, $21                                      ; $65c4: $3e $21
	call Func_1adf                                       ; $65c6: $cd $df $1a
	ld   a, $37                                      ; $65c9: $3e $37
	ld   [$cc04], a                                  ; $65cb: $ea $04 $cc
	jp   IncTitleScreenAnimStepClearMiscCounterIdx                               ; $65ce: $c3 $fe $64


TitleScreenAnimationHandler3_WaitBeforeFadeOut:
; Inc counter, going to handler 4 after it breaches $28
	ld   hl, wTitleScreenMiscCounterIdx                             ; $65d1
	ld   a, [hl]                                                    ; $65d4
	inc  [hl]                                                       ; $65d5

	cp   $28                                                        ; $65d6
	jp   nc, IncTitleScreenAnimStepClearMiscCounterIdx              ; $65d8

	ret                                                             ; $65db


TitleScreenAnimationHandler4_FadeOut:
	ld   a, [wTitleScreenMiscCounterIdx]                                  ; $65dc: $fa $03 $cc
	or   a                                           ; $65df: $b7
	jr   nz, .afterInit                             ; $65e0: $20 $18

	xor  a                                           ; $65e2: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $65e3: $ea $62 $c3
	ld   a, $40                                      ; $65e6: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $65e8: $ea $63 $c3
	ld   a, $03                                      ; $65eb: $3e $03
	ld   b, $00                                      ; $65ed: $06 $00
	ld   hl, wBGPalettes                                   ; $65ef: $21 $de $c2
	ld   c, $01                                      ; $65f2: $0e $01
	ld   de, $7000                                   ; $65f4: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $65f7: $cd $48 $07

.afterInit:
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $65fa: $21 $03 $cc
	ld   a, [$cc04]                                  ; $65fd: $fa $04 $cc
	cp   $47                                         ; $6600: $fe $47
	jr   nz, .cont_660f                             ; $6602: $20 $0b

	ld   a, [hl]                                     ; $6604: $7e
	cpl                                              ; $6605: $2f
	srl  a                                           ; $6606: $cb $3f
	srl  a                                           ; $6608: $cb $3f
	and  $07                                         ; $660a: $e6 $07
	call SafeSetAudVolForMultipleChannels                                       ; $660c: $cd $e0 $1c

.cont_660f:
	ld   a, [hl]                                     ; $660f: $7e
	inc  [hl]                                        ; $6610: $34
	cp   $1f                                         ; $6611: $fe $1f
	jr   nc, .br_661e                             ; $6613: $30 $09

	and  $03                                         ; $6615: $e6 $03
	ret  nz                                          ; $6617: $c0

	ld   bc, $0040                                   ; $6618: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $661b: $c3 $32 $08

.br_661e:
	ld   a, $01                                      ; $661e: $3e $01
	ld   hl, $7000                                   ; $6620: $21 $00 $70
	ld   de, wBGPalettes                                   ; $6623: $11 $de $c2
	ld   bc, $0080                                   ; $6626: $01 $80 $00
	call FarMemCopy                                       ; $6629: $cd $b2 $09
	ld   bc, $003f                                   ; $662c: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $662f: $cd $aa $04
	ld   a, [$cc04]                                  ; $6632: $fa $04 $cc
	cp   $37                                         ; $6635: $fe $37
	jr   nz, .br_6643                             ; $6637: $20 $0a

	ld   a, $37                                      ; $6639: $3e $37
	ld   [wGameState], a                                  ; $663b: $ea $a0 $c2
	xor  a                                           ; $663e: $af
	ld   [wGameSubstate], a                                  ; $663f: $ea $a1 $c2
	ret                                              ; $6642: $c9

.br_6643:
	xor  a                                           ; $6643: $af
	call PlaySound                                       ; $6644: $cd $92 $1a
	ld   h, $36                                      ; $6647: $26 $36
	ld   l, $01                                      ; $6649: $2e $01
	ld   bc, $0006                                   ; $664b: $01 $06 $00
	xor  a                                           ; $664e: $af
	push af                                          ; $664f: $f5
	ld   a, $30                                      ; $6650: $3e $30
	ld   [wFarCallAddr], a                                  ; $6652: $ea $98 $c2
	ld   a, $79                                      ; $6655: $3e $79
	ld   [wFarCallAddr+1], a                                  ; $6657: $ea $99 $c2
	ld   a, $0c                                      ; $665a: $3e $0c
	ld   [wFarCallBank], a                                  ; $665c: $ea $9a $c2
	pop  af                                          ; $665f: $f1
	call FarCall                                       ; $6660: $cd $62 $09
	ret                                              ; $6663: $c9


TitleScreenAnimationHandler5_LoadInitialTileAndScreenData:
	jp   TitleScreenAnimationHandler0_LoadInitialTileAndScreenData  ; $6664


TitleScreenAnimationHandler6_LoadWindow:
; Get, then inc data load idx for next frame
	ld   hl, wTitleScreenMiscCounterIdx                             ; $6667
	ld   a, [hl]                                                    ; $666a
	inc  [hl]                                                       ; $666b

; HL points to the relevant data load handler
	sla  a                                                          ; $666c
	ld   h, $00                                                     ; $666e
	ld   l, a                                                       ; $6670
	ld   bc, .dataLoadHandlers                                      ; $6671
	add  hl, bc                                                     ; $6674

; Jump to the handler
	ld   a, [hl+]                                                   ; $6675
	ld   h, [hl]                                                    ; $6676
	ld   l, a                                                       ; $6677
	jp   hl                                                         ; $6678

.dataLoadHandlers:
	dw .dataLoad0
	dw .dataLoad1
	dw .dataLoad2

.dataLoad0:
; Load attr, then tile map data for the copyright text
	ld   c, $81                                                     ; $667f
	ld   de, _SCRN1                                                 ; $6681
	ld   a, BANK(wTitleScreenTileAttrBuffer)                        ; $6684
	ld   hl, wTitleScreenTileAttrBuffer+$1c0                        ; $6686
	ld   b, SCRN_VX_B*4/$10                                         ; $6689
	call EnqueueHDMATransfer                                        ; $668b

	ld   c, $80                                                     ; $668e
	ld   de, _SCRN1                                                 ; $6690
	ld   a, BANK(wTitleScreenTileMapBuffer)                         ; $6693
	ld   hl, wTitleScreenTileMapBuffer+$1c0                         ; $6695
	ld   b, SCRN_VX_B*4/$10                                         ; $6698
	call EnqueueHDMATransfer                                        ; $669a

; Load attr, then tile map data for the logo
	ld   c, $81                                                     ; $669d
	ld   de, _SCRN1+$80                                             ; $669f
	ld   a, BANK(wTitleScreenTileAttrBuffer)                        ; $66a2
	ld   hl, wTitleScreenTileAttrBuffer                             ; $66a4
	ld   b, SCRN_VX_B*8/$10                                         ; $66a7
	call EnqueueHDMATransfer                                        ; $66a9

	ld   c, $80                                                     ; $66ac
	ld   de, _SCRN1+$80                                             ; $66ae
	ld   a, BANK(wTitleScreenTileMapBuffer)                         ; $66b1
	ld   hl, wTitleScreenTileMapBuffer                              ; $66b3
	ld   b, SCRN_VX_B*8/$10                                         ; $66b6
	call EnqueueHDMATransfer                                        ; $66b8
	ret                                                             ; $66bb

.dataLoad1:
; Clear $200 tile attr/map regions in ram
	ld   hl, wTitleScreenTileAttrBuffer+$600                        ; $66bc
	ld   bc, $0100                                                  ; $66bf
	ld   de, $0000                                                  ; $66c2
	call CopyEthenDintoHL_BCtimes                                   ; $66c5

	ld   hl, wTitleScreenTileMapBuffer+$600                         ; $66c8
	ld   bc, $0100                                                  ; $66cb
	ld   de, $8080                                                  ; $66ce
	call CopyEthenDintoHL_BCtimes                                   ; $66d1

; Enqueue $10 rows of screen data
	ld   c, $81                                                     ; $66d4
	ld   de, _SCRN1+$180                                            ; $66d6
	ld   a, BANK(wTitleScreenTileAttrBuffer)                        ; $66d9
	ld   hl, wTitleScreenTileAttrBuffer+$600                        ; $66db
	ld   b, SCRN_VX_B*$10/$10                                       ; $66de
	call EnqueueHDMATransfer                                        ; $66e0

	ld   c, $80                                                     ; $66e3
	ld   de, _SCRN1+$180                                            ; $66e5
	ld   a, BANK(wTitleScreenTileMapBuffer)                         ; $66e8
	ld   hl, wTitleScreenTileMapBuffer+$600                         ; $66ea
	ld   b, SCRN_VX_B*$10/$10                                       ; $66ed
	call EnqueueHDMATransfer                                        ; $66ef
	ret                                                             ; $66f2

.dataLoad2:
; Enqueue the last 4 rows of screen data
	ld   c, $81                                                     ; $66f3
	ld   de, _SCRN1+$380                                            ; $66f5
	ld   a, BANK(wTitleScreenTileAttrBuffer)                        ; $66f8
	ld   hl, wTitleScreenTileAttrBuffer+$600                        ; $66fa
	ld   b, SCRN_VX_B*4/$10                                         ; $66fd
	call EnqueueHDMATransfer                                        ; $66ff

	ld   c, $80                                                     ; $6702
	ld   de, _SCRN1+$380                                            ; $6704
	ld   a, BANK(wTitleScreenTileMapBuffer)                         ; $6707
	ld   hl, wTitleScreenTileMapBuffer+$600                         ; $6709
	ld   b, SCRN_VX_B*4/$10                                         ; $670c
	call EnqueueHDMATransfer                                        ; $670e

; Copy palettes and update BGs
	ld   a, BANK(Palettes_TitleScreen)                              ; $6711
	ld   hl, Palettes_TitleScreen                                   ; $6713
	ld   de, wBGandOBJPalettes                                      ; $6716
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $6719
	call FarMemCopy                                                 ; $671c

	ld   bc, $003f                                                  ; $671f
	call SetBGandOBJPaletteRangesToUpdate                           ; $6722

; Clear last 3 BG palettes
	ld   hl, wBGPalettes+8*5                                        ; $6725
	ld   bc, $000c                                                  ; $6728
	ld   de, $7fff                                                  ; $672b
	call CopyEthenDintoHL_BCtimes                                   ; $672e

; Clear OBJ palettes idxed 3 to 7
	ld   hl, wOBJPalettes+8*3                                       ; $6731
	ld   bc, $0010                                                  ; $6734
	ld   de, $7fff                                                  ; $6737
	call CopyEthenDintoHL_BCtimes                                   ; $673a

; Show window, and have BG + Window use screen 1 (copyright + logo)
	ld   a, [wLCDC]                                                 ; $673d
	or   LCDCF_WIN9C00|LCDCF_WINON|LCDCF_BG9C00                     ; $6740
	ld   [wLCDC], a                                                 ; $6742

; Set scroll and window to below screen 1 display
	ld   a, $60                                                     ; $6745
	ld   [wSCY], a                                                  ; $6747

	ld   a, $07                                                     ; $674a
	ld   [wWX], a                                                   ; $674c
	ld   a, $90                                                     ; $674f
	ld   [wWY], a                                                   ; $6751

; Go to next animation step, and clear data load idx
	ld   hl, wTitleScreenAnimationStep                              ; $6754
	inc  [hl]                                                       ; $6757

	xor  a                                                          ; $6758
	ld   [wTitleScreenMiscCounterIdx], a                            ; $6759
	ret                                                             ; $675c


TitleScreenAnimationHandler7_ScrollIn:
; Jump if we're letting the animation play
	ld   a, [wInGameButtonsPressed]                                 ; $675d
	and  PADF_START|PADF_B|PADF_A                                   ; $6760
	jr   z, .skipBtnsNotPressed                                     ; $6762

; Now hide window, and have BG show the finished screen 0
	ld   a, [wLCDC]                                                 ; $6764
	and  $ff-(LCDCF_WIN9C00|LCDCF_WINON|LCDCF_BG9C00)               ; $6767
	ld   [wLCDC], a                                                 ; $6769

; Screen 0 SCY 0 is the finished screen 0
	xor  a                                                          ; $676c
	ld   [wSCY], a                                                  ; $676d

; Get final palettes to start showing everything, and update BG's
	ld   a, BANK(Palettes_TitleScreen)                              ; $6770
	ld   hl, Palettes_TitleScreen                                   ; $6772
	ld   de, wBGandOBJPalettes                                      ; $6775
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $6778
	call FarMemCopy                                                 ; $677b

	ld   bc, $003f                                                  ; $677e
	call SetBGandOBJPaletteRangesToUpdate                           ; $6781

; Go to main anim step
	ld   a, $02                                                     ; $6784
	ld   [wTitleScreenAnimationStep], a                             ; $6786
	xor  a                                                          ; $6789
	ld   [wTitleScreenMiscCounterIdx], a                            ; $678a
	ret                                                             ; $678d

.skipBtnsNotPressed:
; Inc misc counter, jumping once everything is scrolled in
	ld   hl, wTitleScreenMiscCounterIdx                             ; $678e
	ld   a, [hl]                                                    ; $6791
	inc  [hl]                                                       ; $6792
	cp   $40                                                        ; $6793
	jr   nc, .timerThresholdReached                                 ; $6795

; SCY = orig counter - misc counter (ie move scroll up until top is logo)
	ld   b, a                                                       ; $6797
	ld   a, $60                                                     ; $6798
	sub  b                                                          ; $679a
	ld   [wSCY], a                                                  ; $679b

; Repeat above with window Y, at half speed (once timer == $40, copyright at the bottom)
	srl  b                                                          ; $679e
	ld   a, $90                                                     ; $67a0
	sub  b                                                          ; $67a2
	ld   [wWY], a                                                   ; $67a3
	ret                                                             ; $67a6

.timerThresholdReached:
; Now hide window, and have BG show the finished screen 0
	ld   a, [wLCDC]                                                 ; $67a7
	and  $ff-(LCDCF_WIN9C00|LCDCF_WINON|LCDCF_BG9C00)               ; $67aa
	ld   [wLCDC], a                                                 ; $67ac

; Screen 0 SCY 0 is the finished screen 0
	xor  a                                                          ; $67af
	ld   [wSCY], a                                                  ; $67b0

; Go to next animation step, and clear data load idx
	ld   hl, wTitleScreenAnimationStep                              ; $67b3
	inc  [hl]                                                       ; $67b6

	xor  a                                                          ; $67b7
	ld   [wTitleScreenMiscCounterIdx], a                            ; $67b8
	ret                                                             ; $67bb


TitleScreenAnimationHandler8_FadeInMiddleBit:
; Jump when skip buttons pressed
	ld   a, [wInGameButtonsPressed]                                 ; $67bc
	and  PADF_START|PADF_B|PADF_A                                   ; $67bf
	jr   nz, .toState2                                              ; $67c1

; Jump if we haven't done init block below
	ld   a, [wTitleScreenMiscCounterIdx]                            ; $67c3
	or   a                                                          ; $67c6
	jr   nz, .afterFadeInit                                         ; $67c7

; Init fade details (1/8th speed) of all BG palettes in
; (which will be face + tree part)
	xor  a                                                          ; $67c9
	ld   [wStartingColorIdxToLoadCompDataFor], a                    ; $67ca
	ld   a, $40                                                     ; $67cd
	ld   [wNumPaletteColorsToLoadCompDataFor], a                    ; $67cf

	ld   a, $03                                                     ; $67d2
	ld   b, $00                                                     ; $67d4
	ld   hl, wBGPalettes                                            ; $67d6

	ld   c, BANK(Palettes_TitleScreen)                              ; $67d9
	ld   de, Palettes_TitleScreen                                   ; $67db
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                ; $67de

.afterFadeInit:
; Keep inc'ing counter, jumping once $3f frames done
	ld   hl, wTitleScreenMiscCounterIdx                             ; $67e1
	ld   a, [hl]                                                    ; $67e4
	inc  [hl]                                                       ; $67e5

	cp   $3f                                                        ; $67e6
	jr   nc, .toState2                                              ; $67e8

; Every 8 frames..
	and  $07                                                        ; $67ea
	ret  nz                                                         ; $67ec

; Fade the BG palettes
	ldbc $00, $40                                                   ; $67ed
	jp   FadePalettesAndSetRangeToUpdate                            ; $67f0

.toState2:
; Load final palettes, updating BG's
	ld   a, BANK(Palettes_TitleScreen)                              ; $67f3
	ld   hl, Palettes_TitleScreen                                   ; $67f5
	ld   de, wBGandOBJPalettes                                      ; $67f8
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $67fb
	call FarMemCopy                                                 ; $67fe

	ldbc $00, $3f                                                   ; $6801
	call SetBGandOBJPaletteRangesToUpdate                           ; $6804

; Go to main anim step
	ld   a, $02                                                     ; $6807
	ld   [wTitleScreenAnimationStep], a                             ; $6809
	xor  a                                                          ; $680c
	ld   [wTitleScreenMiscCounterIdx], a                            ; $680d
	ret                                                             ; $6810


GameState37_TitleMenuScreen::
	ld   a, [wGameSubstate]                                  ; $6811: $fa $a1 $c2
	cp   $03                                         ; $6814: $fe $03
	jp   z, TitleMenuScreen_substate3                            ; $6816: $ca $6e $69

	cp   $02                                         ; $6819: $fe $02
	jp   z, TitleMenuScreen_substate2                            ; $681b: $ca $62 $69

	cp   $01                                         ; $681e: $fe $01
	jp   z, TitleMenuScreen_substate1                            ; $6820: $ca $56 $69

; Substate 0 - init
	ld   a, $02                                      ; $6823: $3e $02
	ld   [$cc05], a                                  ; $6825: $ea $05 $cc
	call todo_Updates_cc05                               ; $6828: $cd $36 $68

;
	xor  a                                           ; $682b: $af
	ld   [$cc06], a                                  ; $682c: $ea $06 $cc
	call todo_Updates_cc06                                       ; $682f: $cd $f3 $68
	call todo_InitTitleMenuScreen                               ; $6832: $cd $5f $68
	ret                                              ; $6835: $c9


todo_Updates_cc05:
	ld   a, [$cc05]                                  ; $6836: $fa $05 $cc
	cp   $02                                         ; $6839: $fe $02
	ret  nz                                          ; $683b: $c0

	M_FarCall Func_0a_4752
	
	or   a                                           ; $6850: $b7
	jr   nz, .br_6859                             ; $6851: $20 $06

	ld   a, $02                                      ; $6853: $3e $02
	ld   [$cc05], a                                  ; $6855: $ea $05 $cc
	ret                                              ; $6858: $c9

.br_6859:
	ld   a, $01                                      ; $6859: $3e $01
	ld   [$cc05], a                                  ; $685b: $ea $05 $cc
	ret                                              ; $685e: $c9


todo_InitTitleMenuScreen:
; Set max aud vol and play a sound
	ld   a, $07                                                     ; $685f
	call SafeSetAudVolForMultipleChannels                           ; $6861

	ld   a, SND_01                                                  ; $6864
	call PlaySound                                                  ; $6866

; Clear display regs, and turn on LCD
	call ClearDisplayRegsAllowVBlankInt                             ; $6869

	ld   a, [wLCDC]                                                 ; $686c
	and  LCDCF_ON|LCDCF_WIN9C00|LCDCF_WINON                         ; $686f
	or   LCDCF_ON|LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON                ; $6871
	ld   [wLCDC], a                                                 ; $6873
	ldh  [rLCDC], a                                                 ; $6876

; Allow inputs, clear oam and anim sprite details
	ld   a, $ff                                                     ; $6878
	ld   [wInGameInputsEnabled], a                                  ; $687a

	call ClearOam                                                   ; $687d
	call ClearBaseAnimSpriteSpecDetails                             ; $6880

;
	ld   de, $c642                                   ; $6883: $11 $42 $c6
	ld   hl, .data                                   ; $6886: $21 $eb $68
	ld   bc, .end-.data                                   ; $6889: $01 $08 $00
	call MemCopy                                       ; $688c: $cd $a9 $09

;
	ld   a, $02                                      ; $688f: $3e $02
	ld   hl, $0000                                   ; $6891: $21 $00 $00
	ld   de, $c642                                   ; $6894: $11 $42 $c6
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $6897: $cd $4b $2f
	ld   [$cc08], a                                  ; $689a: $ea $08 $cc

;
	ld   a, $20                                      ; $689d: $3e $20
	ld   b, $21                                      ; $689f: $06 $21
	ld   c, $22                                      ; $68a1: $0e $22

	M_FarCall Func_01_44ab
	
;
	ld   a, $01                                      ; $68b7: $3e $01
	ld   hl, $0000                                   ; $68b9: $21 $00 $00
	ld   d, h                                        ; $68bc: $54
	ld   e, l                                        ; $68bd: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $68be: $cd $4b $2f
	ld   [$cc09], a                                  ; $68c1: $ea $09 $cc

;
	ld   hl, $cc0a                                   ; $68c4: $21 $0a $cc
	ld   a, $04                                      ; $68c7: $3e $04

.loop:
	push af                                          ; $68c9: $f5
	push hl                                          ; $68ca: $e5

;
	ld   a, $00                                      ; $68cb: $3e $00
	ld   hl, $0000                                   ; $68cd: $21 $00 $00
	ld   d, h                                        ; $68d0: $54
	ld   e, l                                        ; $68d1: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $68d2: $cd $4b $2f

;
	pop  hl                                          ; $68d5: $e1
	ld   [hl+], a                                    ; $68d6: $22
	pop  af                                          ; $68d7: $f1
	dec  a                                           ; $68d8: $3d
	jr   nz, .loop                             ; $68d9: $20 $ee

;
	xor  a                                           ; $68db: $af
	ld   [$cc0e], a                                  ; $68dc: $ea $0e $cc
	ld   [wTitleScreenAnimationStep], a                                  ; $68df: $ea $02 $cc
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $68e2: $ea $03 $cc

	ld   a, $03                                      ; $68e5: $3e $03
	ld   [wGameSubstate], a                                  ; $68e7: $ea $a1 $c2
	ret                                              ; $68ea: $c9

.data:
	db $55, $00, $01, $04, $00, $62, $77, $0e
.end:
	
	
todo_Updates_cc06:
	ld   a, [$cc06] ; $68f3: $fa $06 $cc
	or   a                                           ; $68f6: $b7
	jr   z, .br_6900                              ; $68f7: $28 $07

	dec  a                                           ; $68f9: $3d
	jr   z, .br_691a                              ; $68fa: $28 $1e

	dec  a                                           ; $68fc: $3d
	jr   z, .br_6935                              ; $68fd: $28 $36

	ret                                              ; $68ff: $c9

.br_6900:
	M_FarCall AequFFh_0c_7273
	
	or   a                                           ; $6914: $b7
	jr   z, .br_691a                              ; $6915: $28 $03

	xor  a                                           ; $6917: $af
	jr   .end                                 ; $6918: $18 $38

.br_691a:
	M_FarCall AequFFh_0c_728e
	
	or   a                                           ; $692e: $b7
	jr   z, .br_6935                              ; $692f: $28 $04

	ld   a, $01                                      ; $6931: $3e $01
	jr   .end                                 ; $6933: $18 $1d

.br_6935:
	M_FarCall AequFFh_0c_72af
	
	or   a                                           ; $6949: $b7
	jr   z, .br_6950                              ; $694a: $28 $04

	ld   a, $02                                      ; $694c: $3e $02
	jr   .end                                 ; $694e: $18 $02

.br_6950:
	ld   a, $03                                      ; $6950: $3e $03

.end:
	ld   [$cc06], a                                  ; $6952: $ea $06 $cc
	ret                                              ; $6955: $c9


TitleMenuScreen_substate1:
	call todo_Updates_cc05                               ; $6956: $cd $36 $68
	call todo_InitTitleMenuScreen                               ; $6959: $cd $5f $68
	ld   a, $00                                      ; $695c: $3e $00
	ld   [wTitleScreenAnimationStep], a                                  ; $695e: $ea $02 $cc
	ret                                              ; $6961: $c9


TitleMenuScreen_substate2:
	call todo_Updates_cc06                                       ; $6962: $cd $f3 $68
	call todo_InitTitleMenuScreen                               ; $6965: $cd $5f $68
	ld   a, $01                                      ; $6968: $3e $01
	ld   [wTitleScreenAnimationStep], a                                  ; $696a: $ea $02 $cc
	ret                                              ; $696d: $c9


TitleMenuScreen_substate3:
; Clear oam and update sram seed
	call ClearOam                                                   ; $696e
	call UpdateSramRandomSeed                                       ; $6971

; Push return address for after handling anim step
	ld   bc, .return                                                ; $6974
	push bc                                                         ; $6977

; HL points to anim step double idxed into table
	ld   a, [wTitleScreenAnimationStep]                             ; $6978
	ld   b, $00                                                     ; $697b
	ld   c, a                                                       ; $697d
	ld   hl, .table                                                 ; $697e
	add  hl, bc                                                     ; $6981
	add  hl, bc                                                     ; $6982

; Jump to handler
	ld   a, [hl+]                                                   ; $6983
	ld   h, [hl]                                                    ; $6984
	ld   l, a                                                       ; $6985
	jp   hl                                                         ; $6986

.return:
; Finally animate sprites
	call AnimateAllAnimatedSpriteSpecs                              ; $6987
	ret                                                             ; $698a

.table:
	dw TitleMenuScreenAnimationHandler0
	dw TitleMenuScreenAnimationHandler1
	dw TitleMenuScreenAnimationHandler2
	dw TitleMenuScreenAnimationHandler3
	dw TitleMenuScreenAnimationHandler4
	dw TitleMenuScreenAnimationHandler5
	dw TitleMenuScreenAnimationHandler6
	dw TitleMenuScreenAnimationHandler7
	dw TitleMenuScreenAnimationHandler8
	dw TitleMenuScreenAnimationHandler9
	dw TitleMenuScreenAnimationHandlerA
	dw TitleMenuScreenAnimationHandlerB
	dw TitleMenuScreenAnimationHandlerC
	dw TitleMenuScreenAnimationHandlerD


TitleMenuScreenAnimationHandler2:
	ld   a, [wWramBank]                                  ; $69a7: $fa $93 $c2
	push af                                          ; $69aa: $f5
	ld   a, $07                                      ; $69ab: $3e $07
	ld   [wWramBank], a                                  ; $69ad: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $69b0: $e0 $70
	ld   bc, .return                                   ; $69b2: $01 $c8 $69
	push bc                                          ; $69b5: $c5
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $69b6: $21 $03 $cc
	ld   a, [hl]                                     ; $69b9: $7e
	inc  [hl]                                        ; $69ba: $34
	sla  a                                           ; $69bb: $cb $27
	ld   h, $00                                      ; $69bd: $26 $00
	ld   l, a                                        ; $69bf: $6f
	ld   bc, .table                                   ; $69c0: $01 $cf $69
	add  hl, bc                                      ; $69c3: $09
	ld   a, [hl+]                                    ; $69c4: $2a
	ld   h, [hl]                                     ; $69c5: $66
	ld   l, a                                        ; $69c6: $6f
	jp   hl                                          ; $69c7: $e9

.return:
	pop  af                                          ; $69c8: $f1
	ld   [wWramBank], a                                  ; $69c9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $69cc: $e0 $70
	ret                                              ; $69ce: $c9

.table:
	dw .dataLoad0
	dw .dataLoad1
	dw .dataLoad2
	dw .dataLoad3
	dw .dataLoad4
	dw .dataLoad5
	dw .dataLoad6
	dw .dataLoad7

.dataLoad0:
	ld   hl, $d000                                   ; $69df: $21 $00 $d0
	ld   a, $a0                                      ; $69e2: $3e $a0
	ld   de, $67be                                   ; $69e4: $11 $be $67
	ld   bc, $1412                                   ; $69e7: $01 $12 $14
	call FarCopyLayout                                       ; $69ea: $cd $2c $0b
	ld   hl, $d400                                   ; $69ed: $21 $00 $d4
	call FarCopyLayout                                       ; $69f0: $cd $2c $0b
	ld   c, $81                                      ; $69f3: $0e $81
	ld   de, $9800                                   ; $69f5: $11 $00 $98
	ld   a, $07                                      ; $69f8: $3e $07
	ld   hl, $d000                                   ; $69fa: $21 $00 $d0
	ld   b, $24                                      ; $69fd: $06 $24
	call EnqueueHDMATransfer                                       ; $69ff: $cd $7c $02
	ld   c, $80                                      ; $6a02: $0e $80
	ld   de, $9800                                   ; $6a04: $11 $00 $98
	ld   a, $07                                      ; $6a07: $3e $07
	ld   hl, $d400                                   ; $6a09: $21 $00 $d4
	ld   b, $24                                      ; $6a0c: $06 $24
	call EnqueueHDMATransfer                                       ; $6a0e: $cd $7c $02
	ret                                              ; $6a11: $c9

.dataLoad1:
; load vram bank 0 8800-9800
	ld   a, $8d                                      ; $6a12: $3e $8d
	ld   hl, $d000                                   ; $6a14: $21 $00 $d0
	ld   de, $6dd0                                   ; $6a17: $11 $d0 $6d
	call RLEXorCopy                                       ; $6a1a: $cd $d2 $09

;
	ld   c, $80                                      ; $6a1d: $0e $80
	ld   de, $8800                                   ; $6a1f: $11 $00 $88
	ld   a, $07                                      ; $6a22: $3e $07
	ld   hl, $d000                                   ; $6a24: $21 $00 $d0
	ld   b, $60                                      ; $6a27: $06 $60
	call EnqueueHDMATransfer                                       ; $6a29: $cd $7c $02
	ret                                              ; $6a2c: $c9

.dataLoad2:
	ld   c, $80                                      ; $6a2d: $0e $80
	ld   de, $8e00                                   ; $6a2f: $11 $00 $8e
	ld   a, $07                                      ; $6a32: $3e $07
	ld   hl, $d600                                   ; $6a34: $21 $00 $d6
	ld   b, $60                                      ; $6a37: $06 $60
	call EnqueueHDMATransfer                                       ; $6a39: $cd $7c $02
	ret                                              ; $6a3c: $c9

.dataLoad3:
	ld   c, $80                                      ; $6a3d: $0e $80
	ld   de, $9400                                   ; $6a3f: $11 $00 $94
	ld   a, $07                                      ; $6a42: $3e $07
	ld   hl, $dc00                                   ; $6a44: $21 $00 $dc
	ld   b, $40                                      ; $6a47: $06 $40
	call EnqueueHDMATransfer                                       ; $6a49: $cd $7c $02

; load vram bank 1 9000-9800
	ld   a, $8f                                      ; $6a4c: $3e $8f
	ld   hl, $d000                                   ; $6a4e: $21 $00 $d0
	ld   de, $4800                                   ; $6a51: $11 $00 $48
	call RLEXorCopy                                       ; $6a54: $cd $d2 $09

;
	ld   c, $81                                      ; $6a57: $0e $81
	ld   de, $9000                                   ; $6a59: $11 $00 $90
	ld   a, $07                                      ; $6a5c: $3e $07
	ld   hl, $d000                                   ; $6a5e: $21 $00 $d0
	ld   b, $20                                      ; $6a61: $06 $20
	call EnqueueHDMATransfer                                       ; $6a63: $cd $7c $02
	ret                                              ; $6a66: $c9

.dataLoad4:
	ld   c, $81                                      ; $6a67: $0e $81
	ld   de, $9200                                   ; $6a69: $11 $00 $92
	ld   a, $07                                      ; $6a6c: $3e $07
	ld   hl, $d200                                   ; $6a6e: $21 $00 $d2
	ld   b, $60                                      ; $6a71: $06 $60
	call EnqueueHDMATransfer                                       ; $6a73: $cd $7c $02
	ret                                              ; $6a76: $c9

.dataLoad5:
; load vram bank 1 $8000-$8800 (menu opts)
	ld   a, $9f                                      ; $6a77: $3e $9f
	ld   hl, $d000                                   ; $6a79: $21 $00 $d0
	ld   de, $4000                                   ; $6a7c: $11 $00 $40
if def(VWF)
	call TitleMenuScreenVramBank1_8000h_hook
else
	call RLEXorCopy                                       ; $6a7f: $cd $d2 $09
endc

;
	ld   c, $81                                      ; $6a82: $0e $81
	ld   de, $8000                                   ; $6a84: $11 $00 $80
	ld   a, $07                                      ; $6a87: $3e $07
	ld   hl, $d000                                   ; $6a89: $21 $00 $d0
	ld   b, $60                                      ; $6a8c: $06 $60
	call EnqueueHDMATransfer                                       ; $6a8e: $cd $7c $02
	ret                                              ; $6a91: $c9

.dataLoad6:
	ld   a, $a0                                      ; $6a92: $3e $a0
	ld   hl, $d800                                   ; $6a94: $21 $00 $d8
	ld   de, $75ad                                   ; $6a97: $11 $ad $75
	call RLEXorCopy                                       ; $6a9a: $cd $d2 $09
	ld   c, $81                                      ; $6a9d: $0e $81
	ld   de, $8600                                   ; $6a9f: $11 $00 $86
	ld   a, $07                                      ; $6aa2: $3e $07
	ld   hl, $d600                                   ; $6aa4: $21 $00 $d6
	ld   b, $60                                      ; $6aa7: $06 $60
	call EnqueueHDMATransfer                                       ; $6aa9: $cd $7c $02
	ret                                              ; $6aac: $c9

.dataLoad7:
	ld   c, $81                                      ; $6aad: $0e $81
	ld   de, $8c00                                   ; $6aaf: $11 $00 $8c
	ld   a, $07                                      ; $6ab2: $3e $07
	ld   hl, $dc00                                   ; $6ab4: $21 $00 $dc
	ld   b, $40                                      ; $6ab7: $06 $40
	call EnqueueHDMATransfer                                       ; $6ab9: $cd $7c $02
	ld   hl, wTitleScreenAnimationStep                                   ; $6abc: $21 $02 $cc
	inc  [hl]                                        ; $6abf: $34
	xor  a                                           ; $6ac0: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $6ac1: $ea $03 $cc
	ret                                              ; $6ac4: $c9


TitleMenuScreenAnimationHandler3:
	ld   a, [wTitleScreenMiscCounterIdx]                                  ; $6ac5: $fa $03 $cc
	or   a                                           ; $6ac8: $b7
	jr   nz, .afterInit                             ; $6ac9: $20 $18

	xor  a                                           ; $6acb: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6acc: $ea $62 $c3
	ld   a, $40                                      ; $6acf: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6ad1: $ea $63 $c3
	ld   a, $03                                      ; $6ad4: $3e $03
	ld   b, $00                                      ; $6ad6: $06 $00
	ld   hl, wBGPalettes                                   ; $6ad8: $21 $de $c2
	ld   c, $a3                                      ; $6adb: $0e $a3
	ld   de, $6f4c                                   ; $6add: $11 $4c $6f
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6ae0: $cd $48 $07

.afterInit:
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $6ae3: $21 $03 $cc
	ld   a, [hl]                                     ; $6ae6: $7e
	inc  [hl]                                        ; $6ae7: $34
	cp   $1f                                         ; $6ae8: $fe $1f
	jr   nc, .br_6af5                             ; $6aea: $30 $09

	and  $03                                         ; $6aec: $e6 $03
	ret  nz                                          ; $6aee: $c0

	ld   bc, $0040                                   ; $6aef: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $6af2: $c3 $32 $08

.br_6af5:
	ld   a, $a3                                      ; $6af5: $3e $a3
	ld   hl, $6f4c                                   ; $6af7: $21 $4c $6f
	ld   de, wBGPalettes                                   ; $6afa: $11 $de $c2
	ld   bc, $0080                                   ; $6afd: $01 $80 $00
	call FarMemCopy                                       ; $6b00: $cd $b2 $09
	ld   bc, $003f                                   ; $6b03: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6b06: $cd $aa $04
	ld   a, [$cc08]                                  ; $6b09: $fa $08 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6b0c: $cd $76 $30
	push af                                          ; $6b0f: $f5
	ld   a, $95                                      ; $6b10: $3e $95
	ld   [wFarCallAddr], a                                  ; $6b12: $ea $98 $c2
	ld   a, $44                                      ; $6b15: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $6b17: $ea $99 $c2
	ld   a, $01                                      ; $6b1a: $3e $01
	ld   [wFarCallBank], a                                  ; $6b1c: $ea $9a $c2
	pop  af                                          ; $6b1f: $f1
	call FarCall                                       ; $6b20: $cd $62 $09
	ld   a, [$cc04]                                  ; $6b23: $fa $04 $cc
	ld   [wTitleScreenAnimationStep], a                                  ; $6b26: $ea $02 $cc
	xor  a                                           ; $6b29: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $6b2a: $ea $03 $cc
	ret                                              ; $6b2d: $c9


TitleMenuScreenAnimationHandler0:
	ld   a, $30                                      ; $6b2e: $3e $30
	call Call_00a_6b77                               ; $6b30: $cd $77 $6b
	ld   a, $ff                                      ; $6b33: $3e $ff
	ld   [$c328], a                                  ; $6b35: $ea $28 $c3
	res  7, a                                        ; $6b38: $cb $bf
	ld   [$c329], a                                  ; $6b3a: $ea $29 $c3
	ld   a, [$cc09]                                  ; $6b3d: $fa $09 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $6b40: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6b43: $cd $76 $30
	ld   bc, $7840                                   ; $6b46: $01 $40 $78
	ld   a, $0f                                      ; $6b49: $3e $0f
	ld   de, $7762                                   ; $6b4b: $11 $62 $77

	M_FarCall LoadNewAnimatedSpriteSpecDetails
	
	ld   a, [$cc08]                                  ; $6b62: $fa $08 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $6b65: $cd $14 $30
	ld   a, $06                                      ; $6b68: $3e $06
	ld   [$cc04], a                                  ; $6b6a: $ea $04 $cc
	ld   a, $02                                      ; $6b6d: $3e $02
	ld   [wTitleScreenAnimationStep], a                                  ; $6b6f: $ea $02 $cc
	xor  a                                           ; $6b72: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $6b73: $ea $03 $cc
	ret                                              ; $6b76: $c9


Call_00a_6b77:
	push af                                          ; $6b77: $f5
	ld   hl, $c602                                   ; $6b78: $21 $02 $c6
	ld   bc, $0020                                   ; $6b7b: $01 $20 $00
	ld   de, $a0a0                                   ; $6b7e: $11 $a0 $a0
	call CopyEthenDintoHL_BCtimes                                       ; $6b81: $cd $9f $09
	ld   a, [$cc08]                                  ; $6b84: $fa $08 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $6b87: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6b8a: $cd $76 $30
	ld   a, [$cc05]                                  ; $6b8d: $fa $05 $cc
	ld   b, $00                                      ; $6b90: $06 $00
	ld   c, a                                        ; $6b92: $4f

	M_FarCall Func_01_44d7
	
	ld   c, $00                                      ; $6ba7: $0e $00
	ld   a, [$cc0a]                                  ; $6ba9: $fa $0a $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $6bac: $cd $14 $30
	inc  c                                           ; $6baf: $0c
	ld   a, [$cc0b]                                  ; $6bb0: $fa $0b $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $6bb3: $cd $14 $30
	inc  c                                           ; $6bb6: $0c
	push bc                                          ; $6bb7: $c5

	M_FarCall Func_0a_4752
	
	pop  bc                                          ; $6bcc: $c1
	or   a                                           ; $6bcd: $b7
	jr   nz, jr_00a_6bd9                             ; $6bce: $20 $09

	ld   a, [$cc0c]                                  ; $6bd0: $fa $0c $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $6bd3: $cd $14 $30
	inc  c                                           ; $6bd6: $0c
	jr   jr_00a_6be1                                 ; $6bd7: $18 $08

jr_00a_6bd9:
	ld   a, $ff                                      ; $6bd9: $3e $ff
	ld   [$c606], a                                  ; $6bdb: $ea $06 $c6
	ld   [$c607], a                                  ; $6bde: $ea $07 $c6

jr_00a_6be1:
	ld   a, [$cc0d]                                  ; $6be1: $fa $0d $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $6be4: $cd $14 $30
	inc  c                                           ; $6be7: $0c
	ld   b, $00                                      ; $6be8: $06 $00
	sla  c                                           ; $6bea: $cb $21
	ld   hl, $6c2c                                   ; $6bec: $21 $2c $6c
	add  hl, bc                                      ; $6bef: $09
	pop  bc                                          ; $6bf0: $c1
	ld   c, [hl]                                     ; $6bf1: $4e
	ld   hl, $cc0a                                   ; $6bf2: $21 $0a $cc
	ld   a, $04                                      ; $6bf5: $3e $04

jr_00a_6bf7:
	push af                                          ; $6bf7: $f5
	ld   a, [hl+]                                    ; $6bf8: $2a
	push hl                                          ; $6bf9: $e5
	ld   d, a                                        ; $6bfa: $57
	call Func_2ff9                                       ; $6bfb: $cd $f9 $2f
	or   a                                           ; $6bfe: $b7
	ld   a, d                                        ; $6bff: $7a
	jr   z, jr_00a_6c1d                              ; $6c00: $28 $1b

	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6c02: $cd $76 $30

	M_FarCall Func_01_4055
	
	ld   a, c                                        ; $6c19: $79
	add  $18                                         ; $6c1a: $c6 $18
	ld   c, a                                        ; $6c1c: $4f

jr_00a_6c1d:
	pop  hl                                          ; $6c1d: $e1
	pop  af                                          ; $6c1e: $f1
	dec  a                                           ; $6c1f: $3d
	jr   nz, jr_00a_6bf7                             ; $6c20: $20 $d5

	call Call_00a_6c36                               ; $6c22: $cd $36 $6c
	ld   a, [$cc05]                                  ; $6c25: $fa $05 $cc
	call Call_00a_6c6c                               ; $6c28: $cd $6c $6c
	ret                                              ; $6c2b: $c9


	and  b                                           ; $6c2c: $a0
	nop                                              ; $6c2d: $00
	ld   b, b                                        ; $6c2e: $40
	nop                                              ; $6c2f: $00
	inc  [hl]                                        ; $6c30: $34
	nop                                              ; $6c31: $00
	jr   z, jr_00a_6c34                              ; $6c32: $28 $00

jr_00a_6c34:
	inc  e                                           ; $6c34: $1c
	nop                                              ; $6c35: $00

Call_00a_6c36:
	ld   hl, $cc0a                                   ; $6c36: $21 $0a $cc
	ld   de, $6c64                                   ; $6c39: $11 $64 $6c
	ld   a, $04                                      ; $6c3c: $3e $04

jr_00a_6c3e:
	push af                                          ; $6c3e: $f5
	ld   a, [hl+]                                    ; $6c3f: $2a
	push hl                                          ; $6c40: $e5
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6c41: $cd $76 $30
	ld   a, [de]                                     ; $6c44: $1a
	inc  de                                          ; $6c45: $13
	ld   b, a                                        ; $6c46: $47
	ld   a, [de]                                     ; $6c47: $1a
	inc  de                                          ; $6c48: $13
	ld   c, a                                        ; $6c49: $4f
	push af                                          ; $6c4a: $f5
	ld   a, $4b                                      ; $6c4b: $3e $4b
	ld   [wFarCallAddr], a                                  ; $6c4d: $ea $98 $c2
	ld   a, $40                                      ; $6c50: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6c52: $ea $99 $c2
	ld   a, $01                                      ; $6c55: $3e $01
	ld   [wFarCallBank], a                                  ; $6c57: $ea $9a $c2
	pop  af                                          ; $6c5a: $f1
	call FarCall                                       ; $6c5b: $cd $62 $09
	pop  hl                                          ; $6c5e: $e1
	pop  af                                          ; $6c5f: $f1
	dec  a                                           ; $6c60: $3d
	jr   nz, jr_00a_6c3e                             ; $6c61: $20 $db

	ret                                              ; $6c63: $c9


	ld   bc, $0162                                   ; $6c64: $01 $62 $01
	ld   e, a                                        ; $6c67: $5f
	ld   bc, $0160                                   ; $6c68: $01 $60 $01
	ld   h, c                                        ; $6c6b: $61

Call_00a_6c6c:
	ld   h, $00                                      ; $6c6c: $26 $00
	ld   l, a                                        ; $6c6e: $6f
	ld   bc, $cc0a                                   ; $6c6f: $01 $0a $cc
	add  hl, bc                                      ; $6c72: $09
	ld   a, [hl]                                     ; $6c73: $7e
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6c74: $cd $76 $30
	push af                                          ; $6c77: $f5
	ld   a, $6a                                      ; $6c78: $3e $6a
	ld   [wFarCallAddr], a                                  ; $6c7a: $ea $98 $c2
	ld   a, $40                                      ; $6c7d: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6c7f: $ea $99 $c2
	ld   a, $01                                      ; $6c82: $3e $01
	ld   [wFarCallBank], a                                  ; $6c84: $ea $9a $c2
	pop  af                                          ; $6c87: $f1
	call FarCall                                       ; $6c88: $cd $62 $09
	ld   a, c                                        ; $6c8b: $79
	add  $08                                         ; $6c8c: $c6 $08
	ld   c, a                                        ; $6c8e: $4f
	push af                                          ; $6c8f: $f5
	ld   a, $4b                                      ; $6c90: $3e $4b
	ld   [wFarCallAddr], a                                  ; $6c92: $ea $98 $c2
	ld   a, $40                                      ; $6c95: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6c97: $ea $99 $c2
	ld   a, $01                                      ; $6c9a: $3e $01
	ld   [wFarCallBank], a                                  ; $6c9c: $ea $9a $c2
	pop  af                                          ; $6c9f: $f1
	call FarCall                                       ; $6ca0: $cd $62 $09
	ld   a, $25                                      ; $6ca3: $3e $25
	ld   hl, $cc0e                                   ; $6ca5: $21 $0e $cc
	push af                                          ; $6ca8: $f5
	ld   a, $8f                                      ; $6ca9: $3e $8f
	ld   [wFarCallAddr], a                                  ; $6cab: $ea $98 $c2
	ld   a, $59                                      ; $6cae: $3e $59
	ld   [wFarCallAddr+1], a                                  ; $6cb0: $ea $99 $c2
	ld   a, $0a                                      ; $6cb3: $3e $0a
	ld   [wFarCallBank], a                                  ; $6cb5: $ea $9a $c2
	pop  af                                          ; $6cb8: $f1
	call FarCall                                       ; $6cb9: $cd $62 $09
	ret                                              ; $6cbc: $c9


TitleMenuScreenAnimationHandler4:
	ld   a, $b8                                      ; $6cbd: $3e $b8
	call Call_00a_6b77                               ; $6cbf: $cd $77 $6b
	ld   hl, wTitleScreenAnimationStep                                   ; $6cc2: $21 $02 $cc
	inc  [hl]                                        ; $6cc5: $34
	xor  a                                           ; $6cc6: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $6cc7: $ea $03 $cc
	ret                                              ; $6cca: $c9


TitleMenuScreenAnimationHandler5:
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $6ccb: $21 $03 $cc
	ld   a, [hl]                                     ; $6cce: $7e
	inc  [hl]                                        ; $6ccf: $34
	sla  a                                           ; $6cd0: $cb $27
	sla  a                                           ; $6cd2: $cb $27
	ld   h, $00                                      ; $6cd4: $26 $00
	ld   l, a                                        ; $6cd6: $6f
	ld   bc, $6d70                                   ; $6cd7: $01 $70 $6d
	add  hl, bc                                      ; $6cda: $09
	ld   d, h                                        ; $6cdb: $54
	ld   e, l                                        ; $6cdc: $5d
	ld   hl, $cc0a                                   ; $6cdd: $21 $0a $cc
	ld   a, $04                                      ; $6ce0: $3e $04

jr_00a_6ce2:
	push af                                          ; $6ce2: $f5
	ld   a, [hl+]                                    ; $6ce3: $2a
	push hl                                          ; $6ce4: $e5
	ld   b, a                                        ; $6ce5: $47
	call Func_2ff9                                       ; $6ce6: $cd $f9 $2f
	or   a                                           ; $6ce9: $b7
	ld   a, b                                        ; $6cea: $78
	jr   z, jr_00a_6d1b                              ; $6ceb: $28 $2e

	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6ced: $cd $76 $30
	push af                                          ; $6cf0: $f5
	ld   a, $71                                      ; $6cf1: $3e $71
	ld   [wFarCallAddr], a                                  ; $6cf3: $ea $98 $c2
	ld   a, $40                                      ; $6cf6: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6cf8: $ea $99 $c2
	ld   a, $01                                      ; $6cfb: $3e $01
	ld   [wFarCallBank], a                                  ; $6cfd: $ea $9a $c2
	pop  af                                          ; $6d00: $f1
	call FarCall                                       ; $6d01: $cd $62 $09
	ld   a, [de]                                     ; $6d04: $1a
	inc  de                                          ; $6d05: $13
	ld   b, a                                        ; $6d06: $47
	push af                                          ; $6d07: $f5
	ld   a, $55                                      ; $6d08: $3e $55
	ld   [wFarCallAddr], a                                  ; $6d0a: $ea $98 $c2
	ld   a, $40                                      ; $6d0d: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6d0f: $ea $99 $c2
	ld   a, $01                                      ; $6d12: $3e $01
	ld   [wFarCallBank], a                                  ; $6d14: $ea $9a $c2
	pop  af                                          ; $6d17: $f1
	call FarCall                                       ; $6d18: $cd $62 $09

jr_00a_6d1b:
	pop  hl                                          ; $6d1b: $e1
	pop  af                                          ; $6d1c: $f1
	dec  a                                           ; $6d1d: $3d
	jr   nz, jr_00a_6ce2                             ; $6d1e: $20 $c2

	dec  de                                          ; $6d20: $1b
	ld   a, [de]                                     ; $6d21: $1a
	cp   $30                                         ; $6d22: $fe $30
	ret  nz                                          ; $6d24: $c0

	ld   a, [$cc09]                                  ; $6d25: $fa $09 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $6d28: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6d2b: $cd $76 $30
	ld   bc, $7840                                   ; $6d2e: $01 $40 $78
	ld   a, $0f                                      ; $6d31: $3e $0f
	ld   de, $7762                                   ; $6d33: $11 $62 $77
	push af                                          ; $6d36: $f5
	ld   a, $03                                      ; $6d37: $3e $03
	ld   [wFarCallAddr], a                                  ; $6d39: $ea $98 $c2
	ld   a, $41                                      ; $6d3c: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6d3e: $ea $99 $c2
	ld   a, $01                                      ; $6d41: $3e $01
	ld   [wFarCallBank], a                                  ; $6d43: $ea $9a $c2
	pop  af                                          ; $6d46: $f1
	call FarCall                                       ; $6d47: $cd $62 $09
	ld   a, [$cc08]                                  ; $6d4a: $fa $08 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $6d4d: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6d50: $cd $76 $30
	push af                                          ; $6d53: $f5
	ld   a, $95                                      ; $6d54: $3e $95
	ld   [wFarCallAddr], a                                  ; $6d56: $ea $98 $c2
	ld   a, $44                                      ; $6d59: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $6d5b: $ea $99 $c2
	ld   a, $01                                      ; $6d5e: $3e $01
	ld   [wFarCallBank], a                                  ; $6d60: $ea $9a $c2
	pop  af                                          ; $6d63: $f1
	call FarCall                                       ; $6d64: $cd $62 $09
	ld   hl, wTitleScreenAnimationStep                                   ; $6d67: $21 $02 $cc
	inc  [hl]                                        ; $6d6a: $34
	xor  a                                           ; $6d6b: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $6d6c: $ea $03 $cc
	ret                                              ; $6d6f: $c9


	ret  nc                                          ; $6d70: $d0

	cp   b                                           ; $6d71: $b8
	cp   b                                           ; $6d72: $b8
	cp   b                                           ; $6d73: $b8
	add  sp, -$48                                    ; $6d74: $e8 $b8
	cp   b                                           ; $6d76: $b8
	cp   b                                           ; $6d77: $b8

jr_00a_6d78:
	nop                                              ; $6d78: $00
	ret  nc                                          ; $6d79: $d0

	cp   b                                           ; $6d7a: $b8
	cp   b                                           ; $6d7b: $b8
	jr   @-$16                                       ; $6d7c: $18 $e8

	cp   b                                           ; $6d7e: $b8
	cp   b                                           ; $6d7f: $b8
	jr   nc, jr_00a_6d82                             ; $6d80: $30 $00

jr_00a_6d82:
	ret  nc                                          ; $6d82: $d0

	cp   b                                           ; $6d83: $b8
	jr   nc, @+$1a                                   ; $6d84: $30 $18

	add  sp, -$48                                    ; $6d86: $e8 $b8
	jr   nc, @+$32                                   ; $6d88: $30 $30

	nop                                              ; $6d8a: $00
	ret  nc                                          ; $6d8b: $d0

	jr   nc, @+$32                                   ; $6d8c: $30 $30

	jr   jr_00a_6d78                                 ; $6d8e: $18 $e8

	jr   nc, @+$32                                   ; $6d90: $30 $30

	jr   nc, jr_00a_6d94                             ; $6d92: $30 $00

jr_00a_6d94:
	db $30, $30

	db $30, $18

	db $30, $30

	jr   nc, @+$32                                   ; $6d9a: $30 $30


TitleMenuScreenAnimationHandler6:
	call Call_00a_6c36                               ; $6d9c: $cd $36 $6c
	ld   a, [$cc08]                                  ; $6d9f: $fa $08 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6da2: $cd $76 $30

	M_FarCall Func_01_4500
	
	call Call_00a_6c6c                               ; $6db9: $cd $6c $6c
	ld   a, [wInGameButtonsPressed]                                  ; $6dbc: $fa $10 $c2
	cp   $10                                         ; $6dbf: $fe $10
	jr   nz, jr_00a_6e0f                             ; $6dc1: $20 $4c

	ld   a, [$cc08]                                  ; $6dc3: $fa $08 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6dc6: $cd $76 $30
	push hl                                          ; $6dc9: $e5

	M_FarCall Func_01_44a0
	
	pop  hl                                          ; $6dde: $e1
	
	M_FarCall Func_01_4500

	ld   [$cc05], a                                  ; $6df3: $ea $05 $cc
	ld   a, [$cc09]                                  ; $6df6: $fa $09 $cc
	call Func_3006                                       ; $6df9: $cd $06 $30
	ld   a, $21                                      ; $6dfc: $3e $21
	call Func_1adf                                       ; $6dfe: $cd $df $1a
	ld   a, $08                                      ; $6e01: $3e $08
	ld   [$cc04], a                                  ; $6e03: $ea $04 $cc
	ld   hl, wTitleScreenAnimationStep                                   ; $6e06: $21 $02 $cc
	inc  [hl]                                        ; $6e09: $34
	xor  a                                           ; $6e0a: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $6e0b: $ea $03 $cc
	ret                                              ; $6e0e: $c9

jr_00a_6e0f:
	ld   a, [$cc08]                                  ; $6e0f: $fa $08 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6e12: $cd $76 $30

	M_FarCall Func_01_450a
	
	or   a                                           ; $6e29: $b7
	ret  z                                           ; $6e2a: $c8

	push af                                          ; $6e2b: $f5

	M_FarCall Func_01_44a0
	
	ld   a, [$cc09]                                  ; $6e40: $fa $09 $cc
	call Func_3006                                       ; $6e43: $cd $06 $30
	pop  af                                          ; $6e46: $f1
	bit  7, a                                        ; $6e47: $cb $7f
	jp   nz, Jump_00a_6e81                           ; $6e49: $c2 $81 $6e

	ret  nz                                          ; $6e4c: $c0

	dec  a                                           ; $6e4d: $3d
	ld   [$cc05], a                                  ; $6e4e: $ea $05 $cc
	ld   [$cc07], a                                  ; $6e51: $ea $07 $cc
	cp   $01                                         ; $6e54: $fe $01
	jr   z, jr_00a_6e62                              ; $6e56: $28 $0a

	ld   a, $0d                                      ; $6e58: $3e $0d
	ld   [wTitleScreenAnimationStep], a                                  ; $6e5a: $ea $02 $cc
	xor  a                                           ; $6e5d: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $6e5e: $ea $03 $cc
	ret                                              ; $6e61: $c9

jr_00a_6e62:
	ld   a, $06                                      ; $6e62: $3e $06
	ld   [wRandomNumRange], a                                  ; $6e64: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $6e67: $cd $10 $0d
	sla  a                                           ; $6e6a: $cb $27
	ld   h, $00                                      ; $6e6c: $26 $00
	ld   l, a                                        ; $6e6e: $6f
	ld   bc, $6eb0                                   ; $6e6f: $01 $b0 $6e
	add  hl, bc                                      ; $6e72: $09
	ld   a, [hl]                                     ; $6e73: $7e
	ld   [$cc0f], a                                  ; $6e74: $ea $0f $cc
	ld   a, $0c                                      ; $6e77: $3e $0c
	ld   [wTitleScreenAnimationStep], a                                  ; $6e79: $ea $02 $cc
	xor  a                                           ; $6e7c: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $6e7d: $ea $03 $cc
	ret                                              ; $6e80: $c9


Jump_00a_6e81:
	ld   a, $08                                      ; $6e81: $3e $08
	ld   [$cc07], a                                  ; $6e83: $ea $07 $cc
	ld   a, [$cc08]                                  ; $6e86: $fa $08 $cc
	call Func_3006                                       ; $6e89: $cd $06 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6e8c: $cd $76 $30
	push af                                          ; $6e8f: $f5
	ld   a, $00                                      ; $6e90: $3e $00
	ld   [wFarCallAddr], a                                  ; $6e92: $ea $98 $c2
	ld   a, $45                                      ; $6e95: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $6e97: $ea $99 $c2
	ld   a, $01                                      ; $6e9a: $3e $01
	ld   [wFarCallBank], a                                  ; $6e9c: $ea $9a $c2
	pop  af                                          ; $6e9f: $f1
	call FarCall                                       ; $6ea0: $cd $62 $09
	ld   [$cc05], a                                  ; $6ea3: $ea $05 $cc
	ld   a, $0d                                      ; $6ea6: $3e $0d
	ld   [wTitleScreenAnimationStep], a                                  ; $6ea8: $ea $02 $cc
	xor  a                                           ; $6eab: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $6eac: $ea $03 $cc
	ret                                              ; $6eaf: $c9


	dec  h                                           ; $6eb0: $25
	nop                                              ; $6eb1: $00
	ld   sp, $3d00                                   ; $6eb2: $31 $00 $3d
	nop                                              ; $6eb5: $00
	ld   c, c                                        ; $6eb6: $49
	nop                                              ; $6eb7: $00
	ld   d, l                                        ; $6eb8: $55
	nop                                              ; $6eb9: $00
	ld   h, c                                        ; $6eba: $61
	nop                                              ; $6ebb: $00


TitleMenuScreenAnimationHandlerC:
	ld   a, [$cc0f]                                  ; $6ebc: $fa $0f $cc
	call $1b64                                       ; $6ebf: $cd $64 $1b
	ld   a, $0d                                      ; $6ec2: $3e $0d
	ld   [wTitleScreenAnimationStep], a                                  ; $6ec4: $ea $02 $cc
	xor  a                                           ; $6ec7: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $6ec8: $ea $03 $cc
	ret                                              ; $6ecb: $c9


TitleMenuScreenAnimationHandler7:
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $6ecc: $21 $03 $cc
	ld   a, [hl]                                     ; $6ecf: $7e
	inc  [hl]                                        ; $6ed0: $34
	sla  a                                           ; $6ed1: $cb $27
	sla  a                                           ; $6ed3: $cb $27
	ld   h, $00                                      ; $6ed5: $26 $00
	ld   l, a                                        ; $6ed7: $6f
	ld   bc, $6f49                                   ; $6ed8: $01 $49 $6f
	add  hl, bc                                      ; $6edb: $09
	ld   d, h                                        ; $6edc: $54
	ld   e, l                                        ; $6edd: $5d
	ld   hl, $cc0a                                   ; $6ede: $21 $0a $cc
	ld   a, $04                                      ; $6ee1: $3e $04

jr_00a_6ee3:
	push af                                          ; $6ee3: $f5
	ld   a, [hl+]                                    ; $6ee4: $2a
	push hl                                          ; $6ee5: $e5
	ld   b, a                                        ; $6ee6: $47
	call Func_2ff9                                       ; $6ee7: $cd $f9 $2f
	or   a                                           ; $6eea: $b7
	ld   a, b                                        ; $6eeb: $78
	jr   z, jr_00a_6f1c                              ; $6eec: $28 $2e

	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6eee: $cd $76 $30
	push af                                          ; $6ef1: $f5
	ld   a, $71                                      ; $6ef2: $3e $71
	ld   [wFarCallAddr], a                                  ; $6ef4: $ea $98 $c2
	ld   a, $40                                      ; $6ef7: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6ef9: $ea $99 $c2
	ld   a, $01                                      ; $6efc: $3e $01
	ld   [wFarCallBank], a                                  ; $6efe: $ea $9a $c2
	pop  af                                          ; $6f01: $f1
	call FarCall                                       ; $6f02: $cd $62 $09
	ld   a, [de]                                     ; $6f05: $1a
	inc  de                                          ; $6f06: $13
	ld   b, a                                        ; $6f07: $47
	push af                                          ; $6f08: $f5
	ld   a, $55                                      ; $6f09: $3e $55
	ld   [wFarCallAddr], a                                  ; $6f0b: $ea $98 $c2
	ld   a, $40                                      ; $6f0e: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6f10: $ea $99 $c2
	ld   a, $01                                      ; $6f13: $3e $01
	ld   [wFarCallBank], a                                  ; $6f15: $ea $9a $c2
	pop  af                                          ; $6f18: $f1
	call FarCall                                       ; $6f19: $cd $62 $09

jr_00a_6f1c:
	pop  hl                                          ; $6f1c: $e1
	pop  af                                          ; $6f1d: $f1
	dec  a                                           ; $6f1e: $3d
	jr   nz, jr_00a_6ee3                             ; $6f1f: $20 $c2

	dec  de                                          ; $6f21: $1b
	ld   a, [de]                                     ; $6f22: $1a
	cp   $b8                                         ; $6f23: $fe $b8
	ret  nz                                          ; $6f25: $c0

jr_00a_6f26:
	ld   a, [$cc0a]                                  ; $6f26: $fa $0a $cc
	call Func_3006                                       ; $6f29: $cd $06 $30
	ld   a, [$cc0b]                                  ; $6f2c: $fa $0b $cc
	call Func_3006                                       ; $6f2f: $cd $06 $30
	ld   a, [$cc0c]                                  ; $6f32: $fa $0c $cc
	call Func_3006                                       ; $6f35: $cd $06 $30
	ld   a, [$cc0d]                                  ; $6f38: $fa $0d $cc
	call Func_3006                                       ; $6f3b: $cd $06 $30
	ld   a, [$cc04]                                  ; $6f3e: $fa $04 $cc
	ld   [wTitleScreenAnimationStep], a                                  ; $6f41: $ea $02 $cc
	xor  a                                           ; $6f44: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $6f45: $ea $03 $cc
	ret                                              ; $6f48: $c9


	jr   @+$32                                       ; $6f49: $18 $30

	jr   nc, @+$32                                   ; $6f4b: $30 $30

	nop                                              ; $6f4d: $00
	jr   nc, @+$32                                   ; $6f4e: $30 $30

	jr   nc, @-$16                                   ; $6f50: $30 $e8

	jr   jr_00a_6f84                                 ; $6f52: $18 $30

	jr   nc, jr_00a_6f26                             ; $6f54: $30 $d0

	nop                                              ; $6f56: $00
	jr   nc, @+$32                                   ; $6f57: $30 $30

	cp   b                                           ; $6f59: $b8
	add  sp, $18                                     ; $6f5a: $e8 $18
	jr   nc, @-$46                                   ; $6f5c: $30 $b8

	ret  nc                                          ; $6f5e: $d0

	nop                                              ; $6f5f: $00
	jr   nc, @-$46                                   ; $6f60: $30 $b8

	cp   b                                           ; $6f62: $b8
	add  sp, $18                                     ; $6f63: $e8 $18
	cp   b                                           ; $6f65: $b8
	cp   b                                           ; $6f66: $b8
	ret  nc                                          ; $6f67: $d0

	nop                                              ; $6f68: $00
	cp   b                                           ; $6f69: $b8
	cp   b                                           ; $6f6a: $b8
	cp   b                                           ; $6f6b: $b8
	add  sp, -$48                                    ; $6f6c: $e8 $b8
	cp   b                                           ; $6f6e: $b8
	cp   b                                           ; $6f6f: $b8
	ret  nc                                          ; $6f70: $d0

	cp   b                                           ; $6f71: $b8
	cp   b                                           ; $6f72: $b8
	cp   b                                           ; $6f73: $b8
	cp   b                                           ; $6f74: $b8


TitleMenuScreenAnimationHandler1:
	ld   a, $30                                      ; $6f75: $3e $30
	call Call_00a_6fbe                               ; $6f77: $cd $be $6f
	ld   a, $ff                                      ; $6f7a: $3e $ff
	ld   [$c328], a                                  ; $6f7c: $ea $28 $c3
	res  7, a                                        ; $6f7f: $cb $bf
	ld   [$c329], a                                  ; $6f81: $ea $29 $c3

jr_00a_6f84:
	ld   a, [$cc09]                                  ; $6f84: $fa $09 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $6f87: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6f8a: $cd $76 $30
	ld   bc, $2040                                   ; $6f8d: $01 $40 $20
	ld   a, $10                                      ; $6f90: $3e $10
	ld   de, $7762                                   ; $6f92: $11 $62 $77
	push af                                          ; $6f95: $f5
	ld   a, $03                                      ; $6f96: $3e $03
	ld   [wFarCallAddr], a                                  ; $6f98: $ea $98 $c2
	ld   a, $41                                      ; $6f9b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6f9d: $ea $99 $c2
	ld   a, $01                                      ; $6fa0: $3e $01
	ld   [wFarCallBank], a                                  ; $6fa2: $ea $9a $c2
	pop  af                                          ; $6fa5: $f1
	call FarCall                                       ; $6fa6: $cd $62 $09
	ld   a, [$cc08]                                  ; $6fa9: $fa $08 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $6fac: $cd $14 $30
	ld   a, $0a                                      ; $6faf: $3e $0a
	ld   [$cc04], a                                  ; $6fb1: $ea $04 $cc
	ld   a, $02                                      ; $6fb4: $3e $02
	ld   [wTitleScreenAnimationStep], a                                  ; $6fb6: $ea $02 $cc
	xor  a                                           ; $6fb9: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $6fba: $ea $03 $cc
	ret                                              ; $6fbd: $c9


Call_00a_6fbe:
	push af                                          ; $6fbe: $f5
	call todo_Updates_cc06                                       ; $6fbf: $cd $f3 $68
	ld   hl, $c602                                   ; $6fc2: $21 $02 $c6
	ld   bc, $0020                                   ; $6fc5: $01 $20 $00
	ld   de, $ffff                                   ; $6fc8: $11 $ff $ff
	call CopyEthenDintoHL_BCtimes                                       ; $6fcb: $cd $9f $09
	ld   a, [$cc08]                                  ; $6fce: $fa $08 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $6fd1: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6fd4: $cd $76 $30
	ld   a, [$cc06]                                  ; $6fd7: $fa $06 $cc
	ld   b, $00                                      ; $6fda: $06 $00
	ld   c, a                                        ; $6fdc: $4f
	push af                                          ; $6fdd: $f5
	ld   a, $d7                                      ; $6fde: $3e $d7
	ld   [wFarCallAddr], a                                  ; $6fe0: $ea $98 $c2
	ld   a, $44                                      ; $6fe3: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $6fe5: $ea $99 $c2
	ld   a, $01                                      ; $6fe8: $3e $01
	ld   [wFarCallBank], a                                  ; $6fea: $ea $9a $c2
	pop  af                                          ; $6fed: $f1
	call FarCall                                       ; $6fee: $cd $62 $09
	ld   c, $00                                      ; $6ff1: $0e $00
	push bc                                          ; $6ff3: $c5
	push af                                          ; $6ff4: $f5
	ld   a, $73                                      ; $6ff5: $3e $73
	ld   [wFarCallAddr], a                                  ; $6ff7: $ea $98 $c2
	ld   a, $72                                      ; $6ffa: $3e $72
	ld   [wFarCallAddr+1], a                                  ; $6ffc: $ea $99 $c2
	ld   a, $0c                                      ; $6fff: $3e $0c
	ld   [wFarCallBank], a                                  ; $7001: $ea $9a $c2
	pop  af                                          ; $7004: $f1
	call FarCall                                       ; $7005: $cd $62 $09
	pop  bc                                          ; $7008: $c1
	or   a                                           ; $7009: $b7
	jr   z, jr_00a_701b                              ; $700a: $28 $0f

	ld   a, [$cc0a]                                  ; $700c: $fa $0a $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $700f: $cd $14 $30
	inc  c                                           ; $7012: $0c
	ld   a, $a0                                      ; $7013: $3e $a0
	ld   [$c602], a                                  ; $7015: $ea $02 $c6
	ld   [$c603], a                                  ; $7018: $ea $03 $c6

jr_00a_701b:
	push bc                                          ; $701b: $c5
	push af                                          ; $701c: $f5
	ld   a, $8e                                      ; $701d: $3e $8e
	ld   [wFarCallAddr], a                                  ; $701f: $ea $98 $c2
	ld   a, $72                                      ; $7022: $3e $72
	ld   [wFarCallAddr+1], a                                  ; $7024: $ea $99 $c2
	ld   a, $0c                                      ; $7027: $3e $0c
	ld   [wFarCallBank], a                                  ; $7029: $ea $9a $c2
	pop  af                                          ; $702c: $f1
	call FarCall                                       ; $702d: $cd $62 $09
	pop  bc                                          ; $7030: $c1
	or   a                                           ; $7031: $b7
	jr   z, jr_00a_7043                              ; $7032: $28 $0f

	ld   a, [$cc0b]                                  ; $7034: $fa $0b $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $7037: $cd $14 $30
	inc  c                                           ; $703a: $0c
	ld   a, $a0                                      ; $703b: $3e $a0
	ld   [$c604], a                                  ; $703d: $ea $04 $c6
	ld   [$c605], a                                  ; $7040: $ea $05 $c6

jr_00a_7043:
	push bc                                          ; $7043: $c5
	push af                                          ; $7044: $f5
	ld   a, $af                                      ; $7045: $3e $af
	ld   [wFarCallAddr], a                                  ; $7047: $ea $98 $c2
	ld   a, $72                                      ; $704a: $3e $72
	ld   [wFarCallAddr+1], a                                  ; $704c: $ea $99 $c2
	ld   a, $0c                                      ; $704f: $3e $0c
	ld   [wFarCallBank], a                                  ; $7051: $ea $9a $c2
	pop  af                                          ; $7054: $f1
	call FarCall                                       ; $7055: $cd $62 $09
	pop  bc                                          ; $7058: $c1
	or   a                                           ; $7059: $b7
	jr   z, jr_00a_706b                              ; $705a: $28 $0f

	ld   a, [$cc0c]                                  ; $705c: $fa $0c $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $705f: $cd $14 $30
	inc  c                                           ; $7062: $0c
	ld   a, $a0                                      ; $7063: $3e $a0
	ld   [$c606], a                                  ; $7065: $ea $06 $c6
	ld   [$c607], a                                  ; $7068: $ea $07 $c6

jr_00a_706b:
	ld   a, [$cc0d]                                  ; $706b: $fa $0d $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $706e: $cd $14 $30
	inc  c                                           ; $7071: $0c
	ld   a, $a0                                      ; $7072: $3e $a0
	ld   [$c608], a                                  ; $7074: $ea $08 $c6
	ld   [$c609], a                                  ; $7077: $ea $09 $c6
	ld   b, $00                                      ; $707a: $06 $00
	sla  c                                           ; $707c: $cb $21
	ld   hl, $70be                                   ; $707e: $21 $be $70
	add  hl, bc                                      ; $7081: $09
	pop  bc                                          ; $7082: $c1
	ld   c, [hl]                                     ; $7083: $4e
	ld   hl, $cc0a                                   ; $7084: $21 $0a $cc
	ld   a, $04                                      ; $7087: $3e $04

jr_00a_7089:
	push af                                          ; $7089: $f5
	ld   a, [hl+]                                    ; $708a: $2a
	push hl                                          ; $708b: $e5
	ld   d, a                                        ; $708c: $57
	call Func_2ff9                                       ; $708d: $cd $f9 $2f
	or   a                                           ; $7090: $b7
	ld   a, d                                        ; $7091: $7a
	jr   z, jr_00a_70af                              ; $7092: $28 $1b

	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7094: $cd $76 $30
	push af                                          ; $7097: $f5
	ld   a, $55                                      ; $7098: $3e $55
	ld   [wFarCallAddr], a                                  ; $709a: $ea $98 $c2
	ld   a, $40                                      ; $709d: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $709f: $ea $99 $c2
	ld   a, $01                                      ; $70a2: $3e $01
	ld   [wFarCallBank], a                                  ; $70a4: $ea $9a $c2
	pop  af                                          ; $70a7: $f1
	call FarCall                                       ; $70a8: $cd $62 $09
	ld   a, c                                        ; $70ab: $79
	add  $18                                         ; $70ac: $c6 $18
	ld   c, a                                        ; $70ae: $4f

jr_00a_70af:
	pop  hl                                          ; $70af: $e1
	pop  af                                          ; $70b0: $f1
	dec  a                                           ; $70b1: $3d
	jr   nz, jr_00a_7089                             ; $70b2: $20 $d5

	call Call_00a_70c8                               ; $70b4: $cd $c8 $70
	ld   a, [$cc06]                                  ; $70b7: $fa $06 $cc
	call Call_00a_70fe                               ; $70ba: $cd $fe $70
	ret                                              ; $70bd: $c9


	and  b                                           ; $70be: $a0
	nop                                              ; $70bf: $00
	ld   b, b                                        ; $70c0: $40
	nop                                              ; $70c1: $00
	inc  [hl]                                        ; $70c2: $34
	nop                                              ; $70c3: $00
	jr   z, jr_00a_70c6                              ; $70c4: $28 $00

jr_00a_70c6:
	inc  e                                           ; $70c6: $1c
	nop                                              ; $70c7: $00

Call_00a_70c8:
	ld   hl, $cc0a                                   ; $70c8: $21 $0a $cc
	ld   de, $70f6                                   ; $70cb: $11 $f6 $70
	ld   a, $04                                      ; $70ce: $3e $04

jr_00a_70d0:
	push af                                          ; $70d0: $f5
	ld   a, [hl+]                                    ; $70d1: $2a
	push hl                                          ; $70d2: $e5
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $70d3: $cd $76 $30
	ld   a, [de]                                     ; $70d6: $1a
	inc  de                                          ; $70d7: $13
	ld   b, a                                        ; $70d8: $47
	ld   a, [de]                                     ; $70d9: $1a
	inc  de                                          ; $70da: $13
	ld   c, a                                        ; $70db: $4f
	push af                                          ; $70dc: $f5
	ld   a, $4b                                      ; $70dd: $3e $4b
	ld   [wFarCallAddr], a                                  ; $70df: $ea $98 $c2
	ld   a, $40                                      ; $70e2: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $70e4: $ea $99 $c2
	ld   a, $01                                      ; $70e7: $3e $01
	ld   [wFarCallBank], a                                  ; $70e9: $ea $9a $c2
	pop  af                                          ; $70ec: $f1
	call FarCall                                       ; $70ed: $cd $62 $09
	pop  hl                                          ; $70f0: $e1
	pop  af                                          ; $70f1: $f1
	dec  a                                           ; $70f2: $3d
	jr   nz, jr_00a_70d0                             ; $70f3: $20 $db

	ret                                              ; $70f5: $c9


	ld   bc, $0163                                   ; $70f6: $01 $63 $01
	ld   h, h                                        ; $70f9: $64
	ld   bc, $0165                                   ; $70fa: $01 $65 $01
	ld   h, [hl]                                     ; $70fd: $66

Call_00a_70fe:
	ld   h, $00                                      ; $70fe: $26 $00
	ld   l, a                                        ; $7100: $6f
	ld   bc, $cc0a                                   ; $7101: $01 $0a $cc
	add  hl, bc                                      ; $7104: $09
	ld   a, [hl]                                     ; $7105: $7e
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7106: $cd $76 $30
	push af                                          ; $7109: $f5
	ld   a, $6a                                      ; $710a: $3e $6a
	ld   [wFarCallAddr], a                                  ; $710c: $ea $98 $c2
	ld   a, $40                                      ; $710f: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $7111: $ea $99 $c2
	ld   a, $01                                      ; $7114: $3e $01
	ld   [wFarCallBank], a                                  ; $7116: $ea $9a $c2
	pop  af                                          ; $7119: $f1
	call FarCall                                       ; $711a: $cd $62 $09
	ld   a, c                                        ; $711d: $79
	add  $08                                         ; $711e: $c6 $08
	ld   c, a                                        ; $7120: $4f
	push af                                          ; $7121: $f5
	ld   a, $4b                                      ; $7122: $3e $4b
	ld   [wFarCallAddr], a                                  ; $7124: $ea $98 $c2
	ld   a, $40                                      ; $7127: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $7129: $ea $99 $c2
	ld   a, $01                                      ; $712c: $3e $01
	ld   [wFarCallBank], a                                  ; $712e: $ea $9a $c2
	pop  af                                          ; $7131: $f1
	call FarCall                                       ; $7132: $cd $62 $09
	ld   a, $25                                      ; $7135: $3e $25
	ld   hl, $cc0e                                   ; $7137: $21 $0e $cc
	push af                                          ; $713a: $f5
	ld   a, $8f                                      ; $713b: $3e $8f
	ld   [wFarCallAddr], a                                  ; $713d: $ea $98 $c2
	ld   a, $59                                      ; $7140: $3e $59
	ld   [wFarCallAddr+1], a                                  ; $7142: $ea $99 $c2
	ld   a, $0a                                      ; $7145: $3e $0a
	ld   [wFarCallBank], a                                  ; $7147: $ea $9a $c2
	pop  af                                          ; $714a: $f1
	call FarCall                                       ; $714b: $cd $62 $09
	ret                                              ; $714e: $c9


TitleMenuScreenAnimationHandler8:
	ld   a, $a8                                      ; $714f: $3e $a8
	call Call_00a_6fbe                               ; $7151: $cd $be $6f
	ld   hl, wTitleScreenAnimationStep                                   ; $7154: $21 $02 $cc
	inc  [hl]                                        ; $7157: $34
	xor  a                                           ; $7158: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $7159: $ea $03 $cc
	ret                                              ; $715c: $c9


TitleMenuScreenAnimationHandler9:
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $715d: $21 $03 $cc
	ld   a, [hl]                                     ; $7160: $7e
	inc  [hl]                                        ; $7161: $34
	sla  a                                           ; $7162: $cb $27
	sla  a                                           ; $7164: $cb $27
	ld   h, $00                                      ; $7166: $26 $00
	ld   l, a                                        ; $7168: $6f
	ld   bc, $7202                                   ; $7169: $01 $02 $72
	add  hl, bc                                      ; $716c: $09
	ld   d, h                                        ; $716d: $54
	ld   e, l                                        ; $716e: $5d
	ld   hl, $cc0a                                   ; $716f: $21 $0a $cc
	ld   a, $04                                      ; $7172: $3e $04

jr_00a_7174:
	push af                                          ; $7174: $f5
	ld   a, [hl+]                                    ; $7175: $2a
	push hl                                          ; $7176: $e5
	ld   b, a                                        ; $7177: $47
	call Func_2ff9                                       ; $7178: $cd $f9 $2f
	or   a                                           ; $717b: $b7
	ld   a, b                                        ; $717c: $78
	jr   z, jr_00a_71ad                              ; $717d: $28 $2e

	call HLequAddrOfAnimSpriteSpecDetails                                       ; $717f: $cd $76 $30
	push af                                          ; $7182: $f5
	ld   a, $71                                      ; $7183: $3e $71
	ld   [wFarCallAddr], a                                  ; $7185: $ea $98 $c2
	ld   a, $40                                      ; $7188: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $718a: $ea $99 $c2
	ld   a, $01                                      ; $718d: $3e $01
	ld   [wFarCallBank], a                                  ; $718f: $ea $9a $c2
	pop  af                                          ; $7192: $f1
	call FarCall                                       ; $7193: $cd $62 $09
	ld   a, [de]                                     ; $7196: $1a
	inc  de                                          ; $7197: $13
	ld   b, a                                        ; $7198: $47
	push af                                          ; $7199: $f5
	ld   a, $55                                      ; $719a: $3e $55
	ld   [wFarCallAddr], a                                  ; $719c: $ea $98 $c2
	ld   a, $40                                      ; $719f: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $71a1: $ea $99 $c2
	ld   a, $01                                      ; $71a4: $3e $01
	ld   [wFarCallBank], a                                  ; $71a6: $ea $9a $c2
	pop  af                                          ; $71a9: $f1
	call FarCall                                       ; $71aa: $cd $62 $09

jr_00a_71ad:
	pop  hl                                          ; $71ad: $e1
	pop  af                                          ; $71ae: $f1
	dec  a                                           ; $71af: $3d
	jr   nz, jr_00a_7174                             ; $71b0: $20 $c2

	dec  de                                          ; $71b2: $1b
	ld   a, [de]                                     ; $71b3: $1a
	cp   $30                                         ; $71b4: $fe $30
	ret  nz                                          ; $71b6: $c0

	ld   a, [$cc09]                                  ; $71b7: $fa $09 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $71ba: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $71bd: $cd $76 $30
	ld   bc, $2040                                   ; $71c0: $01 $40 $20
	ld   a, $10                                      ; $71c3: $3e $10
	ld   de, $7762                                   ; $71c5: $11 $62 $77
	push af                                          ; $71c8: $f5
	ld   a, $03                                      ; $71c9: $3e $03
	ld   [wFarCallAddr], a                                  ; $71cb: $ea $98 $c2
	ld   a, $41                                      ; $71ce: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $71d0: $ea $99 $c2
	ld   a, $01                                      ; $71d3: $3e $01
	ld   [wFarCallBank], a                                  ; $71d5: $ea $9a $c2
	pop  af                                          ; $71d8: $f1
	call FarCall                                       ; $71d9: $cd $62 $09
	ld   a, [$cc08]                                  ; $71dc: $fa $08 $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $71df: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $71e2: $cd $76 $30
	push af                                          ; $71e5: $f5
	ld   a, $95                                      ; $71e6: $3e $95
	ld   [wFarCallAddr], a                                  ; $71e8: $ea $98 $c2
	ld   a, $44                                      ; $71eb: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $71ed: $ea $99 $c2
	ld   a, $01                                      ; $71f0: $3e $01
	ld   [wFarCallBank], a                                  ; $71f2: $ea $9a $c2
	pop  af                                          ; $71f5: $f1
	call FarCall                                       ; $71f6: $cd $62 $09
	ld   hl, wTitleScreenAnimationStep                                   ; $71f9: $21 $02 $cc
	inc  [hl]                                        ; $71fc: $34
	xor  a                                           ; $71fd: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $71fe: $ea $03 $cc
	ret                                              ; $7201: $c9


	sub  b                                           ; $7202: $90
	xor  b                                           ; $7203: $a8
	xor  b                                           ; $7204: $a8
	xor  b                                           ; $7205: $a8
	ld   a, b                                        ; $7206: $78
	xor  b                                           ; $7207: $a8
	xor  b                                           ; $7208: $a8
	xor  b                                           ; $7209: $a8
	ld   h, b                                        ; $720a: $60
	sub  b                                           ; $720b: $90
	xor  b                                           ; $720c: $a8
	xor  b                                           ; $720d: $a8
	ld   c, b                                        ; $720e: $48
	ld   a, b                                        ; $720f: $78
	xor  b                                           ; $7210: $a8
	xor  b                                           ; $7211: $a8
	jr   nc, jr_00a_7274                             ; $7212: $30 $60

	sub  b                                           ; $7214: $90
	xor  b                                           ; $7215: $a8
	jr   nc, @+$4a                                   ; $7216: $30 $48

	ld   a, b                                        ; $7218: $78
	xor  b                                           ; $7219: $a8
	jr   nc, @+$32                                   ; $721a: $30 $30

	ld   h, b                                        ; $721c: $60
	sub  b                                           ; $721d: $90
	jr   nc, @+$32                                   ; $721e: $30 $30

	ld   c, b                                        ; $7220: $48
	ld   a, b                                        ; $7221: $78
	jr   nc, jr_00a_7254                             ; $7222: $30 $30

	jr   nc, @+$62                                   ; $7224: $30 $60

	jr   nc, jr_00a_7258                             ; $7226: $30 $30

	jr   nc, @+$4a                                   ; $7228: $30 $48

	jr   nc, jr_00a_725c                             ; $722a: $30 $30

	jr   nc, jr_00a_725e                             ; $722c: $30 $30


TitleMenuScreenAnimationHandlerA:
	call Call_00a_70c8                               ; $722e: $cd $c8 $70
	ld   a, [wInGameButtonsPressed]                                  ; $7231: $fa $10 $c2
	cp   $20                                         ; $7234: $fe $20
	jr   nz, jr_00a_7241                             ; $7236: $20 $09

	ld   a, $21                                      ; $7238: $3e $21
	call Func_1adf                                       ; $723a: $cd $df $1a
	ld   a, $ff                                      ; $723d: $3e $ff
	jr   jr_00a_727c                                 ; $723f: $18 $3b

jr_00a_7241:
	ld   a, [$cc08]                                  ; $7241: $fa $08 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7244: $cd $76 $30
	push af                                          ; $7247: $f5
	ld   a, $0a                                      ; $7248: $3e $0a
	ld   [wFarCallAddr], a                                  ; $724a: $ea $98 $c2
	ld   a, $45                                      ; $724d: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $724f: $ea $99 $c2
	ld   a, $01                                      ; $7252: $3e $01

jr_00a_7254:
	ld   [wFarCallBank], a                                  ; $7254: $ea $9a $c2
	pop  af                                          ; $7257: $f1

jr_00a_7258:
	call FarCall                                       ; $7258: $cd $62 $09
	or   a                                           ; $725b: $b7

jr_00a_725c:
	jr   nz, jr_00a_727c                             ; $725c: $20 $1e

jr_00a_725e:
	ld   a, [$cc08]                                  ; $725e: $fa $08 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7261: $cd $76 $30
	push af                                          ; $7264: $f5
	ld   a, $00                                      ; $7265: $3e $00
	ld   [wFarCallAddr], a                                  ; $7267: $ea $98 $c2
	ld   a, $45                                      ; $726a: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $726c: $ea $99 $c2
	ld   a, $01                                      ; $726f: $3e $01
	ld   [wFarCallBank], a                                  ; $7271: $ea $9a $c2

jr_00a_7274:
	pop  af                                          ; $7274: $f1
	call FarCall                                       ; $7275: $cd $62 $09
	call Call_00a_70fe                               ; $7278: $cd $fe $70
	ret                                              ; $727b: $c9


jr_00a_727c:
	push af                                          ; $727c: $f5
	push af                                          ; $727d: $f5
	ld   a, $a0                                      ; $727e: $3e $a0
	ld   [wFarCallAddr], a                                  ; $7280: $ea $98 $c2
	ld   a, $44                                      ; $7283: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $7285: $ea $99 $c2
	ld   a, $01                                      ; $7288: $3e $01
	ld   [wFarCallBank], a                                  ; $728a: $ea $9a $c2
	pop  af                                          ; $728d: $f1
	call FarCall                                       ; $728e: $cd $62 $09
	ld   a, [$cc09]                                  ; $7291: $fa $09 $cc
	call Func_3006                                       ; $7294: $cd $06 $30
	pop  af                                          ; $7297: $f1
	bit  7, a                                        ; $7298: $cb $7f
	jr   nz, jr_00a_72af                             ; $729a: $20 $13

	dec  a                                           ; $729c: $3d
	ld   [$cc06], a                                  ; $729d: $ea $06 $cc
	add  $04                                         ; $72a0: $c6 $04
	ld   [$cc07], a                                  ; $72a2: $ea $07 $cc
	ld   a, $0d                                      ; $72a5: $3e $0d
	ld   [wTitleScreenAnimationStep], a                                  ; $72a7: $ea $02 $cc
	xor  a                                           ; $72aa: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $72ab: $ea $03 $cc
	ret                                              ; $72ae: $c9


jr_00a_72af:
	ld   a, [$cc08]                                  ; $72af: $fa $08 $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $72b2: $cd $76 $30
	push af                                          ; $72b5: $f5
	ld   a, $a0                                      ; $72b6: $3e $a0
	ld   [wFarCallAddr], a                                  ; $72b8: $ea $98 $c2
	ld   a, $44                                      ; $72bb: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $72bd: $ea $99 $c2
	ld   a, $01                                      ; $72c0: $3e $01
	ld   [wFarCallBank], a                                  ; $72c2: $ea $9a $c2
	pop  af                                          ; $72c5: $f1
	call FarCall                                       ; $72c6: $cd $62 $09
	push af                                          ; $72c9: $f5
	ld   a, $00                                      ; $72ca: $3e $00
	ld   [wFarCallAddr], a                                  ; $72cc: $ea $98 $c2
	ld   a, $45                                      ; $72cf: $3e $45
	ld   [wFarCallAddr+1], a                                  ; $72d1: $ea $99 $c2
	ld   a, $01                                      ; $72d4: $3e $01
	ld   [wFarCallBank], a                                  ; $72d6: $ea $9a $c2
	pop  af                                          ; $72d9: $f1
	call FarCall                                       ; $72da: $cd $62 $09
	ld   [$cc06], a                                  ; $72dd: $ea $06 $cc
	ld   hl, wTitleScreenAnimationStep                                   ; $72e0: $21 $02 $cc
	inc  [hl]                                        ; $72e3: $34
	xor  a                                           ; $72e4: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $72e5: $ea $03 $cc
	ret                                              ; $72e8: $c9


TitleMenuScreenAnimationHandlerB:
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $72e9: $21 $03 $cc
	ld   a, [hl]                                     ; $72ec: $7e
	inc  [hl]                                        ; $72ed: $34
	sla  a                                           ; $72ee: $cb $27
	sla  a                                           ; $72f0: $cb $27
	ld   h, $00                                      ; $72f2: $26 $00
	ld   l, a                                        ; $72f4: $6f
	ld   bc, $7365                                   ; $72f5: $01 $65 $73
	add  hl, bc                                      ; $72f8: $09
	ld   d, h                                        ; $72f9: $54
	ld   e, l                                        ; $72fa: $5d
	ld   hl, $cc0a                                   ; $72fb: $21 $0a $cc
	ld   a, $04                                      ; $72fe: $3e $04

jr_00a_7300:
	push af                                          ; $7300: $f5
	ld   a, [hl+]                                    ; $7301: $2a
	push hl                                          ; $7302: $e5
	ld   b, a                                        ; $7303: $47
	call Func_2ff9                                       ; $7304: $cd $f9 $2f
	or   a                                           ; $7307: $b7
	ld   a, b                                        ; $7308: $78
	jr   z, jr_00a_7339                              ; $7309: $28 $2e

	call HLequAddrOfAnimSpriteSpecDetails                                       ; $730b: $cd $76 $30
	push af                                          ; $730e: $f5
	ld   a, $71                                      ; $730f: $3e $71
	ld   [wFarCallAddr], a                                  ; $7311: $ea $98 $c2
	ld   a, $40                                      ; $7314: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $7316: $ea $99 $c2
	ld   a, $01                                      ; $7319: $3e $01
	ld   [wFarCallBank], a                                  ; $731b: $ea $9a $c2
	pop  af                                          ; $731e: $f1
	call FarCall                                       ; $731f: $cd $62 $09

jr_00a_7322:
	ld   a, [de]                                     ; $7322: $1a
	inc  de                                          ; $7323: $13
	ld   b, a                                        ; $7324: $47
	push af                                          ; $7325: $f5

jr_00a_7326:
	ld   a, $55                                      ; $7326: $3e $55
	ld   [wFarCallAddr], a                                  ; $7328: $ea $98 $c2
	ld   a, $40                                      ; $732b: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $732d: $ea $99 $c2
	ld   a, $01                                      ; $7330: $3e $01
	ld   [wFarCallBank], a                                  ; $7332: $ea $9a $c2
	pop  af                                          ; $7335: $f1
	call FarCall                                       ; $7336: $cd $62 $09

jr_00a_7339:
	pop  hl                                          ; $7339: $e1
	pop  af                                          ; $733a: $f1
	dec  a                                           ; $733b: $3d
	jr   nz, jr_00a_7300                             ; $733c: $20 $c2

	dec  de                                          ; $733e: $1b
	ld   a, [de]                                     ; $733f: $1a
	cp   $a8                                         ; $7340: $fe $a8
	ret  nz                                          ; $7342: $c0

	ld   a, [$cc0a]                                  ; $7343: $fa $0a $cc
	call Func_3006                                       ; $7346: $cd $06 $30
	ld   a, [$cc0b]                                  ; $7349: $fa $0b $cc
	call Func_3006                                       ; $734c: $cd $06 $30
	ld   a, [$cc0c]                                  ; $734f: $fa $0c $cc
	call Func_3006                                       ; $7352: $cd $06 $30
	ld   a, [$cc0d]                                  ; $7355: $fa $0d $cc
	call Func_3006                                       ; $7358: $cd $06 $30
	ld   a, $04                                      ; $735b: $3e $04
	ld   [wTitleScreenAnimationStep], a                                  ; $735d: $ea $02 $cc
	xor  a                                           ; $7360: $af
	ld   [wTitleScreenMiscCounterIdx], a                                  ; $7361: $ea $03 $cc
	ret                                              ; $7364: $c9


	ld   c, b                                        ; $7365: $48
	jr   nc, jr_00a_7398                             ; $7366: $30 $30

	jr   nc, @+$62                                   ; $7368: $30 $60

	jr   nc, @+$32                                   ; $736a: $30 $30

	jr   nc, jr_00a_73e6                             ; $736c: $30 $78

	ld   c, b                                        ; $736e: $48
	jr   nc, @+$32                                   ; $736f: $30 $30

	sub  b                                           ; $7371: $90
	ld   h, b                                        ; $7372: $60
	jr   nc, @+$32                                   ; $7373: $30 $30

	xor  b                                           ; $7375: $a8
	ld   a, b                                        ; $7376: $78
	ld   c, b                                        ; $7377: $48
	jr   nc, jr_00a_7322                             ; $7378: $30 $a8

	sub  b                                           ; $737a: $90
	ld   h, b                                        ; $737b: $60
	jr   nc, jr_00a_7326                             ; $737c: $30 $a8

	xor  b                                           ; $737e: $a8
	ld   a, b                                        ; $737f: $78
	ld   c, b                                        ; $7380: $48
	xor  b                                           ; $7381: $a8
	xor  b                                           ; $7382: $a8
	sub  b                                           ; $7383: $90
	ld   h, b                                        ; $7384: $60
	xor  b                                           ; $7385: $a8
	xor  b                                           ; $7386: $a8
	xor  b                                           ; $7387: $a8
	ld   a, b                                        ; $7388: $78
	xor  b                                           ; $7389: $a8
	xor  b                                           ; $738a: $a8
	xor  b                                           ; $738b: $a8
	sub  b                                           ; $738c: $90
	xor  b                                           ; $738d: $a8
	xor  b                                           ; $738e: $a8
	xor  b                                           ; $738f: $a8
	xor  b                                           ; $7390: $a8


TitleMenuScreenAnimationHandlerD:
	ld   a, [wTitleScreenMiscCounterIdx]                                  ; $7391: $fa $03 $cc
	or   a                                           ; $7394: $b7
	jr   nz, jr_00a_73af                             ; $7395: $20 $18

	xor  a                                           ; $7397: $af

jr_00a_7398:
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7398: $ea $62 $c3
	ld   a, $40                                      ; $739b: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $739d: $ea $63 $c3
	ld   a, $03                                      ; $73a0: $3e $03
	ld   b, $00                                      ; $73a2: $06 $00
	ld   hl, wBGPalettes                                   ; $73a4: $21 $de $c2
	ld   c, $01                                      ; $73a7: $0e $01
	ld   de, $7000                                   ; $73a9: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $73ac: $cd $48 $07

jr_00a_73af:
	ld   hl, wTitleScreenMiscCounterIdx                                   ; $73af: $21 $03 $cc
	ld   a, [hl]                                     ; $73b2: $7e
	inc  [hl]                                        ; $73b3: $34
	cp   $1f                                         ; $73b4: $fe $1f
	jr   nc, jr_00a_73c1                             ; $73b6: $30 $09

	and  $03                                         ; $73b8: $e6 $03
	ret  nz                                          ; $73ba: $c0

	ld   bc, $0040                                   ; $73bb: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $73be: $c3 $32 $08


jr_00a_73c1:
	ld   a, $01                                      ; $73c1: $3e $01
	ld   hl, $7000                                   ; $73c3: $21 $00 $70
	ld   de, wBGPalettes                                   ; $73c6: $11 $de $c2
	ld   bc, $0080                                   ; $73c9: $01 $80 $00
	call FarMemCopy                                       ; $73cc: $cd $b2 $09
	ld   bc, $003f                                   ; $73cf: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $73d2: $cd $aa $04
	ld   a, [$cc07]                                  ; $73d5: $fa $07 $cc
	sla  a                                           ; $73d8: $cb $27
	ld   h, $00                                      ; $73da: $26 $00
	ld   l, a                                        ; $73dc: $6f
	ld   bc, $73e5                                   ; $73dd: $01 $e5 $73
	add  hl, bc                                      ; $73e0: $09
	ld   a, [hl+]                                    ; $73e1: $2a
	ld   h, [hl]                                     ; $73e2: $66
	ld   l, a                                        ; $73e3: $6f
	jp   hl                                          ; $73e4: $e9


	rst  $30                                         ; $73e5: $f7

jr_00a_73e6:
	ld   [hl], e                                     ; $73e6: $73
	jr   jr_00a_745d                                 ; $73e7: $18 $74

	ld   b, b                                        ; $73e9: $40
	ld   [hl], h                                     ; $73ea: $74
	ld   l, d                                        ; $73eb: $6a
	ld   [hl], h                                     ; $73ec: $74
	adc  e                                           ; $73ed: $8b
	ld   [hl], h                                     ; $73ee: $74
	ld   hl, $5c75                                   ; $73ef: $21 $75 $5c
	ld   [hl], l                                     ; $73f2: $75
	and  b                                           ; $73f3: $a0
	ld   [hl], l                                     ; $73f4: $75
	cp   l                                           ; $73f5: $bd
	ld   [hl], l                                     ; $73f6: $75
	xor  a                                           ; $73f7: $af
	call PlaySound                                       ; $73f8: $cd $92 $1a
	ld   h, $37                                      ; $73fb: $26 $37
	ld   l, $01                                      ; $73fd: $2e $01
	ld   bc, $0006                                   ; $73ff: $01 $06 $00
	xor  a                                           ; $7402: $af
	push af                                          ; $7403: $f5
	ld   a, $30                                      ; $7404: $3e $30
	ld   [wFarCallAddr], a                                  ; $7406: $ea $98 $c2
	ld   a, $79                                      ; $7409: $3e $79
	ld   [wFarCallAddr+1], a                                  ; $740b: $ea $99 $c2
	ld   a, $0c                                      ; $740e: $3e $0c
	ld   [wFarCallBank], a                                  ; $7410: $ea $9a $c2
	pop  af                                          ; $7413: $f1
	call FarCall                                       ; $7414: $cd $62 $09
	ret                                              ; $7417: $c9


	xor  a                                           ; $7418: $af
	call PlaySound                                       ; $7419: $cd $92 $1a
	xor  a                                           ; $741c: $af
	ld   [$cb1d], a                                  ; $741d: $ea $1d $cb
	ld   a, $03                                      ; $7420: $3e $03
	push af                                          ; $7422: $f5
	ld   a, $28                                      ; $7423: $3e $28
	ld   [wFarCallAddr], a                                  ; $7425: $ea $98 $c2
	ld   a, $44                                      ; $7428: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $742a: $ea $99 $c2
	ld   a, $0a                                      ; $742d: $3e $0a
	ld   [wFarCallBank], a                                  ; $742f: $ea $9a $c2
	pop  af                                          ; $7432: $f1
	call FarCall                                       ; $7433: $cd $62 $09
	ld   a, $38                                      ; $7436: $3e $38
	ld   [wGameState], a                                  ; $7438: $ea $a0 $c2
	xor  a                                           ; $743b: $af
	ld   [wGameSubstate], a                                  ; $743c: $ea $a1 $c2
	ret                                              ; $743f: $c9


	xor  a                                           ; $7440: $af
	call PlaySound                                       ; $7441: $cd $92 $1a
	ld   a, $ff                                      ; $7444: $3e $ff
	ld   [$cc1d], a                                  ; $7446: $ea $1d $cc
	xor  a                                           ; $7449: $af
	ld   [$cb1d], a                                  ; $744a: $ea $1d $cb
	ld   h, $38                                      ; $744d: $26 $38
	ld   l, $00                                      ; $744f: $2e $00
	ld   d, $37                                      ; $7451: $16 $37
	ld   e, $01                                      ; $7453: $1e $01
	push af                                          ; $7455: $f5
	ld   a, $89                                      ; $7456: $3e $89
	ld   [wFarCallAddr], a                                  ; $7458: $ea $98 $c2
	ld   a, $4e                                      ; $745b: $3e $4e

jr_00a_745d:
	ld   [wFarCallAddr+1], a                                  ; $745d: $ea $99 $c2
	ld   a, $10                                      ; $7460: $3e $10
	ld   [wFarCallBank], a                                  ; $7462: $ea $9a $c2
	pop  af                                          ; $7465: $f1
	call FarCall                                       ; $7466: $cd $62 $09
	ret                                              ; $7469: $c9


	xor  a                                           ; $746a: $af
	call PlaySound                                       ; $746b: $cd $92 $1a
	ld   a, $14                                      ; $746e: $3e $14
	ld   h, $37                                      ; $7470: $26 $37
	ld   l, $01                                      ; $7472: $2e $01
	ld   b, $ff                                      ; $7474: $06 $ff
	push af                                          ; $7476: $f5
	ld   a, $38                                      ; $7477: $3e $38
	ld   [wFarCallAddr], a                                  ; $7479: $ea $98 $c2
	ld   a, $4f                                      ; $747c: $3e $4f
	ld   [wFarCallAddr+1], a                                  ; $747e: $ea $99 $c2
	ld   a, $3e                                      ; $7481: $3e $3e
	ld   [wFarCallBank], a                                  ; $7483: $ea $9a $c2
	pop  af                                          ; $7486: $f1
	call FarCall                                       ; $7487: $cd $62 $09
	ret                                              ; $748a: $c9


	ld   hl, $0002                                   ; $748b: $21 $02 $00
	push af                                          ; $748e: $f5
	ld   a, $35                                      ; $748f: $3e $35
	ld   [wFarCallAddr], a                                  ; $7491: $ea $98 $c2
	ld   a, $42                                      ; $7494: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $7496: $ea $99 $c2
	ld   a, $0a                                      ; $7499: $3e $0a
	ld   [wFarCallBank], a                                  ; $749b: $ea $9a $c2
	pop  af                                          ; $749e: $f1
	call FarCall                                       ; $749f: $cd $62 $09
	or   a                                           ; $74a2: $b7
	jr   z, jr_00a_74f0                              ; $74a3: $28 $4b

	push af                                          ; $74a5: $f5
	ld   a, $4b                                      ; $74a6: $3e $4b
	ld   [wFarCallAddr], a                                  ; $74a8: $ea $98 $c2
	ld   a, $55                                      ; $74ab: $3e $55
	ld   [wFarCallAddr+1], a                                  ; $74ad: $ea $99 $c2
	ld   a, $04                                      ; $74b0: $3e $04
	ld   [wFarCallBank], a                                  ; $74b2: $ea $9a $c2
	pop  af                                          ; $74b5: $f1
	call FarCall                                       ; $74b6: $cd $62 $09
	or   a                                           ; $74b9: $b7
	jr   nz, jr_00a_74f6                             ; $74ba: $20 $3a

	push af                                          ; $74bc: $f5
	ld   a, $3e                                      ; $74bd: $3e $3e
	ld   [wFarCallAddr], a                                  ; $74bf: $ea $98 $c2
	ld   a, $55                                      ; $74c2: $3e $55
	ld   [wFarCallAddr+1], a                                  ; $74c4: $ea $99 $c2
	ld   a, $04                                      ; $74c7: $3e $04
	ld   [wFarCallBank], a                                  ; $74c9: $ea $9a $c2
	pop  af                                          ; $74cc: $f1
	call FarCall                                       ; $74cd: $cd $62 $09
	or   a                                           ; $74d0: $b7
	jr   nz, jr_00a_74fd                             ; $74d1: $20 $2a

	xor  a                                           ; $74d3: $af
	call PlaySound                                       ; $74d4: $cd $92 $1a
	ld   h, $37                                      ; $74d7: $26 $37
	ld   l, $02                                      ; $74d9: $2e $02
	push af                                          ; $74db: $f5
	ld   a, $7d                                      ; $74dc: $3e $7d
	ld   [wFarCallAddr], a                                  ; $74de: $ea $98 $c2
	ld   a, $55                                      ; $74e1: $3e $55
	ld   [wFarCallAddr+1], a                                  ; $74e3: $ea $99 $c2
	ld   a, $04                                      ; $74e6: $3e $04
	ld   [wFarCallBank], a                                  ; $74e8: $ea $9a $c2
	pop  af                                          ; $74eb: $f1
	call FarCall                                       ; $74ec: $cd $62 $09
	ret                                              ; $74ef: $c9


jr_00a_74f0:
	xor  a                                           ; $74f0: $af
	ld   [$b0aa], a                                  ; $74f1: $ea $aa $b0
	jr   jr_00a_7502                                 ; $74f4: $18 $0c

jr_00a_74f6:
	ld   a, $02                                      ; $74f6: $3e $02
	ld   [$b0aa], a                                  ; $74f8: $ea $aa $b0
	jr   jr_00a_7502                                 ; $74fb: $18 $05

jr_00a_74fd:
	ld   a, $03                                      ; $74fd: $3e $03
	ld   [$b0aa], a                                  ; $74ff: $ea $aa $b0

Jump_00a_7502:
jr_00a_7502:
	ld   bc, $0011                                   ; $7502: $01 $11 $00
	ld   h, $37                                      ; $7505: $26 $37
	ld   l, $02                                      ; $7507: $2e $02
	ld   a, [$c653]                                  ; $7509: $fa $53 $c6
	push af                                          ; $750c: $f5
	ld   a, $8f                                      ; $750d: $3e $8f
	ld   [wFarCallAddr], a                                  ; $750f: $ea $98 $c2
	ld   a, $75                                      ; $7512: $3e $75
	ld   [wFarCallAddr+1], a                                  ; $7514: $ea $99 $c2
	ld   a, $0c                                      ; $7517: $3e $0c
	ld   [wFarCallBank], a                                  ; $7519: $ea $9a $c2
	pop  af                                          ; $751c: $f1
	call FarCall                                       ; $751d: $cd $62 $09
	ret                                              ; $7520: $c9


	push af                                          ; $7521: $f5
	ld   a, $4e                                      ; $7522: $3e $4e
	ld   [wFarCallAddr], a                                  ; $7524: $ea $98 $c2
	ld   a, $69                                      ; $7527: $3e $69
	ld   [wFarCallAddr+1], a                                  ; $7529: $ea $99 $c2
	ld   a, $09                                      ; $752c: $3e $09
	ld   [wFarCallBank], a                                  ; $752e: $ea $9a $c2
	pop  af                                          ; $7531: $f1
	call FarCall                                       ; $7532: $cd $62 $09
	or   a                                           ; $7535: $b7
	jr   nz, jr_00a_7555                             ; $7536: $20 $1d

	xor  a                                           ; $7538: $af
	call PlaySound                                       ; $7539: $cd $92 $1a
	ld   h, $37                                      ; $753c: $26 $37
	ld   l, $02                                      ; $753e: $2e $02
	push af                                          ; $7540: $f5
	ld   a, $5b                                      ; $7541: $3e $5b
	ld   [wFarCallAddr], a                                  ; $7543: $ea $98 $c2
	ld   a, $69                                      ; $7546: $3e $69
	ld   [wFarCallAddr+1], a                                  ; $7548: $ea $99 $c2
	ld   a, $09                                      ; $754b: $3e $09
	ld   [wFarCallBank], a                                  ; $754d: $ea $9a $c2
	pop  af                                          ; $7550: $f1
	call FarCall                                       ; $7551: $cd $62 $09
	ret                                              ; $7554: $c9


jr_00a_7555:
	ld   a, $0a                                      ; $7555: $3e $0a
	ld   [$b0aa], a                                  ; $7557: $ea $aa $b0
	jr   jr_00a_7502                                 ; $755a: $18 $a6

	ld   hl, $0002                                   ; $755c: $21 $02 $00
	push af                                          ; $755f: $f5
	ld   a, $35                                      ; $7560: $3e $35
	ld   [wFarCallAddr], a                                  ; $7562: $ea $98 $c2
	ld   a, $42                                      ; $7565: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $7567: $ea $99 $c2
	ld   a, $0a                                      ; $756a: $3e $0a
	ld   [wFarCallBank], a                                  ; $756c: $ea $9a $c2
	pop  af                                          ; $756f: $f1
	call FarCall                                       ; $7570: $cd $62 $09
	or   a                                           ; $7573: $b7
	jr   z, jr_00a_7598                              ; $7574: $28 $22

	xor  a                                           ; $7576: $af
	call PlaySound                                       ; $7577: $cd $92 $1a
	ld   a, $01                                      ; $757a: $3e $01
	ld   [$cb1d], a                                  ; $757c: $ea $1d $cb
	ld   h, $37                                      ; $757f: $26 $37
	ld   l, $02                                      ; $7581: $2e $02
	push af                                          ; $7583: $f5
	ld   a, $4a                                      ; $7584: $3e $4a
	ld   [wFarCallAddr], a                                  ; $7586: $ea $98 $c2
	ld   a, $56                                      ; $7589: $3e $56
	ld   [wFarCallAddr+1], a                                  ; $758b: $ea $99 $c2
	ld   a, $30                                      ; $758e: $3e $30
	ld   [wFarCallBank], a                                  ; $7590: $ea $9a $c2
	pop  af                                          ; $7593: $f1
	call FarCall                                       ; $7594: $cd $62 $09
	ret                                              ; $7597: $c9


jr_00a_7598:
	ld   a, $14                                      ; $7598: $3e $14
	ld   [$b0aa], a                                  ; $759a: $ea $aa $b0
	jp   Jump_00a_7502                               ; $759d: $c3 $02 $75


	xor  a                                           ; $75a0: $af
	call PlaySound                                       ; $75a1: $cd $92 $1a
	ld   h, $37                                      ; $75a4: $26 $37
	ld   l, $02                                      ; $75a6: $2e $02
	push af                                          ; $75a8: $f5
	ld   a, $00                                      ; $75a9: $3e $00
	ld   [wFarCallAddr], a                                  ; $75ab: $ea $98 $c2
	ld   a, $67                                      ; $75ae: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $75b0: $ea $99 $c2
	ld   a, $10                                      ; $75b3: $3e $10
	ld   [wFarCallBank], a                                  ; $75b5: $ea $9a $c2
	pop  af                                          ; $75b8: $f1
	call FarCall                                       ; $75b9: $cd $62 $09
	ret                                              ; $75bc: $c9


	ld   a, $36                                      ; $75bd: $3e $36
	ld   [wGameState], a                                  ; $75bf: $ea $a0 $c2
	ld   a, $01                                      ; $75c2: $3e $01
	ld   [wGameSubstate], a                                  ; $75c4: $ea $a1 $c2
	ret                                              ; $75c7: $c9


if def (VWF)

TitleScreenVramBank0_8000h_hook:
	call RLEXorCopy

	ld   bc, $10
	ld   de, wTitleScreenTileDataBuffer+$600
	ld   hl, .belowA
	call MemCopy

	ld   bc, $10
	ld   de, wTitleScreenTileDataBuffer+$620
	ld   hl, .rightSideOfA
	call MemCopy

	ld   bc, $10
	ld   de, wTitleScreenTileDataBuffer+$640
	ld   hl, .leftOfS
	call MemCopy

	ld   bc, $10
	ld   de, wTitleScreenTileDataBuffer+$660
	ld   hl, .rightSideOfS
	call MemCopy

	ld   bc, $10
	ld   de, wTitleScreenTileDataBuffer+$680
	ld   hl, .leaf
	call MemCopy

	ld   bc, $10
	ld   de, wTitleScreenTileDataBuffer+$6a0
	ld   hl, .subtitleFlower
	call MemCopy

	ret
.belowA:
	db $80,$80, $80,$80, $80,$80, $00,$00
	db $00,$00, $00,$00, $00,$00, $00,$00
.rightSideOfA:
	db $c0,$c0, $e0,$e0, $60,$60, $e0,$e0
	db $60,$60, $60,$60, $00,$00, $00,$00
.leftOfS:
	db $e8,$ec, $70,$70, $20,$20, $00,$00
	db $00,$00, $00,$00, $00,$00, $00,$00
.rightSideOfS:
	db $e0,$e0, $00,$00, $e0,$e0, $60,$60
	db $e0,$e0, $80,$80, $00,$00, $00,$00
.leaf:
	db $00,$1c, $00,$3a, $00,$7e, $00,$7e
	db $00,$fc, $00,$f8, $00,$e0, $00,$00
.subtitleFlower:
	db $00,$60, $00,$c0, $00,$00, $00,$00
	db $00,$00, $00,$00, $00,$00, $00,$00


TitleScreenVramBank0_8800h_hook:
	call RLEXorCopy

	ld   bc, $780 ; max $780
	ld   de, wTitleScreenTileDataBuffer+$800
	ld   hl, Gfx_EnTitleScreen
	jp   MemCopy


TitleScreenVramBank0_9000h_hook:
	call RLEXorCopy

	ld   bc, $10
	ld   de, wTitleScreenTileDataBuffer+$600
	ld   hl, Gfx_EnTitleScreen+$780
	jp   MemCopy


TitleMenuScreenVramBank1_8000h_hook:
	call RLEXorCopy

	ld   a, BANK(Gfx_EnTitleMenuScreenOpts)
	ld   bc, $620
	ld   de, wTitleScreenTileDataBuffer+$20
	ld   hl, Gfx_EnTitleMenuScreenOpts
	call FarMemCopy
	ret


Gfx_EnTitleScreen:
	INCBIN "en_titleScreen.2bpp"
.end::

endc