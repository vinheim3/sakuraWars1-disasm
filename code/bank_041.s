; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $041", ROMX[$4000], BANK[$41]


RpnData_41_4000::
	ld   bc, $00ff                                   ; $4000: $01 $ff $00
	dec  b                                           ; $4003: $05
	add  b                                           ; $4004: $80
	ld   [$0001], sp                                 ; $4005: $08 $01 $00
	nop                                              ; $4008: $00
	dec  b                                           ; $4009: $05
	add  b                                           ; $400a: $80
	ld   a, l                                        ; $400b: $7d
	ld   bc, $0000                                   ; $400c: $01 $00 $00
	dec  b                                           ; $400f: $05
	add  b                                           ; $4010: $80
	inc  d                                           ; $4011: $14
	ld   bc, $0000                                   ; $4012: $01 $00 $00
	dec  b                                           ; $4015: $05
	add  b                                           ; $4016: $80
	ld   a, a                                        ; $4017: $7f
	ld   bc, $0000                                   ; $4018: $01 $00 $00
	dec  b                                           ; $401b: $05
	add  b                                           ; $401c: $80
	ld   d, $01                                      ; $401d: $16 $01
	nop                                              ; $401f: $00
	nop                                              ; $4020: $00
	dec  b                                           ; $4021: $05
	add  b                                           ; $4022: $80
	inc  h                                           ; $4023: $24
	ld   bc, $0000                                   ; $4024: $01 $00 $00
	dec  b                                           ; $4027: $05
	add  b                                           ; $4028: $80
	add  hl, de                                      ; $4029: $19
	ld   bc, $0000                                   ; $402a: $01 $00 $00
	dec  b                                           ; $402d: $05
	add  b                                           ; $402e: $80
	daa                                              ; $402f: $27
	ld   bc, $0000                                   ; $4030: $01 $00 $00
	dec  b                                           ; $4033: $05
	add  b                                           ; $4034: $80
	dec  e                                           ; $4035: $1d
	ld   bc, $0000                                   ; $4036: $01 $00 $00
	dec  b                                           ; $4039: $05
	add  b                                           ; $403a: $80
	inc  l                                           ; $403b: $2c
	ld   bc, $0000                                   ; $403c: $01 $00 $00
	dec  b                                           ; $403f: $05
	add  b                                           ; $4040: $80
	ld   h, c                                        ; $4041: $61
	ld   bc, $0000                                   ; $4042: $01 $00 $00
	dec  b                                           ; $4045: $05
	add  b                                           ; $4046: $80
	dec  sp                                          ; $4047: $3b
	ld   bc, $0000                                   ; $4048: $01 $00 $00
	dec  b                                           ; $404b: $05
	add  b                                           ; $404c: $80
	ld   h, d                                        ; $404d: $62
	ld   bc, $0000                                   ; $404e: $01 $00 $00
	dec  b                                           ; $4051: $05
	add  b                                           ; $4052: $80
	add  hl, sp                                      ; $4053: $39
	ld   bc, $0000                                   ; $4054: $01 $00 $00
	dec  b                                           ; $4057: $05
	add  b                                           ; $4058: $80
	ld   h, h                                        ; $4059: $64
	ld   bc, $0000                                   ; $405a: $01 $00 $00
	dec  b                                           ; $405d: $05
	add  b                                           ; $405e: $80
	ld   b, b                                        ; $405f: $40
	ld   bc, $0000                                   ; $4060: $01 $00 $00
	dec  b                                           ; $4063: $05
	add  b                                           ; $4064: $80
	ld   l, b                                        ; $4065: $68
	ld   bc, $0000                                   ; $4066: $01 $00 $00
	dec  b                                           ; $4069: $05
	add  b                                           ; $406a: $80
	ld   [hl], c                                     ; $406b: $71
	ld   bc, $0000                                   ; $406c: $01 $00 $00
	db $07
	dw $007e ; offset from $4003 to jump to if a stack byte isn't 0
	db $02 ; byte 2 in todo_HandleProcessingScriptStack with a jump table
	db $01 ; above jump table idx, pushes a byte onto script stack
	db $01 ; pushes a byte onto script stack
	db $0a ; the byte to push
	db $25 ; jump table at Jump_008_45e0, pops the above 2
	db $00 ; done

	ld   sp, $2040                                   ; $4078: $31 $40 $20

	inc  bc                                          ; $407b: $03

	jr   nz, jr_041_407f                             ; $407c: $20 $01
	ld   b, b                                        ; $407e: $40

jr_041_407f:
	jr   z, jr_041_4081                              ; $407f: $28 $00

jr_041_4081:



	ld   sp, $2040                                   ; $4081: $31 $40 $20
	inc  bc                                          ; $4084: $03
	jr   nz, jr_041_4088                             ; $4085: $20 $01

	ld   a, a                                        ; $4087: $7f

jr_041_4088:
	jr   z, jr_041_408a                              ; $4088: $28 $00

jr_041_408a:
	ld   bc, $f9a1                                   ; $408a: $01 $a1 $f9
	db   $10                                         ; $408d: $10
	and  e                                           ; $408e: $a3
	xor  $f9                                         ; $408f: $ee $f9
	dec  c                                           ; $4091: $0d
	ld   [hl], a                                     ; $4092: $77
	ld   d, h                                        ; $4093: $54
	ld   h, l                                        ; $4094: $65
	ld   l, l                                        ; $4095: $6d
	and  c                                           ; $4096: $a1
	ld   l, [hl]                                     ; $4097: $6e
	sbc  [hl]                                        ; $4098: $9e
	inc  b                                           ; $4099: $04
	ld   l, l                                        ; $409a: $6d
	ld   a, l                                        ; $409b: $7d
	ld   sp, hl                                      ; $409c: $f9
	dec  c                                           ; $409d: $0d
	rst  $38                                         ; $409e: $ff
	rst  $38                                         ; $409f: $ff
	rst  $38                                         ; $40a0: $ff
	rst  $38                                         ; $40a1: $ff
	rst  $38                                         ; $40a2: $ff
	rst  $38                                         ; $40a3: $ff
	rst  $38                                         ; $40a4: $ff
	rst  $38                                         ; $40a5: $ff
	rst  $38                                         ; $40a6: $ff
	rst  $38                                         ; $40a7: $ff
	rst  $38                                         ; $40a8: $ff
	rst  $38                                         ; $40a9: $ff
	dec  c                                           ; $40aa: $0d
	nop                                              ; $40ab: $00
	ld   a, [bc]                                     ; $40ac: $0a
	inc  c                                           ; $40ad: $0c
	inc  c                                           ; $40ae: $0c
	ld   c, $02                                      ; $40af: $0e $02
	ld   bc, $ffff                                   ; $40b1: $01 $ff $ff
	rst  $38                                         ; $40b4: $ff
	rst  $38                                         ; $40b5: $ff
	rst  $38                                         ; $40b6: $ff
	rst  $38                                         ; $40b7: $ff
	rst  $38                                         ; $40b8: $ff
	rst  $38                                         ; $40b9: $ff
	rst  $38                                         ; $40ba: $ff
	rst  $38                                         ; $40bb: $ff
	rst  $38                                         ; $40bc: $ff
	rst  $38                                         ; $40bd: $ff
	dec  c                                           ; $40be: $0d
	rst  $38                                         ; $40bf: $ff
	rst  $38                                         ; $40c0: $ff
	ld   l, e                                        ; $40c1: $6b
	ld   d, h                                        ; $40c2: $54
	ld   e, c                                        ; $40c3: $59
	rst  $38                                         ; $40c4: $ff
	rst  $38                                         ; $40c5: $ff
	inc  b                                           ; $40c6: $04
	dec  c                                           ; $40c7: $0d
	dec  b                                           ; $40c8: $05
	ld   a, [bc]                                     ; $40c9: $0a
	ld   a, h                                        ; $40ca: $7c
	ld   [bc], a                                     ; $40cb: $02
	ldh  [rSC], a                                    ; $40cc: $e0 $02
	ld   b, d                                        ; $40ce: $42
	ld   a, c                                        ; $40cf: $79
	dec  c                                           ; $40d0: $0d
	ld   e, e                                        ; $40d1: $5b
	ld   [hl], h                                     ; $40d2: $74
	sbc  [hl]                                        ; $40d3: $9e
	ld   l, l                                        ; $40d4: $6d
	ld   e, b                                        ; $40d5: $58
	sbc  d                                           ; $40d6: $9a
	ld   l, l                                        ; $40d7: $6d
	and  c                                           ; $40d8: $a1
	ld   l, [hl]                                     ; $40d9: $6e
	rst  $38                                         ; $40da: $ff
	rst  $38                                         ; $40db: $ff
	dec  c                                           ; $40dc: $0d
	nop                                              ; $40dd: $00
	ld   a, [bc]                                     ; $40de: $0a
	ld   bc, $fb50                                   ; $40df: $01 $50 $fb
	ld   d, b                                        ; $40e2: $50
	rst  $38                                         ; $40e3: $ff
	rst  $38                                         ; $40e4: $ff
	rst  $38                                         ; $40e5: $ff
	rst  $38                                         ; $40e6: $ff
	dec  c                                           ; $40e7: $0d
	inc  bc                                          ; $40e8: $03
	or   d                                           ; $40e9: $b2
	ld   e, a                                        ; $40ea: $5f
	ld   a, b                                        ; $40eb: $78
	ld   d, d                                        ; $40ec: $52
	ld   a, b                                        ; $40ed: $78
	db   $fc                                         ; $40ee: $fc
	dec  c                                           ; $40ef: $0d
	nop                                              ; $40f0: $00
	ld   a, [bc]                                     ; $40f1: $0a
	dec  b                                           ; $40f2: $05
	ld   b, b                                        ; $40f3: $40
	ld   [hl], d                                     ; $40f4: $72
	inc  bc                                          ; $40f5: $03
	ld   [hl], d                                     ; $40f6: $72
	ld   bc, $2801                                   ; $40f7: $01 $01 $28
	nop                                              ; $40fa: $00
	rlca                                             ; $40fb: $07
	ret  nc                                          ; $40fc: $d0

	ld   bc, $7203                                   ; $40fd: $01 $03 $72
	ld   bc, $2401                                   ; $4100: $01 $01 $24
	nop                                              ; $4103: $00
	rlca                                             ; $4104: $07
	ld   b, l                                        ; $4105: $45
	db   $10                                         ; $4106: $10
	inc  bc                                          ; $4107: $03
	ld   de, $7801                                   ; $4108: $11 $01 $78
	ld   [hl+], a                                    ; $410b: $22
	inc  bc                                          ; $410c: $03
	ld   [de], a                                     ; $410d: $12
	ld   bc, $2278                                   ; $410e: $01 $78 $22
	inc  e                                           ; $4111: $1c
	inc  bc                                          ; $4112: $03
	inc  de                                          ; $4113: $13
	ld   bc, $2278                                   ; $4114: $01 $78 $22
	inc  e                                           ; $4117: $1c
	inc  bc                                          ; $4118: $03
	ld   d, $01                                      ; $4119: $16 $01
	ld   a, b                                        ; $411b: $78
	ld   [hl+], a                                    ; $411c: $22
	inc  e                                           ; $411d: $1c
	inc  bc                                          ; $411e: $03
	dec  d                                           ; $411f: $15
	ld   bc, $2278                                   ; $4120: $01 $78 $22
	inc  e                                           ; $4123: $1c
	inc  bc                                          ; $4124: $03
	inc  d                                           ; $4125: $14
	ld   bc, $2278                                   ; $4126: $01 $78 $22
	inc  e                                           ; $4129: $1c
	nop                                              ; $412a: $00
	rlca                                             ; $412b: $07
	ld   hl, $0303                                   ; $412c: $21 $03 $03
	ld   de, $1203                                   ; $412f: $11 $03 $12
	dec  h                                           ; $4132: $25
	inc  bc                                          ; $4133: $03
	ld   de, $1303                                   ; $4134: $11 $03 $13
	dec  h                                           ; $4137: $25
	inc  e                                           ; $4138: $1c
	inc  bc                                          ; $4139: $03
	ld   de, $1603                                   ; $413a: $11 $03 $16
	dec  h                                           ; $413d: $25
	inc  e                                           ; $413e: $1c
	inc  bc                                          ; $413f: $03
	ld   de, $1503                                   ; $4140: $11 $03 $15
	dec  h                                           ; $4143: $25
	inc  e                                           ; $4144: $1c
	inc  bc                                          ; $4145: $03
	ld   de, $1403                                   ; $4146: $11 $03 $14
	dec  h                                           ; $4149: $25
	inc  e                                           ; $414a: $1c
	nop                                              ; $414b: $00
	rlca                                             ; $414c: $07
	ld   e, c                                        ; $414d: $59
	dec  b                                           ; $414e: $05
	inc  bc                                          ; $414f: $03
	ld   [de], a                                     ; $4150: $12
	inc  bc                                          ; $4151: $03
	ld   de, $0325                                   ; $4152: $11 $25 $03
	ld   [de], a                                     ; $4155: $12
	inc  bc                                          ; $4156: $03
	inc  de                                          ; $4157: $13
	dec  h                                           ; $4158: $25
	inc  e                                           ; $4159: $1c
	inc  bc                                          ; $415a: $03
	ld   [de], a                                     ; $415b: $12
	inc  bc                                          ; $415c: $03
	ld   d, $25                                      ; $415d: $16 $25
	inc  e                                           ; $415f: $1c
	inc  bc                                          ; $4160: $03
	ld   [de], a                                     ; $4161: $12
	inc  bc                                          ; $4162: $03
	dec  d                                           ; $4163: $15
	dec  h                                           ; $4164: $25
	inc  e                                           ; $4165: $1c
	inc  bc                                          ; $4166: $03
	ld   [de], a                                     ; $4167: $12
	inc  bc                                          ; $4168: $03
	inc  d                                           ; $4169: $14
	dec  h                                           ; $416a: $25
	inc  e                                           ; $416b: $1c
	nop                                              ; $416c: $00
	rlca                                             ; $416d: $07
	ld   a, l                                        ; $416e: $7d
	rlca                                             ; $416f: $07
	inc  bc                                          ; $4170: $03
	inc  de                                          ; $4171: $13
	inc  bc                                          ; $4172: $03
	ld   de, $0325                                   ; $4173: $11 $25 $03
	inc  de                                          ; $4176: $13
	inc  bc                                          ; $4177: $03
	ld   [de], a                                     ; $4178: $12
	dec  h                                           ; $4179: $25
	inc  e                                           ; $417a: $1c
	inc  bc                                          ; $417b: $03
	inc  de                                          ; $417c: $13
	inc  bc                                          ; $417d: $03
	ld   d, $25                                      ; $417e: $16 $25
	inc  e                                           ; $4180: $1c
	inc  bc                                          ; $4181: $03
	inc  de                                          ; $4182: $13
	inc  bc                                          ; $4183: $03
	dec  d                                           ; $4184: $15
	dec  h                                           ; $4185: $25
	inc  e                                           ; $4186: $1c
	inc  bc                                          ; $4187: $03
	inc  de                                          ; $4188: $13
	inc  bc                                          ; $4189: $03
	inc  d                                           ; $418a: $14
	dec  h                                           ; $418b: $25
	inc  e                                           ; $418c: $1c
	nop                                              ; $418d: $00
	rlca                                             ; $418e: $07
	xor  b                                           ; $418f: $a8
	add  hl, bc                                      ; $4190: $09
	inc  bc                                          ; $4191: $03
	ld   d, $03                                      ; $4192: $16 $03
	ld   de, $0325                                   ; $4194: $11 $25 $03
	ld   d, $03                                      ; $4197: $16 $03
	ld   [de], a                                     ; $4199: $12
	dec  h                                           ; $419a: $25
	inc  e                                           ; $419b: $1c
	inc  bc                                          ; $419c: $03
	ld   d, $03                                      ; $419d: $16 $03
	inc  de                                          ; $419f: $13
	dec  h                                           ; $41a0: $25
	inc  e                                           ; $41a1: $1c
	inc  bc                                          ; $41a2: $03
	ld   d, $03                                      ; $41a3: $16 $03
	dec  d                                           ; $41a5: $15
	dec  h                                           ; $41a6: $25
	inc  e                                           ; $41a7: $1c
	inc  bc                                          ; $41a8: $03
	ld   d, $03                                      ; $41a9: $16 $03
	inc  d                                           ; $41ab: $14
	dec  h                                           ; $41ac: $25
	inc  e                                           ; $41ad: $1c
	nop                                              ; $41ae: $00
	rlca                                             ; $41af: $07
	db   $e3                                         ; $41b0: $e3
	dec  bc                                          ; $41b1: $0b
	inc  bc                                          ; $41b2: $03
	dec  d                                           ; $41b3: $15
	inc  bc                                          ; $41b4: $03
	ld   de, $0325                                   ; $41b5: $11 $25 $03
	dec  d                                           ; $41b8: $15
	inc  bc                                          ; $41b9: $03
	ld   [de], a                                     ; $41ba: $12
	dec  h                                           ; $41bb: $25
	inc  e                                           ; $41bc: $1c
	inc  bc                                          ; $41bd: $03
	dec  d                                           ; $41be: $15
	inc  bc                                          ; $41bf: $03
	inc  de                                          ; $41c0: $13
	dec  h                                           ; $41c1: $25
	inc  e                                           ; $41c2: $1c
	inc  bc                                          ; $41c3: $03
	dec  d                                           ; $41c4: $15
	inc  bc                                          ; $41c5: $03
	ld   d, $25                                      ; $41c6: $16 $25
	inc  e                                           ; $41c8: $1c
	inc  bc                                          ; $41c9: $03
	dec  d                                           ; $41ca: $15
	inc  bc                                          ; $41cb: $03
	inc  d                                           ; $41cc: $14
	dec  h                                           ; $41cd: $25
	inc  e                                           ; $41ce: $1c
	nop                                              ; $41cf: $00
	ld   b, $2f                                      ; $41d0: $06 $2f
	ld   c, $14                                      ; $41d2: $0e $14
	ld   b, $01                                      ; $41d4: $06 $01
	rrca                                             ; $41d6: $0f
	dec  bc                                          ; $41d7: $0b
	ld   [bc], a                                     ; $41d8: $02
	ld   bc, $0008                                   ; $41d9: $01 $08 $00
	ld   e, l                                        ; $41dc: $5d
	and  c                                           ; $41dd: $a1
	sbc  a                                           ; $41de: $9f
	dec  c                                           ; $41df: $0d
	sbc  l                                           ; $41e0: $9d
	ld   l, l                                        ; $41e1: $6d
	ld   h, l                                        ; $41e2: $65
	ld   l, [hl]                                     ; $41e3: $6e
	ld   e, a                                        ; $41e4: $5f
	ld   [hl], a                                     ; $41e5: $77
	sbc  [hl]                                        ; $41e6: $9e
	inc  b                                           ; $41e7: $04
	ld   c, $03                                      ; $41e8: $0e $03
	sbc  l                                           ; $41ea: $9d
	inc  b                                           ; $41eb: $04
	and  [hl]                                        ; $41ec: $a6
	ld   sp, hl                                      ; $41ed: $f9
	dec  c                                           ; $41ee: $0d
	nop                                              ; $41ef: $00
	ld   a, [bc]                                     ; $41f0: $0a
	rrca                                             ; $41f1: $0f
	nop                                              ; $41f2: $00
	ld   bc, $5601                                   ; $41f3: $01 $01 $56
	ld   [hl], c                                     ; $41f6: $71
	sbc  [hl]                                        ; $41f7: $9e
	ld   d, b                                        ; $41f8: $50
	sub  d                                           ; $41f9: $92
	adc  a                                           ; $41fa: $8f
	ld   h, e                                        ; $41fb: $63
	and  c                                           ; $41fc: $a1
	ld   sp, hl                                      ; $41fd: $f9
	dec  c                                           ; $41fe: $0d
	rst  $38                                         ; $41ff: $ff
	rst  $38                                         ; $4200: $ff
	ld   [hl], a                                     ; $4201: $77
	ld   d, h                                        ; $4202: $54
	ld   l, h                                        ; $4203: $6c
	sbc  [hl]                                        ; $4204: $9e
	ld   e, b                                        ; $4205: $58
	inc  b                                           ; $4206: $04
	ld   b, l                                        ; $4207: $45
	sbc  b                                           ; $4208: $98
	ld   [bc], a                                     ; $4209: $02
	inc  [hl]                                        ; $420a: $34
	ld   h, e                                        ; $420b: $63
	ld   d, d                                        ; $420c: $52
	sbc  a                                           ; $420d: $9f
	dec  c                                           ; $420e: $0d
	nop                                              ; $420f: $00
	ld   a, [bc]                                     ; $4210: $0a
	inc  d                                           ; $4211: $14
	ld   a, [bc]                                     ; $4212: $0a
	ld   bc, $0b1c                                   ; $4213: $01 $1c $0b
	nop                                              ; $4216: $00
	nop                                              ; $4217: $00
	ld   bc, $5477                                   ; $4218: $01 $77 $54
	ld   sp, hl                                      ; $421b: $f9
	db   $10                                         ; $421c: $10
	inc  b                                           ; $421d: $04
	dec  c                                           ; $421e: $0d
	inc  bc                                          ; $421f: $03
	cp   $7c                                         ; $4220: $fe $7c
	inc  b                                           ; $4222: $04
	ld   a, b                                        ; $4223: $78
	ld   a, l                                        ; $4224: $7d
	ld   sp, hl                                      ; $4225: $f9
	dec  c                                           ; $4226: $0d
	nop                                              ; $4227: $00
	ld   a, [bc]                                     ; $4228: $0a
	rrca                                             ; $4229: $0f
	nop                                              ; $422a: $00
	ld   bc, $5801                                   ; $422b: $01 $01 $58
	ld   e, c                                        ; $422e: $59
	ld   h, b                                        ; $422f: $60
	ld   h, e                                        ; $4230: $63
	adc  h                                           ; $4231: $8c
	ld   [hl], l                                     ; $4232: $75
	sbc  [hl]                                        ; $4233: $9e
	dec  c                                           ; $4234: $0d
	sub  b                                           ; $4235: $90
	ld   d, h                                        ; $4236: $54
	inc  b                                           ; $4237: $04
	ld   c, $03                                      ; $4238: $0e $03
	sbc  l                                           ; $423a: $9d
	inc  b                                           ; $423b: $04
	and  [hl]                                        ; $423c: $a6
	ld   [hl], l                                     ; $423d: $75
	ld   h, a                                        ; $423e: $67
	sbc  a                                           ; $423f: $9f
	dec  c                                           ; $4240: $0d
	nop                                              ; $4241: $00
	ld   a, [bc]                                     ; $4242: $0a
	rrca                                             ; $4243: $0f
	dec  bc                                          ; $4244: $0b
	nop                                              ; $4245: $00
	ld   bc, $9a6b                                   ; $4246: $01 $6b $9a
	and  b                                           ; $4249: $a0
	ld   [bc], a                                     ; $424a: $02
	jp   nz, $7452                                   ; $424b: $c2 $52 $74

	ld   [bc], a                                     ; $424e: $02
	ld   h, $03                                      ; $424f: $26 $03
	ld   [hl], l                                     ; $4251: $75
	ld   h, l                                        ; $4252: $65
	ld   l, l                                        ; $4253: $6d
	sbc  l                                           ; $4254: $9d
	sbc  a                                           ; $4255: $9f
	dec  c                                           ; $4256: $0d
	ld   h, [hl]                                     ; $4257: $66
	sub  c                                           ; $4258: $91
	ld   d, b                                        ; $4259: $50
	sbc  [hl]                                        ; $425a: $9e
	ld   [bc], a                                     ; $425b: $02
	and  l                                           ; $425c: $a5
	ld   h, a                                        ; $425d: $67
	ld   e, [hl]                                     ; $425e: $5e
	dec  c                                           ; $425f: $0d
	inc  bc                                          ; $4260: $03
	add  l                                           ; $4261: $85
	inc  b                                           ; $4262: $04
	xor  e                                           ; $4263: $ab
	inc  bc                                          ; $4264: $03
	add  d                                           ; $4265: $82
	inc  bc                                          ; $4266: $03
	ld   c, l                                        ; $4267: $4d
	ld   a, c                                        ; $4268: $79
	dec  b                                           ; $4269: $05
	db   $10                                         ; $426a: $10
	ld   a, b                                        ; $426b: $78
	ld   h, e                                        ; $426c: $63
	ld   d, d                                        ; $426d: $52
	sbc  a                                           ; $426e: $9f
	dec  c                                           ; $426f: $0d
	nop                                              ; $4270: $00
	ld   a, [bc]                                     ; $4271: $0a
	dec  c                                           ; $4272: $0d
	nop                                              ; $4273: $00
	nop                                              ; $4274: $00
	rrca                                             ; $4275: $0f
	nop                                              ; $4276: $00
	ld   bc, $020c                                   ; $4277: $01 $0c $02
	add  hl, bc                                      ; $427a: $09
	ld   e, $01                                      ; $427b: $1e $01
	adc  h                                           ; $427d: $8c
	sbc  [hl]                                        ; $427e: $9e
	adc  h                                           ; $427f: $8c
	ld   h, e                                        ; $4280: $63
	ld   e, c                                        ; $4281: $59
	rst  $38                                         ; $4282: $ff
	rst  $38                                         ; $4283: $ff
	dec  c                                           ; $4284: $0d
	nop                                              ; $4285: $00
	ld   a, [bc]                                     ; $4286: $0a
	ld   c, $0e                                      ; $4287: $0e $0e
	inc  e                                           ; $4289: $1c
	ld   a, [bc]                                     ; $428a: $0a
	inc  b                                           ; $428b: $04
	inc  b                                           ; $428c: $04
	ld   bc, $5258                                   ; $428d: $01 $58 $52
	sbc  [hl]                                        ; $4290: $9e
	ld   [$9f00], sp                                 ; $4291: $08 $00 $9f
	dec  c                                           ; $4294: $0d
	ld   e, b                                        ; $4295: $58
	adc  a                                           ; $4296: $8f
	ei                                               ; $4297: $fb
	inc  bc                                          ; $4298: $03
	ld   l, l                                        ; $4299: $6d
	dec  b                                           ; $429a: $05
	add  hl, de                                      ; $429b: $19
	ld   [hl], l                                     ; $429c: $75
	inc  de                                          ; $429d: $13
	ld   [bc], a                                     ; $429e: $02
	sub  e                                           ; $429f: $93
	sub  b                                           ; $42a0: $90
	dec  c                                           ; $42a1: $0d
	add  h                                           ; $42a2: $84
	ld   [hl], c                                     ; $42a3: $71
	ld   l, l                                        ; $42a4: $6d
	ld   e, b                                        ; $42a5: $58
	sbc  d                                           ; $42a6: $9a
	ld   l, l                                        ; $42a7: $6d
	sub  a                                           ; $42a8: $97
	ld   h, l                                        ; $42a9: $65
	ld   d, d                                        ; $42aa: $52
	ld   a, b                                        ; $42ab: $78
	sbc  a                                           ; $42ac: $9f
	dec  c                                           ; $42ad: $0d
	nop                                              ; $42ae: $00
	ld   a, [bc]                                     ; $42af: $0a
	ld   bc, $9502                                   ; $42b0: $01 $02 $95
	inc  bc                                          ; $42b3: $03
	and  h                                           ; $42b4: $a4
	ld   d, d                                        ; $42b5: $52
	halt                                             ; $42b6: $76
	ld   a, l                                        ; $42b7: $7d
	ld   d, d                                        ; $42b8: $52
	ld   d, [hl]                                     ; $42b9: $56
	sbc  [hl]                                        ; $42ba: $9e
	inc  bc                                          ; $42bb: $03
	sub  h                                           ; $42bc: $94
	dec  b                                           ; $42bd: $05
	inc  sp                                          ; $42be: $33
	ld   [bc], a                                     ; $42bf: $02
	ld   l, b                                        ; $42c0: $68
	dec  b                                           ; $42c1: $05
	ld   de, $0d90                                   ; $42c2: $11 $90 $0d
	ld   [hl], l                                     ; $42c5: $75
	ld   e, e                                        ; $42c6: $5b
	ld   a, b                                        ; $42c7: $78
	ld   d, d                                        ; $42c8: $52
	sub  [hl]                                        ; $42c9: $96
	ld   d, h                                        ; $42ca: $54
	ld   a, b                                        ; $42cb: $78
	sub  d                                           ; $42cc: $92
	ld   [hl], d                                     ; $42cd: $72
	ld   a, l                                        ; $42ce: $7d
	sbc  [hl]                                        ; $42cf: $9e
	dec  c                                           ; $42d0: $0d
	ld   [bc], a                                     ; $42d1: $02
	sbc  b                                           ; $42d2: $98
	inc  bc                                          ; $42d3: $03
	nop                                              ; $42d4: $00
	ld   a, c                                        ; $42d5: $79
	ld   a, l                                        ; $42d6: $7d
	inc  b                                           ; $42d7: $04
	adc  d                                           ; $42d8: $8a
	inc  b                                           ; $42d9: $04
	rst  JumpTable                                         ; $42da: $df
	ld   a, b                                        ; $42db: $78
	ld   d, d                                        ; $42dc: $52
	and  c                                           ; $42dd: $a1
	ld   l, [hl]                                     ; $42de: $6e
	sbc  a                                           ; $42df: $9f
	dec  c                                           ; $42e0: $0d
	nop                                              ; $42e1: $00
	ld   a, [bc]                                     ; $42e2: $0a
	ld   bc, $2803                                   ; $42e3: $01 $03 $28
	inc  b                                           ; $42e6: $04
	ld   c, b                                        ; $42e7: $48
	ld   l, [hl]                                     ; $42e8: $6e
	ld   e, d                                        ; $42e9: $5a
	sbc  [hl]                                        ; $42ea: $9e
	inc  b                                           ; $42eb: $04
	dec  c                                           ; $42ec: $0d
	ld   [bc], a                                     ; $42ed: $02
	sub  [hl]                                        ; $42ee: $96
	inc  b                                           ; $42ef: $04
	ld   b, l                                        ; $42f0: $45
	inc  b                                           ; $42f1: $04
	ld   a, [bc]                                     ; $42f2: $0a
	ld   a, l                                        ; $42f3: $7d
	ld   h, c                                        ; $42f4: $61
	ld   h, c                                        ; $42f5: $61
	ld   [hl], l                                     ; $42f6: $75
	dec  c                                           ; $42f7: $0d
	inc  bc                                          ; $42f8: $03
	ld   a, [hl]                                     ; $42f9: $7e
	dec  b                                           ; $42fa: $05
	nop                                              ; $42fb: $00
	ld   l, [hl]                                     ; $42fc: $6e
	sbc  a                                           ; $42fd: $9f
	dec  c                                           ; $42fe: $0d
	nop                                              ; $42ff: $00
	ld   a, [bc]                                     ; $4300: $0a
	ld   bc, $9403                                   ; $4301: $01 $03 $94
	inc  b                                           ; $4304: $04
	sbc  [hl]                                        ; $4305: $9e
	inc  bc                                          ; $4306: $03
	sub  h                                           ; $4307: $94
	inc  b                                           ; $4308: $04
	pop  de                                          ; $4309: $d1
	and  b                                           ; $430a: $a0
	ld   [bc], a                                     ; $430b: $02
	sub  l                                           ; $430c: $95
	ld   [hl], d                                     ; $430d: $72
	adc  a                                           ; $430e: $8f
	inc  bc                                          ; $430f: $03
	jp   c, Jump_041_7465                            ; $4310: $da $65 $74

	dec  c                                           ; $4313: $0d
	inc  bc                                          ; $4314: $03
	add  b                                           ; $4315: $80
	inc  bc                                          ; $4316: $03
	jp   c, Jump_041_7465                            ; $4317: $da $65 $74

	ld   e, l                                        ; $431a: $5d
	sbc  c                                           ; $431b: $99
	and  c                                           ; $431c: $a1
	ld   l, [hl]                                     ; $431d: $6e
	ld   a, b                                        ; $431e: $78
	sbc  a                                           ; $431f: $9f
	dec  c                                           ; $4320: $0d
	nop                                              ; $4321: $00
	ld   a, [bc]                                     ; $4322: $0a
	ld   h, $14                                      ; $4323: $26 $14
	ld   b, $01                                      ; $4325: $06 $01
	rrca                                             ; $4327: $0f
	ld   bc, $0104                              ; $4328: $01 $04 $01
	ld   [$6300], sp                                 ; $432b: $08 $00 $63
	and  c                                           ; $432e: $a1
	sbc  a                                           ; $432f: $9f
	dec  c                                           ; $4330: $0d
	ld   h, e                                        ; $4331: $63
	ld   e, l                                        ; $4332: $5d
	sub  a                                           ; $4333: $97
	ld   [hl], l                                     ; $4334: $75
	ld   h, a                                        ; $4335: $67
	sbc  a                                           ; $4336: $9f
	dec  c                                           ; $4337: $0d
	nop                                              ; $4338: $00
	ld   a, [bc]                                     ; $4339: $0a
	dec  b                                           ; $433a: $05
	ld   b, b                                        ; $433b: $40
	ld   c, [hl]                                     ; $433c: $4e
	ld   bc, $0000                                   ; $433d: $01 $00 $00
	ld   sp, $2040                                   ; $4340: $31 $40 $20
	inc  bc                                          ; $4343: $03
	jr   nz, jr_041_4347                             ; $4344: $20 $01

	ld   b, b                                        ; $4346: $40

jr_041_4347:
	jr   z, jr_041_4349                              ; $4347: $28 $00

jr_041_4349:
	rrca                                             ; $4349: $0f
	nop                                              ; $434a: $00
	ld   bc, $5601                                   ; $434b: $01 $01 $56
	ld   [hl], c                                     ; $434e: $71
	sbc  [hl]                                        ; $434f: $9e
	ld   h, e                                        ; $4350: $63
	ld   e, l                                        ; $4351: $5d
	sub  a                                           ; $4352: $97
	ld   h, e                                        ; $4353: $63
	and  c                                           ; $4354: $a1
	ld   sp, hl                                      ; $4355: $f9
	dec  c                                           ; $4356: $0d
	rst  $38                                         ; $4357: $ff
	rst  $38                                         ; $4358: $ff
	ld   [hl], a                                     ; $4359: $77
	ld   d, h                                        ; $435a: $54
	ld   l, h                                        ; $435b: $6c
	sbc  [hl]                                        ; $435c: $9e
	ld   e, b                                        ; $435d: $58
	inc  b                                           ; $435e: $04
	ld   b, l                                        ; $435f: $45
	sbc  b                                           ; $4360: $98
	ld   [bc], a                                     ; $4361: $02
	inc  [hl]                                        ; $4362: $34
	ld   h, e                                        ; $4363: $63
	ld   d, d                                        ; $4364: $52
	sbc  a                                           ; $4365: $9f
	dec  c                                           ; $4366: $0d
	nop                                              ; $4367: $00
	ld   a, [bc]                                     ; $4368: $0a
	inc  d                                           ; $4369: $14
	ld   a, [bc]                                     ; $436a: $0a
	ld   bc, $011c                                   ; $436b: $01 $1c $01
	inc  b                                           ; $436e: $04
	inc  b                                           ; $436f: $04
	ld   bc, $0e04                                   ; $4370: $01 $04 $0e
	inc  bc                                          ; $4373: $03
	sbc  l                                           ; $4374: $9d
	inc  b                                           ; $4375: $04
	and  [hl]                                        ; $4376: $a6
	ld   [hl], l                                     ; $4377: $75
	ld   h, a                                        ; $4378: $67
	ld   e, c                                        ; $4379: $59
	ld   sp, hl                                      ; $437a: $f9
	dec  c                                           ; $437b: $0d
	ld   [$6300], sp                                 ; $437c: $08 $00 $63
	and  c                                           ; $437f: $a1
	sbc  a                                           ; $4380: $9f
	dec  c                                           ; $4381: $0d
	nop                                              ; $4382: $00
	ld   a, [bc]                                     ; $4383: $0a
	add  hl, de                                      ; $4384: $19
	dec  b                                           ; $4385: $05
	ld   [bc], a                                     ; $4386: $02
	inc  b                                           ; $4387: $04
	ld   c, $03                                      ; $4388: $0e $03
	sbc  l                                           ; $438a: $9d
	inc  b                                           ; $438b: $04
	and  [hl]                                        ; $438c: $a6
	nop                                              ; $438d: $00
	nop                                              ; $438e: $00
	pop  bc                                          ; $438f: $c1
	db   $e3                                         ; $4390: $e3
	ld   [hl], c                                     ; $4391: $71
	adc  e                                           ; $4392: $8b
	ld   d, d                                        ; $4393: $52
	nop                                              ; $4394: $00
	ld   bc, $a807                                   ; $4395: $01 $07 $a8
	inc  bc                                          ; $4398: $03
	ld   [bc], a                                     ; $4399: $02
	inc  bc                                          ; $439a: $03
	ld   bc, $2000                                   ; $439b: $01 $00 $20
	nop                                              ; $439e: $00
	rlca                                             ; $439f: $07
	ld   e, a                                        ; $43a0: $5f
	inc  b                                           ; $43a1: $04
	ld   [bc], a                                     ; $43a2: $02
	inc  bc                                          ; $43a3: $03
	ld   bc, $2001                                   ; $43a4: $01 $01 $20
	nop                                              ; $43a7: $00
	ld   b, $13                                      ; $43a8: $06 $13
	dec  b                                           ; $43aa: $05
	rrca                                             ; $43ab: $0f
	nop                                              ; $43ac: $00
	ld   bc, $0401                                   ; $43ad: $01 $01 $04
	ld   c, $03                                      ; $43b0: $0e $03
	sbc  l                                           ; $43b2: $9d
	inc  b                                           ; $43b3: $04
	and  [hl]                                        ; $43b4: $a6
	ld   [hl], l                                     ; $43b5: $75
	ld   h, a                                        ; $43b6: $67
	sbc  [hl]                                        ; $43b7: $9e
	ld   h, e                                        ; $43b8: $63
	ld   e, l                                        ; $43b9: $5d
	sub  a                                           ; $43ba: $97
	ld   h, e                                        ; $43bb: $63
	and  c                                           ; $43bc: $a1
	sbc  a                                           ; $43bd: $9f
	dec  c                                           ; $43be: $0d
	inc  bc                                          ; $43bf: $03
	ld   [hl], l                                     ; $43c0: $75
	inc  b                                           ; $43c1: $04
	xor  e                                           ; $43c2: $ab
	ld   h, l                                        ; $43c3: $65
	ld   a, b                                        ; $43c4: $78
	ld   d, d                                        ; $43c5: $52
	ld   [hl], l                                     ; $43c6: $75
	ld   [bc], a                                     ; $43c7: $02
	inc  [hl]                                        ; $43c8: $34
	ld   h, e                                        ; $43c9: $63
	ld   d, d                                        ; $43ca: $52
	sbc  a                                           ; $43cb: $9f
	dec  c                                           ; $43cc: $0d
	inc  b                                           ; $43cd: $04
	ld   b, d                                        ; $43ce: $42
	ld   [hl], h                                     ; $43cf: $74
	ld   d, d                                        ; $43d0: $52
	sbc  d                                           ; $43d1: $9a
	ld   a, [hl]                                     ; $43d2: $7e
	ld   [bc], a                                     ; $43d3: $02
	sub  e                                           ; $43d4: $93
	inc  b                                           ; $43d5: $04
	ld   a, h                                        ; $43d6: $7c
	ld   h, l                                        ; $43d7: $65
	adc  h                                           ; $43d8: $8c
	ld   h, a                                        ; $43d9: $67
	ld   e, c                                        ; $43da: $59
	sub  a                                           ; $43db: $97
	sbc  a                                           ; $43dc: $9f
	dec  c                                           ; $43dd: $0d
	nop                                              ; $43de: $00
	ld   a, [bc]                                     ; $43df: $0a
	inc  e                                           ; $43e0: $1c
	ld   bc, $0101                                   ; $43e1: $01 $01 $01
	dec  e                                           ; $43e4: $1d
	ld   b, b                                        ; $43e5: $40
	ld   de, $1103                                   ; $43e6: $11 $03 $11
	ld   bc, $2802                                   ; $43e9: $01 $02 $28
	nop                                              ; $43ec: $00
	ld   bc, $546b                                   ; $43ed: $01 $6b $54
	ld   [hl], l                                     ; $43f0: $75
	ld   h, a                                        ; $43f1: $67
	ld   e, c                                        ; $43f2: $59
	sbc  a                                           ; $43f3: $9f
	dec  c                                           ; $43f4: $0d
	sub  [hl]                                        ; $43f5: $96
	ld   e, c                                        ; $43f6: $59
	ld   [hl], c                                     ; $43f7: $71
	ld   l, l                                        ; $43f8: $6d
	rst  $38                                         ; $43f9: $ff
	rst  $38                                         ; $43fa: $ff
	dec  c                                           ; $43fb: $0d
	nop                                              ; $43fc: $00
	ld   a, [bc]                                     ; $43fd: $0a
	ld   bc, $9075                                   ; $43fe: $01 $75 $90
	sbc  [hl]                                        ; $4401: $9e
	inc  b                                           ; $4402: $04
	ld   c, c                                        ; $4403: $49
	ld   [bc], a                                     ; $4404: $02
	jp   $e290                                       ; $4405: $c3 $90 $e2


	db   $ec                                         ; $4408: $ec
	ld   a, l                                        ; $4409: $7d
	ld   [bc], a                                     ; $440a: $02
	db   $e3                                         ; $440b: $e3
	inc  b                                           ; $440c: $04
	sub  d                                           ; $440d: $92
	dec  c                                           ; $440e: $0d
	ld   [hl], l                                     ; $440f: $75
	ld   h, a                                        ; $4410: $67
	sub  [hl]                                        ; $4411: $96
	sbc  a                                           ; $4412: $9f
	dec  c                                           ; $4413: $0d
	nop                                              ; $4414: $00
	ld   a, [bc]                                     ; $4415: $0a
	ld   bc, $04fd                                   ; $4416: $01 $fd $04
	dec  c                                           ; $4419: $0d
	dec  b                                           ; $441a: $05
	ld   a, [bc]                                     ; $441b: $0a
	inc  b                                           ; $441c: $04
	jr   nz, jr_041_4498                             ; $441d: $20 $79

	ld   [hl], d                                     ; $441f: $72
	sub  a                                           ; $4420: $97
	ld   d, d                                        ; $4421: $52
	ld   a, b                                        ; $4422: $78
	cp   $76                                         ; $4423: $fe $76
	dec  b                                           ; $4425: $05
	pop  de                                          ; $4426: $d1
	ld   [hl], c                                     ; $4427: $71
	dec  c                                           ; $4428: $0d
	ld   l, l                                        ; $4429: $6d
	sub  a                                           ; $442a: $97
	sbc  [hl]                                        ; $442b: $9e
	ld   h, a                                        ; $442c: $67
	ld   e, [hl]                                     ; $442d: $5e
	ld   a, c                                        ; $442e: $79
	inc  bc                                          ; $442f: $03
	and  a                                           ; $4430: $a7
	and  c                                           ; $4431: $a1
	ld   [hl], l                                     ; $4432: $75
	ld   e, l                                        ; $4433: $5d
	ld   l, [hl]                                     ; $4434: $6e
	ld   h, e                                        ; $4435: $63
	ld   d, d                                        ; $4436: $52
	sbc  a                                           ; $4437: $9f
	dec  c                                           ; $4438: $0d
	inc  b                                           ; $4439: $04
	dec  c                                           ; $443a: $0d
	and  b                                           ; $443b: $a0
	inc  bc                                          ; $443c: $03
	and  a                                           ; $443d: $a7
	adc  a                                           ; $443e: $8f
	sbc  c                                           ; $443f: $99
	ld   [bc], a                                     ; $4440: $02
	jp   $0490                                       ; $4441: $c3 $90 $04


	ld   c, $03                                      ; $4444: $0e $03
	dec  de                                          ; $4446: $1b
	ld   [hl], l                                     ; $4447: $75
	ld   h, a                                        ; $4448: $67
	ld   e, c                                        ; $4449: $59
	sub  a                                           ; $444a: $97
	sbc  a                                           ; $444b: $9f
	dec  c                                           ; $444c: $0d
	nop                                              ; $444d: $00
	ld   a, [bc]                                     ; $444e: $0a
	ld   bc, $9166                                   ; $444f: $01 $66 $91
	sbc  [hl]                                        ; $4452: $9e
	ld   e, b                                        ; $4453: $58
	inc  b                                           ; $4454: $04
	ld   c, $02                                      ; $4455: $0e $02
	jp   $ff79                                       ; $4457: $c3 $79 $ff


	rst  $38                                         ; $445a: $ff
	sbc  a                                           ; $445b: $9f
	dec  c                                           ; $445c: $0d
	nop                                              ; $445d: $00
	ld   a, [bc]                                     ; $445e: $0a
	add  hl, hl                                      ; $445f: $29
	nop                                              ; $4460: $00
	nop                                              ; $4461: $00
	rrca                                             ; $4462: $0f
	nop                                              ; $4463: $00
	ld   bc, $5201                                   ; $4464: $01 $01 $52
	sub  d                                           ; $4467: $92
	db   $fc                                         ; $4468: $fc
	sbc  [hl]                                        ; $4469: $9e
	ld   [hl], a                                     ; $446a: $77
	ld   d, h                                        ; $446b: $54
	sub  b                                           ; $446c: $90
	ld   h, c                                        ; $446d: $61
	sbc  d                                           ; $446e: $9a
	ld   a, l                                        ; $446f: $7d
	rst  $38                                         ; $4470: $ff
	rst  $38                                         ; $4471: $ff
	dec  c                                           ; $4472: $0d
	pop  bc                                          ; $4473: $c1
	db   $e3                                         ; $4474: $e3
	ld   [hl], c                                     ; $4475: $71
	adc  e                                           ; $4476: $8b
	ld   d, d                                        ; $4477: $52
	ld   [hl], l                                     ; $4478: $75
	ld   h, a                                        ; $4479: $67
	sbc  a                                           ; $447a: $9f
	dec  c                                           ; $447b: $0d
	nop                                              ; $447c: $00
	ld   a, [bc]                                     ; $447d: $0a
	inc  e                                           ; $447e: $1c
	ld   bc, $0202                                   ; $447f: $01 $02 $02
	ld   bc, $7978                                   ; $4482: $01 $78 $79
	inc  bc                                          ; $4485: $03
	or   d                                           ; $4486: $b2
	ld   e, a                                        ; $4487: $5f
	ld   a, b                                        ; $4488: $78
	ld   d, d                                        ; $4489: $52
	ld   h, c                                        ; $448a: $61
	halt                                             ; $448b: $76
	dec  c                                           ; $448c: $0d
	ld   [bc], a                                     ; $448d: $02
	sbc  l                                           ; $448e: $9d
	ld   [hl], c                                     ; $448f: $71
	ld   [hl], h                                     ; $4490: $74
	sbc  c                                           ; $4491: $99
	and  c                                           ; $4492: $a1
	ld   [hl], l                                     ; $4493: $75
	ld   h, a                                        ; $4494: $67
	ld   e, c                                        ; $4495: $59
	sbc  [hl]                                        ; $4496: $9e
	dec  c                                           ; $4497: $0d

jr_041_4498:
	ld   [$6300], sp                                 ; $4498: $08 $00 $63
	and  c                                           ; $449b: $a1
	sbc  a                                           ; $449c: $9f
	dec  c                                           ; $449d: $0d
	nop                                              ; $449e: $00
	ld   a, [bc]                                     ; $449f: $0a
	ld   bc, $a161                                   ; $44a0: $01 $61 $a1
	ld   a, b                                        ; $44a3: $78
	ld   h, c                                        ; $44a4: $61
	halt                                             ; $44a5: $76
	ld   e, [hl]                                     ; $44a6: $5e
	sub  a                                           ; $44a7: $97
	ld   d, d                                        ; $44a8: $52
	ld   [hl], l                                     ; $44a9: $75
	dec  c                                           ; $44aa: $0d
	sub  b                                           ; $44ab: $90
	ld   d, h                                        ; $44ac: $54
	ld   d, b                                        ; $44ad: $50
	ld   e, e                                        ; $44ae: $5b
	sub  a                                           ; $44af: $97
	adc  a                                           ; $44b0: $8f
	ld   [hl], h                                     ; $44b1: $74
	dec  c                                           ; $44b2: $0d
	ld   h, l                                        ; $44b3: $65
	adc  h                                           ; $44b4: $8c
	ld   d, h                                        ; $44b5: $54
	ld   a, b                                        ; $44b6: $78
	and  c                                           ; $44b7: $a1
	ld   [hl], h                                     ; $44b8: $74
	rst  $38                                         ; $44b9: $ff
	rst  $38                                         ; $44ba: $ff
	dec  c                                           ; $44bb: $0d
	nop                                              ; $44bc: $00
	ld   a, [bc]                                     ; $44bd: $0a
	dec  e                                           ; $44be: $1d
	ld   b, b                                        ; $44bf: $40
	ld   de, $1103                                   ; $44c0: $11 $03 $11
	ld   bc, $2902                                   ; $44c3: $01 $02 $29
	nop                                              ; $44c6: $00
	ld   bc, $a16b                                   ; $44c7: $01 $6b $a1
	ld   a, b                                        ; $44ca: $78
	ld   h, c                                        ; $44cb: $61
	halt                                             ; $44cc: $76
	ld   [hl], l                                     ; $44cd: $75
	ld   a, l                                        ; $44ce: $7d
	sbc  [hl]                                        ; $44cf: $9e
	dec  c                                           ; $44d0: $0d
	inc  bc                                          ; $44d1: $03
	ld   l, l                                        ; $44d2: $6d
	dec  b                                           ; $44d3: $05
	add  hl, de                                      ; $44d4: $19
	and  b                                           ; $44d5: $a0
	ld   [hl], d                                     ; $44d6: $72
	ld   [hl], e                                     ; $44d7: $73
	ld   e, a                                        ; $44d8: $5f
	ld   [hl], h                                     ; $44d9: $74
	ld   d, d                                        ; $44da: $52
	ld   e, l                                        ; $44db: $5d
	ld   h, c                                        ; $44dc: $61
	halt                                             ; $44dd: $76
	ld   a, l                                        ; $44de: $7d
	dec  c                                           ; $44df: $0d
	ld   [hl], l                                     ; $44e0: $75
	ld   e, e                                        ; $44e1: $5b
	adc  h                                           ; $44e2: $8c
	ld   l, c                                        ; $44e3: $69
	and  c                                           ; $44e4: $a1
	sub  [hl]                                        ; $44e5: $96
	sbc  a                                           ; $44e6: $9f
	dec  c                                           ; $44e7: $0d
	nop                                              ; $44e8: $00
	ld   a, [bc]                                     ; $44e9: $0a
	ld   bc, $6c03                                   ; $44ea: $01 $03 $6c
	ld   h, l                                        ; $44ed: $65
	inc  bc                                          ; $44ee: $03
	and  a                                           ; $44ef: $a7
	adc  a                                           ; $44f0: $8f
	ld   a, [hl]                                     ; $44f1: $7e
	dec  c                                           ; $44f2: $0d
	ld   h, a                                        ; $44f3: $67
	ld   e, [hl]                                     ; $44f4: $5e
	ld   a, c                                        ; $44f5: $79
	ld   [bc], a                                     ; $44f6: $02
	xor  h                                           ; $44f7: $ac
	ld   [bc], a                                     ; $44f8: $02
	and  c                                           ; $44f9: $a1
	ld   a, c                                        ; $44fa: $79
	ld   a, b                                        ; $44fb: $78
	sbc  b                                           ; $44fc: $98
	adc  h                                           ; $44fd: $8c
	ld   h, a                                        ; $44fe: $67
	sub  [hl]                                        ; $44ff: $96
	sbc  a                                           ; $4500: $9f
	dec  c                                           ; $4501: $0d
	nop                                              ; $4502: $00
	ld   a, [bc]                                     ; $4503: $0a
	ld   bc, $7d75                                   ; $4504: $01 $75 $7d
	sbc  [hl]                                        ; $4507: $9e
	ld   e, b                                        ; $4508: $58
	inc  b                                           ; $4509: $04
	ld   c, $02                                      ; $450a: $0e $02
	jp   $ff79                                       ; $450c: $c3 $79 $ff


	rst  $38                                         ; $450f: $ff
	dec  c                                           ; $4510: $0d
	nop                                              ; $4511: $00
	ld   a, [bc]                                     ; $4512: $0a
	add  hl, hl                                      ; $4513: $29
	nop                                              ; $4514: $00
	nop                                              ; $4515: $00
	inc  e                                           ; $4516: $1c
	ld   bc, $0404                                   ; $4517: $01 $04 $04
	ld   bc, $9e50                                   ; $451a: $01 $50 $9e
	inc  bc                                          ; $451d: $03
	call c, $9756                                    ; $451e: $dc $56 $97
	sbc  d                                           ; $4521: $9a
	ld   a, b                                        ; $4522: $78
	ld   d, d                                        ; $4523: $52
	adc  c                                           ; $4524: $89
	ld   [hl], a                                     ; $4525: $77
	dec  c                                           ; $4526: $0d
	ld   [hl], d                                     ; $4527: $72
	ld   e, c                                        ; $4528: $59
	sbc  d                                           ; $4529: $9a
	ld   [hl], h                                     ; $452a: $74
	sbc  c                                           ; $452b: $99
	ld   a, h                                        ; $452c: $7c
	ld   [hl], l                                     ; $452d: $75
	ld   h, a                                        ; $452e: $67
	ld   a, e                                        ; $452f: $7b
	sbc  a                                           ; $4530: $9f
	dec  c                                           ; $4531: $0d
	nop                                              ; $4532: $00
	ld   a, [bc]                                     ; $4533: $0a
	ld   bc, $7d75                                   ; $4534: $01 $75 $7d
	sbc  [hl]                                        ; $4537: $9e
	sub  h                                           ; $4538: $94
	ld   [hl], c                                     ; $4539: $71
	ld   e, l                                        ; $453a: $5d
	sbc  b                                           ; $453b: $98
	inc  b                                           ; $453c: $04
	ld   b, d                                        ; $453d: $42
	ld   [hl], h                                     ; $453e: $74
	dec  c                                           ; $453f: $0d
	inc  b                                           ; $4540: $04
	dec  c                                           ; $4541: $0d
	and  b                                           ; $4542: $a0
	sub  d                                           ; $4543: $92
	ld   h, a                                        ; $4544: $67
	adc  a                                           ; $4545: $8f
	ld   [hl], h                                     ; $4546: $74
	ld   [bc], a                                     ; $4547: $02
	inc  [hl]                                        ; $4548: $34
	ld   h, e                                        ; $4549: $63
	ld   d, d                                        ; $454a: $52
	sbc  a                                           ; $454b: $9f
	dec  c                                           ; $454c: $0d
	ld   e, b                                        ; $454d: $58
	inc  b                                           ; $454e: $04
	ld   c, $02                                      ; $454f: $0e $02
	jp   $ff79                                       ; $4551: $c3 $79 $ff


	rst  $38                                         ; $4554: $ff
	sbc  a                                           ; $4555: $9f
	dec  c                                           ; $4556: $0d
	nop                                              ; $4557: $00
	ld   a, [bc]                                     ; $4558: $0a
	add  hl, hl                                      ; $4559: $29
	nop                                              ; $455a: $00
	nop                                              ; $455b: $00
	inc  d                                           ; $455c: $14
	ld   b, $01                                      ; $455d: $06 $01
	rrca                                             ; $455f: $0f
	ld   [bc], a                                     ; $4560: $02
	dec  b                                           ; $4561: $05
	ld   bc, $0008                                   ; $4562: $01 $08 $00
	ld   h, e                                        ; $4565: $63
	and  c                                           ; $4566: $a1
	sbc  a                                           ; $4567: $9f
	dec  c                                           ; $4568: $0d
	ld   h, a                                        ; $4569: $67
	adc  l                                           ; $456a: $8d
	sbc  d                                           ; $456b: $9a
	ld   [hl], l                                     ; $456c: $75
	ld   h, a                                        ; $456d: $67
	sbc  l                                           ; $456e: $9d
	sbc  a                                           ; $456f: $9f
	dec  c                                           ; $4570: $0d
	nop                                              ; $4571: $00
	ld   a, [bc]                                     ; $4572: $0a
	dec  b                                           ; $4573: $05
	ld   b, b                                        ; $4574: $40
	ld   c, a                                        ; $4575: $4f
	ld   bc, $0000                                   ; $4576: $01 $00 $00
	ld   sp, $2040                                   ; $4579: $31 $40 $20
	inc  bc                                          ; $457c: $03
	jr   nz, jr_041_4580                             ; $457d: $20 $01

	ld   b, b                                        ; $457f: $40

jr_041_4580:
	jr   z, jr_041_4582                              ; $4580: $28 $00

jr_041_4582:
	rrca                                             ; $4582: $0f
	nop                                              ; $4583: $00
	ld   bc, $5601                                   ; $4584: $01 $01 $56
	ld   [hl], c                                     ; $4587: $71
	sbc  [hl]                                        ; $4588: $9e
	ld   h, a                                        ; $4589: $67
	adc  l                                           ; $458a: $8d
	sbc  d                                           ; $458b: $9a
	ld   h, e                                        ; $458c: $63
	and  c                                           ; $458d: $a1
	ld   sp, hl                                      ; $458e: $f9
	dec  c                                           ; $458f: $0d
	rst  $38                                         ; $4590: $ff
	rst  $38                                         ; $4591: $ff
	ld   [hl], a                                     ; $4592: $77
	ld   d, h                                        ; $4593: $54
	ld   l, h                                        ; $4594: $6c
	sbc  [hl]                                        ; $4595: $9e
	ld   e, b                                        ; $4596: $58
	inc  b                                           ; $4597: $04
	ld   b, l                                        ; $4598: $45
	sbc  b                                           ; $4599: $98
	ld   [bc], a                                     ; $459a: $02
	inc  [hl]                                        ; $459b: $34
	ld   h, e                                        ; $459c: $63
	ld   d, d                                        ; $459d: $52
	sbc  a                                           ; $459e: $9f
	dec  c                                           ; $459f: $0d
	nop                                              ; $45a0: $00
	ld   a, [bc]                                     ; $45a1: $0a
	inc  d                                           ; $45a2: $14
	ld   a, [bc]                                     ; $45a3: $0a
	ld   bc, $021c                                   ; $45a4: $01 $1c $02
	dec  b                                           ; $45a7: $05
	dec  b                                           ; $45a8: $05
	ld   bc, $0e04                                   ; $45a9: $01 $04 $0e
	inc  bc                                          ; $45ac: $03
	sbc  l                                           ; $45ad: $9d
	inc  b                                           ; $45ae: $04
	and  [hl]                                        ; $45af: $a6
	ld   [hl], l                                     ; $45b0: $75
	ld   h, a                                        ; $45b1: $67
	ld   a, h                                        ; $45b2: $7c
	ld   sp, hl                                      ; $45b3: $f9
	dec  c                                           ; $45b4: $0d
	ld   [$6300], sp                                 ; $45b5: $08 $00 $63
	and  c                                           ; $45b8: $a1
	sbc  a                                           ; $45b9: $9f
	dec  c                                           ; $45ba: $0d
	nop                                              ; $45bb: $00
	ld   a, [bc]                                     ; $45bc: $0a
	add  hl, de                                      ; $45bd: $19
	dec  b                                           ; $45be: $05
	ld   [bc], a                                     ; $45bf: $02
	inc  b                                           ; $45c0: $04
	ld   c, $03                                      ; $45c1: $0e $03
	sbc  l                                           ; $45c3: $9d
	inc  b                                           ; $45c4: $04
	and  [hl]                                        ; $45c5: $a6
	nop                                              ; $45c6: $00
	nop                                              ; $45c7: $00
	pop  bc                                          ; $45c8: $c1
	db   $e3                                         ; $45c9: $e3
	ld   [hl], c                                     ; $45ca: $71
	adc  e                                           ; $45cb: $8b
	ld   d, d                                        ; $45cc: $52
	nop                                              ; $45cd: $00
	ld   bc, $e107                                   ; $45ce: $01 $07 $e1
	dec  b                                           ; $45d1: $05
	ld   [bc], a                                     ; $45d2: $02
	inc  bc                                          ; $45d3: $03
	ld   bc, $2000                                   ; $45d4: $01 $00 $20
	nop                                              ; $45d7: $00
	rlca                                             ; $45d8: $07
	adc  e                                           ; $45d9: $8b
	ld   b, $02                                      ; $45da: $06 $02
	inc  bc                                          ; $45dc: $03
	ld   bc, $2001                                   ; $45dd: $01 $01 $20
	nop                                              ; $45e0: $00
	ld   b, $2b                                      ; $45e1: $06 $2b
	rlca                                             ; $45e3: $07
	rrca                                             ; $45e4: $0f
	nop                                              ; $45e5: $00
	ld   bc, $0401                                   ; $45e6: $01 $01 $04
	ld   c, $03                                      ; $45e9: $0e $03
	sbc  l                                           ; $45eb: $9d
	inc  b                                           ; $45ec: $04
	and  [hl]                                        ; $45ed: $a6
	ld   [hl], l                                     ; $45ee: $75
	ld   h, a                                        ; $45ef: $67
	sbc  [hl]                                        ; $45f0: $9e
	ld   h, a                                        ; $45f1: $67
	adc  l                                           ; $45f2: $8d
	sbc  d                                           ; $45f3: $9a
	ld   h, e                                        ; $45f4: $63
	and  c                                           ; $45f5: $a1
	sbc  a                                           ; $45f6: $9f
	dec  c                                           ; $45f7: $0d
	inc  bc                                          ; $45f8: $03
	ld   [hl], l                                     ; $45f9: $75
	inc  b                                           ; $45fa: $04
	xor  e                                           ; $45fb: $ab
	ld   h, l                                        ; $45fc: $65
	ld   a, b                                        ; $45fd: $78
	ld   d, d                                        ; $45fe: $52
	ld   [hl], l                                     ; $45ff: $75
	ld   [bc], a                                     ; $4600: $02
	inc  [hl]                                        ; $4601: $34
	ld   h, e                                        ; $4602: $63
	ld   d, d                                        ; $4603: $52
	sbc  a                                           ; $4604: $9f
	dec  c                                           ; $4605: $0d
	inc  b                                           ; $4606: $04
	ld   b, d                                        ; $4607: $42
	ld   [hl], h                                     ; $4608: $74
	ld   d, d                                        ; $4609: $52
	sbc  d                                           ; $460a: $9a
	ld   a, [hl]                                     ; $460b: $7e
	ld   [bc], a                                     ; $460c: $02
	sub  e                                           ; $460d: $93
	inc  b                                           ; $460e: $04
	ld   a, h                                        ; $460f: $7c
	ld   h, l                                        ; $4610: $65
	adc  h                                           ; $4611: $8c
	ld   h, a                                        ; $4612: $67
	ld   e, c                                        ; $4613: $59
	sub  a                                           ; $4614: $97
	sbc  a                                           ; $4615: $9f
	dec  c                                           ; $4616: $0d
	nop                                              ; $4617: $00
	ld   a, [bc]                                     ; $4618: $0a
	inc  e                                           ; $4619: $1c
	ld   [bc], a                                     ; $461a: $02
	ld   bc, $0101                                   ; $461b: $01 $01 $01
	ld   d, b                                        ; $461e: $50
	sub  a                                           ; $461f: $97
	sbc  [hl]                                        ; $4620: $9e
	ld   l, e                                        ; $4621: $6b
	ld   d, h                                        ; $4622: $54
	ld   [hl], l                                     ; $4623: $75
	ld   h, a                                        ; $4624: $67
	ld   a, h                                        ; $4625: $7c
	ld   sp, hl                                      ; $4626: $f9
	dec  c                                           ; $4627: $0d
	adc  h                                           ; $4628: $8c
	ld   c, a                                        ; $4629: $4f
	sbc  [hl]                                        ; $462a: $9e
	inc  bc                                          ; $462b: $03
	ld   [hl], l                                     ; $462c: $75
	inc  b                                           ; $462d: $04
	xor  e                                           ; $462e: $ab
	ld   a, b                                        ; $462f: $78
	and  c                                           ; $4630: $a1
	ld   [hl], h                                     ; $4631: $74
	dec  c                                           ; $4632: $0d
	ld   h, l                                        ; $4633: $65
	ld   [hl], h                                     ; $4634: $74
	ld   e, b                                        ; $4635: $58
	sbc  b                                           ; $4636: $98
	adc  h                                           ; $4637: $8c
	ld   l, c                                        ; $4638: $69
	and  c                                           ; $4639: $a1
	ld   [hl], l                                     ; $463a: $75
	ld   h, l                                        ; $463b: $65
	ld   l, l                                        ; $463c: $6d
	ld   e, d                                        ; $463d: $5a
	sbc  a                                           ; $463e: $9f
	dec  c                                           ; $463f: $0d
	nop                                              ; $4640: $00
	ld   a, [bc]                                     ; $4641: $0a
	inc  e                                           ; $4642: $1c
	ld   [bc], a                                     ; $4643: $02
	nop                                              ; $4644: $00
	nop                                              ; $4645: $00
	ld   bc, $9075                                   ; $4646: $01 $75 $90
	sbc  [hl]                                        ; $4649: $9e
	inc  bc                                          ; $464a: $03
	sub  h                                           ; $464b: $94
	inc  b                                           ; $464c: $04
	sbc  [hl]                                        ; $464d: $9e
	ld   a, h                                        ; $464e: $7c
	inc  b                                           ; $464f: $04
	dec  c                                           ; $4650: $0d
	dec  b                                           ; $4651: $05
	ld   a, [bc]                                     ; $4652: $0a
	ld   a, h                                        ; $4653: $7c
	ld   [bc], a                                     ; $4654: $02
	ldh  [rSC], a                                    ; $4655: $e0 $02
	ld   b, d                                        ; $4657: $42
	sub  b                                           ; $4658: $90
	dec  c                                           ; $4659: $0d
	sbc  l                                           ; $465a: $9d
	ld   e, c                                        ; $465b: $59
	sub  a                                           ; $465c: $97
	ld   a, b                                        ; $465d: $78
	ld   d, d                                        ; $465e: $52
	sub  [hl]                                        ; $465f: $96
	ld   d, h                                        ; $4660: $54
	ld   [hl], l                                     ; $4661: $75
	ld   a, l                                        ; $4662: $7d
	sbc  [hl]                                        ; $4663: $9e
	dec  c                                           ; $4664: $0d
	pop  bc                                          ; $4665: $c1
	db   $e3                                         ; $4666: $e3
	ld   [hl], l                                     ; $4667: $75
	ld   h, a                                        ; $4668: $67
	sbc  l                                           ; $4669: $9d
	ld   a, e                                        ; $466a: $7b
	sbc  a                                           ; $466b: $9f
	dec  c                                           ; $466c: $0d
	nop                                              ; $466d: $00
	ld   a, [bc]                                     ; $466e: $0a
	ld   bc, $7190                                   ; $466f: $01 $90 $71
	halt                                             ; $4672: $76
	sbc  [hl]                                        ; $4673: $9e
	ld   h, l                                        ; $4674: $65
	ld   [hl], c                                     ; $4675: $71
	ld   e, c                                        ; $4676: $59
	sbc  b                                           ; $4677: $98
	ld   a, b                                        ; $4678: $78
	ld   h, e                                        ; $4679: $63
	ld   d, d                                        ; $467a: $52
	sbc  a                                           ; $467b: $9f
	dec  c                                           ; $467c: $0d
	ld   [hl], l                                     ; $467d: $75
	ld   a, l                                        ; $467e: $7d
	sbc  [hl]                                        ; $467f: $9e
	ld   e, b                                        ; $4680: $58
	inc  b                                           ; $4681: $04
	ld   c, $02                                      ; $4682: $0e $02
	jp   $ff79                                       ; $4684: $c3 $79 $ff


	rst  $38                                         ; $4687: $ff
	dec  c                                           ; $4688: $0d
	nop                                              ; $4689: $00
	ld   a, [bc]                                     ; $468a: $0a
	add  hl, hl                                      ; $468b: $29
	nop                                              ; $468c: $00
	nop                                              ; $468d: $00
	rrca                                             ; $468e: $0f
	nop                                              ; $468f: $00
	ld   bc, $5201                                   ; $4690: $01 $01 $52
	sub  d                                           ; $4693: $92
	db   $fc                                         ; $4694: $fc
	sbc  [hl]                                        ; $4695: $9e
	ld   [hl], a                                     ; $4696: $77
	ld   d, h                                        ; $4697: $54
	sub  b                                           ; $4698: $90
	ld   h, c                                        ; $4699: $61
	sbc  d                                           ; $469a: $9a
	ld   a, l                                        ; $469b: $7d
	rst  $38                                         ; $469c: $ff
	rst  $38                                         ; $469d: $ff
	dec  c                                           ; $469e: $0d
	pop  bc                                          ; $469f: $c1
	db   $e3                                         ; $46a0: $e3
	ld   [hl], c                                     ; $46a1: $71
	adc  e                                           ; $46a2: $8b
	ld   d, d                                        ; $46a3: $52
	ld   [hl], l                                     ; $46a4: $75
	ld   h, a                                        ; $46a5: $67
	sbc  a                                           ; $46a6: $9f
	dec  c                                           ; $46a7: $0d
	nop                                              ; $46a8: $00
	ld   a, [bc]                                     ; $46a9: $0a
	inc  e                                           ; $46aa: $1c
	ld   [bc], a                                     ; $46ab: $02
	dec  b                                           ; $46ac: $05
	dec  b                                           ; $46ad: $05
	ld   bc, $e3c1                                   ; $46ae: $01 $c1 $e3
	ld   [hl], c                                     ; $46b1: $71
	adc  e                                           ; $46b2: $8b
	ld   d, d                                        ; $46b3: $52
	ld   [hl], l                                     ; $46b4: $75
	ld   h, a                                        ; $46b5: $67
	ld   [hl], c                                     ; $46b6: $71
	ld   [hl], h                                     ; $46b7: $74
	rst  $38                                         ; $46b8: $ff
	rst  $38                                         ; $46b9: $ff
	dec  c                                           ; $46ba: $0d
	inc  bc                                          ; $46bb: $03
	or   d                                           ; $46bc: $b2
	ld   e, a                                        ; $46bd: $5f
	ld   a, b                                        ; $46be: $78
	ld   d, d                                        ; $46bf: $52
	ld   [hl], l                                     ; $46c0: $75
	ld   h, a                                        ; $46c1: $67
	sbc  l                                           ; $46c2: $9d
	ld   a, e                                        ; $46c3: $7b
	db   $fc                                         ; $46c4: $fc
	dec  c                                           ; $46c5: $0d
	nop                                              ; $46c6: $00
	ld   a, [bc]                                     ; $46c7: $0a
	inc  e                                           ; $46c8: $1c
	ld   [bc], a                                     ; $46c9: $02
	ld   [bc], a                                     ; $46ca: $02
	ld   [bc], a                                     ; $46cb: $02
	ld   bc, $596d                                   ; $46cc: $01 $6d $59
	ld   l, [hl]                                     ; $46cf: $6e
	ld   e, c                                        ; $46d0: $59
	sbc  [hl]                                        ; $46d1: $9e
	inc  b                                           ; $46d2: $04
	dec  c                                           ; $46d3: $0d
	dec  b                                           ; $46d4: $05
	ld   a, [bc]                                     ; $46d5: $0a
	inc  b                                           ; $46d6: $04
	and  b                                           ; $46d7: $a0
	inc  bc                                          ; $46d8: $03
	ld   a, l                                        ; $46d9: $7d
	ld   [hl], l                                     ; $46da: $75
	dec  c                                           ; $46db: $0d
	inc  b                                           ; $46dc: $04
	ld   b, d                                        ; $46dd: $42
	ld   [bc], a                                     ; $46de: $02
	ld   b, b                                        ; $46df: $40
	and  c                                           ; $46e0: $a1
	ld   l, [hl]                                     ; $46e1: $6e
	ld   e, [hl]                                     ; $46e2: $5e
	sub  a                                           ; $46e3: $97
	ld   d, d                                        ; $46e4: $52
	ld   [hl], l                                     ; $46e5: $75
	sbc  [hl]                                        ; $46e6: $9e
	dec  c                                           ; $46e7: $0d
	db   $fd                                         ; $46e8: $fd
	pop  bc                                          ; $46e9: $c1
	db   $e3                                         ; $46ea: $e3
	cp   $6e                                         ; $46eb: $fe $6e
	ld   a, b                                        ; $46ed: $78
	and  c                                           ; $46ee: $a1
	ld   [hl], h                                     ; $46ef: $74
	sbc  a                                           ; $46f0: $9f
	dec  c                                           ; $46f1: $0d
	nop                                              ; $46f2: $00
	ld   a, [bc]                                     ; $46f3: $0a
	dec  e                                           ; $46f4: $1d
	ld   b, b                                        ; $46f5: $40
	ld   [de], a                                     ; $46f6: $12
	inc  bc                                          ; $46f7: $03
	ld   [de], a                                     ; $46f8: $12
	ld   bc, $2902                                   ; $46f9: $01 $02 $29
	nop                                              ; $46fc: $00
	ld   bc, $5b50                                   ; $46fd: $01 $50 $5b
	sbc  d                                           ; $4700: $9a
	ld   [hl], h                                     ; $4701: $74
	sbc  [hl]                                        ; $4702: $9e
	ld   [bc], a                                     ; $4703: $02
	adc  b                                           ; $4704: $88
	ld   d, d                                        ; $4705: $52
	ld   l, l                                        ; $4706: $6d
	ld   [bc], a                                     ; $4707: $02
	xor  [hl]                                        ; $4708: $ae
	ld   e, d                                        ; $4709: $5a
	dec  c                                           ; $470a: $0d
	add  e                                           ; $470b: $83
	ld   h, e                                        ; $470c: $63
	ld   e, d                                        ; $470d: $5a
	sbc  b                                           ; $470e: $98
	adc  h                                           ; $470f: $8c
	ld   l, c                                        ; $4710: $69
	and  c                                           ; $4711: $a1
	sbc  l                                           ; $4712: $9d
	sbc  a                                           ; $4713: $9f
	dec  c                                           ; $4714: $0d
	nop                                              ; $4715: $00
	ld   a, [bc]                                     ; $4716: $0a
	ld   bc, $7d75                                   ; $4717: $01 $75 $7d
	sbc  [hl]                                        ; $471a: $9e
	halt                                             ; $471b: $76
	sbc  b                                           ; $471c: $98
	ld   d, b                                        ; $471d: $50
	ld   d, [hl]                                     ; $471e: $56
	ld   l, b                                        ; $471f: $68
	sbc  [hl]                                        ; $4720: $9e
	ld   e, b                                        ; $4721: $58
	inc  b                                           ; $4722: $04
	ld   c, $02                                      ; $4723: $0e $02
	jp   $9f79                                       ; $4725: $c3 $79 $9f


	dec  c                                           ; $4728: $0d
	nop                                              ; $4729: $00
	ld   a, [bc]                                     ; $472a: $0a
	add  hl, hl                                      ; $472b: $29
	nop                                              ; $472c: $00
	nop                                              ; $472d: $00
	inc  e                                           ; $472e: $1c
	ld   [bc], a                                     ; $472f: $02
	dec  b                                           ; $4730: $05
	dec  b                                           ; $4731: $05
	ld   bc, $4f8c                                   ; $4732: $01 $8c $4f
	sbc  [hl]                                        ; $4735: $9e
	ld   h, c                                        ; $4736: $61
	ld   a, h                                        ; $4737: $7c
	sbc  l                                           ; $4738: $9d
	ld   l, l                                        ; $4739: $6d
	ld   e, l                                        ; $473a: $5d
	ld   h, l                                        ; $473b: $65
	ld   e, d                                        ; $473c: $5a
	dec  c                                           ; $473d: $0d
	ld   e, b                                        ; $473e: $58
	ld   [bc], a                                     ; $473f: $02
	sub  l                                           ; $4740: $95
	inc  b                                           ; $4741: $04
	adc  [hl]                                        ; $4742: $8e
	ld   d, d                                        ; $4743: $52
	ld   a, c                                        ; $4744: $79
	ld   e, e                                        ; $4745: $5b
	ld   l, l                                        ; $4746: $6d
	halt                                             ; $4747: $76
	ld   d, d                                        ; $4748: $52
	ld   d, h                                        ; $4749: $54
	ld   a, h                                        ; $474a: $7c
	ld   a, c                                        ; $474b: $79
	sbc  [hl]                                        ; $474c: $9e
	dec  c                                           ; $474d: $0d
	inc  b                                           ; $474e: $04
	sub  $02                                         ; $474f: $d6 $02
	sbc  l                                           ; $4751: $9d
	ld   l, [hl]                                     ; $4752: $6e
	ld   a, b                                        ; $4753: $78
	and  c                                           ; $4754: $a1
	ld   [hl], h                                     ; $4755: $74
	rst  $38                                         ; $4756: $ff
	rst  $38                                         ; $4757: $ff
	dec  c                                           ; $4758: $0d
	nop                                              ; $4759: $00
	ld   a, [bc]                                     ; $475a: $0a
	inc  e                                           ; $475b: $1c
	ld   [bc], a                                     ; $475c: $02
	ld   b, $06                                      ; $475d: $06 $06
	dec  e                                           ; $475f: $1d
	ld   b, b                                        ; $4760: $40
	ld   [de], a                                     ; $4761: $12
	inc  bc                                          ; $4762: $03
	ld   [de], a                                     ; $4763: $12
	ld   bc, $2902                                   ; $4764: $01 $02 $29
	nop                                              ; $4767: $00
	ld   bc, $6658                                   ; $4768: $01 $58 $66
	sub  c                                           ; $476b: $91
	adc  h                                           ; $476c: $8c
	ld   h, l                                        ; $476d: $65
	adc  h                                           ; $476e: $8c
	ld   h, l                                        ; $476f: $65
	ld   l, l                                        ; $4770: $6d
	sbc  l                                           ; $4771: $9d
	ld   a, e                                        ; $4772: $7b
	sbc  a                                           ; $4773: $9f
	dec  c                                           ; $4774: $0d
	inc  bc                                          ; $4775: $03
	add  e                                           ; $4776: $83
	dec  b                                           ; $4777: $05
	dec  c                                           ; $4778: $0d
	sbc  a                                           ; $4779: $9f
	dec  c                                           ; $477a: $0d
	nop                                              ; $477b: $00
	ld   a, [bc]                                     ; $477c: $0a
	add  hl, hl                                      ; $477d: $29
	nop                                              ; $477e: $00
	nop                                              ; $477f: $00
	inc  d                                           ; $4780: $14
	ld   b, $01                                      ; $4781: $06 $01
	rrca                                             ; $4783: $0f
	inc  bc                                          ; $4784: $03
	inc  b                                           ; $4785: $04
	ld   bc, $0008                                   ; $4786: $01 $08 $00
	ld   e, l                                        ; $4789: $5d
	and  c                                           ; $478a: $a1
	sbc  a                                           ; $478b: $9f
	dec  c                                           ; $478c: $0d
	rst  JumpTable                                         ; $478d: $df
	db   $ec                                         ; $478e: $ec
	and  e                                           ; $478f: $a3
	sub  [hl]                                        ; $4790: $96
	sbc  a                                           ; $4791: $9f
	dec  c                                           ; $4792: $0d
	nop                                              ; $4793: $00
	ld   a, [bc]                                     ; $4794: $0a
	dec  b                                           ; $4795: $05
	ld   b, b                                        ; $4796: $40
	ld   d, b                                        ; $4797: $50
	ld   bc, $0000                                   ; $4798: $01 $00 $00
	ld   sp, $2040                                   ; $479b: $31 $40 $20
	inc  bc                                          ; $479e: $03
	jr   nz, jr_041_47a2                             ; $479f: $20 $01

	ld   b, b                                        ; $47a1: $40

jr_041_47a2:
	jr   z, jr_041_47a4                              ; $47a2: $28 $00

jr_041_47a4:
	rrca                                             ; $47a4: $0f
	nop                                              ; $47a5: $00
	ld   bc, $5601                                   ; $47a6: $01 $01 $56
	ld   [hl], c                                     ; $47a9: $71
	sbc  [hl]                                        ; $47aa: $9e
	rst  JumpTable                                         ; $47ab: $df
	db   $ec                                         ; $47ac: $ec
	and  e                                           ; $47ad: $a3
	ld   h, e                                        ; $47ae: $63
	and  c                                           ; $47af: $a1
	ld   sp, hl                                      ; $47b0: $f9
	dec  c                                           ; $47b1: $0d
	rst  $38                                         ; $47b2: $ff
	rst  $38                                         ; $47b3: $ff
	ld   [hl], a                                     ; $47b4: $77
	ld   d, h                                        ; $47b5: $54
	ld   l, h                                        ; $47b6: $6c
	sbc  [hl]                                        ; $47b7: $9e
	ld   e, b                                        ; $47b8: $58
	inc  b                                           ; $47b9: $04
	ld   b, l                                        ; $47ba: $45
	sbc  b                                           ; $47bb: $98
	ld   [bc], a                                     ; $47bc: $02
	inc  [hl]                                        ; $47bd: $34
	ld   h, e                                        ; $47be: $63
	ld   d, d                                        ; $47bf: $52
	sbc  a                                           ; $47c0: $9f
	dec  c                                           ; $47c1: $0d
	nop                                              ; $47c2: $00
	ld   a, [bc]                                     ; $47c3: $0a
	inc  d                                           ; $47c4: $14
	ld   a, [bc]                                     ; $47c5: $0a
	ld   bc, $031c                                   ; $47c6: $01 $1c $03
	inc  b                                           ; $47c9: $04
	inc  b                                           ; $47ca: $04
	ld   bc, $0e04                                   ; $47cb: $01 $04 $0e
	inc  bc                                          ; $47ce: $03
	sbc  l                                           ; $47cf: $9d
	inc  b                                           ; $47d0: $04
	and  [hl]                                        ; $47d1: $a6
	ld   sp, hl                                      ; $47d2: $f9
	dec  c                                           ; $47d3: $0d
	ld   [$5d00], sp                                 ; $47d4: $08 $00 $5d
	and  c                                           ; $47d7: $a1
	sbc  a                                           ; $47d8: $9f
	dec  c                                           ; $47d9: $0d
	nop                                              ; $47da: $00
	ld   a, [bc]                                     ; $47db: $0a
	add  hl, de                                      ; $47dc: $19
	dec  b                                           ; $47dd: $05
	ld   [bc], a                                     ; $47de: $02
	inc  b                                           ; $47df: $04
	ld   c, $03                                      ; $47e0: $0e $03
	sbc  l                                           ; $47e2: $9d
	inc  b                                           ; $47e3: $04
	and  [hl]                                        ; $47e4: $a6
	nop                                              ; $47e5: $00
	nop                                              ; $47e6: $00
	pop  bc                                          ; $47e7: $c1
	db   $e3                                         ; $47e8: $e3
	ld   [hl], c                                     ; $47e9: $71
	adc  e                                           ; $47ea: $8b
	ld   d, d                                        ; $47eb: $52
	nop                                              ; $47ec: $00
	ld   bc, $0007                                   ; $47ed: $01 $07 $00
	ld   [$0302], sp                                 ; $47f0: $08 $02 $03
	ld   bc, $2000                                   ; $47f3: $01 $00 $20
	nop                                              ; $47f6: $00
	rlca                                             ; $47f7: $07
	and  l                                           ; $47f8: $a5
	ld   [$0302], sp                                 ; $47f9: $08 $02 $03
	ld   bc, $2001                                   ; $47fc: $01 $01 $20
	nop                                              ; $47ff: $00
	ld   b, $56                                      ; $4800: $06 $56
	add  hl, bc                                      ; $4802: $09
	rrca                                             ; $4803: $0f
	nop                                              ; $4804: $00
	ld   bc, $0401                                   ; $4805: $01 $01 $04
	ld   c, $03                                      ; $4808: $0e $03
	sbc  l                                           ; $480a: $9d
	inc  b                                           ; $480b: $04
	and  [hl]                                        ; $480c: $a6
	ld   [hl], l                                     ; $480d: $75
	ld   h, a                                        ; $480e: $67
	sbc  [hl]                                        ; $480f: $9e
	rst  JumpTable                                         ; $4810: $df
	db   $ec                                         ; $4811: $ec
	and  e                                           ; $4812: $a3
	ld   h, e                                        ; $4813: $63
	and  c                                           ; $4814: $a1
	sbc  a                                           ; $4815: $9f
	dec  c                                           ; $4816: $0d
	inc  bc                                          ; $4817: $03
	ld   [hl], l                                     ; $4818: $75
	inc  b                                           ; $4819: $04
	xor  e                                           ; $481a: $ab
	ld   h, l                                        ; $481b: $65
	ld   a, b                                        ; $481c: $78
	ld   d, d                                        ; $481d: $52
	ld   [hl], l                                     ; $481e: $75
	ld   [bc], a                                     ; $481f: $02
	inc  [hl]                                        ; $4820: $34
	ld   h, e                                        ; $4821: $63
	ld   d, d                                        ; $4822: $52
	sbc  a                                           ; $4823: $9f
	dec  c                                           ; $4824: $0d
	inc  b                                           ; $4825: $04
	ld   b, d                                        ; $4826: $42
	ld   [hl], h                                     ; $4827: $74
	ld   d, d                                        ; $4828: $52
	sbc  d                                           ; $4829: $9a
	ld   a, [hl]                                     ; $482a: $7e
	ld   [bc], a                                     ; $482b: $02
	sub  e                                           ; $482c: $93
	inc  b                                           ; $482d: $04
	ld   a, h                                        ; $482e: $7c
	ld   h, l                                        ; $482f: $65
	adc  h                                           ; $4830: $8c
	ld   h, a                                        ; $4831: $67
	ld   e, c                                        ; $4832: $59
	sub  a                                           ; $4833: $97
	sbc  a                                           ; $4834: $9f
	dec  c                                           ; $4835: $0d
	nop                                              ; $4836: $00
	ld   a, [bc]                                     ; $4837: $0a
	inc  e                                           ; $4838: $1c
	inc  bc                                          ; $4839: $03
	inc  bc                                          ; $483a: $03
	inc  bc                                          ; $483b: $03
	dec  e                                           ; $483c: $1d
	ld   b, b                                        ; $483d: $40
	inc  de                                          ; $483e: $13
	inc  bc                                          ; $483f: $03
	inc  de                                          ; $4840: $13
	ld   bc, $2802                                   ; $4841: $01 $02 $28
	nop                                              ; $4844: $00
	ld   bc, $546b                                   ; $4845: $01 $6b $54
	sbc  [hl]                                        ; $4848: $9e
	ld   l, e                                        ; $4849: $6b
	sbc  d                                           ; $484a: $9a
	ld   a, l                                        ; $484b: $7d
	sub  [hl]                                        ; $484c: $96
	ld   e, c                                        ; $484d: $59
	ld   [hl], c                                     ; $484e: $71
	ld   l, l                                        ; $484f: $6d
	sbc  a                                           ; $4850: $9f
	dec  c                                           ; $4851: $0d
	nop                                              ; $4852: $00
	ld   a, [bc]                                     ; $4853: $0a
	inc  e                                           ; $4854: $1c
	inc  bc                                          ; $4855: $03
	nop                                              ; $4856: $00
	nop                                              ; $4857: $00
	ld   bc, $a502                                   ; $4858: $01 $02 $a5
	ld   [bc], a                                     ; $485b: $02
	xor  d                                           ; $485c: $aa
	ld   a, l                                        ; $485d: $7d
	sbc  [hl]                                        ; $485e: $9e
	db   $fd                                         ; $485f: $fd
	inc  b                                           ; $4860: $04
	dec  c                                           ; $4861: $0d
	dec  b                                           ; $4862: $05
	ld   a, [bc]                                     ; $4863: $0a
	ld   a, h                                        ; $4864: $7c
	ld   [bc], a                                     ; $4865: $02
	ldh  [rSC], a                                    ; $4866: $e0 $02
	ld   b, d                                        ; $4868: $42
	ld   l, [hl]                                     ; $4869: $6e
	cp   $0d                                         ; $486a: $fe $0d
	halt                                             ; $486c: $76
	dec  b                                           ; $486d: $05
	pop  de                                          ; $486e: $d1
	ld   [hl], c                                     ; $486f: $71
	ld   l, l                                        ; $4870: $6d
	sub  a                                           ; $4871: $97
	sbc  [hl]                                        ; $4872: $9e
	inc  b                                           ; $4873: $04
	inc  b                                           ; $4874: $04
	sbc  d                                           ; $4875: $9a
	sbc  c                                           ; $4876: $99
	inc  bc                                          ; $4877: $03
	ld   c, a                                        ; $4878: $4f
	ld   a, c                                        ; $4879: $79
	dec  c                                           ; $487a: $0d
	inc  b                                           ; $487b: $04
	dec  c                                           ; $487c: $0d
	and  b                                           ; $487d: $a0
	sub  d                                           ; $487e: $92
	ld   h, a                                        ; $487f: $67
	adc  a                                           ; $4880: $8f
	ld   a, b                                        ; $4881: $78
	ld   h, e                                        ; $4882: $63
	ld   d, d                                        ; $4883: $52
	sbc  a                                           ; $4884: $9f
	dec  c                                           ; $4885: $0d
	nop                                              ; $4886: $00
	ld   a, [bc]                                     ; $4887: $0a
	ld   bc, $599d                                   ; $4888: $01 $9d $59
	ld   [hl], c                                     ; $488b: $71
	ld   l, l                                        ; $488c: $6d
	sbc  l                                           ; $488d: $9d
	ld   a, e                                        ; $488e: $7b
	sbc  a                                           ; $488f: $9f
	dec  c                                           ; $4890: $0d
	nop                                              ; $4891: $00
	inc  e                                           ; $4892: $1c
	inc  bc                                          ; $4893: $03
	inc  bc                                          ; $4894: $03
	inc  bc                                          ; $4895: $03
	ld   bc, $7d75                                   ; $4896: $01 $75 $7d
	sbc  [hl]                                        ; $4899: $9e
	ld   e, b                                        ; $489a: $58
	inc  b                                           ; $489b: $04
	ld   c, $02                                      ; $489c: $0e $02
	jp   $ff79                                       ; $489e: $c3 $79 $ff


	rst  $38                                         ; $48a1: $ff
	dec  c                                           ; $48a2: $0d
	nop                                              ; $48a3: $00
	ld   a, [bc]                                     ; $48a4: $0a
	add  hl, hl                                      ; $48a5: $29
	nop                                              ; $48a6: $00
	nop                                              ; $48a7: $00
	rrca                                             ; $48a8: $0f
	nop                                              ; $48a9: $00
	ld   bc, $5201                                   ; $48aa: $01 $01 $52
	sub  d                                           ; $48ad: $92
	db   $fc                                         ; $48ae: $fc
	sbc  [hl]                                        ; $48af: $9e
	ld   [hl], a                                     ; $48b0: $77
	ld   d, h                                        ; $48b1: $54
	sub  b                                           ; $48b2: $90
	ld   h, c                                        ; $48b3: $61
	sbc  d                                           ; $48b4: $9a
	ld   a, l                                        ; $48b5: $7d
	rst  $38                                         ; $48b6: $ff
	rst  $38                                         ; $48b7: $ff
	dec  c                                           ; $48b8: $0d
	pop  bc                                          ; $48b9: $c1
	db   $e3                                         ; $48ba: $e3
	ld   [hl], c                                     ; $48bb: $71
	adc  e                                           ; $48bc: $8b
	ld   d, d                                        ; $48bd: $52
	ld   [hl], l                                     ; $48be: $75
	ld   h, a                                        ; $48bf: $67
	sbc  a                                           ; $48c0: $9f
	dec  c                                           ; $48c1: $0d
	nop                                              ; $48c2: $00
	ld   a, [bc]                                     ; $48c3: $0a
	inc  e                                           ; $48c4: $1c
	inc  bc                                          ; $48c5: $03
	inc  b                                           ; $48c6: $04
	inc  b                                           ; $48c7: $04
	ld   bc, $546b                                   ; $48c8: $01 $6b $54
	rst  $38                                         ; $48cb: $ff
	rst  $38                                         ; $48cc: $ff
	rst  $38                                         ; $48cd: $ff
	rst  $38                                         ; $48ce: $ff
	dec  c                                           ; $48cf: $0d
	ld   d, b                                        ; $48d0: $50
	ld   a, b                                        ; $48d1: $78
	ld   l, l                                        ; $48d2: $6d
	ld   a, c                                        ; $48d3: $79
	ld   a, l                                        ; $48d4: $7d
	sbc  [hl]                                        ; $48d5: $9e
	inc  b                                           ; $48d6: $04
	sub  $05                                         ; $48d7: $d6 $05
	ld   de, $7c78                                   ; $48d9: $11 $78 $7c
	ld   e, c                                        ; $48dc: $59
	ld   h, l                                        ; $48dd: $65
	sub  a                                           ; $48de: $97
	rst  $38                                         ; $48df: $ff
	dec  c                                           ; $48e0: $0d
	ld   [bc], a                                     ; $48e1: $02
	sbc  b                                           ; $48e2: $98
	inc  bc                                          ; $48e3: $03
	nop                                              ; $48e4: $00
	ld   a, h                                        ; $48e5: $7c
	inc  b                                           ; $48e6: $04
	dec  c                                           ; $48e7: $0d
	ld   [bc], a                                     ; $48e8: $02
	sub  [hl]                                        ; $48e9: $96
	inc  b                                           ; $48ea: $04
	ld   b, l                                        ; $48eb: $45
	inc  b                                           ; $48ec: $04
	ld   a, [bc]                                     ; $48ed: $0a
	rst  $38                                         ; $48ee: $ff
	rst  $38                                         ; $48ef: $ff
	dec  c                                           ; $48f0: $0d
	nop                                              ; $48f1: $00
	ld   a, [bc]                                     ; $48f2: $0a
	ld   bc, $7c61                                   ; $48f3: $01 $61 $7c
	dec  b                                           ; $48f6: $05
	ld   c, [hl]                                     ; $48f7: $4e
	inc  b                                           ; $48f8: $04
	add  hl, hl                                      ; $48f9: $29
	ld   [hl], l                                     ; $48fa: $75
	sbc  [hl]                                        ; $48fb: $9e
	ld   [bc], a                                     ; $48fc: $02
	inc  bc                                          ; $48fd: $03
	and  b                                           ; $48fe: $a0
	ld   d, b                                        ; $48ff: $50
	ld   h, b                                        ; $4900: $60
	ld   [hl], h                                     ; $4901: $74
	ld   l, l                                        ; $4902: $6d
	sub  a                                           ; $4903: $97
	dec  c                                           ; $4904: $0d
	inc  b                                           ; $4905: $04
	ld   c, c                                        ; $4906: $49
	sub  b                                           ; $4907: $90
	ld   [hl], l                                     ; $4908: $75
	ld   e, e                                        ; $4909: $5b
	ld   a, b                                        ; $490a: $78
	ld   d, d                                        ; $490b: $52
	sbc  l                                           ; $490c: $9d
	sub  [hl]                                        ; $490d: $96
	sbc  a                                           ; $490e: $9f
	dec  c                                           ; $490f: $0d
	nop                                              ; $4910: $00
	ld   a, [bc]                                     ; $4911: $0a
	inc  e                                           ; $4912: $1c
	inc  bc                                          ; $4913: $03
	nop                                              ; $4914: $00
	nop                                              ; $4915: $00
	ld   bc, $508c                                   ; $4916: $01 $8c $50
	sbc  [hl]                                        ; $4919: $9e
	ld   [bc], a                                     ; $491a: $02
	and  l                                           ; $491b: $a5
	ld   a, l                                        ; $491c: $7d
	sub  h                                           ; $491d: $94
	ld   [hl], c                                     ; $491e: $71
	ld   e, l                                        ; $491f: $5d
	sbc  b                                           ; $4920: $98
	inc  b                                           ; $4921: $04
	dec  c                                           ; $4922: $0d
	and  b                                           ; $4923: $a0
	dec  c                                           ; $4924: $0d
	sub  d                                           ; $4925: $92
	ld   h, a                                        ; $4926: $67
	adc  a                                           ; $4927: $8f
	ld   [hl], h                                     ; $4928: $74
	sbc  [hl]                                        ; $4929: $9e
	ld   [bc], a                                     ; $492a: $02
	and  l                                           ; $492b: $a5
	ld   [bc], a                                     ; $492c: $02
	sub  e                                           ; $492d: $93
	ld   a, h                                        ; $492e: $7c
	inc  b                                           ; $492f: $04
	dec  c                                           ; $4930: $0d
	ld   [bc], a                                     ; $4931: $02
	sub  [hl]                                        ; $4932: $96
	inc  b                                           ; $4933: $04
	ld   b, l                                        ; $4934: $45
	inc  b                                           ; $4935: $04
	ld   a, [bc]                                     ; $4936: $0a
	ld   a, c                                        ; $4937: $79
	dec  c                                           ; $4938: $0d
	ld   [hl], d                                     ; $4939: $72
	ld   d, d                                        ; $493a: $52
	ld   [hl], h                                     ; $493b: $74
	sub  [hl]                                        ; $493c: $96
	ld   e, l                                        ; $493d: $5d
	ld   [bc], a                                     ; $493e: $02
	ld   h, l                                        ; $493f: $65
	ld   d, [hl]                                     ; $4940: $56
	ld   a, b                                        ; $4941: $78
	ld   h, e                                        ; $4942: $63
	ld   d, d                                        ; $4943: $52
	sbc  a                                           ; $4944: $9f
	dec  c                                           ; $4945: $0d
	nop                                              ; $4946: $00
	ld   a, [bc]                                     ; $4947: $0a
	ld   bc, $9166                                   ; $4948: $01 $66 $91
	sbc  [hl]                                        ; $494b: $9e
	ld   e, b                                        ; $494c: $58
	inc  b                                           ; $494d: $04
	ld   c, $02                                      ; $494e: $0e $02
	jp   $9f79                                       ; $4950: $c3 $79 $9f


	dec  c                                           ; $4953: $0d
	nop                                              ; $4954: $00
	ld   a, [bc]                                     ; $4955: $0a
	add  hl, hl                                      ; $4956: $29
	nop                                              ; $4957: $00
	nop                                              ; $4958: $00
	inc  e                                           ; $4959: $1c
	inc  bc                                          ; $495a: $03
	nop                                              ; $495b: $00
	nop                                              ; $495c: $00
	ld   bc, $7978                                   ; $495d: $01 $78 $79
	sub  b                                           ; $4960: $90
	ld   h, l                                        ; $4961: $65
	sub  c                                           ; $4962: $91
	add  a                                           ; $4963: $87
	sbc  d                                           ; $4964: $9a
	ld   a, b                                        ; $4965: $78
	ld   d, d                                        ; $4966: $52
	adc  c                                           ; $4967: $89
	ld   [hl], a                                     ; $4968: $77
	dec  c                                           ; $4969: $0d
	inc  b                                           ; $496a: $04
	ld   a, e                                        ; $496b: $7b
	sbc  d                                           ; $496c: $9a
	ld   [hl], h                                     ; $496d: $74
	ld   d, d                                        ; $496e: $52
	sbc  c                                           ; $496f: $99
	ld   a, h                                        ; $4970: $7c
	ld   a, e                                        ; $4971: $7b
	sbc  a                                           ; $4972: $9f
	dec  c                                           ; $4973: $0d
	nop                                              ; $4974: $00
	ld   a, [bc]                                     ; $4975: $0a
	ld   bc, $5252                                   ; $4976: $01 $52 $52
	sbc  l                                           ; $4979: $9d
	sbc  a                                           ; $497a: $9f
	ld   [bc], a                                     ; $497b: $02
	and  l                                           ; $497c: $a5
	ld   a, l                                        ; $497d: $7d
	sub  h                                           ; $497e: $94
	ld   [hl], c                                     ; $497f: $71
	ld   e, l                                        ; $4980: $5d
	sbc  b                                           ; $4981: $98
	halt                                             ; $4982: $76
	inc  bc                                          ; $4983: $03
	and  a                                           ; $4984: $a7
	and  c                                           ; $4985: $a1
	ld   [hl], l                                     ; $4986: $75
	dec  c                                           ; $4987: $0d
	inc  b                                           ; $4988: $04
	dec  c                                           ; $4989: $0d
	dec  b                                           ; $498a: $05
	ld   a, [bc]                                     ; $498b: $0a
	ld   a, h                                        ; $498c: $7c
	ld   [bc], a                                     ; $498d: $02
	sub  e                                           ; $498e: $93
	inc  b                                           ; $498f: $04
	ld   a, h                                        ; $4990: $7c
	ld   a, c                                        ; $4991: $79
	ld   l, c                                        ; $4992: $69
	and  c                                           ; $4993: $a1
	ld   a, e                                        ; $4994: $7b
	and  c                                           ; $4995: $a1
	ld   a, b                                        ; $4996: $78
	ld   h, e                                        ; $4997: $63
	ld   d, d                                        ; $4998: $52
	sbc  a                                           ; $4999: $9f
	dec  c                                           ; $499a: $0d
	ld   h, [hl]                                     ; $499b: $66
	sub  c                                           ; $499c: $91
	sbc  [hl]                                        ; $499d: $9e
	ld   e, b                                        ; $499e: $58
	inc  b                                           ; $499f: $04
	ld   c, $02                                      ; $49a0: $0e $02
	jp   $9f79                                       ; $49a2: $c3 $79 $9f


	dec  c                                           ; $49a5: $0d
	nop                                              ; $49a6: $00
	ld   a, [bc]                                     ; $49a7: $0a
	add  hl, hl                                      ; $49a8: $29
	nop                                              ; $49a9: $00
	nop                                              ; $49aa: $00
	inc  d                                           ; $49ab: $14
	ld   b, $01                                      ; $49ac: $06 $01
	rrca                                             ; $49ae: $0f
	ld   b, $05                                      ; $49af: $06 $05
	ld   bc, $0008                                   ; $49b1: $01 $08 $00
	sbc  [hl]                                        ; $49b4: $9e
	inc  bc                                          ; $49b5: $03
	ld   d, d                                        ; $49b6: $52
	ld   e, e                                        ; $49b7: $5b
	ld   [hl], h                                     ; $49b8: $74
	sbc  c                                           ; $49b9: $99
	ld   e, c                                        ; $49ba: $59
	ld   a, [$500d]                                  ; $49bb: $fa $0d $50
	ld   l, l                                        ; $49be: $6d
	ld   d, d                                        ; $49bf: $52
	ld   l, [hl]                                     ; $49c0: $6e
	sub  [hl]                                        ; $49c1: $96
	sbc  [hl]                                        ; $49c2: $9e
	xor  h                                           ; $49c3: $ac
	push af                                          ; $49c4: $f5
	bit  5, [hl]                                     ; $49c5: $cb $6e
	sbc  a                                           ; $49c7: $9f
	dec  c                                           ; $49c8: $0d
	nop                                              ; $49c9: $00
	ld   a, [bc]                                     ; $49ca: $0a
	dec  b                                           ; $49cb: $05
	ld   b, b                                        ; $49cc: $40
	ld   d, c                                        ; $49cd: $51
	ld   bc, $0000                                   ; $49ce: $01 $00 $00
	ld   sp, $2040                                   ; $49d1: $31 $40 $20
	inc  bc                                          ; $49d4: $03
	jr   nz, jr_041_49d8                             ; $49d5: $20 $01

	ld   b, b                                        ; $49d7: $40

jr_041_49d8:
	jr   z, jr_041_49da                              ; $49d8: $28 $00

jr_041_49da:
	rrca                                             ; $49da: $0f
	nop                                              ; $49db: $00
	ld   bc, $5601                                   ; $49dc: $01 $01 $56
	ld   [hl], c                                     ; $49df: $71
	sbc  [hl]                                        ; $49e0: $9e
	xor  h                                           ; $49e1: $ac
	push af                                          ; $49e2: $f5
	bit  4, e                                        ; $49e3: $cb $63
	and  c                                           ; $49e5: $a1
	ld   sp, hl                                      ; $49e6: $f9
	dec  c                                           ; $49e7: $0d
	rst  $38                                         ; $49e8: $ff
	rst  $38                                         ; $49e9: $ff
	ld   [hl], a                                     ; $49ea: $77
	ld   d, h                                        ; $49eb: $54
	ld   l, h                                        ; $49ec: $6c
	sbc  [hl]                                        ; $49ed: $9e
	ld   e, b                                        ; $49ee: $58
	inc  b                                           ; $49ef: $04
	ld   b, l                                        ; $49f0: $45
	sbc  b                                           ; $49f1: $98
	ld   [bc], a                                     ; $49f2: $02
	inc  [hl]                                        ; $49f3: $34
	ld   h, e                                        ; $49f4: $63
	ld   d, d                                        ; $49f5: $52
	sbc  a                                           ; $49f6: $9f
	dec  c                                           ; $49f7: $0d
	nop                                              ; $49f8: $00
	ld   a, [bc]                                     ; $49f9: $0a
	inc  d                                           ; $49fa: $14
	ld   a, [bc]                                     ; $49fb: $0a
	ld   bc, $061c                                   ; $49fc: $01 $1c $06
	dec  b                                           ; $49ff: $05
	dec  b                                           ; $4a00: $05
	ld   bc, $0e04                                   ; $4a01: $01 $04 $0e
	inc  bc                                          ; $4a04: $03
	sbc  l                                           ; $4a05: $9d
	inc  b                                           ; $4a06: $04
	and  [hl]                                        ; $4a07: $a6
	ld   e, c                                        ; $4a08: $59
	ld   sp, hl                                      ; $4a09: $f9
	dec  c                                           ; $4a0a: $0d
	ld   [$fa00], sp                                 ; $4a0b: $08 $00 $fa
	dec  c                                           ; $4a0e: $0d
	nop                                              ; $4a0f: $00
	ld   a, [bc]                                     ; $4a10: $0a
	add  hl, de                                      ; $4a11: $19
	dec  b                                           ; $4a12: $05
	ld   [bc], a                                     ; $4a13: $02
	inc  b                                           ; $4a14: $04
	ld   c, $03                                      ; $4a15: $0e $03
	sbc  l                                           ; $4a17: $9d
	inc  b                                           ; $4a18: $04
	and  [hl]                                        ; $4a19: $a6
	nop                                              ; $4a1a: $00
	nop                                              ; $4a1b: $00
	pop  bc                                          ; $4a1c: $c1
	db   $e3                                         ; $4a1d: $e3
	ld   [hl], c                                     ; $4a1e: $71
	adc  e                                           ; $4a1f: $8b
	ld   d, d                                        ; $4a20: $52
	nop                                              ; $4a21: $00
	ld   bc, $3507                                   ; $4a22: $01 $07 $35
	ld   a, [bc]                                     ; $4a25: $0a
	ld   [bc], a                                     ; $4a26: $02
	inc  bc                                          ; $4a27: $03
	ld   bc, $2000                                   ; $4a28: $01 $00 $20
	nop                                              ; $4a2b: $00
	rlca                                             ; $4a2c: $07
	cp   $0a                                         ; $4a2d: $fe $0a
	ld   [bc], a                                     ; $4a2f: $02
	inc  bc                                          ; $4a30: $03
	ld   bc, $2001                                   ; $4a31: $01 $01 $20
	nop                                              ; $4a34: $00
	ld   b, $98                                      ; $4a35: $06 $98
	dec  bc                                          ; $4a37: $0b
	rrca                                             ; $4a38: $0f
	nop                                              ; $4a39: $00
	ld   bc, $0401                                   ; $4a3a: $01 $01 $04
	ld   c, $03                                      ; $4a3d: $0e $03
	sbc  l                                           ; $4a3f: $9d
	inc  b                                           ; $4a40: $04
	and  [hl]                                        ; $4a41: $a6
	ld   [hl], l                                     ; $4a42: $75
	ld   h, a                                        ; $4a43: $67
	sbc  [hl]                                        ; $4a44: $9e
	xor  h                                           ; $4a45: $ac
	push af                                          ; $4a46: $f5
	bit  4, e                                        ; $4a47: $cb $63
	and  c                                           ; $4a49: $a1
	sbc  a                                           ; $4a4a: $9f
	dec  c                                           ; $4a4b: $0d
	inc  bc                                          ; $4a4c: $03
	ld   [hl], l                                     ; $4a4d: $75
	inc  b                                           ; $4a4e: $04
	xor  e                                           ; $4a4f: $ab
	ld   h, l                                        ; $4a50: $65
	ld   a, b                                        ; $4a51: $78
	ld   d, d                                        ; $4a52: $52
	ld   [hl], l                                     ; $4a53: $75
	ld   [bc], a                                     ; $4a54: $02
	inc  [hl]                                        ; $4a55: $34
	ld   h, e                                        ; $4a56: $63
	ld   d, d                                        ; $4a57: $52
	sbc  a                                           ; $4a58: $9f
	dec  c                                           ; $4a59: $0d
	inc  b                                           ; $4a5a: $04
	ld   b, d                                        ; $4a5b: $42
	ld   [hl], h                                     ; $4a5c: $74
	ld   d, d                                        ; $4a5d: $52
	sbc  d                                           ; $4a5e: $9a
	ld   a, [hl]                                     ; $4a5f: $7e
	ld   [bc], a                                     ; $4a60: $02
	sub  e                                           ; $4a61: $93
	inc  b                                           ; $4a62: $04
	ld   a, h                                        ; $4a63: $7c
	ld   h, l                                        ; $4a64: $65
	adc  h                                           ; $4a65: $8c
	ld   h, a                                        ; $4a66: $67
	ld   e, c                                        ; $4a67: $59
	sub  a                                           ; $4a68: $97
	sbc  a                                           ; $4a69: $9f
	dec  c                                           ; $4a6a: $0d
	nop                                              ; $4a6b: $00
	ld   a, [bc]                                     ; $4a6c: $0a
	inc  e                                           ; $4a6d: $1c
	ld   b, $01                                      ; $4a6e: $06 $01
	ld   bc, $401d                                   ; $4a70: $01 $1d $40
	ld   d, $03                                      ; $4a73: $16 $03
	ld   d, $01                                      ; $4a75: $16 $01
	ld   [bc], a                                     ; $4a77: $02
	jr   z, jr_041_4a7a                              ; $4a78: $28 $00

jr_041_4a7a:
	ld   bc, $716b                                   ; $4a7a: $01 $6b $71
	ld   e, c                                        ; $4a7d: $59
	rst  $38                                         ; $4a7e: $ff
	rst  $38                                         ; $4a7f: $ff
	dec  c                                           ; $4a80: $0d
	ld   l, e                                        ; $4a81: $6b
	sbc  b                                           ; $4a82: $98
	sub  c                                           ; $4a83: $91
	sbc  [hl]                                        ; $4a84: $9e
	dec  b                                           ; $4a85: $05
	dec  d                                           ; $4a86: $15
	ld   e, c                                        ; $4a87: $59
	ld   [hl], c                                     ; $4a88: $71
	ld   l, l                                        ; $4a89: $6d
	ld   a, b                                        ; $4a8a: $78
	sbc  a                                           ; $4a8b: $9f
	dec  c                                           ; $4a8c: $0d
	nop                                              ; $4a8d: $00
	ld   a, [bc]                                     ; $4a8e: $0a
	inc  e                                           ; $4a8f: $1c
	ld   b, $00                                      ; $4a90: $06 $00
	nop                                              ; $4a92: $00
	ld   bc, $9075                                   ; $4a93: $01 $75 $90
	sbc  [hl]                                        ; $4a96: $9e
	ld   e, b                                        ; $4a97: $58
	inc  bc                                          ; $4a98: $03
	ld   c, a                                        ; $4a99: $4f
	sbc  [hl]                                        ; $4a9a: $9e
	sub  b                                           ; $4a9b: $90
	ld   [hl], c                                     ; $4a9c: $71
	halt                                             ; $4a9d: $76
	inc  b                                           ; $4a9e: $04
	dec  c                                           ; $4a9f: $0d
	ld   e, e                                        ; $4aa0: $5b
	ld   l, l                                        ; $4aa1: $6d
	ld   d, [hl]                                     ; $4aa2: $56
	dec  c                                           ; $4aa3: $0d
	ld   a, b                                        ; $4aa4: $78
	ld   e, e                                        ; $4aa5: $5b
	sub  c                                           ; $4aa6: $91
	sbc  [hl]                                        ; $4aa7: $9e
	pop  bc                                          ; $4aa8: $c1
	db   $e3                                         ; $4aa9: $e3
	ld   l, [hl]                                     ; $4aaa: $6e
	ld   l, h                                        ; $4aab: $6c
	sbc  a                                           ; $4aac: $9f
	dec  c                                           ; $4aad: $0d
	nop                                              ; $4aae: $00
	ld   a, [bc]                                     ; $4aaf: $0a
	ld   bc, $9a6b                                   ; $4ab0: $01 $6b $9a
	halt                                             ; $4ab3: $76
	sbc  [hl]                                        ; $4ab4: $9e
	db   $fd                                         ; $4ab5: $fd
	inc  b                                           ; $4ab6: $04
	dec  c                                           ; $4ab7: $0d
	dec  b                                           ; $4ab8: $05
	ld   a, [bc]                                     ; $4ab9: $0a
	inc  b                                           ; $4aba: $04
	jr   nz, jr_041_4b36                             ; $4abb: $20 $79

	and  $d1                                         ; $4abd: $e6 $d1
	and  l                                           ; $4abf: $a5
	ld   a, b                                        ; $4ac0: $78
	cp   $0d                                         ; $4ac1: $fe $0d
	halt                                             ; $4ac3: $76
	dec  b                                           ; $4ac4: $05
	pop  de                                          ; $4ac5: $d1
	ld   [hl], c                                     ; $4ac6: $71
	ld   l, l                                        ; $4ac7: $6d
	sub  a                                           ; $4ac8: $97
	sbc  [hl]                                        ; $4ac9: $9e
	ld   h, a                                        ; $4aca: $67
	ld   e, [hl]                                     ; $4acb: $5e
	ld   a, c                                        ; $4acc: $79
	inc  bc                                          ; $4acd: $03
	and  a                                           ; $4ace: $a7
	adc  a                                           ; $4acf: $8f
	sbc  a                                           ; $4ad0: $9f
	dec  c                                           ; $4ad1: $0d
	inc  bc                                          ; $4ad2: $03
	and  a                                           ; $4ad3: $a7
	adc  [hl]                                        ; $4ad4: $8e
	ld   h, c                                        ; $4ad5: $61
	halt                                             ; $4ad6: $76
	sub  b                                           ; $4ad7: $90
	inc  b                                           ; $4ad8: $04
	ld   c, $03                                      ; $4ad9: $0e $03
	dec  de                                          ; $4adb: $1b
	ld   l, [hl]                                     ; $4adc: $6e
	ld   l, h                                        ; $4add: $6c
	sbc  a                                           ; $4ade: $9f
	dec  c                                           ; $4adf: $0d
	nop                                              ; $4ae0: $00
	ld   a, [bc]                                     ; $4ae1: $0a
	ld   bc, $599d                                   ; $4ae2: $01 $9d $59
	ld   [hl], c                                     ; $4ae5: $71
	ld   l, l                                        ; $4ae6: $6d
	ld   e, c                                        ; $4ae7: $59
	ld   sp, hl                                      ; $4ae8: $f9
	dec  c                                           ; $4ae9: $0d
	nop                                              ; $4aea: $00
	inc  e                                           ; $4aeb: $1c
	ld   b, $01                                      ; $4aec: $06 $01
	ld   bc, $6601                                   ; $4aee: $01 $01 $66
	sub  c                                           ; $4af1: $91
	sbc  [hl]                                        ; $4af2: $9e
	ld   e, b                                        ; $4af3: $58
	inc  b                                           ; $4af4: $04
	ld   c, $02                                      ; $4af5: $0e $02
	jp   Jump_041_7879                               ; $4af7: $c3 $79 $78


	sbc  a                                           ; $4afa: $9f
	dec  c                                           ; $4afb: $0d
	nop                                              ; $4afc: $00
	ld   a, [bc]                                     ; $4afd: $0a
	add  hl, hl                                      ; $4afe: $29
	nop                                              ; $4aff: $00
	nop                                              ; $4b00: $00
	rrca                                             ; $4b01: $0f
	nop                                              ; $4b02: $00
	ld   bc, $5201                                   ; $4b03: $01 $01 $52
	sub  d                                           ; $4b06: $92
	db   $fc                                         ; $4b07: $fc
	sbc  [hl]                                        ; $4b08: $9e
	ld   [hl], a                                     ; $4b09: $77
	ld   d, h                                        ; $4b0a: $54
	sub  b                                           ; $4b0b: $90
	ld   h, c                                        ; $4b0c: $61
	sbc  d                                           ; $4b0d: $9a
	ld   a, l                                        ; $4b0e: $7d
	rst  $38                                         ; $4b0f: $ff
	rst  $38                                         ; $4b10: $ff
	dec  c                                           ; $4b11: $0d
	pop  bc                                          ; $4b12: $c1
	db   $e3                                         ; $4b13: $e3
	ld   [hl], c                                     ; $4b14: $71
	adc  e                                           ; $4b15: $8b
	ld   d, d                                        ; $4b16: $52
	ld   [hl], l                                     ; $4b17: $75
	ld   h, a                                        ; $4b18: $67
	sbc  a                                           ; $4b19: $9f
	dec  c                                           ; $4b1a: $0d
	nop                                              ; $4b1b: $00
	ld   a, [bc]                                     ; $4b1c: $0a
	inc  e                                           ; $4b1d: $1c
	ld   b, $03                                      ; $4b1e: $06 $03
	inc  bc                                          ; $4b20: $03
	ld   bc, $e3c1                                   ; $4b21: $01 $c1 $e3
	ld   l, [hl]                                     ; $4b24: $6e
	ld   [hl], c                                     ; $4b25: $71
	ld   [hl], h                                     ; $4b26: $74
	db   $fc                                         ; $4b27: $fc
	ld   a, [$580d]                                  ; $4b28: $fa $0d $58
	inc  bc                                          ; $4b2b: $03
	ld   c, a                                        ; $4b2c: $4f
	sbc  [hl]                                        ; $4b2d: $9e
	ld   l, l                                        ; $4b2e: $6d
	ld   e, c                                        ; $4b2f: $59
	ld   e, d                                        ; $4b30: $5a
	inc  b                                           ; $4b31: $04
	dec  c                                           ; $4b32: $0d
	dec  b                                           ; $4b33: $05
	ld   a, [bc]                                     ; $4b34: $0a
	inc  b                                           ; $4b35: $04

jr_041_4b36:
	and  b                                           ; $4b36: $a0
	inc  bc                                          ; $4b37: $03
	ld   a, l                                        ; $4b38: $7d
	ld   [hl], l                                     ; $4b39: $75
	dec  c                                           ; $4b3a: $0d
	inc  b                                           ; $4b3b: $04
	ld   b, d                                        ; $4b3c: $42
	ld   [bc], a                                     ; $4b3d: $02
	ld   b, b                                        ; $4b3e: $40
	and  c                                           ; $4b3f: $a1
	ld   l, [hl]                                     ; $4b40: $6e
	ld   e, [hl]                                     ; $4b41: $5e
	sub  a                                           ; $4b42: $97
	ld   d, d                                        ; $4b43: $52
	ld   [hl], l                                     ; $4b44: $75
	pop  bc                                          ; $4b45: $c1
	db   $e3                                         ; $4b46: $e3
	ld   a, b                                        ; $4b47: $78
	ld   a, h                                        ; $4b48: $7c
	ld   e, c                                        ; $4b49: $59
	ld   a, [$000d]                                  ; $4b4a: $fa $0d $00
	ld   a, [bc]                                     ; $4b4d: $0a
	ld   bc, $9a6b                                   ; $4b4e: $01 $6b $9a
	ld   h, c                                        ; $4b51: $61
	ld   l, e                                        ; $4b52: $6b
	pop  bc                                          ; $4b53: $c1
	db   $e3                                         ; $4b54: $e3
	ld   h, [hl]                                     ; $4b55: $66
	sub  c                                           ; $4b56: $91
	ld   a, b                                        ; $4b57: $78
	ld   d, d                                        ; $4b58: $52
	ld   e, c                                        ; $4b59: $59
	sbc  a                                           ; $4b5a: $9f
	dec  c                                           ; $4b5b: $0d
	ld   d, b                                        ; $4b5c: $50
	ld   e, e                                        ; $4b5d: $5b
	sbc  d                                           ; $4b5e: $9a
	sbc  c                                           ; $4b5f: $99
	ld   l, d                                        ; $4b60: $6a
	ld   a, [$8c10]                                  ; $4b61: $fa $10 $8c
	ld   [hl], c                                     ; $4b64: $71
	ld   l, l                                        ; $4b65: $6d
	ld   e, l                                        ; $4b66: $5d
	sub  [hl]                                        ; $4b67: $96
	db   $fc                                         ; $4b68: $fc
	sbc  a                                           ; $4b69: $9f
	dec  c                                           ; $4b6a: $0d
	nop                                              ; $4b6b: $00
	ld   a, [bc]                                     ; $4b6c: $0a
	inc  e                                           ; $4b6d: $1c
	ld   b, $00                                      ; $4b6e: $06 $00
	nop                                              ; $4b70: $00
	ld   bc, $508c                                   ; $4b71: $01 $8c $50
	sbc  [hl]                                        ; $4b74: $9e
	ld   [bc], a                                     ; $4b75: $02
	and  l                                           ; $4b76: $a5
	ld   a, l                                        ; $4b77: $7d
	sub  h                                           ; $4b78: $94
	ld   [hl], c                                     ; $4b79: $71
	ld   e, l                                        ; $4b7a: $5d
	sbc  b                                           ; $4b7b: $98
	inc  b                                           ; $4b7c: $04
	dec  c                                           ; $4b7d: $0d
	and  b                                           ; $4b7e: $a0
	dec  c                                           ; $4b7f: $0d
	sub  d                                           ; $4b80: $92
	ld   h, a                                        ; $4b81: $67
	adc  a                                           ; $4b82: $8f
	sbc  e                                           ; $4b83: $9b
	sub  [hl]                                        ; $4b84: $96
	ld   a, b                                        ; $4b85: $78
	sbc  a                                           ; $4b86: $9f
	dec  c                                           ; $4b87: $0d
	nop                                              ; $4b88: $00
	ld   a, [bc]                                     ; $4b89: $0a
	ld   bc, $9166                                   ; $4b8a: $01 $66 $91
	sbc  [hl]                                        ; $4b8d: $9e
	ld   e, b                                        ; $4b8e: $58
	inc  b                                           ; $4b8f: $04
	ld   c, $02                                      ; $4b90: $0e $02
	jp   $9f79                                       ; $4b92: $c3 $79 $9f


	dec  c                                           ; $4b95: $0d
	nop                                              ; $4b96: $00
	ld   a, [bc]                                     ; $4b97: $0a
	add  hl, hl                                      ; $4b98: $29
	nop                                              ; $4b99: $00
	nop                                              ; $4b9a: $00
	inc  e                                           ; $4b9b: $1c
	ld   b, $05                                      ; $4b9c: $06 $05
	dec  b                                           ; $4b9e: $05
	ld   bc, $a178                                   ; $4b9f: $01 $78 $a1
	ld   l, [hl]                                     ; $4ba2: $6e
	sbc  [hl]                                        ; $4ba3: $9e
	inc  b                                           ; $4ba4: $04
	ld   a, e                                        ; $4ba5: $7b
	sbc  d                                           ; $4ba6: $9a
	ld   h, a                                        ; $4ba7: $67
	ld   e, h                                        ; $4ba8: $5c
	ld   [hl], h                                     ; $4ba9: $74
	dec  c                                           ; $4baa: $0d
	ld   a, b                                        ; $4bab: $78
	ld   a, c                                        ; $4bac: $79
	sub  b                                           ; $4bad: $90
	inc  bc                                          ; $4bae: $03
	call c, $9756                                    ; $4baf: $dc $56 $97
	sbc  d                                           ; $4bb2: $9a
	ld   a, b                                        ; $4bb3: $78
	ld   d, d                                        ; $4bb4: $52
	ld   a, h                                        ; $4bb5: $7c
	ld   e, c                                        ; $4bb6: $59
	ld   sp, hl                                      ; $4bb7: $f9
	dec  c                                           ; $4bb8: $0d
	nop                                              ; $4bb9: $00
	ld   a, [bc]                                     ; $4bba: $0a
	ld   bc, $508c                                   ; $4bbb: $01 $8c $50
	sbc  [hl]                                        ; $4bbe: $9e
	ld   d, d                                        ; $4bbf: $52
	ld   d, d                                        ; $4bc0: $52
	sub  d                                           ; $4bc1: $92
	sbc  a                                           ; $4bc2: $9f
	ld   [bc], a                                     ; $4bc3: $02
	and  l                                           ; $4bc4: $a5
	ld   a, l                                        ; $4bc5: $7d
	sub  h                                           ; $4bc6: $94
	ld   [hl], c                                     ; $4bc7: $71
	ld   e, l                                        ; $4bc8: $5d
	sbc  b                                           ; $4bc9: $98
	halt                                             ; $4bca: $76
	dec  c                                           ; $4bcb: $0d
	inc  b                                           ; $4bcc: $04
	dec  c                                           ; $4bcd: $0d
	and  b                                           ; $4bce: $a0
	sub  d                                           ; $4bcf: $92
	ld   h, a                                        ; $4bd0: $67
	adc  a                                           ; $4bd1: $8f
	sbc  e                                           ; $4bd2: $9b
	sub  [hl]                                        ; $4bd3: $96
	sbc  a                                           ; $4bd4: $9f
	dec  c                                           ; $4bd5: $0d
	ld   h, [hl]                                     ; $4bd6: $66
	sub  c                                           ; $4bd7: $91
	sbc  [hl]                                        ; $4bd8: $9e
	ld   e, b                                        ; $4bd9: $58
	inc  b                                           ; $4bda: $04
	ld   c, $02                                      ; $4bdb: $0e $02
	jp   $9f79                                       ; $4bdd: $c3 $79 $9f


	dec  c                                           ; $4be0: $0d
	nop                                              ; $4be1: $00
	ld   a, [bc]                                     ; $4be2: $0a
	add  hl, hl                                      ; $4be3: $29
	nop                                              ; $4be4: $00
	nop                                              ; $4be5: $00
	inc  d                                           ; $4be6: $14
	ld   b, $01                                      ; $4be7: $06 $01
	rrca                                             ; $4be9: $0f
	dec  b                                           ; $4bea: $05
	ld   [bc], a                                     ; $4beb: $02
	ld   bc, $0008                                   ; $4bec: $01 $08 $00
	ld   a, l                                        ; $4bef: $7d
	and  c                                           ; $4bf0: $a1
	sbc  a                                           ; $4bf1: $9f
	dec  c                                           ; $4bf2: $0d
	and  a                                           ; $4bf3: $a7
	jp   nz, $9e92                                   ; $4bf4: $c2 $92 $9e

	ld   [bc], a                                     ; $4bf7: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bf8: $cf
	dec  b                                           ; $4bf9: $05
	ld   a, [de]                                     ; $4bfa: $1a
	sub  d                                           ; $4bfb: $92
	sbc  a                                           ; $4bfc: $9f
	dec  c                                           ; $4bfd: $0d
	nop                                              ; $4bfe: $00
	ld   a, [bc]                                     ; $4bff: $0a
	dec  b                                           ; $4c00: $05
	ld   b, b                                        ; $4c01: $40
	ld   d, d                                        ; $4c02: $52
	ld   bc, $0000                                   ; $4c03: $01 $00 $00
	ld   sp, $2040                                   ; $4c06: $31 $40 $20
	inc  bc                                          ; $4c09: $03
	jr   nz, jr_041_4c0d                             ; $4c0a: $20 $01

	ld   b, b                                        ; $4c0c: $40

jr_041_4c0d:
	jr   z, jr_041_4c0f                              ; $4c0d: $28 $00

jr_041_4c0f:
	rrca                                             ; $4c0f: $0f
	nop                                              ; $4c10: $00
	ld   bc, $5601                                   ; $4c11: $01 $01 $56
	ld   [hl], c                                     ; $4c14: $71
	sbc  [hl]                                        ; $4c15: $9e
	ld   [bc], a                                     ; $4c16: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c17: $cf
	dec  b                                           ; $4c18: $05
	ld   a, [de]                                     ; $4c19: $1a
	ld   h, e                                        ; $4c1a: $63
	and  c                                           ; $4c1b: $a1
	ld   sp, hl                                      ; $4c1c: $f9
	dec  c                                           ; $4c1d: $0d
	rst  $38                                         ; $4c1e: $ff
	rst  $38                                         ; $4c1f: $ff
	ld   [hl], a                                     ; $4c20: $77
	ld   d, h                                        ; $4c21: $54
	ld   l, h                                        ; $4c22: $6c
	sbc  [hl]                                        ; $4c23: $9e
	ld   e, b                                        ; $4c24: $58
	inc  b                                           ; $4c25: $04
	ld   b, l                                        ; $4c26: $45
	sbc  b                                           ; $4c27: $98
	ld   [bc], a                                     ; $4c28: $02
	inc  [hl]                                        ; $4c29: $34
	ld   h, e                                        ; $4c2a: $63
	ld   d, d                                        ; $4c2b: $52
	sbc  a                                           ; $4c2c: $9f
	dec  c                                           ; $4c2d: $0d
	nop                                              ; $4c2e: $00
	ld   a, [bc]                                     ; $4c2f: $0a
	inc  d                                           ; $4c30: $14
	ld   a, [bc]                                     ; $4c31: $0a
	ld   bc, $051c                                   ; $4c32: $01 $1c $05
	ld   [bc], a                                     ; $4c35: $02
	ld   [bc], a                                     ; $4c36: $02
	ld   bc, $0e04                                   ; $4c37: $01 $04 $0e
	inc  bc                                          ; $4c3a: $03
	sbc  l                                           ; $4c3b: $9d
	inc  b                                           ; $4c3c: $04
	and  [hl]                                        ; $4c3d: $a6
	ld   e, c                                        ; $4c3e: $59
	ld   sp, hl                                      ; $4c3f: $f9
	dec  c                                           ; $4c40: $0d
	ld   [$7d00], sp                                 ; $4c41: $08 $00 $7d
	and  c                                           ; $4c44: $a1
	ld   sp, hl                                      ; $4c45: $f9
	dec  c                                           ; $4c46: $0d
	nop                                              ; $4c47: $00
	ld   a, [bc]                                     ; $4c48: $0a
	add  hl, de                                      ; $4c49: $19
	dec  b                                           ; $4c4a: $05
	ld   [bc], a                                     ; $4c4b: $02
	inc  b                                           ; $4c4c: $04
	ld   c, $03                                      ; $4c4d: $0e $03
	sbc  l                                           ; $4c4f: $9d
	inc  b                                           ; $4c50: $04
	and  [hl]                                        ; $4c51: $a6
	nop                                              ; $4c52: $00
	nop                                              ; $4c53: $00
	pop  bc                                          ; $4c54: $c1
	db   $e3                                         ; $4c55: $e3
	ld   [hl], c                                     ; $4c56: $71
	adc  e                                           ; $4c57: $8b
	ld   d, d                                        ; $4c58: $52
	nop                                              ; $4c59: $00
	ld   bc, $6d07                                   ; $4c5a: $01 $07 $6d
	inc  c                                           ; $4c5d: $0c
	ld   [bc], a                                     ; $4c5e: $02
	inc  bc                                          ; $4c5f: $03
	ld   bc, $2000                                   ; $4c60: $01 $00 $20
	nop                                              ; $4c63: $00
	rlca                                             ; $4c64: $07
	ld   [hl], $0d                                   ; $4c65: $36 $0d
	ld   [bc], a                                     ; $4c67: $02
	inc  bc                                          ; $4c68: $03
	ld   bc, $2001                                   ; $4c69: $01 $01 $20
	nop                                              ; $4c6c: $00
	ld   b, $e2                                      ; $4c6d: $06 $e2
	dec  c                                           ; $4c6f: $0d
	rrca                                             ; $4c70: $0f
	nop                                              ; $4c71: $00
	ld   bc, $0401                                   ; $4c72: $01 $01 $04
	ld   c, $03                                      ; $4c75: $0e $03
	sbc  l                                           ; $4c77: $9d
	inc  b                                           ; $4c78: $04
	and  [hl]                                        ; $4c79: $a6
	ld   [hl], l                                     ; $4c7a: $75
	ld   h, a                                        ; $4c7b: $67
	sbc  [hl]                                        ; $4c7c: $9e
	ld   [bc], a                                     ; $4c7d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c7e: $cf
	dec  b                                           ; $4c7f: $05
	ld   a, [de]                                     ; $4c80: $1a
	ld   h, e                                        ; $4c81: $63
	and  c                                           ; $4c82: $a1
	sbc  a                                           ; $4c83: $9f
	dec  c                                           ; $4c84: $0d
	inc  bc                                          ; $4c85: $03
	ld   [hl], l                                     ; $4c86: $75
	inc  b                                           ; $4c87: $04
	xor  e                                           ; $4c88: $ab
	ld   h, l                                        ; $4c89: $65
	ld   a, b                                        ; $4c8a: $78
	ld   d, d                                        ; $4c8b: $52
	ld   [hl], l                                     ; $4c8c: $75
	ld   [bc], a                                     ; $4c8d: $02
	inc  [hl]                                        ; $4c8e: $34
	ld   h, e                                        ; $4c8f: $63
	ld   d, d                                        ; $4c90: $52
	sbc  a                                           ; $4c91: $9f
	dec  c                                           ; $4c92: $0d
	inc  b                                           ; $4c93: $04
	ld   b, d                                        ; $4c94: $42
	ld   [hl], h                                     ; $4c95: $74
	ld   d, d                                        ; $4c96: $52
	sbc  d                                           ; $4c97: $9a
	ld   a, [hl]                                     ; $4c98: $7e
	ld   [bc], a                                     ; $4c99: $02
	sub  e                                           ; $4c9a: $93
	inc  b                                           ; $4c9b: $04
	ld   a, h                                        ; $4c9c: $7c
	ld   h, l                                        ; $4c9d: $65
	adc  h                                           ; $4c9e: $8c
	ld   h, a                                        ; $4c9f: $67
	ld   e, c                                        ; $4ca0: $59
	sub  a                                           ; $4ca1: $97
	sbc  a                                           ; $4ca2: $9f
	dec  c                                           ; $4ca3: $0d
	nop                                              ; $4ca4: $00
	ld   a, [bc]                                     ; $4ca5: $0a
	inc  e                                           ; $4ca6: $1c
	dec  b                                           ; $4ca7: $05
	ld   bc, $1d01                                   ; $4ca8: $01 $01 $1d
	ld   b, b                                        ; $4cab: $40
	dec  d                                           ; $4cac: $15
	inc  bc                                          ; $4cad: $03
	dec  d                                           ; $4cae: $15
	ld   bc, $2802                                   ; $4caf: $01 $02 $28
	nop                                              ; $4cb2: $00
	ld   bc, $546b                                   ; $4cb3: $01 $6b $54
	ld   e, c                                        ; $4cb6: $59
	db   $fc                                         ; $4cb7: $fc
	sbc  [hl]                                        ; $4cb8: $9e
	ld   l, e                                        ; $4cb9: $6b
	sbc  d                                           ; $4cba: $9a
	ld   a, l                                        ; $4cbb: $7d
	sub  [hl]                                        ; $4cbc: $96
	ld   e, c                                        ; $4cbd: $59
	ld   [hl], c                                     ; $4cbe: $71
	ld   l, l                                        ; $4cbf: $6d
	sbc  a                                           ; $4cc0: $9f
	dec  c                                           ; $4cc1: $0d
	nop                                              ; $4cc2: $00
	ld   a, [bc]                                     ; $4cc3: $0a
	inc  e                                           ; $4cc4: $1c
	dec  b                                           ; $4cc5: $05
	nop                                              ; $4cc6: $00
	nop                                              ; $4cc7: $00
	ld   bc, $9075                                   ; $4cc8: $01 $75 $90
	ld   a, b                                        ; $4ccb: $78
	sbc  [hl]                                        ; $4ccc: $9e
	ld   [$7d00], sp                                 ; $4ccd: $08 $00 $7d
	and  c                                           ; $4cd0: $a1
	sbc  a                                           ; $4cd1: $9f
	dec  c                                           ; $4cd2: $0d
	inc  b                                           ; $4cd3: $04
	dec  c                                           ; $4cd4: $0d
	ld   e, d                                        ; $4cd5: $5a
	ld   [hl], d                                     ; $4cd6: $72
	sub  a                                           ; $4cd7: $97
	ld   d, d                                        ; $4cd8: $52
	ld   e, c                                        ; $4cd9: $59
	ld   a, b                                        ; $4cda: $78
	db   $fc                                         ; $4cdb: $fc
	sbc  [hl]                                        ; $4cdc: $9e
	halt                                             ; $4cdd: $76
	dec  b                                           ; $4cde: $05
	pop  de                                          ; $4cdf: $d1
	ld   l, l                                        ; $4ce0: $6d
	sub  a                                           ; $4ce1: $97
	dec  c                                           ; $4ce2: $0d
	inc  b                                           ; $4ce3: $04
	inc  b                                           ; $4ce4: $04
	sbc  d                                           ; $4ce5: $9a
	sbc  c                                           ; $4ce6: $99
	inc  bc                                          ; $4ce7: $03
	ld   c, a                                        ; $4ce8: $4f
	ld   a, c                                        ; $4ce9: $79
	inc  bc                                          ; $4cea: $03
	and  a                                           ; $4ceb: $a7
	adc  h                                           ; $4cec: $8c
	ld   a, b                                        ; $4ced: $78
	and  e                                           ; $4cee: $a3
	xor  h                                           ; $4cef: $ac
	push af                                          ; $4cf0: $f5
	ld   [hl], l                                     ; $4cf1: $75
	sbc  a                                           ; $4cf2: $9f
	dec  c                                           ; $4cf3: $0d
	nop                                              ; $4cf4: $00
	ld   a, [bc]                                     ; $4cf5: $0a
	inc  e                                           ; $4cf6: $1c
	dec  b                                           ; $4cf7: $05
	dec  b                                           ; $4cf8: $05
	dec  b                                           ; $4cf9: $05
	ld   bc, $0d04                                   ; $4cfa: $01 $04 $0d
	and  b                                           ; $4cfd: $a0
	inc  bc                                          ; $4cfe: $03
	and  a                                           ; $4cff: $a7
	adc  a                                           ; $4d00: $8f
	sbc  c                                           ; $4d01: $99
	ld   h, c                                        ; $4d02: $61
	halt                                             ; $4d03: $76
	sub  b                                           ; $4d04: $90
	sbc  [hl]                                        ; $4d05: $9e
	inc  bc                                          ; $4d06: $03
	dec  c                                           ; $4d07: $0d
	ld   [bc], a                                     ; $4d08: $02
	jp   $0d7c                                       ; $4d09: $c3 $7c $0d


	ld   d, h                                        ; $4d0c: $54
	ld   l, a                                        ; $4d0d: $6f
	sub  d                                           ; $4d0e: $92
	sbc  a                                           ; $4d0f: $9f
	dec  c                                           ; $4d10: $0d
	inc  b                                           ; $4d11: $04
	dec  c                                           ; $4d12: $0d
	ld   a, l                                        ; $4d13: $7d
	add  b                                           ; $4d14: $80
	halt                                             ; $4d15: $76
	ld   [hl], d                                     ; $4d16: $72
	ld   h, l                                        ; $4d17: $65
	ld   e, c                                        ; $4d18: $59
	ld   a, b                                        ; $4d19: $78
	ld   d, d                                        ; $4d1a: $52
	ld   a, e                                        ; $4d1b: $7b
	and  c                                           ; $4d1c: $a1
	ld   e, c                                        ; $4d1d: $59
	sub  a                                           ; $4d1e: $97
	sbc  a                                           ; $4d1f: $9f
	dec  c                                           ; $4d20: $0d
	nop                                              ; $4d21: $00
	ld   a, [bc]                                     ; $4d22: $0a
	inc  e                                           ; $4d23: $1c
	dec  b                                           ; $4d24: $05
	ld   bc, $0101                                   ; $4d25: $01 $01 $01
	adc  c                                           ; $4d28: $89
	ld   a, b                                        ; $4d29: $78
	sbc  [hl]                                        ; $4d2a: $9e
	ld   e, b                                        ; $4d2b: $58
	inc  b                                           ; $4d2c: $04
	ld   c, $02                                      ; $4d2d: $0e $02
	jp   Jump_041_7879                               ; $4d2f: $c3 $79 $78


	sbc  a                                           ; $4d32: $9f
	dec  c                                           ; $4d33: $0d
	nop                                              ; $4d34: $00
	ld   a, [bc]                                     ; $4d35: $0a
	add  hl, hl                                      ; $4d36: $29
	nop                                              ; $4d37: $00
	nop                                              ; $4d38: $00
	rrca                                             ; $4d39: $0f
	nop                                              ; $4d3a: $00
	ld   bc, $5201                                   ; $4d3b: $01 $01 $52
	sub  d                                           ; $4d3e: $92
	db   $fc                                         ; $4d3f: $fc
	sbc  [hl]                                        ; $4d40: $9e
	ld   [hl], a                                     ; $4d41: $77
	ld   d, h                                        ; $4d42: $54
	sub  b                                           ; $4d43: $90
	ld   h, c                                        ; $4d44: $61
	sbc  d                                           ; $4d45: $9a
	ld   a, l                                        ; $4d46: $7d
	rst  $38                                         ; $4d47: $ff
	rst  $38                                         ; $4d48: $ff
	dec  c                                           ; $4d49: $0d
	pop  bc                                          ; $4d4a: $c1
	db   $e3                                         ; $4d4b: $e3
	ld   [hl], c                                     ; $4d4c: $71
	adc  e                                           ; $4d4d: $8b
	ld   d, d                                        ; $4d4e: $52
	ld   [hl], l                                     ; $4d4f: $75
	ld   h, a                                        ; $4d50: $67
	sbc  a                                           ; $4d51: $9f
	dec  c                                           ; $4d52: $0d
	nop                                              ; $4d53: $00
	ld   a, [bc]                                     ; $4d54: $0a
	inc  e                                           ; $4d55: $1c
	dec  b                                           ; $4d56: $05
	ld   [bc], a                                     ; $4d57: $02
	ld   [bc], a                                     ; $4d58: $02
	ld   bc, $546b                                   ; $4d59: $01 $6b $54
	ld   e, c                                        ; $4d5c: $59
	db   $fc                                         ; $4d5d: $fc
	sbc  [hl]                                        ; $4d5e: $9e
	and  e                                           ; $4d5f: $a3
	xor  h                                           ; $4d60: $ac
	push af                                          ; $4d61: $f5
	ld   e, c                                        ; $4d62: $59
	db   $fc                                         ; $4d63: $fc
	rst  $38                                         ; $4d64: $ff
	rst  $38                                         ; $4d65: $ff
	dec  c                                           ; $4d66: $0d
	nop                                              ; $4d67: $00
	inc  e                                           ; $4d68: $1c
	dec  b                                           ; $4d69: $05
	rlca                                             ; $4d6a: $07
	rlca                                             ; $4d6b: $07
	ld   bc, $9075                                   ; $4d6c: $01 $75 $90
	ld   a, b                                        ; $4d6f: $78
	sbc  [hl]                                        ; $4d70: $9e
	inc  b                                           ; $4d71: $04
	dec  c                                           ; $4d72: $0d
	dec  b                                           ; $4d73: $05
	ld   a, [bc]                                     ; $4d74: $0a
	inc  b                                           ; $4d75: $04
	and  b                                           ; $4d76: $a0
	inc  bc                                          ; $4d77: $03
	ld   a, l                                        ; $4d78: $7d
	ld   [hl], l                                     ; $4d79: $75
	inc  b                                           ; $4d7a: $04
	ld   b, d                                        ; $4d7b: $42
	ld   [bc], a                                     ; $4d7c: $02
	ld   b, b                                        ; $4d7d: $40
	and  c                                           ; $4d7e: $a1
	ld   l, [hl]                                     ; $4d7f: $6e
	ld   e, [hl]                                     ; $4d80: $5e
	dec  c                                           ; $4d81: $0d
	sub  a                                           ; $4d82: $97
	ld   d, d                                        ; $4d83: $52
	ld   [hl], l                                     ; $4d84: $75
	add  [hl]                                        ; $4d85: $86
	ld   h, c                                        ; $4d86: $61
	ld   l, l                                        ; $4d87: $6d
	sbc  d                                           ; $4d88: $9a
	ld   [hl], h                                     ; $4d89: $74
	ld   l, l                                        ; $4d8a: $6d
	sub  a                                           ; $4d8b: $97
	and  e                                           ; $4d8c: $a3
	xor  h                                           ; $4d8d: $ac
	push af                                          ; $4d8e: $f5
	sbc  a                                           ; $4d8f: $9f
	dec  c                                           ; $4d90: $0d
	nop                                              ; $4d91: $00
	ld   a, [bc]                                     ; $4d92: $0a
	ld   bc, $7190                                   ; $4d93: $01 $90 $71
	halt                                             ; $4d96: $76
	ld   [bc], a                                     ; $4d97: $02
	ld   e, l                                        ; $4d98: $5d
	ld   [bc], a                                     ; $4d99: $02
	db   $fc                                         ; $4d9a: $fc
	inc  b                                           ; $4d9b: $04
	ld   b, l                                        ; $4d9c: $45
	sbc  d                                           ; $4d9d: $9a
	ld   [hl], h                                     ; $4d9e: $74
	sub  d                                           ; $4d9f: $92
	sub  a                                           ; $4da0: $97
	ld   a, b                                        ; $4da1: $78
	dec  c                                           ; $4da2: $0d
	call c, $dff5                                    ; $4da3: $dc $f5 $df
	ld   a, c                                        ; $4da6: $79
	ld   [hl], l                                     ; $4da7: $75
	ld   [hl], c                                     ; $4da8: $71
	ld   e, c                                        ; $4da9: $59
	ld   d, d                                        ; $4daa: $52
	or   d                                           ; $4dab: $b2
	xor  l                                           ; $4dac: $ad
	ld   h, a                                        ; $4dad: $67
	sbc  c                                           ; $4dae: $99
	ld   [hl], l                                     ; $4daf: $75
	sbc  a                                           ; $4db0: $9f
	dec  c                                           ; $4db1: $0d
	nop                                              ; $4db2: $00
	ld   a, [bc]                                     ; $4db3: $0a
	inc  e                                           ; $4db4: $1c
	dec  b                                           ; $4db5: $05
	nop                                              ; $4db6: $00
	nop                                              ; $4db7: $00
	ld   bc, $508c                                   ; $4db8: $01 $8c $50
	sbc  [hl]                                        ; $4dbb: $9e
	ld   [bc], a                                     ; $4dbc: $02
	and  l                                           ; $4dbd: $a5
	ld   a, l                                        ; $4dbe: $7d
	sub  h                                           ; $4dbf: $94
	ld   [hl], c                                     ; $4dc0: $71
	ld   e, l                                        ; $4dc1: $5d
	sbc  b                                           ; $4dc2: $98
	inc  b                                           ; $4dc3: $04
	dec  c                                           ; $4dc4: $0d
	and  b                                           ; $4dc5: $a0
	dec  c                                           ; $4dc6: $0d
	inc  bc                                          ; $4dc7: $03
	and  a                                           ; $4dc8: $a7
	adc  a                                           ; $4dc9: $8f
	ld   l, l                                        ; $4dca: $6d
	adc  c                                           ; $4dcb: $89
	ld   d, h                                        ; $4dcc: $54
	ld   e, d                                        ; $4dcd: $5a
	ld   d, [hl]                                     ; $4dce: $56
	ld   d, [hl]                                     ; $4dcf: $56
	sbc  a                                           ; $4dd0: $9f
	dec  c                                           ; $4dd1: $0d
	nop                                              ; $4dd2: $00
	ld   a, [bc]                                     ; $4dd3: $0a
	ld   bc, $7889                                   ; $4dd4: $01 $89 $78
	sbc  [hl]                                        ; $4dd7: $9e
	ld   e, b                                        ; $4dd8: $58
	inc  b                                           ; $4dd9: $04
	ld   c, $02                                      ; $4dda: $0e $02
	jp   $9f79                                       ; $4ddc: $c3 $79 $9f


	dec  c                                           ; $4ddf: $0d
	nop                                              ; $4de0: $00
	ld   a, [bc]                                     ; $4de1: $0a
	add  hl, hl                                      ; $4de2: $29
	nop                                              ; $4de3: $00
	nop                                              ; $4de4: $00
	inc  e                                           ; $4de5: $1c
	dec  b                                           ; $4de6: $05
	ld   [bc], a                                     ; $4de7: $02
	ld   [bc], a                                     ; $4de8: $02
	ld   bc, $a178                                   ; $4de9: $01 $78 $a1
	sub  d                                           ; $4dec: $92
	sbc  [hl]                                        ; $4ded: $9e
	inc  b                                           ; $4dee: $04
	ld   a, e                                        ; $4def: $7b
	sbc  d                                           ; $4df0: $9a
	ld   h, a                                        ; $4df1: $67
	ld   e, h                                        ; $4df2: $5c
	ld   [hl], h                                     ; $4df3: $74
	dec  c                                           ; $4df4: $0d
	ld   a, b                                        ; $4df5: $78
	ld   a, c                                        ; $4df6: $79
	sub  b                                           ; $4df7: $90
	inc  bc                                          ; $4df8: $03
	call c, $9756                                    ; $4df9: $dc $56 $97
	sbc  d                                           ; $4dfc: $9a
	add  [hl]                                        ; $4dfd: $86
	and  c                                           ; $4dfe: $a1
	ld   a, h                                        ; $4dff: $7c
	ld   e, c                                        ; $4e00: $59
	ld   sp, hl                                      ; $4e01: $f9
	dec  c                                           ; $4e02: $0d
	nop                                              ; $4e03: $00
	ld   a, [bc]                                     ; $4e04: $0a
	ld   bc, $508c                                   ; $4e05: $01 $8c $50
	sbc  [hl]                                        ; $4e08: $9e
	ld   d, [hl]                                     ; $4e09: $56
	ld   d, [hl]                                     ; $4e0a: $56
	sbc  l                                           ; $4e0b: $9d
	sbc  a                                           ; $4e0c: $9f
	ld   [bc], a                                     ; $4e0d: $02
	and  l                                           ; $4e0e: $a5
	ld   a, l                                        ; $4e0f: $7d
	sub  h                                           ; $4e10: $94
	ld   [hl], c                                     ; $4e11: $71
	ld   e, l                                        ; $4e12: $5d
	sbc  b                                           ; $4e13: $98
	halt                                             ; $4e14: $76
	dec  c                                           ; $4e15: $0d
	inc  b                                           ; $4e16: $04
	dec  c                                           ; $4e17: $0d
	and  b                                           ; $4e18: $a0
	inc  bc                                          ; $4e19: $03
	and  a                                           ; $4e1a: $a7
	adc  a                                           ; $4e1b: $8f
	ld   l, l                                        ; $4e1c: $6d
	sub  a                                           ; $4e1d: $97
	ld   d, [hl]                                     ; $4e1e: $56
	ld   d, [hl]                                     ; $4e1f: $56
	sbc  a                                           ; $4e20: $9f
	dec  c                                           ; $4e21: $0d
	adc  c                                           ; $4e22: $89
	ld   a, b                                        ; $4e23: $78
	sbc  [hl]                                        ; $4e24: $9e
	ld   e, b                                        ; $4e25: $58
	inc  b                                           ; $4e26: $04
	ld   c, $02                                      ; $4e27: $0e $02
	jp   $9f79                                       ; $4e29: $c3 $79 $9f


	dec  c                                           ; $4e2c: $0d
	nop                                              ; $4e2d: $00
	ld   a, [bc]                                     ; $4e2e: $0a
	add  hl, hl                                      ; $4e2f: $29
	nop                                              ; $4e30: $00
	nop                                              ; $4e31: $00
	inc  d                                           ; $4e32: $14
	ld   b, $01                                      ; $4e33: $06 $01
	rrca                                             ; $4e35: $0f
	inc  b                                           ; $4e36: $04
	inc  bc                                          ; $4e37: $03
	ld   bc, $526f                                   ; $4e38: $01 $6f $52
	ld   [bc], a                                     ; $4e3b: $02
	inc  de                                          ; $4e3c: $13
	ld   l, a                                        ; $4e3d: $6f
	sub  c                                           ; $4e3e: $91
	and  c                                           ; $4e3f: $a1
	sbc  a                                           ; $4e40: $9f
	dec  c                                           ; $4e41: $0d
	nop                                              ; $4e42: $00
	ld   a, [bc]                                     ; $4e43: $0a
	dec  b                                           ; $4e44: $05
	ld   b, b                                        ; $4e45: $40
	ld   d, c                                        ; $4e46: $51
	ld   bc, $0000                                   ; $4e47: $01 $00 $00
	ld   sp, $2040                                   ; $4e4a: $31 $40 $20
	inc  bc                                          ; $4e4d: $03
	jr   nz, jr_041_4e51                             ; $4e4e: $20 $01

	ld   b, b                                        ; $4e50: $40

jr_041_4e51:
	jr   z, jr_041_4e53                              ; $4e51: $28 $00

jr_041_4e53:
	rrca                                             ; $4e53: $0f
	nop                                              ; $4e54: $00
	ld   bc, $a101                                   ; $4e55: $01 $01 $a1
	ld   sp, hl                                      ; $4e58: $f9
	db   $10                                         ; $4e59: $10
	and  e                                           ; $4e5a: $a3
	and  l                                           ; $4e5b: $a5
	db   $ec                                         ; $4e5c: $ec
	cp   d                                           ; $4e5d: $ba
	ld   sp, hl                                      ; $4e5e: $f9
	dec  c                                           ; $4e5f: $0d
	nop                                              ; $4e60: $00
	ld   a, [bc]                                     ; $4e61: $0a
	dec  b                                           ; $4e62: $05
	add  b                                           ; $4e63: $80
	sub  $01                                         ; $4e64: $d6 $01
	ld   bc, $1400                                   ; $4e66: $01 $00 $14
	ld   a, [bc]                                     ; $4e69: $0a
	ld   bc, $041c                                   ; $4e6a: $01 $1c $04
	inc  bc                                          ; $4e6d: $03
	inc  bc                                          ; $4e6e: $03
	ld   bc, $526e                                   ; $4e6f: $01 $6e $52
	ld   h, [hl]                                     ; $4e72: $66
	sub  l                                           ; $4e73: $95
	ld   d, h                                        ; $4e74: $54
	add  h                                           ; $4e75: $84
	ld   sp, hl                                      ; $4e76: $f9
	db   $10                                         ; $4e77: $10
	dec  c                                           ; $4e78: $0d
	ld   l, a                                        ; $4e79: $6f
	ld   d, d                                        ; $4e7a: $52
	ld   [bc], a                                     ; $4e7b: $02
	inc  de                                          ; $4e7c: $13
	ld   l, a                                        ; $4e7d: $6f
	sub  c                                           ; $4e7e: $91
	and  c                                           ; $4e7f: $a1
	sbc  a                                           ; $4e80: $9f
	dec  c                                           ; $4e81: $0d
	nop                                              ; $4e82: $00
	ld   a, [bc]                                     ; $4e83: $0a
	add  hl, de                                      ; $4e84: $19
	dec  b                                           ; $4e85: $05
	ld   [bc], a                                     ; $4e86: $02
	inc  b                                           ; $4e87: $04
	ld   c, $03                                      ; $4e88: $0e $03
	sbc  l                                           ; $4e8a: $9d
	inc  b                                           ; $4e8b: $04
	and  [hl]                                        ; $4e8c: $a6
	nop                                              ; $4e8d: $00
	nop                                              ; $4e8e: $00
	pop  bc                                          ; $4e8f: $c1
	db   $e3                                         ; $4e90: $e3
	ld   [hl], c                                     ; $4e91: $71
	adc  e                                           ; $4e92: $8b
	ld   d, d                                        ; $4e93: $52
	nop                                              ; $4e94: $00
	ld   bc, $a807                                   ; $4e95: $01 $07 $a8
	ld   c, $02                                      ; $4e98: $0e $02
	inc  bc                                          ; $4e9a: $03
	ld   bc, $2000                                   ; $4e9b: $01 $00 $20
	nop                                              ; $4e9e: $00
	rlca                                             ; $4e9f: $07
	ld   c, d                                        ; $4ea0: $4a
	rrca                                             ; $4ea1: $0f
	ld   [bc], a                                     ; $4ea2: $02
	inc  bc                                          ; $4ea3: $03
	ld   bc, $2001                                   ; $4ea4: $01 $01 $20
	nop                                              ; $4ea7: $00
	ld   b, $0b                                      ; $4ea8: $06 $0b
	db   $10                                         ; $4eaa: $10
	rrca                                             ; $4eab: $0f
	nop                                              ; $4eac: $00
	ld   bc, $0401                                   ; $4ead: $01 $01 $04
	ld   c, $03                                      ; $4eb0: $0e $03
	sbc  l                                           ; $4eb2: $9d
	inc  b                                           ; $4eb3: $04
	and  [hl]                                        ; $4eb4: $a6
	ld   l, [hl]                                     ; $4eb5: $6e
	sub  [hl]                                        ; $4eb6: $96
	sbc  a                                           ; $4eb7: $9f
	dec  c                                           ; $4eb8: $0d
	inc  b                                           ; $4eb9: $04
	ld   b, d                                        ; $4eba: $42
	ld   [hl], h                                     ; $4ebb: $74
	sbc  d                                           ; $4ebc: $9a
	ld   a, [hl]                                     ; $4ebd: $7e
	sbc  [hl]                                        ; $4ebe: $9e
	ld   [bc], a                                     ; $4ebf: $02
	sub  e                                           ; $4ec0: $93
	inc  b                                           ; $4ec1: $04
	ld   a, h                                        ; $4ec2: $7c
	ld   h, a                                        ; $4ec3: $67
	sbc  c                                           ; $4ec4: $99
	ld   e, c                                        ; $4ec5: $59
	sub  a                                           ; $4ec6: $97
	ld   h, e                                        ; $4ec7: $63
	sbc  a                                           ; $4ec8: $9f
	dec  c                                           ; $4ec9: $0d
	inc  bc                                          ; $4eca: $03
	ld   [hl], l                                     ; $4ecb: $75
	inc  b                                           ; $4ecc: $04
	xor  e                                           ; $4ecd: $ab
	ld   h, l                                        ; $4ece: $65
	ld   [hl], h                                     ; $4ecf: $74
	ld   e, l                                        ; $4ed0: $5d
	sbc  d                                           ; $4ed1: $9a
	ld   [hl], h                                     ; $4ed2: $74
	ld   d, b                                        ; $4ed3: $50
	sbc  b                                           ; $4ed4: $98
	ld   e, d                                        ; $4ed5: $5a
	halt                                             ; $4ed6: $76
	ld   d, h                                        ; $4ed7: $54
	sbc  a                                           ; $4ed8: $9f
	dec  c                                           ; $4ed9: $0d
	nop                                              ; $4eda: $00
	ld   a, [bc]                                     ; $4edb: $0a
	inc  e                                           ; $4edc: $1c
	inc  b                                           ; $4edd: $04
	ld   bc, $1d01                                   ; $4ede: $01 $01 $1d
	ld   b, b                                        ; $4ee1: $40
	inc  d                                           ; $4ee2: $14
	inc  bc                                          ; $4ee3: $03
	inc  d                                           ; $4ee4: $14
	ld   bc, $2802                                   ; $4ee5: $01 $02 $28
	nop                                              ; $4ee8: $00
	ld   bc, $546b                                   ; $4ee9: $01 $6b $54
	ld   a, [$9610]                                  ; $4eec: $fa $10 $96
	ld   e, c                                        ; $4eef: $59
	ld   [hl], c                                     ; $4ef0: $71
	ld   l, l                                        ; $4ef1: $6d
	db   $fc                                         ; $4ef2: $fc
	sbc  a                                           ; $4ef3: $9f
	dec  c                                           ; $4ef4: $0d
	cp   c                                           ; $4ef5: $b9
	push hl                                          ; $4ef6: $e5
	push af                                          ; $4ef7: $f5
	sbc  $fb                                         ; $4ef8: $de $fb
	db   $ed                                         ; $4efa: $ed
	sub  b                                           ; $4efb: $90
	sub  [hl]                                        ; $4efc: $96
	sbc  e                                           ; $4efd: $9b
	ld   h, c                                        ; $4efe: $61
	and  c                                           ; $4eff: $a1
	dec  c                                           ; $4f00: $0d
	ld   [hl], l                                     ; $4f01: $75
	sbc  c                                           ; $4f02: $99
	sub  [hl]                                        ; $4f03: $96
	sbc  a                                           ; $4f04: $9f
	dec  c                                           ; $4f05: $0d
	nop                                              ; $4f06: $00
	ld   a, [bc]                                     ; $4f07: $0a
	inc  e                                           ; $4f08: $1c
	inc  b                                           ; $4f09: $04
	nop                                              ; $4f0a: $00
	nop                                              ; $4f0b: $00
	ld   bc, $9075                                   ; $4f0c: $01 $75 $90
	ld   a, e                                        ; $4f0f: $7b
	sbc  [hl]                                        ; $4f10: $9e
	ld   l, a                                        ; $4f11: $6f
	ld   d, d                                        ; $4f12: $52
	ld   [bc], a                                     ; $4f13: $02
	inc  de                                          ; $4f14: $13
	ld   l, a                                        ; $4f15: $6f
	sub  c                                           ; $4f16: $91
	and  c                                           ; $4f17: $a1
	sbc  a                                           ; $4f18: $9f
	dec  c                                           ; $4f19: $0d
	ld   [hl], d                                     ; $4f1a: $72
	ld   e, c                                        ; $4f1b: $59
	sbc  d                                           ; $4f1c: $9a
	ld   l, l                                        ; $4f1d: $6d
	sub  a                                           ; $4f1e: $97
	sbc  [hl]                                        ; $4f1f: $9e
	ld   l, l                                        ; $4f20: $6d
	ld   e, b                                        ; $4f21: $58
	sbc  d                                           ; $4f22: $9a
	sbc  c                                           ; $4f23: $99
	adc  h                                           ; $4f24: $8c
	ld   d, [hl]                                     ; $4f25: $56
	ld   a, c                                        ; $4f26: $79
	dec  c                                           ; $4f27: $0d
	ld   e, b                                        ; $4f28: $58
	sub  d                                           ; $4f29: $92
	ld   h, a                                        ; $4f2a: $67
	adc  l                                           ; $4f2b: $8d
	ld   h, l                                        ; $4f2c: $65
	ld   a, b                                        ; $4f2d: $78
	ld   e, e                                        ; $4f2e: $5b
	sub  c                                           ; $4f2f: $91
	ld   l, [hl]                                     ; $4f30: $6e
	adc  a                                           ; $4f31: $8f
	ld   l, [hl]                                     ; $4f32: $6e
	sub  [hl]                                        ; $4f33: $96
	sbc  a                                           ; $4f34: $9f
	dec  c                                           ; $4f35: $0d
	nop                                              ; $4f36: $00
	ld   a, [bc]                                     ; $4f37: $0a
	inc  e                                           ; $4f38: $1c
	inc  b                                           ; $4f39: $04
	ld   bc, $0101                                   ; $4f3a: $01 $01 $01
	ld   h, [hl]                                     ; $4f3d: $66
	sub  c                                           ; $4f3e: $91
	sbc  [hl]                                        ; $4f3f: $9e
	ld   e, b                                        ; $4f40: $58
	ld   l, [hl]                                     ; $4f41: $6e
	ld   d, d                                        ; $4f42: $52
	ld   h, [hl]                                     ; $4f43: $66
	ld   a, c                                        ; $4f44: $79
	ld   a, e                                        ; $4f45: $7b
	sbc  a                                           ; $4f46: $9f
	dec  c                                           ; $4f47: $0d
	nop                                              ; $4f48: $00
	ld   a, [bc]                                     ; $4f49: $0a
	add  hl, hl                                      ; $4f4a: $29
	nop                                              ; $4f4b: $00
	nop                                              ; $4f4c: $00
	rrca                                             ; $4f4d: $0f
	nop                                              ; $4f4e: $00
	ld   bc, $5201                                   ; $4f4f: $01 $01 $52
	sub  d                                           ; $4f52: $92
	db   $fc                                         ; $4f53: $fc
	sbc  [hl]                                        ; $4f54: $9e
	ld   [hl], a                                     ; $4f55: $77
	ld   d, h                                        ; $4f56: $54
	sub  b                                           ; $4f57: $90
	ld   h, c                                        ; $4f58: $61
	sbc  d                                           ; $4f59: $9a
	ld   a, l                                        ; $4f5a: $7d
	rst  $38                                         ; $4f5b: $ff
	rst  $38                                         ; $4f5c: $ff
	dec  c                                           ; $4f5d: $0d
	pop  bc                                          ; $4f5e: $c1
	db   $e3                                         ; $4f5f: $e3
	ld   [hl], c                                     ; $4f60: $71
	adc  e                                           ; $4f61: $8b
	ld   d, d                                        ; $4f62: $52
	ld   e, c                                        ; $4f63: $59
	ld   a, b                                        ; $4f64: $78
	db   $fc                                         ; $4f65: $fc
	sbc  a                                           ; $4f66: $9f
	dec  c                                           ; $4f67: $0d
	nop                                              ; $4f68: $00
	ld   a, [bc]                                     ; $4f69: $0a
	inc  e                                           ; $4f6a: $1c
	inc  b                                           ; $4f6b: $04
	ld   b, $06                                      ; $4f6c: $06 $06
	ld   bc, $c4a9                                   ; $4f6e: $01 $a9 $c4
	ld   a, [$6d10]                                  ; $4f71: $fa $10 $6d
	ld   d, d                                        ; $4f74: $52
	add  [hl]                                        ; $4f75: $86
	and  c                                           ; $4f76: $a1
	ld   l, [hl]                                     ; $4f77: $6e
	sub  [hl]                                        ; $4f78: $96
	ld   a, [$a30d]                                  ; $4f79: $fa $0d $a3
	and  l                                           ; $4f7c: $a5
	db   $ec                                         ; $4f7d: $ec
	cp   d                                           ; $4f7e: $ba
	ld   a, h                                        ; $4f7f: $7c
	ld   l, a                                        ; $4f80: $6f
	sub  l                                           ; $4f81: $95
	ld   d, h                                        ; $4f82: $54
	ld   a, h                                        ; $4f83: $7c
	ld   d, h                                        ; $4f84: $54
	sbc  b                                           ; $4f85: $98
	sub  l                                           ; $4f86: $95
	ld   e, l                                        ; $4f87: $5d
	ld   [hl], l                                     ; $4f88: $75
	dec  c                                           ; $4f89: $0d
	ld   a, b                                        ; $4f8a: $78
	ld   e, b                                        ; $4f8b: $58
	ld   h, l                                        ; $4f8c: $65
	ld   [hl], h                                     ; $4f8d: $74
	ld   d, b                                        ; $4f8e: $50
	ld   h, b                                        ; $4f8f: $60
	sbc  c                                           ; $4f90: $99
	sbc  a                                           ; $4f91: $9f
	dec  c                                           ; $4f92: $0d
	nop                                              ; $4f93: $00
	ld   a, [bc]                                     ; $4f94: $0a
	rrca                                             ; $4f95: $0f
	nop                                              ; $4f96: $00
	ld   bc, $5201                                   ; $4f97: $01 $01 $52
	sbc  [hl]                                        ; $4f9a: $9e
	ld   d, d                                        ; $4f9b: $52
	sub  d                                           ; $4f9c: $92
	db   $fc                                         ; $4f9d: $fc
	sbc  [hl]                                        ; $4f9e: $9e
	ld   l, e                                        ; $4f9f: $6b
	ld   h, c                                        ; $4fa0: $61
	adc  h                                           ; $4fa1: $8c
	ld   [hl], l                                     ; $4fa2: $75
	dec  c                                           ; $4fa3: $0d
	ld   h, l                                        ; $4fa4: $65
	ld   [hl], h                                     ; $4fa5: $74
	sub  b                                           ; $4fa6: $90
	sub  a                                           ; $4fa7: $97
	sbc  l                                           ; $4fa8: $9d
	ld   a, b                                        ; $4fa9: $78
	ld   e, l                                        ; $4faa: $5d
	ld   [hl], h                                     ; $4fab: $74
	sub  b                                           ; $4fac: $90
	dec  c                                           ; $4fad: $0d
	inc  b                                           ; $4fae: $04
	ld   c, $03                                      ; $4faf: $0e $03
	sbc  l                                           ; $4fb1: $9d
	inc  b                                           ; $4fb2: $04
	and  [hl]                                        ; $4fb3: $a6
	ld   l, [hl]                                     ; $4fb4: $6e
	sub  [hl]                                        ; $4fb5: $96
	sbc  [hl]                                        ; $4fb6: $9e
	and  e                                           ; $4fb7: $a3
	and  l                                           ; $4fb8: $a5
	db   $ec                                         ; $4fb9: $ec
	cp   d                                           ; $4fba: $ba
	sbc  a                                           ; $4fbb: $9f
	dec  c                                           ; $4fbc: $0d
	nop                                              ; $4fbd: $00
	ld   a, [bc]                                     ; $4fbe: $0a
	inc  e                                           ; $4fbf: $1c
	inc  b                                           ; $4fc0: $04
	rlca                                             ; $4fc1: $07
	rlca                                             ; $4fc2: $07
	ld   bc, $fc78                                   ; $4fc3: $01 $78 $fc
	and  c                                           ; $4fc6: $a1
	ld   l, [hl]                                     ; $4fc7: $6e
	sbc  [hl]                                        ; $4fc8: $9e
	ld   l, [hl]                                     ; $4fc9: $6e
	ld   d, d                                        ; $4fca: $52
	ld   h, [hl]                                     ; $4fcb: $66
	sub  l                                           ; $4fcc: $95
	ld   d, h                                        ; $4fcd: $54
	add  h                                           ; $4fce: $84
	ld   a, b                                        ; $4fcf: $78
	sub  a                                           ; $4fd0: $97
	dec  c                                           ; $4fd1: $0d
	ld   h, e                                        ; $4fd2: $63
	ld   d, d                                        ; $4fd3: $52
	ld   h, l                                        ; $4fd4: $65
	sub  l                                           ; $4fd5: $95
	ld   e, c                                        ; $4fd6: $59
	sub  a                                           ; $4fd7: $97
	sbc  [hl]                                        ; $4fd8: $9e
	ld   l, e                                        ; $4fd9: $6b
	ld   d, h                                        ; $4fda: $54
	ld   d, d                                        ; $4fdb: $52
	ld   [hl], c                                     ; $4fdc: $71
	ld   [hl], h                                     ; $4fdd: $74
	dec  c                                           ; $4fde: $0d
	sub  [hl]                                        ; $4fdf: $96
	ld   a, e                                        ; $4fe0: $7b
	sbc  a                                           ; $4fe1: $9f
	dec  c                                           ; $4fe2: $0d
	nop                                              ; $4fe3: $00
	ld   a, [bc]                                     ; $4fe4: $0a
	dec  e                                           ; $4fe5: $1d
	ld   b, b                                        ; $4fe6: $40
	inc  d                                           ; $4fe7: $14
	inc  bc                                          ; $4fe8: $03
	inc  d                                           ; $4fe9: $14
	ld   bc, $2902                                   ; $4fea: $01 $02 $29
	nop                                              ; $4fed: $00
	ld   bc, $a165                                   ; $4fee: $01 $65 $a1
	ld   a, a                                        ; $4ff1: $7f
	ld   d, d                                        ; $4ff2: $52
	ld   h, e                                        ; $4ff3: $63
	ld   l, c                                        ; $4ff4: $69
	ld   [hl], h                                     ; $4ff5: $74
	sbc  [hl]                                        ; $4ff6: $9e
	add  b                                           ; $4ff7: $80
	ld   [hl], a                                     ; $4ff8: $77
	ld   d, d                                        ; $4ff9: $52
	sub  [hl]                                        ; $4ffa: $96
	ld   a, e                                        ; $4ffb: $7b
	sbc  a                                           ; $4ffc: $9f
	dec  c                                           ; $4ffd: $0d
	ld   d, d                                        ; $4ffe: $52
	ld   h, c                                        ; $4fff: $61
	ld   d, h                                        ; $5000: $54
	cp   c                                           ; $5001: $b9
	push hl                                          ; $5002: $e5
	push af                                          ; $5003: $f5
	sbc  $fb                                         ; $5004: $de $fb
	db   $ed                                         ; $5006: $ed
	sbc  a                                           ; $5007: $9f
	dec  c                                           ; $5008: $0d
	nop                                              ; $5009: $00
	ld   a, [bc]                                     ; $500a: $0a
	add  hl, hl                                      ; $500b: $29
	nop                                              ; $500c: $00
	nop                                              ; $500d: $00
	inc  e                                           ; $500e: $1c
	inc  b                                           ; $500f: $04
	inc  bc                                          ; $5010: $03
	inc  bc                                          ; $5011: $03
	ld   bc, $5477                                   ; $5012: $01 $77 $54
	ld   h, l                                        ; $5015: $65
	ld   l, l                                        ; $5016: $6d
	ld   a, h                                        ; $5017: $7c
	ld   sp, hl                                      ; $5018: $f9
	dec  c                                           ; $5019: $0d
	nop                                              ; $501a: $00
	ld   a, [bc]                                     ; $501b: $0a
	ld   bc, $526f                                   ; $501c: $01 $6f $52
	ld   [bc], a                                     ; $501f: $02
	inc  de                                          ; $5020: $13
	ld   l, a                                        ; $5021: $6f
	sub  c                                           ; $5022: $91
	and  c                                           ; $5023: $a1
	sbc  [hl]                                        ; $5024: $9e
	sub  b                                           ; $5025: $90
	ld   a, h                                        ; $5026: $7c
	ld   h, a                                        ; $5027: $67
	ld   h, d                                        ; $5028: $62
	ld   e, l                                        ; $5029: $5d
	dec  c                                           ; $502a: $0d
	ld   [hl], d                                     ; $502b: $72
	ld   e, c                                        ; $502c: $59
	sbc  d                                           ; $502d: $9a
	ld   [hl], h                                     ; $502e: $74
	sbc  c                                           ; $502f: $99
	adc  l                                           ; $5030: $8d
	ld   l, l                                        ; $5031: $6d
	ld   d, d                                        ; $5032: $52
	ld   l, [hl]                                     ; $5033: $6e
	ld   a, e                                        ; $5034: $7b
	sbc  a                                           ; $5035: $9f
	dec  c                                           ; $5036: $0d
	ld   d, d                                        ; $5037: $52
	ld   h, c                                        ; $5038: $61
	ld   d, h                                        ; $5039: $54
	sbc  [hl]                                        ; $503a: $9e
	cp   c                                           ; $503b: $b9
	push hl                                          ; $503c: $e5
	push af                                          ; $503d: $f5
	sbc  $fb                                         ; $503e: $de $fb
	db   $ed                                         ; $5040: $ed
	sbc  a                                           ; $5041: $9f
	dec  c                                           ; $5042: $0d
	nop                                              ; $5043: $00
	ld   a, [bc]                                     ; $5044: $0a
	add  hl, hl                                      ; $5045: $29
	nop                                              ; $5046: $00
	nop                                              ; $5047: $00
	inc  d                                           ; $5048: $14
	ld   b, $01                                      ; $5049: $06 $01
	rrca                                             ; $504b: $0f
	add  hl, bc                                      ; $504c: $09
	ld   a, [bc]                                     ; $504d: $0a
	ld   bc, $0008                                   ; $504e: $01 $08 $00
	ld   e, l                                        ; $5051: $5d
	and  c                                           ; $5052: $a1
	sbc  a                                           ; $5053: $9f
	dec  c                                           ; $5054: $0d
	inc  b                                           ; $5055: $04
	ld   c, $03                                      ; $5056: $0e $03
	sub  b                                           ; $5058: $90
	ld   l, [hl]                                     ; $5059: $6e

Jump_041_505a:
	ld   e, a                                        ; $505a: $5f
	ld   [hl], a                                     ; $505b: $77
	sbc  a                                           ; $505c: $9f
	dec  c                                           ; $505d: $0d
	nop                                              ; $505e: $00
	ld   a, [bc]                                     ; $505f: $0a
	rrca                                             ; $5060: $0f
	nop                                              ; $5061: $00
	ld   bc, $5601                                   ; $5062: $01 $01 $56
	ld   [hl], c                                     ; $5065: $71
	sbc  [hl]                                        ; $5066: $9e
	inc  b                                           ; $5067: $04
	ld   c, $03                                      ; $5068: $0e $03
	sub  b                                           ; $506a: $90
	ld   h, e                                        ; $506b: $63
	and  c                                           ; $506c: $a1
	ld   sp, hl                                      ; $506d: $f9
	dec  c                                           ; $506e: $0d
	rst  $38                                         ; $506f: $ff
	rst  $38                                         ; $5070: $ff
	ld   [hl], a                                     ; $5071: $77
	ld   d, h                                        ; $5072: $54
	ld   l, h                                        ; $5073: $6c
	sbc  [hl]                                        ; $5074: $9e
	ld   e, b                                        ; $5075: $58
	inc  b                                           ; $5076: $04
	ld   b, l                                        ; $5077: $45
	sbc  b                                           ; $5078: $98
	ld   [bc], a                                     ; $5079: $02
	inc  [hl]                                        ; $507a: $34
	ld   h, e                                        ; $507b: $63
	ld   d, d                                        ; $507c: $52
	sbc  a                                           ; $507d: $9f
	dec  c                                           ; $507e: $0d
	nop                                              ; $507f: $00
	ld   a, [bc]                                     ; $5080: $0a
	inc  d                                           ; $5081: $14
	ld   a, [bc]                                     ; $5082: $0a
	ld   bc, $091c                                   ; $5083: $01 $1c $09
	dec  b                                           ; $5086: $05
	ld   a, [bc]                                     ; $5087: $0a
	ld   bc, $0e04                                   ; $5088: $01 $04 $0e
	inc  bc                                          ; $508b: $03
	sbc  l                                           ; $508c: $9d
	inc  b                                           ; $508d: $04
	and  [hl]                                        ; $508e: $a6
	ld   e, c                                        ; $508f: $59
	ld   sp, hl                                      ; $5090: $f9
	dec  c                                           ; $5091: $0d
	ld   [$5d00], sp                                 ; $5092: $08 $00 $5d
	and  c                                           ; $5095: $a1
	ld   sp, hl                                      ; $5096: $f9
	dec  c                                           ; $5097: $0d
	nop                                              ; $5098: $00
	ld   a, [bc]                                     ; $5099: $0a
	add  hl, de                                      ; $509a: $19
	dec  b                                           ; $509b: $05
	ld   [bc], a                                     ; $509c: $02
	inc  b                                           ; $509d: $04
	ld   c, $03                                      ; $509e: $0e $03
	sbc  l                                           ; $50a0: $9d
	inc  b                                           ; $50a1: $04
	and  [hl]                                        ; $50a2: $a6
	nop                                              ; $50a3: $00
	nop                                              ; $50a4: $00
	pop  bc                                          ; $50a5: $c1
	db   $e3                                         ; $50a6: $e3
	ld   [hl], c                                     ; $50a7: $71
	adc  e                                           ; $50a8: $8b
	ld   d, d                                        ; $50a9: $52
	nop                                              ; $50aa: $00
	ld   bc, $be07                                   ; $50ab: $01 $07 $be
	db   $10                                         ; $50ae: $10
	ld   [bc], a                                     ; $50af: $02
	inc  bc                                          ; $50b0: $03
	ld   bc, $2000                                   ; $50b1: $01 $00 $20
	nop                                              ; $50b4: $00
	rlca                                             ; $50b5: $07
	ld   a, e                                        ; $50b6: $7b
	ld   de, $0302                                   ; $50b7: $11 $02 $03
	ld   bc, $2001                                   ; $50ba: $01 $01 $20
	nop                                              ; $50bd: $00
	ld   b, $27                                      ; $50be: $06 $27
	ld   [de], a                                     ; $50c0: $12
	rrca                                             ; $50c1: $0f
	nop                                              ; $50c2: $00
	ld   bc, $0401                                   ; $50c3: $01 $01 $04
	ld   c, $03                                      ; $50c6: $0e $03
	sbc  l                                           ; $50c8: $9d
	inc  b                                           ; $50c9: $04
	and  [hl]                                        ; $50ca: $a6
	ld   [hl], l                                     ; $50cb: $75
	ld   h, a                                        ; $50cc: $67
	sbc  [hl]                                        ; $50cd: $9e
	inc  b                                           ; $50ce: $04
	ld   c, $03                                      ; $50cf: $0e $03
	sub  b                                           ; $50d1: $90
	ld   h, e                                        ; $50d2: $63
	and  c                                           ; $50d3: $a1
	sbc  a                                           ; $50d4: $9f
	dec  c                                           ; $50d5: $0d
	inc  bc                                          ; $50d6: $03
	ld   [hl], l                                     ; $50d7: $75
	inc  b                                           ; $50d8: $04
	xor  e                                           ; $50d9: $ab
	ld   h, l                                        ; $50da: $65
	ld   a, b                                        ; $50db: $78
	ld   d, d                                        ; $50dc: $52
	ld   [hl], l                                     ; $50dd: $75
	ld   [bc], a                                     ; $50de: $02
	inc  [hl]                                        ; $50df: $34
	ld   h, e                                        ; $50e0: $63
	ld   d, d                                        ; $50e1: $52
	sbc  a                                           ; $50e2: $9f
	dec  c                                           ; $50e3: $0d
	inc  b                                           ; $50e4: $04
	ld   b, d                                        ; $50e5: $42
	ld   [hl], h                                     ; $50e6: $74
	ld   d, d                                        ; $50e7: $52
	sbc  d                                           ; $50e8: $9a
	ld   a, [hl]                                     ; $50e9: $7e
	ld   [bc], a                                     ; $50ea: $02
	sub  e                                           ; $50eb: $93
	inc  b                                           ; $50ec: $04
	ld   a, h                                        ; $50ed: $7c
	ld   h, l                                        ; $50ee: $65
	adc  h                                           ; $50ef: $8c
	ld   h, a                                        ; $50f0: $67
	ld   e, c                                        ; $50f1: $59
	sub  a                                           ; $50f2: $97
	sbc  a                                           ; $50f3: $9f
	dec  c                                           ; $50f4: $0d
	nop                                              ; $50f5: $00
	ld   a, [bc]                                     ; $50f6: $0a
	inc  e                                           ; $50f7: $1c
	add  hl, bc                                      ; $50f8: $09
	ld   bc, $0101                                   ; $50f9: $01 $01 $01
	ld   l, e                                        ; $50fc: $6b
	ld   d, h                                        ; $50fd: $54
	ld   e, c                                        ; $50fe: $59
	sbc  [hl]                                        ; $50ff: $9e
	ld   l, e                                        ; $5100: $6b
	sbc  d                                           ; $5101: $9a
	ld   a, l                                        ; $5102: $7d
	sub  [hl]                                        ; $5103: $96
	ld   e, c                                        ; $5104: $59
	ld   [hl], c                                     ; $5105: $71
	ld   l, l                                        ; $5106: $6d
	sbc  a                                           ; $5107: $9f
	dec  c                                           ; $5108: $0d
	nop                                              ; $5109: $00
	ld   a, [bc]                                     ; $510a: $0a
	inc  e                                           ; $510b: $1c
	add  hl, bc                                      ; $510c: $09
	nop                                              ; $510d: $00
	nop                                              ; $510e: $00
	ld   bc, $9075                                   ; $510f: $01 $75 $90
	sbc  [hl]                                        ; $5112: $9e
	ld   [$5d00], sp                                 ; $5113: $08 $00 $5d
	and  c                                           ; $5116: $a1
	sbc  a                                           ; $5117: $9f
	dec  c                                           ; $5118: $0d
	inc  b                                           ; $5119: $04
	dec  c                                           ; $511a: $0d
	dec  b                                           ; $511b: $05
	ld   a, [bc]                                     ; $511c: $0a
	ld   a, h                                        ; $511d: $7c
	ld   [bc], a                                     ; $511e: $02
	ldh  [rSC], a                                    ; $511f: $e0 $02
	ld   b, d                                        ; $5121: $42
	and  b                                           ; $5122: $a0
	ld   [bc], a                                     ; $5123: $02
	scf                                              ; $5124: $37
	ld   h, [hl]                                     ; $5125: $66
	ld   l, l                                        ; $5126: $6d
	sub  a                                           ; $5127: $97
	dec  c                                           ; $5128: $0d
	inc  b                                           ; $5129: $04
	inc  b                                           ; $512a: $04
	sbc  d                                           ; $512b: $9a
	sbc  c                                           ; $512c: $99
	inc  bc                                          ; $512d: $03
	ld   c, a                                        ; $512e: $4f
	ld   a, c                                        ; $512f: $79
	inc  bc                                          ; $5130: $03
	and  a                                           ; $5131: $a7
	adc  [hl]                                        ; $5132: $8e
	sub  [hl]                                        ; $5133: $96
	ld   d, h                                        ; $5134: $54
	ld   a, c                                        ; $5135: $79
	ld   a, b                                        ; $5136: $78
	sbc  a                                           ; $5137: $9f
	dec  c                                           ; $5138: $0d
	nop                                              ; $5139: $00
	ld   a, [bc]                                     ; $513a: $0a
	ld   bc, $6d03                                   ; $513b: $01 $03 $6d
	dec  b                                           ; $513e: $05
	add  hl, de                                      ; $513f: $19
	and  b                                           ; $5140: $a0
	ld   e, d                                        ; $5141: $5a
	and  c                                           ; $5142: $a1
	ld   a, [hl]                                     ; $5143: $7e
	sbc  c                                           ; $5144: $99
	ld   a, h                                        ; $5145: $7c
	ld   a, l                                        ; $5146: $7d
	ld   d, d                                        ; $5147: $52
	ld   d, d                                        ; $5148: $52
	ld   e, d                                        ; $5149: $5a
	sbc  [hl]                                        ; $514a: $9e
	dec  c                                           ; $514b: $0d
	inc  b                                           ; $514c: $04
	dec  c                                           ; $514d: $0d
	and  b                                           ; $514e: $a0
	sub  d                                           ; $514f: $92
	ld   h, a                                        ; $5150: $67
	adc  a                                           ; $5151: $8f
	sbc  c                                           ; $5152: $99
	ld   h, c                                        ; $5153: $61
	halt                                             ; $5154: $76
	sub  b                                           ; $5155: $90
	sbc  [hl]                                        ; $5156: $9e
	dec  c                                           ; $5157: $0d
	inc  b                                           ; $5158: $04
	ld   c, $03                                      ; $5159: $0e $03
	dec  de                                          ; $515b: $1b
	ld   a, b                                        ; $515c: $78
	ld   h, c                                        ; $515d: $61
	halt                                             ; $515e: $76
	ld   a, b                                        ; $515f: $78
	and  c                                           ; $5160: $a1
	ld   l, [hl]                                     ; $5161: $6e
	ld   e, c                                        ; $5162: $59
	sub  a                                           ; $5163: $97
	ld   a, b                                        ; $5164: $78
	sbc  a                                           ; $5165: $9f
	dec  c                                           ; $5166: $0d
	nop                                              ; $5167: $00
	ld   a, [bc]                                     ; $5168: $0a
	inc  e                                           ; $5169: $1c
	add  hl, bc                                      ; $516a: $09
	ld   bc, $0101                                   ; $516b: $01 $01 $01
	ld   h, [hl]                                     ; $516e: $66
	sub  c                                           ; $516f: $91
	sbc  [hl]                                        ; $5170: $9e
	ld   e, b                                        ; $5171: $58
	inc  b                                           ; $5172: $04
	ld   c, $02                                      ; $5173: $0e $02
	jp   $9f79                                       ; $5175: $c3 $79 $9f


	dec  c                                           ; $5178: $0d
	nop                                              ; $5179: $00
	ld   a, [bc]                                     ; $517a: $0a
	add  hl, hl                                      ; $517b: $29
	nop                                              ; $517c: $00
	nop                                              ; $517d: $00
	rrca                                             ; $517e: $0f
	nop                                              ; $517f: $00
	ld   bc, $5201                                   ; $5180: $01 $01 $52
	sub  d                                           ; $5183: $92
	db   $fc                                         ; $5184: $fc
	sbc  [hl]                                        ; $5185: $9e
	ld   [hl], a                                     ; $5186: $77
	ld   d, h                                        ; $5187: $54
	sub  b                                           ; $5188: $90
	ld   h, c                                        ; $5189: $61
	sbc  d                                           ; $518a: $9a
	ld   a, l                                        ; $518b: $7d
	rst  $38                                         ; $518c: $ff
	rst  $38                                         ; $518d: $ff
	dec  c                                           ; $518e: $0d
	pop  bc                                          ; $518f: $c1
	db   $e3                                         ; $5190: $e3
	ld   [hl], c                                     ; $5191: $71
	adc  e                                           ; $5192: $8b
	ld   d, d                                        ; $5193: $52
	ld   [hl], l                                     ; $5194: $75
	ld   h, a                                        ; $5195: $67
	sbc  a                                           ; $5196: $9f
	dec  c                                           ; $5197: $0d
	nop                                              ; $5198: $00
	ld   a, [bc]                                     ; $5199: $0a
	inc  e                                           ; $519a: $1c
	add  hl, bc                                      ; $519b: $09
	dec  b                                           ; $519c: $05
	ld   a, [bc]                                     ; $519d: $0a
	ld   bc, $e3c1                                   ; $519e: $01 $c1 $e3
	ld   [hl], c                                     ; $51a1: $71
	adc  e                                           ; $51a2: $8b
	ld   d, d                                        ; $51a3: $52
	ld   sp, hl                                      ; $51a4: $f9
	dec  c                                           ; $51a5: $0d
	ld   h, [hl]                                     ; $51a6: $66
	sub  c                                           ; $51a7: $91
	ld   d, b                                        ; $51a8: $50
	sbc  [hl]                                        ; $51a9: $9e
	inc  bc                                          ; $51aa: $03
	add  l                                           ; $51ab: $85
	inc  b                                           ; $51ac: $04
	xor  e                                           ; $51ad: $ab
	inc  bc                                          ; $51ae: $03
	add  d                                           ; $51af: $82
	ld   a, c                                        ; $51b0: $79
	dec  b                                           ; $51b1: $05
	jr   nz, jr_041_5219                             ; $51b2: $20 $65

	ld   [hl], h                                     ; $51b4: $74
	dec  c                                           ; $51b5: $0d
	inc  b                                           ; $51b6: $04
	dec  c                                           ; $51b7: $0d
	ld   [bc], a                                     ; $51b8: $02
	sub  [hl]                                        ; $51b9: $96
	inc  b                                           ; $51ba: $04
	ld   b, l                                        ; $51bb: $45
	inc  b                                           ; $51bc: $04
	ld   a, [bc]                                     ; $51bd: $0a
	and  b                                           ; $51be: $a0
	ld   h, c                                        ; $51bf: $61
	ld   h, c                                        ; $51c0: $61
	ld   [hl], l                                     ; $51c1: $75
	sub  d                                           ; $51c2: $92
	adc  a                                           ; $51c3: $8f
	sbc  c                                           ; $51c4: $99
	ld   e, c                                        ; $51c5: $59
	ld   sp, hl                                      ; $51c6: $f9
	dec  c                                           ; $51c7: $0d
	nop                                              ; $51c8: $00
	ld   a, [bc]                                     ; $51c9: $0a
	inc  e                                           ; $51ca: $1c
	add  hl, bc                                      ; $51cb: $09
	nop                                              ; $51cc: $00
	nop                                              ; $51cd: $00
	ld   bc, $ffff                                   ; $51ce: $01 $ff $ff
	halt                                             ; $51d1: $76
	sbc  [hl]                                        ; $51d2: $9e
	ld   d, d                                        ; $51d3: $52
	ld   d, h                                        ; $51d4: $54
	ld   a, h                                        ; $51d5: $7c
	ld   a, l                                        ; $51d6: $7d
	ld   b, $9d                                      ; $51d7: $06 $9d
	dec  b                                           ; $51d9: $05
	ldh  a, [$6e]                                    ; $51da: $f0 $6e
	ld   e, a                                        ; $51dc: $5f
	ld   [hl], a                                     ; $51dd: $77
	sbc  a                                           ; $51de: $9f
	dec  c                                           ; $51df: $0d
	ld   [bc], a                                     ; $51e0: $02
	and  l                                           ; $51e1: $a5
	ld   [bc], a                                     ; $51e2: $02
	xor  d                                           ; $51e3: $aa
	ld   a, l                                        ; $51e4: $7d
	inc  b                                           ; $51e5: $04
	inc  b                                           ; $51e6: $04
	sbc  d                                           ; $51e7: $9a
	sbc  c                                           ; $51e8: $99
	adc  h                                           ; $51e9: $8c
	ld   [hl], l                                     ; $51ea: $75
	dec  c                                           ; $51eb: $0d
	inc  b                                           ; $51ec: $04
	sub  $05                                         ; $51ed: $d6 $05
	ld   de, $7865                                   ; $51ef: $11 $65 $78
	ld   d, d                                        ; $51f2: $52
	ld   [hl], l                                     ; $51f3: $75
	sbc  [hl]                                        ; $51f4: $9e
	dec  c                                           ; $51f5: $0d
	nop                                              ; $51f6: $00
	ld   a, [bc]                                     ; $51f7: $0a
	ld   bc, $7b04                                   ; $51f8: $01 $04 $7b
	sbc  d                                           ; $51fb: $9a
	ld   l, l                                        ; $51fc: $6d
	ld   a, b                                        ; $51fd: $78
	halt                                             ; $51fe: $76
	dec  b                                           ; $51ff: $05
	pop  de                                          ; $5200: $d1
	ld   [hl], c                                     ; $5201: $71
	ld   l, l                                        ; $5202: $6d
	sub  a                                           ; $5203: $97
	dec  c                                           ; $5204: $0d
	inc  bc                                          ; $5205: $03
	and  a                                           ; $5206: $a7
	adc  [hl]                                        ; $5207: $8e
	sub  [hl]                                        ; $5208: $96
	ld   d, h                                        ; $5209: $54
	ld   a, c                                        ; $520a: $79
	sbc  a                                           ; $520b: $9f
	dec  c                                           ; $520c: $0d
	ld   d, d                                        ; $520d: $52
	ld   d, d                                        ; $520e: $52
	ld   a, b                                        ; $520f: $78
	sbc  [hl]                                        ; $5210: $9e
	ld   [$5d00], sp                                 ; $5211: $08 $00 $5d
	and  c                                           ; $5214: $a1
	sbc  a                                           ; $5215: $9f
	dec  c                                           ; $5216: $0d
	nop                                              ; $5217: $00
	ld   a, [bc]                                     ; $5218: $0a

jr_041_5219:
	ld   bc, $9166                                   ; $5219: $01 $66 $91
	sbc  [hl]                                        ; $521c: $9e
	ld   e, b                                        ; $521d: $58
	inc  b                                           ; $521e: $04
	ld   c, $02                                      ; $521f: $0e $02
	jp   $9f79                                       ; $5221: $c3 $79 $9f


	dec  c                                           ; $5224: $0d
	nop                                              ; $5225: $00
	ld   a, [bc]                                     ; $5226: $0a
	add  hl, hl                                      ; $5227: $29
	nop                                              ; $5228: $00
	nop                                              ; $5229: $00
	inc  e                                           ; $522a: $1c
	add  hl, bc                                      ; $522b: $09
	dec  b                                           ; $522c: $05
	ld   a, [bc]                                     ; $522d: $0a
	ld   bc, $dc03                                   ; $522e: $01 $03 $dc
	ld   d, [hl]                                     ; $5231: $56
	sub  a                                           ; $5232: $97
	sbc  d                                           ; $5233: $9a
	ld   a, b                                        ; $5234: $78
	ld   d, d                                        ; $5235: $52
	adc  c                                           ; $5236: $89
	ld   [hl], a                                     ; $5237: $77
	sbc  [hl]                                        ; $5238: $9e
	inc  b                                           ; $5239: $04
	ld   a, e                                        ; $523a: $7b
	sbc  d                                           ; $523b: $9a
	ld   [hl], h                                     ; $523c: $74
	dec  c                                           ; $523d: $0d
	ld   d, d                                        ; $523e: $52
	sbc  c                                           ; $523f: $99
	ld   a, h                                        ; $5240: $7c
	ld   e, c                                        ; $5241: $59
	ld   sp, hl                                      ; $5242: $f9
	dec  c                                           ; $5243: $0d
	nop                                              ; $5244: $00
	ld   a, [bc]                                     ; $5245: $0a
	ld   bc, $508c                                   ; $5246: $01 $8c $50
	sbc  [hl]                                        ; $5249: $9e
	ld   d, d                                        ; $524a: $52
	ld   d, d                                        ; $524b: $52
	sbc  a                                           ; $524c: $9f
	ld   [bc], a                                     ; $524d: $02
	and  l                                           ; $524e: $a5
	ld   a, l                                        ; $524f: $7d
	sub  h                                           ; $5250: $94
	ld   [hl], c                                     ; $5251: $71
	ld   e, l                                        ; $5252: $5d
	sbc  b                                           ; $5253: $98
	halt                                             ; $5254: $76
	dec  c                                           ; $5255: $0d
	inc  b                                           ; $5256: $04
	dec  c                                           ; $5257: $0d
	and  b                                           ; $5258: $a0
	sub  d                                           ; $5259: $92
	ld   h, a                                        ; $525a: $67
	adc  a                                           ; $525b: $8f
	sbc  c                                           ; $525c: $99
	and  c                                           ; $525d: $a1
	ld   l, [hl]                                     ; $525e: $6e
	ld   a, b                                        ; $525f: $78
	sbc  a                                           ; $5260: $9f
	dec  c                                           ; $5261: $0d
	ld   h, [hl]                                     ; $5262: $66
	sub  c                                           ; $5263: $91
	sbc  [hl]                                        ; $5264: $9e
	ld   e, b                                        ; $5265: $58
	inc  b                                           ; $5266: $04
	ld   c, $02                                      ; $5267: $0e $02
	jp   $9f79                                       ; $5269: $c3 $79 $9f


	dec  c                                           ; $526c: $0d
	nop                                              ; $526d: $00
	ld   a, [bc]                                     ; $526e: $0a
	add  hl, hl                                      ; $526f: $29
	nop                                              ; $5270: $00
	nop                                              ; $5271: $00
	nop                                              ; $5272: $00
	dec  c                                           ; $5273: $0d
	nop                                              ; $5274: $00
	nop                                              ; $5275: $00
	inc  c                                           ; $5276: $0c
	ld   [bc], a                                     ; $5277: $02
	ld   c, $ae                                      ; $5278: $0e $ae
	dec  b                                           ; $527a: $05
	ld   b, b                                        ; $527b: $40
	rst  $38                                         ; $527c: $ff
	ld   bc, $0001                                   ; $527d: $01 $01 $00
	ld   e, $07                                      ; $5280: $1e $07
	jp   hl                                          ; $5282: $e9


	nop                                              ; $5283: $00
	inc  bc                                          ; $5284: $03
	rst  $38                                         ; $5285: $ff
	ld   bc, $2001                                   ; $5286: $01 $01 $20
	inc  b                                           ; $5289: $04
	add  b                                           ; $528a: $80
	sub  h                                           ; $528b: $94
	inc  e                                           ; $528c: $1c
	nop                                              ; $528d: $00
	rlca                                             ; $528e: $07
	jp   hl                                          ; $528f: $e9


	nop                                              ; $5290: $00
	inc  bc                                          ; $5291: $03
	rst  $38                                         ; $5292: $ff
	ld   bc, $2002                                   ; $5293: $01 $02 $20
	inc  b                                           ; $5296: $04
	add  b                                           ; $5297: $80
	sub  l                                           ; $5298: $95
	inc  e                                           ; $5299: $1c
	nop                                              ; $529a: $00
	rlca                                             ; $529b: $07
	jp   hl                                          ; $529c: $e9


	nop                                              ; $529d: $00
	inc  bc                                          ; $529e: $03
	rst  $38                                         ; $529f: $ff
	ld   bc, $2003                                   ; $52a0: $01 $03 $20
	inc  b                                           ; $52a3: $04
	add  b                                           ; $52a4: $80
	sub  [hl]                                        ; $52a5: $96
	inc  e                                           ; $52a6: $1c
	nop                                              ; $52a7: $00
	rlca                                             ; $52a8: $07
	jp   hl                                          ; $52a9: $e9


	nop                                              ; $52aa: $00
	inc  bc                                          ; $52ab: $03
	rst  $38                                         ; $52ac: $ff
	ld   bc, $2004                                   ; $52ad: $01 $04 $20
	inc  b                                           ; $52b0: $04
	add  b                                           ; $52b1: $80
	sub  a                                           ; $52b2: $97
	inc  e                                           ; $52b3: $1c
	nop                                              ; $52b4: $00
	rlca                                             ; $52b5: $07
	jp   hl                                          ; $52b6: $e9


	nop                                              ; $52b7: $00
	inc  bc                                          ; $52b8: $03
	rst  $38                                         ; $52b9: $ff
	ld   bc, $2005                                   ; $52ba: $01 $05 $20
	inc  b                                           ; $52bd: $04
	add  b                                           ; $52be: $80
	sbc  b                                           ; $52bf: $98
	inc  e                                           ; $52c0: $1c
	nop                                              ; $52c1: $00
	rlca                                             ; $52c2: $07
	jp   hl                                          ; $52c3: $e9


	nop                                              ; $52c4: $00
	inc  bc                                          ; $52c5: $03
	rst  $38                                         ; $52c6: $ff
	ld   bc, $2006                                   ; $52c7: $01 $06 $20
	inc  b                                           ; $52ca: $04
	add  b                                           ; $52cb: $80
	sbc  c                                           ; $52cc: $99
	inc  e                                           ; $52cd: $1c
	nop                                              ; $52ce: $00
	rlca                                             ; $52cf: $07
	sub  l                                           ; $52d0: $95
	nop                                              ; $52d1: $00
	inc  bc                                          ; $52d2: $03
	rst  $38                                         ; $52d3: $ff
	ld   bc, $2001                                   ; $52d4: $01 $01 $20
	nop                                              ; $52d7: $00
	rlca                                             ; $52d8: $07
	ld   b, h                                        ; $52d9: $44
	ld   bc, $ff03                                   ; $52da: $01 $03 $ff
	ld   bc, $2002                                   ; $52dd: $01 $02 $20
	nop                                              ; $52e0: $00
	rlca                                             ; $52e1: $07
	sbc  b                                           ; $52e2: $98
	ld   bc, $ff03                                   ; $52e3: $01 $03 $ff
	ld   bc, $2003                                   ; $52e6: $01 $03 $20
	nop                                              ; $52e9: $00
	rlca                                             ; $52ea: $07
	db   $ec                                         ; $52eb: $ec
	ld   bc, $ff03                                   ; $52ec: $01 $03 $ff
	ld   bc, $2004                                   ; $52ef: $01 $04 $20
	nop                                              ; $52f2: $00
	rlca                                             ; $52f3: $07
	ld   b, d                                        ; $52f4: $42
	ld   [bc], a                                     ; $52f5: $02
	inc  bc                                          ; $52f6: $03
	rst  $38                                         ; $52f7: $ff
	ld   bc, $2005                                   ; $52f8: $01 $05 $20
	nop                                              ; $52fb: $00
	rlca                                             ; $52fc: $07
	sub  a                                           ; $52fd: $97
	ld   [bc], a                                     ; $52fe: $02
	inc  bc                                          ; $52ff: $03
	rst  $38                                         ; $5300: $ff
	ld   bc, $2006                                   ; $5301: $01 $06 $20
	nop                                              ; $5304: $00
	ld   b, $0d                                      ; $5305: $06 $0d
	nop                                              ; $5307: $00
	rrca                                             ; $5308: $0f
	ld   c, $01                                      ; $5309: $0e $01
	db   $10                                         ; $530b: $10
	ld   c, [hl]                                     ; $530c: $4e
	rst  $38                                         ; $530d: $ff
	ld   bc, $9a6b                                   ; $530e: $01 $6b $9a
	ld   a, l                                        ; $5311: $7d
	ld   h, e                                        ; $5312: $63
	ld   e, l                                        ; $5313: $5d
	sub  a                                           ; $5314: $97
	ld   h, e                                        ; $5315: $63
	and  c                                           ; $5316: $a1
	ld   a, h                                        ; $5317: $7c
	dec  c                                           ; $5318: $0d
	rst  $10                                         ; $5319: $d7
	rst  $28                                         ; $531a: $ef
	rst  JumpTable                                         ; $531b: $df
	and  l                                           ; $531c: $a5
	jp   z, Jump_041_6775                            ; $531d: $ca $75 $67

	ld   a, e                                        ; $5320: $7b
	sbc  a                                           ; $5321: $9f
	dec  c                                           ; $5322: $0d
	ld   d, $11                                      ; $5323: $16 $11
	dec  b                                           ; $5325: $05
	cp   l                                           ; $5326: $bd
	ld   a, c                                        ; $5327: $79
	ld   a, b                                        ; $5328: $78
	sbc  b                                           ; $5329: $98
	adc  h                                           ; $532a: $8c
	db   $fc                                         ; $532b: $fc
	ld   h, a                                        ; $532c: $67
	sbc  a                                           ; $532d: $9f
	dec  c                                           ; $532e: $0d
	nop                                              ; $532f: $00
	ld   a, [bc]                                     ; $5330: $0a
	jr   jr_041_5335                                 ; $5331: $18 $02

	nop                                              ; $5333: $00
	inc  b                                           ; $5334: $04

jr_041_5335:
	adc  l                                           ; $5335: $8d
	ld   d, h                                        ; $5336: $54
	nop                                              ; $5337: $00
	nop                                              ; $5338: $00
	inc  b                                           ; $5339: $04
	adc  l                                           ; $533a: $8d
	sbc  l                                           ; $533b: $9d
	ld   a, b                                        ; $533c: $78
	ld   d, d                                        ; $533d: $52
	nop                                              ; $533e: $00
	ld   bc, $df07                                   ; $533f: $01 $07 $df
	nop                                              ; $5342: $00
	ld   [bc], a                                     ; $5343: $02
	ld   [bc], a                                     ; $5344: $02
	ld   bc, $2000                                   ; $5345: $01 $00 $20
	nop                                              ; $5348: $00
	rlca                                             ; $5349: $07
	rlca                                             ; $534a: $07
	ld   bc, $0202                                   ; $534b: $01 $02 $02
	ld   bc, $2001                                   ; $534e: $01 $01 $20
	nop                                              ; $5351: $00
	inc  b                                           ; $5352: $04
	dec  b                                           ; $5353: $05
	add  b                                           ; $5354: $80
	sub  h                                           ; $5355: $94
	ld   bc, $0001                                   ; $5356: $01 $01 $00
	ld   b, $0e                                      ; $5359: $06 $0e
	ld   bc, $0e0f                                   ; $535b: $01 $0f $0e
	ld   bc, $6b01                                   ; $535e: $01 $01 $6b
	ld   a, h                                        ; $5361: $7c
	rst  $10                                         ; $5362: $d7
	rst  $28                                         ; $5363: $ef
	rst  JumpTable                                         ; $5364: $df
	and  l                                           ; $5365: $a5
	jp   z, $9e7d                                    ; $5366: $ca $7d $9e

	dec  c                                           ; $5369: $0d
	sub  b                                           ; $536a: $90
	ld   d, h                                        ; $536b: $54
	inc  bc                                          ; $536c: $03
	and  b                                           ; $536d: $a0
	ld   [hl], c                                     ; $536e: $71
	ld   [hl], h                                     ; $536f: $74
	adc  h                                           ; $5370: $8c
	ld   h, a                                        ; $5371: $67
	sub  [hl]                                        ; $5372: $96
	sbc  a                                           ; $5373: $9f
	dec  c                                           ; $5374: $0d
	nop                                              ; $5375: $00
	ld   a, [bc]                                     ; $5376: $0a
	ld   b, $0d                                      ; $5377: $06 $0d
	nop                                              ; $5379: $00
	inc  b                                           ; $537a: $04
	rrca                                             ; $537b: $0f
	ld   c, $01                                      ; $537c: $0e $01
	ld   b, $0d                                      ; $537e: $06 $0d
	nop                                              ; $5380: $00
	rrca                                             ; $5381: $0f
	ld   c, $01                                      ; $5382: $0e $01
	add  hl, bc                                      ; $5384: $09
	rrca                                             ; $5385: $0f
	inc  c                                           ; $5386: $0c
	ld   [bc], a                                     ; $5387: $02
	ld   c, $13                                      ; $5388: $0e $13
	inc  e                                           ; $538a: $1c
	ld   c, $01                                      ; $538b: $0e $01
	ld   bc, $5801                                   ; $538d: $01 $01 $58
	inc  b                                           ; $5390: $04
	adc  l                                           ; $5391: $8d
	ld   d, d                                        ; $5392: $52
	inc  bc                                          ; $5393: $03
	ld   h, l                                        ; $5394: $65
	ld   h, b                                        ; $5395: $60
	sbc  [hl]                                        ; $5396: $9e
	dec  c                                           ; $5397: $0d
	ld   d, b                                        ; $5398: $50
	sbc  b                                           ; $5399: $98
	ld   e, d                                        ; $539a: $5a
	halt                                             ; $539b: $76
	ld   d, h                                        ; $539c: $54
	ld   h, d                                        ; $539d: $62
	ld   h, h                                        ; $539e: $64
	ld   d, d                                        ; $539f: $52
	adc  h                                           ; $53a0: $8c
	ei                                               ; $53a1: $fb
	ld   h, a                                        ; $53a2: $67
	ld   a, [$000d]                                  ; $53a3: $fa $0d $00
	ld   a, [bc]                                     ; $53a6: $0a
	dec  b                                           ; $53a7: $05
	ld   b, b                                        ; $53a8: $40
	ld   d, h                                        ; $53a9: $54
	ld   [bc], a                                     ; $53aa: $02
	nop                                              ; $53ab: $00
	ld   bc, $2b07                                   ; $53ac: $01 $07 $2b
	ld   bc, $2801                                   ; $53af: $01 $01 $28
	ld   bc, $2a07                                   ; $53b2: $01 $07 $2a
	nop                                              ; $53b5: $00
	nop                                              ; $53b6: $00
	rrca                                             ; $53b7: $0f
	ld   c, $01                                      ; $53b8: $0e $01
	db   $10                                         ; $53ba: $10
	ld   c, a                                        ; $53bb: $4f
	rst  $38                                         ; $53bc: $ff
	ld   bc, $9a6b                                   ; $53bd: $01 $6b $9a
	ld   a, l                                        ; $53c0: $7d
	ld   h, a                                        ; $53c1: $67
	adc  l                                           ; $53c2: $8d
	sbc  d                                           ; $53c3: $9a
	ld   h, e                                        ; $53c4: $63
	and  c                                           ; $53c5: $a1
	ld   a, h                                        ; $53c6: $7c
	dec  c                                           ; $53c7: $0d
	rst  $10                                         ; $53c8: $d7
	rst  $28                                         ; $53c9: $ef
	rst  JumpTable                                         ; $53ca: $df
	and  l                                           ; $53cb: $a5
	jp   z, Jump_041_6775                            ; $53cc: $ca $75 $67

	ld   a, e                                        ; $53cf: $7b
	sbc  a                                           ; $53d0: $9f
	dec  c                                           ; $53d1: $0d
	ld   d, $11                                      ; $53d2: $16 $11
	dec  b                                           ; $53d4: $05
	cp   l                                           ; $53d5: $bd
	ld   a, c                                        ; $53d6: $79
	ld   a, b                                        ; $53d7: $78
	sbc  b                                           ; $53d8: $98
	adc  h                                           ; $53d9: $8c
	db   $fc                                         ; $53da: $fc
	ld   h, a                                        ; $53db: $67
	sbc  a                                           ; $53dc: $9f
	dec  c                                           ; $53dd: $0d
	nop                                              ; $53de: $00
	ld   a, [bc]                                     ; $53df: $0a
	jr   jr_041_53e4                                 ; $53e0: $18 $02

	nop                                              ; $53e2: $00
	inc  b                                           ; $53e3: $04

jr_041_53e4:
	adc  l                                           ; $53e4: $8d
	ld   d, h                                        ; $53e5: $54
	nop                                              ; $53e6: $00
	nop                                              ; $53e7: $00
	inc  b                                           ; $53e8: $04
	adc  l                                           ; $53e9: $8d
	sbc  l                                           ; $53ea: $9d
	ld   a, b                                        ; $53eb: $78
	ld   d, d                                        ; $53ec: $52
	nop                                              ; $53ed: $00
	ld   bc, $8e07                                   ; $53ee: $01 $07 $8e
	ld   bc, $0202                                   ; $53f1: $01 $02 $02
	ld   bc, $2000                                   ; $53f4: $01 $00 $20
	nop                                              ; $53f7: $00
	rlca                                             ; $53f8: $07
	rlca                                             ; $53f9: $07
	ld   bc, $0202                                   ; $53fa: $01 $02 $02
	ld   bc, $2001                                   ; $53fd: $01 $01 $20
	nop                                              ; $5400: $00
	inc  b                                           ; $5401: $04
	dec  b                                           ; $5402: $05
	add  b                                           ; $5403: $80
	sub  l                                           ; $5404: $95
	ld   bc, $0001                                   ; $5405: $01 $01 $00
	ld   b, $0e                                      ; $5408: $06 $0e
	ld   bc, $0e0f                                   ; $540a: $01 $0f $0e
	ld   bc, $5010                                   ; $540d: $01 $10 $50
	rst  $38                                         ; $5410: $ff
	ld   bc, $9a6b                                   ; $5411: $01 $6b $9a
	ld   a, l                                        ; $5414: $7d
	rst  JumpTable                                         ; $5415: $df
	db   $ec                                         ; $5416: $ec
	and  e                                           ; $5417: $a3
	ld   h, e                                        ; $5418: $63
	and  c                                           ; $5419: $a1
	ld   a, h                                        ; $541a: $7c
	dec  c                                           ; $541b: $0d
	rst  $10                                         ; $541c: $d7
	rst  $28                                         ; $541d: $ef
	rst  JumpTable                                         ; $541e: $df
	and  l                                           ; $541f: $a5
	jp   z, Jump_041_6775                            ; $5420: $ca $75 $67

	ld   a, e                                        ; $5423: $7b
	sbc  a                                           ; $5424: $9f
	dec  c                                           ; $5425: $0d
	ld   d, $11                                      ; $5426: $16 $11
	dec  b                                           ; $5428: $05
	cp   l                                           ; $5429: $bd
	ld   a, c                                        ; $542a: $79
	ld   a, b                                        ; $542b: $78
	sbc  b                                           ; $542c: $98
	adc  h                                           ; $542d: $8c
	db   $fc                                         ; $542e: $fc
	ld   h, a                                        ; $542f: $67
	sbc  a                                           ; $5430: $9f
	dec  c                                           ; $5431: $0d
	nop                                              ; $5432: $00
	ld   a, [bc]                                     ; $5433: $0a
	jr   jr_041_5438                                 ; $5434: $18 $02

	nop                                              ; $5436: $00
	inc  b                                           ; $5437: $04

jr_041_5438:
	adc  l                                           ; $5438: $8d
	ld   d, h                                        ; $5439: $54
	nop                                              ; $543a: $00
	nop                                              ; $543b: $00
	inc  b                                           ; $543c: $04
	adc  l                                           ; $543d: $8d
	sbc  l                                           ; $543e: $9d
	ld   a, b                                        ; $543f: $78
	ld   d, d                                        ; $5440: $52
	nop                                              ; $5441: $00
	ld   bc, $e207                                   ; $5442: $01 $07 $e2
	ld   bc, $0202                                   ; $5445: $01 $02 $02
	ld   bc, $2000                                   ; $5448: $01 $00 $20
	nop                                              ; $544b: $00
	rlca                                             ; $544c: $07
	rlca                                             ; $544d: $07
	ld   bc, $0202                                   ; $544e: $01 $02 $02
	ld   bc, $2001                                   ; $5451: $01 $01 $20
	nop                                              ; $5454: $00
	inc  b                                           ; $5455: $04
	dec  b                                           ; $5456: $05
	add  b                                           ; $5457: $80
	sub  [hl]                                        ; $5458: $96
	ld   bc, $0001                                   ; $5459: $01 $01 $00
	ld   b, $0e                                      ; $545c: $06 $0e
	ld   bc, $0e0f                                   ; $545e: $01 $0f $0e
	ld   bc, $5110                                   ; $5461: $01 $10 $51
	rst  $38                                         ; $5464: $ff
	ld   bc, $9a6b                                   ; $5465: $01 $6b $9a
	ld   a, l                                        ; $5468: $7d
	and  e                                           ; $5469: $a3
	and  l                                           ; $546a: $a5
	db   $ec                                         ; $546b: $ec
	cp   d                                           ; $546c: $ba
	ld   l, a                                        ; $546d: $6f
	sub  c                                           ; $546e: $91
	and  c                                           ; $546f: $a1
	ld   a, h                                        ; $5470: $7c
	dec  c                                           ; $5471: $0d
	rst  $10                                         ; $5472: $d7
	rst  $28                                         ; $5473: $ef
	rst  JumpTable                                         ; $5474: $df
	and  l                                           ; $5475: $a5
	jp   z, Jump_041_6775                            ; $5476: $ca $75 $67

	ld   a, e                                        ; $5479: $7b
	sbc  a                                           ; $547a: $9f
	dec  c                                           ; $547b: $0d
	ld   d, $11                                      ; $547c: $16 $11
	dec  b                                           ; $547e: $05
	cp   l                                           ; $547f: $bd
	ld   a, c                                        ; $5480: $79
	ld   a, b                                        ; $5481: $78
	sbc  b                                           ; $5482: $98
	adc  h                                           ; $5483: $8c
	db   $fc                                         ; $5484: $fc
	ld   h, a                                        ; $5485: $67
	sbc  a                                           ; $5486: $9f
	dec  c                                           ; $5487: $0d
	nop                                              ; $5488: $00
	ld   a, [bc]                                     ; $5489: $0a
	jr   jr_041_548e                                 ; $548a: $18 $02

	nop                                              ; $548c: $00
	inc  b                                           ; $548d: $04

jr_041_548e:
	adc  l                                           ; $548e: $8d
	ld   d, h                                        ; $548f: $54
	nop                                              ; $5490: $00
	nop                                              ; $5491: $00
	inc  b                                           ; $5492: $04
	adc  l                                           ; $5493: $8d
	sbc  l                                           ; $5494: $9d
	ld   a, b                                        ; $5495: $78
	ld   d, d                                        ; $5496: $52
	nop                                              ; $5497: $00
	ld   bc, $3807                                   ; $5498: $01 $07 $38
	ld   [bc], a                                     ; $549b: $02
	ld   [bc], a                                     ; $549c: $02
	ld   [bc], a                                     ; $549d: $02
	ld   bc, $2000                                   ; $549e: $01 $00 $20
	nop                                              ; $54a1: $00
	rlca                                             ; $54a2: $07
	rlca                                             ; $54a3: $07
	ld   bc, $0202                                   ; $54a4: $01 $02 $02
	ld   bc, $2001                                   ; $54a7: $01 $01 $20
	nop                                              ; $54aa: $00
	inc  b                                           ; $54ab: $04
	dec  b                                           ; $54ac: $05
	add  b                                           ; $54ad: $80
	sub  a                                           ; $54ae: $97
	ld   bc, $0001                                   ; $54af: $01 $01 $00
	ld   b, $0e                                      ; $54b2: $06 $0e
	ld   bc, $0e0f                                   ; $54b4: $01 $0f $0e
	ld   bc, $5210                                   ; $54b7: $01 $10 $52
	rst  $38                                         ; $54ba: $ff
	ld   bc, $9a6b                                   ; $54bb: $01 $6b $9a
	ld   a, l                                        ; $54be: $7d
	ld   [bc], a                                     ; $54bf: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54c0: $cf
	dec  b                                           ; $54c1: $05
	ld   a, [de]                                     ; $54c2: $1a
	ld   h, e                                        ; $54c3: $63
	and  c                                           ; $54c4: $a1
	ld   a, h                                        ; $54c5: $7c
	dec  c                                           ; $54c6: $0d
	rst  $10                                         ; $54c7: $d7
	rst  $28                                         ; $54c8: $ef
	rst  JumpTable                                         ; $54c9: $df
	and  l                                           ; $54ca: $a5
	jp   z, Jump_041_6775                            ; $54cb: $ca $75 $67

	ld   a, e                                        ; $54ce: $7b
	sbc  a                                           ; $54cf: $9f
	dec  c                                           ; $54d0: $0d
	ld   d, $11                                      ; $54d1: $16 $11
	dec  b                                           ; $54d3: $05
	cp   l                                           ; $54d4: $bd
	ld   a, c                                        ; $54d5: $79
	ld   a, b                                        ; $54d6: $78
	sbc  b                                           ; $54d7: $98
	adc  h                                           ; $54d8: $8c
	db   $fc                                         ; $54d9: $fc
	ld   h, a                                        ; $54da: $67
	sbc  a                                           ; $54db: $9f
	dec  c                                           ; $54dc: $0d
	nop                                              ; $54dd: $00
	ld   a, [bc]                                     ; $54de: $0a
	jr   jr_041_54e3                                 ; $54df: $18 $02

	nop                                              ; $54e1: $00
	inc  b                                           ; $54e2: $04

jr_041_54e3:
	adc  l                                           ; $54e3: $8d
	ld   d, h                                        ; $54e4: $54
	nop                                              ; $54e5: $00
	nop                                              ; $54e6: $00
	inc  b                                           ; $54e7: $04
	adc  l                                           ; $54e8: $8d
	sbc  l                                           ; $54e9: $9d
	ld   a, b                                        ; $54ea: $78
	ld   d, d                                        ; $54eb: $52
	nop                                              ; $54ec: $00
	ld   bc, $8d07                                   ; $54ed: $01 $07 $8d
	ld   [bc], a                                     ; $54f0: $02
	ld   [bc], a                                     ; $54f1: $02
	ld   [bc], a                                     ; $54f2: $02
	ld   bc, $2000                                   ; $54f3: $01 $00 $20
	nop                                              ; $54f6: $00
	rlca                                             ; $54f7: $07
	rlca                                             ; $54f8: $07
	ld   bc, $0202                                   ; $54f9: $01 $02 $02
	ld   bc, $2001                                   ; $54fc: $01 $01 $20
	nop                                              ; $54ff: $00
	inc  b                                           ; $5500: $04
	dec  b                                           ; $5501: $05
	add  b                                           ; $5502: $80
	sbc  b                                           ; $5503: $98
	ld   bc, $0001                                   ; $5504: $01 $01 $00
	ld   b, $0e                                      ; $5507: $06 $0e
	ld   bc, $0e0f                                   ; $5509: $01 $0f $0e
	ld   bc, $5310                                   ; $550c: $01 $10 $53
	rst  $38                                         ; $550f: $ff
	ld   bc, $9a6b                                   ; $5510: $01 $6b $9a
	ld   a, l                                        ; $5513: $7d
	xor  h                                           ; $5514: $ac
	push af                                          ; $5515: $f5
	bit  4, e                                        ; $5516: $cb $63
	and  c                                           ; $5518: $a1
	ld   a, h                                        ; $5519: $7c
	dec  c                                           ; $551a: $0d
	rst  $10                                         ; $551b: $d7
	rst  $28                                         ; $551c: $ef
	rst  JumpTable                                         ; $551d: $df
	and  l                                           ; $551e: $a5
	jp   z, Jump_041_6775                            ; $551f: $ca $75 $67

	ld   a, e                                        ; $5522: $7b
	sbc  a                                           ; $5523: $9f
	dec  c                                           ; $5524: $0d
	ld   d, $11                                      ; $5525: $16 $11
	dec  b                                           ; $5527: $05
	cp   l                                           ; $5528: $bd
	ld   a, c                                        ; $5529: $79
	ld   a, b                                        ; $552a: $78
	sbc  b                                           ; $552b: $98
	adc  h                                           ; $552c: $8c
	db   $fc                                         ; $552d: $fc
	ld   h, a                                        ; $552e: $67
	sbc  a                                           ; $552f: $9f
	dec  c                                           ; $5530: $0d
	nop                                              ; $5531: $00
	ld   a, [bc]                                     ; $5532: $0a
	jr   jr_041_5537                                 ; $5533: $18 $02

	nop                                              ; $5535: $00
	inc  b                                           ; $5536: $04

jr_041_5537:
	adc  l                                           ; $5537: $8d
	ld   d, h                                        ; $5538: $54
	nop                                              ; $5539: $00
	nop                                              ; $553a: $00
	inc  b                                           ; $553b: $04
	adc  l                                           ; $553c: $8d
	sbc  l                                           ; $553d: $9d
	ld   a, b                                        ; $553e: $78
	ld   d, d                                        ; $553f: $52
	nop                                              ; $5540: $00
	ld   bc, $e107                                   ; $5541: $01 $07 $e1
	ld   [bc], a                                     ; $5544: $02
	ld   [bc], a                                     ; $5545: $02
	ld   [bc], a                                     ; $5546: $02
	ld   bc, $2000                                   ; $5547: $01 $00 $20
	nop                                              ; $554a: $00
	rlca                                             ; $554b: $07
	rlca                                             ; $554c: $07
	ld   bc, $0202                                   ; $554d: $01 $02 $02
	ld   bc, $2001                                   ; $5550: $01 $01 $20
	nop                                              ; $5553: $00
	inc  b                                           ; $5554: $04
	dec  b                                           ; $5555: $05
	add  b                                           ; $5556: $80
	sbc  c                                           ; $5557: $99
	ld   bc, $0001                                   ; $5558: $01 $01 $00
	ld   b, $0e                                      ; $555b: $06 $0e
	ld   bc, $0700                                   ; $555d: $01 $00 $07
	ld   a, a                                        ; $5560: $7f
	inc  bc                                          ; $5561: $03
	inc  bc                                          ; $5562: $03
	ld   a, [$0e00]                                  ; $5563: $fa $00 $0e
	push bc                                          ; $5566: $c5
	inc  e                                           ; $5567: $1c
	rrca                                             ; $5568: $0f
	nop                                              ; $5569: $00
	nop                                              ; $556a: $00
	inc  de                                          ; $556b: $13
	inc  c                                           ; $556c: $0c
	inc  d                                           ; $556d: $14
	ld   c, h                                        ; $556e: $4c
	nop                                              ; $556f: $00
	ld   [bc], a                                     ; $5570: $02
	ld   bc, $4f92                                   ; $5571: $01 $92 $4f
	sbc  [hl]                                        ; $5574: $9e
	xor  [hl]                                        ; $5575: $ae
	ldh  [$59], a                                    ; $5576: $e0 $59
	sbc  a                                           ; $5578: $9f
	dec  c                                           ; $5579: $0d
	nop                                              ; $557a: $00
	inc  e                                           ; $557b: $1c
	rrca                                             ; $557c: $0f
	ld   [bc], a                                     ; $557d: $02
	ld   [bc], a                                     ; $557e: $02
	ld   bc, $5b52                                   ; $557f: $01 $52 $5b
	ld   a, b                                        ; $5582: $78
	sbc  b                                           ; $5583: $98
	ld   l, [hl]                                     ; $5584: $6e
	ld   e, d                                        ; $5585: $5a
	sbc  [hl]                                        ; $5586: $9e
	ld   [bc], a                                     ; $5587: $02
	and  l                                           ; $5588: $a5
	sbc  [hl]                                        ; $5589: $9e
	inc  b                                           ; $558a: $04
	ld   [$9202], sp                                 ; $558b: $08 $02 $92
	ld   a, l                                        ; $558e: $7d
	dec  c                                           ; $558f: $0d
	ld   [hl], h                                     ; $5590: $74
	ld   e, e                                        ; $5591: $5b
	ld   h, l                                        ; $5592: $65
	sub  e                                           ; $5593: $93
	ld   d, h                                        ; $5594: $54
	and  b                                           ; $5595: $a0
	ld   [bc], a                                     ; $5596: $02
	rst  $38                                         ; $5597: $ff
	ld   e, a                                        ; $5598: $5f
	ld   [hl], h                                     ; $5599: $74
	ld   d, d                                        ; $559a: $52
	sbc  c                                           ; $559b: $99
	sbc  a                                           ; $559c: $9f
	dec  c                                           ; $559d: $0d
	nop                                              ; $559e: $00
	ld   a, [bc]                                     ; $559f: $0a
	ld   bc, $9a9d                                   ; $55a0: $01 $9d $9a
	sbc  l                                           ; $55a3: $9d
	sbc  d                                           ; $55a4: $9a
	ld   [bc], a                                     ; $55a5: $02
	sbc  e                                           ; $55a6: $9b
	inc  bc                                          ; $55a7: $03
	nop                                              ; $55a8: $00
	ld   e, d                                        ; $55a9: $5a
	ld   [bc], a                                     ; $55aa: $02
	add  hl, bc                                      ; $55ab: $09
	inc  bc                                          ; $55ac: $03
	xor  b                                           ; $55ad: $a8
	ld   h, l                                        ; $55ae: $65
	ld   [hl], h                                     ; $55af: $74
	ld   d, d                                        ; $55b0: $52
	sbc  c                                           ; $55b1: $99
	ld   e, d                                        ; $55b2: $5a
	dec  c                                           ; $55b3: $0d
	ld   l, c                                        ; $55b4: $69
	and  c                                           ; $55b5: $a1
	ld   e, e                                        ; $55b6: $5b
	sub  l                                           ; $55b7: $95
	ld   d, h                                        ; $55b8: $54
	ld   a, l                                        ; $55b9: $7d
	dec  b                                           ; $55ba: $05
	pop  de                                          ; $55bb: $d1
	sbc  l                                           ; $55bc: $9d
	ld   h, l                                        ; $55bd: $65
	ld   e, l                                        ; $55be: $5d
	ld   a, b                                        ; $55bf: $78
	ld   d, d                                        ; $55c0: $52
	sbc  a                                           ; $55c1: $9f
	dec  c                                           ; $55c2: $0d
	nop                                              ; $55c3: $00
	ld   a, [bc]                                     ; $55c4: $0a
	ld   bc, $eeab                                   ; $55c5: $01 $ab $ee
	sub  b                                           ; $55c8: $90
	ld   h, c                                        ; $55c9: $61
	sbc  d                                           ; $55ca: $9a
	ld   e, c                                        ; $55cb: $59
	sub  a                                           ; $55cc: $97
	ld   l, c                                        ; $55cd: $69
	and  c                                           ; $55ce: $a1
	halt                                             ; $55cf: $76
	ld   d, h                                        ; $55d0: $54
	ld   a, c                                        ; $55d1: $79
	dec  c                                           ; $55d2: $0d
	inc  bc                                          ; $55d3: $03
	inc  de                                          ; $55d4: $13
	ld   [bc], a                                     ; $55d5: $02
	ld   d, b                                        ; $55d6: $50
	ld   h, a                                        ; $55d7: $67
	sbc  c                                           ; $55d8: $99
	ld   e, c                                        ; $55d9: $59
	sub  a                                           ; $55da: $97
	sbc  [hl]                                        ; $55db: $9e
	xor  [hl]                                        ; $55dc: $ae
	ldh  [$7d], a                                    ; $55dd: $e0 $7d
	ld   h, c                                        ; $55df: $61
	ld   h, c                                        ; $55e0: $61
	ld   [hl], l                                     ; $55e1: $75
	dec  c                                           ; $55e2: $0d
	inc  b                                           ; $55e3: $04
	rla                                              ; $55e4: $17
	ld   [hl], c                                     ; $55e5: $71
	ld   [hl], h                                     ; $55e6: $74
	ld   d, d                                        ; $55e7: $52
	ld   [hl], h                                     ; $55e8: $74
	ld   e, l                                        ; $55e9: $5d
	sbc  d                                           ; $55ea: $9a
	sbc  a                                           ; $55eb: $9f
	dec  c                                           ; $55ec: $0d
	nop                                              ; $55ed: $00
	ld   a, [bc]                                     ; $55ee: $0a
	dec  c                                           ; $55ef: $0d
	nop                                              ; $55f0: $00
	nop                                              ; $55f1: $00
	rrca                                             ; $55f2: $0f
	nop                                              ; $55f3: $00
	ld   bc, $0013                                   ; $55f4: $01 $13 $00
	add  hl, bc                                      ; $55f7: $09
	ld   e, d                                        ; $55f8: $5a
	inc  c                                           ; $55f9: $0c
	add  hl, bc                                      ; $55fa: $09
	inc  c                                           ; $55fb: $0c
	inc  b                                           ; $55fc: $04
	inc  c                                           ; $55fd: $0c
	add  hl, bc                                      ; $55fe: $09
	ld   bc, $ffff                                   ; $55ff: $01 $ff $ff
	rst  $38                                         ; $5602: $ff
	rst  $38                                         ; $5603: $ff
	rst  $38                                         ; $5604: $ff
	rst  $38                                         ; $5605: $ff
	rst  $38                                         ; $5606: $ff
	rst  $38                                         ; $5607: $ff
	rst  $38                                         ; $5608: $ff
	rst  $38                                         ; $5609: $ff
	rst  $38                                         ; $560a: $ff
	rst  $38                                         ; $560b: $ff
	rst  $38                                         ; $560c: $ff
	rst  $38                                         ; $560d: $ff
	dec  c                                           ; $560e: $0d
	nop                                              ; $560f: $00
	ld   a, [bc]                                     ; $5610: $0a
	rlca                                             ; $5611: $07
	rst  JumpTable                                         ; $5612: $df
	nop                                              ; $5613: $00
	inc  bc                                          ; $5614: $03
	ei                                               ; $5615: $fb
	ld   bc, $20ff                                   ; $5616: $01 $ff $20
	nop                                              ; $5619: $00
	rlca                                             ; $561a: $07
	ld   [bc], a                                     ; $561b: $02
	ld   [bc], a                                     ; $561c: $02
	inc  bc                                          ; $561d: $03
	ei                                               ; $561e: $fb
	ld   bc, $2001                                   ; $561f: $01 $01 $20
	nop                                              ; $5622: $00
	rlca                                             ; $5623: $07
	inc  d                                           ; $5624: $14
	inc  bc                                          ; $5625: $03
	inc  bc                                          ; $5626: $03
	ei                                               ; $5627: $fb
	ld   bc, $2002                                   ; $5628: $01 $02 $20
	nop                                              ; $562b: $00
	rlca                                             ; $562c: $07
	ld   l, [hl]                                     ; $562d: $6e
	ld   bc, $fb03                                   ; $562e: $01 $03 $fb
	ld   bc, $2003                                   ; $5631: $01 $03 $20
	nop                                              ; $5634: $00
	rlca                                             ; $5635: $07
	sub  [hl]                                        ; $5636: $96
	ld   [bc], a                                     ; $5637: $02
	inc  bc                                          ; $5638: $03
	ei                                               ; $5639: $fb
	ld   bc, $2004                                   ; $563a: $01 $04 $20
	nop                                              ; $563d: $00
	inc  de                                          ; $563e: $13
	db   $10                                         ; $563f: $10
	inc  e                                           ; $5640: $1c
	rrca                                             ; $5641: $0f
	ld   [bc], a                                     ; $5642: $02
	ld   [bc], a                                     ; $5643: $02
	ld   bc, $8c67                                   ; $5644: $01 $67 $8c
	ld   a, b                                        ; $5647: $78
	ld   d, d                                        ; $5648: $52
	rst  $38                                         ; $5649: $ff
	sbc  a                                           ; $564a: $9f
	dec  c                                           ; $564b: $0d
	nop                                              ; $564c: $00
	ld   a, [bc]                                     ; $564d: $0a
	ld   bc, $0804                                   ; $564e: $01 $04 $08
	ld   [bc], a                                     ; $5651: $02
	sub  d                                           ; $5652: $92
	ld   a, l                                        ; $5653: $7d
	inc  b                                           ; $5654: $04
	ld   c, c                                        ; $5655: $49
	halt                                             ; $5656: $76
	ld   e, c                                        ; $5657: $59
	inc  bc                                          ; $5658: $03
	ld   a, $03                                      ; $5659: $3e $03
	sub  e                                           ; $565b: $93
	ld   [hl], l                                     ; $565c: $75
	ld   e, e                                        ; $565d: $5b
	ld   l, l                                        ; $565e: $6d
	ld   e, d                                        ; $565f: $5a
	sbc  [hl]                                        ; $5660: $9e
	dec  c                                           ; $5661: $0d
	inc  bc                                          ; $5662: $03
	sbc  $9d                                         ; $5663: $de $9d
	sbc  b                                           ; $5665: $98
	ld   a, c                                        ; $5666: $79
	xor  [hl]                                        ; $5667: $ae
	ldh  [$7c], a                                    ; $5668: $e0 $7c
	ret  z                                           ; $566a: $c8

	ei                                               ; $566b: $fb
	ret  nz                                          ; $566c: $c0

	ld   e, d                                        ; $566d: $5a
	dec  c                                           ; $566e: $0d
	ld   h, c                                        ; $566f: $61
	sbc  l                                           ; $5670: $9d
	sbc  d                                           ; $5671: $9a
	ld   [hl], h                                     ; $5672: $74
	ld   h, l                                        ; $5673: $65
	adc  h                                           ; $5674: $8c
	ld   [hl], c                                     ; $5675: $71
	ld   l, l                                        ; $5676: $6d
	sbc  a                                           ; $5677: $9f
	dec  c                                           ; $5678: $0d
	nop                                              ; $5679: $00
	ld   a, [bc]                                     ; $567a: $0a
	ld   bc, $7166                                   ; $567b: $01 $66 $71
	ld   h, e                                        ; $567e: $63
	ld   d, d                                        ; $567f: $52
	ld   a, c                                        ; $5680: $79
	ld   [hl], a                                     ; $5681: $77
	ld   d, h                                        ; $5682: $54
	ld   a, b                                        ; $5683: $78
	ld   [hl], c                                     ; $5684: $71
	ld   [hl], h                                     ; $5685: $74
	ld   d, d                                        ; $5686: $52
	sbc  c                                           ; $5687: $99
	ld   e, c                                        ; $5688: $59
	ld   a, l                                        ; $5689: $7d
	dec  c                                           ; $568a: $0d
	ld   [bc], a                                     ; $568b: $02
	xor  d                                           ; $568c: $aa
	ld   [hl], l                                     ; $568d: $75
	ld   e, c                                        ; $568e: $59
	ld   e, l                                        ; $568f: $5d
	ld   a, c                                        ; $5690: $79
	and  c                                           ; $5691: $a1
	ld   h, l                                        ; $5692: $65
	ld   [hl], h                                     ; $5693: $74
	ld   e, b                                        ; $5694: $58
	ld   d, d                                        ; $5695: $52
	ld   [hl], h                                     ; $5696: $74
	ld   e, l                                        ; $5697: $5d
	sbc  d                                           ; $5698: $9a
	sbc  a                                           ; $5699: $9f
	dec  c                                           ; $569a: $0d
	nop                                              ; $569b: $00
	ld   a, [bc]                                     ; $569c: $0a
	ld   bc, $e0ae                                   ; $569d: $01 $ae $e0
	ld   a, l                                        ; $56a0: $7d
	ld   [hl], a                                     ; $56a1: $77
	and  c                                           ; $56a2: $a1
	ld   a, b                                        ; $56a3: $78
	ld   [bc], a                                     ; $56a4: $02
	jp   $9079                                       ; $56a5: $c3 $79 $90


	adc  a                                           ; $56a8: $8f
	ld   h, b                                        ; $56a9: $60
	ld   a, b                                        ; $56aa: $78
	ld   d, d                                        ; $56ab: $52
	dec  c                                           ; $56ac: $0d
	halt                                             ; $56ad: $76
	db   $dd                                         ; $56ae: $dd
	or   b                                           ; $56af: $b0
	ld   a, l                                        ; $56b0: $7d
	ld   [bc], a                                     ; $56b1: $02
	ld   hl, sp+$66                                  ; $56b2: $f8 $66
	ld   [hl], h                                     ; $56b4: $74
	ld   d, d                                        ; $56b5: $52
	sbc  c                                           ; $56b6: $99
	sub  [hl]                                        ; $56b7: $96
	sbc  a                                           ; $56b8: $9f
	dec  c                                           ; $56b9: $0d
	ld   [hl], l                                     ; $56ba: $75
	ld   a, l                                        ; $56bb: $7d
	sbc  [hl]                                        ; $56bc: $9e
	ld   e, a                                        ; $56bd: $5f
	and  c                                           ; $56be: $a1
	halt                                             ; $56bf: $76
	ld   d, h                                        ; $56c0: $54
	and  b                                           ; $56c1: $a0
	ld   [bc], a                                     ; $56c2: $02
	pop  bc                                          ; $56c3: $c1
	inc  b                                           ; $56c4: $04
	rla                                              ; $56c5: $17
	ld   h, a                                        ; $56c6: $67
	sbc  c                                           ; $56c7: $99
	sbc  a                                           ; $56c8: $9f
	dec  c                                           ; $56c9: $0d
	nop                                              ; $56ca: $00
	ld   a, [bc]                                     ; $56cb: $0a
	nop                                              ; $56cc: $00
	inc  de                                          ; $56cd: $13
	db   $10                                         ; $56ce: $10
	inc  e                                           ; $56cf: $1c
	rrca                                             ; $56d0: $0f
	ld   [bc], a                                     ; $56d1: $02
	ld   [bc], a                                     ; $56d2: $02
	ld   bc, $8c67                                   ; $56d3: $01 $67 $8c
	ld   a, b                                        ; $56d6: $78
	ld   d, d                                        ; $56d7: $52
	rst  $38                                         ; $56d8: $ff
	sbc  a                                           ; $56d9: $9f
	dec  c                                           ; $56da: $0d
	nop                                              ; $56db: $00
	ld   a, [bc]                                     ; $56dc: $0a
	ld   bc, $0804                                   ; $56dd: $01 $04 $08
	ld   [bc], a                                     ; $56e0: $02
	sub  d                                           ; $56e1: $92
	ld   a, l                                        ; $56e2: $7d
	ld   a, b                                        ; $56e3: $78
	and  c                                           ; $56e4: $a1
	halt                                             ; $56e5: $76
	ld   e, c                                        ; $56e6: $59
	inc  bc                                          ; $56e7: $03
	ld   a, $03                                      ; $56e8: $3e $03
	sub  e                                           ; $56ea: $93
	ld   [hl], l                                     ; $56eb: $75
	ld   e, e                                        ; $56ec: $5b
	ld   l, l                                        ; $56ed: $6d
	ld   e, d                                        ; $56ee: $5a
	sbc  [hl]                                        ; $56ef: $9e
	dec  c                                           ; $56f0: $0d
	inc  bc                                          ; $56f1: $03
	sbc  $9d                                         ; $56f2: $de $9d
	sbc  b                                           ; $56f4: $98
	ld   a, c                                        ; $56f5: $79
	xor  [hl]                                        ; $56f6: $ae
	ldh  [$7c], a                                    ; $56f7: $e0 $7c
	ret  z                                           ; $56f9: $c8

	ei                                               ; $56fa: $fb
	ret  nz                                          ; $56fb: $c0

	ld   a, h                                        ; $56fc: $7c
	dec  c                                           ; $56fd: $0d
	ld   [bc], a                                     ; $56fe: $02
	jr   nz, jr_041_5705                             ; $56ff: $20 $04

	sub  l                                           ; $5701: $95
	ld   e, d                                        ; $5702: $5a
	ld   h, c                                        ; $5703: $61
	sbc  l                                           ; $5704: $9d

jr_041_5705:
	sbc  d                                           ; $5705: $9a
	ld   [hl], h                                     ; $5706: $74
	ld   h, l                                        ; $5707: $65
	adc  h                                           ; $5708: $8c
	ld   [hl], c                                     ; $5709: $71
	ld   l, l                                        ; $570a: $6d
	sbc  a                                           ; $570b: $9f
	dec  c                                           ; $570c: $0d
	nop                                              ; $570d: $00
	ld   a, [bc]                                     ; $570e: $0a
	ld   bc, $7166                                   ; $570f: $01 $66 $71
	ld   h, e                                        ; $5712: $63
	ld   d, d                                        ; $5713: $52
	ld   a, c                                        ; $5714: $79
	ld   [hl], a                                     ; $5715: $77
	ld   d, h                                        ; $5716: $54
	ld   a, b                                        ; $5717: $78
	ld   [hl], c                                     ; $5718: $71
	ld   [hl], h                                     ; $5719: $74
	ld   d, d                                        ; $571a: $52
	sbc  c                                           ; $571b: $99
	ld   e, c                                        ; $571c: $59
	ld   a, l                                        ; $571d: $7d
	dec  c                                           ; $571e: $0d
	ld   [bc], a                                     ; $571f: $02
	xor  d                                           ; $5720: $aa
	ld   [hl], l                                     ; $5721: $75
	ld   e, c                                        ; $5722: $59
	ld   e, l                                        ; $5723: $5d
	ld   a, c                                        ; $5724: $79
	and  c                                           ; $5725: $a1
	ld   h, l                                        ; $5726: $65
	ld   [hl], h                                     ; $5727: $74
	ld   e, b                                        ; $5728: $58
	ld   d, d                                        ; $5729: $52
	ld   [hl], h                                     ; $572a: $74
	ld   e, l                                        ; $572b: $5d
	sbc  d                                           ; $572c: $9a
	sbc  a                                           ; $572d: $9f
	dec  c                                           ; $572e: $0d
	nop                                              ; $572f: $00
	ld   a, [bc]                                     ; $5730: $0a
	ld   bc, $e0ae                                   ; $5731: $01 $ae $e0
	ld   a, l                                        ; $5734: $7d
	ld   [hl], a                                     ; $5735: $77
	and  c                                           ; $5736: $a1
	ld   a, b                                        ; $5737: $78
	ld   [bc], a                                     ; $5738: $02
	jp   $9079                                       ; $5739: $c3 $79 $90


	adc  a                                           ; $573c: $8f
	ld   h, b                                        ; $573d: $60
	ld   a, b                                        ; $573e: $78
	ld   d, d                                        ; $573f: $52
	dec  c                                           ; $5740: $0d
	halt                                             ; $5741: $76
	db   $dd                                         ; $5742: $dd
	or   b                                           ; $5743: $b0
	ld   a, l                                        ; $5744: $7d
	ld   [bc], a                                     ; $5745: $02
	ld   hl, sp+$66                                  ; $5746: $f8 $66
	ld   [hl], h                                     ; $5748: $74
	ld   d, d                                        ; $5749: $52
	sbc  c                                           ; $574a: $99
	sub  [hl]                                        ; $574b: $96
	sbc  a                                           ; $574c: $9f
	dec  c                                           ; $574d: $0d
	ld   [hl], l                                     ; $574e: $75
	ld   a, l                                        ; $574f: $7d
	sbc  [hl]                                        ; $5750: $9e
	ld   e, a                                        ; $5751: $5f
	and  c                                           ; $5752: $a1
	halt                                             ; $5753: $76
	ld   d, h                                        ; $5754: $54
	and  b                                           ; $5755: $a0
	ld   [bc], a                                     ; $5756: $02
	pop  bc                                          ; $5757: $c1
	inc  b                                           ; $5758: $04
	rla                                              ; $5759: $17
	ld   h, a                                        ; $575a: $67
	sbc  c                                           ; $575b: $99
	sbc  a                                           ; $575c: $9f
	dec  c                                           ; $575d: $0d
	nop                                              ; $575e: $00
	ld   a, [bc]                                     ; $575f: $0a
	nop                                              ; $5760: $00
	inc  de                                          ; $5761: $13
	db   $10                                         ; $5762: $10
	inc  e                                           ; $5763: $1c
	rrca                                             ; $5764: $0f
	ld   [bc], a                                     ; $5765: $02
	ld   [bc], a                                     ; $5766: $02
	ld   bc, $8c67                                   ; $5767: $01 $67 $8c
	ld   a, b                                        ; $576a: $78
	ld   d, d                                        ; $576b: $52
	rst  $38                                         ; $576c: $ff
	sbc  a                                           ; $576d: $9f
	dec  c                                           ; $576e: $0d
	nop                                              ; $576f: $00
	ld   a, [bc]                                     ; $5770: $0a
	ld   bc, $0804                                   ; $5771: $01 $04 $08
	ld   [bc], a                                     ; $5774: $02
	sub  d                                           ; $5775: $92
	ld   a, l                                        ; $5776: $7d
	ld   a, b                                        ; $5777: $78
	and  c                                           ; $5778: $a1
	halt                                             ; $5779: $76
	ld   e, c                                        ; $577a: $59
	inc  bc                                          ; $577b: $03
	ld   a, $03                                      ; $577c: $3e $03
	sub  e                                           ; $577e: $93
	ld   [hl], l                                     ; $577f: $75
	ld   e, e                                        ; $5780: $5b
	ld   l, l                                        ; $5781: $6d
	ld   e, d                                        ; $5782: $5a
	sbc  [hl]                                        ; $5783: $9e
	dec  c                                           ; $5784: $0d
	inc  bc                                          ; $5785: $03
	sbc  $9d                                         ; $5786: $de $9d
	sbc  b                                           ; $5788: $98
	ld   a, c                                        ; $5789: $79
	xor  [hl]                                        ; $578a: $ae
	ldh  [$7c], a                                    ; $578b: $e0 $7c
	ret  z                                           ; $578d: $c8

	ei                                               ; $578e: $fb
	ret  nz                                          ; $578f: $c0

	ld   a, h                                        ; $5790: $7c
	dec  c                                           ; $5791: $0d
	ld   [bc], a                                     ; $5792: $02
	jr   nz, jr_041_5799                             ; $5793: $20 $04

	sub  l                                           ; $5795: $95
	ld   e, d                                        ; $5796: $5a
	ld   h, c                                        ; $5797: $61
	sbc  l                                           ; $5798: $9d

jr_041_5799:
	sbc  d                                           ; $5799: $9a
	ld   [hl], h                                     ; $579a: $74
	ld   h, l                                        ; $579b: $65
	adc  h                                           ; $579c: $8c
	ld   [hl], c                                     ; $579d: $71
	ld   l, l                                        ; $579e: $6d
	sbc  a                                           ; $579f: $9f
	dec  c                                           ; $57a0: $0d
	nop                                              ; $57a1: $00
	ld   a, [bc]                                     ; $57a2: $0a
	ld   bc, $7166                                   ; $57a3: $01 $66 $71
	ld   h, e                                        ; $57a6: $63
	ld   d, d                                        ; $57a7: $52
	ld   a, c                                        ; $57a8: $79
	ld   [hl], a                                     ; $57a9: $77
	ld   d, h                                        ; $57aa: $54
	ld   a, b                                        ; $57ab: $78
	ld   [hl], c                                     ; $57ac: $71
	ld   [hl], h                                     ; $57ad: $74
	ld   d, d                                        ; $57ae: $52
	sbc  c                                           ; $57af: $99
	ld   e, c                                        ; $57b0: $59
	ld   a, l                                        ; $57b1: $7d
	dec  c                                           ; $57b2: $0d
	ld   [bc], a                                     ; $57b3: $02
	xor  d                                           ; $57b4: $aa
	ld   [hl], l                                     ; $57b5: $75
	ld   e, c                                        ; $57b6: $59
	ld   e, l                                        ; $57b7: $5d
	ld   a, c                                        ; $57b8: $79
	and  c                                           ; $57b9: $a1
	ld   h, l                                        ; $57ba: $65
	ld   [hl], h                                     ; $57bb: $74
	ld   e, b                                        ; $57bc: $58
	ld   d, d                                        ; $57bd: $52
	ld   [hl], h                                     ; $57be: $74
	ld   e, l                                        ; $57bf: $5d
	sbc  d                                           ; $57c0: $9a
	sbc  a                                           ; $57c1: $9f
	dec  c                                           ; $57c2: $0d
	nop                                              ; $57c3: $00
	ld   a, [bc]                                     ; $57c4: $0a
	ld   bc, $e0ae                                   ; $57c5: $01 $ae $e0
	ld   a, l                                        ; $57c8: $7d
	ld   [hl], a                                     ; $57c9: $77
	and  c                                           ; $57ca: $a1
	ld   a, b                                        ; $57cb: $78
	ld   [bc], a                                     ; $57cc: $02
	jp   $9079                                       ; $57cd: $c3 $79 $90


	adc  a                                           ; $57d0: $8f
	ld   h, b                                        ; $57d1: $60
	ld   a, b                                        ; $57d2: $78
	ld   d, d                                        ; $57d3: $52
	dec  c                                           ; $57d4: $0d
	halt                                             ; $57d5: $76
	db   $dd                                         ; $57d6: $dd
	or   b                                           ; $57d7: $b0
	ld   a, l                                        ; $57d8: $7d
	ld   [bc], a                                     ; $57d9: $02
	ld   hl, sp+$66                                  ; $57da: $f8 $66
	ld   [hl], h                                     ; $57dc: $74
	ld   d, d                                        ; $57dd: $52
	sbc  c                                           ; $57de: $99
	sub  [hl]                                        ; $57df: $96
	sbc  a                                           ; $57e0: $9f
	dec  c                                           ; $57e1: $0d
	ld   [hl], l                                     ; $57e2: $75
	ld   a, l                                        ; $57e3: $7d
	sbc  [hl]                                        ; $57e4: $9e
	ld   e, a                                        ; $57e5: $5f
	and  c                                           ; $57e6: $a1
	halt                                             ; $57e7: $76
	ld   d, h                                        ; $57e8: $54
	and  b                                           ; $57e9: $a0
	ld   [bc], a                                     ; $57ea: $02
	pop  bc                                          ; $57eb: $c1
	inc  b                                           ; $57ec: $04
	rla                                              ; $57ed: $17
	ld   h, a                                        ; $57ee: $67
	sbc  c                                           ; $57ef: $99
	sbc  a                                           ; $57f0: $9f
	dec  c                                           ; $57f1: $0d
	nop                                              ; $57f2: $00
	ld   a, [bc]                                     ; $57f3: $0a
	nop                                              ; $57f4: $00
	inc  de                                          ; $57f5: $13
	db   $10                                         ; $57f6: $10
	inc  e                                           ; $57f7: $1c
	rrca                                             ; $57f8: $0f
	ld   [bc], a                                     ; $57f9: $02
	ld   [bc], a                                     ; $57fa: $02
	ld   bc, $8c67                                   ; $57fb: $01 $67 $8c
	ld   a, b                                        ; $57fe: $78
	ld   d, d                                        ; $57ff: $52
	rst  $38                                         ; $5800: $ff
	sbc  a                                           ; $5801: $9f
	dec  c                                           ; $5802: $0d
	nop                                              ; $5803: $00
	ld   a, [bc]                                     ; $5804: $0a
	ld   bc, $0804                                   ; $5805: $01 $04 $08
	ld   [bc], a                                     ; $5808: $02
	sub  d                                           ; $5809: $92
	ld   a, l                                        ; $580a: $7d
	ld   a, b                                        ; $580b: $78
	and  c                                           ; $580c: $a1
	halt                                             ; $580d: $76
	ld   e, c                                        ; $580e: $59
	inc  bc                                          ; $580f: $03
	ld   a, $03                                      ; $5810: $3e $03
	sub  e                                           ; $5812: $93
	ld   [hl], l                                     ; $5813: $75
	ld   e, e                                        ; $5814: $5b
	ld   l, l                                        ; $5815: $6d
	ld   e, d                                        ; $5816: $5a
	sbc  [hl]                                        ; $5817: $9e
	dec  c                                           ; $5818: $0d
	inc  bc                                          ; $5819: $03
	sbc  $9d                                         ; $581a: $de $9d
	sbc  b                                           ; $581c: $98
	ld   a, c                                        ; $581d: $79
	xor  [hl]                                        ; $581e: $ae
	ldh  [$7c], a                                    ; $581f: $e0 $7c
	ret  z                                           ; $5821: $c8

	ei                                               ; $5822: $fb
	ret  nz                                          ; $5823: $c0

	ld   a, h                                        ; $5824: $7c
	dec  c                                           ; $5825: $0d
	ld   [bc], a                                     ; $5826: $02
	jr   nz, jr_041_582d                             ; $5827: $20 $04

	sub  l                                           ; $5829: $95
	ld   e, d                                        ; $582a: $5a
	ld   h, c                                        ; $582b: $61
	sbc  l                                           ; $582c: $9d

jr_041_582d:
	sbc  d                                           ; $582d: $9a
	ld   [hl], h                                     ; $582e: $74
	ld   h, l                                        ; $582f: $65
	adc  h                                           ; $5830: $8c
	ld   [hl], c                                     ; $5831: $71
	ld   l, l                                        ; $5832: $6d
	sbc  a                                           ; $5833: $9f
	dec  c                                           ; $5834: $0d
	nop                                              ; $5835: $00
	ld   a, [bc]                                     ; $5836: $0a
	ld   bc, $5a80                                   ; $5837: $01 $80 $5a
	ld   d, d                                        ; $583a: $52
	ld   a, l                                        ; $583b: $7d
	ld   l, e                                        ; $583c: $6b
	sbc  d                                           ; $583d: $9a
	adc  c                                           ; $583e: $89
	ld   [hl], a                                     ; $583f: $77
	inc  b                                           ; $5840: $04
	ld   c, $5b                                      ; $5841: $0e $5b
	ld   e, l                                        ; $5843: $5d
	ld   a, b                                        ; $5844: $78
	ld   d, d                                        ; $5845: $52
	ld   e, d                                        ; $5846: $5a
	dec  c                                           ; $5847: $0d
	ld   d, d                                        ; $5848: $52
	ld   l, a                                        ; $5849: $6f
	ld   e, b                                        ; $584a: $58
	ld   d, h                                        ; $584b: $54
	ld   [bc], a                                     ; $584c: $02
	xor  d                                           ; $584d: $aa
	ld   [hl], l                                     ; $584e: $75
	ld   e, c                                        ; $584f: $59
	ld   e, l                                        ; $5850: $5d
	ld   a, c                                        ; $5851: $79
	and  c                                           ; $5852: $a1
	ld   h, l                                        ; $5853: $65
	ld   [hl], h                                     ; $5854: $74
	dec  c                                           ; $5855: $0d
	ld   e, b                                        ; $5856: $58
	ld   d, d                                        ; $5857: $52
	ld   [hl], h                                     ; $5858: $74
	ld   e, l                                        ; $5859: $5d
	sbc  d                                           ; $585a: $9a
	sbc  a                                           ; $585b: $9f
	dec  c                                           ; $585c: $0d
	nop                                              ; $585d: $00
	ld   a, [bc]                                     ; $585e: $0a
	ld   bc, $7d75                                   ; $585f: $01 $75 $7d
	sbc  [hl]                                        ; $5862: $9e
	ld   e, a                                        ; $5863: $5f
	and  c                                           ; $5864: $a1
	halt                                             ; $5865: $76
	ld   d, h                                        ; $5866: $54
	and  b                                           ; $5867: $a0
	ld   [bc], a                                     ; $5868: $02
	pop  bc                                          ; $5869: $c1
	inc  b                                           ; $586a: $04
	rla                                              ; $586b: $17
	ld   h, a                                        ; $586c: $67
	sbc  c                                           ; $586d: $99
	sbc  a                                           ; $586e: $9f
	dec  c                                           ; $586f: $0d
	nop                                              ; $5870: $00
	ld   a, [bc]                                     ; $5871: $0a
	nop                                              ; $5872: $00
	inc  de                                          ; $5873: $13
	rrca                                             ; $5874: $0f
	inc  e                                           ; $5875: $1c
	rrca                                             ; $5876: $0f
	ld   bc, $0101                                   ; $5877: $01 $01 $01
	add  e                                           ; $587a: $83
	ld   d, e                                        ; $587b: $53
	sbc  [hl]                                        ; $587c: $9e
	ld   [bc], a                                     ; $587d: $02
	and  l                                           ; $587e: $a5
	ld   [bc], a                                     ; $587f: $02
	sub  e                                           ; $5880: $93
	ld   a, l                                        ; $5881: $7d
	ld   a, b                                        ; $5882: $78
	and  c                                           ; $5883: $a1
	halt                                             ; $5884: $76
	ld   e, c                                        ; $5885: $59
	inc  bc                                          ; $5886: $03
	ld   c, [hl]                                     ; $5887: $4e
	dec  b                                           ; $5888: $05
	ld   b, $67                                      ; $5889: $06 $67
	sbc  c                                           ; $588b: $99
	dec  c                                           ; $588c: $0d
	ld   [bc], a                                     ; $588d: $02
	jp   Jump_041_755a                               ; $588e: $c3 $5a $75


	ld   e, e                                        ; $5891: $5b
	ld   l, l                                        ; $5892: $6d
	sub  [hl]                                        ; $5893: $96
	sbc  a                                           ; $5894: $9f
	dec  c                                           ; $5895: $0d
	nop                                              ; $5896: $00
	ld   a, [bc]                                     ; $5897: $0a
	ld   bc, $6f90                                   ; $5898: $01 $90 $6f
	sbc  e                                           ; $589b: $9b
	and  c                                           ; $589c: $a1
	sbc  [hl]                                        ; $589d: $9e
	xor  [hl]                                        ; $589e: $ae
	ldh  [$7c], a                                    ; $589f: $e0 $7c
	ret  z                                           ; $58a1: $c8

	ei                                               ; $58a2: $fb
	ret  nz                                          ; $58a3: $c0

	sub  b                                           ; $58a4: $90
	dec  c                                           ; $58a5: $0d
	add  h                                           ; $58a6: $84
	ld   h, [hl]                                     ; $58a7: $66
	ld   l, [hl]                                     ; $58a8: $6e
	sbc  a                                           ; $58a9: $9f
	dec  c                                           ; $58aa: $0d
	nop                                              ; $58ab: $00
	ld   a, [bc]                                     ; $58ac: $0a
	ld   bc, $5490                                   ; $58ad: $01 $90 $54
	inc  bc                                          ; $58b0: $03
	sub  h                                           ; $58b1: $94
	inc  b                                           ; $58b2: $04
	sbc  [hl]                                        ; $58b3: $9e
	ld   a, h                                        ; $58b4: $7c
	add  [hl]                                        ; $58b5: $86
	sub  d                                           ; $58b6: $92
	ld   a, c                                        ; $58b7: $79
	sub  b                                           ; $58b8: $90
	ld   [hl], a                                     ; $58b9: $77
	ld   [hl], c                                     ; $58ba: $71
	ld   [hl], h                                     ; $58bb: $74
	sub  b                                           ; $58bc: $90
	dec  c                                           ; $58bd: $0d
	ld   l, [hl]                                     ; $58be: $6e
	ld   d, d                                        ; $58bf: $52
	ld   h, [hl]                                     ; $58c0: $66
	sub  l                                           ; $58c1: $95
	ld   d, h                                        ; $58c2: $54
	add  h                                           ; $58c3: $84
	ld   l, [hl]                                     ; $58c4: $6e
	sub  [hl]                                        ; $58c5: $96
	sbc  a                                           ; $58c6: $9f
	dec  c                                           ; $58c7: $0d
	nop                                              ; $58c8: $00
	ld   a, [bc]                                     ; $58c9: $0a
	ld   bc, $7d75                                   ; $58ca: $01 $75 $7d
	sbc  [hl]                                        ; $58cd: $9e
	ld   e, a                                        ; $58ce: $5f
	and  c                                           ; $58cf: $a1
	halt                                             ; $58d0: $76
	ld   d, h                                        ; $58d1: $54
	and  b                                           ; $58d2: $a0
	ld   [bc], a                                     ; $58d3: $02
	pop  bc                                          ; $58d4: $c1
	inc  b                                           ; $58d5: $04
	rla                                              ; $58d6: $17
	ld   h, a                                        ; $58d7: $67
	sbc  c                                           ; $58d8: $99
	sbc  a                                           ; $58d9: $9f
	dec  c                                           ; $58da: $0d
	nop                                              ; $58db: $00
	ld   a, [bc]                                     ; $58dc: $0a
	nop                                              ; $58dd: $00
	ld   c, $c5                                      ; $58de: $0e $c5
	inc  e                                           ; $58e0: $1c
	dec  b                                           ; $58e1: $05
	nop                                              ; $58e2: $00
	nop                                              ; $58e3: $00
	inc  de                                          ; $58e4: $13
	inc  c                                           ; $58e5: $0c
	ld   [bc], a                                     ; $58e6: $02
	ld   bc, $4f50                                   ; $58e7: $01 $50 $4f
	sbc  [hl]                                        ; $58ea: $9e
	ld   d, b                                        ; $58eb: $50
	and  c                                           ; $58ec: $a1
	ld   l, l                                        ; $58ed: $6d
	ld   e, c                                        ; $58ee: $59
	sbc  a                                           ; $58ef: $9f
	dec  c                                           ; $58f0: $0d
	nop                                              ; $58f1: $00
	inc  e                                           ; $58f2: $1c
	dec  b                                           ; $58f3: $05
	rlca                                             ; $58f4: $07
	rlca                                             ; $58f5: $07
	ld   bc, $5252                                   ; $58f6: $01 $52 $52
	halt                                             ; $58f9: $76
	ld   h, c                                        ; $58fa: $61
	sbc  e                                           ; $58fb: $9b
	ld   a, c                                        ; $58fc: $79
	ld   e, e                                        ; $58fd: $5b
	ld   l, l                                        ; $58fe: $6d
	ld   a, b                                        ; $58ff: $78
	ld   c, a                                        ; $5900: $4f
	sbc  a                                           ; $5901: $9f
	dec  c                                           ; $5902: $0d
	nop                                              ; $5903: $00
	ld   a, [bc]                                     ; $5904: $0a
	ld   bc, $7266                                   ; $5905: $01 $66 $72
	ld   a, l                                        ; $5908: $7d
	ld   d, b                                        ; $5909: $50
	and  c                                           ; $590a: $a1
	ld   l, l                                        ; $590b: $6d
	ld   a, h                                        ; $590c: $7c
	cp   h                                           ; $590d: $bc
	ei                                               ; $590e: $fb
	rst  $10                                         ; $590f: $d7
	ret  z                                           ; $5910: $c8

	ei                                               ; $5911: $fb
	ret  nz                                          ; $5912: $c0

	ld   a, c                                        ; $5913: $79
	dec  c                                           ; $5914: $0d
	ld   h, [hl]                                     ; $5915: $66
	ld   h, b                                        ; $5916: $60
	and  c                                           ; $5917: $a1
	ld   a, [hl]                                     ; $5918: $7e
	ld   e, l                                        ; $5919: $5d
	ld   l, [hl]                                     ; $591a: $6e
	and  c                                           ; $591b: $a1
	ld   e, d                                        ; $591c: $5a
	ld   h, l                                        ; $591d: $65
	ld   e, c                                        ; $591e: $59
	ld   e, a                                        ; $591f: $5f
	sub  a                                           ; $5920: $97
	sbc  d                                           ; $5921: $9a
	ld   [hl], h                                     ; $5922: $74
	dec  c                                           ; $5923: $0d
	sub  b                                           ; $5924: $90
	ld   d, h                                        ; $5925: $54
	ld   l, l                                        ; $5926: $6d
	and  c                                           ; $5927: $a1
	sub  d                                           ; $5928: $92
	sbc  a                                           ; $5929: $9f
	dec  c                                           ; $592a: $0d
	nop                                              ; $592b: $00
	ld   a, [bc]                                     ; $592c: $0a
	ld   bc, $a502                                   ; $592d: $01 $02 $a5
	ld   e, c                                        ; $5930: $59
	sub  a                                           ; $5931: $97
	ld   [hl], h                                     ; $5932: $74
	ld   [hl], c                                     ; $5933: $71
	ld   e, e                                        ; $5934: $5b
	sub  l                                           ; $5935: $95
	ld   a, c                                        ; $5936: $79
	ld   d, d                                        ; $5937: $52
	ld   e, l                                        ; $5938: $5d
	and  c                                           ; $5939: $a1
	sub  d                                           ; $593a: $92
	ld   e, a                                        ; $593b: $5f
	ld   [hl], a                                     ; $593c: $77
	dec  c                                           ; $593d: $0d
	ld   e, c                                        ; $593e: $59
	ld   e, l                                        ; $593f: $5d
	sbc  b                                           ; $5940: $98
	ld   [hl], d                                     ; $5941: $72
	ld   [hl], h                                     ; $5942: $74
	ld   e, e                                        ; $5943: $5b
	ld   a, c                                        ; $5944: $79
	ld   a, l                                        ; $5945: $7d
	dec  b                                           ; $5946: $05
	ld   a, [hl+]                                    ; $5947: $2a
	inc  b                                           ; $5948: $04
	sbc  [hl]                                        ; $5949: $9e
	dec  b                                           ; $594a: $05
	ld   a, [hl+]                                    ; $594b: $2a
	inc  b                                           ; $594c: $04
	sbc  [hl]                                        ; $594d: $9e
	sub  d                                           ; $594e: $92
	sbc  a                                           ; $594f: $9f
	dec  c                                           ; $5950: $0d
	nop                                              ; $5951: $00
	ld   a, [bc]                                     ; $5952: $0a
	ld   bc, $6f90                                   ; $5953: $01 $90 $6f
	sbc  e                                           ; $5956: $9b
	and  c                                           ; $5957: $a1
	ld   h, e                                        ; $5958: $63
	ld   d, d                                        ; $5959: $52
	ld   l, d                                        ; $595a: $6a
	and  c                                           ; $595b: $a1
	and  b                                           ; $595c: $a0
	ld   [hl], d                                     ; $595d: $72
	ld   e, l                                        ; $595e: $5d
	ld   h, a                                        ; $595f: $67
	dec  c                                           ; $5960: $0d
	ld   [hl], d                                     ; $5961: $72
	sub  b                                           ; $5962: $90
	sbc  b                                           ; $5963: $98
	sub  d                                           ; $5964: $92
	ld   e, c                                        ; $5965: $59
	sub  a                                           ; $5966: $97
	sbc  [hl]                                        ; $5967: $9e
	ld   d, b                                        ; $5968: $50
	and  c                                           ; $5969: $a1
	ld   l, l                                        ; $596a: $6d
	ld   a, l                                        ; $596b: $7d
	dec  c                                           ; $596c: $0d
	ld   h, c                                        ; $596d: $61
	ld   h, c                                        ; $596e: $61
	ld   [hl], l                                     ; $596f: $75
	adc  h                                           ; $5970: $8c
	ld   [hl], c                                     ; $5971: $71
	ld   [hl], h                                     ; $5972: $74
	ld   [hl], h                                     ; $5973: $74
	sub  d                                           ; $5974: $92
	sbc  a                                           ; $5975: $9f
	dec  c                                           ; $5976: $0d
	nop                                              ; $5977: $00
	ld   a, [bc]                                     ; $5978: $0a
	dec  c                                           ; $5979: $0d
	nop                                              ; $597a: $00
	nop                                              ; $597b: $00
	rrca                                             ; $597c: $0f
	nop                                              ; $597d: $00
	ld   bc, $0013                                   ; $597e: $01 $13 $00
	add  hl, bc                                      ; $5981: $09
	ld   e, d                                        ; $5982: $5a
	ld   bc, $ffff                                   ; $5983: $01 $ff $ff
	rst  $38                                         ; $5986: $ff
	rst  $38                                         ; $5987: $ff
	rst  $38                                         ; $5988: $ff
	rst  $38                                         ; $5989: $ff
	rst  $38                                         ; $598a: $ff
	rst  $38                                         ; $598b: $ff
	rst  $38                                         ; $598c: $ff
	rst  $38                                         ; $598d: $ff
	rst  $38                                         ; $598e: $ff
	rst  $38                                         ; $598f: $ff
	rst  $38                                         ; $5990: $ff
	rst  $38                                         ; $5991: $ff
	dec  c                                           ; $5992: $0d
	nop                                              ; $5993: $00
	ld   a, [bc]                                     ; $5994: $0a
	rlca                                             ; $5995: $07
	ld   h, e                                        ; $5996: $63
	inc  b                                           ; $5997: $04
	inc  bc                                          ; $5998: $03
	ei                                               ; $5999: $fb
	ld   bc, $20ff                                   ; $599a: $01 $ff $20
	nop                                              ; $599d: $00
	rlca                                             ; $599e: $07
	dec  [hl]                                        ; $599f: $35
	dec  b                                           ; $59a0: $05
	inc  bc                                          ; $59a1: $03
	ei                                               ; $59a2: $fb
	ld   bc, $2001                                   ; $59a3: $01 $01 $20
	nop                                              ; $59a6: $00
	rlca                                             ; $59a7: $07
	push af                                          ; $59a8: $f5
	dec  b                                           ; $59a9: $05
	inc  bc                                          ; $59aa: $03
	ei                                               ; $59ab: $fb
	ld   bc, $2002                                   ; $59ac: $01 $02 $20
	nop                                              ; $59af: $00
	rlca                                             ; $59b0: $07
	push de                                          ; $59b1: $d5
	inc  b                                           ; $59b2: $04
	inc  bc                                          ; $59b3: $03
	ei                                               ; $59b4: $fb
	ld   bc, $2003                                   ; $59b5: $01 $03 $20
	nop                                              ; $59b8: $00
	rlca                                             ; $59b9: $07
	sub  l                                           ; $59ba: $95
	dec  b                                           ; $59bb: $05
	inc  bc                                          ; $59bc: $03
	ei                                               ; $59bd: $fb
	ld   bc, $2004                                   ; $59be: $01 $04 $20
	nop                                              ; $59c1: $00
	inc  c                                           ; $59c2: $0c
	add  hl, bc                                      ; $59c3: $09
	inc  de                                          ; $59c4: $13
	db   $10                                         ; $59c5: $10
	inc  e                                           ; $59c6: $1c
	dec  b                                           ; $59c7: $05
	jr   nz, jr_041_59d2                             ; $59c8: $20 $08

	ld   bc, $6f50                                   ; $59ca: $01 $50 $6f
	sub  c                                           ; $59cd: $91
	db   $fc                                         ; $59ce: $fc
	sbc  [hl]                                        ; $59cf: $9e
	adc  h                                           ; $59d0: $8c
	ld   a, c                                        ; $59d1: $79

jr_041_59d2:
	ld   d, b                                        ; $59d2: $50
	sbc  l                                           ; $59d3: $9d
	ld   a, b                                        ; $59d4: $78
	and  c                                           ; $59d5: $a1
	ld   l, [hl]                                     ; $59d6: $6e
	db   $fc                                         ; $59d7: $fc
	sbc  a                                           ; $59d8: $9f
	dec  c                                           ; $59d9: $0d
	nop                                              ; $59da: $00
	ld   a, [bc]                                     ; $59db: $0a
	ld   bc, $8c67                                   ; $59dc: $01 $67 $8c
	and  c                                           ; $59df: $a1
	ld   a, b                                        ; $59e0: $78
	ld   c, a                                        ; $59e1: $4f
	db   $fc                                         ; $59e2: $fc
	sbc  a                                           ; $59e3: $9f
	dec  c                                           ; $59e4: $0d
	ld   h, h                                        ; $59e5: $64
	and  c                                           ; $59e6: $a1
	ld   a, e                                        ; $59e7: $7b
	and  c                                           ; $59e8: $a1
	sub  d                                           ; $59e9: $92
	ld   e, a                                        ; $59ea: $5f
	ld   [hl], a                                     ; $59eb: $77
	cp   h                                           ; $59ec: $bc
	ei                                               ; $59ed: $fb
	rst  $10                                         ; $59ee: $d7
	ret  z                                           ; $59ef: $c8

	ei                                               ; $59f0: $fb
	ret  nz                                          ; $59f1: $c0

	ld   a, l                                        ; $59f2: $7d
	dec  c                                           ; $59f3: $0d
	ld   h, c                                        ; $59f4: $61
	sbc  l                                           ; $59f5: $9d
	sbc  d                                           ; $59f6: $9a
	ld   [hl], h                                     ; $59f7: $74
	ld   h, l                                        ; $59f8: $65
	sub  b                                           ; $59f9: $90
	ld   l, l                                        ; $59fa: $6d
	sbc  l                                           ; $59fb: $9d
	sbc  a                                           ; $59fc: $9f
	dec  c                                           ; $59fd: $0d
	nop                                              ; $59fe: $00
	ld   a, [bc]                                     ; $59ff: $0a
	ld   bc, $4f8c                                   ; $5a00: $01 $8c $4f
	sbc  [hl]                                        ; $5a03: $9e
	ld   h, c                                        ; $5a04: $61
	sbc  d                                           ; $5a05: $9a
	ld   a, c                                        ; $5a06: $79
	ld   h, c                                        ; $5a07: $61
	sbc  b                                           ; $5a08: $98
	and  c                                           ; $5a09: $a1
	halt                                             ; $5a0a: $76
	dec  c                                           ; $5a0b: $0d
	ld   h, l                                        ; $5a0c: $65
	ld   [hl], c                                     ; $5a0d: $71
	ld   a, a                                        ; $5a0e: $7f
	ld   d, d                                        ; $5a0f: $52
	ld   a, l                                        ; $5a10: $7d
	ld   l, c                                        ; $5a11: $69
	ld   d, d                                        ; $5a12: $52
	ld   h, c                                        ; $5a13: $61
	ld   d, h                                        ; $5a14: $54
	ld   a, h                                        ; $5a15: $7c
	ld   a, l                                        ; $5a16: $7d
	ld   a, l                                        ; $5a17: $7d
	sub  d                                           ; $5a18: $92
	halt                                             ; $5a19: $76
	dec  c                                           ; $5a1a: $0d
	ld   e, b                                        ; $5a1b: $58
	sub  b                                           ; $5a1c: $90
	ld   [hl], c                                     ; $5a1d: $71
	ld   [hl], h                                     ; $5a1e: $74
	ld   e, d                                        ; $5a1f: $5a
	and  c                                           ; $5a20: $a1
	ld   a, [hl]                                     ; $5a21: $7e
	ld   [hl], c                                     ; $5a22: $71
	ld   [hl], h                                     ; $5a23: $74
	sub  d                                           ; $5a24: $92
	db   $fc                                         ; $5a25: $fc
	sbc  a                                           ; $5a26: $9f
	dec  c                                           ; $5a27: $0d
	nop                                              ; $5a28: $00
	ld   a, [bc]                                     ; $5a29: $0a
	ld   bc, $7889                                   ; $5a2a: $01 $89 $78
	ld   a, b                                        ; $5a2d: $78
	db   $fc                                         ; $5a2e: $fc
	sbc  a                                           ; $5a2f: $9f
	dec  c                                           ; $5a30: $0d
	nop                                              ; $5a31: $00
	ld   a, [bc]                                     ; $5a32: $0a
	nop                                              ; $5a33: $00
	inc  c                                           ; $5a34: $0c
	add  hl, bc                                      ; $5a35: $09
	inc  de                                          ; $5a36: $13
	db   $10                                         ; $5a37: $10
	inc  e                                           ; $5a38: $1c
	dec  b                                           ; $5a39: $05
	jr   nz, jr_041_5a44                             ; $5a3a: $20 $08

	ld   bc, $8c67                                   ; $5a3c: $01 $67 $8c
	and  c                                           ; $5a3f: $a1
	ld   a, b                                        ; $5a40: $78
	ld   c, a                                        ; $5a41: $4f
	db   $fc                                         ; $5a42: $fc
	sbc  a                                           ; $5a43: $9f

jr_041_5a44:
	dec  c                                           ; $5a44: $0d
	ld   h, h                                        ; $5a45: $64
	and  c                                           ; $5a46: $a1
	ld   a, e                                        ; $5a47: $7b
	and  c                                           ; $5a48: $a1
	sub  d                                           ; $5a49: $92
	ld   e, a                                        ; $5a4a: $5f
	ld   [hl], a                                     ; $5a4b: $77
	cp   h                                           ; $5a4c: $bc
	ei                                               ; $5a4d: $fb
	rst  $10                                         ; $5a4e: $d7
	ret  z                                           ; $5a4f: $c8

	ei                                               ; $5a50: $fb
	ret  nz                                          ; $5a51: $c0

	ld   a, l                                        ; $5a52: $7d
	dec  c                                           ; $5a53: $0d
	ld   h, c                                        ; $5a54: $61
	sbc  l                                           ; $5a55: $9d
	sbc  d                                           ; $5a56: $9a
	ld   [hl], h                                     ; $5a57: $74
	ld   h, l                                        ; $5a58: $65
	sub  b                                           ; $5a59: $90
	ld   l, l                                        ; $5a5a: $6d
	sbc  l                                           ; $5a5b: $9d
	sbc  a                                           ; $5a5c: $9f
	dec  c                                           ; $5a5d: $0d
	nop                                              ; $5a5e: $00
	ld   a, [bc]                                     ; $5a5f: $0a
	ld   bc, $4f8c                                   ; $5a60: $01 $8c $4f
	sbc  [hl]                                        ; $5a63: $9e
	ld   h, c                                        ; $5a64: $61
	sbc  d                                           ; $5a65: $9a
	ld   a, c                                        ; $5a66: $79
	ld   h, c                                        ; $5a67: $61
	sbc  b                                           ; $5a68: $98
	and  c                                           ; $5a69: $a1
	halt                                             ; $5a6a: $76
	dec  c                                           ; $5a6b: $0d
	ld   h, l                                        ; $5a6c: $65
	ld   [hl], c                                     ; $5a6d: $71
	ld   a, a                                        ; $5a6e: $7f
	ld   d, d                                        ; $5a6f: $52
	ld   a, l                                        ; $5a70: $7d
	ld   l, c                                        ; $5a71: $69
	ld   d, d                                        ; $5a72: $52
	ld   h, c                                        ; $5a73: $61
	ld   d, h                                        ; $5a74: $54
	ld   a, h                                        ; $5a75: $7c
	ld   a, l                                        ; $5a76: $7d
	ld   a, l                                        ; $5a77: $7d
	sub  d                                           ; $5a78: $92
	halt                                             ; $5a79: $76
	dec  c                                           ; $5a7a: $0d
	ld   e, b                                        ; $5a7b: $58
	sub  b                                           ; $5a7c: $90
	ld   [hl], c                                     ; $5a7d: $71
	ld   [hl], h                                     ; $5a7e: $74
	ld   e, d                                        ; $5a7f: $5a
	and  c                                           ; $5a80: $a1
	ld   a, [hl]                                     ; $5a81: $7e
	ld   [hl], c                                     ; $5a82: $71
	ld   [hl], h                                     ; $5a83: $74
	sub  d                                           ; $5a84: $92
	db   $fc                                         ; $5a85: $fc
	sbc  a                                           ; $5a86: $9f
	dec  c                                           ; $5a87: $0d
	nop                                              ; $5a88: $00
	ld   a, [bc]                                     ; $5a89: $0a
	ld   bc, $7889                                   ; $5a8a: $01 $89 $78
	ld   a, b                                        ; $5a8d: $78
	db   $fc                                         ; $5a8e: $fc
	sbc  a                                           ; $5a8f: $9f
	dec  c                                           ; $5a90: $0d
	nop                                              ; $5a91: $00
	ld   a, [bc]                                     ; $5a92: $0a
	nop                                              ; $5a93: $00
	inc  c                                           ; $5a94: $0c
	add  hl, bc                                      ; $5a95: $09
	inc  de                                          ; $5a96: $13
	db   $10                                         ; $5a97: $10
	inc  e                                           ; $5a98: $1c
	dec  b                                           ; $5a99: $05
	jr   nz, jr_041_5aa4                             ; $5a9a: $20 $08

	ld   bc, $8c67                                   ; $5a9c: $01 $67 $8c
	and  c                                           ; $5a9f: $a1
	ld   a, b                                        ; $5aa0: $78
	ld   c, a                                        ; $5aa1: $4f
	db   $fc                                         ; $5aa2: $fc
	sbc  a                                           ; $5aa3: $9f

jr_041_5aa4:
	dec  c                                           ; $5aa4: $0d
	ld   h, h                                        ; $5aa5: $64
	and  c                                           ; $5aa6: $a1
	ld   a, e                                        ; $5aa7: $7b
	and  c                                           ; $5aa8: $a1
	sub  d                                           ; $5aa9: $92
	ld   e, a                                        ; $5aaa: $5f
	ld   [hl], a                                     ; $5aab: $77
	cp   h                                           ; $5aac: $bc
	ei                                               ; $5aad: $fb
	rst  $10                                         ; $5aae: $d7
	ret  z                                           ; $5aaf: $c8

	ei                                               ; $5ab0: $fb
	ret  nz                                          ; $5ab1: $c0

	ld   a, l                                        ; $5ab2: $7d
	dec  c                                           ; $5ab3: $0d
	ld   h, c                                        ; $5ab4: $61
	sbc  l                                           ; $5ab5: $9d
	sbc  d                                           ; $5ab6: $9a
	ld   [hl], h                                     ; $5ab7: $74
	ld   h, l                                        ; $5ab8: $65
	sub  b                                           ; $5ab9: $90
	ld   l, l                                        ; $5aba: $6d
	sbc  l                                           ; $5abb: $9d
	sbc  a                                           ; $5abc: $9f
	dec  c                                           ; $5abd: $0d
	nop                                              ; $5abe: $00
	ld   a, [bc]                                     ; $5abf: $0a
	ld   bc, $4f8c                                   ; $5ac0: $01 $8c $4f
	sbc  [hl]                                        ; $5ac3: $9e
	ld   h, c                                        ; $5ac4: $61
	sbc  d                                           ; $5ac5: $9a
	ld   a, c                                        ; $5ac6: $79
	ld   h, c                                        ; $5ac7: $61
	sbc  b                                           ; $5ac8: $98
	and  c                                           ; $5ac9: $a1
	halt                                             ; $5aca: $76
	dec  c                                           ; $5acb: $0d
	ld   h, l                                        ; $5acc: $65
	ld   [hl], c                                     ; $5acd: $71
	ld   a, a                                        ; $5ace: $7f
	ld   d, d                                        ; $5acf: $52
	ld   a, l                                        ; $5ad0: $7d
	ld   l, c                                        ; $5ad1: $69
	ld   d, d                                        ; $5ad2: $52
	ld   h, c                                        ; $5ad3: $61
	ld   d, h                                        ; $5ad4: $54
	ld   a, h                                        ; $5ad5: $7c
	ld   a, l                                        ; $5ad6: $7d
	ld   a, l                                        ; $5ad7: $7d
	sub  d                                           ; $5ad8: $92
	halt                                             ; $5ad9: $76
	dec  c                                           ; $5ada: $0d
	ld   e, b                                        ; $5adb: $58
	sub  b                                           ; $5adc: $90
	ld   [hl], c                                     ; $5add: $71
	ld   [hl], h                                     ; $5ade: $74
	ld   e, d                                        ; $5adf: $5a
	and  c                                           ; $5ae0: $a1
	ld   a, [hl]                                     ; $5ae1: $7e
	ld   [hl], c                                     ; $5ae2: $71
	ld   [hl], h                                     ; $5ae3: $74
	sub  d                                           ; $5ae4: $92
	db   $fc                                         ; $5ae5: $fc
	sbc  a                                           ; $5ae6: $9f
	dec  c                                           ; $5ae7: $0d
	nop                                              ; $5ae8: $00
	ld   a, [bc]                                     ; $5ae9: $0a
	ld   bc, $7889                                   ; $5aea: $01 $89 $78
	ld   a, b                                        ; $5aed: $78
	db   $fc                                         ; $5aee: $fc
	sbc  a                                           ; $5aef: $9f
	dec  c                                           ; $5af0: $0d
	nop                                              ; $5af1: $00
	ld   a, [bc]                                     ; $5af2: $0a
	nop                                              ; $5af3: $00
	inc  c                                           ; $5af4: $0c
	add  hl, bc                                      ; $5af5: $09
	inc  de                                          ; $5af6: $13
	db   $10                                         ; $5af7: $10
	inc  e                                           ; $5af8: $1c
	dec  b                                           ; $5af9: $05
	jr   nz, jr_041_5b04                             ; $5afa: $20 $08

	ld   bc, $8c67                                   ; $5afc: $01 $67 $8c
	and  c                                           ; $5aff: $a1
	ld   a, b                                        ; $5b00: $78
	ld   c, a                                        ; $5b01: $4f
	db   $fc                                         ; $5b02: $fc
	sbc  a                                           ; $5b03: $9f

jr_041_5b04:
	dec  c                                           ; $5b04: $0d
	ld   h, h                                        ; $5b05: $64
	and  c                                           ; $5b06: $a1
	ld   a, e                                        ; $5b07: $7b
	and  c                                           ; $5b08: $a1
	sub  d                                           ; $5b09: $92
	ld   e, a                                        ; $5b0a: $5f
	ld   [hl], a                                     ; $5b0b: $77
	cp   h                                           ; $5b0c: $bc
	ei                                               ; $5b0d: $fb
	rst  $10                                         ; $5b0e: $d7
	ret  z                                           ; $5b0f: $c8

	ei                                               ; $5b10: $fb
	ret  nz                                          ; $5b11: $c0

	ld   a, l                                        ; $5b12: $7d
	dec  c                                           ; $5b13: $0d
	ld   h, c                                        ; $5b14: $61
	sbc  l                                           ; $5b15: $9d
	sbc  d                                           ; $5b16: $9a
	ld   [hl], h                                     ; $5b17: $74
	ld   h, l                                        ; $5b18: $65
	sub  b                                           ; $5b19: $90
	ld   l, l                                        ; $5b1a: $6d
	sbc  l                                           ; $5b1b: $9d
	sbc  a                                           ; $5b1c: $9f
	dec  c                                           ; $5b1d: $0d
	nop                                              ; $5b1e: $00
	ld   a, [bc]                                     ; $5b1f: $0a
	ld   bc, $4f8c                                   ; $5b20: $01 $8c $4f
	sbc  [hl]                                        ; $5b23: $9e
	ld   h, c                                        ; $5b24: $61
	sbc  d                                           ; $5b25: $9a
	ld   a, c                                        ; $5b26: $79
	ld   h, c                                        ; $5b27: $61
	sbc  b                                           ; $5b28: $98
	and  c                                           ; $5b29: $a1
	halt                                             ; $5b2a: $76
	dec  c                                           ; $5b2b: $0d
	ld   h, l                                        ; $5b2c: $65
	ld   [hl], c                                     ; $5b2d: $71
	ld   a, a                                        ; $5b2e: $7f
	ld   d, d                                        ; $5b2f: $52
	ld   a, l                                        ; $5b30: $7d
	ld   l, c                                        ; $5b31: $69
	ld   d, d                                        ; $5b32: $52
	ld   h, c                                        ; $5b33: $61
	ld   d, h                                        ; $5b34: $54
	ld   a, h                                        ; $5b35: $7c
	ld   a, l                                        ; $5b36: $7d
	ld   a, l                                        ; $5b37: $7d
	sub  d                                           ; $5b38: $92
	halt                                             ; $5b39: $76
	dec  c                                           ; $5b3a: $0d
	ld   e, b                                        ; $5b3b: $58
	sub  b                                           ; $5b3c: $90
	ld   [hl], c                                     ; $5b3d: $71
	ld   [hl], h                                     ; $5b3e: $74
	ld   e, d                                        ; $5b3f: $5a
	and  c                                           ; $5b40: $a1
	ld   a, [hl]                                     ; $5b41: $7e
	ld   [hl], c                                     ; $5b42: $71
	ld   [hl], h                                     ; $5b43: $74
	sub  d                                           ; $5b44: $92
	db   $fc                                         ; $5b45: $fc
	sbc  a                                           ; $5b46: $9f
	dec  c                                           ; $5b47: $0d
	nop                                              ; $5b48: $00
	ld   a, [bc]                                     ; $5b49: $0a
	ld   bc, $7889                                   ; $5b4a: $01 $89 $78
	ld   a, b                                        ; $5b4d: $78
	db   $fc                                         ; $5b4e: $fc
	sbc  a                                           ; $5b4f: $9f
	dec  c                                           ; $5b50: $0d
	nop                                              ; $5b51: $00
	ld   a, [bc]                                     ; $5b52: $0a
	nop                                              ; $5b53: $00
	inc  de                                          ; $5b54: $13
	rrca                                             ; $5b55: $0f
	inc  e                                           ; $5b56: $1c
	dec  b                                           ; $5b57: $05
	rlca                                             ; $5b58: $07
	rlca                                             ; $5b59: $07
	ld   bc, $5383                                   ; $5b5a: $01 $83 $53
	sbc  [hl]                                        ; $5b5d: $9e
	ld   a, b                                        ; $5b5e: $78
	and  c                                           ; $5b5f: $a1
	halt                                             ; $5b60: $76
	ld   e, c                                        ; $5b61: $59
	adc  h                                           ; $5b62: $8c
	ld   a, c                                        ; $5b63: $79
	ld   d, b                                        ; $5b64: $50
	ld   [hl], c                                     ; $5b65: $71
	ld   l, l                                        ; $5b66: $6d
	db   $fc                                         ; $5b67: $fc
	ld   a, [$000d]                                  ; $5b68: $fa $0d $00
	ld   a, [bc]                                     ; $5b6b: $0a
	inc  e                                           ; $5b6c: $1c
	dec  b                                           ; $5b6d: $05
	ld   bc, $0101                                   ; $5b6e: $01 $01 $01
	sub  [hl]                                        ; $5b71: $96
	ld   e, c                                        ; $5b72: $59
	ld   [hl], c                                     ; $5b73: $71
	ld   l, l                                        ; $5b74: $6d
	ld   a, b                                        ; $5b75: $78
	sbc  [hl]                                        ; $5b76: $9e
	cp   h                                           ; $5b77: $bc
	ei                                               ; $5b78: $fb
	rst  $10                                         ; $5b79: $d7
	ret  z                                           ; $5b7a: $c8

	ei                                               ; $5b7b: $fb
	ret  nz                                          ; $5b7c: $c0

	ld   a, l                                        ; $5b7d: $7d
	dec  c                                           ; $5b7e: $0d
	add  h                                           ; $5b7f: $84
	ld   h, [hl]                                     ; $5b80: $66
	sub  d                                           ; $5b81: $92
	sbc  a                                           ; $5b82: $9f
	dec  c                                           ; $5b83: $0d
	nop                                              ; $5b84: $00
	ld   a, [bc]                                     ; $5b85: $0a
	ld   bc, $a150                                   ; $5b86: $01 $50 $a1
	ld   h, l                                        ; $5b89: $65
	and  c                                           ; $5b8a: $a1
	ld   h, l                                        ; $5b8b: $65
	ld   [hl], h                                     ; $5b8c: $74
	or   e                                           ; $5b8d: $b3
	ei                                               ; $5b8e: $fb
	ldh  [c], a                                      ; $5b8f: $e2
	and  b                                           ; $5b90: $a0
	dec  c                                           ; $5b91: $0d
	ld   [hl], d                                     ; $5b92: $72
	ld   [hl], e                                     ; $5b93: $73
	ld   e, a                                        ; $5b94: $5f
	ld   [hl], h                                     ; $5b95: $74
	ld   l, [hl]                                     ; $5b96: $6e
	ld   d, d                                        ; $5b97: $52
	ld   h, [hl]                                     ; $5b98: $66
	sub  l                                           ; $5b99: $95
	ld   d, h                                        ; $5b9a: $54
	add  h                                           ; $5b9b: $84
	sub  d                                           ; $5b9c: $92
	ld   [hl], l                                     ; $5b9d: $75
	sbc  a                                           ; $5b9e: $9f
	dec  c                                           ; $5b9f: $0d
	adc  c                                           ; $5ba0: $89
	ld   a, b                                        ; $5ba1: $78
	sbc  a                                           ; $5ba2: $9f
	adc  h                                           ; $5ba3: $8c
	ld   l, l                                        ; $5ba4: $6d
	ld   d, b                                        ; $5ba5: $50
	halt                                             ; $5ba6: $76
	ld   [hl], l                                     ; $5ba7: $75
	ld   a, b                                        ; $5ba8: $78
	db   $fc                                         ; $5ba9: $fc
	sbc  a                                           ; $5baa: $9f
	dec  c                                           ; $5bab: $0d
	nop                                              ; $5bac: $00
	ld   a, [bc]                                     ; $5bad: $0a
	nop                                              ; $5bae: $00
	nop                                              ; $5baf: $00
	rlca                                             ; $5bb0: $07
	add  l                                           ; $5bb1: $85
	nop                                              ; $5bb2: $00
	inc  bc                                          ; $5bb3: $03
	ld   a, [$0001]                                  ; $5bb4: $fa $01 $00
	jr   nz, jr_041_5bb9                             ; $5bb7: $20 $00

jr_041_5bb9:
	rlca                                             ; $5bb9: $07
	rst  $38                                         ; $5bba: $ff
	nop                                              ; $5bbb: $00
	inc  bc                                          ; $5bbc: $03
	ld   a, [$0101]                                  ; $5bbd: $fa $01 $01
	jr   nz, jr_041_5bc2                             ; $5bc0: $20 $00

jr_041_5bc2:
	rlca                                             ; $5bc2: $07
	adc  l                                           ; $5bc3: $8d
	ld   bc, $fa03                                   ; $5bc4: $01 $03 $fa
	ld   bc, $2002                                   ; $5bc7: $01 $02 $20
	nop                                              ; $5bca: $00
	rlca                                             ; $5bcb: $07
	ld   [hl], $02                                   ; $5bcc: $36 $02
	inc  bc                                          ; $5bce: $03
	ld   a, [$0301]                                  ; $5bcf: $fa $01 $03
	jr   nz, jr_041_5bd4                             ; $5bd2: $20 $00

jr_041_5bd4:
	rlca                                             ; $5bd4: $07
	db   $d3                                         ; $5bd5: $d3
	ld   bc, $fa03                                   ; $5bd6: $01 $03 $fa
	ld   bc, $2004                                   ; $5bd9: $01 $04 $20
	nop                                              ; $5bdc: $00
	rlca                                             ; $5bdd: $07
	ld   b, l                                        ; $5bde: $45
	ld   bc, $fa03                                   ; $5bdf: $01 $03 $fa
	ld   bc, $2005                                   ; $5be2: $01 $05 $20
	nop                                              ; $5be5: $00
	rlca                                             ; $5be6: $07
	xor  h                                           ; $5be7: $ac
	ld   [bc], a                                     ; $5be8: $02
	inc  bc                                          ; $5be9: $03
	ld   a, [$0801]                                  ; $5bea: $fa $01 $08
	jr   nz, jr_041_5bef                             ; $5bed: $20 $00

jr_041_5bef:
	rlca                                             ; $5bef: $07
	ld   de, $0303                                   ; $5bf0: $11 $03 $03
	ld   a, [$0901]                                  ; $5bf3: $fa $01 $09
	jr   nz, jr_041_5bf8                             ; $5bf6: $20 $00

jr_041_5bf8:
	rlca                                             ; $5bf8: $07
	or   h                                           ; $5bf9: $b4
	inc  bc                                          ; $5bfa: $03
	inc  bc                                          ; $5bfb: $03
	ld   a, [$0a01]                                  ; $5bfc: $fa $01 $0a
	jr   nz, jr_041_5c01                             ; $5bff: $20 $00

jr_041_5c01:
	rlca                                             ; $5c01: $07
	ld   [hl], h                                     ; $5c02: $74
	inc  b                                           ; $5c03: $04
	inc  bc                                          ; $5c04: $03
	ld   a, [$0b01]                                  ; $5c05: $fa $01 $0b
	jr   nz, jr_041_5c0a                             ; $5c08: $20 $00

jr_041_5c0a:
	rlca                                             ; $5c0a: $07
	ld   sp, hl                                      ; $5c0b: $f9
	inc  bc                                          ; $5c0c: $03
	inc  bc                                          ; $5c0d: $03
	ld   a, [$0c01]                                  ; $5c0e: $fa $01 $0c
	jr   nz, jr_041_5c13                             ; $5c11: $20 $00

jr_041_5c13:
	rlca                                             ; $5c13: $07
	ld   l, h                                        ; $5c14: $6c
	inc  bc                                          ; $5c15: $03
	inc  bc                                          ; $5c16: $03
	ld   a, [$0d01]                                  ; $5c17: $fa $01 $0d
	jr   nz, jr_041_5c1c                             ; $5c1a: $20 $00

jr_041_5c1c:
	ld   c, $7c                                      ; $5c1c: $0e $7c
	inc  e                                           ; $5c1e: $1c
	rrca                                             ; $5c1f: $0f
	inc  b                                           ; $5c20: $04
	inc  b                                           ; $5c21: $04
	ld   [bc], a                                     ; $5c22: $02
	ld   bc, $5858                                   ; $5c23: $01 $58 $58
	ld   [hl], c                                     ; $5c26: $71
	halt                                             ; $5c27: $76
	sbc  [hl]                                        ; $5c28: $9e
	ld   h, [hl]                                     ; $5c29: $66
	sub  e                                           ; $5c2a: $93
	ld   h, l                                        ; $5c2b: $65
	and  c                                           ; $5c2c: $a1
	xor  c                                           ; $5c2d: $a9
	db   $eb                                         ; $5c2e: $eb
	ei                                               ; $5c2f: $fb
	ld   a, [$000d]                                  ; $5c30: $fa $0d $00
	ld   a, [bc]                                     ; $5c33: $0a
	nop                                              ; $5c34: $00
	ld   c, $7c                                      ; $5c35: $0e $7c
	inc  e                                           ; $5c37: $1c
	ld   bc, $0101                                   ; $5c38: $01 $01 $01
	ld   [bc], a                                     ; $5c3b: $02
	ld   bc, $9750                                   ; $5c3c: $01 $50 $97
	sbc  [hl]                                        ; $5c3f: $9e
	ld   h, c                                        ; $5c40: $61
	and  c                                           ; $5c41: $a1
	ld   a, c                                        ; $5c42: $79
	ld   l, a                                        ; $5c43: $6f
	ld   a, l                                        ; $5c44: $7d
	sbc  a                                           ; $5c45: $9f
	dec  c                                           ; $5c46: $0d
	or   [hl]                                        ; $5c47: $b6
	or   b                                           ; $5c48: $b0
	db   $eb                                         ; $5c49: $eb
	inc  b                                           ; $5c4a: $04
	ld   c, $03                                      ; $5c4b: $0e $03
	xor  b                                           ; $5c4d: $a8
	ld   [de], a                                     ; $5c4e: $12
	ld   a, h                                        ; $5c4f: $7c
	or   b                                           ; $5c50: $b0
	db   $ec                                         ; $5c51: $ec
	and  e                                           ; $5c52: $a3
	sbc  [hl]                                        ; $5c53: $9e
	dec  c                                           ; $5c54: $0d
	ld   d, b                                        ; $5c55: $50
	sbc  b                                           ; $5c56: $98
	ld   e, d                                        ; $5c57: $5a
	halt                                             ; $5c58: $76
	ld   d, h                                        ; $5c59: $54
	ld   h, d                                        ; $5c5a: $62
	ld   h, h                                        ; $5c5b: $64
	ld   d, d                                        ; $5c5c: $52
	adc  h                                           ; $5c5d: $8c
	ld   h, a                                        ; $5c5e: $67
	sbc  a                                           ; $5c5f: $9f
	dec  c                                           ; $5c60: $0d
	nop                                              ; $5c61: $00
	ld   a, [bc]                                     ; $5c62: $0a
	ld   bc, $7c61                                   ; $5c63: $01 $61 $7c
	ld   e, e                                        ; $5c66: $5b
	ld   a, h                                        ; $5c67: $7c
	ld   d, h                                        ; $5c68: $54
	ld   a, l                                        ; $5c69: $7d
	sbc  [hl]                                        ; $5c6a: $9e
	ld   a, b                                        ; $5c6b: $78
	and  c                                           ; $5c6c: $a1
	ld   [hl], l                                     ; $5c6d: $75
	sub  b                                           ; $5c6e: $90
	dec  c                                           ; $5c6f: $0d
	add  sp, -$1d                                    ; $5c70: $e8 $e3
	ld   a, h                                        ; $5c72: $7c
	ld   e, e                                        ; $5c73: $5b
	sub  l                                           ; $5c74: $95
	ld   d, h                                        ; $5c75: $54
	ld   d, [hl]                                     ; $5c76: $56
	and  c                                           ; $5c77: $a1
	ld   [hl], c                                     ; $5c78: $71
	ld   [hl], h                                     ; $5c79: $74
	ld   d, d                                        ; $5c7a: $52
	ld   d, h                                        ; $5c7b: $54
	dec  c                                           ; $5c7c: $0d
	sub  a                                           ; $5c7d: $97
	ld   h, l                                        ; $5c7e: $65
	ld   d, d                                        ; $5c7f: $52
	ld   [hl], l                                     ; $5c80: $75
	ld   h, a                                        ; $5c81: $67
	ld   a, e                                        ; $5c82: $7b
	sbc  a                                           ; $5c83: $9f
	dec  c                                           ; $5c84: $0d
	nop                                              ; $5c85: $00
	ld   a, [bc]                                     ; $5c86: $0a
	ld   bc, $4904                                   ; $5c87: $01 $04 $49
	ld   e, d                                        ; $5c8a: $5a
	ld   [bc], a                                     ; $5c8b: $02
	ld   e, d                                        ; $5c8c: $5a
	ld   h, c                                        ; $5c8d: $61
	sbc  c                                           ; $5c8e: $99
	ld   e, c                                        ; $5c8f: $59
	ld   a, l                                        ; $5c90: $7d
	ld   e, c                                        ; $5c91: $59
	and  c                                           ; $5c92: $a1
	ld   l, c                                        ; $5c93: $69
	ld   d, d                                        ; $5c94: $52
	ld   h, l                                        ; $5c95: $65
	ld   [hl], h                                     ; $5c96: $74
	ld   a, h                                        ; $5c97: $7c
	dec  c                                           ; $5c98: $0d
	ld   e, b                                        ; $5c99: $58
	dec  b                                           ; $5c9a: $05
	inc  de                                          ; $5c9b: $13
	ld   h, l                                        ; $5c9c: $65
	adc  l                                           ; $5c9d: $8d
	sub  a                                           ; $5c9e: $97
	ld   h, l                                        ; $5c9f: $65
	ld   d, d                                        ; $5ca0: $52
	ld   [hl], l                                     ; $5ca1: $75
	ld   h, a                                        ; $5ca2: $67
	ld   e, a                                        ; $5ca3: $5f
	ld   [hl], a                                     ; $5ca4: $77
	ld   a, e                                        ; $5ca5: $7b
	sbc  a                                           ; $5ca6: $9f
	dec  c                                           ; $5ca7: $0d
	ld   [hl], l                                     ; $5ca8: $75
	ld   a, l                                        ; $5ca9: $7d
	sbc  a                                           ; $5caa: $9f
	dec  c                                           ; $5cab: $0d
	nop                                              ; $5cac: $00
	ld   a, [bc]                                     ; $5cad: $0a
	nop                                              ; $5cae: $00
	ld   c, $7c                                      ; $5caf: $0e $7c
	inc  e                                           ; $5cb1: $1c
	ld   [bc], a                                     ; $5cb2: $02
	jr   nc, jr_041_5cce                             ; $5cb3: $30 $19

	ld   [bc], a                                     ; $5cb5: $02
	ld   bc, $fc58                                   ; $5cb6: $01 $58 $fc
	adc  c                                           ; $5cb9: $89
	ld   [hl], c                                     ; $5cba: $71
	adc  c                                           ; $5cbb: $89
	ld   [hl], c                                     ; $5cbc: $71
	adc  c                                           ; $5cbd: $89
	sbc  a                                           ; $5cbe: $9f
	dec  c                                           ; $5cbf: $0d
	or   [hl]                                        ; $5cc0: $b6
	or   b                                           ; $5cc1: $b0
	db   $eb                                         ; $5cc2: $eb
	inc  b                                           ; $5cc3: $04
	ld   c, $03                                      ; $5cc4: $0e $03
	xor  b                                           ; $5cc6: $a8
	ld   [de], a                                     ; $5cc7: $12
	and  b                                           ; $5cc8: $a0
	inc  bc                                          ; $5cc9: $03
	ret  z                                           ; $5cca: $c8

	ld   [hl], l                                     ; $5ccb: $75
	or   b                                           ; $5ccc: $b0
	db   $ec                                         ; $5ccd: $ec

jr_041_5cce:
	and  e                                           ; $5cce: $a3
	dec  c                                           ; $5ccf: $0d
	ld   h, e                                        ; $5cd0: $63
	sbc  d                                           ; $5cd1: $9a
	ld   l, l                                        ; $5cd2: $6d
	sub  [hl]                                        ; $5cd3: $96
	ld   d, h                                        ; $5cd4: $54
	ld   [hl], l                                     ; $5cd5: $75
	ld   h, a                                        ; $5cd6: $67
	sbc  l                                           ; $5cd7: $9d
	ld   a, e                                        ; $5cd8: $7b
	sbc  a                                           ; $5cd9: $9f
	dec  c                                           ; $5cda: $0d
	nop                                              ; $5cdb: $00
	ld   a, [bc]                                     ; $5cdc: $0a
	inc  e                                           ; $5cdd: $1c
	ld   [bc], a                                     ; $5cde: $02
	ld   bc, $0101                                   ; $5cdf: $01 $01 $01
	adc  h                                           ; $5ce2: $8c
	ld   c, a                                        ; $5ce3: $4f
	sbc  [hl]                                        ; $5ce4: $9e
	inc  b                                           ; $5ce5: $04
	jr   jr_041_5ceb                                 ; $5ce6: $18 $03

	sbc  c                                           ; $5ce8: $99
	ld   a, h                                        ; $5ce9: $7c
	ld   [bc], a                                     ; $5cea: $02

jr_041_5ceb:
	jp   Jump_041_6775                               ; $5ceb: $c3 $75 $67


	sbc  l                                           ; $5cee: $9d
	ld   a, e                                        ; $5cef: $7b
	sbc  a                                           ; $5cf0: $9f
	dec  c                                           ; $5cf1: $0d
	nop                                              ; $5cf2: $00
	ld   a, [bc]                                     ; $5cf3: $0a
	nop                                              ; $5cf4: $00
	ld   c, $7c                                      ; $5cf5: $0e $7c
	inc  e                                           ; $5cf7: $1c
	inc  bc                                          ; $5cf8: $03
	inc  bc                                          ; $5cf9: $03
	inc  bc                                          ; $5cfa: $03
	ld   [bc], a                                     ; $5cfb: $02
	ld   bc, $9750                                   ; $5cfc: $01 $50 $97
	sbc  [hl]                                        ; $5cff: $9e
	ld   h, d                                        ; $5d00: $62
	ld   e, l                                        ; $5d01: $5d
	sbc  e                                           ; $5d02: $9b
	ld   d, h                                        ; $5d03: $54
	ld   h, e                                        ; $5d04: $63
	adc  h                                           ; $5d05: $8c
	sbc  a                                           ; $5d06: $9f
	dec  c                                           ; $5d07: $0d
	or   [hl]                                        ; $5d08: $b6
	or   b                                           ; $5d09: $b0
	db   $eb                                         ; $5d0a: $eb
	inc  b                                           ; $5d0b: $04
	ld   c, $03                                      ; $5d0c: $0e $03
	xor  b                                           ; $5d0e: $a8
	ld   [de], a                                     ; $5d0f: $12
	ld   a, l                                        ; $5d10: $7d
	dec  b                                           ; $5d11: $05
	inc  de                                          ; $5d12: $13
	ld   h, l                                        ; $5d13: $65
	ld   e, c                                        ; $5d14: $59
	ld   [hl], c                                     ; $5d15: $71
	ld   l, l                                        ; $5d16: $6d
	ld   sp, hl                                      ; $5d17: $f9
	dec  c                                           ; $5d18: $0d
	nop                                              ; $5d19: $00
	ld   a, [bc]                                     ; $5d1a: $0a
	ld   bc, $6803                                   ; $5d1b: $01 $03 $68
	ld   a, l                                        ; $5d1e: $7d
	ld   l, d                                        ; $5d1f: $6a
	add  b                                           ; $5d20: $80
	halt                                             ; $5d21: $76
	sub  b                                           ; $5d22: $90
	inc  de                                          ; $5d23: $13
	ld   a, c                                        ; $5d24: $79
	ld   l, a                                        ; $5d25: $6f
	sub  l                                           ; $5d26: $95
	ld   d, h                                        ; $5d27: $54
	ld   l, c                                        ; $5d28: $69
	and  c                                           ; $5d29: $a1
	dec  c                                           ; $5d2a: $0d
	ld   h, l                                        ; $5d2b: $65
	ld   [hl], h                                     ; $5d2c: $74
	inc  b                                           ; $5d2d: $04
	db   $e3                                         ; $5d2e: $e3
	ld   h, l                                        ; $5d2f: $65
	ld   d, d                                        ; $5d30: $52
	sbc  l                                           ; $5d31: $9d
	ld   a, e                                        ; $5d32: $7b
	sbc  a                                           ; $5d33: $9f
	dec  c                                           ; $5d34: $0d
	ld   h, [hl]                                     ; $5d35: $66
	sub  c                                           ; $5d36: $91
	ld   c, a                                        ; $5d37: $4f
	sbc  a                                           ; $5d38: $9f
	dec  c                                           ; $5d39: $0d
	nop                                              ; $5d3a: $00
	ld   a, [bc]                                     ; $5d3b: $0a
	nop                                              ; $5d3c: $00
	ld   c, $7c                                      ; $5d3d: $0e $7c
	inc  e                                           ; $5d3f: $1c
	inc  b                                           ; $5d40: $04
	ld   hl, $0209                                   ; $5d41: $21 $09 $02
	ld   bc, $e5b9                                   ; $5d44: $01 $b9 $e5
	cp   c                                           ; $5d47: $b9
	push hl                                          ; $5d48: $e5
	db   $fc                                         ; $5d49: $fc
	push af                                          ; $5d4a: $f5
	sbc  [hl]                                        ; $5d4b: $9e
	and  e                                           ; $5d4c: $a3
	and  l                                           ; $5d4d: $a5
	db   $ec                                         ; $5d4e: $ec
	cp   d                                           ; $5d4f: $ba
	ld   l, [hl]                                     ; $5d50: $6e
	sub  [hl]                                        ; $5d51: $96
	sbc  a                                           ; $5d52: $9f
	dec  c                                           ; $5d53: $0d
	or   [hl]                                        ; $5d54: $b6
	or   b                                           ; $5d55: $b0
	db   $eb                                         ; $5d56: $eb
	ld   l, l                                        ; $5d57: $6d
	ld   d, d                                        ; $5d58: $52
	ld   l, c                                        ; $5d59: $69
	and  c                                           ; $5d5a: $a1
	ld   [de], a                                     ; $5d5b: $12
	ld   a, h                                        ; $5d5c: $7c
	or   b                                           ; $5d5d: $b0
	db   $ec                                         ; $5d5e: $ec
	and  e                                           ; $5d5f: $a3
	dec  c                                           ; $5d60: $0d
	ld   e, b                                        ; $5d61: $58
	adc  a                                           ; $5d62: $8f
	ld   [hl], l                                     ; $5d63: $75
	halt                                             ; $5d64: $76
	db   $fc                                         ; $5d65: $fc
	ld   a, [$000d]                                  ; $5d66: $fa $0d $00
	ld   a, [bc]                                     ; $5d69: $0a
	ld   bc, $557b                                   ; $5d6a: $01 $7b $55
	ld   a, e                                        ; $5d6d: $7b
	ld   d, l                                        ; $5d6e: $55
	sbc  [hl]                                        ; $5d6f: $9e
	sub  h                                           ; $5d70: $94
	adc  a                                           ; $5d71: $8f
	ld   a, h                                        ; $5d72: $7c
	ld   e, e                                        ; $5d73: $5b
	sub  l                                           ; $5d74: $95
	ld   d, h                                        ; $5d75: $54
	ld   d, [hl]                                     ; $5d76: $56
	and  c                                           ; $5d77: $a1
	dec  c                                           ; $5d78: $0d
	ld   [hl], c                                     ; $5d79: $71
	ld   [hl], h                                     ; $5d7a: $74
	ld   a, b                                        ; $5d7b: $78
	db   $fc                                         ; $5d7c: $fc
	ld   a, c                                        ; $5d7d: $79
	ld   sp, hl                                      ; $5d7e: $f9
	dec  c                                           ; $5d7f: $0d
	nop                                              ; $5d80: $00
	ld   a, [bc]                                     ; $5d81: $0a
	nop                                              ; $5d82: $00
	ld   c, $7c                                      ; $5d83: $0e $7c
	inc  c                                           ; $5d85: $0c
	add  hl, bc                                      ; $5d86: $09
	dec  c                                           ; $5d87: $0d
	dec  b                                           ; $5d88: $05
	jr   nz, jr_041_5d9a                             ; $5d89: $20 $0f

	dec  b                                           ; $5d8b: $05
	ld   bc, $0102                                   ; $5d8c: $01 $02 $01
	ld   d, b                                        ; $5d8f: $50
	ld   l, a                                        ; $5d90: $6f
	sub  c                                           ; $5d91: $91
	db   $fc                                         ; $5d92: $fc
	sbc  [hl]                                        ; $5d93: $9e
	adc  h                                           ; $5d94: $8c
	ld   l, l                                        ; $5d95: $6d
	sub  d                                           ; $5d96: $92
	ld   [hl], c                                     ; $5d97: $71
	ld   [hl], h                                     ; $5d98: $74
	sub  b                                           ; $5d99: $90

jr_041_5d9a:
	ld   d, h                                        ; $5d9a: $54
	ld   l, l                                        ; $5d9b: $6d
	sbc  a                                           ; $5d9c: $9f
	dec  c                                           ; $5d9d: $0d
	nop                                              ; $5d9e: $00
	ld   a, [bc]                                     ; $5d9f: $0a
	dec  c                                           ; $5da0: $0d
	dec  b                                           ; $5da1: $05
	ld   bc, $5801                                   ; $5da2: $01 $01 $58
	ld   [hl], c                                     ; $5da5: $71
	halt                                             ; $5da6: $76
	sbc  [hl]                                        ; $5da7: $9e
	ld   a, b                                        ; $5da8: $78
	and  c                                           ; $5da9: $a1
	sub  d                                           ; $5daa: $92
	or   [hl]                                        ; $5dab: $b6
	or   b                                           ; $5dac: $b0
	db   $eb                                         ; $5dad: $eb
	inc  b                                           ; $5dae: $04
	ld   c, $03                                      ; $5daf: $0e $03
	xor  b                                           ; $5db1: $a8
	ld   [de], a                                     ; $5db2: $12
	and  b                                           ; $5db3: $a0
	dec  c                                           ; $5db4: $0d
	or   b                                           ; $5db5: $b0
	db   $ec                                         ; $5db6: $ec
	and  e                                           ; $5db7: $a3
	ld   h, l                                        ; $5db8: $65
	ld   l, l                                        ; $5db9: $6d
	adc  l                                           ; $5dba: $8d
	ld   l, l                                        ; $5dbb: $6d
	ld   d, d                                        ; $5dbc: $52
	sub  d                                           ; $5dbd: $92
	ld   a, b                                        ; $5dbe: $78
	db   $fc                                         ; $5dbf: $fc
	sbc  a                                           ; $5dc0: $9f
	dec  c                                           ; $5dc1: $0d
	halt                                             ; $5dc2: $76
	sbc  b                                           ; $5dc3: $98
	ld   d, b                                        ; $5dc4: $50
	ld   d, [hl]                                     ; $5dc5: $56
	ld   l, b                                        ; $5dc6: $68
	ld   e, b                                        ; $5dc7: $58
	adc  a                                           ; $5dc8: $8f
	ld   [hl], l                                     ; $5dc9: $75
	halt                                             ; $5dca: $76
	ld   h, e                                        ; $5dcb: $63
	and  c                                           ; $5dcc: $a1
	sbc  a                                           ; $5dcd: $9f
	dec  c                                           ; $5dce: $0d
	nop                                              ; $5dcf: $00
	ld   a, [bc]                                     ; $5dd0: $0a
	ld   bc, $6803                                   ; $5dd1: $01 $03 $68
	ld   a, l                                        ; $5dd4: $7d
	inc  de                                          ; $5dd5: $13
	and  b                                           ; $5dd6: $a0
	sub  d                                           ; $5dd7: $92
	sbc  c                                           ; $5dd8: $99
	and  c                                           ; $5dd9: $a1
	sub  d                                           ; $5dda: $92
	ld   [hl], l                                     ; $5ddb: $75
	db   $fc                                         ; $5ddc: $fc
	sbc  a                                           ; $5ddd: $9f
	dec  c                                           ; $5dde: $0d
	adc  c                                           ; $5ddf: $89
	ld   a, b                                        ; $5de0: $78
	ld   a, [$000d]                                  ; $5de1: $fa $0d $00
	ld   a, [bc]                                     ; $5de4: $0a
	nop                                              ; $5de5: $00
	ld   c, $7c                                      ; $5de6: $0e $7c
	inc  e                                           ; $5de8: $1c
	ld   b, $01                                      ; $5de9: $06 $01
	ld   bc, $0102                                   ; $5deb: $01 $02 $01
	ld   e, b                                        ; $5dee: $58
	ld   [hl], c                                     ; $5def: $71
	ld   h, a                                        ; $5df0: $67
	ld   a, [$b60d]                                  ; $5df1: $fa $0d $b6
	or   b                                           ; $5df4: $b0
	db   $eb                                         ; $5df5: $eb
	inc  b                                           ; $5df6: $04
	ld   c, $03                                      ; $5df7: $0e $03
	xor  b                                           ; $5df9: $a8
	ld   [de], a                                     ; $5dfa: $12
	and  b                                           ; $5dfb: $a0
	or   b                                           ; $5dfc: $b0
	db   $ec                                         ; $5dfd: $ec
	and  e                                           ; $5dfe: $a3
	ld   h, l                                        ; $5dff: $65
	ld   l, l                                        ; $5e00: $6d
	and  c                                           ; $5e01: $a1
	dec  c                                           ; $5e02: $0d
	ld   l, [hl]                                     ; $5e03: $6e
	ld   [hl], c                                     ; $5e04: $71
	ld   [hl], h                                     ; $5e05: $74
	ld   a, b                                        ; $5e06: $78
	sbc  a                                           ; $5e07: $9f
	dec  c                                           ; $5e08: $0d
	nop                                              ; $5e09: $00
	ld   a, [bc]                                     ; $5e0a: $0a
	ld   bc, $6d50                                   ; $5e0b: $01 $50 $6d
	ld   h, l                                        ; $5e0e: $65
	sub  c                                           ; $5e0f: $91
	ld   c, a                                        ; $5e10: $4f
	sbc  [hl]                                        ; $5e11: $9e
	ld   d, b                                        ; $5e12: $50
	ld   a, h                                        ; $5e13: $7c
	ld   l, c                                        ; $5e14: $69
	and  c                                           ; $5e15: $a1
	halt                                             ; $5e16: $76
	ld   d, h                                        ; $5e17: $54
	ld   e, d                                        ; $5e18: $5a
	dec  c                                           ; $5e19: $0d
	ld   a, c                                        ; $5e1a: $79
	ld   e, d                                        ; $5e1b: $5a
	ld   [hl], h                                     ; $5e1c: $74
	ld   [hl], l                                     ; $5e1d: $75
	ld   h, e                                        ; $5e1e: $63
	ld   c, a                                        ; $5e1f: $4f
	sbc  [hl]                                        ; $5e20: $9e
	sub  b                                           ; $5e21: $90
	ld   [hl], c                                     ; $5e22: $71
	halt                                             ; $5e23: $76
	xor  l                                           ; $5e24: $ad
	push af                                          ; $5e25: $f5
	xor  l                                           ; $5e26: $ad
	push af                                          ; $5e27: $f5
	dec  c                                           ; $5e28: $0d
	add  h                                           ; $5e29: $84
	ld   l, a                                        ; $5e2a: $6f
	ld   h, c                                        ; $5e2b: $61
	sbc  l                                           ; $5e2c: $9d
	ld   l, c                                        ; $5e2d: $69
	ld   a, e                                        ; $5e2e: $7b
	ld   d, l                                        ; $5e2f: $55
	sub  b                                           ; $5e30: $90
	and  c                                           ; $5e31: $a1
	ld   e, c                                        ; $5e32: $59
	ld   a, e                                        ; $5e33: $7b
	ld   sp, hl                                      ; $5e34: $f9
	dec  c                                           ; $5e35: $0d
	nop                                              ; $5e36: $00
	ld   a, [bc]                                     ; $5e37: $0a
	ld   bc, $4f8c                                   ; $5e38: $01 $8c $4f
	sbc  [hl]                                        ; $5e3b: $9e
	ld   l, e                                        ; $5e3c: $6b
	and  c                                           ; $5e3d: $a1
	ld   a, b                                        ; $5e3e: $78
	ld   h, c                                        ; $5e3f: $61
	ld   l, l                                        ; $5e40: $6d
	ld   c, a                                        ; $5e41: $4f
	ld   [hl], a                                     ; $5e42: $77
	ld   d, h                                        ; $5e43: $54
	ld   [hl], l                                     ; $5e44: $75
	sub  b                                           ; $5e45: $90
	dec  c                                           ; $5e46: $0d
	ld   d, d                                        ; $5e47: $52
	ld   d, d                                        ; $5e48: $52
	sub  d                                           ; $5e49: $92
	sbc  a                                           ; $5e4a: $9f
	dec  c                                           ; $5e4b: $0d
	halt                                             ; $5e4c: $76
	sbc  b                                           ; $5e4d: $98
	ld   d, b                                        ; $5e4e: $50
	ld   d, [hl]                                     ; $5e4f: $56
	ld   l, b                                        ; $5e50: $68
	ld   e, b                                        ; $5e51: $58
	adc  a                                           ; $5e52: $8f
	ld   [hl], l                                     ; $5e53: $75
	halt                                             ; $5e54: $76
	ld   h, e                                        ; $5e55: $63
	and  c                                           ; $5e56: $a1
	sbc  a                                           ; $5e57: $9f
	dec  c                                           ; $5e58: $0d
	nop                                              ; $5e59: $00
	ld   a, [bc]                                     ; $5e5a: $0a
	nop                                              ; $5e5b: $00
	ld   c, $7c                                      ; $5e5c: $0e $7c
	inc  e                                           ; $5e5e: $1c
	ld   bc, $0101                                   ; $5e5f: $01 $01 $01
	ld   [bc], a                                     ; $5e62: $02
	ld   bc, $9750                                   ; $5e63: $01 $50 $97
	sbc  [hl]                                        ; $5e66: $9e
	ld   h, c                                        ; $5e67: $61
	and  c                                           ; $5e68: $a1
	ld   a, c                                        ; $5e69: $79
	ld   l, a                                        ; $5e6a: $6f
	ld   a, l                                        ; $5e6b: $7d
	sbc  a                                           ; $5e6c: $9f
	dec  c                                           ; $5e6d: $0d
	nop                                              ; $5e6e: $00
	inc  e                                           ; $5e6f: $1c
	ld   bc, $0404                                   ; $5e70: $01 $04 $04
	ld   bc, $a16d                                   ; $5e73: $01 $6d $a1
	halt                                             ; $5e76: $76
	ld   d, h                                        ; $5e77: $54
	ld   a, h                                        ; $5e78: $7c
	inc  bc                                          ; $5e79: $03
	add  d                                           ; $5e7a: $82
	ld   e, d                                        ; $5e7b: $5a
	ld   [hl], d                                     ; $5e7c: $72
	ld   e, c                                        ; $5e7d: $59
	sbc  d                                           ; $5e7e: $9a
	ld   l, l                                        ; $5e7f: $6d
	ld   e, c                                        ; $5e80: $59
	sub  a                                           ; $5e81: $97
	dec  c                                           ; $5e82: $0d
	inc  bc                                          ; $5e83: $03
	ld   l, e                                        ; $5e84: $6b
	and  b                                           ; $5e85: $a0
	ld   a, d                                        ; $5e86: $7a
	ld   e, l                                        ; $5e87: $5d
	ld   [hl], c                                     ; $5e88: $71
	ld   [hl], h                                     ; $5e89: $74
	ld   [bc], a                                     ; $5e8a: $02
	sbc  l                                           ; $5e8b: $9d
	ld   [hl], c                                     ; $5e8c: $71
	ld   [hl], h                                     ; $5e8d: $74
	adc  h                                           ; $5e8e: $8c
	ld   h, a                                        ; $5e8f: $67
	rst  $38                                         ; $5e90: $ff
	sbc  a                                           ; $5e91: $9f
	dec  c                                           ; $5e92: $0d
	nop                                              ; $5e93: $00
	ld   a, [bc]                                     ; $5e94: $0a
	inc  e                                           ; $5e95: $1c
	ld   bc, $0101                                   ; $5e96: $01 $01 $01
	ld   bc, $9876                                   ; $5e99: $01 $76 $98
	ld   d, b                                        ; $5e9c: $50
	ld   d, [hl]                                     ; $5e9d: $56
	ld   l, b                                        ; $5e9e: $68
	sbc  [hl]                                        ; $5e9f: $9e
	or   [hl]                                        ; $5ea0: $b6
	or   b                                           ; $5ea1: $b0
	db   $eb                                         ; $5ea2: $eb
	inc  b                                           ; $5ea3: $04
	ld   c, $03                                      ; $5ea4: $0e $03
	xor  b                                           ; $5ea6: $a8
	ld   [de], a                                     ; $5ea7: $12
	ld   a, h                                        ; $5ea8: $7c
	dec  c                                           ; $5ea9: $0d
	ldh  [$cc], a                                    ; $5eaa: $e0 $cc
	or   e                                           ; $5eac: $b3
	ei                                               ; $5ead: $fb
	ldh  [c], a                                      ; $5eae: $e2
	ret  z                                           ; $5eaf: $c8

	ei                                               ; $5eb0: $fb
	ret  nz                                          ; $5eb1: $c0

	and  b                                           ; $5eb2: $a0
	ld   h, [hl]                                     ; $5eb3: $66
	sub  e                                           ; $5eb4: $93
	ld   h, l                                        ; $5eb5: $65
	and  c                                           ; $5eb6: $a1
	dec  c                                           ; $5eb7: $0d
	ld   h, l                                        ; $5eb8: $65
	adc  h                                           ; $5eb9: $8c
	ld   h, l                                        ; $5eba: $65
	ld   l, l                                        ; $5ebb: $6d
	sbc  a                                           ; $5ebc: $9f
	dec  c                                           ; $5ebd: $0d
	nop                                              ; $5ebe: $00
	ld   a, [bc]                                     ; $5ebf: $0a
	nop                                              ; $5ec0: $00
	ld   c, $7c                                      ; $5ec1: $0e $7c
	inc  e                                           ; $5ec3: $1c
	ld   [bc], a                                     ; $5ec4: $02
	ld   [bc], a                                     ; $5ec5: $02
	ld   [bc], a                                     ; $5ec6: $02
	ld   [bc], a                                     ; $5ec7: $02
	ld   bc, $718c                                   ; $5ec8: $01 $8c $71
	ld   l, l                                        ; $5ecb: $6d
	ld   e, l                                        ; $5ecc: $5d
	sbc  [hl]                                        ; $5ecd: $9e
	ld   l, l                                        ; $5ece: $6d
	and  c                                           ; $5ecf: $a1
	halt                                             ; $5ed0: $76
	ld   d, h                                        ; $5ed1: $54
	ld   h, l                                        ; $5ed2: $65
	sub  c                                           ; $5ed3: $91
	ld   a, h                                        ; $5ed4: $7c
	dec  c                                           ; $5ed5: $0d
	ld   h, c                                        ; $5ed6: $61
	and  c                                           ; $5ed7: $a1
	ld   e, e                                        ; $5ed8: $5b
	ld   a, h                                        ; $5ed9: $7c
	ld   a, b                                        ; $5eda: $78
	ld   h, e                                        ; $5edb: $63
	ld   a, c                                        ; $5edc: $79
	sub  b                                           ; $5edd: $90
	ld   d, b                                        ; $5ede: $50
	ld   e, e                                        ; $5edf: $5b
	sbc  d                                           ; $5ee0: $9a
	ld   l, l                                        ; $5ee1: $6d
	dec  c                                           ; $5ee2: $0d
	sub  b                                           ; $5ee3: $90
	and  c                                           ; $5ee4: $a1
	ld   [hl], l                                     ; $5ee5: $75
	ld   h, a                                        ; $5ee6: $67
	sbc  l                                           ; $5ee7: $9d
	ld   a, e                                        ; $5ee8: $7b
	sbc  a                                           ; $5ee9: $9f
	dec  c                                           ; $5eea: $0d
	nop                                              ; $5eeb: $00
	ld   a, [bc]                                     ; $5eec: $0a
	inc  e                                           ; $5eed: $1c
	ld   [bc], a                                     ; $5eee: $02
	ld   bc, $0101                                   ; $5eef: $01 $01 $01
	adc  h                                           ; $5ef2: $8c
	ld   c, a                                        ; $5ef3: $4f
	sbc  [hl]                                        ; $5ef4: $9e
	or   [hl]                                        ; $5ef5: $b6
	or   b                                           ; $5ef6: $b0
	db   $eb                                         ; $5ef7: $eb
	inc  b                                           ; $5ef8: $04
	ld   c, $03                                      ; $5ef9: $0e $03
	xor  b                                           ; $5efb: $a8
	ld   [de], a                                     ; $5efc: $12
	ld   a, h                                        ; $5efd: $7c
	dec  c                                           ; $5efe: $0d
	ldh  [$cc], a                                    ; $5eff: $e0 $cc
	or   e                                           ; $5f01: $b3
	ei                                               ; $5f02: $fb
	ldh  [c], a                                      ; $5f03: $e2
	ret  z                                           ; $5f04: $c8

	ei                                               ; $5f05: $fb
	ret  nz                                          ; $5f06: $c0

	and  b                                           ; $5f07: $a0
	ld   h, [hl]                                     ; $5f08: $66
	sub  e                                           ; $5f09: $93
	ld   h, l                                        ; $5f0a: $65
	and  c                                           ; $5f0b: $a1
	dec  c                                           ; $5f0c: $0d
	ld   h, l                                        ; $5f0d: $65
	ld   l, l                                        ; $5f0e: $6d
	ld   e, c                                        ; $5f0f: $59
	sub  a                                           ; $5f10: $97
	ld   d, d                                        ; $5f11: $52
	ld   d, d                                        ; $5f12: $52
	ld   [hl], l                                     ; $5f13: $75
	ld   h, a                                        ; $5f14: $67
	ld   e, a                                        ; $5f15: $5f
	ld   [hl], a                                     ; $5f16: $77
	sbc  a                                           ; $5f17: $9f
	dec  c                                           ; $5f18: $0d
	nop                                              ; $5f19: $00
	ld   a, [bc]                                     ; $5f1a: $0a
	nop                                              ; $5f1b: $00
	ld   c, $7c                                      ; $5f1c: $0e $7c
	inc  e                                           ; $5f1e: $1c
	inc  bc                                          ; $5f1f: $03
	ld   [bc], a                                     ; $5f20: $02
	ld   [bc], a                                     ; $5f21: $02
	ld   [bc], a                                     ; $5f22: $02
	ld   bc, $a16d                                   ; $5f23: $01 $6d $a1
	halt                                             ; $5f26: $76
	ld   d, h                                        ; $5f27: $54
	ld   h, l                                        ; $5f28: $65
	sub  c                                           ; $5f29: $91
	ld   a, c                                        ; $5f2a: $79
	ld   a, l                                        ; $5f2b: $7d
	ld   d, b                                        ; $5f2c: $50
	halt                                             ; $5f2d: $76
	ld   [hl], l                                     ; $5f2e: $75
	dec  c                                           ; $5f2f: $0d
	ld   [bc], a                                     ; $5f30: $02
	sbc  l                                           ; $5f31: $9d
	ld   [hl], c                                     ; $5f32: $71
	ld   [hl], h                                     ; $5f33: $74
	ld   e, b                                        ; $5f34: $58
	ld   e, l                                        ; $5f35: $5d
	sbc  l                                           ; $5f36: $9d
	sbc  a                                           ; $5f37: $9f
	dec  c                                           ; $5f38: $0d
	nop                                              ; $5f39: $00
	ld   a, [bc]                                     ; $5f3a: $0a
	inc  e                                           ; $5f3b: $1c
	inc  bc                                          ; $5f3c: $03
	inc  bc                                          ; $5f3d: $03
	inc  bc                                          ; $5f3e: $03
	ld   bc, $b0b6                                   ; $5f3f: $01 $b6 $b0
	db   $eb                                         ; $5f42: $eb
	inc  b                                           ; $5f43: $04
	ld   c, $03                                      ; $5f44: $0e $03
	xor  b                                           ; $5f46: $a8
	ld   [de], a                                     ; $5f47: $12
	ld   a, h                                        ; $5f48: $7c
	ldh  [$cc], a                                    ; $5f49: $e0 $cc
	or   e                                           ; $5f4b: $b3
	ei                                               ; $5f4c: $fb
	ldh  [c], a                                      ; $5f4d: $e2
	dec  c                                           ; $5f4e: $0d
	ret  z                                           ; $5f4f: $c8

	ei                                               ; $5f50: $fb
	ret  nz                                          ; $5f51: $c0

	and  b                                           ; $5f52: $a0
	ld   [bc], a                                     ; $5f53: $02
	sbc  a                                           ; $5f54: $9f
	ld   e, c                                        ; $5f55: $59
	ld   a, c                                        ; $5f56: $79
	ld   h, [hl]                                     ; $5f57: $66
	sub  e                                           ; $5f58: $93
	ld   h, l                                        ; $5f59: $65
	and  c                                           ; $5f5a: $a1
	dec  c                                           ; $5f5b: $0d
	ld   h, l                                        ; $5f5c: $65
	ld   l, l                                        ; $5f5d: $6d
	sbc  l                                           ; $5f5e: $9d
	sbc  a                                           ; $5f5f: $9f
	dec  c                                           ; $5f60: $0d
	nop                                              ; $5f61: $00
	ld   a, [bc]                                     ; $5f62: $0a
	nop                                              ; $5f63: $00
	ld   c, $7c                                      ; $5f64: $0e $7c
	inc  e                                           ; $5f66: $1c
	inc  b                                           ; $5f67: $04
	rlca                                             ; $5f68: $07
	rlca                                             ; $5f69: $07
	ld   [bc], a                                     ; $5f6a: $02
	ld   bc, $fc84                                   ; $5f6b: $01 $84 $fc
	ld   a, [$740d]                                  ; $5f6e: $fa $0d $74
	ld   a, d                                        ; $5f71: $7a
	ld   e, e                                        ; $5f72: $5b
	ld   a, l                                        ; $5f73: $7d
	ld   d, d                                        ; $5f74: $52
	ld   e, a                                        ; $5f75: $5f
	ld   a, b                                        ; $5f76: $78
	ld   d, d                                        ; $5f77: $52
	and  c                                           ; $5f78: $a1
	ld   l, [hl]                                     ; $5f79: $6e
	sub  [hl]                                        ; $5f7a: $96
	db   $fc                                         ; $5f7b: $fc
	ld   a, [$000d]                                  ; $5f7c: $fa $0d $00
	ld   a, [bc]                                     ; $5f7f: $0a
	inc  e                                           ; $5f80: $1c
	inc  b                                           ; $5f81: $04
	ld   bc, $0101                                   ; $5f82: $01 $01 $01
	or   [hl]                                        ; $5f85: $b6
	or   b                                           ; $5f86: $b0
	db   $eb                                         ; $5f87: $eb
	ld   l, l                                        ; $5f88: $6d
	ld   d, d                                        ; $5f89: $52
	ld   l, c                                        ; $5f8a: $69
	and  c                                           ; $5f8b: $a1
	ld   [de], a                                     ; $5f8c: $12
	ld   a, h                                        ; $5f8d: $7c
	dec  c                                           ; $5f8e: $0d
	ldh  [$cc], a                                    ; $5f8f: $e0 $cc
	or   e                                           ; $5f91: $b3
	ei                                               ; $5f92: $fb
	ldh  [c], a                                      ; $5f93: $e2
	ret  z                                           ; $5f94: $c8

	ei                                               ; $5f95: $fb
	ret  nz                                          ; $5f96: $c0

	ld   a, l                                        ; $5f97: $7d
	sub  b                                           ; $5f98: $90
	sub  a                                           ; $5f99: $97
	ld   [hl], c                                     ; $5f9a: $71
	ld   l, l                                        ; $5f9b: $6d
	dec  c                                           ; $5f9c: $0d
	ld   e, c                                        ; $5f9d: $59
	sub  a                                           ; $5f9e: $97
	sub  h                                           ; $5f9f: $94
	sbc  c                                           ; $5fa0: $99
	ld   h, l                                        ; $5fa1: $65
	ld   [hl], h                                     ; $5fa2: $74
	ld   a, e                                        ; $5fa3: $7b
	sbc  a                                           ; $5fa4: $9f
	dec  c                                           ; $5fa5: $0d
	nop                                              ; $5fa6: $00
	ld   a, [bc]                                     ; $5fa7: $0a
	nop                                              ; $5fa8: $00
	ld   c, $7c                                      ; $5fa9: $0e $7c
	inc  c                                           ; $5fab: $0c
	add  hl, bc                                      ; $5fac: $09
	dec  c                                           ; $5fad: $0d
	dec  b                                           ; $5fae: $05
	jr   nz, jr_041_5fc0                             ; $5faf: $20 $0f

	dec  b                                           ; $5fb1: $05
	ld   bc, $0102                                   ; $5fb2: $01 $02 $01
	ld   d, b                                        ; $5fb5: $50
	ld   l, a                                        ; $5fb6: $6f
	sub  c                                           ; $5fb7: $91
	db   $fc                                         ; $5fb8: $fc
	sbc  [hl]                                        ; $5fb9: $9e
	adc  h                                           ; $5fba: $8c
	ld   l, l                                        ; $5fbb: $6d
	sub  d                                           ; $5fbc: $92
	ld   [hl], c                                     ; $5fbd: $71
	ld   [hl], h                                     ; $5fbe: $74
	sub  b                                           ; $5fbf: $90

jr_041_5fc0:
	ld   d, h                                        ; $5fc0: $54
	ld   l, l                                        ; $5fc1: $6d
	sbc  a                                           ; $5fc2: $9f
	dec  c                                           ; $5fc3: $0d
	nop                                              ; $5fc4: $00
	inc  e                                           ; $5fc5: $1c
	dec  b                                           ; $5fc6: $05
	rlca                                             ; $5fc7: $07
	rlca                                             ; $5fc8: $07
	ld   bc, $7471                                   ; $5fc9: $01 $71 $74
	xor  h                                           ; $5fcc: $ac
	call nz, $a3c9                                   ; $5fcd: $c4 $c9 $a3
	push af                                          ; $5fd0: $f5
	jp   z, $fbdb                                    ; $5fd1: $ca $db $fb

	cp   d                                           ; $5fd4: $ba
	ret                                              ; $5fd5: $c9


	ld   a, l                                        ; $5fd6: $7d
	dec  c                                           ; $5fd7: $0d
	sub  d                                           ; $5fd8: $92
	adc  a                                           ; $5fd9: $8f
	ld   d, d                                        ; $5fda: $52
	ld   [hl], c                                     ; $5fdb: $71
	ld   l, a                                        ; $5fdc: $6f
	sub  e                                           ; $5fdd: $93
	ld   a, c                                        ; $5fde: $79
	ld   a, [$000d]                                  ; $5fdf: $fa $0d $00
	ld   a, [bc]                                     ; $5fe2: $0a
	dec  c                                           ; $5fe3: $0d
	dec  b                                           ; $5fe4: $05
	ld   bc, $5801                                   ; $5fe5: $01 $01 $58
	ld   [hl], c                                     ; $5fe8: $71
	halt                                             ; $5fe9: $76
	sbc  [hl]                                        ; $5fea: $9e
	ld   a, b                                        ; $5feb: $78
	and  c                                           ; $5fec: $a1
	sub  d                                           ; $5fed: $92
	or   [hl]                                        ; $5fee: $b6
	or   b                                           ; $5fef: $b0
	db   $eb                                         ; $5ff0: $eb
	inc  b                                           ; $5ff1: $04
	ld   c, $03                                      ; $5ff2: $0e $03
	xor  b                                           ; $5ff4: $a8
	ld   [de], a                                     ; $5ff5: $12
	ld   a, h                                        ; $5ff6: $7c
	dec  c                                           ; $5ff7: $0d
	ldh  [$cc], a                                    ; $5ff8: $e0 $cc
	or   e                                           ; $5ffa: $b3
	ei                                               ; $5ffb: $fb
	ldh  [c], a                                      ; $5ffc: $e2
	ret  z                                           ; $5ffd: $c8

	ei                                               ; $5ffe: $fb
	ret  nz                                          ; $5fff: $c0

	ld   e, d                                        ; $6000: $5a
	ld   e, e                                        ; $6001: $5b
	ld   l, l                                        ; $6002: $6d
	dec  c                                           ; $6003: $0d
	sub  [hl]                                        ; $6004: $96
	ld   d, h                                        ; $6005: $54
	sub  d                                           ; $6006: $92
	ld   a, b                                        ; $6007: $78
	sbc  a                                           ; $6008: $9f
	dec  c                                           ; $6009: $0d
	nop                                              ; $600a: $00
	ld   a, [bc]                                     ; $600b: $0a
	ld   bc, $7192                                   ; $600c: $01 $92 $71
	ld   a, a                                        ; $600f: $7f
	ld   [bc], a                                     ; $6010: $02
	add  h                                           ; $6011: $84
	ld   [bc], a                                     ; $6012: $02
	and  d                                           ; $6013: $a2
	ld   a, l                                        ; $6014: $7d
	ld   d, d                                        ; $6015: $52
	ld   l, [hl]                                     ; $6016: $6e
	ld   d, d                                        ; $6017: $52
	sub  d                                           ; $6018: $92
	ld   a, b                                        ; $6019: $78
	ld   c, a                                        ; $601a: $4f
	sbc  a                                           ; $601b: $9f
	dec  c                                           ; $601c: $0d
	adc  c                                           ; $601d: $89
	ld   a, b                                        ; $601e: $78
	ld   a, [$000d]                                  ; $601f: $fa $0d $00
	ld   a, [bc]                                     ; $6022: $0a
	nop                                              ; $6023: $00
	ld   c, $7c                                      ; $6024: $0e $7c
	inc  e                                           ; $6026: $1c
	ld   b, $01                                      ; $6027: $06 $01
	ld   bc, $0102                                   ; $6029: $01 $02 $01
	ld   e, b                                        ; $602c: $58
	ld   [hl], c                                     ; $602d: $71
	ld   h, a                                        ; $602e: $67
	ld   a, [$020d]                                  ; $602f: $fa $0d $02
	and  c                                           ; $6032: $a1
	ld   [bc], a                                     ; $6033: $02
	ld   a, e                                        ; $6034: $7b
	ld   e, d                                        ; $6035: $5a
	ld   l, l                                        ; $6036: $6d
	sbc  b                                           ; $6037: $98
	ld   a, b                                        ; $6038: $78
	ld   d, d                                        ; $6039: $52
	sub  d                                           ; $603a: $92
	ld   [hl], d                                     ; $603b: $72
	ld   a, c                                        ; $603c: $79
	ld   a, l                                        ; $603d: $7d
	sbc  [hl]                                        ; $603e: $9e
	dec  c                                           ; $603f: $0d
	ld   d, b                                        ; $6040: $50
	halt                                             ; $6041: $76
	ld   [hl], l                                     ; $6042: $75
	xor  h                                           ; $6043: $ac
	push bc                                          ; $6044: $c5
	and  b                                           ; $6045: $a0
	ld   d, d                                        ; $6046: $52
	sbc  d                                           ; $6047: $9a
	halt                                             ; $6048: $76
	ld   d, d                                        ; $6049: $52
	ld   [hl], h                                     ; $604a: $74
	sub  d                                           ; $604b: $92
	sbc  c                                           ; $604c: $99
	sbc  a                                           ; $604d: $9f
	dec  c                                           ; $604e: $0d
	nop                                              ; $604f: $00
	ld   a, [bc]                                     ; $6050: $0a
	ld   bc, $6d50                                   ; $6051: $01 $50 $6d
	ld   h, l                                        ; $6054: $65
	ld   a, c                                        ; $6055: $79
	sub  c                                           ; $6056: $91
	ld   c, a                                        ; $6057: $4f
	sbc  [hl]                                        ; $6058: $9e
	sub  [hl]                                        ; $6059: $96
	ld   e, l                                        ; $605a: $5d
	sbc  l                                           ; $605b: $9d
	ld   e, c                                        ; $605c: $59
	sub  a                                           ; $605d: $97
	ld   a, b                                        ; $605e: $78
	ld   d, d                                        ; $605f: $52
	dec  c                                           ; $6060: $0d
	ld   e, a                                        ; $6061: $5f
	ld   [hl], a                                     ; $6062: $77
	sbc  [hl]                                        ; $6063: $9e
	ldh  [$cc], a                                    ; $6064: $e0 $cc
	or   e                                           ; $6066: $b3
	ei                                               ; $6067: $fb
	ldh  [c], a                                      ; $6068: $e2
	ret  z                                           ; $6069: $c8

	ei                                               ; $606a: $fb
	ret  nz                                          ; $606b: $c0

	ld   [hl], c                                     ; $606c: $71
	ld   [hl], h                                     ; $606d: $74
	dec  c                                           ; $606e: $0d
	ld   a, h                                        ; $606f: $7c
	ld   a, l                                        ; $6070: $7d
	ld   e, e                                        ; $6071: $5b
	ld   [hl], h                                     ; $6072: $74
	sbc  c                                           ; $6073: $99
	sub  [hl]                                        ; $6074: $96
	ld   d, h                                        ; $6075: $54
	ld   l, [hl]                                     ; $6076: $6e
	ld   l, d                                        ; $6077: $6a
	sbc  a                                           ; $6078: $9f
	dec  c                                           ; $6079: $0d
	nop                                              ; $607a: $00
	ld   a, [bc]                                     ; $607b: $0a
	nop                                              ; $607c: $00
	nop                                              ; $607d: $00

	StartScript
if def(VWF)
else
Script_005::
endc
	ScriptOpt_JumpIfCalcValIsNon0 .ref_b
		Rpn06 $20, $00
		RpnPush $00
		RpnEq
		RpnEnd
	ScriptOpt_End
.ref_b:
	ScriptOpt_LoadScenery $13
	ScriptOpt_1c $0e, $01, $01
	ScriptOpt_02
	ScriptOpt_DisplayText
		TEXT $b6, $b0, $eb, $40e, $3a8, $21, $1c, $a0, $58, $48d, $52, $365, $60, $0d, $52, $6d, $6e, $5b, $9e, $8c, $61, $76, $79, $50, $98, $5a, $76, $54, $0d, $62, $64, $52, $8c, $fc, $67, $9f, $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_05 $20, $00
		RpnPush $01
		RpnEnd
	ScriptOpt_End

; unused - $60c3
	nop                                              ; $60c3: $00

if def(VWF)
else
	StartScript

Script_006::
endc
	ScriptOpt_13 $04
	ScriptOpt_LoadScenery $93
	ScriptOpt_SetPortrait $00, $01
	ScriptOpt_02
	ScriptOpt_DisplayText
		TEXT $a1, $fc, $2a5, $4aa, $90, $52, $52, $413, $2a1, $6e, $78, $fc, $9f
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $0b, $00, $00
	ScriptOpt_DisplayText
		TEXT $6b, $61, $7c, $50, $78, $6d, $9e, $6f, $95, $71, $76, $0d, $52, $52, $59, $65, $97, $f9
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_SetPortrait $00, $01
	ScriptOpt_DisplayText
		TEXT $56, $ff, $ff, $f9, $0d, $46d, $7c, $61, $76, $75, $67, $59, $f9
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $0b, $01, $01
	ScriptOpt_DisplayText
		TEXT $6b, $54, $9e, $50, $78, $6d, $9e, $78, $59, $78, $59, $52, $52, $0d, $90, $7c, $a0, $3a0, $71, $74, $52, $99, $9d, $7b, $9f
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $0b, $00, $00
	ScriptOpt_DisplayText
		TEXT $9d, $6d, $65, $7d, $9e, $408, $28f, $290, $291, $409, $f3, $69e, $31f, $501, $0d, $5f8, $686, $50, $92, $8f, $9f
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText
		TEXT $2a5, $9e, $357, $28f, $a0, $293, $71, $74, $9e, $509, $50a, $a0, $0d, $3a0, $71, $6d, $51f, $3b0, $a0, $63, $5a, $65, $74, $52, $99, $0d, $76, $61, $9b, $78, $7c, $96, $9f
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText
		TEXT $6b, $65, $74, $9e, $4e2, $4b2, $78, $386, $79, $7d, $0d, $408, $28f, $290, $291, $409, $86, $7c, $220, $f8, $29b, $7c, $0d, $40d, $296, $445, $40a, $a0, $58, $280, $52, $65, $74, $52, $99, $7c, $9f
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText
		TEXT $77, $54, $59, $65, $97, $f9, $0d, $90, $65, $9e, $50, $78, $6d, $5a, $331, $7e, $9a, $6d, $97, $0d, $40d, $296, $445, $40a, $67, $99, $2a1, $7d, $50, $99, $f9
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_1c $0b, $01, $01
	ScriptOpt_DisplayText
		TEXT $76, $7d, $29d, $71, $74, $90, $9e, $8c, $6e, $34a, $2f5, $79, $0d, $283, $8c, $71, $6d, $9d, $5f, $75, $7d, $78, $52, $7c, $96, $9f
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText
		TEXT $357, $28f, $a0, $293, $71, $74, $9e, $6b, $7c, $40b, $75, $0d, $50, $78, $6d, $7c, $3a6, $315, $5a, $220, $479, $2be, $52, $76, $0d, $78, $71, $6d, $97, $36b, $5e4, $a0, $39f, $99, $9d, $9f
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText
		TEXT $6b, $7c, $36f, $7d, $9e, $96, $9b, $65, $5d, $0d, $6d, $7c, $8e, $9d, $7b, $9f
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_0d $00, $00
	ScriptOpt_SetPortrait $00, $01
	ScriptOpt_2c $10
	ScriptOpt_LoadScenery $b9
	ScriptOpt_2c $02
	ScriptOpt_DisplayText
		TEXT $76, $9e, $52, $54, $61, $76, $5a, $609, $f8, $29b, $34f, $79, $0d, $50, $71, $6d, $a1, $6e, $5f, $77, $ff, $ff, $0d, $8c, $63, $59, $9e, $dc, $f5, $c9, $79, $36b, $5e4, $5a, $ff, $ff
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText
		TEXT $107, $2e2, $436, $7c, $408, $28f, $290, $291, $409, $86, $7c, $0d, $10, $40d, $296, $445, $40a, $a0, $7b, $5a, $54, $9f, $0d, $10, $408, $28f, $290, $291, $409, $10, $4d7, $421, $220, $5a9, $108
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText
		TEXT $8c, $63, $59, $9e, $4de, $2a9, $382, $7c, $46d, $5a, $0d, $56, $97, $7e, $9a, $99, $78, $a1, $74, $ff, $ff
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText
		TEXT $50, $7c, $408, $28f, $290, $291, $409, $79, $40d, $296, $445, $40a, $0d, $75, $5b, $99, $78, $a1, $74, $9e, $4be, $7c, $96, $54, $6e, $ff, $ff
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_DisplayText
		TEXT $46d, $7c, $509, $50a, $5a, $77, $9a, $89, $77, $7c, $e4, $cf, $59, $7d, $0d, $9d, $59, $97, $78, $52, $5f, $77, $ff, $ff, $0d, $5a, $a1, $7e, $71, $74, $8d, $96, $54, $fa
	ScriptOpt_SetDelay $3c
	ScriptOpt_DisplayText
		TEXT $0d
	ScriptOpt_ContinuePrompt
	ScriptOpt_SetDelay $3c
	ScriptOpt_End


	rlca                                             ; $637f: $07
	jr   z, jr_041_6382                              ; $6380: $28 $00

jr_041_6382:
	ld   [bc], a                                     ; $6382: $02
	nop                                              ; $6383: $00
	ld   bc, $2001                                   ; $6384: $01 $01 $20
	nop                                              ; $6387: $00
	ld   c, $02                                      ; $6388: $0e $02
	rrca                                             ; $638a: $0f
	nop                                              ; $638b: $00
	ld   bc, $0102                                   ; $638c: $01 $02 $01
	ld   h, [hl]                                     ; $638f: $66
	sub  c                                           ; $6390: $91
	ld   c, a                                        ; $6391: $4f
	sbc  [hl]                                        ; $6392: $9e
	cp   d                                           ; $6393: $ba
	or   d                                           ; $6394: $b2
	cp   c                                           ; $6395: $b9
	rst  $20                                         ; $6396: $e7
	ei                                               ; $6397: $fb
	db   $ed                                         ; $6398: $ed
	and  b                                           ; $6399: $a0
	dec  c                                           ; $639a: $0d
	ld   e, e                                        ; $639b: $5b
	adc  a                                           ; $639c: $8f
	sub  [hl]                                        ; $639d: $96
	ld   d, h                                        ; $639e: $54
	sbc  a                                           ; $639f: $9f
	dec  c                                           ; $63a0: $0d
	nop                                              ; $63a1: $00
	ld   a, [bc]                                     ; $63a2: $0a
	jr   nc, jr_041_63ab                             ; $63a3: $30 $06

	ld   b, h                                        ; $63a5: $44
	nop                                              ; $63a6: $00
	ld   bc, $9166                                   ; $63a7: $01 $66 $91
	ld   c, a                                        ; $63aa: $4f

jr_041_63ab:
	sbc  [hl]                                        ; $63ab: $9e
	sub  a                                           ; $63ac: $97
	ld   d, d                                        ; $63ad: $52
	ld   h, l                                        ; $63ae: $65
	sub  e                                           ; $63af: $93
	ld   d, h                                        ; $63b0: $54
	ld   a, h                                        ; $63b1: $7c
	dec  c                                           ; $63b2: $0d
	cp   d                                           ; $63b3: $ba
	or   d                                           ; $63b4: $b2
	cp   c                                           ; $63b5: $b9
	rst  $20                                         ; $63b6: $e7
	ei                                               ; $63b7: $fb
	db   $ed                                         ; $63b8: $ed
	and  b                                           ; $63b9: $a0
	ld   l, l                                        ; $63ba: $6d
	ld   [hl], h                                     ; $63bb: $74
	sub  [hl]                                        ; $63bc: $96
	ld   d, h                                        ; $63bd: $54
	sbc  a                                           ; $63be: $9f
	dec  c                                           ; $63bf: $0d
	nop                                              ; $63c0: $00
	ld   a, [bc]                                     ; $63c1: $0a
	jr   nc, jr_041_63c5                             ; $63c2: $30 $01

	ld   h, c                                        ; $63c4: $61

jr_041_63c5:
	sbc  d                                           ; $63c5: $9a
	ld   [hl], l                                     ; $63c6: $75
	sub  [hl]                                        ; $63c7: $96
	ld   h, l                                        ; $63c8: $65
	rst  $38                                         ; $63c9: $ff
	sbc  [hl]                                        ; $63ca: $9e
	halt                                             ; $63cb: $76
	sbc  a                                           ; $63cc: $9f
	dec  c                                           ; $63cd: $0d
	nop                                              ; $63ce: $00
	ld   a, [bc]                                     ; $63cf: $0a
	nop                                              ; $63d0: $00
	nop                                              ; $63d1: $00
	rlca                                             ; $63d2: $07
	ld   l, h                                        ; $63d3: $6c
	rra                                              ; $63d4: $1f
	inc  b                                           ; $63d5: $04
	add  b                                           ; $63d6: $80
	and  d                                           ; $63d7: $a2
	ld   bc, $20ff                                   ; $63d8: $01 $ff $20
	nop                                              ; $63db: $00
	rlca                                             ; $63dc: $07
	and  d                                           ; $63dd: $a2
	inc  e                                           ; $63de: $1c
	inc  b                                           ; $63df: $04
	add  b                                           ; $63e0: $80
	and  c                                           ; $63e1: $a1
	ld   bc, $20ff                                   ; $63e2: $01 $ff $20
	nop                                              ; $63e5: $00
	rlca                                             ; $63e6: $07
	sbc  h                                           ; $63e7: $9c
	rla                                              ; $63e8: $17
	inc  b                                           ; $63e9: $04
	add  b                                           ; $63ea: $80
	and  b                                           ; $63eb: $a0
	ld   bc, $20ff                                   ; $63ec: $01 $ff $20
	nop                                              ; $63ef: $00
	rlca                                             ; $63f0: $07
	ld   d, h                                        ; $63f1: $54
	inc  de                                          ; $63f2: $13
	inc  b                                           ; $63f3: $04
	add  b                                           ; $63f4: $80
	sbc  a                                           ; $63f5: $9f
	ld   bc, $20ff                                   ; $63f6: $01 $ff $20
	nop                                              ; $63f9: $00
	rlca                                             ; $63fa: $07
	ld   c, a                                        ; $63fb: $4f
	db   $10                                         ; $63fc: $10
	inc  b                                           ; $63fd: $04
	add  b                                           ; $63fe: $80
	sbc  [hl]                                        ; $63ff: $9e
	ld   bc, $20ff                                   ; $6400: $01 $ff $20
	nop                                              ; $6403: $00
	rlca                                             ; $6404: $07
	push de                                          ; $6405: $d5
	dec  c                                           ; $6406: $0d
	inc  b                                           ; $6407: $04
	add  b                                           ; $6408: $80
	sbc  l                                           ; $6409: $9d
	ld   bc, $20ff                                   ; $640a: $01 $ff $20
	nop                                              ; $640d: $00
	rlca                                             ; $640e: $07
	ld   [$040a], sp                                 ; $640f: $08 $0a $04
	add  b                                           ; $6412: $80
	sbc  h                                           ; $6413: $9c
	ld   bc, $20ff                                   ; $6414: $01 $ff $20
	nop                                              ; $6417: $00
	inc  e                                           ; $6418: $1c
	ld   c, $00                                      ; $6419: $0e $00
	nop                                              ; $641b: $00
	ld   bc, $9750                                   ; $641c: $01 $50 $97
	sbc  [hl]                                        ; $641f: $9e
	ld   [$6300], sp                                 ; $6420: $08 $00 $63
	and  c                                           ; $6423: $a1
	sbc  a                                           ; $6424: $9f
	dec  c                                           ; $6425: $0d
	ld   d, d                                        ; $6426: $52
	sub  a                                           ; $6427: $97
	ld   [hl], c                                     ; $6428: $71
	ld   h, l                                        ; $6429: $65
	sub  c                                           ; $642a: $91
	ld   d, d                                        ; $642b: $52
	adc  h                                           ; $642c: $8c
	ld   l, c                                        ; $642d: $69
	rst  $38                                         ; $642e: $ff
	rst  $38                                         ; $642f: $ff
	halt                                             ; $6430: $76
	sbc  [hl]                                        ; $6431: $9e
	ld   [bc], a                                     ; $6432: $02
	sbc  l                                           ; $6433: $9d
	ld   d, d                                        ; $6434: $52
	dec  c                                           ; $6435: $0d
	ld   l, l                                        ; $6436: $6d
	ld   d, d                                        ; $6437: $52
	halt                                             ; $6438: $76
	ld   h, c                                        ; $6439: $61
	sbc  e                                           ; $643a: $9b
	ld   a, b                                        ; $643b: $78
	ld   a, h                                        ; $643c: $7c
	ld   [hl], l                                     ; $643d: $75
	ld   h, a                                        ; $643e: $67
	ld   e, d                                        ; $643f: $5a
	rst  $38                                         ; $6440: $ff
	rst  $38                                         ; $6441: $ff
	dec  c                                           ; $6442: $0d
	nop                                              ; $6443: $00
	ld   a, [bc]                                     ; $6444: $0a
	inc  e                                           ; $6445: $1c
	ld   c, $03                                      ; $6446: $0e $03
	inc  bc                                          ; $6448: $03
	ld   bc, $efd7                                   ; $6449: $01 $d7 $ef
	rst  JumpTable                                         ; $644c: $df
	and  l                                           ; $644d: $a5
	jp   z, $9e7d                                    ; $644e: $ca $7d $9e

	sub  [hl]                                        ; $6451: $96
	sbc  b                                           ; $6452: $98
	inc  b                                           ; $6453: $04
	rrca                                             ; $6454: $0f
	ld   e, l                                        ; $6455: $5d
	ld   a, h                                        ; $6456: $7c
	dec  c                                           ; $6457: $0d
	sub  $a2                                         ; $6458: $d6 $a2
	push af                                          ; $645a: $f5
	ld   a, h                                        ; $645b: $7c
	adc  l                                           ; $645c: $8d
	ld   a, b                                        ; $645d: $78
	ld   h, e                                        ; $645e: $63
	adc  h                                           ; $645f: $8c
	ld   a, c                                        ; $6460: $79
	inc  b                                           ; $6461: $04
	adc  l                                           ; $6462: $8d
	ld   [hl], c                                     ; $6463: $71
	ld   [hl], h                                     ; $6464: $74
	dec  c                                           ; $6465: $0d
	ld   d, d                                        ; $6466: $52
	ld   l, l                                        ; $6467: $6d
	ld   l, [hl]                                     ; $6468: $6e
	ld   e, l                                        ; $6469: $5d
	ld   l, l                                        ; $646a: $6d
	adc  a                                           ; $646b: $8f
	ld   a, c                                        ; $646c: $79
	rst  $38                                         ; $646d: $ff
	rst  $38                                         ; $646e: $ff
	dec  c                                           ; $646f: $0d
	nop                                              ; $6470: $00
	ld   a, [bc]                                     ; $6471: $0a
	ld   bc, $7903                                   ; $6472: $01 $03 $79
	ld   a, c                                        ; $6475: $79
	ld   [de], a                                     ; $6476: $12
	inc  b                                           ; $6477: $04
	push bc                                          ; $6478: $c5
	ld   h, l                                        ; $6479: $65
	ld   e, c                                        ; $647a: $59
	sbc  [hl]                                        ; $647b: $9e
	ld   e, b                                        ; $647c: $58
	inc  b                                           ; $647d: $04
	adc  l                                           ; $647e: $8d
	ld   d, d                                        ; $647f: $52
	ld   b, $85                                      ; $6480: $06 $85
	adc  a                                           ; $6482: $8f
	dec  c                                           ; $6483: $0d
	ld   [hl], l                                     ; $6484: $75
	ld   e, e                                        ; $6485: $5b
	ld   a, b                                        ; $6486: $78
	ld   d, d                                        ; $6487: $52
	and  c                                           ; $6488: $a1
	ld   [hl], l                                     ; $6489: $75
	ld   h, a                                        ; $648a: $67
	sbc  a                                           ; $648b: $9f
	dec  c                                           ; $648c: $0d
	ld   h, d                                        ; $648d: $62
	adc  a                                           ; $648e: $8f
	and  c                                           ; $648f: $a1
	ld   a, b                                        ; $6490: $78
	ld   h, e                                        ; $6491: $63
	ld   d, d                                        ; $6492: $52
	sbc  a                                           ; $6493: $9f
	dec  c                                           ; $6494: $0d
	nop                                              ; $6495: $00
	ld   a, [bc]                                     ; $6496: $0a
	add  hl, de                                      ; $6497: $19
	dec  b                                           ; $6498: $05
	inc  bc                                          ; $6499: $03
	inc  b                                           ; $649a: $04
	dec  a                                           ; $649b: $3d
	ld   b, $02                                      ; $649c: $06 $02
	ld   h, l                                        ; $649e: $65
	ld   [hl], h                                     ; $649f: $74
	ld   [bc], a                                     ; $64a0: $02
	ld   d, e                                        ; $64a1: $53
	sbc  c                                           ; $64a2: $99
	nop                                              ; $64a3: $00
	nop                                              ; $64a4: $00
	ld   l, [hl]                                     ; $64a5: $6e
	ld   l, [hl]                                     ; $64a6: $6e
	and  b                                           ; $64a7: $a0
	ld   h, c                                        ; $64a8: $61
	ld   a, e                                        ; $64a9: $7b
	sbc  c                                           ; $64aa: $99
	nop                                              ; $64ab: $00
	ld   bc, $5b06                                   ; $64ac: $01 $06 $5b
	halt                                             ; $64af: $76
	ld   e, b                                        ; $64b0: $58
	ld   h, l                                        ; $64b1: $65
	sub  c                                           ; $64b2: $91
	add  a                                           ; $64b3: $87
	sbc  b                                           ; $64b4: $98
	ld   h, a                                        ; $64b5: $67
	sbc  c                                           ; $64b6: $99
	nop                                              ; $64b7: $00
	ld   [bc], a                                     ; $64b8: $02
	rlca                                             ; $64b9: $07
	dec  b                                           ; $64ba: $05
	ld   bc, $0302                                   ; $64bb: $01 $02 $03
	ld   bc, $2000                                   ; $64be: $01 $00 $20
	nop                                              ; $64c1: $00
	rlca                                             ; $64c2: $07
	ld   [hl-], a                                    ; $64c3: $32
	ld   bc, $0302                                   ; $64c4: $01 $02 $03
	ld   bc, $2001                                   ; $64c7: $01 $01 $20
	nop                                              ; $64ca: $00
	rlca                                             ; $64cb: $07
	nop                                              ; $64cc: $00
	ld   [bc], a                                     ; $64cd: $02
	ld   [bc], a                                     ; $64ce: $02
	inc  bc                                          ; $64cf: $03
	ld   bc, $2002                                   ; $64d0: $01 $02 $20
	nop                                              ; $64d3: $00
	ld   b, $05                                      ; $64d4: $06 $05
	ld   bc, $000f                                   ; $64d6: $01 $0f $00
	ld   bc, $6b01                                   ; $64d9: $01 $01 $6b
	ld   d, h                                        ; $64dc: $54
	ld   [hl], l                                     ; $64dd: $75
	ld   h, a                                        ; $64de: $67
	ld   e, c                                        ; $64df: $59
	rst  $38                                         ; $64e0: $ff
	rst  $38                                         ; $64e1: $ff
	dec  c                                           ; $64e2: $0d
	inc  bc                                          ; $64e3: $03
	dec  c                                           ; $64e4: $0d
	inc  b                                           ; $64e5: $04
	ld   a, b                                        ; $64e6: $78
	ld   a, b                                        ; $64e7: $78
	ld   d, d                                        ; $64e8: $52
	ld   [hl], l                                     ; $64e9: $75
	ld   h, a                                        ; $64ea: $67
	ld   a, e                                        ; $64eb: $7b
	rst  $38                                         ; $64ec: $ff
	rst  $38                                         ; $64ed: $ff
	dec  c                                           ; $64ee: $0d
	nop                                              ; $64ef: $00
	dec  c                                           ; $64f0: $0d
	ld   c, $01                                      ; $64f1: $0e $01
	ld   bc, $7d75                                   ; $64f3: $01 $75 $7d
	sbc  [hl]                                        ; $64f6: $9e
	adc  h                                           ; $64f7: $8c
	ld   l, l                                        ; $64f8: $6d
	sbc  a                                           ; $64f9: $9f
	dec  c                                           ; $64fa: $0d
	nop                                              ; $64fb: $00
	ld   a, [bc]                                     ; $64fc: $0a
	dec  b                                           ; $64fd: $05
	add  b                                           ; $64fe: $80
	sbc  h                                           ; $64ff: $9c
	ld   bc, $0001                                   ; $6500: $01 $01 $00
	nop                                              ; $6503: $00
	rrca                                             ; $6504: $0f
	nop                                              ; $6505: $00
	ld   bc, $5601                                   ; $6506: $01 $01 $56
	db   $fc                                         ; $6509: $fc
	sbc  [hl]                                        ; $650a: $9e
	ld   l, e                                        ; $650b: $6b
	ld   d, h                                        ; $650c: $54
	ld   [bc], a                                     ; $650d: $02
	sbc  l                                           ; $650e: $9d
	sbc  l                                           ; $650f: $9d
	ld   l, b                                        ; $6510: $68
	ld   a, c                                        ; $6511: $79
	dec  c                                           ; $6512: $0d
	sub  b                                           ; $6513: $90
	ld   d, h                                        ; $6514: $54
	ld   [de], a                                     ; $6515: $12
	inc  b                                           ; $6516: $04
	push bc                                          ; $6517: $c5
	ld   b, $1a                                      ; $6518: $06 $1a
	ld   [hl], c                                     ; $651a: $71
	ld   [hl], h                                     ; $651b: $74
	ld   e, l                                        ; $651c: $5d
	ld   l, [hl]                                     ; $651d: $6e
	ld   h, e                                        ; $651e: $63
	ld   d, d                                        ; $651f: $52
	sub  [hl]                                        ; $6520: $96
	sbc  a                                           ; $6521: $9f
	dec  c                                           ; $6522: $0d
	nop                                              ; $6523: $00
	ld   a, [bc]                                     ; $6524: $0a
	ld   bc, $5d8a                                   ; $6525: $01 $8a $5d
	sbc  [hl]                                        ; $6528: $9e
	ld   l, d                                        ; $6529: $6a
	add  b                                           ; $652a: $80
	halt                                             ; $652b: $76
	sub  b                                           ; $652c: $90
	dec  c                                           ; $652d: $0d
	ld   [bc], a                                     ; $652e: $02
	sbc  b                                           ; $652f: $98
	inc  bc                                          ; $6530: $03
	nop                                              ; $6531: $00
	ld   a, h                                        ; $6532: $7c
	rst  $10                                         ; $6533: $d7
	rst  $28                                         ; $6534: $ef
	rst  JumpTable                                         ; $6535: $df
	and  l                                           ; $6536: $a5
	jp   z, $03a0                                    ; $6537: $ca $a0 $03

	ld   d, a                                        ; $653a: $57
	inc  b                                           ; $653b: $04
	sub  l                                           ; $653c: $95
	dec  c                                           ; $653d: $0d
	inc  bc                                          ; $653e: $03
	ld   h, d                                        ; $653f: $62
	adc  a                                           ; $6540: $8f
	ld   l, l                                        ; $6541: $6d
	ld   d, d                                        ; $6542: $52
	and  c                                           ; $6543: $a1
	ld   [hl], l                                     ; $6544: $75
	ld   h, a                                        ; $6545: $67
	sub  [hl]                                        ; $6546: $96
	sbc  a                                           ; $6547: $9f
	dec  c                                           ; $6548: $0d
	nop                                              ; $6549: $00
	ld   a, [bc]                                     ; $654a: $0a
	rrca                                             ; $654b: $0f
	ld   c, $03                                      ; $654c: $0e $03
	ld   bc, $9e6b                                   ; $654e: $01 $6b $9e
	ld   l, e                                        ; $6551: $6b
	and  c                                           ; $6552: $a1
	ld   a, b                                        ; $6553: $78
	ld   h, c                                        ; $6554: $61
	halt                                             ; $6555: $76
	and  b                                           ; $6556: $a0
	dec  c                                           ; $6557: $0d
	ld   d, d                                        ; $6558: $52
	sbc  l                                           ; $6559: $9d
	sbc  d                                           ; $655a: $9a
	ld   [hl], h                                     ; $655b: $74
	sub  b                                           ; $655c: $90
	rst  $38                                         ; $655d: $ff
	rst  $38                                         ; $655e: $ff
	dec  c                                           ; $655f: $0d
	nop                                              ; $6560: $00
	ld   a, [bc]                                     ; $6561: $0a
	inc  e                                           ; $6562: $1c
	ld   c, $02                                      ; $6563: $0e $02
	ld   [bc], a                                     ; $6565: $02
	ld   bc, $7976                                   ; $6566: $01 $76 $79
	ld   e, c                                        ; $6569: $59
	ld   e, l                                        ; $656a: $5d
	sbc  [hl]                                        ; $656b: $9e
	ld   e, b                                        ; $656c: $58
	ld   [bc], a                                     ; $656d: $02
	add  c                                           ; $656e: $81
	ld   h, e                                        ; $656f: $63
	adc  h                                           ; $6570: $8c
	inc  bc                                          ; $6571: $03
	pop  de                                          ; $6572: $d1
	ld   [bc], a                                     ; $6573: $02
	jr   nz, jr_041_65eb                             ; $6574: $20 $75

	ld   h, a                                        ; $6576: $67
	dec  c                                           ; $6577: $0d
	ld   e, c                                        ; $6578: $59
	sub  a                                           ; $6579: $97
	sbc  [hl]                                        ; $657a: $9e
	pop  bc                                          ; $657b: $c1
	db   $e3                                         ; $657c: $e3
	ld   [hl], l                                     ; $657d: $75
	ld   h, a                                        ; $657e: $67
	sbc  a                                           ; $657f: $9f
	dec  c                                           ; $6580: $0d
	inc  b                                           ; $6581: $04
	sbc  [hl]                                        ; $6582: $9e
	ld   e, c                                        ; $6583: $59
	ld   [hl], c                                     ; $6584: $71
	ld   [hl], h                                     ; $6585: $74
	ld   [bc], a                                     ; $6586: $02
	inc  [hl]                                        ; $6587: $34
	ld   h, e                                        ; $6588: $63
	ld   d, d                                        ; $6589: $52
	sbc  a                                           ; $658a: $9f
	dec  c                                           ; $658b: $0d
	nop                                              ; $658c: $00
	ld   a, [bc]                                     ; $658d: $0a
	ld   bc, $9e63                                   ; $658e: $01 $63 $9e
	dec  b                                           ; $6591: $05
	cp   b                                           ; $6592: $b8
	ld   [bc], a                                     ; $6593: $02
	ld   e, c                                        ; $6594: $59
	ld   [bc], a                                     ; $6595: $02
	sbc  a                                           ; $6596: $9f
	inc  b                                           ; $6597: $04
	dec  sp                                          ; $6598: $3b
	ld   h, l                                        ; $6599: $65
	ld   a, b                                        ; $659a: $78
	ld   e, l                                        ; $659b: $5d
	ld   l, a                                        ; $659c: $6f
	sub  c                                           ; $659d: $91
	sbc  a                                           ; $659e: $9f
	dec  c                                           ; $659f: $0d
	ld   [$6300], sp                                 ; $65a0: $08 $00 $63
	and  c                                           ; $65a3: $a1
	sbc  [hl]                                        ; $65a4: $9e
	ld   h, [hl]                                     ; $65a5: $66
	sub  c                                           ; $65a6: $91
	adc  h                                           ; $65a7: $8c
	ld   [hl], l                                     ; $65a8: $75
	ld   h, a                                        ; $65a9: $67
	sbc  a                                           ; $65aa: $9f
	dec  c                                           ; $65ab: $0d
	ld   [hl], a                                     ; $65ac: $77
	ld   [hl], c                                     ; $65ad: $71
	ld   e, c                                        ; $65ae: $59
	add  [hl]                                        ; $65af: $86
	ld   [bc], a                                     ; $65b0: $02
	ld   a, a                                        ; $65b1: $7f
	ld   [hl], c                                     ; $65b2: $71
	ld   [hl], h                                     ; $65b3: $74
	ld   [bc], a                                     ; $65b4: $02
	inc  [hl]                                        ; $65b5: $34
	ld   h, e                                        ; $65b6: $63
	ld   d, d                                        ; $65b7: $52
	sbc  a                                           ; $65b8: $9f
	dec  c                                           ; $65b9: $0d
	nop                                              ; $65ba: $00
	ld   a, [bc]                                     ; $65bb: $0a
	dec  c                                           ; $65bc: $0d
	nop                                              ; $65bd: $00
	nop                                              ; $65be: $00
	rrca                                             ; $65bf: $0f
	nop                                              ; $65c0: $00
	ld   bc, $5001                                   ; $65c1: $01 $01 $50
	db   $fc                                         ; $65c4: $fc
	ld   d, b                                        ; $65c5: $50
	rst  $38                                         ; $65c6: $ff
	rst  $38                                         ; $65c7: $ff
	dec  c                                           ; $65c8: $0d
	nop                                              ; $65c9: $00
	ld   a, [bc]                                     ; $65ca: $0a
	dec  b                                           ; $65cb: $05
	add  b                                           ; $65cc: $80
	sbc  h                                           ; $65cd: $9c
	ld   bc, $0001                                   ; $65ce: $01 $01 $00
	nop                                              ; $65d1: $00
	rrca                                             ; $65d2: $0f
	nop                                              ; $65d3: $00
	ld   bc, $6b01                                   ; $65d4: $01 $01 $6b
	ld   d, h                                        ; $65d7: $54
	ld   [hl], l                                     ; $65d8: $75
	ld   h, a                                        ; $65d9: $67
	ld   e, c                                        ; $65da: $59
	rst  $38                                         ; $65db: $ff
	rst  $38                                         ; $65dc: $ff
	dec  c                                           ; $65dd: $0d
	ld   e, b                                        ; $65de: $58
	ld   [bc], a                                     ; $65df: $02
	add  c                                           ; $65e0: $81
	ld   h, e                                        ; $65e1: $63
	and  c                                           ; $65e2: $a1
	inc  bc                                          ; $65e3: $03
	pop  de                                          ; $65e4: $d1
	ld   [bc], a                                     ; $65e5: $02
	jr   nz, jr_041_665d                             ; $65e6: $20 $75

	ld   h, a                                        ; $65e8: $67
	sub  b                                           ; $65e9: $90
	and  c                                           ; $65ea: $a1

jr_041_65eb:
	ld   a, e                                        ; $65eb: $7b
	sbc  a                                           ; $65ec: $9f
	dec  c                                           ; $65ed: $0d
	ld   h, l                                        ; $65ee: $65
	ld   e, c                                        ; $65ef: $59
	ld   l, l                                        ; $65f0: $6d
	ld   a, b                                        ; $65f1: $78
	ld   d, d                                        ; $65f2: $52
	ld   [hl], l                                     ; $65f3: $75
	ld   h, a                                        ; $65f4: $67
	ld   a, e                                        ; $65f5: $7b
	sbc  a                                           ; $65f6: $9f
	dec  c                                           ; $65f7: $0d
	nop                                              ; $65f8: $00
	ld   a, [bc]                                     ; $65f9: $0a
	ld   bc, $6176                                   ; $65fa: $01 $76 $61
	sbc  e                                           ; $65fd: $9b
	ld   [hl], l                                     ; $65fe: $75
	sbc  [hl]                                        ; $65ff: $9e
	ld   b, $5b                                      ; $6600: $06 $5b
	ld   h, e                                        ; $6602: $63
	and  c                                           ; $6603: $a1
	sbc  a                                           ; $6604: $9f
	dec  c                                           ; $6605: $0d
	inc  bc                                          ; $6606: $03
	dec  d                                           ; $6607: $15
	inc  b                                           ; $6608: $04
	cp   a                                           ; $6609: $bf
	ld   e, d                                        ; $660a: $5a
	ld   d, b                                        ; $660b: $50
	sbc  c                                           ; $660c: $99
	ld   a, h                                        ; $660d: $7c
	ld   [hl], l                                     ; $660e: $75
	ld   h, a                                        ; $660f: $67
	ld   e, d                                        ; $6610: $5a
	dec  c                                           ; $6611: $0d
	sub  [hl]                                        ; $6612: $96
	sbc  e                                           ; $6613: $9b
	ld   h, l                                        ; $6614: $65
	ld   d, d                                        ; $6615: $52
	ld   [hl], l                                     ; $6616: $75
	ld   h, a                                        ; $6617: $67
	ld   e, c                                        ; $6618: $59
	ld   sp, hl                                      ; $6619: $f9
	dec  c                                           ; $661a: $0d
	nop                                              ; $661b: $00
	ld   a, [bc]                                     ; $661c: $0a
	add  hl, de                                      ; $661d: $19
	dec  b                                           ; $661e: $05
	inc  bc                                          ; $661f: $03
	ld   b, $5b                                      ; $6620: $06 $5b
	ld   a, h                                        ; $6622: $7c
	inc  b                                           ; $6623: $04
	rst  ToBoot                                         ; $6624: $c7
	inc  bc                                          ; $6625: $03
	sbc  h                                           ; $6626: $9c
	and  b                                           ; $6627: $a0
	ld   [bc], a                                     ; $6628: $02
	jp   nz, $005d                                   ; $6629: $c2 $5d $00

	nop                                              ; $662c: $00
	ld   b, $5b                                      ; $662d: $06 $5b
	ld   a, h                                        ; $662f: $7c
	ld   a, e                                        ; $6630: $7b
	and  c                                           ; $6631: $a1
	sbc  d                                           ; $6632: $9a
	ld   d, d                                        ; $6633: $52
	and  b                                           ; $6634: $a0
	ld   [bc], a                                     ; $6635: $02
	jp   nz, $005d                                   ; $6636: $c2 $5d $00

	ld   bc, $5b06                                   ; $6639: $01 $06 $5b
	ld   a, h                                        ; $663c: $7c
	inc  bc                                          ; $663d: $03
	add  b                                           ; $663e: $80
	inc  b                                           ; $663f: $04
	pop  de                                          ; $6640: $d1
	inc  bc                                          ; $6641: $03
	adc  $a0                                         ; $6642: $ce $a0
	ld   [bc], a                                     ; $6644: $02
	jp   nz, $005d                                   ; $6645: $c2 $5d $00

	ld   [bc], a                                     ; $6648: $02
	rlca                                             ; $6649: $07
	ldh  [c], a                                      ; $664a: $e2
	ld   [bc], a                                     ; $664b: $02
	ld   [bc], a                                     ; $664c: $02
	inc  bc                                          ; $664d: $03
	ld   bc, $2000                                   ; $664e: $01 $00 $20
	nop                                              ; $6651: $00
	rlca                                             ; $6652: $07
	ld   h, $05                                      ; $6653: $26 $05
	ld   [bc], a                                     ; $6655: $02
	inc  bc                                          ; $6656: $03
	ld   bc, $2001                                   ; $6657: $01 $01 $20
	nop                                              ; $665a: $00
	rlca                                             ; $665b: $07
	ld   [hl], l                                     ; $665c: $75

jr_041_665d:
	rlca                                             ; $665d: $07
	ld   [bc], a                                     ; $665e: $02
	inc  bc                                          ; $665f: $03
	ld   bc, $2002                                   ; $6660: $01 $02 $20
	nop                                              ; $6663: $00
	ld   b, $95                                      ; $6664: $06 $95
	ld   [bc], a                                     ; $6666: $02
	inc  e                                           ; $6667: $1c
	ld   c, $00                                      ; $6668: $0e $00
	nop                                              ; $666a: $00
	ld   bc, $8d67                                   ; $666b: $01 $67 $8d
	adc  h                                           ; $666e: $8c
	ld   l, c                                        ; $666f: $69
	and  c                                           ; $6670: $a1
	ld   e, d                                        ; $6671: $5a
	sbc  [hl]                                        ; $6672: $9e
	inc  bc                                          ; $6673: $03
	db   $fd                                         ; $6674: $fd
	ld   a, c                                        ; $6675: $79
	inc  b                                           ; $6676: $04
	di                                               ; $6677: $f3
	ld   e, d                                        ; $6678: $5a
	ld   a, b                                        ; $6679: $78
	ld   d, d                                        ; $667a: $52
	dec  c                                           ; $667b: $0d
	ld   a, h                                        ; $667c: $7c
	ld   [hl], l                                     ; $667d: $75
	ld   h, l                                        ; $667e: $65
	ld   l, l                                        ; $667f: $6d
	sub  a                                           ; $6680: $97
	sbc  [hl]                                        ; $6681: $9e
	ld   d, b                                        ; $6682: $50
	ld   l, l                                        ; $6683: $6d
	ld   h, l                                        ; $6684: $65
	sbc  [hl]                                        ; $6685: $9e
	inc  bc                                          ; $6686: $03
	dec  c                                           ; $6687: $0d
	ld   [bc], a                                     ; $6688: $02
	jp   $0d5a                                       ; $6689: $c3 $5a $0d


	ld   d, b                                        ; $668c: $50
	sbc  b                                           ; $668d: $98
	adc  h                                           ; $668e: $8c
	ld   h, a                                        ; $668f: $67
	ld   a, h                                        ; $6690: $7c
	ld   [hl], l                                     ; $6691: $75
	rst  $38                                         ; $6692: $ff
	rst  $38                                         ; $6693: $ff
	dec  c                                           ; $6694: $0d
	nop                                              ; $6695: $00
	ld   a, [bc]                                     ; $6696: $0a
	dec  c                                           ; $6697: $0d
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	rrca                                             ; $669a: $0f
	nop                                              ; $669b: $00
	ld   bc, $5001                                   ; $669c: $01 $01 $50
	ld   [hl], c                                     ; $669f: $71
	rst  $38                                         ; $66a0: $ff
	rst  $38                                         ; $66a1: $ff
	rst  $38                                         ; $66a2: $ff
	rst  $38                                         ; $66a3: $ff
	rst  $38                                         ; $66a4: $ff
	rst  $38                                         ; $66a5: $ff
	rst  $38                                         ; $66a6: $ff
	rst  $38                                         ; $66a7: $ff
	rst  $38                                         ; $66a8: $ff
	rst  $38                                         ; $66a9: $ff
	dec  c                                           ; $66aa: $0d
	nop                                              ; $66ab: $00
	ld   a, [bc]                                     ; $66ac: $0a
	dec  b                                           ; $66ad: $05
	add  b                                           ; $66ae: $80
	sbc  h                                           ; $66af: $9c
	ld   bc, $0001                                   ; $66b0: $01 $01 $00
	nop                                              ; $66b3: $00
	rrca                                             ; $66b4: $0f
	nop                                              ; $66b5: $00
	ld   bc, $0601                                   ; $66b6: $01 $01 $06
	ld   e, e                                        ; $66b9: $5b
	ld   h, e                                        ; $66ba: $63
	and  c                                           ; $66bb: $a1
	ld   a, h                                        ; $66bc: $7c
	inc  b                                           ; $66bd: $04
	rst  ToBoot                                         ; $66be: $c7
	inc  bc                                          ; $66bf: $03
	sbc  h                                           ; $66c0: $9c
	ld   [hl], c                                     ; $66c1: $71
	ld   [hl], h                                     ; $66c2: $74
	dec  c                                           ; $66c3: $0d
	ld   a, b                                        ; $66c4: $78
	and  c                                           ; $66c5: $a1
	ld   [hl], h                                     ; $66c6: $74
	ld   d, d                                        ; $66c7: $52
	ld   d, h                                        ; $66c8: $54
	and  c                                           ; $66c9: $a1
	ld   [hl], l                                     ; $66ca: $75
	ld   h, a                                        ; $66cb: $67
	ld   e, c                                        ; $66cc: $59
	ld   sp, hl                                      ; $66cd: $f9
	dec  c                                           ; $66ce: $0d
	nop                                              ; $66cf: $00
	ld   a, [bc]                                     ; $66d0: $0a
	inc  e                                           ; $66d1: $1c
	ld   c, $00                                      ; $66d2: $0e $00
	nop                                              ; $66d4: $00
	ld   bc, $7156                                   ; $66d5: $01 $56 $71
	sbc  [hl]                                        ; $66d8: $9e
	ld   d, b                                        ; $66d9: $50
	ld   l, l                                        ; $66da: $6d
	ld   h, l                                        ; $66db: $65
	ld   a, h                                        ; $66dc: $7c
	inc  b                                           ; $66dd: $04
	rst  ToBoot                                         ; $66de: $c7
	inc  bc                                          ; $66df: $03
	sbc  h                                           ; $66e0: $9c
	ld   [hl], l                                     ; $66e1: $75
	ld   h, a                                        ; $66e2: $67
	ld   e, c                                        ; $66e3: $59
	ld   sp, hl                                      ; $66e4: $f9
	dec  c                                           ; $66e5: $0d
	inc  bc                                          ; $66e6: $03
	ld   l, c                                        ; $66e7: $69
	inc  bc                                          ; $66e8: $03
	inc  c                                           ; $66e9: $0c
	ld   a, c                                        ; $66ea: $79
	sbc  [hl]                                        ; $66eb: $9e
	inc  bc                                          ; $66ec: $03
	sub  h                                           ; $66ed: $94
	dec  b                                           ; $66ee: $05
	inc  sp                                          ; $66ef: $33
	dec  b                                           ; $66f0: $05
	ld   b, a                                        ; $66f1: $47
	dec  b                                           ; $66f2: $05
	ld   [hl-], a                                    ; $66f3: $32
	ld   h, l                                        ; $66f4: $65
	ld   l, l                                        ; $66f5: $6d
	halt                                             ; $66f6: $76
	ld   e, e                                        ; $66f7: $5b
	ld   a, c                                        ; $66f8: $79
	dec  c                                           ; $66f9: $0d
	ld   [bc], a                                     ; $66fa: $02
	sbc  l                                           ; $66fb: $9d
	ld   d, d                                        ; $66fc: $52
	adc  h                                           ; $66fd: $8c
	ld   h, l                                        ; $66fe: $65
	ld   l, l                                        ; $66ff: $6d
	sub  [hl]                                        ; $6700: $96
	sbc  a                                           ; $6701: $9f
	dec  c                                           ; $6702: $0d
	nop                                              ; $6703: $00
	ld   a, [bc]                                     ; $6704: $0a
	inc  e                                           ; $6705: $1c
	ld   c, $03                                      ; $6706: $0e $03
	inc  bc                                          ; $6708: $03
	ld   bc, $7a02                                   ; $6709: $01 $02 $7a
	ld   d, [hl]                                     ; $670c: $56
	ld   [hl], h                                     ; $670d: $74
	ld   a, b                                        ; $670e: $78
	ld   d, d                                        ; $670f: $52
	and  c                                           ; $6710: $a1
	ld   [hl], l                                     ; $6711: $75
	ld   h, a                                        ; $6712: $67
	ld   e, c                                        ; $6713: $59
	ld   sp, hl                                      ; $6714: $f9
	dec  c                                           ; $6715: $0d
	ld   [$6300], sp                                 ; $6716: $08 $00 $63
	and  c                                           ; $6719: $a1
	ld   sp, hl                                      ; $671a: $f9
	dec  c                                           ; $671b: $0d
	nop                                              ; $671c: $00
	ld   a, [bc]                                     ; $671d: $0a
	add  hl, de                                      ; $671e: $19
	dec  b                                           ; $671f: $05
	inc  bc                                          ; $6720: $03
	ld   [bc], a                                     ; $6721: $02
	cp   [hl]                                        ; $6722: $be
	dec  b                                           ; $6723: $05
	sbc  $00                                         ; $6724: $de $00
	nop                                              ; $6726: $00
	dec  b                                           ; $6727: $05
	ld   hl, sp+$05                                  ; $6728: $f8 $05
	sbc  $00                                         ; $672a: $de $00
	ld   bc, $be02                                   ; $672c: $01 $02 $be
	ld   b, $86                                      ; $672f: $06 $86
	nop                                              ; $6731: $00
	ld   [bc], a                                     ; $6732: $02
	rlca                                             ; $6733: $07
	ld   a, a                                        ; $6734: $7f
	inc  bc                                          ; $6735: $03
	ld   [bc], a                                     ; $6736: $02
	inc  bc                                          ; $6737: $03
	ld   bc, $2000                                   ; $6738: $01 $00 $20
	nop                                              ; $673b: $00
	rlca                                             ; $673c: $07
	pop  hl                                          ; $673d: $e1
	inc  bc                                          ; $673e: $03
	ld   [bc], a                                     ; $673f: $02
	inc  bc                                          ; $6740: $03
	ld   bc, $2001                                   ; $6741: $01 $01 $20
	nop                                              ; $6744: $00
	rlca                                             ; $6745: $07
	ld   d, a                                        ; $6746: $57
	inc  b                                           ; $6747: $04
	ld   [bc], a                                     ; $6748: $02
	inc  bc                                          ; $6749: $03
	ld   bc, $2002                                   ; $674a: $01 $02 $20
	nop                                              ; $674d: $00
	ld   b, $cd                                      ; $674e: $06 $cd
	inc  b                                           ; $6750: $04
	rrca                                             ; $6751: $0f
	nop                                              ; $6752: $00
	ld   bc, $0201                                   ; $6753: $01 $01 $02
	cp   [hl]                                        ; $6756: $be
	dec  b                                           ; $6757: $05
	sbc  $ff                                         ; $6758: $de $ff
	rst  $38                                         ; $675a: $ff
	ld   [hl], l                                     ; $675b: $75
	ld   h, a                                        ; $675c: $67
	sub  [hl]                                        ; $675d: $96
	ld   a, e                                        ; $675e: $7b
	sbc  a                                           ; $675f: $9f
	dec  c                                           ; $6760: $0d
	nop                                              ; $6761: $00
	ld   a, [bc]                                     ; $6762: $0a
	inc  e                                           ; $6763: $1c
	ld   c, $01                                      ; $6764: $0e $01
	ld   bc, $6b01                                   ; $6766: $01 $01 $6b
	ld   d, h                                        ; $6769: $54
	ld   [hl], l                                     ; $676a: $75
	ld   h, a                                        ; $676b: $67
	sbc  a                                           ; $676c: $9f
	inc  bc                                          ; $676d: $03
	ld   c, d                                        ; $676e: $4a
	ld   [bc], a                                     ; $676f: $02
	or   h                                           ; $6770: $b4
	ld   [hl], l                                     ; $6771: $75
	ld   h, a                                        ; $6772: $67
	sbc  a                                           ; $6773: $9f
	dec  c                                           ; $6774: $0d

Jump_041_6775:
	ld   a, b                                        ; $6775: $78
	and  c                                           ; $6776: $a1
	ld   l, [hl]                                     ; $6777: $6e
	sbc  [hl]                                        ; $6778: $9e
	ld   [$6300], sp                                 ; $6779: $08 $00 $63
	and  c                                           ; $677c: $a1
	dec  c                                           ; $677d: $0d
	inc  b                                           ; $677e: $04
	dec  hl                                          ; $677f: $2b
	ld   [hl], c                                     ; $6780: $71
	ld   [hl], h                                     ; $6781: $74
	sbc  c                                           ; $6782: $99
	ld   h, [hl]                                     ; $6783: $66
	sub  c                                           ; $6784: $91
	ld   d, b                                        ; $6785: $50
	sbc  b                                           ; $6786: $98
	adc  h                                           ; $6787: $8c
	ld   l, c                                        ; $6788: $69
	and  c                                           ; $6789: $a1
	ld   e, c                                        ; $678a: $59
	sbc  a                                           ; $678b: $9f
	dec  c                                           ; $678c: $0d
	nop                                              ; $678d: $00
	ld   a, [bc]                                     ; $678e: $0a
	ld   bc, $9166                                   ; $678f: $01 $66 $91
	sbc  [hl]                                        ; $6792: $9e
	ld   d, b                                        ; $6793: $50
	ld   l, l                                        ; $6794: $6d
	ld   h, l                                        ; $6795: $65
	ld   a, l                                        ; $6796: $7d
	sbc  [hl]                                        ; $6797: $9e
	inc  bc                                          ; $6798: $03
	dec  c                                           ; $6799: $0d
	ld   [bc], a                                     ; $679a: $02
	jp   $0d5a                                       ; $679b: $c3 $5a $0d


	ld   d, b                                        ; $679e: $50
	sbc  b                                           ; $679f: $98
	adc  h                                           ; $67a0: $8c
	ld   h, a                                        ; $67a1: $67
	ld   e, c                                        ; $67a2: $59
	sub  a                                           ; $67a3: $97
	sbc  [hl]                                        ; $67a4: $9e
	adc  h                                           ; $67a5: $8c
	ld   l, l                                        ; $67a6: $6d
	rst  $38                                         ; $67a7: $ff
	rst  $38                                         ; $67a8: $ff
	dec  c                                           ; $67a9: $0d
	nop                                              ; $67aa: $00
	ld   a, [bc]                                     ; $67ab: $0a
	dec  b                                           ; $67ac: $05
	add  b                                           ; $67ad: $80
	sbc  h                                           ; $67ae: $9c
	ld   bc, $0001                                   ; $67af: $01 $01 $00
	nop                                              ; $67b2: $00
	rrca                                             ; $67b3: $0f
	nop                                              ; $67b4: $00
	ld   bc, $0501                                   ; $67b5: $01 $01 $05
	ld   hl, sp+$05                                  ; $67b8: $f8 $05
	sbc  $9e                                         ; $67ba: $de $9e
	ld   [hl], l                                     ; $67bc: $75
	ld   h, l                                        ; $67bd: $65
	ld   l, l                                        ; $67be: $6d
	ld   [hl], c                                     ; $67bf: $71
	ld   e, a                                        ; $67c0: $5f
	ld   sp, hl                                      ; $67c1: $f9
	dec  c                                           ; $67c2: $0d
	nop                                              ; $67c3: $00
	ld   a, [bc]                                     ; $67c4: $0a
	inc  e                                           ; $67c5: $1c
	ld   c, $02                                      ; $67c6: $0e $02
	ld   [bc], a                                     ; $67c8: $02
	ld   bc, $9a6b                                   ; $67c9: $01 $6b $9a
	ld   [hl], c                                     ; $67cc: $71
	ld   [hl], h                                     ; $67cd: $74
	sbc  [hl]                                        ; $67ce: $9e
	ld   e, c                                        ; $67cf: $59
	ld   h, a                                        ; $67d0: $67
	adc  l                                           ; $67d1: $8d
	ld   h, e                                        ; $67d2: $63
	and  c                                           ; $67d3: $a1
	ld   a, h                                        ; $67d4: $7c
	inc  b                                           ; $67d5: $04
	rst  ToBoot                                         ; $67d6: $c7
	inc  bc                                          ; $67d7: $03
	sbc  h                                           ; $67d8: $9c
	halt                                             ; $67d9: $76
	dec  c                                           ; $67da: $0d
	adc  h                                           ; $67db: $8c
	ld   h, h                                        ; $67dc: $64
	ld   [hl], c                                     ; $67dd: $71
	ld   [hl], h                                     ; $67de: $74
	adc  h                                           ; $67df: $8c
	ld   h, a                                        ; $67e0: $67
	sub  [hl]                                        ; $67e1: $96
	sbc  a                                           ; $67e2: $9f
	dec  c                                           ; $67e3: $0d
	ld   d, b                                        ; $67e4: $50
	ld   l, l                                        ; $67e5: $6d
	ld   h, l                                        ; $67e6: $65
	ld   a, l                                        ; $67e7: $7d
	sbc  [hl]                                        ; $67e8: $9e
	ld   [bc], a                                     ; $67e9: $02
	cp   [hl]                                        ; $67ea: $be
	dec  b                                           ; $67eb: $05
	sbc  $75                                         ; $67ec: $de $75
	ld   h, a                                        ; $67ee: $67
	sbc  a                                           ; $67ef: $9f
	dec  c                                           ; $67f0: $0d
	nop                                              ; $67f1: $00
	ld   a, [bc]                                     ; $67f2: $0a
	ld   bc, $0008                                   ; $67f3: $01 $08 $00
	ld   h, e                                        ; $67f6: $63
	and  c                                           ; $67f7: $a1
	ld   [hl], h                                     ; $67f8: $74
	sbc  [hl]                                        ; $67f9: $9e
	dec  c                                           ; $67fa: $0d
	inc  b                                           ; $67fb: $04
	and  e                                           ; $67fc: $a3
	sbc  d                                           ; $67fd: $9a
	ld   [hl], c                                     ; $67fe: $71
	adc  e                                           ; $67ff: $8b
	ld   d, d                                        ; $6800: $52
	and  c                                           ; $6801: $a1
	ld   [hl], l                                     ; $6802: $75
	ld   h, a                                        ; $6803: $67
	ld   a, e                                        ; $6804: $7b
	sbc  a                                           ; $6805: $9f
	dec  c                                           ; $6806: $0d
	nop                                              ; $6807: $00
	ld   a, [bc]                                     ; $6808: $0a
	ld   bc, $9166                                   ; $6809: $01 $66 $91
	sbc  [hl]                                        ; $680c: $9e
	ld   d, b                                        ; $680d: $50
	ld   l, l                                        ; $680e: $6d
	ld   h, l                                        ; $680f: $65
	ld   a, l                                        ; $6810: $7d
	sbc  [hl]                                        ; $6811: $9e
	inc  bc                                          ; $6812: $03
	dec  c                                           ; $6813: $0d
	ld   [bc], a                                     ; $6814: $02
	jp   $0d5a                                       ; $6815: $c3 $5a $0d


	ld   d, b                                        ; $6818: $50
	sbc  b                                           ; $6819: $98
	adc  h                                           ; $681a: $8c
	ld   h, a                                        ; $681b: $67
	ld   e, c                                        ; $681c: $59
	sub  a                                           ; $681d: $97
	sbc  a                                           ; $681e: $9f
	dec  c                                           ; $681f: $0d
	nop                                              ; $6820: $00
	ld   a, [bc]                                     ; $6821: $0a
	dec  b                                           ; $6822: $05
	add  b                                           ; $6823: $80
	sbc  h                                           ; $6824: $9c
	ld   bc, $0001                                   ; $6825: $01 $01 $00
	nop                                              ; $6828: $00
	rrca                                             ; $6829: $0f
	nop                                              ; $682a: $00
	ld   bc, $0201                                   ; $682b: $01 $01 $02
	cp   [hl]                                        ; $682e: $be
	ld   b, $86                                      ; $682f: $06 $86
	sbc  [hl]                                        ; $6831: $9e
	ld   [hl], l                                     ; $6832: $75
	ld   h, l                                        ; $6833: $65
	ld   l, l                                        ; $6834: $6d
	ld   [hl], c                                     ; $6835: $71
	ld   e, a                                        ; $6836: $5f
	ld   sp, hl                                      ; $6837: $f9
	dec  c                                           ; $6838: $0d
	nop                                              ; $6839: $00
	ld   a, [bc]                                     ; $683a: $0a
	inc  e                                           ; $683b: $1c
	ld   c, $02                                      ; $683c: $0e $02
	ld   [bc], a                                     ; $683e: $02
	ld   bc, $9a6b                                   ; $683f: $01 $6b $9a
	ld   [hl], c                                     ; $6842: $71
	ld   [hl], h                                     ; $6843: $74
	sbc  [hl]                                        ; $6844: $9e
	ld   d, b                                        ; $6845: $50
	sub  d                                           ; $6846: $92
	adc  a                                           ; $6847: $8f
	ld   h, e                                        ; $6848: $63
	and  c                                           ; $6849: $a1
	ld   a, h                                        ; $684a: $7c
	inc  b                                           ; $684b: $04
	rst  ToBoot                                         ; $684c: $c7
	inc  bc                                          ; $684d: $03
	sbc  h                                           ; $684e: $9c
	halt                                             ; $684f: $76
	dec  c                                           ; $6850: $0d
	adc  h                                           ; $6851: $8c
	ld   h, h                                        ; $6852: $64
	ld   [hl], c                                     ; $6853: $71
	ld   [hl], h                                     ; $6854: $74
	adc  h                                           ; $6855: $8c
	ld   h, a                                        ; $6856: $67
	sub  [hl]                                        ; $6857: $96
	sbc  a                                           ; $6858: $9f
	dec  c                                           ; $6859: $0d
	ld   d, b                                        ; $685a: $50
	ld   l, l                                        ; $685b: $6d
	ld   h, l                                        ; $685c: $65
	ld   a, l                                        ; $685d: $7d
	sbc  [hl]                                        ; $685e: $9e
	ld   [bc], a                                     ; $685f: $02
	cp   [hl]                                        ; $6860: $be
	dec  b                                           ; $6861: $05
	sbc  $75                                         ; $6862: $de $75
	ld   h, a                                        ; $6864: $67
	sbc  a                                           ; $6865: $9f
	dec  c                                           ; $6866: $0d
	nop                                              ; $6867: $00
	ld   a, [bc]                                     ; $6868: $0a
	ld   bc, $0008                                   ; $6869: $01 $08 $00
	ld   h, e                                        ; $686c: $63
	and  c                                           ; $686d: $a1
	ld   [hl], h                                     ; $686e: $74
	sbc  [hl]                                        ; $686f: $9e
	dec  c                                           ; $6870: $0d
	inc  b                                           ; $6871: $04
	and  e                                           ; $6872: $a3
	sbc  d                                           ; $6873: $9a
	ld   [hl], c                                     ; $6874: $71
	adc  e                                           ; $6875: $8b
	ld   d, d                                        ; $6876: $52
	and  c                                           ; $6877: $a1
	ld   [hl], l                                     ; $6878: $75
	ld   h, a                                        ; $6879: $67
	ld   a, e                                        ; $687a: $7b
	sbc  a                                           ; $687b: $9f
	dec  c                                           ; $687c: $0d
	nop                                              ; $687d: $00
	ld   a, [bc]                                     ; $687e: $0a
	ld   bc, $9166                                   ; $687f: $01 $66 $91
	sbc  [hl]                                        ; $6882: $9e
	ld   d, b                                        ; $6883: $50
	ld   l, l                                        ; $6884: $6d
	ld   h, l                                        ; $6885: $65
	ld   a, l                                        ; $6886: $7d
	sbc  [hl]                                        ; $6887: $9e
	inc  bc                                          ; $6888: $03
	dec  c                                           ; $6889: $0d
	ld   [bc], a                                     ; $688a: $02
	jp   $0d5a                                       ; $688b: $c3 $5a $0d


	ld   d, b                                        ; $688e: $50
	sbc  b                                           ; $688f: $98
	adc  h                                           ; $6890: $8c
	ld   h, a                                        ; $6891: $67
	ld   e, c                                        ; $6892: $59
	sub  a                                           ; $6893: $97
	sbc  a                                           ; $6894: $9f
	dec  c                                           ; $6895: $0d
	nop                                              ; $6896: $00
	ld   a, [bc]                                     ; $6897: $0a
	dec  b                                           ; $6898: $05
	add  b                                           ; $6899: $80
	sbc  h                                           ; $689a: $9c
	ld   bc, $0001                                   ; $689b: $01 $01 $00
	nop                                              ; $689e: $00
	inc  e                                           ; $689f: $1c
	ld   c, $03                                      ; $68a0: $0e $03
	inc  bc                                          ; $68a2: $03
	ld   bc, $8a58                                   ; $68a3: $01 $58 $8a
	ld   d, [hl]                                     ; $68a6: $56
	ld   [hl], h                                     ; $68a7: $74
	ld   a, b                                        ; $68a8: $78
	ld   d, d                                        ; $68a9: $52
	and  c                                           ; $68aa: $a1
	ld   [hl], l                                     ; $68ab: $75
	ld   h, a                                        ; $68ac: $67
	ld   e, c                                        ; $68ad: $59
	ld   sp, hl                                      ; $68ae: $f9
	dec  c                                           ; $68af: $0d
	sub  b                                           ; $68b0: $90
	ld   d, h                                        ; $68b1: $54
	rst  $38                                         ; $68b2: $ff
	ld   h, l                                        ; $68b3: $65
	ld   e, c                                        ; $68b4: $59
	ld   l, l                                        ; $68b5: $6d
	ld   a, b                                        ; $68b6: $78
	ld   d, d                                        ; $68b7: $52
	ld   [hl], l                                     ; $68b8: $75
	ld   h, a                                        ; $68b9: $67
	ld   a, e                                        ; $68ba: $7b
	rst  $38                                         ; $68bb: $ff
	rst  $38                                         ; $68bc: $ff
	dec  c                                           ; $68bd: $0d
	nop                                              ; $68be: $00
	ld   a, [bc]                                     ; $68bf: $0a
	inc  e                                           ; $68c0: $1c
	ld   c, $00                                      ; $68c1: $0e $00
	nop                                              ; $68c3: $00
	ld   bc, $6d50                                   ; $68c4: $01 $50 $6d
	ld   h, l                                        ; $68c7: $65
	ld   a, l                                        ; $68c8: $7d
	sbc  [hl]                                        ; $68c9: $9e
	ld   [bc], a                                     ; $68ca: $02
	cp   [hl]                                        ; $68cb: $be
	dec  b                                           ; $68cc: $05
	sbc  $06                                         ; $68cd: $de $06
	ld   e, e                                        ; $68cf: $5b
	ld   [hl], l                                     ; $68d0: $75
	ld   h, a                                        ; $68d1: $67
	sbc  a                                           ; $68d2: $9f
	dec  c                                           ; $68d3: $0d
	ld   h, [hl]                                     ; $68d4: $66
	sub  c                                           ; $68d5: $91
	sbc  [hl]                                        ; $68d6: $9e
	ld   d, b                                        ; $68d7: $50
	ld   l, l                                        ; $68d8: $6d
	ld   h, l                                        ; $68d9: $65
	ld   a, l                                        ; $68da: $7d
	sbc  [hl]                                        ; $68db: $9e
	inc  bc                                          ; $68dc: $03
	dec  c                                           ; $68dd: $0d
	ld   [bc], a                                     ; $68de: $02
	jp   $0d5a                                       ; $68df: $c3 $5a $0d


	ld   d, b                                        ; $68e2: $50
	sbc  b                                           ; $68e3: $98
	adc  h                                           ; $68e4: $8c
	ld   h, a                                        ; $68e5: $67
	ld   e, c                                        ; $68e6: $59
	sub  a                                           ; $68e7: $97
	sbc  [hl]                                        ; $68e8: $9e
	ld   h, c                                        ; $68e9: $61
	sbc  d                                           ; $68ea: $9a
	ld   [hl], l                                     ; $68eb: $75
	rst  $38                                         ; $68ec: $ff
	rst  $38                                         ; $68ed: $ff
	dec  c                                           ; $68ee: $0d
	nop                                              ; $68ef: $00
	ld   a, [bc]                                     ; $68f0: $0a
	dec  b                                           ; $68f1: $05
	add  b                                           ; $68f2: $80
	sbc  h                                           ; $68f3: $9c
	ld   bc, $0001                                   ; $68f4: $01 $01 $00
	nop                                              ; $68f7: $00
	rrca                                             ; $68f8: $0f
	nop                                              ; $68f9: $00
	ld   bc, $0601                                   ; $68fa: $01 $01 $06
	ld   e, e                                        ; $68fd: $5b
	ld   h, e                                        ; $68fe: $63
	and  c                                           ; $68ff: $a1
	ld   [hl], h                                     ; $6900: $74
	sbc  [hl]                                        ; $6901: $9e
	ld   d, d                                        ; $6902: $52
	ld   e, l                                        ; $6903: $5d
	ld   [hl], d                                     ; $6904: $72
	ld   [hl], l                                     ; $6905: $75
	ld   h, a                                        ; $6906: $67
	ld   e, c                                        ; $6907: $59
	ld   sp, hl                                      ; $6908: $f9
	dec  c                                           ; $6909: $0d
	nop                                              ; $690a: $00
	ld   a, [bc]                                     ; $690b: $0a
	inc  e                                           ; $690c: $1c
	ld   c, $00                                      ; $690d: $0e $00
	nop                                              ; $690f: $00
	ld   bc, $f956                                   ; $6910: $01 $56 $f9
	dec  c                                           ; $6913: $0d
	ld   d, d                                        ; $6914: $52
	ld   e, l                                        ; $6915: $5d
	ld   [hl], d                                     ; $6916: $72
	ld   a, c                                        ; $6917: $79
	ld   [bc], a                                     ; $6918: $02
	sub  l                                           ; $6919: $95
	ld   d, [hl]                                     ; $691a: $56
	adc  h                                           ; $691b: $8c
	ld   h, a                                        ; $691c: $67
	ld   e, c                                        ; $691d: $59
	ld   sp, hl                                      ; $691e: $f9
	dec  c                                           ; $691f: $0d
	nop                                              ; $6920: $00
	ld   a, [bc]                                     ; $6921: $0a
	add  hl, de                                      ; $6922: $19
	dec  b                                           ; $6923: $05
	inc  bc                                          ; $6924: $03
	ld   [de], a                                     ; $6925: $12
	ld   d, $63                                      ; $6926: $16 $63
	ld   d, d                                        ; $6928: $52
	nop                                              ; $6929: $00
	nop                                              ; $692a: $00
	ld   [de], a                                     ; $692b: $12
	inc  d                                           ; $692c: $14
	ld   h, e                                        ; $692d: $63
	ld   d, d                                        ; $692e: $52
	nop                                              ; $692f: $00
	ld   bc, $1a12                                   ; $6930: $01 $12 $1a
	ld   h, e                                        ; $6933: $63
	ld   d, d                                        ; $6934: $52
	nop                                              ; $6935: $00
	ld   [bc], a                                     ; $6936: $02
	rlca                                             ; $6937: $07
	add  e                                           ; $6938: $83
	dec  b                                           ; $6939: $05
	ld   [bc], a                                     ; $693a: $02
	inc  bc                                          ; $693b: $03
	ld   bc, $2000                                   ; $693c: $01 $00 $20
	nop                                              ; $693f: $00
	rlca                                             ; $6940: $07
	db   $ec                                         ; $6941: $ec
	dec  b                                           ; $6942: $05
	ld   [bc], a                                     ; $6943: $02
	inc  bc                                          ; $6944: $03
	ld   bc, $2001                                   ; $6945: $01 $01 $20
	nop                                              ; $6948: $00
	rlca                                             ; $6949: $07
	sub  e                                           ; $694a: $93
	ld   b, $02                                      ; $694b: $06 $02
	inc  bc                                          ; $694d: $03
	ld   bc, $2002                                   ; $694e: $01 $02 $20
	nop                                              ; $6951: $00
	ld   b, $27                                      ; $6952: $06 $27
	rlca                                             ; $6954: $07
	rrca                                             ; $6955: $0f
	nop                                              ; $6956: $00
	ld   bc, $6b01                                   ; $6957: $01 $01 $6b
	ld   d, h                                        ; $695a: $54
	ld   [hl], l                                     ; $695b: $75
	ld   h, a                                        ; $695c: $67
	ld   a, e                                        ; $695d: $7b
	rst  $38                                         ; $695e: $ff
	rst  $38                                         ; $695f: $ff
	dec  c                                           ; $6960: $0d
	cp   e                                           ; $6961: $bb
	pop  de                                          ; $6962: $d1
	db   $ec                                         ; $6963: $ec
	ld   a, [$1210]                                  ; $6964: $fa $10 $12
	ld   d, $63                                      ; $6967: $16 $63
	ld   d, d                                        ; $6969: $52
	ld   a, [$0dfa]                                  ; $696a: $fa $fa $0d
	nop                                              ; $696d: $00
	ld   a, [bc]                                     ; $696e: $0a
	inc  e                                           ; $696f: $1c
	ld   c, $01                                      ; $6970: $0e $01
	ld   bc, $5001                                   ; $6972: $01 $01 $50
	sbc  [hl]                                        ; $6975: $9e
	inc  bc                                          ; $6976: $03
	ld   c, d                                        ; $6977: $4a
	ld   [bc], a                                     ; $6978: $02
	or   h                                           ; $6979: $b4
	ld   [hl], l                                     ; $697a: $75
	ld   h, a                                        ; $697b: $67
	sbc  a                                           ; $697c: $9f
	dec  c                                           ; $697d: $0d
	sub  d                                           ; $697e: $92
	ld   [hl], c                                     ; $697f: $71
	ld   a, a                                        ; $6980: $7f
	sbc  b                                           ; $6981: $98
	sbc  [hl]                                        ; $6982: $9e
	ld   l, e                                        ; $6983: $6b
	ld   d, h                                        ; $6984: $54
	adc  l                                           ; $6985: $8d
	ld   d, [hl]                                     ; $6986: $56
	adc  h                                           ; $6987: $8c
	ld   h, a                                        ; $6988: $67
	ld   sp, hl                                      ; $6989: $f9
	dec  c                                           ; $698a: $0d
	ld   l, a                                        ; $698b: $6f
	sub  l                                           ; $698c: $95
	ld   [hl], c                                     ; $698d: $71
	halt                                             ; $698e: $76
	inc  bc                                          ; $698f: $03
	jr   z, jr_041_6996                              ; $6990: $28 $04

	ld   c, b                                        ; $6992: $48
	ld   [hl], l                                     ; $6993: $75
	ld   h, a                                        ; $6994: $67
	ld   a, e                                        ; $6995: $7b

jr_041_6996:
	sbc  a                                           ; $6996: $9f
	dec  c                                           ; $6997: $0d
	nop                                              ; $6998: $00
	ld   a, [bc]                                     ; $6999: $0a
	ld   bc, $9166                                   ; $699a: $01 $66 $91
	sbc  [hl]                                        ; $699d: $9e
	ld   d, b                                        ; $699e: $50
	ld   l, l                                        ; $699f: $6d
	ld   h, l                                        ; $69a0: $65
	ld   a, l                                        ; $69a1: $7d
	sbc  [hl]                                        ; $69a2: $9e
	inc  bc                                          ; $69a3: $03
	dec  c                                           ; $69a4: $0d
	ld   [bc], a                                     ; $69a5: $02
	jp   $0d5a                                       ; $69a6: $c3 $5a $0d


	ld   d, b                                        ; $69a9: $50
	sbc  b                                           ; $69aa: $98
	adc  h                                           ; $69ab: $8c
	ld   h, a                                        ; $69ac: $67
	ld   e, c                                        ; $69ad: $59
	sub  a                                           ; $69ae: $97
	sbc  [hl]                                        ; $69af: $9e
	adc  h                                           ; $69b0: $8c
	ld   l, l                                        ; $69b1: $6d
	rst  $38                                         ; $69b2: $ff
	rst  $38                                         ; $69b3: $ff
	dec  c                                           ; $69b4: $0d
	nop                                              ; $69b5: $00
	ld   a, [bc]                                     ; $69b6: $0a
	dec  b                                           ; $69b7: $05
	add  b                                           ; $69b8: $80
	sbc  h                                           ; $69b9: $9c
	ld   bc, $0001                                   ; $69ba: $01 $01 $00
	nop                                              ; $69bd: $00
	rrca                                             ; $69be: $0f
	nop                                              ; $69bf: $00
	ld   bc, $5401                                   ; $69c0: $01 $01 $54
	db   $fc                                         ; $69c3: $fc
	and  c                                           ; $69c4: $a1
	rst  $38                                         ; $69c5: $ff
	rst  $38                                         ; $69c6: $ff
	rst  $38                                         ; $69c7: $ff
	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	rst  $38                                         ; $69ca: $ff
	dec  c                                           ; $69cb: $0d
	ld   [de], a                                     ; $69cc: $12
	inc  d                                           ; $69cd: $14
	rst  $38                                         ; $69ce: $ff
	ld   h, e                                        ; $69cf: $63
	ld   d, d                                        ; $69d0: $52
	rst  $38                                         ; $69d1: $ff
	rst  $38                                         ; $69d2: $ff
	rst  $38                                         ; $69d3: $ff
	rst  $38                                         ; $69d4: $ff
	ld   sp, hl                                      ; $69d5: $f9
	dec  c                                           ; $69d6: $0d
	nop                                              ; $69d7: $00
	ld   a, [bc]                                     ; $69d8: $0a
	inc  e                                           ; $69d9: $1c
	ld   c, $03                                      ; $69da: $0e $03
	inc  bc                                          ; $69dc: $03
	ld   bc, $fc56                                   ; $69dd: $01 $56 $fc
	rst  $38                                         ; $69e0: $ff
	rst  $38                                         ; $69e1: $ff
	rst  $38                                         ; $69e2: $ff
	rst  $38                                         ; $69e3: $ff
	rst  $38                                         ; $69e4: $ff
	rst  $38                                         ; $69e5: $ff
	dec  c                                           ; $69e6: $0d
	ld   d, b                                        ; $69e7: $50
	ld   l, l                                        ; $69e8: $6d
	ld   h, l                                        ; $69e9: $65
	ld   [hl], c                                     ; $69ea: $71
	ld   [hl], h                                     ; $69eb: $74
	sbc  [hl]                                        ; $69ec: $9e
	ld   l, e                                        ; $69ed: $6b
	and  c                                           ; $69ee: $a1
	ld   a, b                                        ; $69ef: $78
	ld   a, c                                        ; $69f0: $79
	inc  bc                                          ; $69f1: $03
	add  [hl]                                        ; $69f2: $86
	ld   [bc], a                                     ; $69f3: $02
	xor  l                                           ; $69f4: $ad
	ld   a, c                                        ; $69f5: $79
	dec  c                                           ; $69f6: $0d
	ld   [bc], a                                     ; $69f7: $02
	sub  l                                           ; $69f8: $95
	ld   d, [hl]                                     ; $69f9: $56
	adc  h                                           ; $69fa: $8c
	ld   h, a                                        ; $69fb: $67
	ld   sp, hl                                      ; $69fc: $f9
	dec  c                                           ; $69fd: $0d
	nop                                              ; $69fe: $00
	ld   a, [bc]                                     ; $69ff: $0a
	ld   bc, $9a61                                   ; $6a00: $01 $61 $9a
	ld   [hl], l                                     ; $6a03: $75
	sub  b                                           ; $6a04: $90
	sbc  [hl]                                        ; $6a05: $9e
	ld   d, d                                        ; $6a06: $52
	ld   l, a                                        ; $6a07: $6f
	ld   e, b                                        ; $6a08: $58
	ld   d, h                                        ; $6a09: $54
	ld   [de], a                                     ; $6a0a: $12
	ld   d, $63                                      ; $6a0b: $16 $63
	ld   d, d                                        ; $6a0d: $52
	dec  c                                           ; $6a0e: $0d
	ld   a, b                                        ; $6a0f: $78
	and  c                                           ; $6a10: $a1
	ld   [hl], l                                     ; $6a11: $75
	ld   h, a                                        ; $6a12: $67
	ld   e, a                                        ; $6a13: $5f
	ld   [hl], a                                     ; $6a14: $77
	rst  $38                                         ; $6a15: $ff
	rst  $38                                         ; $6a16: $ff
	rst  $38                                         ; $6a17: $ff
	rst  $38                                         ; $6a18: $ff
	rst  $38                                         ; $6a19: $ff
	rst  $38                                         ; $6a1a: $ff
	rst  $38                                         ; $6a1b: $ff
	rst  $38                                         ; $6a1c: $ff
	dec  c                                           ; $6a1d: $0d
	rst  $38                                         ; $6a1e: $ff
	rst  $38                                         ; $6a1f: $ff
	rst  $38                                         ; $6a20: $ff
	rst  $38                                         ; $6a21: $ff
	rst  $38                                         ; $6a22: $ff
	rst  $38                                         ; $6a23: $ff
	rst  $38                                         ; $6a24: $ff
	rst  $38                                         ; $6a25: $ff
	rst  $38                                         ; $6a26: $ff
	rst  $38                                         ; $6a27: $ff
	rst  $38                                         ; $6a28: $ff
	rst  $38                                         ; $6a29: $ff
	rst  $38                                         ; $6a2a: $ff
	rst  $38                                         ; $6a2b: $ff
	dec  c                                           ; $6a2c: $0d
	nop                                              ; $6a2d: $00
	ld   a, [bc]                                     ; $6a2e: $0a
	ld   bc, $9166                                   ; $6a2f: $01 $66 $91
	sbc  [hl]                                        ; $6a32: $9e
	ld   d, b                                        ; $6a33: $50
	ld   l, l                                        ; $6a34: $6d
	ld   h, l                                        ; $6a35: $65
	ld   a, l                                        ; $6a36: $7d
	sbc  [hl]                                        ; $6a37: $9e
	inc  bc                                          ; $6a38: $03
	dec  c                                           ; $6a39: $0d
	ld   [bc], a                                     ; $6a3a: $02
	jp   $0d5a                                       ; $6a3b: $c3 $5a $0d


	ld   d, b                                        ; $6a3e: $50
	sbc  b                                           ; $6a3f: $98
	adc  h                                           ; $6a40: $8c
	ld   h, a                                        ; $6a41: $67
	ld   e, c                                        ; $6a42: $59
	sub  a                                           ; $6a43: $97
	rst  $38                                         ; $6a44: $ff
	rst  $38                                         ; $6a45: $ff
	rst  $38                                         ; $6a46: $ff
	rst  $38                                         ; $6a47: $ff
	rst  $38                                         ; $6a48: $ff
	rst  $38                                         ; $6a49: $ff
	rst  $38                                         ; $6a4a: $ff
	rst  $38                                         ; $6a4b: $ff
	dec  c                                           ; $6a4c: $0d
	rst  $38                                         ; $6a4d: $ff
	rst  $38                                         ; $6a4e: $ff
	rst  $38                                         ; $6a4f: $ff
	rst  $38                                         ; $6a50: $ff
	rst  $38                                         ; $6a51: $ff
	rst  $38                                         ; $6a52: $ff
	rst  $38                                         ; $6a53: $ff
	rst  $38                                         ; $6a54: $ff
	rst  $38                                         ; $6a55: $ff
	rst  $38                                         ; $6a56: $ff
	rst  $38                                         ; $6a57: $ff
	rst  $38                                         ; $6a58: $ff
	rst  $38                                         ; $6a59: $ff
	rst  $38                                         ; $6a5a: $ff
	dec  c                                           ; $6a5b: $0d
	nop                                              ; $6a5c: $00
	ld   a, [bc]                                     ; $6a5d: $0a
	dec  b                                           ; $6a5e: $05
	add  b                                           ; $6a5f: $80
	sbc  h                                           ; $6a60: $9c
	ld   bc, $0001                                   ; $6a61: $01 $01 $00
	nop                                              ; $6a64: $00
	rrca                                             ; $6a65: $0f
	nop                                              ; $6a66: $00
	ld   bc, $6b01                                   ; $6a67: $01 $01 $6b
	ld   d, h                                        ; $6a6a: $54
	ld   [hl], l                                     ; $6a6b: $75
	ld   h, a                                        ; $6a6c: $67
	ld   a, e                                        ; $6a6d: $7b
	rst  $38                                         ; $6a6e: $ff
	rst  $38                                         ; $6a6f: $ff
	dec  c                                           ; $6a70: $0d
	ld   [de], a                                     ; $6a71: $12
	ld   a, [de]                                     ; $6a72: $1a
	ld   h, e                                        ; $6a73: $63
	ld   d, d                                        ; $6a74: $52
	rst  $38                                         ; $6a75: $ff
	ld   [hl], h                                     ; $6a76: $74
	halt                                             ; $6a77: $76
	ld   h, c                                        ; $6a78: $61
	ld   [hl], l                                     ; $6a79: $75
	ld   h, a                                        ; $6a7a: $67
	ld   e, c                                        ; $6a7b: $59
	ld   sp, hl                                      ; $6a7c: $f9
	dec  c                                           ; $6a7d: $0d
	nop                                              ; $6a7e: $00
	ld   a, [bc]                                     ; $6a7f: $0a
	inc  e                                           ; $6a80: $1c
	ld   c, $01                                      ; $6a81: $0e $01
	ld   bc, $5601                                   ; $6a83: $01 $01 $56
	ld   [hl], c                                     ; $6a86: $71
	ld   a, [$5010]                                  ; $6a87: $fa $10 $50
	ld   l, l                                        ; $6a8a: $6d
	ld   h, l                                        ; $6a8b: $65
	ld   [hl], c                                     ; $6a8c: $71
	ld   [hl], h                                     ; $6a8d: $74
	sbc  [hl]                                        ; $6a8e: $9e
	ld   l, e                                        ; $6a8f: $6b
	and  c                                           ; $6a90: $a1
	ld   a, b                                        ; $6a91: $78
	ld   a, c                                        ; $6a92: $79
	dec  c                                           ; $6a93: $0d
	inc  b                                           ; $6a94: $04
	ld   c, $03                                      ; $6a95: $0e $03
	add  d                                           ; $6a97: $82
	ld   [hl], c                                     ; $6a98: $71
	adc  e                                           ; $6a99: $8b
	ld   e, l                                        ; $6a9a: $5d
	ld   [bc], a                                     ; $6a9b: $02
	sub  l                                           ; $6a9c: $95
	ld   d, [hl]                                     ; $6a9d: $56
	adc  h                                           ; $6a9e: $8c
	ld   h, a                                        ; $6a9f: $67
	ld   e, c                                        ; $6aa0: $59
	ld   sp, hl                                      ; $6aa1: $f9
	dec  c                                           ; $6aa2: $0d
	ld   a, b                                        ; $6aa3: $78
	and  c                                           ; $6aa4: $a1
	ld   l, [hl]                                     ; $6aa5: $6e
	ld   e, c                                        ; $6aa6: $59
	sbc  [hl]                                        ; $6aa7: $9e
	rst  ToBoot                                         ; $6aa8: $c7
	xor  $6f                                         ; $6aa9: $ee $6f
	sub  c                                           ; $6aab: $91
	ld   d, d                                        ; $6aac: $52
	adc  h                                           ; $6aad: $8c
	ld   h, a                                        ; $6aae: $67
	sbc  a                                           ; $6aaf: $9f
	dec  c                                           ; $6ab0: $0d
	nop                                              ; $6ab1: $00
	ld   a, [bc]                                     ; $6ab2: $0a
	ld   bc, $6d50                                   ; $6ab3: $01 $50 $6d
	ld   h, l                                        ; $6ab6: $65
	ld   a, h                                        ; $6ab7: $7c
	ld   a, e                                        ; $6ab8: $7b
	and  c                                           ; $6ab9: $a1
	sbc  d                                           ; $6aba: $9a
	ld   d, d                                        ; $6abb: $52
	ld   a, l                                        ; $6abc: $7d
	dec  c                                           ; $6abd: $0d
	ld   [de], a                                     ; $6abe: $12
	ld   d, $63                                      ; $6abf: $16 $63
	ld   d, d                                        ; $6ac1: $52
	ld   a, b                                        ; $6ac2: $78
	and  c                                           ; $6ac3: $a1
	ld   [hl], l                                     ; $6ac4: $75
	ld   h, a                                        ; $6ac5: $67
	sub  [hl]                                        ; $6ac6: $96
	sbc  a                                           ; $6ac7: $9f
	dec  c                                           ; $6ac8: $0d
	ld   [bc], a                                     ; $6ac9: $02
	ld   a, d                                        ; $6aca: $7a
	ld   d, [hl]                                     ; $6acb: $56
	ld   [hl], h                                     ; $6acc: $74
	ld   e, b                                        ; $6acd: $58
	ld   d, d                                        ; $6ace: $52
	ld   [hl], h                                     ; $6acf: $74
	ld   e, l                                        ; $6ad0: $5d
	ld   l, [hl]                                     ; $6ad1: $6e
	ld   h, e                                        ; $6ad2: $63
	ld   d, d                                        ; $6ad3: $52
	ld   a, e                                        ; $6ad4: $7b
	sbc  a                                           ; $6ad5: $9f
	dec  c                                           ; $6ad6: $0d
	nop                                              ; $6ad7: $00
	ld   a, [bc]                                     ; $6ad8: $0a
	ld   bc, $9166                                   ; $6ad9: $01 $66 $91
	sbc  [hl]                                        ; $6adc: $9e
	ld   d, b                                        ; $6add: $50
	ld   l, l                                        ; $6ade: $6d
	ld   h, l                                        ; $6adf: $65
	ld   a, l                                        ; $6ae0: $7d
	sbc  [hl]                                        ; $6ae1: $9e
	inc  bc                                          ; $6ae2: $03
	dec  c                                           ; $6ae3: $0d
	ld   [bc], a                                     ; $6ae4: $02
	jp   $0d5a                                       ; $6ae5: $c3 $5a $0d


	ld   d, b                                        ; $6ae8: $50
	sbc  b                                           ; $6ae9: $98
	adc  h                                           ; $6aea: $8c
	ld   h, a                                        ; $6aeb: $67
	ld   e, c                                        ; $6aec: $59
	sub  a                                           ; $6aed: $97
	sbc  a                                           ; $6aee: $9f
	dec  c                                           ; $6aef: $0d
	nop                                              ; $6af0: $00
	ld   a, [bc]                                     ; $6af1: $0a
	dec  b                                           ; $6af2: $05
	add  b                                           ; $6af3: $80
	sbc  h                                           ; $6af4: $9c
	ld   bc, $0001                                   ; $6af5: $01 $01 $00
	nop                                              ; $6af8: $00
	inc  e                                           ; $6af9: $1c
	ld   c, $00                                      ; $6afa: $0e $00
	nop                                              ; $6afc: $00
	ld   bc, $599d                                   ; $6afd: $01 $9d $59
	sub  a                                           ; $6b00: $97
	ld   a, b                                        ; $6b01: $78
	ld   d, d                                        ; $6b02: $52
	ld   [hl], l                                     ; $6b03: $75
	ld   h, a                                        ; $6b04: $67
	ld   e, c                                        ; $6b05: $59
	ld   sp, hl                                      ; $6b06: $f9
	dec  c                                           ; $6b07: $0d
	ld   h, l                                        ; $6b08: $65
	ld   e, c                                        ; $6b09: $59
	ld   l, l                                        ; $6b0a: $6d
	ld   a, b                                        ; $6b0b: $78
	ld   d, d                                        ; $6b0c: $52
	ld   [hl], l                                     ; $6b0d: $75
	ld   h, a                                        ; $6b0e: $67
	ld   a, e                                        ; $6b0f: $7b
	rst  $38                                         ; $6b10: $ff
	rst  $38                                         ; $6b11: $ff
	dec  c                                           ; $6b12: $0d
	nop                                              ; $6b13: $00
	ld   a, [bc]                                     ; $6b14: $0a
	ld   bc, $6d50                                   ; $6b15: $01 $50 $6d
	ld   h, l                                        ; $6b18: $65
	ld   a, l                                        ; $6b19: $7d
	sbc  [hl]                                        ; $6b1a: $9e
	ld   [de], a                                     ; $6b1b: $12
	ld   d, $63                                      ; $6b1c: $16 $63
	ld   d, d                                        ; $6b1e: $52
	ld   [hl], l                                     ; $6b1f: $75
	ld   h, a                                        ; $6b20: $67
	sbc  a                                           ; $6b21: $9f
	dec  c                                           ; $6b22: $0d
	ld   h, [hl]                                     ; $6b23: $66
	sub  c                                           ; $6b24: $91
	sbc  [hl]                                        ; $6b25: $9e
	ld   d, b                                        ; $6b26: $50
	ld   l, l                                        ; $6b27: $6d
	ld   h, l                                        ; $6b28: $65
	ld   a, l                                        ; $6b29: $7d
	sbc  [hl]                                        ; $6b2a: $9e
	inc  bc                                          ; $6b2b: $03
	dec  c                                           ; $6b2c: $0d
	ld   [bc], a                                     ; $6b2d: $02
	jp   $0d5a                                       ; $6b2e: $c3 $5a $0d


	ld   d, b                                        ; $6b31: $50
	sbc  b                                           ; $6b32: $98
	adc  h                                           ; $6b33: $8c
	ld   h, a                                        ; $6b34: $67
	ld   e, c                                        ; $6b35: $59
	sub  a                                           ; $6b36: $97
	sbc  [hl]                                        ; $6b37: $9e
	ld   h, c                                        ; $6b38: $61
	sbc  d                                           ; $6b39: $9a
	ld   [hl], l                                     ; $6b3a: $75
	rst  $38                                         ; $6b3b: $ff
	rst  $38                                         ; $6b3c: $ff
	dec  c                                           ; $6b3d: $0d
	nop                                              ; $6b3e: $00
	ld   a, [bc]                                     ; $6b3f: $0a
	dec  b                                           ; $6b40: $05
	add  b                                           ; $6b41: $80
	sbc  h                                           ; $6b42: $9c
	ld   bc, $0001                                   ; $6b43: $01 $01 $00
	nop                                              ; $6b46: $00
	rrca                                             ; $6b47: $0f
	nop                                              ; $6b48: $00
	ld   bc, $0601                                   ; $6b49: $01 $01 $06
	ld   e, e                                        ; $6b4c: $5b
	ld   h, e                                        ; $6b4d: $63
	and  c                                           ; $6b4e: $a1
	ld   [hl], h                                     ; $6b4f: $74
	sbc  [hl]                                        ; $6b50: $9e
	inc  bc                                          ; $6b51: $03
	add  b                                           ; $6b52: $80
	inc  b                                           ; $6b53: $04
	pop  de                                          ; $6b54: $d1
	inc  bc                                          ; $6b55: $03
	adc  $7d                                         ; $6b56: $ce $7d
	ld   [hl], a                                     ; $6b58: $77
	ld   h, c                                        ; $6b59: $61
	dec  c                                           ; $6b5a: $0d
	ld   [hl], l                                     ; $6b5b: $75
	ld   h, a                                        ; $6b5c: $67
	ld   e, c                                        ; $6b5d: $59
	ld   sp, hl                                      ; $6b5e: $f9
	dec  c                                           ; $6b5f: $0d
	nop                                              ; $6b60: $00
	ld   a, [bc]                                     ; $6b61: $0a
	inc  e                                           ; $6b62: $1c
	ld   c, $00                                      ; $6b63: $0e $00
	nop                                              ; $6b65: $00
	ld   bc, $6177                                   ; $6b66: $01 $77 $61
	ld   l, [hl]                                     ; $6b69: $6e
	halt                                             ; $6b6a: $76
	dec  b                                           ; $6b6b: $05
	pop  de                                          ; $6b6c: $d1
	ld   d, d                                        ; $6b6d: $52
	adc  h                                           ; $6b6e: $8c
	ld   h, a                                        ; $6b6f: $67
	sbc  a                                           ; $6b70: $9f
	dec  c                                           ; $6b71: $0d
	db   $d3                                         ; $6b72: $d3
	push af                                          ; $6b73: $f5
	ret                                              ; $6b74: $c9


	ld   a, l                                        ; $6b75: $7d
	sbc  [hl]                                        ; $6b76: $9e
	jp   nz, $aee5                                   ; $6b77: $c2 $e5 $ae

	jp   nz, $aee5                                   ; $6b7a: $c2 $e5 $ae

	ld   a, h                                        ; $6b7d: $7c
	ld   bc, $0116                                   ; $6b7e: $01 $16 $01
	ld   d, $0d                                      ; $6b81: $16 $0d
	ld   bc, $0116                                   ; $6b83: $01 $16 $01
	ld   d, $75                                      ; $6b86: $16 $75
	ld   h, a                                        ; $6b88: $67
	sbc  a                                           ; $6b89: $9f
	dec  c                                           ; $6b8a: $0d
	nop                                              ; $6b8b: $00
	ld   a, [bc]                                     ; $6b8c: $0a
	add  hl, de                                      ; $6b8d: $19
	dec  b                                           ; $6b8e: $05
	inc  bc                                          ; $6b8f: $03
	inc  b                                           ; $6b90: $04
	dec  l                                           ; $6b91: $2d
	ld   [bc], a                                     ; $6b92: $02
	ld   b, e                                        ; $6b93: $43
	nop                                              ; $6b94: $00
	nop                                              ; $6b95: $00
	ld   b, $87                                      ; $6b96: $06 $87
	dec  b                                           ; $6b98: $05
	xor  [hl]                                        ; $6b99: $ae
	nop                                              ; $6b9a: $00
	ld   bc, $9a04                                   ; $6b9b: $01 $04 $9a
	ld   [bc], a                                     ; $6b9e: $02
	add  l                                           ; $6b9f: $85
	inc  b                                           ; $6ba0: $04
	ld   d, $00                                      ; $6ba1: $16 $00
	ld   [bc], a                                     ; $6ba3: $02
	rlca                                             ; $6ba4: $07
	ldh  a, [rTAC]                                   ; $6ba5: $f0 $07
	ld   [bc], a                                     ; $6ba7: $02
	inc  bc                                          ; $6ba8: $03
	ld   bc, $2000                                   ; $6ba9: $01 $00 $20
	nop                                              ; $6bac: $00
	rlca                                             ; $6bad: $07
	ld   l, a                                        ; $6bae: $6f
	ld   [$0302], sp                                 ; $6baf: $08 $02 $03
	ld   bc, $2001                                   ; $6bb2: $01 $01 $20
	nop                                              ; $6bb5: $00
	rlca                                             ; $6bb6: $07
	inc  b                                           ; $6bb7: $04
	add  hl, bc                                      ; $6bb8: $09
	ld   [bc], a                                     ; $6bb9: $02
	inc  bc                                          ; $6bba: $03
	ld   bc, $2002                                   ; $6bbb: $01 $02 $20
	nop                                              ; $6bbe: $00
	ld   b, $99                                      ; $6bbf: $06 $99
	add  hl, bc                                      ; $6bc1: $09
	rrca                                             ; $6bc2: $0f
	nop                                              ; $6bc3: $00
	ld   bc, wtodo_VisitedTitleScreen                                   ; $6bc4: $01 $01 $c2
	push hl                                          ; $6bc7: $e5
	xor  [hl]                                        ; $6bc8: $ae
	jp   nz, $aee5                                   ; $6bc9: $c2 $e5 $ae

	halt                                             ; $6bcc: $76
	ld   [bc], a                                     ; $6bcd: $02
	sbc  l                                           ; $6bce: $9d
	ld   d, [hl]                                     ; $6bcf: $56
	ld   a, [hl]                                     ; $6bd0: $7e
	sbc  [hl]                                        ; $6bd1: $9e
	dec  c                                           ; $6bd2: $0d
	ld   b, $88                                      ; $6bd3: $06 $88
	dec  b                                           ; $6bd5: $05
	push af                                          ; $6bd6: $f5
	ld   [hl], c                                     ; $6bd7: $71
	inc  bc                                          ; $6bd8: $03
	add  [hl]                                        ; $6bd9: $86
	rst  $38                                         ; $6bda: $ff
	rst  $38                                         ; $6bdb: $ff
	dec  c                                           ; $6bdc: $0d
	cp   e                                           ; $6bdd: $bb
	pop  de                                          ; $6bde: $d1
	db   $ec                                         ; $6bdf: $ec
	sbc  [hl]                                        ; $6be0: $9e
	inc  b                                           ; $6be1: $04
	dec  l                                           ; $6be2: $2d
	ld   [bc], a                                     ; $6be3: $02
	ld   b, e                                        ; $6be4: $43
	ld   [hl], l                                     ; $6be5: $75
	ld   h, a                                        ; $6be6: $67
	ld   a, e                                        ; $6be7: $7b
	sbc  a                                           ; $6be8: $9f
	dec  c                                           ; $6be9: $0d
	nop                                              ; $6bea: $00
	ld   a, [bc]                                     ; $6beb: $0a
	inc  e                                           ; $6bec: $1c
	ld   c, $01                                      ; $6bed: $0e $01
	ld   bc, $6b01                                   ; $6bef: $01 $01 $6b
	ld   d, h                                        ; $6bf2: $54
	ld   [hl], l                                     ; $6bf3: $75
	ld   h, a                                        ; $6bf4: $67
	sbc  a                                           ; $6bf5: $9f
	inc  bc                                          ; $6bf6: $03
	ld   c, d                                        ; $6bf7: $4a
	ld   [bc], a                                     ; $6bf8: $02
	or   h                                           ; $6bf9: $b4
	ld   [hl], l                                     ; $6bfa: $75
	ld   h, a                                        ; $6bfb: $67
	sbc  a                                           ; $6bfc: $9f
	dec  c                                           ; $6bfd: $0d
	ld   h, e                                        ; $6bfe: $63
	ld   h, a                                        ; $6bff: $67
	ld   e, d                                        ; $6c00: $5a
	ld   a, l                                        ; $6c01: $7d
	ld   [$6300], sp                                 ; $6c02: $08 $00 $63
	and  c                                           ; $6c05: $a1
	sbc  a                                           ; $6c06: $9f
	dec  c                                           ; $6c07: $0d
	inc  b                                           ; $6c08: $04
	dec  l                                           ; $6c09: $2d
	ld   [bc], a                                     ; $6c0a: $02
	ld   b, e                                        ; $6c0b: $43
	ld   a, l                                        ; $6c0c: $7d
	inc  bc                                          ; $6c0d: $03
	inc  d                                           ; $6c0e: $14
	inc  bc                                          ; $6c0f: $03
	and  d                                           ; $6c10: $a2
	ld   a, h                                        ; $6c11: $7c
	inc  bc                                          ; $6c12: $03
	ld   d, d                                        ; $6c13: $52
	adc  h                                           ; $6c14: $8c
	sbc  d                                           ; $6c15: $9a
	ld   [hl], l                                     ; $6c16: $75
	db   $fc                                         ; $6c17: $fc
	ld   h, a                                        ; $6c18: $67
	sbc  a                                           ; $6c19: $9f
	dec  c                                           ; $6c1a: $0d
	nop                                              ; $6c1b: $00
	ld   a, [bc]                                     ; $6c1c: $0a
	ld   bc, $9166                                   ; $6c1d: $01 $66 $91
	sbc  [hl]                                        ; $6c20: $9e
	ld   d, b                                        ; $6c21: $50
	ld   l, l                                        ; $6c22: $6d
	ld   h, l                                        ; $6c23: $65
	ld   a, l                                        ; $6c24: $7d
	sbc  [hl]                                        ; $6c25: $9e
	inc  bc                                          ; $6c26: $03
	dec  c                                           ; $6c27: $0d
	ld   [bc], a                                     ; $6c28: $02
	jp   $0d5a                                       ; $6c29: $c3 $5a $0d


	ld   d, b                                        ; $6c2c: $50
	sbc  b                                           ; $6c2d: $98
	adc  h                                           ; $6c2e: $8c
	ld   h, a                                        ; $6c2f: $67
	ld   e, c                                        ; $6c30: $59
	sub  a                                           ; $6c31: $97
	sbc  [hl]                                        ; $6c32: $9e
	adc  h                                           ; $6c33: $8c
	ld   l, l                                        ; $6c34: $6d
	rst  $38                                         ; $6c35: $ff
	rst  $38                                         ; $6c36: $ff
	dec  c                                           ; $6c37: $0d
	nop                                              ; $6c38: $00
	ld   a, [bc]                                     ; $6c39: $0a
	dec  b                                           ; $6c3a: $05
	add  b                                           ; $6c3b: $80
	sbc  h                                           ; $6c3c: $9c
	ld   bc, $0001                                   ; $6c3d: $01 $01 $00
	nop                                              ; $6c40: $00
	rrca                                             ; $6c41: $0f
	nop                                              ; $6c42: $00
	ld   bc, wtodo_VisitedTitleScreen                                   ; $6c43: $01 $01 $c2
	push hl                                          ; $6c46: $e5
	xor  [hl]                                        ; $6c47: $ae
	jp   nz, $aee5                                   ; $6c48: $c2 $e5 $ae

	halt                                             ; $6c4b: $76
	ld   [bc], a                                     ; $6c4c: $02
	sbc  l                                           ; $6c4d: $9d
	ld   d, [hl]                                     ; $6c4e: $56
	ld   a, [hl]                                     ; $6c4f: $7e
	sbc  [hl]                                        ; $6c50: $9e
	dec  c                                           ; $6c51: $0d
	inc  b                                           ; $6c52: $04
	ld   h, l                                        ; $6c53: $65
	inc  b                                           ; $6c54: $04
	rrca                                             ; $6c55: $0f
	ld   [hl], c                                     ; $6c56: $71
	inc  bc                                          ; $6c57: $03
	add  [hl]                                        ; $6c58: $86
	rst  $38                                         ; $6c59: $ff
	rst  $38                                         ; $6c5a: $ff
	dec  c                                           ; $6c5b: $0d
	cp   e                                           ; $6c5c: $bb
	pop  de                                          ; $6c5d: $d1
	db   $ec                                         ; $6c5e: $ec
	sbc  [hl]                                        ; $6c5f: $9e
	ld   b, $87                                      ; $6c60: $06 $87
	dec  b                                           ; $6c62: $05
	xor  [hl]                                        ; $6c63: $ae
	ld   [hl], l                                     ; $6c64: $75
	ld   h, a                                        ; $6c65: $67
	ld   a, e                                        ; $6c66: $7b
	sbc  a                                           ; $6c67: $9f
	dec  c                                           ; $6c68: $0d
	nop                                              ; $6c69: $00
	ld   a, [bc]                                     ; $6c6a: $0a
	inc  e                                           ; $6c6b: $1c
	ld   c, $03                                      ; $6c6c: $0e $03
	inc  bc                                          ; $6c6e: $03
	ld   bc, $5a6f                                   ; $6c6f: $01 $6f $5a
	ld   d, d                                        ; $6c72: $52
	adc  h                                           ; $6c73: $8c
	ld   h, a                                        ; $6c74: $67
	sub  [hl]                                        ; $6c75: $96
	db   $fc                                         ; $6c76: $fc
	sbc  a                                           ; $6c77: $9f
	dec  c                                           ; $6c78: $0d
	jp   nz, $aee5                                   ; $6c79: $c2 $e5 $ae

	jp   nz, $aee5                                   ; $6c7c: $c2 $e5 $ae

	halt                                             ; $6c7f: $76
	ld   [bc], a                                     ; $6c80: $02
	sbc  l                                           ; $6c81: $9d
	ld   d, [hl]                                     ; $6c82: $56
	ld   a, [hl]                                     ; $6c83: $7e
	dec  c                                           ; $6c84: $0d
	ld   b, $88                                      ; $6c85: $06 $88
	dec  b                                           ; $6c87: $05
	push af                                          ; $6c88: $f5
	ld   [hl], c                                     ; $6c89: $71
	inc  bc                                          ; $6c8a: $03
	add  [hl]                                        ; $6c8b: $86
	ld   [hl], l                                     ; $6c8c: $75
	ld   h, a                                        ; $6c8d: $67
	sub  [hl]                                        ; $6c8e: $96
	sbc  a                                           ; $6c8f: $9f
	dec  c                                           ; $6c90: $0d
	nop                                              ; $6c91: $00
	ld   a, [bc]                                     ; $6c92: $0a
	ld   bc, $6d50                                   ; $6c93: $01 $50 $6d
	ld   h, l                                        ; $6c96: $65
	ld   a, l                                        ; $6c97: $7d
	sbc  [hl]                                        ; $6c98: $9e
	inc  b                                           ; $6c99: $04
	dec  l                                           ; $6c9a: $2d
	ld   [bc], a                                     ; $6c9b: $02
	ld   b, e                                        ; $6c9c: $43
	ld   a, l                                        ; $6c9d: $7d
	inc  bc                                          ; $6c9e: $03
	inc  d                                           ; $6c9f: $14
	inc  bc                                          ; $6ca0: $03
	and  d                                           ; $6ca1: $a2
	ld   a, h                                        ; $6ca2: $7c
	dec  c                                           ; $6ca3: $0d
	inc  bc                                          ; $6ca4: $03
	add  b                                           ; $6ca5: $80
	inc  b                                           ; $6ca6: $04
	pop  de                                          ; $6ca7: $d1
	ld   a, b                                        ; $6ca8: $78
	and  c                                           ; $6ca9: $a1
	ld   [hl], l                                     ; $6caa: $75
	ld   h, a                                        ; $6cab: $67
	sub  [hl]                                        ; $6cac: $96
	sbc  a                                           ; $6cad: $9f
	dec  c                                           ; $6cae: $0d
	nop                                              ; $6caf: $00
	ld   a, [bc]                                     ; $6cb0: $0a
	ld   bc, $9166                                   ; $6cb1: $01 $66 $91
	sbc  [hl]                                        ; $6cb4: $9e
	ld   d, b                                        ; $6cb5: $50
	ld   l, l                                        ; $6cb6: $6d
	ld   h, l                                        ; $6cb7: $65
	ld   a, l                                        ; $6cb8: $7d
	sbc  [hl]                                        ; $6cb9: $9e
	inc  bc                                          ; $6cba: $03
	dec  c                                           ; $6cbb: $0d
	ld   [bc], a                                     ; $6cbc: $02
	jp   $0d5a                                       ; $6cbd: $c3 $5a $0d


	ld   d, b                                        ; $6cc0: $50
	sbc  b                                           ; $6cc1: $98
	adc  h                                           ; $6cc2: $8c
	ld   h, a                                        ; $6cc3: $67
	ld   e, c                                        ; $6cc4: $59
	sub  a                                           ; $6cc5: $97
	sbc  [hl]                                        ; $6cc6: $9e
	ld   h, c                                        ; $6cc7: $61
	sbc  d                                           ; $6cc8: $9a
	ld   [hl], l                                     ; $6cc9: $75
	rst  $38                                         ; $6cca: $ff
	rst  $38                                         ; $6ccb: $ff
	dec  c                                           ; $6ccc: $0d
	nop                                              ; $6ccd: $00
	ld   a, [bc]                                     ; $6cce: $0a
	dec  b                                           ; $6ccf: $05
	add  b                                           ; $6cd0: $80
	sbc  h                                           ; $6cd1: $9c
	ld   bc, $0001                                   ; $6cd2: $01 $01 $00
	nop                                              ; $6cd5: $00
	rrca                                             ; $6cd6: $0f
	nop                                              ; $6cd7: $00
	ld   bc, wtodo_VisitedTitleScreen                                   ; $6cd8: $01 $01 $c2
	push hl                                          ; $6cdb: $e5
	xor  [hl]                                        ; $6cdc: $ae
	jp   nz, $aee5                                   ; $6cdd: $c2 $e5 $ae

	halt                                             ; $6ce0: $76
	ld   [bc], a                                     ; $6ce1: $02
	sbc  l                                           ; $6ce2: $9d
	ld   d, [hl]                                     ; $6ce3: $56
	ld   a, [hl]                                     ; $6ce4: $7e
	sbc  [hl]                                        ; $6ce5: $9e
	dec  c                                           ; $6ce6: $0d
	inc  b                                           ; $6ce7: $04
	ld   d, $05                                      ; $6ce8: $16 $05
	jr   c, jr_041_6cef                              ; $6cea: $38 $03

	add  [hl]                                        ; $6cec: $86
	rst  $38                                         ; $6ced: $ff
	rst  $38                                         ; $6cee: $ff

jr_041_6cef:
	dec  c                                           ; $6cef: $0d
	cp   e                                           ; $6cf0: $bb
	pop  de                                          ; $6cf1: $d1
	db   $ec                                         ; $6cf2: $ec
	sbc  [hl]                                        ; $6cf3: $9e
	inc  b                                           ; $6cf4: $04
	sbc  d                                           ; $6cf5: $9a
	ld   [bc], a                                     ; $6cf6: $02
	add  l                                           ; $6cf7: $85
	inc  b                                           ; $6cf8: $04
	ld   d, $75                                      ; $6cf9: $16 $75
	ld   h, a                                        ; $6cfb: $67
	ld   a, e                                        ; $6cfc: $7b
	sbc  a                                           ; $6cfd: $9f
	dec  c                                           ; $6cfe: $0d
	nop                                              ; $6cff: $00
	ld   a, [bc]                                     ; $6d00: $0a
	inc  e                                           ; $6d01: $1c
	ld   c, $03                                      ; $6d02: $0e $03
	inc  bc                                          ; $6d04: $03
	ld   bc, $5a6f                                   ; $6d05: $01 $6f $5a
	ld   d, d                                        ; $6d08: $52
	adc  h                                           ; $6d09: $8c
	ld   h, a                                        ; $6d0a: $67
	sub  [hl]                                        ; $6d0b: $96
	db   $fc                                         ; $6d0c: $fc
	sbc  a                                           ; $6d0d: $9f
	dec  c                                           ; $6d0e: $0d
	jp   nz, $aee5                                   ; $6d0f: $c2 $e5 $ae

	jp   nz, $aee5                                   ; $6d12: $c2 $e5 $ae

	halt                                             ; $6d15: $76
	ld   [bc], a                                     ; $6d16: $02
	sbc  l                                           ; $6d17: $9d
	ld   d, [hl]                                     ; $6d18: $56
	ld   a, [hl]                                     ; $6d19: $7e
	dec  c                                           ; $6d1a: $0d
	ld   b, $88                                      ; $6d1b: $06 $88
	dec  b                                           ; $6d1d: $05
	push af                                          ; $6d1e: $f5
	ld   [hl], c                                     ; $6d1f: $71
	inc  bc                                          ; $6d20: $03
	add  [hl]                                        ; $6d21: $86
	ld   [hl], l                                     ; $6d22: $75
	ld   h, a                                        ; $6d23: $67
	sbc  a                                           ; $6d24: $9f
	dec  c                                           ; $6d25: $0d
	nop                                              ; $6d26: $00
	ld   a, [bc]                                     ; $6d27: $0a
	ld   bc, $6d50                                   ; $6d28: $01 $50 $6d
	ld   h, l                                        ; $6d2b: $65
	ld   a, l                                        ; $6d2c: $7d
	sbc  [hl]                                        ; $6d2d: $9e
	inc  b                                           ; $6d2e: $04
	dec  l                                           ; $6d2f: $2d
	ld   [bc], a                                     ; $6d30: $02
	ld   b, e                                        ; $6d31: $43
	ld   a, l                                        ; $6d32: $7d
	inc  bc                                          ; $6d33: $03
	inc  d                                           ; $6d34: $14
	inc  bc                                          ; $6d35: $03
	and  d                                           ; $6d36: $a2
	ld   a, h                                        ; $6d37: $7c
	dec  c                                           ; $6d38: $0d
	inc  bc                                          ; $6d39: $03
	add  b                                           ; $6d3a: $80
	inc  b                                           ; $6d3b: $04
	pop  de                                          ; $6d3c: $d1
	ld   a, b                                        ; $6d3d: $78
	and  c                                           ; $6d3e: $a1
	ld   [hl], l                                     ; $6d3f: $75
	ld   h, a                                        ; $6d40: $67
	sub  [hl]                                        ; $6d41: $96
	sbc  a                                           ; $6d42: $9f
	dec  c                                           ; $6d43: $0d
	nop                                              ; $6d44: $00
	ld   a, [bc]                                     ; $6d45: $0a
	ld   bc, $9166                                   ; $6d46: $01 $66 $91
	sbc  [hl]                                        ; $6d49: $9e
	ld   d, b                                        ; $6d4a: $50
	ld   l, l                                        ; $6d4b: $6d
	ld   h, l                                        ; $6d4c: $65
	ld   a, l                                        ; $6d4d: $7d
	sbc  [hl]                                        ; $6d4e: $9e
	inc  bc                                          ; $6d4f: $03
	dec  c                                           ; $6d50: $0d
	ld   [bc], a                                     ; $6d51: $02
	jp   $0d5a                                       ; $6d52: $c3 $5a $0d


	ld   d, b                                        ; $6d55: $50
	sbc  b                                           ; $6d56: $98
	adc  h                                           ; $6d57: $8c
	ld   h, a                                        ; $6d58: $67
	ld   e, c                                        ; $6d59: $59
	sub  a                                           ; $6d5a: $97

Jump_041_6d5b:
	sbc  [hl]                                        ; $6d5b: $9e
	ld   h, c                                        ; $6d5c: $61
	sbc  d                                           ; $6d5d: $9a
	ld   [hl], l                                     ; $6d5e: $75
	rst  $38                                         ; $6d5f: $ff
	rst  $38                                         ; $6d60: $ff
	dec  c                                           ; $6d61: $0d
	nop                                              ; $6d62: $00
	ld   a, [bc]                                     ; $6d63: $0a
	dec  b                                           ; $6d64: $05
	add  b                                           ; $6d65: $80
	sbc  h                                           ; $6d66: $9c
	ld   bc, $0001                                   ; $6d67: $01 $01 $00
	nop                                              ; $6d6a: $00
	inc  e                                           ; $6d6b: $1c
	ld   c, $00                                      ; $6d6c: $0e $00
	nop                                              ; $6d6e: $00
	ld   bc, $599d                                   ; $6d6f: $01 $9d $59
	sub  a                                           ; $6d72: $97
	ld   a, b                                        ; $6d73: $78
	ld   d, d                                        ; $6d74: $52
	ld   [hl], l                                     ; $6d75: $75
	ld   h, a                                        ; $6d76: $67
	ld   e, c                                        ; $6d77: $59
	ld   sp, hl                                      ; $6d78: $f9
	dec  c                                           ; $6d79: $0d
	ld   h, l                                        ; $6d7a: $65
	ld   e, c                                        ; $6d7b: $59
	ld   l, l                                        ; $6d7c: $6d
	ld   a, b                                        ; $6d7d: $78
	ld   d, d                                        ; $6d7e: $52
	ld   [hl], l                                     ; $6d7f: $75
	ld   h, a                                        ; $6d80: $67
	ld   a, e                                        ; $6d81: $7b
	rst  $38                                         ; $6d82: $ff
	rst  $38                                         ; $6d83: $ff
	dec  c                                           ; $6d84: $0d
	nop                                              ; $6d85: $00
	ld   a, [bc]                                     ; $6d86: $0a
	ld   bc, $6d50                                   ; $6d87: $01 $50 $6d
	ld   h, l                                        ; $6d8a: $65
	ld   a, l                                        ; $6d8b: $7d
	sbc  [hl]                                        ; $6d8c: $9e
	inc  b                                           ; $6d8d: $04
	dec  l                                           ; $6d8e: $2d
	ld   [bc], a                                     ; $6d8f: $02
	ld   b, e                                        ; $6d90: $43
	ld   a, l                                        ; $6d91: $7d
	inc  bc                                          ; $6d92: $03
	inc  d                                           ; $6d93: $14
	inc  bc                                          ; $6d94: $03
	and  d                                           ; $6d95: $a2
	ld   a, h                                        ; $6d96: $7c
	inc  bc                                          ; $6d97: $03
	add  b                                           ; $6d98: $80
	inc  b                                           ; $6d99: $04
	pop  de                                          ; $6d9a: $d1
	sbc  a                                           ; $6d9b: $9f
	dec  c                                           ; $6d9c: $0d
	jp   nz, $aee5                                   ; $6d9d: $c2 $e5 $ae

	jp   nz, $aee5                                   ; $6da0: $c2 $e5 $ae

	ld   a, h                                        ; $6da3: $7c
	ld   b, $88                                      ; $6da4: $06 $88
	dec  b                                           ; $6da6: $05
	push af                                          ; $6da7: $f5
	ld   [hl], c                                     ; $6da8: $71
	inc  bc                                          ; $6da9: $03
	add  [hl]                                        ; $6daa: $86
	dec  c                                           ; $6dab: $0d
	ld   a, b                                        ; $6dac: $78
	and  c                                           ; $6dad: $a1
	ld   [hl], l                                     ; $6dae: $75
	ld   h, a                                        ; $6daf: $67
	sub  [hl]                                        ; $6db0: $96
	sbc  a                                           ; $6db1: $9f
	dec  c                                           ; $6db2: $0d
	nop                                              ; $6db3: $00
	ld   a, [bc]                                     ; $6db4: $0a
	ld   bc, $9166                                   ; $6db5: $01 $66 $91
	sbc  [hl]                                        ; $6db8: $9e
	ld   d, b                                        ; $6db9: $50
	ld   l, l                                        ; $6dba: $6d
	ld   h, l                                        ; $6dbb: $65
	ld   a, l                                        ; $6dbc: $7d
	sbc  [hl]                                        ; $6dbd: $9e
	inc  bc                                          ; $6dbe: $03
	dec  c                                           ; $6dbf: $0d
	ld   [bc], a                                     ; $6dc0: $02
	jp   $0d5a                                       ; $6dc1: $c3 $5a $0d


	ld   d, b                                        ; $6dc4: $50
	sbc  b                                           ; $6dc5: $98
	adc  h                                           ; $6dc6: $8c
	ld   h, a                                        ; $6dc7: $67
	ld   e, c                                        ; $6dc8: $59
	sub  a                                           ; $6dc9: $97
	sbc  [hl]                                        ; $6dca: $9e
	ld   h, c                                        ; $6dcb: $61
	sbc  d                                           ; $6dcc: $9a
	ld   [hl], l                                     ; $6dcd: $75
	rst  $38                                         ; $6dce: $ff
	rst  $38                                         ; $6dcf: $ff
	dec  c                                           ; $6dd0: $0d
	nop                                              ; $6dd1: $00
	ld   a, [bc]                                     ; $6dd2: $0a
	dec  b                                           ; $6dd3: $05
	add  b                                           ; $6dd4: $80
	sbc  h                                           ; $6dd5: $9c
	ld   bc, $0001                                   ; $6dd6: $01 $01 $00
	nop                                              ; $6dd9: $00
	inc  e                                           ; $6dda: $1c
	ld   c, $00                                      ; $6ddb: $0e $00
	nop                                              ; $6ddd: $00
	ld   bc, $9750                                   ; $6dde: $01 $50 $97
	sbc  [hl]                                        ; $6de1: $9e
	ld   [$6300], sp                                 ; $6de2: $08 $00 $63
	and  c                                           ; $6de5: $a1
	sbc  a                                           ; $6de6: $9f
	dec  c                                           ; $6de7: $0d
	ld   d, d                                        ; $6de8: $52
	sub  a                                           ; $6de9: $97
	ld   [hl], c                                     ; $6dea: $71
	ld   h, l                                        ; $6deb: $65
	sub  c                                           ; $6dec: $91
	ld   d, d                                        ; $6ded: $52
	adc  h                                           ; $6dee: $8c
	ld   l, c                                        ; $6def: $69
	rst  $38                                         ; $6df0: $ff
	rst  $38                                         ; $6df1: $ff
	halt                                             ; $6df2: $76
	sbc  [hl]                                        ; $6df3: $9e
	ld   [bc], a                                     ; $6df4: $02
	sbc  l                                           ; $6df5: $9d
	ld   d, d                                        ; $6df6: $52
	dec  c                                           ; $6df7: $0d
	ld   l, l                                        ; $6df8: $6d
	ld   d, d                                        ; $6df9: $52
	halt                                             ; $6dfa: $76
	ld   h, c                                        ; $6dfb: $61
	sbc  e                                           ; $6dfc: $9b
	ld   a, b                                        ; $6dfd: $78
	ld   a, h                                        ; $6dfe: $7c
	ld   [hl], l                                     ; $6dff: $75
	ld   h, a                                        ; $6e00: $67
	ld   e, d                                        ; $6e01: $5a
	rst  $38                                         ; $6e02: $ff
	rst  $38                                         ; $6e03: $ff
	dec  c                                           ; $6e04: $0d
	nop                                              ; $6e05: $00
	ld   a, [bc]                                     ; $6e06: $0a
	rrca                                             ; $6e07: $0f
	nop                                              ; $6e08: $00
	ld   bc, $9d01                                   ; $6e09: $01 $01 $9d
	ld   e, c                                        ; $6e0c: $59
	ld   [hl], c                                     ; $6e0d: $71
	ld   [hl], h                                     ; $6e0e: $74
	adc  h                                           ; $6e0f: $8c
	ld   h, a                                        ; $6e10: $67
	sub  [hl]                                        ; $6e11: $96
	sbc  a                                           ; $6e12: $9f
	dec  c                                           ; $6e13: $0d
	rst  $10                                         ; $6e14: $d7
	rst  $28                                         ; $6e15: $ef
	rst  JumpTable                                         ; $6e16: $df
	and  l                                           ; $6e17: $a5
	jp   z, $037d                                    ; $6e18: $ca $7d $03

	ld   a, c                                        ; $6e1b: $79
	ld   a, c                                        ; $6e1c: $79
	ld   [de], a                                     ; $6e1d: $12
	inc  b                                           ; $6e1e: $04
	push bc                                          ; $6e1f: $c5
	ld   h, l                                        ; $6e20: $65
	ld   e, c                                        ; $6e21: $59
	dec  c                                           ; $6e22: $0d
	ld   b, $1a                                      ; $6e23: $06 $1a
	sbc  d                                           ; $6e25: $9a
	ld   a, b                                        ; $6e26: $78
	ld   d, d                                        ; $6e27: $52
	and  c                                           ; $6e28: $a1
	ld   [hl], l                                     ; $6e29: $75
	ld   h, l                                        ; $6e2a: $65
	sub  l                                           ; $6e2b: $95
	sbc  a                                           ; $6e2c: $9f
	dec  c                                           ; $6e2d: $0d
	nop                                              ; $6e2e: $00
	ld   a, [bc]                                     ; $6e2f: $0a
	inc  e                                           ; $6e30: $1c
	ld   c, $01                                      ; $6e31: $0e $01
	ld   bc, $7d01                                   ; $6e33: $01 $01 $7d
	ld   d, d                                        ; $6e36: $52
	sbc  [hl]                                        ; $6e37: $9e
	ld   l, e                                        ; $6e38: $6b
	ld   d, h                                        ; $6e39: $54
	ld   a, b                                        ; $6e3a: $78
	and  c                                           ; $6e3b: $a1
	ld   [hl], l                                     ; $6e3c: $75
	ld   h, a                                        ; $6e3d: $67
	sbc  a                                           ; $6e3e: $9f
	dec  c                                           ; $6e3f: $0d
	ld   h, d                                        ; $6e40: $62
	adc  a                                           ; $6e41: $8f
	and  c                                           ; $6e42: $a1
	ld   a, b                                        ; $6e43: $78
	ld   h, e                                        ; $6e44: $63
	ld   d, d                                        ; $6e45: $52
	sbc  a                                           ; $6e46: $9f
	dec  c                                           ; $6e47: $0d
	nop                                              ; $6e48: $00
	ld   a, [bc]                                     ; $6e49: $0a
	rrca                                             ; $6e4a: $0f
	nop                                              ; $6e4b: $00
	ld   bc, $7601                                   ; $6e4c: $01 $01 $76
	ld   h, c                                        ; $6e4f: $61
	sbc  e                                           ; $6e50: $9b
	ld   [hl], l                                     ; $6e51: $75
	sbc  [hl]                                        ; $6e52: $9e
	ld   b, $5b                                      ; $6e53: $06 $5b
	ld   h, e                                        ; $6e55: $63
	and  c                                           ; $6e56: $a1
	sbc  a                                           ; $6e57: $9f
	dec  c                                           ; $6e58: $0d
	ld   l, a                                        ; $6e59: $6f
	sub  l                                           ; $6e5a: $95
	ld   [hl], c                                     ; $6e5b: $71
	halt                                             ; $6e5c: $76
	ld   [bc], a                                     ; $6e5d: $02
	jp   nz, Jump_041_6d5b                           ; $6e5e: $c2 $5b $6d

	ld   d, d                                        ; $6e61: $52
	ld   h, c                                        ; $6e62: $61
	halt                                             ; $6e63: $76
	ld   e, d                                        ; $6e64: $5a
	dec  c                                           ; $6e65: $0d
	ld   d, b                                        ; $6e66: $50
	sbc  c                                           ; $6e67: $99
	and  c                                           ; $6e68: $a1
	ld   [hl], l                                     ; $6e69: $75
	ld   h, a                                        ; $6e6a: $67
	ld   e, a                                        ; $6e6b: $5f
	ld   [hl], a                                     ; $6e6c: $77
	rst  $38                                         ; $6e6d: $ff
	rst  $38                                         ; $6e6e: $ff
	dec  c                                           ; $6e6f: $0d
	nop                                              ; $6e70: $00
	ld   a, [bc]                                     ; $6e71: $0a
	add  hl, de                                      ; $6e72: $19
	dec  b                                           ; $6e73: $05
	inc  bc                                          ; $6e74: $03
	ld   e, c                                        ; $6e75: $59
	ld   h, a                                        ; $6e76: $67
	adc  l                                           ; $6e77: $8d
	ld   a, c                                        ; $6e78: $79
	ld   [hl], d                                     ; $6e79: $72
	ld   d, d                                        ; $6e7a: $52
	ld   [hl], h                                     ; $6e7b: $74
	ld   [bc], a                                     ; $6e7c: $02
	jp   nz, $005d                                   ; $6e7d: $c2 $5d $00

	nop                                              ; $6e80: $00
	inc  b                                           ; $6e81: $04
	pop  hl                                          ; $6e82: $e1
	inc  b                                           ; $6e83: $04
	rst  $38                                         ; $6e84: $ff
	ld   a, c                                        ; $6e85: $79
	ld   [hl], d                                     ; $6e86: $72
	ld   d, d                                        ; $6e87: $52
	ld   [hl], h                                     ; $6e88: $74
	ld   [bc], a                                     ; $6e89: $02
	jp   nz, $005d                                   ; $6e8a: $c2 $5d $00

	ld   bc, $5b06                                   ; $6e8d: $01 $06 $5b
	ld   a, h                                        ; $6e90: $7c
	ld   h, c                                        ; $6e91: $61
	halt                                             ; $6e92: $76
	and  b                                           ; $6e93: $a0
	ld   [bc], a                                     ; $6e94: $02
	jp   nz, $005d                                   ; $6e95: $c2 $5d $00

	ld   [bc], a                                     ; $6e98: $02
	rlca                                             ; $6e99: $07
	ld   [hl-], a                                    ; $6e9a: $32
	dec  bc                                          ; $6e9b: $0b
	ld   [bc], a                                     ; $6e9c: $02
	inc  bc                                          ; $6e9d: $03
	ld   bc, $2000                                   ; $6e9e: $01 $00 $20
	nop                                              ; $6ea1: $00
	rlca                                             ; $6ea2: $07
	db   $f4                                         ; $6ea3: $f4
	dec  bc                                          ; $6ea4: $0b
	ld   [bc], a                                     ; $6ea5: $02
	inc  bc                                          ; $6ea6: $03
	ld   bc, $2001                                   ; $6ea7: $01 $01 $20
	nop                                              ; $6eaa: $00
	rlca                                             ; $6eab: $07
	rst  $10                                         ; $6eac: $d7
	inc  c                                           ; $6ead: $0c
	ld   [bc], a                                     ; $6eae: $02
	inc  bc                                          ; $6eaf: $03
	ld   bc, $2002                                   ; $6eb0: $01 $02 $20
	nop                                              ; $6eb3: $00
	ld   b, $e5                                      ; $6eb4: $06 $e5
	ld   a, [bc]                                     ; $6eb6: $0a
	inc  e                                           ; $6eb7: $1c
	ld   c, $00                                      ; $6eb8: $0e $00
	nop                                              ; $6eba: $00
	ld   bc, $8d67                                   ; $6ebb: $01 $67 $8d
	adc  h                                           ; $6ebe: $8c
	ld   l, c                                        ; $6ebf: $69
	and  c                                           ; $6ec0: $a1
	ld   e, d                                        ; $6ec1: $5a
	sbc  [hl]                                        ; $6ec2: $9e
	inc  bc                                          ; $6ec3: $03
	db   $fd                                         ; $6ec4: $fd
	ld   a, c                                        ; $6ec5: $79
	inc  b                                           ; $6ec6: $04
	di                                               ; $6ec7: $f3
	ld   e, d                                        ; $6ec8: $5a
	ld   a, b                                        ; $6ec9: $78
	ld   d, d                                        ; $6eca: $52
	dec  c                                           ; $6ecb: $0d
	ld   a, h                                        ; $6ecc: $7c
	ld   [hl], l                                     ; $6ecd: $75
	ld   h, l                                        ; $6ece: $65
	ld   l, l                                        ; $6ecf: $6d
	sub  a                                           ; $6ed0: $97
	sbc  [hl]                                        ; $6ed1: $9e
	ld   d, b                                        ; $6ed2: $50
	ld   l, l                                        ; $6ed3: $6d
	ld   h, l                                        ; $6ed4: $65
	sbc  [hl]                                        ; $6ed5: $9e
	inc  bc                                          ; $6ed6: $03
	dec  c                                           ; $6ed7: $0d
	ld   [bc], a                                     ; $6ed8: $02
	jp   $0d5a                                       ; $6ed9: $c3 $5a $0d


	ld   d, b                                        ; $6edc: $50
	sbc  b                                           ; $6edd: $98
	adc  h                                           ; $6ede: $8c
	ld   h, a                                        ; $6edf: $67
	ld   a, h                                        ; $6ee0: $7c
	ld   [hl], l                                     ; $6ee1: $75
	rst  $38                                         ; $6ee2: $ff
	rst  $38                                         ; $6ee3: $ff
	dec  c                                           ; $6ee4: $0d
	nop                                              ; $6ee5: $00
	ld   a, [bc]                                     ; $6ee6: $0a
	dec  c                                           ; $6ee7: $0d
	nop                                              ; $6ee8: $00
	nop                                              ; $6ee9: $00
	rrca                                             ; $6eea: $0f
	nop                                              ; $6eeb: $00
	ld   bc, $5001                                   ; $6eec: $01 $01 $50
	ld   [hl], c                                     ; $6eef: $71
	rst  $38                                         ; $6ef0: $ff
	rst  $38                                         ; $6ef1: $ff
	rst  $38                                         ; $6ef2: $ff
	rst  $38                                         ; $6ef3: $ff
	rst  $38                                         ; $6ef4: $ff
	rst  $38                                         ; $6ef5: $ff
	rst  $38                                         ; $6ef6: $ff
	rst  $38                                         ; $6ef7: $ff
	rst  $38                                         ; $6ef8: $ff
	rst  $38                                         ; $6ef9: $ff
	dec  c                                           ; $6efa: $0d
	nop                                              ; $6efb: $00
	ld   a, [bc]                                     ; $6efc: $0a
	dec  b                                           ; $6efd: $05
	add  b                                           ; $6efe: $80
	sbc  l                                           ; $6eff: $9d
	ld   bc, $0001                                   ; $6f00: $01 $01 $00
	nop                                              ; $6f03: $00
	rrca                                             ; $6f04: $0f
	nop                                              ; $6f05: $00
	ld   bc, $0601                                   ; $6f06: $01 $01 $06
	ld   e, e                                        ; $6f09: $5b
	ld   h, e                                        ; $6f0a: $63
	and  c                                           ; $6f0b: $a1
	ld   e, c                                        ; $6f0c: $59
	sub  a                                           ; $6f0d: $97
	ld   [bc], a                                     ; $6f0e: $02
	sub  l                                           ; $6f0f: $95
	ld   l, l                                        ; $6f10: $6d
	sbc  [hl]                                        ; $6f11: $9e
	ld   e, c                                        ; $6f12: $59
	ld   h, a                                        ; $6f13: $67
	adc  l                                           ; $6f14: $8d
	ld   h, e                                        ; $6f15: $63
	and  c                                           ; $6f16: $a1
	dec  c                                           ; $6f17: $0d
	ld   [hl], h                                     ; $6f18: $74
	ld   [hl], a                                     ; $6f19: $77
	and  c                                           ; $6f1a: $a1
	ld   a, b                                        ; $6f1b: $78
	inc  b                                           ; $6f1c: $04
	ld   a, b                                        ; $6f1d: $78
	ld   [hl], l                                     ; $6f1e: $75
	ld   h, a                                        ; $6f1f: $67
	ld   e, c                                        ; $6f20: $59
	ld   sp, hl                                      ; $6f21: $f9
	dec  c                                           ; $6f22: $0d
	nop                                              ; $6f23: $00
	ld   a, [bc]                                     ; $6f24: $0a
	inc  e                                           ; $6f25: $1c
	ld   c, $00                                      ; $6f26: $0e $00
	nop                                              ; $6f28: $00
	ld   bc, $6759                                   ; $6f29: $01 $59 $67
	adc  l                                           ; $6f2c: $8d
	ld   h, e                                        ; $6f2d: $63
	and  c                                           ; $6f2e: $a1
	ld   [hl], l                                     ; $6f2f: $75
	ld   h, a                                        ; $6f30: $67
	ld   e, c                                        ; $6f31: $59
	ld   sp, hl                                      ; $6f32: $f9
	dec  c                                           ; $6f33: $0d
	ld   l, e                                        ; $6f34: $6b
	ld   d, h                                        ; $6f35: $54
	ld   [hl], l                                     ; $6f36: $75
	ld   h, a                                        ; $6f37: $67
	ld   a, e                                        ; $6f38: $7b
	sbc  [hl]                                        ; $6f39: $9e
	dec  b                                           ; $6f3a: $05
	ld   [de], a                                     ; $6f3b: $12
	ld   l, a                                        ; $6f3c: $6f
	inc  b                                           ; $6f3d: $04
	rlca                                             ; $6f3e: $07
	ld   e, e                                        ; $6f3f: $5b
	ld   a, h                                        ; $6f40: $7c
	ld   d, b                                        ; $6f41: $50
	sbc  c                                           ; $6f42: $99
	dec  c                                           ; $6f43: $0d
	inc  b                                           ; $6f44: $04
	ld   c, $03                                      ; $6f45: $0e $03
	add  d                                           ; $6f47: $82
	ld   a, h                                        ; $6f48: $7c
	inc  bc                                          ; $6f49: $03
	ld   l, [hl]                                     ; $6f4a: $6e
	ld   [bc], a                                     ; $6f4b: $02
	db   $fc                                         ; $6f4c: $fc
	ld   [hl], l                                     ; $6f4d: $75
	ld   h, a                                        ; $6f4e: $67
	sub  [hl]                                        ; $6f4f: $96
	ld   a, e                                        ; $6f50: $7b
	sbc  a                                           ; $6f51: $9f
	dec  c                                           ; $6f52: $0d
	nop                                              ; $6f53: $00
	ld   a, [bc]                                     ; $6f54: $0a
	ld   bc, $7165                                   ; $6f55: $01 $65 $71
	ld   e, c                                        ; $6f58: $59
	sbc  b                                           ; $6f59: $98
	ld   h, l                                        ; $6f5a: $65
	ld   [hl], h                                     ; $6f5b: $74
	ld   [hl], h                                     ; $6f5c: $74
	dec  c                                           ; $6f5d: $0d
	dec  b                                           ; $6f5e: $05
	inc  bc                                          ; $6f5f: $03
	sbc  b                                           ; $6f60: $98
	ld   a, c                                        ; $6f61: $79
	ld   a, b                                        ; $6f62: $78
	sbc  c                                           ; $6f63: $99
	ld   h, l                                        ; $6f64: $65
	sbc  [hl]                                        ; $6f65: $9e
	dec  c                                           ; $6f66: $0d
	xor  [hl]                                        ; $6f67: $ae
	xor  $a5                                         ; $6f68: $ee $a5
	ld   l, [hl]                                     ; $6f6a: $6e
	ld   h, l                                        ; $6f6b: $65
	rst  $38                                         ; $6f6c: $ff
	rst  $38                                         ; $6f6d: $ff
	dec  c                                           ; $6f6e: $0d
	nop                                              ; $6f6f: $00
	ld   a, [bc]                                     ; $6f70: $0a
	ld   bc, $6d50                                   ; $6f71: $01 $50 $6d
	ld   h, l                                        ; $6f74: $65
	sub  d                                           ; $6f75: $92
	sbc  [hl]                                        ; $6f76: $9e
	inc  b                                           ; $6f77: $04
	pop  hl                                          ; $6f78: $e1
	inc  b                                           ; $6f79: $04
	rst  $38                                         ; $6f7a: $ff
	ld   h, e                                        ; $6f7b: $63
	and  c                                           ; $6f7c: $a1
	ld   l, [hl]                                     ; $6f7d: $6e
	ld   e, a                                        ; $6f7e: $5f
	ld   [hl], l                                     ; $6f7f: $75
	ld   a, b                                        ; $6f80: $78
	ld   e, l                                        ; $6f81: $5d
	dec  c                                           ; $6f82: $0d
	ld   [bc], a                                     ; $6f83: $02
	sbc  b                                           ; $6f84: $98
	inc  bc                                          ; $6f85: $03
	nop                                              ; $6f86: $00
	ld   a, h                                        ; $6f87: $7c
	adc  l                                           ; $6f88: $8d
	ld   a, b                                        ; $6f89: $78
	ld   h, e                                        ; $6f8a: $63
	and  c                                           ; $6f8b: $a1
	ld   a, c                                        ; $6f8c: $79
	sub  b                                           ; $6f8d: $90
	dec  c                                           ; $6f8e: $0d
	dec  b                                           ; $6f8f: $05
	inc  bc                                          ; $6f90: $03
	sbc  b                                           ; $6f91: $98
	ld   a, c                                        ; $6f92: $79
	ld   h, e                                        ; $6f93: $63
	sbc  d                                           ; $6f94: $9a
	ld   [hl], h                                     ; $6f95: $74
	sbc  c                                           ; $6f96: $99
	and  c                                           ; $6f97: $a1
	ld   [hl], l                                     ; $6f98: $75
	ld   h, a                                        ; $6f99: $67
	sub  [hl]                                        ; $6f9a: $96
	sbc  a                                           ; $6f9b: $9f
	dec  c                                           ; $6f9c: $0d
	nop                                              ; $6f9d: $00
	ld   a, [bc]                                     ; $6f9e: $0a
	ld   bc, $6d50                                   ; $6f9f: $01 $50 $6d
	ld   h, l                                        ; $6fa2: $65
	sbc  [hl]                                        ; $6fa3: $9e
	inc  b                                           ; $6fa4: $04
	adc  a                                           ; $6fa5: $8f
	inc  b                                           ; $6fa6: $04
	jr   jr_041_7022                                 ; $6fa7: $18 $79

	dec  c                                           ; $6fa9: $0d
	ld   e, c                                        ; $6faa: $59
	ld   h, a                                        ; $6fab: $67
	adc  l                                           ; $6fac: $8d
	ld   h, e                                        ; $6fad: $63
	and  c                                           ; $6fae: $a1
	ld   a, c                                        ; $6faf: $79
	ld   a, l                                        ; $6fb0: $7d
	dec  c                                           ; $6fb1: $0d
	ld   d, b                                        ; $6fb2: $50
	ld   h, c                                        ; $6fb3: $61
	ld   e, d                                        ; $6fb4: $5a
	sbc  d                                           ; $6fb5: $9a
	ld   l, a                                        ; $6fb6: $6f
	sub  c                                           ; $6fb7: $91
	ld   d, h                                        ; $6fb8: $54
	ld   a, b                                        ; $6fb9: $78
	rst  $38                                         ; $6fba: $ff
	rst  $38                                         ; $6fbb: $ff
	dec  c                                           ; $6fbc: $0d
	nop                                              ; $6fbd: $00
	ld   a, [bc]                                     ; $6fbe: $0a
	dec  b                                           ; $6fbf: $05
	add  b                                           ; $6fc0: $80
	sbc  l                                           ; $6fc1: $9d
	ld   bc, $0001                                   ; $6fc2: $01 $01 $00
	nop                                              ; $6fc5: $00
	rrca                                             ; $6fc6: $0f
	nop                                              ; $6fc7: $00
	ld   bc, $0601                                   ; $6fc8: $01 $01 $06
	ld   e, e                                        ; $6fcb: $5b
	ld   h, e                                        ; $6fcc: $63
	and  c                                           ; $6fcd: $a1
	ld   e, c                                        ; $6fce: $59
	sub  a                                           ; $6fcf: $97
	ld   [bc], a                                     ; $6fd0: $02
	sub  l                                           ; $6fd1: $95
	ld   l, l                                        ; $6fd2: $6d
	sbc  [hl]                                        ; $6fd3: $9e
	inc  b                                           ; $6fd4: $04
	pop  hl                                          ; $6fd5: $e1
	inc  b                                           ; $6fd6: $04
	rst  $38                                         ; $6fd7: $ff
	ld   h, e                                        ; $6fd8: $63
	and  c                                           ; $6fd9: $a1
	dec  c                                           ; $6fda: $0d
	ld   [hl], h                                     ; $6fdb: $74
	ld   [hl], a                                     ; $6fdc: $77
	and  c                                           ; $6fdd: $a1
	ld   a, b                                        ; $6fde: $78
	inc  b                                           ; $6fdf: $04
	ld   a, b                                        ; $6fe0: $78
	ld   [hl], l                                     ; $6fe1: $75
	ld   h, a                                        ; $6fe2: $67
	ld   e, c                                        ; $6fe3: $59
	ld   sp, hl                                      ; $6fe4: $f9
	dec  c                                           ; $6fe5: $0d
	nop                                              ; $6fe6: $00
	ld   a, [bc]                                     ; $6fe7: $0a
	inc  e                                           ; $6fe8: $1c
	ld   c, $00                                      ; $6fe9: $0e $00
	nop                                              ; $6feb: $00
	ld   bc, $e104                                   ; $6fec: $01 $04 $e1
	inc  b                                           ; $6fef: $04
	rst  $38                                         ; $6ff0: $ff
	ld   h, e                                        ; $6ff1: $63
	and  c                                           ; $6ff2: $a1
	ld   [hl], l                                     ; $6ff3: $75
	ld   h, a                                        ; $6ff4: $67
	ld   e, c                                        ; $6ff5: $59
	ld   sp, hl                                      ; $6ff6: $f9
	dec  c                                           ; $6ff7: $0d
	ld   l, e                                        ; $6ff8: $6b
	ld   d, h                                        ; $6ff9: $54
	ld   [hl], l                                     ; $6ffa: $75
	ld   h, a                                        ; $6ffb: $67
	ld   a, e                                        ; $6ffc: $7b
	sbc  [hl]                                        ; $6ffd: $9e
	dec  c                                           ; $6ffe: $0d
	dec  b                                           ; $6fff: $05
	inc  de                                          ; $7000: $13
	ld   h, l                                        ; $7001: $65
	ld   d, d                                        ; $7002: $52
	ld   e, b                                        ; $7003: $58
	dec  b                                           ; $7004: $05
	ld   b, d                                        ; $7005: $42
	ld   h, e                                        ; $7006: $63
	and  c                                           ; $7007: $a1
	ld   [hl], l                                     ; $7008: $75
	ld   h, a                                        ; $7009: $67
	sub  [hl]                                        ; $700a: $96
	sbc  a                                           ; $700b: $9f
	dec  c                                           ; $700c: $0d
	nop                                              ; $700d: $00
	ld   a, [bc]                                     ; $700e: $0a
	ld   bc, $7152                                   ; $700f: $01 $52 $71
	ld   [hl], d                                     ; $7012: $72
	sub  b                                           ; $7013: $90
	ld   e, b                                        ; $7014: $58
	ld   h, l                                        ; $7015: $65
	sub  c                                           ; $7016: $91
	sbc  d                                           ; $7017: $9a
	ld   [hl], l                                     ; $7018: $75
	sbc  [hl]                                        ; $7019: $9e
	dec  c                                           ; $701a: $0d
	dec  b                                           ; $701b: $05
	inc  d                                           ; $701c: $14
	ld   [bc], a                                     ; $701d: $02
	ld   a, a                                        ; $701e: $7f
	ld   a, c                                        ; $701f: $79
	ld   a, l                                        ; $7020: $7d
	add  c                                           ; $7021: $81

jr_041_7022:
	and  c                                           ; $7022: $a1
	ld   e, c                                        ; $7023: $59
	and  c                                           ; $7024: $a1
	ld   [hl], l                                     ; $7025: $75
	dec  c                                           ; $7026: $0d
	ld   d, d                                        ; $7027: $52
	sbc  e                                           ; $7028: $9b
	and  c                                           ; $7029: $a1
	ld   a, b                                        ; $702a: $78
	ld   h, c                                        ; $702b: $61
	halt                                             ; $702c: $76
	inc  b                                           ; $702d: $04
	dec  hl                                          ; $702e: $2b
	ld   [hl], c                                     ; $702f: $71
	ld   [hl], h                                     ; $7030: $74
	ld   [hl], h                                     ; $7031: $74
	sbc  a                                           ; $7032: $9f
	dec  c                                           ; $7033: $0d
	nop                                              ; $7034: $00
	ld   a, [bc]                                     ; $7035: $0a
	ld   bc, $9e50                                   ; $7036: $01 $50 $9e
	ld   l, e                                        ; $7039: $6b
	ld   d, h                                        ; $703a: $54
	ld   l, e                                        ; $703b: $6b
	ld   d, h                                        ; $703c: $54
	sbc  [hl]                                        ; $703d: $9e
	dec  c                                           ; $703e: $0d
	ld   h, d                                        ; $703f: $62
	ld   a, l                                        ; $7040: $7d
	and  c                                           ; $7041: $a1
	ld   a, h                                        ; $7042: $7c
	ld   e, b                                        ; $7043: $58
	ld   d, d                                        ; $7044: $52
	ld   h, l                                        ; $7045: $65
	ld   d, d                                        ; $7046: $52
	ld   e, b                                        ; $7047: $58
	inc  bc                                          ; $7048: $03
	rst  $20                                         ; $7049: $e7
	sub  b                                           ; $704a: $90
	dec  c                                           ; $704b: $0d
	ld   l, l                                        ; $704c: $6d
	ld   e, l                                        ; $704d: $5d
	ld   h, e                                        ; $704e: $63
	and  c                                           ; $704f: $a1
	inc  b                                           ; $7050: $04
	dec  hl                                          ; $7051: $2b
	ld   [hl], c                                     ; $7052: $71
	ld   [hl], h                                     ; $7053: $74
	sbc  c                                           ; $7054: $99
	and  c                                           ; $7055: $a1
	ld   [hl], l                                     ; $7056: $75
	ld   h, a                                        ; $7057: $67
	sub  [hl]                                        ; $7058: $96
	sbc  a                                           ; $7059: $9f
	dec  c                                           ; $705a: $0d
	nop                                              ; $705b: $00
	ld   a, [bc]                                     ; $705c: $0a
	ld   bc, $596e                                   ; $705d: $01 $6e $59
	sub  a                                           ; $7060: $97
	sbc  [hl]                                        ; $7061: $9e
	ld   d, d                                        ; $7062: $52
	ld   [hl], c                                     ; $7063: $71
	ld   h, l                                        ; $7064: $65
	sub  l                                           ; $7065: $95
	ld   a, c                                        ; $7066: $79
	inc  bc                                          ; $7067: $03
	add  b                                           ; $7068: $80
	ld   e, c                                        ; $7069: $59
	ld   e, a                                        ; $706a: $5f
	sbc  c                                           ; $706b: $99
	halt                                             ; $706c: $76
	dec  c                                           ; $706d: $0d
	inc  b                                           ; $706e: $04
	adc  a                                           ; $706f: $8f
	inc  b                                           ; $7070: $04
	jr   jr_041_70ec                                 ; $7071: $18 $79

	ld   e, b                                        ; $7073: $58
	sub  b                                           ; $7074: $90
	ld   h, l                                        ; $7075: $65
	sbc  e                                           ; $7076: $9b
	ld   d, d                                        ; $7077: $52
	and  c                                           ; $7078: $a1
	ld   [hl], l                                     ; $7079: $75
	ld   h, a                                        ; $707a: $67
	sub  [hl]                                        ; $707b: $96
	sbc  a                                           ; $707c: $9f
	dec  c                                           ; $707d: $0d
	nop                                              ; $707e: $00
	ld   a, [bc]                                     ; $707f: $0a
	ld   bc, $9e50                                   ; $7080: $01 $50 $9e
	ld   [hl], l                                     ; $7083: $75
	sub  b                                           ; $7084: $90
	dec  c                                           ; $7085: $0d
	ld   l, a                                        ; $7086: $6f
	sub  l                                           ; $7087: $95
	ld   [hl], c                                     ; $7088: $71
	halt                                             ; $7089: $76
	ld   d, h                                        ; $708a: $54
	sbc  l                                           ; $708b: $9d
	ld   h, e                                        ; $708c: $63
	dec  b                                           ; $708d: $05
	jr   nz, jr_041_70ea                             ; $708e: $20 $5a

	ld   [bc], a                                     ; $7090: $02
	sbc  d                                           ; $7091: $9a
	ld   e, e                                        ; $7092: $5b
	ld   a, b                                        ; $7093: $78
	ld   a, h                                        ; $7094: $7c
	ld   e, d                                        ; $7095: $5a
	dec  c                                           ; $7096: $0d
	inc  b                                           ; $7097: $04
	ld   bc, $ae79                                   ; $7098: $01 $79 $ae
	cp   e                                           ; $709b: $bb
	ld   e, c                                        ; $709c: $59
	ld   a, b                                        ; $709d: $78
	sbc  a                                           ; $709e: $9f
	dec  c                                           ; $709f: $0d
	nop                                              ; $70a0: $00
	ld   a, [bc]                                     ; $70a1: $0a
	dec  b                                           ; $70a2: $05
	add  b                                           ; $70a3: $80
	sbc  l                                           ; $70a4: $9d
	ld   bc, $0001                                   ; $70a5: $01 $01 $00
	nop                                              ; $70a8: $00
	rrca                                             ; $70a9: $0f
	nop                                              ; $70aa: $00
	ld   bc, $0601                                   ; $70ab: $01 $01 $06
	ld   e, e                                        ; $70ae: $5b
	ld   h, e                                        ; $70af: $63
	and  c                                           ; $70b0: $a1
	ld   a, h                                        ; $70b1: $7c
	ld   h, c                                        ; $70b2: $61
	halt                                             ; $70b3: $76
	and  b                                           ; $70b4: $a0
	sbc  [hl]                                        ; $70b5: $9e
	ld   [bc], a                                     ; $70b6: $02
	ret  nc                                          ; $70b7: $d0

	ld   d, [hl]                                     ; $70b8: $56
	ld   [hl], h                                     ; $70b9: $74
	dec  c                                           ; $70ba: $0d
	ld   e, l                                        ; $70bb: $5d
	ld   l, [hl]                                     ; $70bc: $6e
	ld   h, e                                        ; $70bd: $63
	ld   d, d                                        ; $70be: $52
	sbc  a                                           ; $70bf: $9f
	dec  c                                           ; $70c0: $0d
	nop                                              ; $70c1: $00
	ld   a, [bc]                                     ; $70c2: $0a
	inc  e                                           ; $70c3: $1c
	ld   c, $00                                      ; $70c4: $0e $00
	nop                                              ; $70c6: $00
	ld   bc, $9e56                                   ; $70c7: $01 $56 $9e
	ld   d, b                                        ; $70ca: $50
	ld   l, l                                        ; $70cb: $6d
	ld   h, l                                        ; $70cc: $65
	ld   a, h                                        ; $70cd: $7c
	ld   h, c                                        ; $70ce: $61
	halt                                             ; $70cf: $76
	rst  $38                                         ; $70d0: $ff
	rst  $38                                         ; $70d1: $ff
	dec  c                                           ; $70d2: $0d
	ld   [hl], l                                     ; $70d3: $75
	ld   h, a                                        ; $70d4: $67
	ld   e, c                                        ; $70d5: $59
	ld   sp, hl                                      ; $70d6: $f9
	dec  c                                           ; $70d7: $0d
	nop                                              ; $70d8: $00
	ld   a, [bc]                                     ; $70d9: $0a
	ld   bc, $a16b                                   ; $70da: $01 $6b $a1
	ld   a, b                                        ; $70dd: $78
	sbc  [hl]                                        ; $70de: $9e
	inc  b                                           ; $70df: $04
	ret  c                                           ; $70e0: $d8

	inc  b                                           ; $70e1: $04
	xor  h                                           ; $70e2: $ac
	ld   d, d                                        ; $70e3: $52
	dec  b                                           ; $70e4: $05
	jr   nz, jr_041_715f                             ; $70e5: $20 $78

	and  c                                           ; $70e7: $a1
	ld   [hl], h                                     ; $70e8: $74
	dec  c                                           ; $70e9: $0d

jr_041_70ea:
	inc  b                                           ; $70ea: $04
	ld   d, h                                        ; $70eb: $54

jr_041_70ec:
	ld   a, c                                        ; $70ec: $79
	ld   a, b                                        ; $70ed: $78
	ld   d, d                                        ; $70ee: $52
	ld   [hl], l                                     ; $70ef: $75
	ld   h, a                                        ; $70f0: $67
	sub  [hl]                                        ; $70f1: $96
	sbc  a                                           ; $70f2: $9f
	dec  c                                           ; $70f3: $0d
	nop                                              ; $70f4: $00
	ld   a, [bc]                                     ; $70f5: $0a
	ld   bc, $6d50                                   ; $70f6: $01 $50 $6d
	ld   h, l                                        ; $70f9: $65
	ld   a, l                                        ; $70fa: $7d
	sbc  [hl]                                        ; $70fb: $9e
	dec  c                                           ; $70fc: $0d
	inc  bc                                          ; $70fd: $03
	inc  d                                           ; $70fe: $14
	inc  bc                                          ; $70ff: $03
	and  d                                           ; $7100: $a2
	ld   a, h                                        ; $7101: $7c
	ld   e, b                                        ; $7102: $58
	ld   l, c                                        ; $7103: $69
	and  c                                           ; $7104: $a1
	add  a                                           ; $7105: $87
	ld   d, d                                        ; $7106: $52
	ld   [bc], a                                     ; $7107: $02
	ld   hl, $a163                                   ; $7108: $21 $63 $a1
	ld   [hl], l                                     ; $710b: $75
	dec  c                                           ; $710c: $0d
	inc  bc                                          ; $710d: $03
	ld   d, d                                        ; $710e: $52
	adc  h                                           ; $710f: $8c
	sbc  d                                           ; $7110: $9a
	ld   [bc], a                                     ; $7111: $02
	ld   e, $71                                      ; $7112: $1e $71
	ld   l, l                                        ; $7114: $6d
	and  c                                           ; $7115: $a1
	ld   [hl], l                                     ; $7116: $75
	ld   h, a                                        ; $7117: $67
	sub  [hl]                                        ; $7118: $96
	sbc  a                                           ; $7119: $9f
	dec  c                                           ; $711a: $0d
	nop                                              ; $711b: $00
	ld   a, [bc]                                     ; $711c: $0a
	ld   bc, $596e                                   ; $711d: $01 $6e $59
	sub  a                                           ; $7120: $97
	sbc  [hl]                                        ; $7121: $9e
	inc  bc                                          ; $7122: $03
	add  [hl]                                        ; $7123: $86
	ld   [bc], a                                     ; $7124: $02
	xor  l                                           ; $7125: $ad
	ld   a, h                                        ; $7126: $7c
	ld   [bc], a                                     ; $7127: $02
	ld   e, a                                        ; $7128: $5f
	ld   e, c                                        ; $7129: $59
	sub  a                                           ; $712a: $97
	dec  c                                           ; $712b: $0d
	adc  h                                           ; $712c: $8c
	sbc  l                                           ; $712d: $9d
	sbc  b                                           ; $712e: $98
	ld   e, d                                        ; $712f: $5a
	ld   d, d                                        ; $7130: $52
	ld   [hl], d                                     ; $7131: $72
	sub  b                                           ; $7132: $90
	ld   a, c                                        ; $7133: $79
	ld   e, h                                        ; $7134: $5c
	sub  d                                           ; $7135: $92
	ld   e, c                                        ; $7136: $59
	ld   [hl], l                                     ; $7137: $75
	sbc  [hl]                                        ; $7138: $9e
	dec  c                                           ; $7139: $0d
	ld   [bc], a                                     ; $713a: $02
	or   a                                           ; $713b: $b7
	ld   [bc], a                                     ; $713c: $02
	and  c                                           ; $713d: $a1
	ld   e, d                                        ; $713e: $5a
	ld   d, b                                        ; $713f: $50
	ld   [hl], c                                     ; $7140: $71
	ld   [hl], h                                     ; $7141: $74
	rst  $38                                         ; $7142: $ff
	rst  $38                                         ; $7143: $ff
	dec  c                                           ; $7144: $0d
	nop                                              ; $7145: $00
	ld   a, [bc]                                     ; $7146: $0a
	ld   bc, $546b                                   ; $7147: $01 $6b $54
	ld   d, d                                        ; $714a: $52
	ld   d, [hl]                                     ; $714b: $56
	ld   a, [hl]                                     ; $714c: $7e
	sbc  [hl]                                        ; $714d: $9e
	ld   h, c                                        ; $714e: $61
	ld   a, h                                        ; $714f: $7c
	inc  b                                           ; $7150: $04
	ld   [$9202], sp                                 ; $7151: $08 $02 $92
	sub  b                                           ; $7154: $90
	dec  c                                           ; $7155: $0d
	ld   a, c                                        ; $7156: $79
	ld   e, h                                        ; $7157: $5c
	sub  d                                           ; $7158: $92
	ld   e, c                                        ; $7159: $59
	ld   [hl], l                                     ; $715a: $75
	sbc  [hl]                                        ; $715b: $9e
	ld   [bc], a                                     ; $715c: $02
	or   a                                           ; $715d: $b7
	ld   [bc], a                                     ; $715e: $02

jr_041_715f:
	and  c                                           ; $715f: $a1
	ld   e, d                                        ; $7160: $5a
	ld   d, b                                        ; $7161: $50
	ld   [hl], c                                     ; $7162: $71
	ld   [hl], h                                     ; $7163: $74
	dec  c                                           ; $7164: $0d
	dec  b                                           ; $7165: $05
	ld   e, h                                        ; $7166: $5c
	inc  b                                           ; $7167: $04
	xor  d                                           ; $7168: $aa
	ld   e, d                                        ; $7169: $5a
	ld   e, b                                        ; $716a: $58
	inc  bc                                          ; $716b: $03
	adc  h                                           ; $716c: $8c
	sbc  b                                           ; $716d: $98
	adc  l                                           ; $716e: $8d
	ld   l, l                                        ; $716f: $6d
	ld   d, d                                        ; $7170: $52
	ld   [hl], l                                     ; $7171: $75
	ld   h, a                                        ; $7172: $67
	ld   a, e                                        ; $7173: $7b
	sbc  a                                           ; $7174: $9f
	dec  c                                           ; $7175: $0d
	nop                                              ; $7176: $00
	ld   a, [bc]                                     ; $7177: $0a
	ld   bc, $6d50                                   ; $7178: $01 $50 $6d
	ld   h, l                                        ; $717b: $65
	sbc  [hl]                                        ; $717c: $9e
	ld   h, c                                        ; $717d: $61
	ld   d, h                                        ; $717e: $54
	ld   d, d                                        ; $717f: $52
	ld   d, h                                        ; $7180: $54
	dec  c                                           ; $7181: $0d
	dec  b                                           ; $7182: $05
	inc  de                                          ; $7183: $13
	ld   h, l                                        ; $7184: $65
	ld   d, d                                        ; $7185: $52
	halt                                             ; $7186: $76
	ld   h, c                                        ; $7187: $61
	sbc  e                                           ; $7188: $9b
	ld   a, c                                        ; $7189: $79
	ld   d, d                                        ; $718a: $52
	sbc  c                                           ; $718b: $99
	ld   a, h                                        ; $718c: $7c
	ld   e, d                                        ; $718d: $5a
	dec  c                                           ; $718e: $0d
	inc  b                                           ; $718f: $04
	adc  a                                           ; $7190: $8f
	inc  b                                           ; $7191: $04
	jr   jr_041_720d                                 ; $7192: $18 $79

	ld   [bc], a                                     ; $7194: $02
	sbc  d                                           ; $7195: $9a
	ld   e, e                                        ; $7196: $5b
	ld   a, b                                        ; $7197: $78
	and  c                                           ; $7198: $a1
	ld   [hl], l                                     ; $7199: $75
	ld   h, a                                        ; $719a: $67
	sub  [hl]                                        ; $719b: $96
	sbc  a                                           ; $719c: $9f
	dec  c                                           ; $719d: $0d
	nop                                              ; $719e: $00
	ld   a, [bc]                                     ; $719f: $0a
	dec  b                                           ; $71a0: $05
	add  b                                           ; $71a1: $80
	sbc  l                                           ; $71a2: $9d
	ld   bc, $0001                                   ; $71a3: $01 $01 $00
	nop                                              ; $71a6: $00
	inc  e                                           ; $71a7: $1c
	ld   c, $00                                      ; $71a8: $0e $00
	nop                                              ; $71aa: $00
	ld   bc, $9750                                   ; $71ab: $01 $50 $97
	sbc  [hl]                                        ; $71ae: $9e
	ld   [$6300], sp                                 ; $71af: $08 $00 $63
	and  c                                           ; $71b2: $a1
	sbc  a                                           ; $71b3: $9f
	dec  c                                           ; $71b4: $0d
	ld   d, d                                        ; $71b5: $52
	sub  a                                           ; $71b6: $97
	ld   [hl], c                                     ; $71b7: $71
	ld   h, l                                        ; $71b8: $65
	sub  c                                           ; $71b9: $91
	ld   d, d                                        ; $71ba: $52
	adc  h                                           ; $71bb: $8c
	ld   l, c                                        ; $71bc: $69
	rst  $38                                         ; $71bd: $ff
	rst  $38                                         ; $71be: $ff
	halt                                             ; $71bf: $76
	sbc  [hl]                                        ; $71c0: $9e
	ld   [bc], a                                     ; $71c1: $02
	sbc  l                                           ; $71c2: $9d
	ld   d, d                                        ; $71c3: $52
	dec  c                                           ; $71c4: $0d
	ld   l, l                                        ; $71c5: $6d
	ld   d, d                                        ; $71c6: $52
	halt                                             ; $71c7: $76
	ld   h, c                                        ; $71c8: $61
	sbc  e                                           ; $71c9: $9b
	ld   a, b                                        ; $71ca: $78
	ld   a, h                                        ; $71cb: $7c
	ld   [hl], l                                     ; $71cc: $75
	ld   h, a                                        ; $71cd: $67
	ld   e, d                                        ; $71ce: $5a
	rst  $38                                         ; $71cf: $ff
	rst  $38                                         ; $71d0: $ff
	dec  c                                           ; $71d1: $0d
	nop                                              ; $71d2: $00
	ld   a, [bc]                                     ; $71d3: $0a
	rrca                                             ; $71d4: $0f
	nop                                              ; $71d5: $00
	ld   bc, $9d01                                   ; $71d6: $01 $01 $9d
	ld   e, c                                        ; $71d9: $59
	ld   [hl], c                                     ; $71da: $71
	ld   [hl], h                                     ; $71db: $74
	adc  h                                           ; $71dc: $8c
	ld   h, a                                        ; $71dd: $67
	sub  [hl]                                        ; $71de: $96
	sbc  a                                           ; $71df: $9f
	dec  c                                           ; $71e0: $0d
	rst  $10                                         ; $71e1: $d7
	rst  $28                                         ; $71e2: $ef
	rst  JumpTable                                         ; $71e3: $df
	and  l                                           ; $71e4: $a5
	jp   z, $037d                                    ; $71e5: $ca $7d $03

	ld   a, c                                        ; $71e8: $79
	ld   a, c                                        ; $71e9: $79
	ld   [de], a                                     ; $71ea: $12
	inc  b                                           ; $71eb: $04
	push bc                                          ; $71ec: $c5
	ld   h, l                                        ; $71ed: $65
	ld   e, c                                        ; $71ee: $59
	dec  c                                           ; $71ef: $0d
	ld   b, $1a                                      ; $71f0: $06 $1a
	sbc  d                                           ; $71f2: $9a
	ld   a, b                                        ; $71f3: $78
	ld   d, d                                        ; $71f4: $52
	and  c                                           ; $71f5: $a1
	ld   [hl], l                                     ; $71f6: $75
	ld   h, l                                        ; $71f7: $65
	sub  l                                           ; $71f8: $95
	sbc  a                                           ; $71f9: $9f
	dec  c                                           ; $71fa: $0d
	nop                                              ; $71fb: $00
	ld   a, [bc]                                     ; $71fc: $0a
	inc  e                                           ; $71fd: $1c
	ld   c, $01                                      ; $71fe: $0e $01
	ld   bc, $7d01                                   ; $7200: $01 $01 $7d
	ld   d, d                                        ; $7203: $52
	sbc  [hl]                                        ; $7204: $9e
	ld   l, e                                        ; $7205: $6b
	ld   d, h                                        ; $7206: $54
	ld   a, b                                        ; $7207: $78
	and  c                                           ; $7208: $a1
	ld   [hl], l                                     ; $7209: $75
	ld   h, a                                        ; $720a: $67
	sbc  a                                           ; $720b: $9f
	dec  c                                           ; $720c: $0d

jr_041_720d:
	ld   h, d                                        ; $720d: $62
	adc  a                                           ; $720e: $8f
	and  c                                           ; $720f: $a1
	ld   a, b                                        ; $7210: $78
	ld   h, e                                        ; $7211: $63
	ld   d, d                                        ; $7212: $52
	sbc  a                                           ; $7213: $9f
	dec  c                                           ; $7214: $0d
	nop                                              ; $7215: $00
	ld   a, [bc]                                     ; $7216: $0a
	rrca                                             ; $7217: $0f
	nop                                              ; $7218: $00
	ld   bc, $7601                                   ; $7219: $01 $01 $76
	ld   h, c                                        ; $721c: $61
	sbc  e                                           ; $721d: $9b
	ld   [hl], l                                     ; $721e: $75
	sbc  [hl]                                        ; $721f: $9e
	ld   b, $5b                                      ; $7220: $06 $5b
	ld   h, e                                        ; $7222: $63
	and  c                                           ; $7223: $a1
	sbc  a                                           ; $7224: $9f
	dec  c                                           ; $7225: $0d
	ld   l, a                                        ; $7226: $6f
	sub  l                                           ; $7227: $95
	ld   [hl], c                                     ; $7228: $71
	halt                                             ; $7229: $76
	ld   [bc], a                                     ; $722a: $02
	jp   nz, Jump_041_6d5b                           ; $722b: $c2 $5b $6d

	ld   d, d                                        ; $722e: $52
	ld   h, c                                        ; $722f: $61
	halt                                             ; $7230: $76
	ld   e, d                                        ; $7231: $5a
	dec  c                                           ; $7232: $0d
	ld   d, b                                        ; $7233: $50
	sbc  c                                           ; $7234: $99
	and  c                                           ; $7235: $a1
	ld   [hl], l                                     ; $7236: $75
	ld   h, a                                        ; $7237: $67
	ld   e, a                                        ; $7238: $5f
	ld   [hl], a                                     ; $7239: $77
	rst  $38                                         ; $723a: $ff
	rst  $38                                         ; $723b: $ff
	dec  c                                           ; $723c: $0d
	nop                                              ; $723d: $00
	ld   a, [bc]                                     ; $723e: $0a
	ld   bc, $efd7                                   ; $723f: $01 $d7 $ef
	rst  JumpTable                                         ; $7242: $df
	and  l                                           ; $7243: $a5
	jp   z, $067c                                    ; $7244: $ca $7c $06

	ld   a, [de]                                     ; $7247: $1a
	sbc  d                                           ; $7248: $9a
	ld   [bc], a                                     ; $7249: $02
	ld   a, a                                        ; $724a: $7f
	ld   e, e                                        ; $724b: $5b
	ld   [hl], c                                     ; $724c: $71
	ld   [hl], h                                     ; $724d: $74
	dec  c                                           ; $724e: $0d
	inc  bc                                          ; $724f: $03
	xor  c                                           ; $7250: $a9
	ld   e, d                                        ; $7251: $5a
	ld   [bc], a                                     ; $7252: $02
	jr   nz, jr_041_7259                             ; $7253: $20 $04

	ld   a, c                                        ; $7255: $79
	ld   a, b                                        ; $7256: $78
	and  c                                           ; $7257: $a1
	ld   [hl], l                                     ; $7258: $75

jr_041_7259:
	ld   h, a                                        ; $7259: $67
	ld   e, c                                        ; $725a: $59
	ld   sp, hl                                      ; $725b: $f9
	dec  c                                           ; $725c: $0d
	nop                                              ; $725d: $00
	ld   a, [bc]                                     ; $725e: $0a
	inc  e                                           ; $725f: $1c
	ld   c, $03                                      ; $7260: $0e $03
	inc  bc                                          ; $7262: $03
	ld   bc, $fc54                                   ; $7263: $01 $54 $fc
	and  c                                           ; $7266: $a1
	rst  $38                                         ; $7267: $ff
	rst  $38                                         ; $7268: $ff
	sbc  [hl]                                        ; $7269: $9e
	ld   l, e                                        ; $726a: $6b
	ld   d, h                                        ; $726b: $54
	ld   [hl], l                                     ; $726c: $75
	ld   h, a                                        ; $726d: $67
	ld   a, e                                        ; $726e: $7b
	rst  $38                                         ; $726f: $ff
	rst  $38                                         ; $7270: $ff
	dec  c                                           ; $7271: $0d
	inc  bc                                          ; $7272: $03
	xor  c                                           ; $7273: $a9
	ld   e, d                                        ; $7274: $5a
	ld   [bc], a                                     ; $7275: $02
	jr   nz, jr_041_727c                             ; $7276: $20 $04

	ld   a, c                                        ; $7278: $79
	ld   [hl], c                                     ; $7279: $71
	ld   [hl], h                                     ; $727a: $74
	ld   d, d                                        ; $727b: $52

jr_041_727c:
	ld   d, h                                        ; $727c: $54
	ld   a, h                                        ; $727d: $7c
	ld   a, l                                        ; $727e: $7d
	dec  c                                           ; $727f: $0d
	inc  bc                                          ; $7280: $03
	db   $fd                                         ; $7281: $fd
	ld   a, c                                        ; $7282: $79
	ld   a, b                                        ; $7283: $78
	ld   d, d                                        ; $7284: $52
	ld   [hl], l                                     ; $7285: $75
	ld   h, a                                        ; $7286: $67
	sub  [hl]                                        ; $7287: $96
	sbc  a                                           ; $7288: $9f
	dec  c                                           ; $7289: $0d
	nop                                              ; $728a: $00
	ld   a, [bc]                                     ; $728b: $0a
	inc  e                                           ; $728c: $1c
	ld   c, $00                                      ; $728d: $0e $00
	nop                                              ; $728f: $00
	ld   bc, $5d63                                   ; $7290: $01 $63 $5d
	sub  a                                           ; $7293: $97
	ld   h, e                                        ; $7294: $63
	and  c                                           ; $7295: $a1
	ld   a, l                                        ; $7296: $7d
	sbc  [hl]                                        ; $7297: $9e
	ld   [bc], a                                     ; $7298: $02
	dec  d                                           ; $7299: $15
	inc  bc                                          ; $729a: $03
	ld   l, [hl]                                     ; $729b: $6e
	ld   a, l                                        ; $729c: $7d
	sub  b                                           ; $729d: $90
	ld   l, a                                        ; $729e: $6f
	sbc  e                                           ; $729f: $9b
	and  c                                           ; $72a0: $a1
	dec  c                                           ; $72a1: $0d
	inc  b                                           ; $72a2: $04
	ld   d, b                                        ; $72a3: $50
	dec  b                                           ; $72a4: $05
	ld   bc, $0290                                   ; $72a5: $01 $90 $02
	ld   c, d                                        ; $72a8: $4a
	ld   [bc], a                                     ; $72a9: $02
	ld   c, e                                        ; $72aa: $4b
	ld   a, b                                        ; $72ab: $78
	ld   e, l                                        ; $72ac: $5d
	sbc  [hl]                                        ; $72ad: $9e
	ld   d, d                                        ; $72ae: $52
	sbc  e                                           ; $72af: $9b
	and  c                                           ; $72b0: $a1
	ld   a, b                                        ; $72b1: $78
	dec  c                                           ; $72b2: $0d
	inc  bc                                          ; $72b3: $03
	add  d                                           ; $72b4: $82
	ld   a, c                                        ; $72b5: $79
	ld   b, $1a                                      ; $72b6: $06 $1a
	sbc  d                                           ; $72b8: $9a
	ld   [hl], h                                     ; $72b9: $74
	ld   d, d                                        ; $72ba: $52
	sbc  c                                           ; $72bb: $99
	ld   h, l                                        ; $72bc: $65
	sbc  [hl]                                        ; $72bd: $9e
	dec  c                                           ; $72be: $0d
	nop                                              ; $72bf: $00
	ld   a, [bc]                                     ; $72c0: $0a
	inc  e                                           ; $72c1: $1c
	ld   c, $01                                      ; $72c2: $0e $01
	ld   bc, $6701                                   ; $72c4: $01 $01 $67
	adc  l                                           ; $72c7: $8d
	sbc  d                                           ; $72c8: $9a
	ld   h, e                                        ; $72c9: $63
	and  c                                           ; $72ca: $a1
	ld   a, l                                        ; $72cb: $7d
	sbc  [hl]                                        ; $72cc: $9e
	inc  b                                           ; $72cd: $04
	ld   c, $03                                      ; $72ce: $0e $03
	add  d                                           ; $72d0: $82
	ld   a, h                                        ; $72d1: $7c
	ld   [bc], a                                     ; $72d2: $02
	dec  d                                           ; $72d3: $15
	ld   [bc], a                                     ; $72d4: $02
	db   $fc                                         ; $72d5: $fc
	sub  d                                           ; $72d6: $92
	dec  c                                           ; $72d7: $0d
	ld   e, b                                        ; $72d8: $58
	ld   [bc], a                                     ; $72d9: $02
	dec  sp                                          ; $72da: $3b
	inc  bc                                          ; $72db: $03
	and  b                                           ; $72dc: $a0
	ld   l, a                                        ; $72dd: $6f
	inc  b                                           ; $72de: $04
	ld   [hl], a                                     ; $72df: $77
	ld   a, h                                        ; $72e0: $7c
	inc  bc                                          ; $72e1: $03
	ld   a, [bc]                                     ; $72e2: $0a
	inc  b                                           ; $72e3: $04
	ld   d, b                                        ; $72e4: $50
	ld   a, c                                        ; $72e5: $79
	inc  bc                                          ; $72e6: $03
	add  d                                           ; $72e7: $82
	ld   [bc], a                                     ; $72e8: $02
	and  c                                           ; $72e9: $a1
	ld   l, [hl]                                     ; $72ea: $6e
	sbc  l                                           ; $72eb: $9d
	sbc  a                                           ; $72ec: $9f
	dec  c                                           ; $72ed: $0d
	nop                                              ; $72ee: $00
	ld   a, [bc]                                     ; $72ef: $0a
	ld   bc, $ecdf                                   ; $72f0: $01 $df $ec
	and  e                                           ; $72f3: $a3
	ld   h, e                                        ; $72f4: $63
	and  c                                           ; $72f5: $a1
	ld   a, l                                        ; $72f6: $7d
	sbc  [hl]                                        ; $72f7: $9e
	ld   [bc], a                                     ; $72f8: $02
	dec  d                                           ; $72f9: $15
	inc  bc                                          ; $72fa: $03
	ld   c, h                                        ; $72fb: $4c
	ld   a, h                                        ; $72fc: $7c
	sbc  d                                           ; $72fd: $9a
	ld   d, d                                        ; $72fe: $52
	ld   h, [hl]                                     ; $72ff: $66
	and  c                                           ; $7300: $a1
	dec  c                                           ; $7301: $0d
	halt                                             ; $7302: $76
	ld   h, l                                        ; $7303: $65
	ld   [hl], h                                     ; $7304: $74
	sbc  [hl]                                        ; $7305: $9e
	inc  bc                                          ; $7306: $03
	ld   l, [hl]                                     ; $7307: $6e
	ld   [bc], a                                     ; $7308: $02
	db   $fc                                         ; $7309: $fc
	ld   a, c                                        ; $730a: $79
	inc  bc                                          ; $730b: $03
	add  d                                           ; $730c: $82
	ld   [bc], a                                     ; $730d: $02
	and  c                                           ; $730e: $a1
	ld   e, d                                        ; $730f: $5a
	ld   d, b                                        ; $7310: $50
	sbc  c                                           ; $7311: $99
	ld   h, l                                        ; $7312: $65
	sbc  [hl]                                        ; $7313: $9e
	dec  c                                           ; $7314: $0d
	nop                                              ; $7315: $00
	ld   a, [bc]                                     ; $7316: $0a
	ld   bc, $f5ac                                   ; $7317: $01 $ac $f5
	bit  4, e                                        ; $731a: $cb $63
	and  c                                           ; $731c: $a1
	ld   a, l                                        ; $731d: $7d
	sbc  [hl]                                        ; $731e: $9e
	inc  b                                           ; $731f: $04
	adc  [hl]                                        ; $7320: $8e
	inc  b                                           ; $7321: $04
	inc  c                                           ; $7322: $0c
	ld   [hl], l                                     ; $7323: $75
	ld   a, h                                        ; $7324: $7c
	dec  c                                           ; $7325: $0d
	xor  h                                           ; $7326: $ac
	call nz, $a5b4                                   ; $7327: $c4 $b4 $a5
	and  l                                           ; $732a: $a5
	dec  b                                           ; $732b: $05
	ld   d, $6f                                      ; $732c: $16 $6f
	adc  h                                           ; $732e: $8c
	sbc  l                                           ; $732f: $9d
	sbc  b                                           ; $7330: $98
	ld   [hl], l                                     ; $7331: $75
	sbc  [hl]                                        ; $7332: $9e
	dec  c                                           ; $7333: $0d
	inc  bc                                          ; $7334: $03
	add  [hl]                                        ; $7335: $86
	ld   [bc], a                                     ; $7336: $02
	xor  l                                           ; $7337: $ad
	ld   l, l                                        ; $7338: $6d
	ld   l, a                                        ; $7339: $6f
	ld   a, h                                        ; $733a: $7c
	db   $d3                                         ; $733b: $d3
	ei                                               ; $733c: $fb
	rst  $28                                         ; $733d: $ef
	ei                                               ; $733e: $fb
	ld   a, b                                        ; $733f: $78
	ld   a, h                                        ; $7340: $7c
	sbc  a                                           ; $7341: $9f
	dec  c                                           ; $7342: $0d
	nop                                              ; $7343: $00
	ld   a, [bc]                                     ; $7344: $0a
	ld   bc, $cf02                                   ; $7345: $01 $02 $cf
	dec  b                                           ; $7348: $05
	ld   a, [de]                                     ; $7349: $1a
	ld   h, e                                        ; $734a: $63
	and  c                                           ; $734b: $a1
	ld   a, l                                        ; $734c: $7d
	sbc  [hl]                                        ; $734d: $9e
	ld   [hl], a                                     ; $734e: $77
	ld   e, l                                        ; $734f: $5d
	halt                                             ; $7350: $76
	ld   e, l                                        ; $7351: $5d
	ld   a, h                                        ; $7352: $7c
	dec  c                                           ; $7353: $0d
	cp   c                                           ; $7354: $b9
	jp   hl                                          ; $7355: $e9


	ei                                               ; $7356: $fb
	or   b                                           ; $7357: $b0
	sub  d                                           ; $7358: $92
	ld   d, [hl]                                     ; $7359: $56
	and  c                                           ; $735a: $a1
	ld   h, l                                        ; $735b: $65
	sub  e                                           ; $735c: $93
	ld   [hl], d                                     ; $735d: $72
	ld   [hl], l                                     ; $735e: $75
	dec  c                                           ; $735f: $0d
	dec  b                                           ; $7360: $05
	rra                                              ; $7361: $1f
	ld   d, d                                        ; $7362: $52
	inc  bc                                          ; $7363: $03
	add  d                                           ; $7364: $82
	ld   a, c                                        ; $7365: $79
	inc  bc                                          ; $7366: $03
	add  d                                           ; $7367: $82
	ld   [bc], a                                     ; $7368: $02
	and  c                                           ; $7369: $a1
	ld   e, d                                        ; $736a: $5a
	ld   d, b                                        ; $736b: $50
	sbc  c                                           ; $736c: $99
	ld   h, l                                        ; $736d: $65
	sbc  [hl]                                        ; $736e: $9e
	dec  c                                           ; $736f: $0d
	nop                                              ; $7370: $00
	ld   a, [bc]                                     ; $7371: $0a
	ld   bc, $a5a3                                   ; $7372: $01 $a3 $a5
	db   $ec                                         ; $7375: $ec
	cp   d                                           ; $7376: $ba
	ld   a, l                                        ; $7377: $7d
	sbc  [hl]                                        ; $7378: $9e
	halt                                             ; $7379: $76
	ld   [hl], h                                     ; $737a: $74
	sub  b                                           ; $737b: $90
	ld   e, c                                        ; $737c: $59
	sbc  l                                           ; $737d: $9d
	ld   d, d                                        ; $737e: $52
	ld   d, d                                        ; $737f: $52
	dec  c                                           ; $7380: $0d
	inc  bc                                          ; $7381: $03
	add  [hl]                                        ; $7382: $86
	inc  b                                           ; $7383: $04
	db   $ec                                         ; $7384: $ec
	halt                                             ; $7385: $76
	ld   h, l                                        ; $7386: $65
	ld   [hl], h                                     ; $7387: $74
	sbc  [hl]                                        ; $7388: $9e
	inc  b                                           ; $7389: $04
	ld   d, b                                        ; $738a: $50
	inc  b                                           ; $738b: $04
	xor  e                                           ; $738c: $ab
	ld   a, h                                        ; $738d: $7c
	inc  b                                           ; $738e: $04
	ld   a, b                                        ; $738f: $78
	ld   a, c                                        ; $7390: $79
	inc  bc                                          ; $7391: $03
	add  d                                           ; $7392: $82
	ld   [bc], a                                     ; $7393: $02
	and  c                                           ; $7394: $a1
	ld   e, d                                        ; $7395: $5a
	dec  c                                           ; $7396: $0d
	ld   d, b                                        ; $7397: $50
	sbc  c                                           ; $7398: $99
	and  c                                           ; $7399: $a1
	ld   [hl], l                                     ; $739a: $75
	ld   h, a                                        ; $739b: $67
	sub  [hl]                                        ; $739c: $96
	sbc  a                                           ; $739d: $9f
	dec  c                                           ; $739e: $0d
	nop                                              ; $739f: $00
	ld   a, [bc]                                     ; $73a0: $0a
	inc  e                                           ; $73a1: $1c
	ld   c, $00                                      ; $73a2: $0e $00
	nop                                              ; $73a4: $00
	ld   bc, $0276                                   ; $73a5: $01 $76 $02
	sbc  l                                           ; $73a8: $9d
	ld   d, h                                        ; $73a9: $54
	ld   [bc], a                                     ; $73aa: $02
	scf                                              ; $73ab: $37
	ld   h, [hl]                                     ; $73ac: $66
	ld   [hl], l                                     ; $73ad: $75
	sbc  [hl]                                        ; $73ae: $9e
	adc  l                                           ; $73af: $8d
	and  c                                           ; $73b0: $a1
	ld   a, b                                        ; $73b1: $78
	ld   e, d                                        ; $73b2: $5a
	dec  c                                           ; $73b3: $0d
	inc  bc                                          ; $73b4: $03
	add  d                                           ; $73b5: $82
	ld   [bc], a                                     ; $73b6: $02
	and  c                                           ; $73b7: $a1
	ld   d, b                                        ; $73b8: $50
	sbc  c                                           ; $73b9: $99
	ld   e, c                                        ; $73ba: $59
	sub  a                                           ; $73bb: $97
	sbc  [hl]                                        ; $73bc: $9e
	inc  bc                                          ; $73bd: $03
	xor  c                                           ; $73be: $a9
	ld   e, d                                        ; $73bf: $5a
	ld   [bc], a                                     ; $73c0: $02
	jr   nz, jr_041_73c7                             ; $73c1: $20 $04

	ld   a, c                                        ; $73c3: $79
	dec  c                                           ; $73c4: $0d
	halt                                             ; $73c5: $76
	ld   d, d                                        ; $73c6: $52

jr_041_73c7:
	ld   d, h                                        ; $73c7: $54
	ld   a, h                                        ; $73c8: $7c
	ld   a, l                                        ; $73c9: $7d
	sbc  [hl]                                        ; $73ca: $9e
	inc  bc                                          ; $73cb: $03
	db   $fd                                         ; $73cc: $fd
	ld   a, c                                        ; $73cd: $79
	ld   a, b                                        ; $73ce: $78
	ld   d, d                                        ; $73cf: $52
	ld   [hl], l                                     ; $73d0: $75
	ld   h, a                                        ; $73d1: $67
	sub  [hl]                                        ; $73d2: $96
	sbc  a                                           ; $73d3: $9f
	dec  c                                           ; $73d4: $0d
	nop                                              ; $73d5: $00
	ld   a, [bc]                                     ; $73d6: $0a
	ld   bc, $7150                                   ; $73d7: $01 $50 $71
	sbc  [hl]                                        ; $73da: $9e
	ld   d, d                                        ; $73db: $52
	ld   e, a                                        ; $73dc: $5f
	ld   a, b                                        ; $73dd: $78
	ld   d, d                                        ; $73de: $52
	sbc  a                                           ; $73df: $9f
	dec  c                                           ; $73e0: $0d
	ld   d, b                                        ; $73e1: $50
	ld   l, l                                        ; $73e2: $6d
	ld   h, l                                        ; $73e3: $65
	sbc  [hl]                                        ; $73e4: $9e
	dec  b                                           ; $73e5: $05
	cp   b                                           ; $73e6: $b8
	ld   [bc], a                                     ; $73e7: $02
	ld   e, c                                        ; $73e8: $59
	ld   a, h                                        ; $73e9: $7c
	ld   [bc], a                                     ; $73ea: $02
	sbc  a                                           ; $73eb: $9f
	inc  b                                           ; $73ec: $04
	dec  sp                                          ; $73ed: $3b
	and  b                                           ; $73ee: $a0
	sub  d                                           ; $73ef: $92
	sub  a                                           ; $73f0: $97
	ld   a, b                                        ; $73f1: $78
	dec  c                                           ; $73f2: $0d
	ld   e, l                                        ; $73f3: $5d
	ld   l, a                                        ; $73f4: $6f
	sub  c                                           ; $73f5: $91
	sbc  [hl]                                        ; $73f6: $9e
	ld   d, d                                        ; $73f7: $52
	ld   e, a                                        ; $73f8: $5f
	ld   a, b                                        ; $73f9: $78
	ld   d, d                                        ; $73fa: $52
	and  c                                           ; $73fb: $a1
	ld   [hl], l                                     ; $73fc: $75
	ld   h, l                                        ; $73fd: $65
	ld   l, l                                        ; $73fe: $6d
	sbc  a                                           ; $73ff: $9f
	dec  c                                           ; $7400: $0d
	nop                                              ; $7401: $00
	ld   a, [bc]                                     ; $7402: $0a
	dec  b                                           ; $7403: $05
	add  b                                           ; $7404: $80
	sbc  [hl]                                        ; $7405: $9e
	ld   bc, $0001                                   ; $7406: $01 $01 $00
	inc  e                                           ; $7409: $1c
	ld   c, $01                                      ; $740a: $0e $01
	ld   bc, $6b01                                   ; $740c: $01 $01 $6b
	sbc  d                                           ; $740f: $9a
	ld   h, [hl]                                     ; $7410: $66
	sub  c                                           ; $7411: $91
	sbc  [hl]                                        ; $7412: $9e
	dec  c                                           ; $7413: $0d
	ld   h, l                                        ; $7414: $65
	ld   [hl], d                                     ; $7415: $72
	sbc  d                                           ; $7416: $9a
	ld   d, d                                        ; $7417: $52
	ld   h, l                                        ; $7418: $65
	adc  h                                           ; $7419: $8c
	ei                                               ; $741a: $fb
	ld   h, a                                        ; $741b: $67
	sbc  a                                           ; $741c: $9f
	dec  c                                           ; $741d: $0d
	nop                                              ; $741e: $00
	ld   a, [bc]                                     ; $741f: $0a
	nop                                              ; $7420: $00
	inc  e                                           ; $7421: $1c
	ld   c, $00                                      ; $7422: $0e $00
	nop                                              ; $7424: $00
	ld   bc, $9750                                   ; $7425: $01 $50 $97
	sbc  [hl]                                        ; $7428: $9e
	ld   [$6300], sp                                 ; $7429: $08 $00 $63
	and  c                                           ; $742c: $a1
	sbc  a                                           ; $742d: $9f
	dec  c                                           ; $742e: $0d
	ld   d, d                                        ; $742f: $52
	sub  a                                           ; $7430: $97
	ld   [hl], c                                     ; $7431: $71
	ld   h, l                                        ; $7432: $65
	sub  c                                           ; $7433: $91
	ld   d, d                                        ; $7434: $52
	adc  h                                           ; $7435: $8c
	ld   l, c                                        ; $7436: $69
	rst  $38                                         ; $7437: $ff
	rst  $38                                         ; $7438: $ff
	halt                                             ; $7439: $76
	sbc  [hl]                                        ; $743a: $9e
	ld   [bc], a                                     ; $743b: $02
	sbc  l                                           ; $743c: $9d
	ld   d, d                                        ; $743d: $52
	dec  c                                           ; $743e: $0d
	ld   l, l                                        ; $743f: $6d
	ld   d, d                                        ; $7440: $52
	halt                                             ; $7441: $76
	ld   h, c                                        ; $7442: $61
	sbc  e                                           ; $7443: $9b
	ld   a, b                                        ; $7444: $78
	ld   a, h                                        ; $7445: $7c
	ld   [hl], l                                     ; $7446: $75
	ld   h, a                                        ; $7447: $67
	ld   e, d                                        ; $7448: $5a
	rst  $38                                         ; $7449: $ff
	rst  $38                                         ; $744a: $ff
	dec  c                                           ; $744b: $0d
	nop                                              ; $744c: $00
	ld   a, [bc]                                     ; $744d: $0a
	rrca                                             ; $744e: $0f
	nop                                              ; $744f: $00
	ld   bc, $9d01                                   ; $7450: $01 $01 $9d
	ld   e, c                                        ; $7453: $59
	ld   [hl], c                                     ; $7454: $71
	ld   [hl], h                                     ; $7455: $74
	adc  h                                           ; $7456: $8c
	ld   h, a                                        ; $7457: $67
	sub  [hl]                                        ; $7458: $96
	sbc  a                                           ; $7459: $9f
	dec  c                                           ; $745a: $0d
	rst  $10                                         ; $745b: $d7
	rst  $28                                         ; $745c: $ef
	rst  JumpTable                                         ; $745d: $df
	and  l                                           ; $745e: $a5
	jp   z, $037d                                    ; $745f: $ca $7d $03

	ld   a, c                                        ; $7462: $79
	ld   a, c                                        ; $7463: $79
	ld   [de], a                                     ; $7464: $12

Jump_041_7465:
	inc  b                                           ; $7465: $04
	push bc                                          ; $7466: $c5
	ld   h, l                                        ; $7467: $65
	ld   e, c                                        ; $7468: $59
	dec  c                                           ; $7469: $0d
	ld   b, $1a                                      ; $746a: $06 $1a
	sbc  d                                           ; $746c: $9a
	ld   a, b                                        ; $746d: $78
	ld   d, d                                        ; $746e: $52
	and  c                                           ; $746f: $a1
	ld   [hl], l                                     ; $7470: $75
	ld   h, l                                        ; $7471: $65
	sub  l                                           ; $7472: $95
	sbc  a                                           ; $7473: $9f
	dec  c                                           ; $7474: $0d
	nop                                              ; $7475: $00
	ld   a, [bc]                                     ; $7476: $0a
	inc  e                                           ; $7477: $1c
	ld   c, $01                                      ; $7478: $0e $01
	ld   bc, $7d01                                   ; $747a: $01 $01 $7d
	ld   d, d                                        ; $747d: $52
	sbc  [hl]                                        ; $747e: $9e
	ld   l, e                                        ; $747f: $6b
	ld   d, h                                        ; $7480: $54
	ld   a, b                                        ; $7481: $78
	and  c                                           ; $7482: $a1
	ld   [hl], l                                     ; $7483: $75
	ld   h, a                                        ; $7484: $67
	sbc  a                                           ; $7485: $9f
	dec  c                                           ; $7486: $0d
	ld   h, d                                        ; $7487: $62
	adc  a                                           ; $7488: $8f
	and  c                                           ; $7489: $a1
	ld   a, b                                        ; $748a: $78
	ld   h, e                                        ; $748b: $63
	ld   d, d                                        ; $748c: $52
	sbc  a                                           ; $748d: $9f
	dec  c                                           ; $748e: $0d
	nop                                              ; $748f: $00
	ld   a, [bc]                                     ; $7490: $0a
	rrca                                             ; $7491: $0f
	nop                                              ; $7492: $00
	ld   bc, $7601                                   ; $7493: $01 $01 $76
	ld   h, c                                        ; $7496: $61
	sbc  e                                           ; $7497: $9b
	ld   [hl], l                                     ; $7498: $75
	sbc  [hl]                                        ; $7499: $9e
	ld   b, $5b                                      ; $749a: $06 $5b
	ld   h, e                                        ; $749c: $63
	and  c                                           ; $749d: $a1
	sbc  a                                           ; $749e: $9f
	dec  c                                           ; $749f: $0d
	ld   l, a                                        ; $74a0: $6f
	sub  l                                           ; $74a1: $95
	ld   [hl], c                                     ; $74a2: $71
	halt                                             ; $74a3: $76
	ld   [bc], a                                     ; $74a4: $02
	jp   nz, Jump_041_6d5b                           ; $74a5: $c2 $5b $6d

	ld   d, d                                        ; $74a8: $52
	ld   h, c                                        ; $74a9: $61
	halt                                             ; $74aa: $76
	ld   e, d                                        ; $74ab: $5a
	dec  c                                           ; $74ac: $0d
	ld   d, b                                        ; $74ad: $50
	sbc  c                                           ; $74ae: $99
	and  c                                           ; $74af: $a1
	ld   [hl], l                                     ; $74b0: $75
	ld   h, a                                        ; $74b1: $67
	ld   e, a                                        ; $74b2: $5f
	ld   [hl], a                                     ; $74b3: $77
	rst  $38                                         ; $74b4: $ff
	rst  $38                                         ; $74b5: $ff
	dec  c                                           ; $74b6: $0d
	nop                                              ; $74b7: $00
	ld   a, [bc]                                     ; $74b8: $0a
	ld   bc, $5b06                                   ; $74b9: $01 $06 $5b
	ld   h, e                                        ; $74bc: $63
	and  c                                           ; $74bd: $a1
	ld   a, h                                        ; $74be: $7c
	ld   h, l                                        ; $74bf: $65
	sub  e                                           ; $74c0: $93
	adc  l                                           ; $74c1: $8d
	ld   [hl], c                                     ; $74c2: $71
	ld   [hl], h                                     ; $74c3: $74
	sbc  [hl]                                        ; $74c4: $9e
	dec  c                                           ; $74c5: $0d
	ld   a, b                                        ; $74c6: $78
	and  c                                           ; $74c7: $a1
	ld   [hl], l                                     ; $74c8: $75
	ld   h, a                                        ; $74c9: $67
	ld   e, c                                        ; $74ca: $59
	ld   sp, hl                                      ; $74cb: $f9
	dec  c                                           ; $74cc: $0d
	nop                                              ; $74cd: $00
	ld   a, [bc]                                     ; $74ce: $0a
	inc  e                                           ; $74cf: $1c
	ld   c, $03                                      ; $74d0: $0e $03
	inc  bc                                          ; $74d2: $03
	ld   bc, $9365                                   ; $74d3: $01 $65 $93
	adc  l                                           ; $74d6: $8d
	ld   [hl], c                                     ; $74d7: $71
	ld   [hl], h                                     ; $74d8: $74
	adc  c                                           ; $74d9: $89
	ld   [hl], a                                     ; $74da: $77
	ld   h, [hl]                                     ; $74db: $66
	sub  c                                           ; $74dc: $91
	dec  c                                           ; $74dd: $0d
	ld   a, b                                        ; $74de: $78
	ld   d, d                                        ; $74df: $52
	ld   [hl], l                                     ; $74e0: $75
	ld   h, a                                        ; $74e1: $67
	ld   e, a                                        ; $74e2: $5f
	ld   [hl], a                                     ; $74e3: $77
	sbc  [hl]                                        ; $74e4: $9e
	dec  c                                           ; $74e5: $0d
	ld   e, b                                        ; $74e6: $58
	inc  bc                                          ; $74e7: $03
	adc  h                                           ; $74e8: $8c
	sbc  b                                           ; $74e9: $98
	ld   e, d                                        ; $74ea: $5a
	ld   [bc], a                                     ; $74eb: $02
	sbc  d                                           ; $74ec: $9a
	ld   e, e                                        ; $74ed: $5b
	ld   [hl], l                                     ; $74ee: $75
	ld   h, a                                        ; $74ef: $67
	ld   a, e                                        ; $74f0: $7b
	sbc  a                                           ; $74f1: $9f
	dec  c                                           ; $74f2: $0d
	nop                                              ; $74f3: $00
	ld   a, [bc]                                     ; $74f4: $0a
	inc  e                                           ; $74f5: $1c
	ld   c, $00                                      ; $74f6: $0e $00
	nop                                              ; $74f8: $00
	ld   bc, $5c79                                   ; $74f9: $01 $79 $5c
	sub  d                                           ; $74fc: $92
	ld   e, c                                        ; $74fd: $59
	ld   [hl], l                                     ; $74fe: $75
	sbc  [hl]                                        ; $74ff: $9e
	dec  b                                           ; $7500: $05
	inc  de                                          ; $7501: $13
	ld   h, l                                        ; $7502: $65
	ld   e, l                                        ; $7503: $5d
	ld   [hl], h                                     ; $7504: $74
	sbc  [hl]                                        ; $7505: $9e
	dec  c                                           ; $7506: $0d
	ld   a, b                                        ; $7507: $78
	and  c                                           ; $7508: $a1
	ld   l, [hl]                                     ; $7509: $6e
	ld   e, c                                        ; $750a: $59
	pop  af                                          ; $750b: $f1
	or   b                                           ; $750c: $b0
	pop  af                                          ; $750d: $f1
	or   b                                           ; $750e: $b0
	ld   h, a                                        ; $750f: $67
	sbc  c                                           ; $7510: $99
	sbc  [hl]                                        ; $7511: $9e
	dec  c                                           ; $7512: $0d
	ld   d, b                                        ; $7513: $50
	ld   a, h                                        ; $7514: $7c
	ld   b, $8c                                      ; $7515: $06 $8c
	ld   [bc], a                                     ; $7517: $02
	ld   a, [bc]                                     ; $7518: $0a
	ld   [bc], a                                     ; $7519: $02
	and  c                                           ; $751a: $a1
	ld   e, d                                        ; $751b: $5a
	inc  b                                           ; $751c: $04
	ld   c, $02                                      ; $751d: $0e $02
	sbc  d                                           ; $751f: $9a
	ld   e, e                                        ; $7520: $5b
	ld   [hl], l                                     ; $7521: $75
	ld   h, a                                        ; $7522: $67
	sbc  a                                           ; $7523: $9f
	dec  c                                           ; $7524: $0d
	nop                                              ; $7525: $00
	ld   a, [bc]                                     ; $7526: $0a
	add  hl, de                                      ; $7527: $19
	dec  b                                           ; $7528: $05
	inc  bc                                          ; $7529: $03
	inc  b                                           ; $752a: $04
	dec  e                                           ; $752b: $1d
	ld   [bc], a                                     ; $752c: $02
	ld   b, $67                                      ; $752d: $06 $67
	sbc  c                                           ; $752f: $99
	nop                                              ; $7530: $00
	nop                                              ; $7531: $00
	adc  c                                           ; $7532: $89
	adc  a                                           ; $7533: $8f
	sbc  c                                           ; $7534: $99
	nop                                              ; $7535: $00
	ld   bc, $9759                                   ; $7536: $01 $59 $97
	ld   e, c                                        ; $7539: $59
	ld   [hl], c                                     ; $753a: $71
	ld   [hl], h                                     ; $753b: $74
	adc  l                                           ; $753c: $8d
	sbc  c                                           ; $753d: $99
	nop                                              ; $753e: $00
	ld   [bc], a                                     ; $753f: $02
	rlca                                             ; $7540: $07
	adc  h                                           ; $7541: $8c
	ld   de, $0302                                   ; $7542: $11 $02 $03
	ld   bc, $2000                                   ; $7545: $01 $00 $20
	nop                                              ; $7548: $00
	rlca                                             ; $7549: $07
	ld   l, $12                                      ; $754a: $2e $12
	ld   [bc], a                                     ; $754c: $02
	inc  bc                                          ; $754d: $03
	ld   bc, $2001                                   ; $754e: $01 $01 $20
	nop                                              ; $7551: $00
	rlca                                             ; $7552: $07
	cp   e                                           ; $7553: $bb
	ld   [de], a                                     ; $7554: $12
	ld   [bc], a                                     ; $7555: $02
	inc  bc                                          ; $7556: $03
	ld   bc, $2002                                   ; $7557: $01 $02 $20

Jump_041_755a:
	nop                                              ; $755a: $00
	ld   b, $2d                                      ; $755b: $06 $2d
	inc  de                                          ; $755d: $13
	rrca                                             ; $755e: $0f
	nop                                              ; $755f: $00
	ld   bc, $0401                                   ; $7560: $01 $01 $04
	ld   l, l                                        ; $7563: $6d
	sub  b                                           ; $7564: $90
	sbc  [hl]                                        ; $7565: $9e
	ld   e, b                                        ; $7566: $58
	inc  bc                                          ; $7567: $03
	adc  h                                           ; $7568: $8c
	sbc  b                                           ; $7569: $98
	inc  b                                           ; $756a: $04
	ld   c, $02                                      ; $756b: $0e $02
	sbc  d                                           ; $756d: $9a
	ld   e, e                                        ; $756e: $5b
	ld   a, b                                        ; $756f: $78
	and  c                                           ; $7570: $a1
	ld   [hl], l                                     ; $7571: $75
	ld   h, a                                        ; $7572: $67
	sbc  a                                           ; $7573: $9f
	dec  c                                           ; $7574: $0d
	nop                                              ; $7575: $00
	dec  c                                           ; $7576: $0d
	ld   c, $01                                      ; $7577: $0e $01
	ld   bc, $a178                                   ; $7579: $01 $78 $a1
	halt                                             ; $757c: $76
	ld   [bc], a                                     ; $757d: $02
	sbc  l                                           ; $757e: $9d
	ld   [hl], c                                     ; $757f: $71
	ld   [hl], h                                     ; $7580: $74
	sub  b                                           ; $7581: $90
	sbc  [hl]                                        ; $7582: $9e
	ld   d, b                                        ; $7583: $50
	ld   a, h                                        ; $7584: $7c
	ld   b, $8c                                      ; $7585: $06 $8c
	ld   [bc], a                                     ; $7587: $02
	ld   a, [bc]                                     ; $7588: $0a
	ld   [bc], a                                     ; $7589: $02
	and  c                                           ; $758a: $a1
	sbc  [hl]                                        ; $758b: $9e
	dec  c                                           ; $758c: $0d
	dec  b                                           ; $758d: $05
	inc  de                                          ; $758e: $13
	ld   h, l                                        ; $758f: $65
	ld   d, d                                        ; $7590: $52
	ld   [hl], l                                     ; $7591: $75
	ld   h, a                                        ; $7592: $67
	sub  [hl]                                        ; $7593: $96
	ld   a, e                                        ; $7594: $7b
	sbc  a                                           ; $7595: $9f
	dec  c                                           ; $7596: $0d
	nop                                              ; $7597: $00
	ld   a, [bc]                                     ; $7598: $0a
	rrca                                             ; $7599: $0f
	ld   c, $01                                      ; $759a: $0e $01
	ld   bc, $9750                                   ; $759c: $01 $50 $97
	sbc  [hl]                                        ; $759f: $9e
	ld   [bc], a                                     ; $75a0: $02
	and  c                                           ; $75a1: $a1
	ld   e, d                                        ; $75a2: $5a
	ld   [bc], a                                     ; $75a3: $02
	ld   a, e                                        ; $75a4: $7b
	ld   d, d                                        ; $75a5: $52
	adc  h                                           ; $75a6: $8c
	ld   h, a                                        ; $75a7: $67
	ld   a, e                                        ; $75a8: $7b
	sbc  a                                           ; $75a9: $9f
	dec  c                                           ; $75aa: $0d
	nop                                              ; $75ab: $00
	dec  c                                           ; $75ac: $0d
	ld   c, $01                                      ; $75ad: $0e $01
	ld   bc, $0358                                   ; $75af: $01 $58 $03
	adc  h                                           ; $75b2: $8c
	sbc  b                                           ; $75b3: $98
	ld   e, d                                        ; $75b4: $5a
	ld   [bc], a                                     ; $75b5: $02
	sbc  d                                           ; $75b6: $9a
	ld   e, e                                        ; $75b7: $5b
	ld   a, b                                        ; $75b8: $78
	inc  bc                                          ; $75b9: $03
	add  d                                           ; $75ba: $82
	halt                                             ; $75bb: $76
	ld   d, d                                        ; $75bc: $52
	sbc  c                                           ; $75bd: $99
	halt                                             ; $75be: $76
	sbc  [hl]                                        ; $75bf: $9e
	dec  c                                           ; $75c0: $0d
	ld   l, e                                        ; $75c1: $6b
	sbc  d                                           ; $75c2: $9a
	ld   l, [hl]                                     ; $75c3: $6e
	ld   e, a                                        ; $75c4: $5f
	ld   [hl], l                                     ; $75c5: $75
	dec  b                                           ; $75c6: $05
	inc  de                                          ; $75c7: $13
	ld   h, l                                        ; $75c8: $65
	ld   e, l                                        ; $75c9: $5d
	ld   a, b                                        ; $75ca: $78
	sbc  d                                           ; $75cb: $9a
	adc  h                                           ; $75cc: $8c
	ld   h, a                                        ; $75cd: $67
	sub  [hl]                                        ; $75ce: $96
	sbc  a                                           ; $75cf: $9f
	dec  c                                           ; $75d0: $0d
	nop                                              ; $75d1: $00
	ld   a, [bc]                                     ; $75d2: $0a
	rrca                                             ; $75d3: $0f
	ld   c, $01                                      ; $75d4: $0e $01
	ld   bc, $ff50                                   ; $75d6: $01 $50 $ff
	rst  $38                                         ; $75d9: $ff
	dec  c                                           ; $75da: $0d
	ld   d, b                                        ; $75db: $50
	ld   l, l                                        ; $75dc: $6d
	ld   h, l                                        ; $75dd: $65
	sbc  [hl]                                        ; $75de: $9e
	inc  bc                                          ; $75df: $03
	dec  c                                           ; $75e0: $0d
	ld   [bc], a                                     ; $75e1: $02
	jp   Jump_041_505a                               ; $75e2: $c3 $5a $50


	sbc  c                                           ; $75e5: $99
	ld   a, h                                        ; $75e6: $7c
	ld   [hl], l                                     ; $75e7: $75
	dec  c                                           ; $75e8: $0d
	ld   h, c                                        ; $75e9: $61
	ld   a, h                                        ; $75ea: $7c
	ld   b, $0a                                      ; $75eb: $06 $0a
	ld   [hl], l                                     ; $75ed: $75
	ld   [bc], a                                     ; $75ee: $02
	ld   a, a                                        ; $75ef: $7f
	ld   e, c                                        ; $75f0: $59
	ld   a, b                                        ; $75f1: $78
	ld   d, d                                        ; $75f2: $52
	halt                                             ; $75f3: $76
	rst  $38                                         ; $75f4: $ff
	rst  $38                                         ; $75f5: $ff
	dec  c                                           ; $75f6: $0d
	nop                                              ; $75f7: $00
	ld   a, [bc]                                     ; $75f8: $0a
	dec  b                                           ; $75f9: $05
	add  b                                           ; $75fa: $80
	sbc  a                                           ; $75fb: $9f
	ld   bc, $0001                                   ; $75fc: $01 $01 $00
	nop                                              ; $75ff: $00
	rrca                                             ; $7600: $0f
	nop                                              ; $7601: $00
	ld   bc, $9201                                   ; $7602: $01 $01 $92
	ld   [hl], c                                     ; $7605: $71
	ld   a, a                                        ; $7606: $7f
	sbc  b                                           ; $7607: $98
	sbc  [hl]                                        ; $7608: $9e
	jp   nz, $aee5                                   ; $7609: $c2 $e5 $ae

	jp   nz, $aee5                                   ; $760c: $c2 $e5 $ae

	ld   a, h                                        ; $760f: $7c
	dec  c                                           ; $7610: $0d
	ld   b, $88                                      ; $7611: $06 $88
	dec  b                                           ; $7613: $05
	push af                                          ; $7614: $f5
	ld   [hl], c                                     ; $7615: $71
	inc  bc                                          ; $7616: $03
	add  [hl]                                        ; $7617: $86
	ld   l, [hl]                                     ; $7618: $6e
	ld   e, a                                        ; $7619: $5f
	ld   d, b                                        ; $761a: $50
	ld   [hl], c                                     ; $761b: $71
	ld   [hl], h                                     ; $761c: $74
	sbc  [hl]                                        ; $761d: $9e
	dec  c                                           ; $761e: $0d
	ld   e, b                                        ; $761f: $58
	inc  bc                                          ; $7620: $03
	adc  h                                           ; $7621: $8c
	sbc  b                                           ; $7622: $98
	ld   [bc], a                                     ; $7623: $02
	sbc  d                                           ; $7624: $9a
	ld   e, e                                        ; $7625: $5b
	ld   a, b                                        ; $7626: $78
	and  c                                           ; $7627: $a1
	ld   [hl], l                                     ; $7628: $75
	ld   h, a                                        ; $7629: $67
	ld   a, e                                        ; $762a: $7b
	sbc  a                                           ; $762b: $9f
	dec  c                                           ; $762c: $0d
	nop                                              ; $762d: $00
	ld   a, [bc]                                     ; $762e: $0a
	ld   bc, $5b06                                   ; $762f: $01 $06 $5b
	ld   h, e                                        ; $7632: $63
	and  c                                           ; $7633: $a1
	ld   a, c                                        ; $7634: $79
	push de                                          ; $7635: $d5
	call nz, $ecc0                                   ; $7636: $c4 $c0 $ec
	ld   a, h                                        ; $7639: $7c
	ld   h, l                                        ; $763a: $65
	sub  e                                           ; $763b: $93
	adc  l                                           ; $763c: $8d
	dec  c                                           ; $763d: $0d
	ld   h, [hl]                                     ; $763e: $66
	sub  c                                           ; $763f: $91
	ld   a, b                                        ; $7640: $78
	ld   d, d                                        ; $7641: $52
	ld   [hl], l                                     ; $7642: $75
	ld   h, a                                        ; $7643: $67
	ld   e, c                                        ; $7644: $59
	sbc  a                                           ; $7645: $9f
	dec  c                                           ; $7646: $0d
	nop                                              ; $7647: $00
	ld   a, [bc]                                     ; $7648: $0a
	inc  e                                           ; $7649: $1c
	ld   c, $01                                      ; $764a: $0e $01
	ld   bc, $6b01                                   ; $764c: $01 $01 $6b
	sbc  [hl]                                        ; $764f: $9e
	ld   l, e                                        ; $7650: $6b
	ld   h, c                                        ; $7651: $61
	adc  h                                           ; $7652: $8c
	ld   [hl], l                                     ; $7653: $75
	ld   [bc], a                                     ; $7654: $02
	sbc  l                                           ; $7655: $9d
	sbc  l                                           ; $7656: $9d
	sbc  d                                           ; $7657: $9a
	sbc  c                                           ; $7658: $99
	halt                                             ; $7659: $76
	dec  c                                           ; $765a: $0d
	ld   a, b                                        ; $765b: $78
	and  c                                           ; $765c: $a1
	ld   l, [hl]                                     ; $765d: $6e
	ld   e, c                                        ; $765e: $59
	sbc  [hl]                                        ; $765f: $9e
	inc  bc                                          ; $7660: $03
	ld   h, [hl]                                     ; $7661: $66
	sbc  d                                           ; $7662: $9a
	adc  h                                           ; $7663: $8c
	ld   h, a                                        ; $7664: $67
	sub  [hl]                                        ; $7665: $96
	sbc  a                                           ; $7666: $9f
	dec  c                                           ; $7667: $0d
	nop                                              ; $7668: $00
	ld   a, [bc]                                     ; $7669: $0a
	ld   bc, $9166                                   ; $766a: $01 $66 $91
	sbc  [hl]                                        ; $766d: $9e
	ld   d, b                                        ; $766e: $50
	ld   l, l                                        ; $766f: $6d
	ld   h, l                                        ; $7670: $65
	ld   a, l                                        ; $7671: $7d
	inc  bc                                          ; $7672: $03
	dec  c                                           ; $7673: $0d
	ld   [bc], a                                     ; $7674: $02
	jp   Jump_041_505a                               ; $7675: $c3 $5a $50


	sbc  c                                           ; $7678: $99
	ld   a, h                                        ; $7679: $7c
	ld   [hl], l                                     ; $767a: $75
	dec  c                                           ; $767b: $0d
	ld   h, c                                        ; $767c: $61
	ld   a, h                                        ; $767d: $7c
	add  [hl]                                        ; $767e: $86
	and  c                                           ; $767f: $a1
	ld   [hl], l                                     ; $7680: $75
	rst  $38                                         ; $7681: $ff
	rst  $38                                         ; $7682: $ff
	dec  c                                           ; $7683: $0d
	nop                                              ; $7684: $00
	ld   a, [bc]                                     ; $7685: $0a
	dec  b                                           ; $7686: $05
	add  b                                           ; $7687: $80
	sbc  a                                           ; $7688: $9f
	ld   bc, $0001                                   ; $7689: $01 $01 $00
	nop                                              ; $768c: $00
	rrca                                             ; $768d: $0f
	nop                                              ; $768e: $00
	ld   bc, $5201                                   ; $768f: $01 $01 $52
	ld   [hl], d                                     ; $7692: $72
	sub  b                                           ; $7693: $90
	sbc  [hl]                                        ; $7694: $9e
	ld   a, c                                        ; $7695: $79
	ld   e, h                                        ; $7696: $5c
	sub  d                                           ; $7697: $92
	ld   e, c                                        ; $7698: $59
	ld   a, b                                        ; $7699: $78
	ld   b, $5b                                      ; $769a: $06 $5b
	ld   h, e                                        ; $769c: $63
	and  c                                           ; $769d: $a1
	ld   a, c                                        ; $769e: $79
	dec  c                                           ; $769f: $0d
	push de                                          ; $76a0: $d5
	call nz, $ecc0                                   ; $76a1: $c4 $c0 $ec
	ld   a, h                                        ; $76a4: $7c
	inc  bc                                          ; $76a5: $03
	sub  a                                           ; $76a6: $97
	inc  b                                           ; $76a7: $04
	jp   nc, Jump_041_6775                           ; $76a8: $d2 $75 $67

	ld   a, e                                        ; $76ab: $7b
	sbc  a                                           ; $76ac: $9f
	dec  c                                           ; $76ad: $0d
	nop                                              ; $76ae: $00
	ld   a, [bc]                                     ; $76af: $0a
	inc  e                                           ; $76b0: $1c
	ld   c, $03                                      ; $76b1: $0e $03
	inc  bc                                          ; $76b3: $03
	ld   bc, $a16b                                   ; $76b4: $01 $6b $a1
	ld   a, b                                        ; $76b7: $78
	ld   [bc], a                                     ; $76b8: $02
	sbc  l                                           ; $76b9: $9d
	ld   d, d                                        ; $76ba: $52
	inc  b                                           ; $76bb: $04
	ld   a, b                                        ; $76bc: $78
	ld   h, e                                        ; $76bd: $63
	sbc  d                                           ; $76be: $9a
	sbc  c                                           ; $76bf: $99
	halt                                             ; $76c0: $76
	rst  $38                                         ; $76c1: $ff
	rst  $38                                         ; $76c2: $ff
	dec  c                                           ; $76c3: $0d
	ld   l, l                                        ; $76c4: $6d
	ld   l, [hl]                                     ; $76c5: $6e
	ld   a, h                                        ; $76c6: $7c
	ld   d, h                                        ; $76c7: $54
	sbc  c                                           ; $76c8: $99
	ld   h, e                                        ; $76c9: $63
	ld   d, d                                        ; $76ca: $52
	inc  bc                                          ; $76cb: $03
	ld   l, [hl]                                     ; $76cc: $6e
	ld   a, h                                        ; $76cd: $7c
	inc  bc                                          ; $76ce: $03
	add  [hl]                                        ; $76cf: $86
	dec  c                                           ; $76d0: $0d
	adc  l                                           ; $76d1: $8d
	ld   l, l                                        ; $76d2: $6d
	ld   d, d                                        ; $76d3: $52
	ld   [hl], l                                     ; $76d4: $75
	ld   h, a                                        ; $76d5: $67
	ld   a, e                                        ; $76d6: $7b
	rst  $38                                         ; $76d7: $ff
	rst  $38                                         ; $76d8: $ff
	dec  c                                           ; $76d9: $0d
	nop                                              ; $76da: $00
	ld   a, [bc]                                     ; $76db: $0a
	ld   bc, $9166                                   ; $76dc: $01 $66 $91
	sbc  [hl]                                        ; $76df: $9e
	ld   d, b                                        ; $76e0: $50
	ld   l, l                                        ; $76e1: $6d
	ld   h, l                                        ; $76e2: $65
	ld   a, l                                        ; $76e3: $7d
	inc  bc                                          ; $76e4: $03
	dec  c                                           ; $76e5: $0d
	ld   [bc], a                                     ; $76e6: $02
	jp   Jump_041_505a                               ; $76e7: $c3 $5a $50


	sbc  c                                           ; $76ea: $99
	ld   a, h                                        ; $76eb: $7c
	ld   [hl], l                                     ; $76ec: $75
	dec  c                                           ; $76ed: $0d
	ld   h, c                                        ; $76ee: $61
	ld   a, h                                        ; $76ef: $7c
	add  [hl]                                        ; $76f0: $86
	and  c                                           ; $76f1: $a1
	ld   [hl], l                                     ; $76f2: $75
	rst  $38                                         ; $76f3: $ff
	rst  $38                                         ; $76f4: $ff
	dec  c                                           ; $76f5: $0d
	nop                                              ; $76f6: $00
	ld   a, [bc]                                     ; $76f7: $0a
	dec  b                                           ; $76f8: $05
	add  b                                           ; $76f9: $80
	sbc  a                                           ; $76fa: $9f
	ld   bc, $0001                                   ; $76fb: $01 $01 $00
	nop                                              ; $76fe: $00
	inc  e                                           ; $76ff: $1c
	ld   c, $01                                      ; $7700: $0e $01
	ld   bc, $6601                                   ; $7702: $01 $01 $66
	sub  c                                           ; $7705: $91
	sbc  [hl]                                        ; $7706: $9e
	ld   d, b                                        ; $7707: $50
	ld   l, l                                        ; $7708: $6d
	ld   h, l                                        ; $7709: $65
	ld   a, l                                        ; $770a: $7d
	inc  bc                                          ; $770b: $03
	dec  c                                           ; $770c: $0d
	ld   [bc], a                                     ; $770d: $02
	jp   Jump_041_505a                               ; $770e: $c3 $5a $50


	sbc  c                                           ; $7711: $99
	ld   a, h                                        ; $7712: $7c
	ld   [hl], l                                     ; $7713: $75
	dec  c                                           ; $7714: $0d
	ld   h, c                                        ; $7715: $61
	ld   a, h                                        ; $7716: $7c
	add  [hl]                                        ; $7717: $86
	and  c                                           ; $7718: $a1
	ld   [hl], l                                     ; $7719: $75
	rst  $38                                         ; $771a: $ff
	rst  $38                                         ; $771b: $ff
	dec  c                                           ; $771c: $0d
	nop                                              ; $771d: $00
	ld   a, [bc]                                     ; $771e: $0a
	dec  b                                           ; $771f: $05
	add  b                                           ; $7720: $80
	sbc  a                                           ; $7721: $9f
	ld   bc, $0001                                   ; $7722: $01 $01 $00
	nop                                              ; $7725: $00
	inc  e                                           ; $7726: $1c
	ld   c, $00                                      ; $7727: $0e $00
	nop                                              ; $7729: $00
	ld   bc, $9750                                   ; $772a: $01 $50 $97
	sbc  [hl]                                        ; $772d: $9e
	ld   [$6300], sp                                 ; $772e: $08 $00 $63
	and  c                                           ; $7731: $a1
	sbc  a                                           ; $7732: $9f
	dec  c                                           ; $7733: $0d
	ld   d, d                                        ; $7734: $52
	sub  a                                           ; $7735: $97
	ld   [hl], c                                     ; $7736: $71
	ld   h, l                                        ; $7737: $65
	sub  c                                           ; $7738: $91
	ld   d, d                                        ; $7739: $52
	adc  h                                           ; $773a: $8c
	ld   l, c                                        ; $773b: $69
	rst  $38                                         ; $773c: $ff
	rst  $38                                         ; $773d: $ff
	halt                                             ; $773e: $76
	sbc  [hl]                                        ; $773f: $9e
	ld   [bc], a                                     ; $7740: $02
	sbc  l                                           ; $7741: $9d
	ld   d, d                                        ; $7742: $52
	dec  c                                           ; $7743: $0d
	ld   l, l                                        ; $7744: $6d
	ld   d, d                                        ; $7745: $52
	halt                                             ; $7746: $76
	ld   h, c                                        ; $7747: $61
	sbc  e                                           ; $7748: $9b
	ld   a, b                                        ; $7749: $78
	ld   a, h                                        ; $774a: $7c
	ld   [hl], l                                     ; $774b: $75
	ld   h, a                                        ; $774c: $67
	ld   e, d                                        ; $774d: $5a
	rst  $38                                         ; $774e: $ff
	rst  $38                                         ; $774f: $ff
	dec  c                                           ; $7750: $0d
	nop                                              ; $7751: $00
	ld   a, [bc]                                     ; $7752: $0a
	rrca                                             ; $7753: $0f
	nop                                              ; $7754: $00
	ld   bc, $9d01                                   ; $7755: $01 $01 $9d
	ld   e, c                                        ; $7758: $59
	ld   [hl], c                                     ; $7759: $71
	ld   [hl], h                                     ; $775a: $74
	adc  h                                           ; $775b: $8c
	ld   h, a                                        ; $775c: $67
	sub  [hl]                                        ; $775d: $96
	sbc  a                                           ; $775e: $9f
	dec  c                                           ; $775f: $0d
	rst  $10                                         ; $7760: $d7
	rst  $28                                         ; $7761: $ef
	rst  JumpTable                                         ; $7762: $df
	and  l                                           ; $7763: $a5
	jp   z, $037d                                    ; $7764: $ca $7d $03

	ld   a, c                                        ; $7767: $79
	ld   a, c                                        ; $7768: $79
	ld   [de], a                                     ; $7769: $12
	inc  b                                           ; $776a: $04
	push bc                                          ; $776b: $c5
	ld   h, l                                        ; $776c: $65
	ld   e, c                                        ; $776d: $59
	dec  c                                           ; $776e: $0d
	ld   b, $1a                                      ; $776f: $06 $1a
	sbc  d                                           ; $7771: $9a
	ld   a, b                                        ; $7772: $78
	ld   d, d                                        ; $7773: $52
	and  c                                           ; $7774: $a1
	ld   [hl], l                                     ; $7775: $75
	ld   h, l                                        ; $7776: $65
	sub  l                                           ; $7777: $95
	sbc  a                                           ; $7778: $9f
	dec  c                                           ; $7779: $0d
	nop                                              ; $777a: $00
	ld   a, [bc]                                     ; $777b: $0a
	inc  e                                           ; $777c: $1c
	ld   c, $01                                      ; $777d: $0e $01
	ld   bc, $7d01                                   ; $777f: $01 $01 $7d
	ld   d, d                                        ; $7782: $52
	sbc  [hl]                                        ; $7783: $9e
	ld   l, e                                        ; $7784: $6b
	ld   d, h                                        ; $7785: $54
	ld   a, b                                        ; $7786: $78
	and  c                                           ; $7787: $a1
	ld   [hl], l                                     ; $7788: $75
	ld   h, a                                        ; $7789: $67
	sbc  a                                           ; $778a: $9f
	dec  c                                           ; $778b: $0d
	ld   h, d                                        ; $778c: $62
	adc  a                                           ; $778d: $8f
	and  c                                           ; $778e: $a1
	ld   a, b                                        ; $778f: $78
	ld   h, e                                        ; $7790: $63
	ld   d, d                                        ; $7791: $52
	sbc  a                                           ; $7792: $9f
	dec  c                                           ; $7793: $0d
	nop                                              ; $7794: $00
	ld   a, [bc]                                     ; $7795: $0a
	rrca                                             ; $7796: $0f
	nop                                              ; $7797: $00
	ld   bc, $7601                                   ; $7798: $01 $01 $76
	ld   h, c                                        ; $779b: $61
	sbc  e                                           ; $779c: $9b
	ld   [hl], l                                     ; $779d: $75
	sbc  [hl]                                        ; $779e: $9e
	ld   b, $5b                                      ; $779f: $06 $5b
	ld   h, e                                        ; $77a1: $63
	and  c                                           ; $77a2: $a1
	sbc  a                                           ; $77a3: $9f
	dec  c                                           ; $77a4: $0d
	ld   l, a                                        ; $77a5: $6f
	sub  l                                           ; $77a6: $95
	ld   [hl], c                                     ; $77a7: $71
	halt                                             ; $77a8: $76
	ld   [bc], a                                     ; $77a9: $02
	jp   nz, Jump_041_6d5b                           ; $77aa: $c2 $5b $6d

	ld   d, d                                        ; $77ad: $52
	ld   h, c                                        ; $77ae: $61
	halt                                             ; $77af: $76
	ld   e, d                                        ; $77b0: $5a
	dec  c                                           ; $77b1: $0d
	ld   d, b                                        ; $77b2: $50
	sbc  c                                           ; $77b3: $99
	and  c                                           ; $77b4: $a1
	ld   [hl], l                                     ; $77b5: $75
	ld   h, a                                        ; $77b6: $67
	ld   e, a                                        ; $77b7: $5f
	ld   [hl], a                                     ; $77b8: $77
	rst  $38                                         ; $77b9: $ff
	rst  $38                                         ; $77ba: $ff
	dec  c                                           ; $77bb: $0d
	nop                                              ; $77bc: $00
	ld   a, [bc]                                     ; $77bd: $0a
	ld   bc, $5b06                                   ; $77be: $01 $06 $5b
	ld   h, e                                        ; $77c1: $63
	and  c                                           ; $77c2: $a1
	ld   a, h                                        ; $77c3: $7c
	ld   [bc], a                                     ; $77c4: $02
	sub  h                                           ; $77c5: $94
	inc  bc                                          ; $77c6: $03
	ld   l, e                                        ; $77c7: $6b
	ld   a, b                                        ; $77c8: $78
	db   $e4                                         ; $77c9: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77ca: $cf
	ld   [hl], c                                     ; $77cb: $71
	ld   [hl], h                                     ; $77cc: $74
	dec  c                                           ; $77cd: $0d
	ld   a, b                                        ; $77ce: $78
	and  c                                           ; $77cf: $a1
	ld   [hl], l                                     ; $77d0: $75
	ld   h, a                                        ; $77d1: $67
	ld   e, c                                        ; $77d2: $59
	ld   sp, hl                                      ; $77d3: $f9
	dec  c                                           ; $77d4: $0d
	nop                                              ; $77d5: $00
	ld   a, [bc]                                     ; $77d6: $0a
	inc  e                                           ; $77d7: $1c
	ld   c, $03                                      ; $77d8: $0e $03
	inc  bc                                          ; $77da: $03
	ld   bc, $9402                                   ; $77db: $01 $02 $94
	inc  bc                                          ; $77de: $03
	ld   l, e                                        ; $77df: $6b
	ld   a, b                                        ; $77e0: $78
	db   $e4                                         ; $77e1: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77e2: $cf
	ld   [hl], l                                     ; $77e3: $75
	ld   h, a                                        ; $77e4: $67
	ld   e, c                                        ; $77e5: $59
	ld   sp, hl                                      ; $77e6: $f9
	dec  c                                           ; $77e7: $0d
	ld   a, b                                        ; $77e8: $78
	and  c                                           ; $77e9: $a1
	ld   l, [hl]                                     ; $77ea: $6e
	ld   e, c                                        ; $77eb: $59
	sbc  [hl]                                        ; $77ec: $9e
	dec  b                                           ; $77ed: $05
	ld   c, h                                        ; $77ee: $4c
	ld   l, b                                        ; $77ef: $68
	ld   e, c                                        ; $77f0: $59
	ld   h, l                                        ; $77f1: $65
	ld   d, d                                        ; $77f2: $52
	dec  c                                           ; $77f3: $0d
	ld   [hl], l                                     ; $77f4: $75
	ld   h, a                                        ; $77f5: $67
	ld   a, e                                        ; $77f6: $7b
	rst  $38                                         ; $77f7: $ff
	rst  $38                                         ; $77f8: $ff
	dec  c                                           ; $77f9: $0d
	nop                                              ; $77fa: $00
	ld   a, [bc]                                     ; $77fb: $0a
	inc  e                                           ; $77fc: $1c
	ld   c, $00                                      ; $77fd: $0e $00
	nop                                              ; $77ff: $00
	ld   bc, $9166                                   ; $7800: $01 $66 $91
	ld   d, b                                        ; $7803: $50
	sbc  [hl]                                        ; $7804: $9e
	inc  b                                           ; $7805: $04
	jr   jr_041_787c                                 ; $7806: $18 $74

	ld   [hl], h                                     ; $7808: $74
	adc  l                                           ; $7809: $8d
	ld   [hl], h                                     ; $780a: $74
	ld   [bc], a                                     ; $780b: $02
	inc  [hl]                                        ; $780c: $34
	ld   h, e                                        ; $780d: $63
	ld   d, d                                        ; $780e: $52
	sbc  a                                           ; $780f: $9f
	dec  c                                           ; $7810: $0d
	db   $d3                                         ; $7811: $d3
	push af                                          ; $7812: $f5
	ret                                              ; $7813: $c9


	ld   a, l                                        ; $7814: $7d
	sbc  [hl]                                        ; $7815: $9e
	ld   h, a                                        ; $7816: $67
	ld   [hl], c                                     ; $7817: $71
	ld   a, a                                        ; $7818: $7f
	ld   e, l                                        ; $7819: $5d
	ld   [hl], h                                     ; $781a: $74
	sbc  [hl]                                        ; $781b: $9e
	ld   e, b                                        ; $781c: $58
	inc  bc                                          ; $781d: $03
	jp   $0d79                                       ; $781e: $c3 $79 $0d


	ld   d, b                                        ; $7821: $50
	ld   d, h                                        ; $7822: $54
	inc  bc                                          ; $7823: $03
	ld   l, d                                        ; $7824: $6a
	add  a                                           ; $7825: $87
	inc  b                                           ; $7826: $04
	sub  d                                           ; $7827: $92
	ld   [hl], l                                     ; $7828: $75
	ld   h, a                                        ; $7829: $67
	sbc  a                                           ; $782a: $9f
	dec  c                                           ; $782b: $0d
	nop                                              ; $782c: $00
	ld   a, [bc]                                     ; $782d: $0a
	add  hl, de                                      ; $782e: $19
	dec  b                                           ; $782f: $05
	inc  bc                                          ; $7830: $03
	ld   b, $20                                      ; $7831: $06 $20
	ld   [bc], a                                     ; $7833: $02
	ld   b, [hl]                                     ; $7834: $46
	ld   h, l                                        ; $7835: $65
	nop                                              ; $7836: $00
	nop                                              ; $7837: $00
	xor  $e4                                         ; $7838: $ee $e4
	push af                                          ; $783a: $f5
	nop                                              ; $783b: $00
	ld   bc, $0358                                   ; $783c: $01 $58 $03
	inc  l                                           ; $783f: $2c
	nop                                              ; $7840: $00
	ld   [bc], a                                     ; $7841: $02
	rlca                                             ; $7842: $07
	adc  [hl]                                        ; $7843: $8e
	inc  d                                           ; $7844: $14
	ld   [bc], a                                     ; $7845: $02
	inc  bc                                          ; $7846: $03
	ld   bc, $2000                                   ; $7847: $01 $00 $20
	nop                                              ; $784a: $00
	rlca                                             ; $784b: $07
	dec  sp                                          ; $784c: $3b
	dec  d                                           ; $784d: $15
	ld   [bc], a                                     ; $784e: $02
	inc  bc                                          ; $784f: $03
	ld   bc, $2001                                   ; $7850: $01 $01 $20
	nop                                              ; $7853: $00
	rlca                                             ; $7854: $07
	ld   a, [de]                                     ; $7855: $1a
	ld   d, $02                                      ; $7856: $16 $02
	inc  bc                                          ; $7858: $03
	ld   bc, $2002                                   ; $7859: $01 $02 $20
	nop                                              ; $785c: $00
	ld   b, $fb                                      ; $785d: $06 $fb
	ld   d, $0f                                      ; $785f: $16 $0f
	nop                                              ; $7861: $00
	ld   bc, $6701                                   ; $7862: $01 $01 $67
	ld   [hl], c                                     ; $7865: $71
	ld   a, a                                        ; $7866: $7f
	ld   e, l                                        ; $7867: $5d
	ld   [hl], h                                     ; $7868: $74
	sbc  [hl]                                        ; $7869: $9e
	ld   e, b                                        ; $786a: $58
	inc  bc                                          ; $786b: $03
	jp   $0279                                       ; $786c: $c3 $79 $02


	ld   a, e                                        ; $786f: $7b
	ld   d, h                                        ; $7870: $54
	halt                                             ; $7871: $76
	dec  c                                           ; $7872: $0d
	ld   d, d                                        ; $7873: $52
	ld   d, [hl]                                     ; $7874: $56
	ld   a, [hl]                                     ; $7875: $7e
	sbc  [hl]                                        ; $7876: $9e
	ld   b, $20                                      ; $7877: $06 $20

Jump_041_7879:
	ld   [bc], a                                     ; $7879: $02
	ld   b, [hl]                                     ; $787a: $46
	ld   h, l                                        ; $787b: $65

jr_041_787c:
	ld   [hl], l                                     ; $787c: $75
	ld   h, a                                        ; $787d: $67
	ld   a, e                                        ; $787e: $7b
	sbc  a                                           ; $787f: $9f
	dec  c                                           ; $7880: $0d
	nop                                              ; $7881: $00
	ld   a, [bc]                                     ; $7882: $0a
	rrca                                             ; $7883: $0f
	ld   c, $01                                      ; $7884: $0e $01
	ld   bc, $1804                                   ; $7886: $01 $04 $18
	ld   l, l                                        ; $7889: $6d
	sbc  b                                           ; $788a: $98
	ld   [hl], l                                     ; $788b: $75
	db   $fc                                         ; $788c: $fc
	ld   h, a                                        ; $788d: $67
	sbc  a                                           ; $788e: $9f
	dec  c                                           ; $788f: $0d
	nop                                              ; $7890: $00
	ld   a, [bc]                                     ; $7891: $0a
	rrca                                             ; $7892: $0f
	nop                                              ; $7893: $00
	ld   bc, $5601                                   ; $7894: $01 $01 $56
	db   $fc                                         ; $7897: $fc
	ld   [bc], a                                     ; $7898: $02
	ld   b, $02                                      ; $7899: $06 $02
	bit  6, l                                        ; $789b: $cb $75
	ld   h, a                                        ; $789d: $67
	ld   a, e                                        ; $789e: $7b
	db   $fc                                         ; $789f: $fc
	sbc  a                                           ; $78a0: $9f
	dec  c                                           ; $78a1: $0d
	ld   b, $5b                                      ; $78a2: $06 $5b
	ld   h, e                                        ; $78a4: $63
	and  c                                           ; $78a5: $a1
	ld   e, d                                        ; $78a6: $5a
	sbc  [hl]                                        ; $78a7: $9e
	ld   b, $20                                      ; $78a8: $06 $20
	ld   [bc], a                                     ; $78aa: $02
	ld   b, [hl]                                     ; $78ab: $46
	ld   h, l                                        ; $78ac: $65
	ld   [bc], a                                     ; $78ad: $02
	sub  h                                           ; $78ae: $94
	inc  bc                                          ; $78af: $03
	ld   l, e                                        ; $78b0: $6b
	ld   a, b                                        ; $78b1: $78
	and  c                                           ; $78b2: $a1
	ld   [hl], h                                     ; $78b3: $74
	sbc  a                                           ; $78b4: $9f
	dec  c                                           ; $78b5: $0d
	nop                                              ; $78b6: $00
	ld   a, [bc]                                     ; $78b7: $0a
	inc  e                                           ; $78b8: $1c
	ld   c, $03                                      ; $78b9: $0e $03
	inc  bc                                          ; $78bb: $03
	ld   bc, $2006                                   ; $78bc: $01 $06 $20
	ld   [bc], a                                     ; $78bf: $02
	ld   b, [hl]                                     ; $78c0: $46
	ld   h, l                                        ; $78c1: $65
	ld   a, h                                        ; $78c2: $7c
	ld   h, c                                        ; $78c3: $61
	halt                                             ; $78c4: $76
	ld   [bc], a                                     ; $78c5: $02
	ld   h, l                                        ; $78c6: $65
	ld   d, [hl]                                     ; $78c7: $56
	ld   l, l                                        ; $78c8: $6d
	ld   l, [hl]                                     ; $78c9: $6e
	ld   e, a                                        ; $78ca: $5f
	ld   [hl], l                                     ; $78cb: $75
	dec  c                                           ; $78cc: $0d
	sub  b                                           ; $78cd: $90
	ld   d, h                                        ; $78ce: $54
	sbc  [hl]                                        ; $78cf: $9e
	ld   [bc], a                                     ; $78d0: $02
	xor  [hl]                                        ; $78d1: $ae
	ld   a, h                                        ; $78d2: $7c
	inc  b                                           ; $78d3: $04
	dec  bc                                          ; $78d4: $0b
	ld   e, d                                        ; $78d5: $5a
	ld   h, a                                        ; $78d6: $67
	ld   [hl], c                                     ; $78d7: $71
	ld   a, a                                        ; $78d8: $7f
	ld   e, l                                        ; $78d9: $5d
	dec  c                                           ; $78da: $0d
	ld   a, b                                        ; $78db: $78
	ld   [hl], c                                     ; $78dc: $71
	ld   l, a                                        ; $78dd: $6f
	sub  c                                           ; $78de: $91
	ld   [hl], c                                     ; $78df: $71
	ld   [hl], h                                     ; $78e0: $74
	rst  $38                                         ; $78e1: $ff
	rst  $38                                         ; $78e2: $ff
	dec  c                                           ; $78e3: $0d
	nop                                              ; $78e4: $00
	ld   a, [bc]                                     ; $78e5: $0a
	rrca                                             ; $78e6: $0f
	ld   c, $00                                      ; $78e7: $0e $00
	ld   bc, $7d75                                   ; $78e9: $01 $75 $7d
	sbc  [hl]                                        ; $78ec: $9e
	ld   d, b                                        ; $78ed: $50
	ld   l, l                                        ; $78ee: $6d
	ld   h, l                                        ; $78ef: $65
	ld   a, l                                        ; $78f0: $7d
	inc  bc                                          ; $78f1: $03
	dec  c                                           ; $78f2: $0d
	ld   [bc], a                                     ; $78f3: $02
	jp   $0d5a                                       ; $78f4: $c3 $5a $0d


	ld   d, b                                        ; $78f7: $50
	sbc  b                                           ; $78f8: $98
	adc  h                                           ; $78f9: $8c
	ld   h, a                                        ; $78fa: $67
	ld   a, h                                        ; $78fb: $7c
	ld   [hl], l                                     ; $78fc: $75
	sbc  [hl]                                        ; $78fd: $9e
	ld   h, c                                        ; $78fe: $61
	sbc  d                                           ; $78ff: $9a
	ld   [hl], l                                     ; $7900: $75
	rst  $38                                         ; $7901: $ff
	rst  $38                                         ; $7902: $ff
	dec  c                                           ; $7903: $0d
	nop                                              ; $7904: $00
	ld   a, [bc]                                     ; $7905: $0a
	dec  b                                           ; $7906: $05
	add  b                                           ; $7907: $80
	and  b                                           ; $7908: $a0
	ld   bc, $0001                                   ; $7909: $01 $01 $00
	nop                                              ; $790c: $00
	rrca                                             ; $790d: $0f
	nop                                              ; $790e: $00
	ld   bc, $6701                                   ; $790f: $01 $01 $67
	ld   [hl], c                                     ; $7912: $71
	ld   a, a                                        ; $7913: $7f
	ld   e, l                                        ; $7914: $5d
	ld   [hl], h                                     ; $7915: $74
	sbc  [hl]                                        ; $7916: $9e
	ld   e, b                                        ; $7917: $58
	inc  bc                                          ; $7918: $03
	jp   $0279                                       ; $7919: $c3 $79 $02


	ld   a, e                                        ; $791c: $7b
	ld   d, h                                        ; $791d: $54
	halt                                             ; $791e: $76
	dec  c                                           ; $791f: $0d
	ld   d, d                                        ; $7920: $52
	ld   d, [hl]                                     ; $7921: $56
	ld   a, [hl]                                     ; $7922: $7e
	sbc  [hl]                                        ; $7923: $9e
	xor  $e4                                         ; $7924: $ee $e4
	push af                                          ; $7926: $f5
	ld   [hl], l                                     ; $7927: $75
	ld   h, a                                        ; $7928: $67
	ld   a, e                                        ; $7929: $7b
	sbc  a                                           ; $792a: $9f
	dec  c                                           ; $792b: $0d
	nop                                              ; $792c: $00
	ld   a, [bc]                                     ; $792d: $0a
	rrca                                             ; $792e: $0f
	ld   c, $01                                      ; $792f: $0e $01
	ld   bc, $687d                                   ; $7931: $01 $7d $68
	sbc  d                                           ; $7934: $9a
	db   $fc                                         ; $7935: $fc
	sbc  a                                           ; $7936: $9f
	dec  c                                           ; $7937: $0d
	xor  $e4                                         ; $7938: $ee $e4
	push af                                          ; $793a: $f5
	ld   a, l                                        ; $793b: $7d
	ld   e, b                                        ; $793c: $58
	inc  bc                                          ; $793d: $03
	jp   $0276                                       ; $793e: $c3 $76 $02


	sbc  l                                           ; $7941: $9d
	ld   d, h                                        ; $7942: $54
	sub  [hl]                                        ; $7943: $96
	sbc  b                                           ; $7944: $98
	sub  b                                           ; $7945: $90
	dec  c                                           ; $7946: $0d
	ld   [bc], a                                     ; $7947: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7948: $cf
	inc  bc                                          ; $7949: $03
	jp   Jump_041_6775                               ; $794a: $c3 $75 $67


	sub  [hl]                                        ; $794d: $96
	sbc  a                                           ; $794e: $9f
	dec  c                                           ; $794f: $0d
	nop                                              ; $7950: $00
	ld   a, [bc]                                     ; $7951: $0a
	rrca                                             ; $7952: $0f
	ld   c, $01                                      ; $7953: $0e $01
	ld   bc, $6d50                                   ; $7955: $01 $50 $6d
	ld   h, l                                        ; $7958: $65
	ld   a, h                                        ; $7959: $7c
	ld   [bc], a                                     ; $795a: $02
	sub  h                                           ; $795b: $94
	inc  bc                                          ; $795c: $03
	ld   l, e                                        ; $795d: $6b
	ld   a, b                                        ; $795e: $78
	db   $e4                                         ; $795f: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7960: $cf
	ld   a, l                                        ; $7961: $7d
	dec  c                                           ; $7962: $0d
	ld   b, $20                                      ; $7963: $06 $20
	ld   [bc], a                                     ; $7965: $02
	ld   b, [hl]                                     ; $7966: $46
	ld   h, l                                        ; $7967: $65
	ld   a, b                                        ; $7968: $78
	and  c                                           ; $7969: $a1
	ld   [hl], l                                     ; $796a: $75
	ld   h, a                                        ; $796b: $67
	sbc  a                                           ; $796c: $9f
	dec  c                                           ; $796d: $0d
	nop                                              ; $796e: $00
	ld   a, [bc]                                     ; $796f: $0a
	rrca                                             ; $7970: $0f
	nop                                              ; $7971: $00
	ld   bc, $6b01                                   ; $7972: $01 $01 $6b
	ld   d, h                                        ; $7975: $54
	ld   e, c                                        ; $7976: $59
	rst  $38                                         ; $7977: $ff
	rst  $38                                         ; $7978: $ff
	db   $10                                         ; $7979: $10
	ld   [hl], l                                     ; $797a: $75
	sub  b                                           ; $797b: $90
	ld   [bc], a                                     ; $797c: $02
	ld   b, $02                                      ; $797d: $06 $02
	bit  6, l                                        ; $797f: $cb $75
	ld   h, a                                        ; $7981: $67
	ld   a, e                                        ; $7982: $7b
	sbc  a                                           ; $7983: $9f
	dec  c                                           ; $7984: $0d
	ld   b, $5b                                      ; $7985: $06 $5b
	ld   h, e                                        ; $7987: $63
	and  c                                           ; $7988: $a1
	ld   e, d                                        ; $7989: $5a
	sbc  [hl]                                        ; $798a: $9e
	ld   b, $20                                      ; $798b: $06 $20
	ld   [bc], a                                     ; $798d: $02
	ld   b, [hl]                                     ; $798e: $46
	ld   h, l                                        ; $798f: $65
	ld   [bc], a                                     ; $7990: $02
	sub  h                                           ; $7991: $94
	inc  bc                                          ; $7992: $03
	ld   l, e                                        ; $7993: $6b
	ld   a, b                                        ; $7994: $78
	and  c                                           ; $7995: $a1
	ld   [hl], h                                     ; $7996: $74
	sbc  a                                           ; $7997: $9f
	dec  c                                           ; $7998: $0d
	nop                                              ; $7999: $00
	ld   a, [bc]                                     ; $799a: $0a
	ld   bc, $2006                                   ; $799b: $01 $06 $20
	ld   [bc], a                                     ; $799e: $02
	ld   b, [hl]                                     ; $799f: $46
	ld   h, l                                        ; $79a0: $65
	ld   a, h                                        ; $79a1: $7c
	ld   h, c                                        ; $79a2: $61
	halt                                             ; $79a3: $76
	ld   [bc], a                                     ; $79a4: $02
	ld   h, l                                        ; $79a5: $65
	ld   d, [hl]                                     ; $79a6: $56
	ld   l, l                                        ; $79a7: $6d
	ld   l, [hl]                                     ; $79a8: $6e
	ld   e, a                                        ; $79a9: $5f
	ld   [hl], l                                     ; $79aa: $75
	dec  c                                           ; $79ab: $0d
	sub  b                                           ; $79ac: $90
	ld   d, h                                        ; $79ad: $54
	sbc  [hl]                                        ; $79ae: $9e
	ld   [bc], a                                     ; $79af: $02
	xor  [hl]                                        ; $79b0: $ae
	ld   a, h                                        ; $79b1: $7c
	inc  b                                           ; $79b2: $04
	dec  bc                                          ; $79b3: $0b
	ld   e, d                                        ; $79b4: $5a
	ld   h, a                                        ; $79b5: $67
	ld   [hl], c                                     ; $79b6: $71
	ld   a, a                                        ; $79b7: $7f
	ld   e, l                                        ; $79b8: $5d
	dec  c                                           ; $79b9: $0d
	ld   a, b                                        ; $79ba: $78
	ld   [hl], c                                     ; $79bb: $71
	ld   l, a                                        ; $79bc: $6f
	sub  c                                           ; $79bd: $91
	ld   [hl], c                                     ; $79be: $71
	ld   [hl], h                                     ; $79bf: $74
	rst  $38                                         ; $79c0: $ff
	rst  $38                                         ; $79c1: $ff
	dec  c                                           ; $79c2: $0d
	nop                                              ; $79c3: $00
	ld   a, [bc]                                     ; $79c4: $0a
	rrca                                             ; $79c5: $0f
	ld   c, $00                                      ; $79c6: $0e $00
	ld   bc, $7d75                                   ; $79c8: $01 $75 $7d
	sbc  [hl]                                        ; $79cb: $9e
	ld   d, b                                        ; $79cc: $50
	ld   l, l                                        ; $79cd: $6d
	ld   h, l                                        ; $79ce: $65
	ld   a, l                                        ; $79cf: $7d
	inc  bc                                          ; $79d0: $03
	dec  c                                           ; $79d1: $0d
	ld   [bc], a                                     ; $79d2: $02
	jp   $0d5a                                       ; $79d3: $c3 $5a $0d


	ld   d, b                                        ; $79d6: $50
	sbc  b                                           ; $79d7: $98
	adc  h                                           ; $79d8: $8c
	ld   h, a                                        ; $79d9: $67
	ld   a, h                                        ; $79da: $7c
	ld   [hl], l                                     ; $79db: $75
	sbc  [hl]                                        ; $79dc: $9e
	ld   h, c                                        ; $79dd: $61
	sbc  d                                           ; $79de: $9a
	ld   [hl], l                                     ; $79df: $75
	rst  $38                                         ; $79e0: $ff
	rst  $38                                         ; $79e1: $ff
	dec  c                                           ; $79e2: $0d
	nop                                              ; $79e3: $00
	ld   a, [bc]                                     ; $79e4: $0a
	dec  b                                           ; $79e5: $05
	add  b                                           ; $79e6: $80
	and  b                                           ; $79e7: $a0
	ld   bc, $0001                                   ; $79e8: $01 $01 $00
	nop                                              ; $79eb: $00
	rrca                                             ; $79ec: $0f
	nop                                              ; $79ed: $00
	ld   bc, $ba01                                   ; $79ee: $01 $01 $ba
	call nz, $a5d2                                   ; $79f1: $c4 $d2 $a5
	halt                                             ; $79f4: $76
	ld   [bc], a                                     ; $79f5: $02
	sbc  l                                           ; $79f6: $9d
	ld   d, [hl]                                     ; $79f7: $56
	ld   a, [hl]                                     ; $79f8: $7e
	sbc  [hl]                                        ; $79f9: $9e
	cp   e                                           ; $79fa: $bb
	pop  de                                          ; $79fb: $d1
	db   $ec                                         ; $79fc: $ec
	dec  c                                           ; $79fd: $0d
	ld   e, b                                        ; $79fe: $58
	inc  bc                                          ; $79ff: $03
	inc  l                                           ; $7a00: $2c
	ld   [hl], l                                     ; $7a01: $75
	ld   h, a                                        ; $7a02: $67
	ld   a, e                                        ; $7a03: $7b
	ld   a, [$000d]                                  ; $7a04: $fa $0d $00
	ld   a, [bc]                                     ; $7a07: $0a
	rrca                                             ; $7a08: $0f
	ld   c, $03                                      ; $7a09: $0e $03
	ld   bc, $687d                                   ; $7a0b: $01 $7d $68
	sbc  d                                           ; $7a0e: $9a
	ld   [hl], l                                     ; $7a0f: $75
	ld   h, a                                        ; $7a10: $67
	sbc  a                                           ; $7a11: $9f
	dec  c                                           ; $7a12: $0d
	ld   e, b                                        ; $7a13: $58
	inc  bc                                          ; $7a14: $03
	inc  l                                           ; $7a15: $2c
	ld   a, l                                        ; $7a16: $7d
	cp   d                                           ; $7a17: $ba
	call nz, $a5d2                                   ; $7a18: $c4 $d2 $a5
	ld   [hl], l                                     ; $7a1b: $75
	ld   h, a                                        ; $7a1c: $67
	ld   e, a                                        ; $7a1d: $5f
	ld   [hl], a                                     ; $7a1e: $77
	sbc  [hl]                                        ; $7a1f: $9e
	dec  c                                           ; $7a20: $0d
	ld   e, b                                        ; $7a21: $58
	inc  bc                                          ; $7a22: $03
	jp   Jump_041_7d79                               ; $7a23: $c3 $79 $7d


	ld   d, b                                        ; $7a26: $50
	ld   d, d                                        ; $7a27: $52
	adc  h                                           ; $7a28: $8c
	ld   l, c                                        ; $7a29: $69
	and  c                                           ; $7a2a: $a1
	sub  [hl]                                        ; $7a2b: $96
	sbc  a                                           ; $7a2c: $9f
	dec  c                                           ; $7a2d: $0d
	nop                                              ; $7a2e: $00
	ld   a, [bc]                                     ; $7a2f: $0a
	rrca                                             ; $7a30: $0f
	ld   c, $01                                      ; $7a31: $0e $01
	ld   bc, $6d50                                   ; $7a33: $01 $50 $6d
	ld   h, l                                        ; $7a36: $65
	ld   a, h                                        ; $7a37: $7c
	ld   [bc], a                                     ; $7a38: $02
	sub  h                                           ; $7a39: $94
	inc  bc                                          ; $7a3a: $03
	ld   l, e                                        ; $7a3b: $6b
	ld   a, b                                        ; $7a3c: $78
	db   $e4                                         ; $7a3d: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a3e: $cf
	ld   a, l                                        ; $7a3f: $7d
	dec  c                                           ; $7a40: $0d
	ld   b, $20                                      ; $7a41: $06 $20
	ld   [bc], a                                     ; $7a43: $02
	ld   b, [hl]                                     ; $7a44: $46
	ld   h, l                                        ; $7a45: $65
	ld   a, b                                        ; $7a46: $78
	and  c                                           ; $7a47: $a1
	ld   [hl], l                                     ; $7a48: $75
	ld   h, a                                        ; $7a49: $67
	sbc  a                                           ; $7a4a: $9f
	dec  c                                           ; $7a4b: $0d
	nop                                              ; $7a4c: $00
	ld   a, [bc]                                     ; $7a4d: $0a
	rrca                                             ; $7a4e: $0f
	nop                                              ; $7a4f: $00
	ld   bc, $6b01                                   ; $7a50: $01 $01 $6b
	ld   d, h                                        ; $7a53: $54
	ld   a, b                                        ; $7a54: $78
	and  c                                           ; $7a55: $a1
	ld   [hl], l                                     ; $7a56: $75
	ld   h, a                                        ; $7a57: $67
	ld   e, c                                        ; $7a58: $59
	sbc  a                                           ; $7a59: $9f
	dec  c                                           ; $7a5a: $0d
	ld   [hl], l                                     ; $7a5b: $75
	sub  b                                           ; $7a5c: $90
	ld   [bc], a                                     ; $7a5d: $02
	ld   b, $02                                      ; $7a5e: $06 $02
	bit  6, l                                        ; $7a60: $cb $75
	ld   h, a                                        ; $7a62: $67
	ld   a, e                                        ; $7a63: $7b
	sbc  a                                           ; $7a64: $9f
	dec  c                                           ; $7a65: $0d
	ld   b, $5b                                      ; $7a66: $06 $5b
	ld   h, e                                        ; $7a68: $63
	and  c                                           ; $7a69: $a1
	ld   e, d                                        ; $7a6a: $5a
	sbc  [hl]                                        ; $7a6b: $9e
	ld   b, $20                                      ; $7a6c: $06 $20
	ld   [bc], a                                     ; $7a6e: $02
	ld   b, [hl]                                     ; $7a6f: $46
	ld   h, l                                        ; $7a70: $65
	ld   [bc], a                                     ; $7a71: $02
	sub  h                                           ; $7a72: $94
	inc  bc                                          ; $7a73: $03
	ld   l, e                                        ; $7a74: $6b
	ld   a, b                                        ; $7a75: $78
	and  c                                           ; $7a76: $a1
	ld   [hl], h                                     ; $7a77: $74
	sbc  a                                           ; $7a78: $9f
	dec  c                                           ; $7a79: $0d
	nop                                              ; $7a7a: $00
	ld   a, [bc]                                     ; $7a7b: $0a
	ld   bc, $2006                                   ; $7a7c: $01 $06 $20
	ld   [bc], a                                     ; $7a7f: $02
	ld   b, [hl]                                     ; $7a80: $46
	ld   h, l                                        ; $7a81: $65
	ld   a, h                                        ; $7a82: $7c
	ld   h, c                                        ; $7a83: $61
	halt                                             ; $7a84: $76
	ld   [bc], a                                     ; $7a85: $02
	ld   h, l                                        ; $7a86: $65
	ld   d, [hl]                                     ; $7a87: $56
	ld   l, l                                        ; $7a88: $6d
	ld   l, [hl]                                     ; $7a89: $6e
	ld   e, a                                        ; $7a8a: $5f
	ld   [hl], l                                     ; $7a8b: $75
	dec  c                                           ; $7a8c: $0d
	sub  b                                           ; $7a8d: $90
	ld   d, h                                        ; $7a8e: $54
	sbc  [hl]                                        ; $7a8f: $9e
	ld   [bc], a                                     ; $7a90: $02
	xor  [hl]                                        ; $7a91: $ae
	ld   a, h                                        ; $7a92: $7c
	inc  b                                           ; $7a93: $04
	dec  bc                                          ; $7a94: $0b
	ld   e, d                                        ; $7a95: $5a
	ld   h, a                                        ; $7a96: $67
	ld   [hl], c                                     ; $7a97: $71
	ld   a, a                                        ; $7a98: $7f
	ld   e, l                                        ; $7a99: $5d
	dec  c                                           ; $7a9a: $0d
	ld   a, b                                        ; $7a9b: $78
	ld   [hl], c                                     ; $7a9c: $71
	ld   l, a                                        ; $7a9d: $6f
	sub  c                                           ; $7a9e: $91
	ld   [hl], c                                     ; $7a9f: $71
	ld   [hl], h                                     ; $7aa0: $74
	rst  $38                                         ; $7aa1: $ff
	rst  $38                                         ; $7aa2: $ff
	dec  c                                           ; $7aa3: $0d
	nop                                              ; $7aa4: $00
	ld   a, [bc]                                     ; $7aa5: $0a
	rrca                                             ; $7aa6: $0f
	ld   c, $00                                      ; $7aa7: $0e $00
	ld   bc, $7d75                                   ; $7aa9: $01 $75 $7d
	sbc  [hl]                                        ; $7aac: $9e
	ld   d, b                                        ; $7aad: $50
	ld   l, l                                        ; $7aae: $6d
	ld   h, l                                        ; $7aaf: $65
	ld   a, l                                        ; $7ab0: $7d
	inc  bc                                          ; $7ab1: $03
	dec  c                                           ; $7ab2: $0d
	ld   [bc], a                                     ; $7ab3: $02
	jp   $0d5a                                       ; $7ab4: $c3 $5a $0d


	ld   d, b                                        ; $7ab7: $50
	sbc  b                                           ; $7ab8: $98
	adc  h                                           ; $7ab9: $8c
	ld   h, a                                        ; $7aba: $67
	ld   a, h                                        ; $7abb: $7c
	ld   [hl], l                                     ; $7abc: $75
	sbc  [hl]                                        ; $7abd: $9e
	ld   h, c                                        ; $7abe: $61
	sbc  d                                           ; $7abf: $9a
	ld   [hl], l                                     ; $7ac0: $75
	rst  $38                                         ; $7ac1: $ff
	rst  $38                                         ; $7ac2: $ff
	dec  c                                           ; $7ac3: $0d
	nop                                              ; $7ac4: $00
	ld   a, [bc]                                     ; $7ac5: $0a
	dec  b                                           ; $7ac6: $05
	add  b                                           ; $7ac7: $80
	and  b                                           ; $7ac8: $a0
	ld   bc, $0001                                   ; $7ac9: $01 $01 $00
	nop                                              ; $7acc: $00
	rrca                                             ; $7acd: $0f
	ld   c, $00                                      ; $7ace: $0e $00
	ld   bc, $6f03                                   ; $7ad0: $01 $03 $6f
	ld   [bc], a                                     ; $7ad3: $02
	xor  c                                           ; $7ad4: $a9
	inc  bc                                          ; $7ad5: $03
	dec  de                                          ; $7ad6: $1b
	sbc  d                                           ; $7ad7: $9a
	ld   [hl], l                                     ; $7ad8: $75
	db   $fc                                         ; $7ad9: $fc
	ld   h, a                                        ; $7ada: $67
	sbc  a                                           ; $7adb: $9f
	dec  c                                           ; $7adc: $0d
	inc  bc                                          ; $7add: $03
	ld   c, d                                        ; $7ade: $4a
	ld   [bc], a                                     ; $7adf: $02
	or   h                                           ; $7ae0: $b4
	ld   a, l                                        ; $7ae1: $7d
	sbc  [hl]                                        ; $7ae2: $9e
	ld   b, $20                                      ; $7ae3: $06 $20
	ld   [bc], a                                     ; $7ae5: $02
	ld   b, [hl]                                     ; $7ae6: $46
	ld   h, l                                        ; $7ae7: $65
	ld   [hl], l                                     ; $7ae8: $75
	ld   h, a                                        ; $7ae9: $67
	sbc  a                                           ; $7aea: $9f
	dec  c                                           ; $7aeb: $0d
	nop                                              ; $7aec: $00
	ld   a, [bc]                                     ; $7aed: $0a
	rrca                                             ; $7aee: $0f
	nop                                              ; $7aef: $00
	ld   bc, $6b01                                   ; $7af0: $01 $01 $6b
	ld   d, h                                        ; $7af3: $54
	ld   a, b                                        ; $7af4: $78
	and  c                                           ; $7af5: $a1
	ld   [hl], l                                     ; $7af6: $75
	ld   h, a                                        ; $7af7: $67
	ld   e, c                                        ; $7af8: $59
	ld   a, [$0df9]                                  ; $7af9: $fa $f9 $0d
	ld   [hl], l                                     ; $7afc: $75
	sub  b                                           ; $7afd: $90
	ld   [bc], a                                     ; $7afe: $02
	ld   b, $02                                      ; $7aff: $06 $02
	bit  6, l                                        ; $7b01: $cb $75
	ld   h, a                                        ; $7b03: $67
	ld   a, e                                        ; $7b04: $7b
	sbc  a                                           ; $7b05: $9f
	dec  c                                           ; $7b06: $0d
	ld   b, $5b                                      ; $7b07: $06 $5b
	ld   h, e                                        ; $7b09: $63
	and  c                                           ; $7b0a: $a1
	ld   e, d                                        ; $7b0b: $5a
	sbc  [hl]                                        ; $7b0c: $9e
	ld   b, $20                                      ; $7b0d: $06 $20
	ld   [bc], a                                     ; $7b0f: $02
	ld   b, [hl]                                     ; $7b10: $46
	ld   h, l                                        ; $7b11: $65
	ld   [bc], a                                     ; $7b12: $02
	sub  h                                           ; $7b13: $94
	inc  bc                                          ; $7b14: $03
	ld   l, e                                        ; $7b15: $6b
	ld   a, b                                        ; $7b16: $78
	and  c                                           ; $7b17: $a1
	ld   [hl], h                                     ; $7b18: $74
	sbc  a                                           ; $7b19: $9f
	dec  c                                           ; $7b1a: $0d
	nop                                              ; $7b1b: $00
	ld   a, [bc]                                     ; $7b1c: $0a
	ld   bc, $2006                                   ; $7b1d: $01 $06 $20
	ld   [bc], a                                     ; $7b20: $02
	ld   b, [hl]                                     ; $7b21: $46
	ld   h, l                                        ; $7b22: $65
	ld   a, h                                        ; $7b23: $7c
	ld   h, c                                        ; $7b24: $61
	halt                                             ; $7b25: $76
	ld   [bc], a                                     ; $7b26: $02
	ld   h, l                                        ; $7b27: $65
	ld   d, [hl]                                     ; $7b28: $56
	ld   l, l                                        ; $7b29: $6d
	ld   l, [hl]                                     ; $7b2a: $6e
	ld   e, a                                        ; $7b2b: $5f
	ld   [hl], l                                     ; $7b2c: $75
	dec  c                                           ; $7b2d: $0d
	sub  b                                           ; $7b2e: $90
	ld   d, h                                        ; $7b2f: $54
	sbc  [hl]                                        ; $7b30: $9e
	ld   [bc], a                                     ; $7b31: $02
	xor  [hl]                                        ; $7b32: $ae
	ld   a, h                                        ; $7b33: $7c
	inc  b                                           ; $7b34: $04
	dec  bc                                          ; $7b35: $0b
	ld   e, d                                        ; $7b36: $5a
	ld   h, a                                        ; $7b37: $67
	ld   [hl], c                                     ; $7b38: $71
	ld   a, a                                        ; $7b39: $7f
	ld   e, l                                        ; $7b3a: $5d
	dec  c                                           ; $7b3b: $0d
	ld   a, b                                        ; $7b3c: $78
	ld   [hl], c                                     ; $7b3d: $71
	ld   l, a                                        ; $7b3e: $6f
	sub  c                                           ; $7b3f: $91
	ld   [hl], c                                     ; $7b40: $71
	ld   [hl], h                                     ; $7b41: $74
	rst  $38                                         ; $7b42: $ff
	rst  $38                                         ; $7b43: $ff
	dec  c                                           ; $7b44: $0d
	nop                                              ; $7b45: $00
	ld   a, [bc]                                     ; $7b46: $0a
	rrca                                             ; $7b47: $0f
	ld   c, $00                                      ; $7b48: $0e $00
	ld   bc, $7d75                                   ; $7b4a: $01 $75 $7d
	sbc  [hl]                                        ; $7b4d: $9e
	ld   d, b                                        ; $7b4e: $50
	ld   l, l                                        ; $7b4f: $6d
	ld   h, l                                        ; $7b50: $65
	ld   a, l                                        ; $7b51: $7d
	inc  bc                                          ; $7b52: $03
	dec  c                                           ; $7b53: $0d
	ld   [bc], a                                     ; $7b54: $02
	jp   $0d5a                                       ; $7b55: $c3 $5a $0d


	ld   d, b                                        ; $7b58: $50
	sbc  b                                           ; $7b59: $98
	adc  h                                           ; $7b5a: $8c
	ld   h, a                                        ; $7b5b: $67
	ld   a, h                                        ; $7b5c: $7c
	ld   [hl], l                                     ; $7b5d: $75
	sbc  [hl]                                        ; $7b5e: $9e
	ld   h, c                                        ; $7b5f: $61
	sbc  d                                           ; $7b60: $9a
	ld   [hl], l                                     ; $7b61: $75
	rst  $38                                         ; $7b62: $ff
	rst  $38                                         ; $7b63: $ff
	dec  c                                           ; $7b64: $0d
	nop                                              ; $7b65: $00
	ld   a, [bc]                                     ; $7b66: $0a
	dec  b                                           ; $7b67: $05
	add  b                                           ; $7b68: $80
	and  b                                           ; $7b69: $a0
	ld   bc, $0001                                   ; $7b6a: $01 $01 $00
	nop                                              ; $7b6d: $00
	inc  e                                           ; $7b6e: $1c
	ld   c, $00                                      ; $7b6f: $0e $00
	nop                                              ; $7b71: $00
	ld   bc, $9750                                   ; $7b72: $01 $50 $97
	sbc  [hl]                                        ; $7b75: $9e
	ld   [$6300], sp                                 ; $7b76: $08 $00 $63
	and  c                                           ; $7b79: $a1
	sbc  a                                           ; $7b7a: $9f
	dec  c                                           ; $7b7b: $0d
	ld   d, d                                        ; $7b7c: $52
	sub  a                                           ; $7b7d: $97
	ld   [hl], c                                     ; $7b7e: $71
	ld   h, l                                        ; $7b7f: $65
	sub  c                                           ; $7b80: $91
	ld   d, d                                        ; $7b81: $52
	adc  h                                           ; $7b82: $8c
	ld   l, c                                        ; $7b83: $69
	rst  $38                                         ; $7b84: $ff
	rst  $38                                         ; $7b85: $ff
	halt                                             ; $7b86: $76
	sbc  [hl]                                        ; $7b87: $9e
	ld   [bc], a                                     ; $7b88: $02
	sbc  l                                           ; $7b89: $9d
	ld   d, d                                        ; $7b8a: $52
	dec  c                                           ; $7b8b: $0d
	ld   l, l                                        ; $7b8c: $6d
	ld   d, d                                        ; $7b8d: $52
	halt                                             ; $7b8e: $76
	ld   h, c                                        ; $7b8f: $61
	sbc  e                                           ; $7b90: $9b
	ld   a, b                                        ; $7b91: $78
	ld   a, h                                        ; $7b92: $7c
	ld   [hl], l                                     ; $7b93: $75
	ld   h, a                                        ; $7b94: $67
	ld   e, d                                        ; $7b95: $5a
	rst  $38                                         ; $7b96: $ff
	rst  $38                                         ; $7b97: $ff
	dec  c                                           ; $7b98: $0d
	nop                                              ; $7b99: $00
	ld   a, [bc]                                     ; $7b9a: $0a
	rrca                                             ; $7b9b: $0f
	nop                                              ; $7b9c: $00
	ld   bc, $9d01                                   ; $7b9d: $01 $01 $9d
	ld   e, c                                        ; $7ba0: $59
	ld   [hl], c                                     ; $7ba1: $71
	ld   [hl], h                                     ; $7ba2: $74
	adc  h                                           ; $7ba3: $8c
	ld   h, a                                        ; $7ba4: $67
	sub  [hl]                                        ; $7ba5: $96
	sbc  a                                           ; $7ba6: $9f
	dec  c                                           ; $7ba7: $0d
	rst  $10                                         ; $7ba8: $d7
	rst  $28                                         ; $7ba9: $ef
	rst  JumpTable                                         ; $7baa: $df
	and  l                                           ; $7bab: $a5
	jp   z, $037d                                    ; $7bac: $ca $7d $03

	ld   a, c                                        ; $7baf: $79
	ld   a, c                                        ; $7bb0: $79
	ld   [de], a                                     ; $7bb1: $12
	inc  b                                           ; $7bb2: $04
	push bc                                          ; $7bb3: $c5
	ld   h, l                                        ; $7bb4: $65
	ld   e, c                                        ; $7bb5: $59
	dec  c                                           ; $7bb6: $0d
	ld   b, $1a                                      ; $7bb7: $06 $1a
	sbc  d                                           ; $7bb9: $9a
	ld   a, b                                        ; $7bba: $78
	ld   d, d                                        ; $7bbb: $52
	and  c                                           ; $7bbc: $a1
	ld   [hl], l                                     ; $7bbd: $75
	ld   h, l                                        ; $7bbe: $65
	sub  l                                           ; $7bbf: $95
	sbc  a                                           ; $7bc0: $9f
	dec  c                                           ; $7bc1: $0d
	nop                                              ; $7bc2: $00
	ld   a, [bc]                                     ; $7bc3: $0a
	inc  e                                           ; $7bc4: $1c
	ld   c, $01                                      ; $7bc5: $0e $01
	ld   bc, $7d01                                   ; $7bc7: $01 $01 $7d
	ld   d, d                                        ; $7bca: $52
	sbc  [hl]                                        ; $7bcb: $9e
	ld   l, e                                        ; $7bcc: $6b
	ld   d, h                                        ; $7bcd: $54
	ld   a, b                                        ; $7bce: $78
	and  c                                           ; $7bcf: $a1
	ld   [hl], l                                     ; $7bd0: $75
	ld   h, a                                        ; $7bd1: $67
	sbc  a                                           ; $7bd2: $9f
	dec  c                                           ; $7bd3: $0d
	ld   h, d                                        ; $7bd4: $62
	adc  a                                           ; $7bd5: $8f
	and  c                                           ; $7bd6: $a1
	ld   a, b                                        ; $7bd7: $78
	ld   h, e                                        ; $7bd8: $63
	ld   d, d                                        ; $7bd9: $52
	sbc  a                                           ; $7bda: $9f
	dec  c                                           ; $7bdb: $0d
	nop                                              ; $7bdc: $00
	ld   a, [bc]                                     ; $7bdd: $0a
	rrca                                             ; $7bde: $0f
	nop                                              ; $7bdf: $00
	ld   bc, $7601                                   ; $7be0: $01 $01 $76
	ld   h, c                                        ; $7be3: $61
	sbc  e                                           ; $7be4: $9b
	ld   [hl], l                                     ; $7be5: $75
	sbc  [hl]                                        ; $7be6: $9e
	ld   b, $5b                                      ; $7be7: $06 $5b
	ld   h, e                                        ; $7be9: $63
	and  c                                           ; $7bea: $a1
	sbc  a                                           ; $7beb: $9f
	dec  c                                           ; $7bec: $0d
	ld   l, a                                        ; $7bed: $6f
	sub  l                                           ; $7bee: $95
	ld   [hl], c                                     ; $7bef: $71
	halt                                             ; $7bf0: $76
	ld   [bc], a                                     ; $7bf1: $02
	jp   nz, Jump_041_6d5b                           ; $7bf2: $c2 $5b $6d

	ld   d, d                                        ; $7bf5: $52
	ld   h, c                                        ; $7bf6: $61
	halt                                             ; $7bf7: $76
	ld   e, d                                        ; $7bf8: $5a
	dec  c                                           ; $7bf9: $0d
	ld   d, b                                        ; $7bfa: $50
	sbc  c                                           ; $7bfb: $99
	and  c                                           ; $7bfc: $a1
	ld   [hl], l                                     ; $7bfd: $75
	ld   h, a                                        ; $7bfe: $67
	ld   e, a                                        ; $7bff: $5f
	ld   [hl], a                                     ; $7c00: $77
	rst  $38                                         ; $7c01: $ff
	rst  $38                                         ; $7c02: $ff
	dec  c                                           ; $7c03: $0d
	nop                                              ; $7c04: $00
	ld   a, [bc]                                     ; $7c05: $0a
	ld   bc, $5b06                                   ; $7c06: $01 $06 $5b
	ld   h, e                                        ; $7c09: $63
	and  c                                           ; $7c0a: $a1
	ld   a, h                                        ; $7c0b: $7c
	ld   [bc], a                                     ; $7c0c: $02
	sbc  d                                           ; $7c0d: $9a
	ld   e, e                                        ; $7c0e: $5b
	ld   a, b                                        ; $7c0f: $78
	db   $e4                                         ; $7c10: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c11: $cf
	ld   [hl], c                                     ; $7c12: $71
	ld   [hl], h                                     ; $7c13: $74
	dec  c                                           ; $7c14: $0d
	ld   a, b                                        ; $7c15: $78
	and  c                                           ; $7c16: $a1
	ld   [hl], l                                     ; $7c17: $75
	ld   h, a                                        ; $7c18: $67
	ld   e, c                                        ; $7c19: $59
	ld   sp, hl                                      ; $7c1a: $f9
	dec  c                                           ; $7c1b: $0d
	nop                                              ; $7c1c: $00
	ld   a, [bc]                                     ; $7c1d: $0a
	inc  e                                           ; $7c1e: $1c
	ld   c, $03                                      ; $7c1f: $0e $03
	inc  bc                                          ; $7c21: $03
	ld   bc, $9a02                                   ; $7c22: $01 $02 $9a
	ld   e, e                                        ; $7c25: $5b
	ld   a, b                                        ; $7c26: $78
	db   $e4                                         ; $7c27: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c28: $cf
	ld   [hl], l                                     ; $7c29: $75
	ld   h, a                                        ; $7c2a: $67
	ld   e, c                                        ; $7c2b: $59
	ld   sp, hl                                      ; $7c2c: $f9
	dec  c                                           ; $7c2d: $0d
	ld   l, e                                        ; $7c2e: $6b
	ld   d, h                                        ; $7c2f: $54
	ld   [hl], l                                     ; $7c30: $75
	ld   h, a                                        ; $7c31: $67
	ld   a, e                                        ; $7c32: $7b
	rst  $38                                         ; $7c33: $ff
	rst  $38                                         ; $7c34: $ff
	rst  $38                                         ; $7c35: $ff
	rst  $38                                         ; $7c36: $ff
	rst  $38                                         ; $7c37: $ff
	rst  $38                                         ; $7c38: $ff
	rst  $38                                         ; $7c39: $ff
	rst  $38                                         ; $7c3a: $ff
	dec  c                                           ; $7c3b: $0d
	rst  $38                                         ; $7c3c: $ff
	rst  $38                                         ; $7c3d: $ff
	rst  $38                                         ; $7c3e: $ff
	rst  $38                                         ; $7c3f: $ff
	rst  $38                                         ; $7c40: $ff
	rst  $38                                         ; $7c41: $ff
	rst  $38                                         ; $7c42: $ff
	rst  $38                                         ; $7c43: $ff
	rst  $38                                         ; $7c44: $ff
	rst  $38                                         ; $7c45: $ff
	rst  $38                                         ; $7c46: $ff
	rst  $38                                         ; $7c47: $ff
	rst  $38                                         ; $7c48: $ff
	rst  $38                                         ; $7c49: $ff
	dec  c                                           ; $7c4a: $0d
	nop                                              ; $7c4b: $00
	ld   a, [bc]                                     ; $7c4c: $0a
	inc  e                                           ; $7c4d: $1c
	ld   c, $00                                      ; $7c4e: $0e $00
	nop                                              ; $7c50: $00
	ld   bc, $9166                                   ; $7c51: $01 $66 $91
	ld   d, b                                        ; $7c54: $50
	sbc  [hl]                                        ; $7c55: $9e
	inc  b                                           ; $7c56: $04
	jr   jr_041_7ccd                                 ; $7c57: $18 $74

	ld   [hl], h                                     ; $7c59: $74
	adc  l                                           ; $7c5a: $8d
	ld   [hl], h                                     ; $7c5b: $74
	ld   [bc], a                                     ; $7c5c: $02
	inc  [hl]                                        ; $7c5d: $34
	ld   h, e                                        ; $7c5e: $63
	ld   d, d                                        ; $7c5f: $52
	sbc  a                                           ; $7c60: $9f
	dec  c                                           ; $7c61: $0d
	db   $d3                                         ; $7c62: $d3
	push af                                          ; $7c63: $f5
	ret                                              ; $7c64: $c9


	ld   a, l                                        ; $7c65: $7d
	sbc  [hl]                                        ; $7c66: $9e
	ld   e, c                                        ; $7c67: $59
	ld   l, l                                        ; $7c68: $6d
	ld   e, l                                        ; $7c69: $5d
	ld   [hl], h                                     ; $7c6a: $74
	sbc  [hl]                                        ; $7c6b: $9e
	ld   e, b                                        ; $7c6c: $58
	inc  bc                                          ; $7c6d: $03
	jp   $0d79                                       ; $7c6e: $c3 $79 $0d


	ld   d, b                                        ; $7c71: $50
	ld   d, h                                        ; $7c72: $54
	inc  bc                                          ; $7c73: $03
	ld   l, d                                        ; $7c74: $6a
	add  a                                           ; $7c75: $87
	inc  b                                           ; $7c76: $04
	sub  d                                           ; $7c77: $92
	ld   [hl], l                                     ; $7c78: $75
	ld   h, a                                        ; $7c79: $67
	sbc  a                                           ; $7c7a: $9f
	dec  c                                           ; $7c7b: $0d
	nop                                              ; $7c7c: $00
	ld   a, [bc]                                     ; $7c7d: $0a
	add  hl, de                                      ; $7c7e: $19
	dec  b                                           ; $7c7f: $05
	inc  bc                                          ; $7c80: $03
	ld   l, c                                        ; $7c81: $69
	and  c                                           ; $7c82: $a1
	add  a                                           ; $7c83: $87
	ld   d, d                                        ; $7c84: $52
	nop                                              ; $7c85: $00
	nop                                              ; $7c86: $00
	ld   e, c                                        ; $7c87: $59
	sbc  l                                           ; $7c88: $9d
	sub  a                                           ; $7c89: $97
	nop                                              ; $7c8a: $00
	ld   bc, $2006                                   ; $7c8b: $01 $06 $20
	ld   [bc], a                                     ; $7c8e: $02
	ld   b, [hl]                                     ; $7c8f: $46
	ld   h, l                                        ; $7c90: $65
	nop                                              ; $7c91: $00
	ld   [bc], a                                     ; $7c92: $02
	rlca                                             ; $7c93: $07
	rst  JumpTable                                         ; $7c94: $df
	jr   @+$04                                       ; $7c95: $18 $02

	inc  bc                                          ; $7c97: $03
	ld   bc, $2000                                   ; $7c98: $01 $00 $20
	nop                                              ; $7c9b: $00
	rlca                                             ; $7c9c: $07
	or   d                                           ; $7c9d: $b2
	add  hl, de                                      ; $7c9e: $19
	ld   [bc], a                                     ; $7c9f: $02
	inc  bc                                          ; $7ca0: $03
	ld   bc, $2001                                   ; $7ca1: $01 $01 $20
	nop                                              ; $7ca4: $00
	rlca                                             ; $7ca5: $07
	jp   nc, $021a                                   ; $7ca6: $d2 $1a $02

	inc  bc                                          ; $7ca9: $03
	ld   bc, $2002                                   ; $7caa: $01 $02 $20
	nop                                              ; $7cad: $00
	ld   b, $de                                      ; $7cae: $06 $de
	dec  de                                          ; $7cb0: $1b
	rrca                                             ; $7cb1: $0f
	nop                                              ; $7cb2: $00
	ld   bc, $5901                                   ; $7cb3: $01 $01 $59
	ld   l, l                                        ; $7cb6: $6d
	ld   e, l                                        ; $7cb7: $5d
	ld   [hl], h                                     ; $7cb8: $74
	sbc  [hl]                                        ; $7cb9: $9e
	ld   e, b                                        ; $7cba: $58
	inc  bc                                          ; $7cbb: $03
	jp   $0279                                       ; $7cbc: $c3 $79 $02


	ld   a, e                                        ; $7cbf: $7b
	ld   d, h                                        ; $7cc0: $54
	halt                                             ; $7cc1: $76
	dec  c                                           ; $7cc2: $0d
	ld   d, d                                        ; $7cc3: $52
	ld   d, [hl]                                     ; $7cc4: $56
	ld   a, [hl]                                     ; $7cc5: $7e
	sbc  [hl]                                        ; $7cc6: $9e
	ld   l, c                                        ; $7cc7: $69
	and  c                                           ; $7cc8: $a1
	add  a                                           ; $7cc9: $87
	ld   d, d                                        ; $7cca: $52
	ld   [hl], l                                     ; $7ccb: $75
	ld   h, a                                        ; $7ccc: $67

jr_041_7ccd:
	ld   a, e                                        ; $7ccd: $7b
	sbc  a                                           ; $7cce: $9f
	dec  c                                           ; $7ccf: $0d
	nop                                              ; $7cd0: $00
	ld   a, [bc]                                     ; $7cd1: $0a
	inc  e                                           ; $7cd2: $1c
	ld   c, $01                                      ; $7cd3: $0e $01
	ld   bc, $0401                                   ; $7cd5: $01 $01 $04
	jr   jr_041_7d47                                 ; $7cd8: $18 $6d

	sbc  b                                           ; $7cda: $98
	ld   [hl], l                                     ; $7cdb: $75
	db   $fc                                         ; $7cdc: $fc
	ld   h, a                                        ; $7cdd: $67
	sbc  a                                           ; $7cde: $9f
	dec  c                                           ; $7cdf: $0d
	nop                                              ; $7ce0: $00
	ld   a, [bc]                                     ; $7ce1: $0a
	ld   bc, $7192                                   ; $7ce2: $01 $92 $71
	ld   a, a                                        ; $7ce5: $7f
	sbc  b                                           ; $7ce6: $98
	sbc  [hl]                                        ; $7ce7: $9e
	dec  c                                           ; $7ce8: $0d
	inc  bc                                          ; $7ce9: $03
	adc  e                                           ; $7cea: $8b
	ld   [bc], a                                     ; $7ceb: $02
	and  [hl]                                        ; $7cec: $a6
	ld   e, d                                        ; $7ced: $5a
	ld   e, b                                        ; $7cee: $58
	ld   l, c                                        ; $7cef: $69
	and  c                                           ; $7cf0: $a1
	add  a                                           ; $7cf1: $87
	ld   d, d                                        ; $7cf2: $52
	ld   [bc], a                                     ; $7cf3: $02
	ld   hl, $a163                                   ; $7cf4: $21 $63 $a1
	ld   l, [hl]                                     ; $7cf7: $6e
	ld   e, c                                        ; $7cf8: $59
	sub  a                                           ; $7cf9: $97
	dec  c                                           ; $7cfa: $0d
	ld   [hl], l                                     ; $7cfb: $75
	ld   h, a                                        ; $7cfc: $67
	ld   e, c                                        ; $7cfd: $59
	ld   a, e                                        ; $7cfe: $7b
	sbc  a                                           ; $7cff: $9f
	dec  c                                           ; $7d00: $0d
	nop                                              ; $7d01: $00
	ld   a, [bc]                                     ; $7d02: $0a
	ld   bc, $716f                                   ; $7d03: $01 $6f $71
	ld   l, a                                        ; $7d06: $6f
	sub  c                                           ; $7d07: $91
	ld   d, d                                        ; $7d08: $52
	halt                                             ; $7d09: $76
	ld   e, e                                        ; $7d0a: $5b
	ld   e, c                                        ; $7d0b: $59
	sub  a                                           ; $7d0c: $97
	inc  bc                                          ; $7d0d: $03
	ld   l, d                                        ; $7d0e: $6a
	add  a                                           ; $7d0f: $87
	ld   [hl], h                                     ; $7d10: $74
	sbc  c                                           ; $7d11: $99
	dec  c                                           ; $7d12: $0d
	ld   e, b                                        ; $7d13: $58
	inc  b                                           ; $7d14: $04
	ld   l, $63                                      ; $7d15: $2e $63
	and  c                                           ; $7d17: $a1
	ld   a, h                                        ; $7d18: $7c
	inc  bc                                          ; $7d19: $03
	xor  h                                           ; $7d1a: $ac
	ld   [hl], c                                     ; $7d1b: $71
	ld   l, l                                        ; $7d1c: $6d
	ld   e, b                                        ; $7d1d: $58
	ld   l, c                                        ; $7d1e: $69
	and  c                                           ; $7d1f: $a1
	add  a                                           ; $7d20: $87
	ld   d, d                                        ; $7d21: $52
	ld   e, d                                        ; $7d22: $5a
	dec  c                                           ; $7d23: $0d
	inc  b                                           ; $7d24: $04
	ld   c, $02                                      ; $7d25: $0e $02
	sbc  d                                           ; $7d27: $9a
	ld   e, e                                        ; $7d28: $5b
	ld   a, b                                        ; $7d29: $78
	and  c                                           ; $7d2a: $a1
	ld   [hl], l                                     ; $7d2b: $75
	ld   h, a                                        ; $7d2c: $67
	sbc  a                                           ; $7d2d: $9f
	dec  c                                           ; $7d2e: $0d
	nop                                              ; $7d2f: $00
	ld   a, [bc]                                     ; $7d30: $0a
	ld   bc, $a161                                   ; $7d31: $01 $61 $a1
	ld   [hl], a                                     ; $7d34: $77
	sbc  [hl]                                        ; $7d35: $9e
	ld   d, h                                        ; $7d36: $54
	ld   l, a                                        ; $7d37: $6f
	ld   a, h                                        ; $7d38: $7c
	ld   e, b                                        ; $7d39: $58
	inc  b                                           ; $7d3a: $04
	ld   l, $63                                      ; $7d3b: $2e $63
	and  c                                           ; $7d3d: $a1
	ld   e, d                                        ; $7d3e: $5a
	dec  c                                           ; $7d3f: $0d
	inc  bc                                          ; $7d40: $03
	xor  h                                           ; $7d41: $ac
	ld   [hl], c                                     ; $7d42: $71
	ld   l, l                                        ; $7d43: $6d
	ld   e, b                                        ; $7d44: $58
	ld   l, c                                        ; $7d45: $69
	and  c                                           ; $7d46: $a1

jr_041_7d47:
	add  a                                           ; $7d47: $87
	ld   d, d                                        ; $7d48: $52
	sbc  [hl]                                        ; $7d49: $9e
	ld   d, d                                        ; $7d4a: $52
	ld   [hl], c                                     ; $7d4b: $71
	ld   h, l                                        ; $7d4c: $65
	sub  l                                           ; $7d4d: $95
	ld   a, c                                        ; $7d4e: $79
	dec  c                                           ; $7d4f: $0d
	inc  bc                                          ; $7d50: $03
	ld   l, d                                        ; $7d51: $6a
	add  a                                           ; $7d52: $87
	adc  h                                           ; $7d53: $8c
	ld   h, l                                        ; $7d54: $65
	sub  l                                           ; $7d55: $95
	ld   d, h                                        ; $7d56: $54
	ld   a, e                                        ; $7d57: $7b
	sbc  a                                           ; $7d58: $9f
	dec  c                                           ; $7d59: $0d
	nop                                              ; $7d5a: $00
	ld   a, [bc]                                     ; $7d5b: $0a
	inc  e                                           ; $7d5c: $1c
	ld   c, $00                                      ; $7d5d: $0e $00
	nop                                              ; $7d5f: $00
	ld   bc, $9166                                   ; $7d60: $01 $66 $91
	sbc  [hl]                                        ; $7d63: $9e
	ld   d, b                                        ; $7d64: $50
	ld   l, l                                        ; $7d65: $6d
	ld   h, l                                        ; $7d66: $65
	ld   a, l                                        ; $7d67: $7d
	inc  bc                                          ; $7d68: $03
	dec  c                                           ; $7d69: $0d
	ld   [bc], a                                     ; $7d6a: $02
	jp   $0d5a                                       ; $7d6b: $c3 $5a $0d


	ld   d, b                                        ; $7d6e: $50
	sbc  b                                           ; $7d6f: $98
	adc  h                                           ; $7d70: $8c
	ld   h, a                                        ; $7d71: $67
	ld   a, h                                        ; $7d72: $7c
	ld   [hl], l                                     ; $7d73: $75
	sbc  [hl]                                        ; $7d74: $9e
	ld   h, c                                        ; $7d75: $61
	sbc  d                                           ; $7d76: $9a
	ld   [hl], l                                     ; $7d77: $75
	rst  $38                                         ; $7d78: $ff

Jump_041_7d79:
	rst  $38                                         ; $7d79: $ff
	dec  c                                           ; $7d7a: $0d
	nop                                              ; $7d7b: $00
	ld   a, [bc]                                     ; $7d7c: $0a
	dec  b                                           ; $7d7d: $05
	add  b                                           ; $7d7e: $80
	and  c                                           ; $7d7f: $a1
	ld   bc, $0001                                   ; $7d80: $01 $01 $00
	nop                                              ; $7d83: $00
	rrca                                             ; $7d84: $0f
	nop                                              ; $7d85: $00
	ld   bc, $5901                                   ; $7d86: $01 $01 $59
	ld   l, l                                        ; $7d89: $6d
	ld   e, l                                        ; $7d8a: $5d
	ld   [hl], h                                     ; $7d8b: $74
	sbc  [hl]                                        ; $7d8c: $9e
	ld   e, b                                        ; $7d8d: $58
	inc  bc                                          ; $7d8e: $03
	jp   $0279                                       ; $7d8f: $c3 $79 $02


	ld   a, e                                        ; $7d92: $7b
	ld   d, h                                        ; $7d93: $54
	halt                                             ; $7d94: $76
	dec  c                                           ; $7d95: $0d
	ld   d, d                                        ; $7d96: $52
	ld   d, [hl]                                     ; $7d97: $56
	ld   a, [hl]                                     ; $7d98: $7e
	sbc  [hl]                                        ; $7d99: $9e
	ld   e, c                                        ; $7d9a: $59
	sbc  l                                           ; $7d9b: $9d
	sub  a                                           ; $7d9c: $97
	ld   [hl], l                                     ; $7d9d: $75
	ld   h, a                                        ; $7d9e: $67
	ld   a, e                                        ; $7d9f: $7b
	sbc  a                                           ; $7da0: $9f
	dec  c                                           ; $7da1: $0d
	nop                                              ; $7da2: $00
	ld   a, [bc]                                     ; $7da3: $0a
	rrca                                             ; $7da4: $0f
	ld   c, $00                                      ; $7da5: $0e $00
	ld   bc, $687d                                   ; $7da7: $01 $7d $68
	sbc  d                                           ; $7daa: $9a
	ld   [hl], l                                     ; $7dab: $75
	ld   h, a                                        ; $7dac: $67
	db   $fc                                         ; $7dad: $fc
	sbc  a                                           ; $7dae: $9f
	dec  c                                           ; $7daf: $0d
	ld   e, c                                        ; $7db0: $59
	sbc  l                                           ; $7db1: $9d
	sub  a                                           ; $7db2: $97
	ld   a, l                                        ; $7db3: $7d
	inc  bc                                          ; $7db4: $03
	ld   l, d                                        ; $7db5: $6a
	add  a                                           ; $7db6: $87
	inc  b                                           ; $7db7: $04
	sub  d                                           ; $7db8: $92
	ld   h, [hl]                                     ; $7db9: $66
	sub  c                                           ; $7dba: $91
	dec  c                                           ; $7dbb: $0d
	ld   d, b                                        ; $7dbc: $50
	sbc  b                                           ; $7dbd: $98
	adc  h                                           ; $7dbe: $8c
	ld   l, c                                        ; $7dbf: $69
	and  c                                           ; $7dc0: $a1
	sub  [hl]                                        ; $7dc1: $96
	sbc  a                                           ; $7dc2: $9f
	dec  c                                           ; $7dc3: $0d
	nop                                              ; $7dc4: $00
	ld   a, [bc]                                     ; $7dc5: $0a
	ld   bc, $f5ac                                   ; $7dc6: $01 $ac $f5
	bit  4, e                                        ; $7dc9: $cb $63
	and  c                                           ; $7dcb: $a1
	ld   h, [hl]                                     ; $7dcc: $66
	sub  c                                           ; $7dcd: $91
	ld   d, b                                        ; $7dce: $50
	sbc  c                                           ; $7dcf: $99
	adc  h                                           ; $7dd0: $8c
	ld   d, d                                        ; $7dd1: $52
	ld   h, l                                        ; $7dd2: $65
	sbc  [hl]                                        ; $7dd3: $9e
	dec  c                                           ; $7dd4: $0d
	ld   e, c                                        ; $7dd5: $59
	sbc  l                                           ; $7dd6: $9d
	sub  a                                           ; $7dd7: $97
	and  b                                           ; $7dd8: $a0
	ld   [bc], a                                     ; $7dd9: $02
	halt                                             ; $7dda: $76
	ld   [hl], c                                     ; $7ddb: $71
	ld   [hl], h                                     ; $7ddc: $74
	sbc  [hl]                                        ; $7ddd: $9e
	ld   e, b                                        ; $7dde: $58
	inc  bc                                          ; $7ddf: $03
	jp   $0275                                       ; $7de0: $c3 $75 $02


	jr   nz, jr_041_7de9                             ; $7de3: $20 $04

	and  l                                           ; $7de5: $a5
	dec  c                                           ; $7de6: $0d
	ld   a, b                                        ; $7de7: $78
	and  c                                           ; $7de8: $a1

jr_041_7de9:
	ld   [hl], h                                     ; $7de9: $74
	ld   h, l                                        ; $7dea: $65
	adc  h                                           ; $7deb: $8c
	ld   l, c                                        ; $7dec: $69
	and  c                                           ; $7ded: $a1
	sub  [hl]                                        ; $7dee: $96
	sbc  a                                           ; $7def: $9f
	dec  c                                           ; $7df0: $0d
	nop                                              ; $7df1: $00
	ld   a, [bc]                                     ; $7df2: $0a
	inc  e                                           ; $7df3: $1c
	ld   c, $01                                      ; $7df4: $0e $01
	ld   bc, $0301                                   ; $7df6: $01 $01 $03
	ld   c, d                                        ; $7df9: $4a
	ld   [bc], a                                     ; $7dfa: $02
	or   h                                           ; $7dfb: $b4
	ld   a, l                                        ; $7dfc: $7d
	sbc  [hl]                                        ; $7dfd: $9e
	ld   e, b                                        ; $7dfe: $58
	ld   l, c                                        ; $7dff: $69
	and  c                                           ; $7e00: $a1
	add  a                                           ; $7e01: $87
	ld   d, d                                        ; $7e02: $52
	ld   [hl], l                                     ; $7e03: $75
	ld   h, a                                        ; $7e04: $67
	sbc  a                                           ; $7e05: $9f
	dec  c                                           ; $7e06: $0d
	ld   d, b                                        ; $7e07: $50
	ld   l, l                                        ; $7e08: $6d
	ld   h, l                                        ; $7e09: $65
	ld   a, h                                        ; $7e0a: $7c
	inc  bc                                          ; $7e0b: $03
	adc  e                                           ; $7e0c: $8b
	ld   [bc], a                                     ; $7e0d: $02
	and  [hl]                                        ; $7e0e: $a6
	ld   e, d                                        ; $7e0f: $5a
	sbc  [hl]                                        ; $7e10: $9e
	ld   e, b                                        ; $7e11: $58
	ld   l, c                                        ; $7e12: $69
	and  c                                           ; $7e13: $a1
	add  a                                           ; $7e14: $87
	ld   d, d                                        ; $7e15: $52
	ld   [bc], a                                     ; $7e16: $02
	ld   hl, $630d                                   ; $7e17: $21 $0d $63
	and  c                                           ; $7e1a: $a1
	ld   l, [hl]                                     ; $7e1b: $6e
	ld   e, c                                        ; $7e1c: $59
	sub  a                                           ; $7e1d: $97
	ld   a, b                                        ; $7e1e: $78
	ld   a, h                                        ; $7e1f: $7c
	ld   e, c                                        ; $7e20: $59
	ld   a, b                                        ; $7e21: $78
	ld   c, a                                        ; $7e22: $4f
	sbc  a                                           ; $7e23: $9f
	dec  c                                           ; $7e24: $0d
	nop                                              ; $7e25: $00
	ld   a, [bc]                                     ; $7e26: $0a
	ld   bc, $716f                                   ; $7e27: $01 $6f $71
	ld   l, a                                        ; $7e2a: $6f
	sub  c                                           ; $7e2b: $91
	ld   d, d                                        ; $7e2c: $52
	halt                                             ; $7e2d: $76
	ld   e, e                                        ; $7e2e: $5b
	ld   e, c                                        ; $7e2f: $59
	sub  a                                           ; $7e30: $97
	inc  bc                                          ; $7e31: $03
	ld   l, d                                        ; $7e32: $6a
	add  a                                           ; $7e33: $87
	ld   [hl], h                                     ; $7e34: $74
	sbc  c                                           ; $7e35: $99
	dec  c                                           ; $7e36: $0d
	ld   e, b                                        ; $7e37: $58
	inc  b                                           ; $7e38: $04
	ld   l, $63                                      ; $7e39: $2e $63
	and  c                                           ; $7e3b: $a1
	ld   a, h                                        ; $7e3c: $7c
	inc  bc                                          ; $7e3d: $03
	xor  h                                           ; $7e3e: $ac
	ld   [hl], c                                     ; $7e3f: $71
	ld   l, l                                        ; $7e40: $6d
	ld   e, b                                        ; $7e41: $58
	ld   l, c                                        ; $7e42: $69
	and  c                                           ; $7e43: $a1
	add  a                                           ; $7e44: $87
	ld   d, d                                        ; $7e45: $52
	ld   e, d                                        ; $7e46: $5a
	dec  c                                           ; $7e47: $0d
	inc  b                                           ; $7e48: $04
	ld   c, $02                                      ; $7e49: $0e $02
	sbc  d                                           ; $7e4b: $9a
	ld   e, e                                        ; $7e4c: $5b
	ld   a, b                                        ; $7e4d: $78
	and  c                                           ; $7e4e: $a1
	ld   [hl], l                                     ; $7e4f: $75
	ld   h, a                                        ; $7e50: $67
	sbc  a                                           ; $7e51: $9f
	dec  c                                           ; $7e52: $0d
	nop                                              ; $7e53: $00
	ld   a, [bc]                                     ; $7e54: $0a
	ld   bc, $a161                                   ; $7e55: $01 $61 $a1
	ld   [hl], a                                     ; $7e58: $77
	sbc  [hl]                                        ; $7e59: $9e
	ld   d, h                                        ; $7e5a: $54
	ld   l, a                                        ; $7e5b: $6f
	ld   a, h                                        ; $7e5c: $7c
	ld   e, b                                        ; $7e5d: $58
	inc  b                                           ; $7e5e: $04
	ld   l, $63                                      ; $7e5f: $2e $63
	and  c                                           ; $7e61: $a1
	ld   e, d                                        ; $7e62: $5a
	dec  c                                           ; $7e63: $0d
	inc  bc                                          ; $7e64: $03
	xor  h                                           ; $7e65: $ac
	ld   [hl], c                                     ; $7e66: $71
	ld   l, l                                        ; $7e67: $6d
	ld   e, b                                        ; $7e68: $58
	ld   l, c                                        ; $7e69: $69
	and  c                                           ; $7e6a: $a1
	add  a                                           ; $7e6b: $87
	ld   d, d                                        ; $7e6c: $52
	sbc  [hl]                                        ; $7e6d: $9e
	ld   d, d                                        ; $7e6e: $52
	ld   [hl], c                                     ; $7e6f: $71
	ld   h, l                                        ; $7e70: $65
	sub  l                                           ; $7e71: $95
	ld   a, c                                        ; $7e72: $79
	dec  c                                           ; $7e73: $0d
	inc  bc                                          ; $7e74: $03
	ld   l, d                                        ; $7e75: $6a
	add  a                                           ; $7e76: $87
	adc  h                                           ; $7e77: $8c
	ld   h, l                                        ; $7e78: $65
	sub  l                                           ; $7e79: $95
	ld   d, h                                        ; $7e7a: $54
	ld   a, e                                        ; $7e7b: $7b
	sbc  a                                           ; $7e7c: $9f
	dec  c                                           ; $7e7d: $0d
	nop                                              ; $7e7e: $00
	ld   a, [bc]                                     ; $7e7f: $0a
	ld   bc, $9166                                   ; $7e80: $01 $66 $91
	sbc  [hl]                                        ; $7e83: $9e
	ld   d, b                                        ; $7e84: $50
	ld   l, l                                        ; $7e85: $6d
	ld   h, l                                        ; $7e86: $65
	ld   a, l                                        ; $7e87: $7d
	inc  bc                                          ; $7e88: $03
	dec  c                                           ; $7e89: $0d
	ld   [bc], a                                     ; $7e8a: $02
	jp   $0d5a                                       ; $7e8b: $c3 $5a $0d


	ld   d, b                                        ; $7e8e: $50
	sbc  b                                           ; $7e8f: $98
	adc  h                                           ; $7e90: $8c
	ld   h, a                                        ; $7e91: $67
	ld   a, h                                        ; $7e92: $7c
	ld   [hl], l                                     ; $7e93: $75
	sbc  [hl]                                        ; $7e94: $9e
	ld   h, c                                        ; $7e95: $61
	sbc  d                                           ; $7e96: $9a
	ld   [hl], l                                     ; $7e97: $75
	rst  $38                                         ; $7e98: $ff
	rst  $38                                         ; $7e99: $ff
	dec  c                                           ; $7e9a: $0d
	nop                                              ; $7e9b: $00
	ld   a, [bc]                                     ; $7e9c: $0a
	dec  b                                           ; $7e9d: $05
	add  b                                           ; $7e9e: $80
	and  c                                           ; $7e9f: $a1
	ld   bc, $0001                                   ; $7ea0: $01 $01 $00
	nop                                              ; $7ea3: $00
	rrca                                             ; $7ea4: $0f
	nop                                              ; $7ea5: $00
	ld   bc, $5901                                   ; $7ea6: $01 $01 $59
	ld   l, l                                        ; $7ea9: $6d
	ld   e, l                                        ; $7eaa: $5d
	ld   [hl], h                                     ; $7eab: $74
	sbc  [hl]                                        ; $7eac: $9e
	ld   e, b                                        ; $7ead: $58
	inc  bc                                          ; $7eae: $03
	jp   $0279                                       ; $7eaf: $c3 $79 $02


	ld   a, e                                        ; $7eb2: $7b
	ld   d, h                                        ; $7eb3: $54
	halt                                             ; $7eb4: $76
	dec  c                                           ; $7eb5: $0d
	ld   d, d                                        ; $7eb6: $52
	ld   d, [hl]                                     ; $7eb7: $56
	ld   a, [hl]                                     ; $7eb8: $7e
	sbc  [hl]                                        ; $7eb9: $9e
	ld   b, $20                                      ; $7eba: $06 $20
	ld   [bc], a                                     ; $7ebc: $02
	ld   b, [hl]                                     ; $7ebd: $46
	ld   h, l                                        ; $7ebe: $65
	rst  $38                                         ; $7ebf: $ff
	rst  $38                                         ; $7ec0: $ff
	dec  c                                           ; $7ec1: $0d
	ld   h, l                                        ; $7ec2: $65
	ld   e, c                                        ; $7ec3: $59
	sub  b                                           ; $7ec4: $90
	sbc  [hl]                                        ; $7ec5: $9e
	inc  bc                                          ; $7ec6: $03
	xor  a                                           ; $7ec7: $af
	ld   b, $20                                      ; $7ec8: $06 $20
	ld   [hl], l                                     ; $7eca: $75
	ld   h, a                                        ; $7ecb: $67
	ld   a, e                                        ; $7ecc: $7b
	sbc  a                                           ; $7ecd: $9f
	dec  c                                           ; $7ece: $0d
	nop                                              ; $7ecf: $00
	ld   a, [bc]                                     ; $7ed0: $0a
	inc  e                                           ; $7ed1: $1c
	ld   c, $02                                      ; $7ed2: $0e $02
	ld   [bc], a                                     ; $7ed4: $02
	ld   bc, $687d                                   ; $7ed5: $01 $7d $68
	sbc  d                                           ; $7ed8: $9a
	ld   [hl], l                                     ; $7ed9: $75
	ld   h, a                                        ; $7eda: $67
	ld   a, [$060d]                                  ; $7edb: $fa $0d $06
	jr   nz, jr_041_7ee2                             ; $7ede: $20 $02

	ld   b, [hl]                                     ; $7ee0: $46
	ld   h, l                                        ; $7ee1: $65

jr_041_7ee2:
	ld   a, l                                        ; $7ee2: $7d
	call z, $c7ad                                    ; $7ee3: $cc $ad $c7
	ld   l, [hl]                                     ; $7ee6: $6e
	ld   [hl], c                                     ; $7ee7: $71
	ld   [hl], h                                     ; $7ee8: $74
	sbc  [hl]                                        ; $7ee9: $9e
	dec  c                                           ; $7eea: $0d
	ld   h, c                                        ; $7eeb: $61
	ld   a, h                                        ; $7eec: $7c
	inc  bc                                          ; $7eed: $03
	ld   c, a                                        ; $7eee: $4f
	ld   [bc], a                                     ; $7eef: $02
	sbc  l                                           ; $7ef0: $9d
	ld   [hl], c                                     ; $7ef1: $71
	ld   l, l                                        ; $7ef2: $6d
	ld   h, [hl]                                     ; $7ef3: $66
	sub  c                                           ; $7ef4: $91
	ld   a, b                                        ; $7ef5: $78
	ld   d, d                                        ; $7ef6: $52
	ld   [hl], l                                     ; $7ef7: $75
	ld   h, a                                        ; $7ef8: $67
	ld   e, c                                        ; $7ef9: $59
	sbc  a                                           ; $7efa: $9f
	dec  c                                           ; $7efb: $0d
	nop                                              ; $7efc: $00
	ld   a, [bc]                                     ; $7efd: $0a
	inc  e                                           ; $7efe: $1c
	ld   c, $00                                      ; $7eff: $0e $00
	nop                                              ; $7f01: $00
	ld   bc, $4a03                                   ; $7f02: $01 $03 $4a
	ld   [bc], a                                     ; $7f05: $02
	or   h                                           ; $7f06: $b4
	ld   a, l                                        ; $7f07: $7d
	sbc  [hl]                                        ; $7f08: $9e
	ld   e, b                                        ; $7f09: $58
	ld   l, c                                        ; $7f0a: $69
	and  c                                           ; $7f0b: $a1
	add  a                                           ; $7f0c: $87
	ld   d, d                                        ; $7f0d: $52
	ld   [hl], l                                     ; $7f0e: $75
	ld   h, a                                        ; $7f0f: $67
	sbc  a                                           ; $7f10: $9f
	dec  c                                           ; $7f11: $0d
	ld   d, b                                        ; $7f12: $50
	ld   l, l                                        ; $7f13: $6d
	ld   h, l                                        ; $7f14: $65
	ld   a, h                                        ; $7f15: $7c
	inc  bc                                          ; $7f16: $03
	adc  e                                           ; $7f17: $8b
	ld   [bc], a                                     ; $7f18: $02
	and  [hl]                                        ; $7f19: $a6
	ld   e, d                                        ; $7f1a: $5a
	sbc  [hl]                                        ; $7f1b: $9e
	ld   e, b                                        ; $7f1c: $58
	ld   l, c                                        ; $7f1d: $69
	and  c                                           ; $7f1e: $a1
	add  a                                           ; $7f1f: $87
	ld   d, d                                        ; $7f20: $52
	ld   [bc], a                                     ; $7f21: $02
	ld   hl, $630d                                   ; $7f22: $21 $0d $63
	and  c                                           ; $7f25: $a1
	ld   l, [hl]                                     ; $7f26: $6e
	ld   e, c                                        ; $7f27: $59
	sub  a                                           ; $7f28: $97
	ld   a, b                                        ; $7f29: $78
	ld   a, h                                        ; $7f2a: $7c
	ld   e, c                                        ; $7f2b: $59
	ld   a, b                                        ; $7f2c: $78
	ld   c, a                                        ; $7f2d: $4f
	sbc  a                                           ; $7f2e: $9f
	dec  c                                           ; $7f2f: $0d
	nop                                              ; $7f30: $00
	ld   a, [bc]                                     ; $7f31: $0a
	ld   bc, $716f                                   ; $7f32: $01 $6f $71
	ld   l, a                                        ; $7f35: $6f
	sub  c                                           ; $7f36: $91
	ld   d, d                                        ; $7f37: $52
	halt                                             ; $7f38: $76
	ld   e, e                                        ; $7f39: $5b
	ld   e, c                                        ; $7f3a: $59
	sub  a                                           ; $7f3b: $97
	inc  bc                                          ; $7f3c: $03
	ld   l, d                                        ; $7f3d: $6a
	add  a                                           ; $7f3e: $87
	ld   [hl], h                                     ; $7f3f: $74
	sbc  c                                           ; $7f40: $99
	dec  c                                           ; $7f41: $0d
	ld   e, b                                        ; $7f42: $58
	inc  b                                           ; $7f43: $04
	ld   l, $63                                      ; $7f44: $2e $63
	and  c                                           ; $7f46: $a1
	ld   a, h                                        ; $7f47: $7c
	inc  bc                                          ; $7f48: $03
	xor  h                                           ; $7f49: $ac
	ld   [hl], c                                     ; $7f4a: $71
	ld   l, l                                        ; $7f4b: $6d
	ld   e, b                                        ; $7f4c: $58
	ld   l, c                                        ; $7f4d: $69
	and  c                                           ; $7f4e: $a1
	add  a                                           ; $7f4f: $87
	ld   d, d                                        ; $7f50: $52
	ld   e, d                                        ; $7f51: $5a
	dec  c                                           ; $7f52: $0d
	inc  b                                           ; $7f53: $04
	ld   c, $02                                      ; $7f54: $0e $02
	sbc  d                                           ; $7f56: $9a
	ld   e, e                                        ; $7f57: $5b
	ld   a, b                                        ; $7f58: $78
	and  c                                           ; $7f59: $a1
	ld   [hl], l                                     ; $7f5a: $75
	ld   h, a                                        ; $7f5b: $67
	sbc  a                                           ; $7f5c: $9f
	dec  c                                           ; $7f5d: $0d
	nop                                              ; $7f5e: $00
	ld   a, [bc]                                     ; $7f5f: $0a
	ld   bc, $546b                                   ; $7f60: $01 $6b $54
	ld   l, [hl]                                     ; $7f63: $6e
	sbc  l                                           ; $7f64: $9d
	sbc  a                                           ; $7f65: $9f
	ld   h, c                                        ; $7f66: $61
	and  c                                           ; $7f67: $a1
	ld   [hl], a                                     ; $7f68: $77
	sbc  [hl]                                        ; $7f69: $9e
	ld   e, b                                        ; $7f6a: $58
	inc  b                                           ; $7f6b: $04
	ld   l, $63                                      ; $7f6c: $2e $63
	and  c                                           ; $7f6e: $a1
	ld   e, d                                        ; $7f6f: $5a
	dec  c                                           ; $7f70: $0d
	inc  bc                                          ; $7f71: $03
	xor  h                                           ; $7f72: $ac
	ld   [hl], c                                     ; $7f73: $71
	ld   l, l                                        ; $7f74: $6d
	ld   e, b                                        ; $7f75: $58
	ld   l, c                                        ; $7f76: $69
	and  c                                           ; $7f77: $a1
	add  a                                           ; $7f78: $87
	ld   d, d                                        ; $7f79: $52
	sbc  [hl]                                        ; $7f7a: $9e
	ld   d, d                                        ; $7f7b: $52
	ld   [hl], c                                     ; $7f7c: $71
	ld   h, l                                        ; $7f7d: $65
	sub  l                                           ; $7f7e: $95
	ld   a, c                                        ; $7f7f: $79
	dec  c                                           ; $7f80: $0d
	inc  bc                                          ; $7f81: $03
	ld   l, d                                        ; $7f82: $6a
	add  a                                           ; $7f83: $87
	adc  h                                           ; $7f84: $8c
	ld   h, l                                        ; $7f85: $65
	sub  l                                           ; $7f86: $95
	ld   d, h                                        ; $7f87: $54
	sbc  a                                           ; $7f88: $9f
	dec  c                                           ; $7f89: $0d
	nop                                              ; $7f8a: $00
	ld   a, [bc]                                     ; $7f8b: $0a
	ld   bc, $9166                                   ; $7f8c: $01 $66 $91
	sbc  [hl]                                        ; $7f8f: $9e
	ld   d, b                                        ; $7f90: $50
	ld   l, l                                        ; $7f91: $6d
	ld   h, l                                        ; $7f92: $65
	ld   a, l                                        ; $7f93: $7d
	inc  bc                                          ; $7f94: $03
	dec  c                                           ; $7f95: $0d
	ld   [bc], a                                     ; $7f96: $02
	jp   $0d5a                                       ; $7f97: $c3 $5a $0d


	ld   d, b                                        ; $7f9a: $50
	sbc  b                                           ; $7f9b: $98
	adc  h                                           ; $7f9c: $8c
	ld   h, a                                        ; $7f9d: $67
	ld   a, h                                        ; $7f9e: $7c
	ld   [hl], l                                     ; $7f9f: $75
	sbc  [hl]                                        ; $7fa0: $9e
	ld   h, c                                        ; $7fa1: $61
	sbc  d                                           ; $7fa2: $9a
	ld   [hl], l                                     ; $7fa3: $75
	rst  $38                                         ; $7fa4: $ff
	rst  $38                                         ; $7fa5: $ff
	dec  c                                           ; $7fa6: $0d
	nop                                              ; $7fa7: $00
	ld   a, [bc]                                     ; $7fa8: $0a
	dec  b                                           ; $7fa9: $05
	add  b                                           ; $7faa: $80
	and  c                                           ; $7fab: $a1
	ld   bc, $0001                                   ; $7fac: $01 $01 $00
	nop                                              ; $7faf: $00
	rrca                                             ; $7fb0: $0f
	ld   c, $00                                      ; $7fb1: $0e $00
	ld   bc, $6f03                                   ; $7fb3: $01 $03 $6f
	ld   [bc], a                                     ; $7fb6: $02
	xor  c                                           ; $7fb7: $a9
	inc  bc                                          ; $7fb8: $03
	dec  de                                          ; $7fb9: $1b
	sbc  d                                           ; $7fba: $9a
	ld   [hl], l                                     ; $7fbb: $75
	db   $fc                                         ; $7fbc: $fc
	ld   h, a                                        ; $7fbd: $67
	sbc  a                                           ; $7fbe: $9f
	dec  c                                           ; $7fbf: $0d
	nop                                              ; $7fc0: $00
	ld   a, [bc]                                     ; $7fc1: $0a
	ld   bc, $4a03                                   ; $7fc2: $01 $03 $4a
	ld   [bc], a                                     ; $7fc5: $02
	or   h                                           ; $7fc6: $b4
	ld   a, l                                        ; $7fc7: $7d
	sbc  [hl]                                        ; $7fc8: $9e
	ld   e, b                                        ; $7fc9: $58
	ld   l, c                                        ; $7fca: $69
	and  c                                           ; $7fcb: $a1
	add  a                                           ; $7fcc: $87
	ld   d, d                                        ; $7fcd: $52
	ld   [hl], l                                     ; $7fce: $75
	ld   h, a                                        ; $7fcf: $67
	sbc  a                                           ; $7fd0: $9f
	dec  c                                           ; $7fd1: $0d
	ld   d, b                                        ; $7fd2: $50
	ld   l, l                                        ; $7fd3: $6d
	ld   h, l                                        ; $7fd4: $65
	ld   a, h                                        ; $7fd5: $7c
	inc  bc                                          ; $7fd6: $03
	adc  e                                           ; $7fd7: $8b
	ld   [bc], a                                     ; $7fd8: $02
	and  [hl]                                        ; $7fd9: $a6
	ld   e, d                                        ; $7fda: $5a
	sbc  [hl]                                        ; $7fdb: $9e
	ld   e, b                                        ; $7fdc: $58
	ld   l, c                                        ; $7fdd: $69
	and  c                                           ; $7fde: $a1
	add  a                                           ; $7fdf: $87
	ld   d, d                                        ; $7fe0: $52
	ld   [bc], a                                     ; $7fe1: $02
	ld   hl, $630d                                   ; $7fe2: $21 $0d $63
	and  c                                           ; $7fe5: $a1
	ld   a, b                                        ; $7fe6: $78
	and  c                                           ; $7fe7: $a1
	ld   [hl], l                                     ; $7fe8: $75
	ld   h, a                                        ; $7fe9: $67
	sub  [hl]                                        ; $7fea: $96
	sbc  a                                           ; $7feb: $9f
	dec  c                                           ; $7fec: $0d
	nop                                              ; $7fed: $00
	ld   a, [bc]                                     ; $7fee: $0a
	ld   bc, $716f                                   ; $7fef: $01 $6f $71
	ld   l, a                                        ; $7ff2: $6f
	sub  c                                           ; $7ff3: $91
	ld   d, d                                        ; $7ff4: $52
	halt                                             ; $7ff5: $76
	ld   e, e                                        ; $7ff6: $5b
	ld   e, c                                        ; $7ff7: $59
	sub  a                                           ; $7ff8: $97
	inc  bc                                          ; $7ff9: $03
	ld   l, d                                        ; $7ffa: $6a
	add  a                                           ; $7ffb: $87
	ld   [hl], h                                     ; $7ffc: $74
	sbc  c                                           ; $7ffd: $99
	dec  c                                           ; $7ffe: $0d
	ld   e, c                                        ; $7fff: $59
