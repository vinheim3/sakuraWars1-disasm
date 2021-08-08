; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $07d", ROMX[$4000], BANK[$7d]

	call c, $0800                                    ; $4000: $dc $00 $08
	inc  b                                           ; $4003: $04
	rrca                                             ; $4004: $0f
	ld   a, [bc]                                     ; $4005: $0a
	rrca                                             ; $4006: $0f
	ld   b, $0f                                      ; $4007: $06 $0f
	inc  c                                           ; $4009: $0c
	rrca                                             ; $400a: $0f
	dec  bc                                          ; $400b: $0b
	add  c                                           ; $400c: $81
	nop                                              ; $400d: $00
	add  b                                           ; $400e: $80
	rrca                                             ; $400f: $0f
	inc  bc                                          ; $4010: $03
	inc  b                                           ; $4011: $04
	rrca                                             ; $4012: $0f
	dec  c                                           ; $4013: $0d
	or   $80                                         ; $4014: $f6 $80
	ldh  a, [rTAC]                                   ; $4016: $f0 $07
	inc  de                                          ; $4018: $13
	sub  e                                           ; $4019: $93
	db   $f4                                         ; $401a: $f4
	ld   a, a                                        ; $401b: $7f
	ld   c, e                                        ; $401c: $4b
	ld   a, a                                        ; $401d: $7f
	ld   b, b                                        ; $401e: $40
	ld   a, a                                        ; $401f: $7f
	add  b                                           ; $4020: $80
	ret  z                                           ; $4021: $c8

	add  b                                           ; $4022: $80
	ld   a, [$1880]                                  ; $4023: $fa $80 $18
	add  b                                           ; $4026: $80
	ld   [bc], a                                     ; $4027: $02
	add  b                                           ; $4028: $80
	rlca                                             ; $4029: $07
	rlca                                             ; $402a: $07
	ld   a, [$c5ff]                                  ; $402b: $fa $ff $c5
	rst  $38                                         ; $402e: $ff
	ld   d, e                                        ; $402f: $53
	ld   a, a                                        ; $4030: $7f
	ld   l, d                                        ; $4031: $6a
	ld   a, c                                        ; $4032: $79
	add  b                                           ; $4033: $80
	inc  b                                           ; $4034: $04
	ld   a, [de]                                     ; $4035: $1a

jr_07d_4036:
	ld   h, b                                        ; $4036: $60
	ld   h, a                                        ; $4037: $67
	ld   h, $21                                      ; $4038: $26 $21
	jr   jr_07d_405b                                 ; $403a: $18 $1f

	ld   hl, sp-$01                                  ; $403c: $f8 $ff
	dec  sp                                          ; $403e: $3b
	ei                                               ; $403f: $fb
	db   $dd                                         ; $4040: $dd
	db   $fd                                         ; $4041: $fd
	db   $eb                                         ; $4042: $eb
	ld   a, a                                        ; $4043: $7f
	inc  b                                           ; $4044: $04
	ld   a, h                                        ; $4045: $7c
	ld   [de], a                                     ; $4046: $12
	rst  $38                                         ; $4047: $ff
	rra                                              ; $4048: $1f
	rst  $38                                         ; $4049: $ff
	ld   b, $ff                                      ; $404a: $06 $ff
	halt                                             ; $404c: $76
	cp   $03                                         ; $404d: $fe $03
	ld   [hl], e                                     ; $404f: $73
	ret  nz                                          ; $4050: $c0

	add  c                                           ; $4051: $81
	rst  $38                                         ; $4052: $ff
	inc  c                                           ; $4053: $0c
	dec  [hl]                                        ; $4054: $35
	dec  bc                                          ; $4055: $0b
	ld   hl, sp-$02                                  ; $4056: $f8 $fe
	nop                                              ; $4058: $00
	rst  $38                                         ; $4059: $ff
	add  hl, bc                                      ; $405a: $09

jr_07d_405b:
	rst  $38                                         ; $405b: $ff
	ld   [hl], c                                     ; $405c: $71
	ld   a, a                                        ; $405d: $7f
	rrca                                             ; $405e: $0f
	rst  $38                                         ; $405f: $ff
	ldh  a, [$82]                                    ; $4060: $f0 $82
	rst  $38                                         ; $4062: $ff
	inc  l                                           ; $4063: $2c
	and  $f9                                         ; $4064: $e6 $f9
	rst  $38                                         ; $4066: $ff
	rra                                              ; $4067: $1f
	ei                                               ; $4068: $fb
	ld   hl, sp-$01                                  ; $4069: $f8 $ff
	db   $fc                                         ; $406b: $fc
	rst  $38                                         ; $406c: $ff
	rra                                              ; $406d: $1f
	rst  $38                                         ; $406e: $ff
	sbc  a                                           ; $406f: $9f
	rst  $38                                         ; $4070: $ff
	add  e                                           ; $4071: $83
	rst  $38                                         ; $4072: $ff
	db   $ec                                         ; $4073: $ec
	dec  e                                           ; $4074: $1d
	ld   [hl-], a                                    ; $4075: $32
	rst  $38                                         ; $4076: $ff
	ld   de, $17fe                                   ; $4077: $11 $fe $17
	rst  $38                                         ; $407a: $ff
	scf                                              ; $407b: $37
	rst  $38                                         ; $407c: $ff
	rst  $30                                         ; $407d: $f7
	rst  $38                                         ; $407e: $ff
	ld   h, c                                        ; $407f: $61
	rst  $20                                         ; $4080: $e7
	ld   bc, $60ff                                   ; $4081: $01 $ff $60

Jump_07d_4084:
	rst  $38                                         ; $4084: $ff
	db   $10                                         ; $4085: $10
	rst  $38                                         ; $4086: $ff
	or   e                                           ; $4087: $b3
	ld   a, h                                        ; $4088: $7c
	db   $ec                                         ; $4089: $ec
	pop  de                                          ; $408a: $d1
	ld   a, l                                        ; $408b: $7d
	ld   a, a                                        ; $408c: $7f
	adc  e                                           ; $408d: $8b
	rst  $38                                         ; $408e: $ff
	adc  e                                           ; $408f: $8b
	rst  $38                                         ; $4090: $ff
	add  b                                           ; $4091: $80
	or   c                                           ; $4092: $b1
	add  hl, bc                                      ; $4093: $09
	inc  c                                           ; $4094: $0c
	db   $ec                                         ; $4095: $ec
	ld   [de], a                                     ; $4096: $12
	ldh  a, [c]                                      ; $4097: $f2
	rst  JumpTable                                         ; $4098: $df
	sbc  a                                           ; $4099: $9f
	pop  bc                                          ; $409a: $c1
	rst  $38                                         ; $409b: $ff
	add  d                                           ; $409c: $82
	db   $fc                                         ; $409d: $fc
	add  b                                           ; $409e: $80
	db   $fd                                         ; $409f: $fd
	add  b                                           ; $40a0: $80
	ld   a, b                                        ; $40a1: $78
	db   $10                                         ; $40a2: $10
	jr   nz, @+$01                                   ; $40a3: $20 $ff

	rra                                              ; $40a5: $1f
	inc  b                                           ; $40a6: $04
	ld   a, e                                        ; $40a7: $7b
	sub  a                                           ; $40a8: $97
	ld   a, a                                        ; $40a9: $7f
	ld   d, a                                        ; $40aa: $57
	inc  [hl]                                        ; $40ab: $34
	dec  [hl]                                        ; $40ac: $35
	ld   c, c                                        ; $40ad: $49
	ld   c, a                                        ; $40ae: $4f
	add  l                                           ; $40af: $85
	add  e                                           ; $40b0: $83
	ld   b, e                                        ; $40b1: $43
	ld   e, e                                        ; $40b2: $5b
	jr   jr_07d_4036                                 ; $40b3: $18 $81

	ld   bc, $fb12                                   ; $40b5: $01 $12 $fb
	rst  $38                                         ; $40b8: $ff
	ei                                               ; $40b9: $fb
	rst  $38                                         ; $40ba: $ff
	inc  bc                                          ; $40bb: $03
	rst  $38                                         ; $40bc: $ff
	adc  h                                           ; $40bd: $8c
	rst  $38                                         ; $40be: $ff
	add  b                                           ; $40bf: $80
	ld   a, a                                        ; $40c0: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40c1: $cf
	cp   a                                           ; $40c2: $bf
	ld   d, l                                        ; $40c3: $55
	ld   [hl], l                                     ; $40c4: $75
	sbc  e                                           ; $40c5: $9b
	db   $fc                                         ; $40c6: $fc
	and  l                                           ; $40c7: $a5
	rst  $38                                         ; $40c8: $ff
	ld   sp, hl                                      ; $40c9: $f9
	add  b                                           ; $40ca: $80
	ei                                               ; $40cb: $fb
	dec  bc                                          ; $40cc: $0b
	rst  $38                                         ; $40cd: $ff
	ldh  [rIE], a                                    ; $40ce: $e0 $ff
	rlca                                             ; $40d0: $07
	rst  $38                                         ; $40d1: $ff
	inc  c                                           ; $40d2: $0c
	rst  $38                                         ; $40d3: $ff
	pop  af                                          ; $40d4: $f1
	rst  $38                                         ; $40d5: $ff
	ld   a, [hl]                                     ; $40d6: $7e
	rst  $38                                         ; $40d7: $ff
	add  b                                           ; $40d8: $80
	add  b                                           ; $40d9: $80
	cp   a                                           ; $40da: $bf
	nop                                              ; $40db: $00
	rst  $38                                         ; $40dc: $ff
	add  b                                           ; $40dd: $80
	rla                                              ; $40de: $17
	rla                                              ; $40df: $17
	inc  l                                           ; $40e0: $2c
	rst  $38                                         ; $40e1: $ff
	set  7, a                                        ; $40e2: $cb $ff
	scf                                              ; $40e4: $37
	rst  $38                                         ; $40e5: $ff
	rst  $28                                         ; $40e6: $ef
	rst  $38                                         ; $40e7: $ff
	ccf                                              ; $40e8: $3f
	rst  $38                                         ; $40e9: $ff
	ld   a, a                                        ; $40ea: $7f
	add  b                                           ; $40eb: $80
	inc  d                                           ; $40ec: $14
	inc  e                                           ; $40ed: $1c
	jr   z, @+$7e                                    ; $40ee: $28 $7c

	sub  d                                           ; $40f0: $92
	rst  $38                                         ; $40f1: $ff
	jp   hl                                          ; $40f2: $e9


	rst  $38                                         ; $40f3: $ff
	scf                                              ; $40f4: $37
	rst  $38                                         ; $40f5: $ff
	ld   [$80fa], a                                  ; $40f6: $ea $fa $80
	rst  $28                                         ; $40f9: $ef
	dec  bc                                          ; $40fa: $0b
	cp   d                                           ; $40fb: $ba
	ld   e, a                                        ; $40fc: $5f
	inc  h                                           ; $40fd: $24
	ei                                               ; $40fe: $fb
	dec  sp                                          ; $40ff: $3b
	rst  $20                                         ; $4100: $e7
	ld   h, a                                        ; $4101: $67
	rst  $38                                         ; $4102: $ff
	cp   l                                           ; $4103: $bd
	rst  JumpTable                                         ; $4104: $df
	db   $e3                                         ; $4105: $e3
	rst  $38                                         ; $4106: $ff
	add  d                                           ; $4107: $82
	rst  JumpTable                                         ; $4108: $df
	add  b                                           ; $4109: $80
	add  hl, bc                                      ; $410a: $09
	add  b                                           ; $410b: $80
	inc  c                                           ; $410c: $0c
	add  b                                           ; $410d: $80
	inc  b                                           ; $410e: $04
	add  b                                           ; $410f: $80

jr_07d_4110:
	ld   bc, $0280                                   ; $4110: $01 $80 $02
	add  h                                           ; $4113: $84
	nop                                              ; $4114: $00
	dec  b                                           ; $4115: $05
	pop  af                                          ; $4116: $f1
	rst  $38                                         ; $4117: $ff
	ret  nc                                          ; $4118: $d0

	rst  JumpTable                                         ; $4119: $df
	jr   jr_07d_4135                                 ; $411a: $18 $19

	add  b                                           ; $411c: $80
	or   h                                           ; $411d: $b4
	add  b                                           ; $411e: $80
	ld   bc, $0080                                   ; $411f: $01 $80 $00
	add  b                                           ; $4122: $80
	db   $10                                         ; $4123: $10
	add  b                                           ; $4124: $80
	nop                                              ; $4125: $00
	dec  bc                                          ; $4126: $0b
	jr   jr_07d_4110                                 ; $4127: $18 $e7

	ld   [hl], b                                     ; $4129: $70
	ldh  a, [$a8]                                    ; $412a: $f0 $a8
	ld   hl, sp-$32                                  ; $412c: $f8 $ce

jr_07d_412e:
	cp   $37                                         ; $412e: $fe $37
	cpl                                              ; $4130: $2f
	ld   b, b                                        ; $4131: $40
	ld   b, a                                        ; $4132: $47
	add  b                                           ; $4133: $80
	inc  b                                           ; $4134: $04

jr_07d_4135:
	add  b                                           ; $4135: $80
	nop                                              ; $4136: $00
	ld   bc, $807f                                   ; $4137: $01 $7f $80
	add  b                                           ; $413a: $80
	jr   nc, jr_07d_4144                             ; $413b: $30 $07

	nop                                              ; $413d: $00
	ld   [$3048], sp                                 ; $413e: $08 $48 $30
	ld   hl, sp-$69                                  ; $4141: $f8 $97
	push hl                                          ; $4143: $e5

jr_07d_4144:
	dec  b                                           ; $4144: $05
	add  b                                           ; $4145: $80
	ld   d, d                                        ; $4146: $52
	add  b                                           ; $4147: $80
	nop                                              ; $4148: $00
	add  hl, bc                                      ; $4149: $09
	ld   a, a                                        ; $414a: $7f
	sbc  c                                           ; $414b: $99
	reti                                             ; $414c: $d9


	rst  $38                                         ; $414d: $ff
	inc  hl                                          ; $414e: $23
	dec  e                                           ; $414f: $1d
	add  hl, sp                                      ; $4150: $39
	ccf                                              ; $4151: $3f
	ld   a, e                                        ; $4152: $7b
	add  e                                           ; $4153: $83
	add  b                                           ; $4154: $80
	sub  h                                           ; $4155: $94
	add  b                                           ; $4156: $80
	ld   bc, $0080                                   ; $4157: $01 $80 $00
	dec  bc                                          ; $415a: $0b
	cp   $ff                                         ; $415b: $fe $ff
	db   $ec                                         ; $415d: $ec
	sbc  a                                           ; $415e: $9f
	adc  d                                           ; $415f: $8a
	rst  $38                                         ; $4160: $ff
	ld   [$0eef], sp                                 ; $4161: $08 $ef $0e
	rst  $28                                         ; $4164: $ef
	dec  a                                           ; $4165: $3d
	inc  a                                           ; $4166: $3c

Jump_07d_4167:
	add  b                                           ; $4167: $80
	add  hl, bc                                      ; $4168: $09
	add  b                                           ; $4169: $80
	nop                                              ; $416a: $00
	ld   [$0f1f], sp                                 ; $416b: $08 $1f $0f
	ld   l, h                                        ; $416e: $6c
	ld   a, h                                        ; $416f: $7c
	dec  bc                                          ; $4170: $0b
	ei                                               ; $4171: $fb
	jp   hl                                          ; $4172: $e9


	ld   a, c                                        ; $4173: $79
	ld   h, b                                        ; $4174: $60
	add  b                                           ; $4175: $80
	add  b                                           ; $4176: $80
	nop                                              ; $4177: $00
	nop                                              ; $4178: $00
	add  b                                           ; $4179: $80
	ld   c, b                                        ; $417a: $48
	add  b                                           ; $417b: $80
	nop                                              ; $417c: $00
	add  e                                           ; $417d: $83
	rst  $38                                         ; $417e: $ff
	inc  b                                           ; $417f: $04
	ld   h, a                                        ; $4180: $67
	ld   l, a                                        ; $4181: $6f
	db   $f4                                         ; $4182: $f4
	ld   c, h                                        ; $4183: $4c
	ld   c, a                                        ; $4184: $4f
	add  b                                           ; $4185: $80
	adc  $82                                         ; $4186: $ce $82
	nop                                              ; $4188: $00
	inc  b                                           ; $4189: $04
	rst  $38                                         ; $418a: $ff
	db   $fd                                         ; $418b: $fd
	db   $fc                                         ; $418c: $fc
	cp   $90                                         ; $418d: $fe $90
	add  b                                           ; $418f: $80
	add  b                                           ; $4190: $80
	ld   [bc], a                                     ; $4191: $02
	nop                                              ; $4192: $00
	ld   h, b                                        ; $4193: $60
	ldh  a, [$80]                                    ; $4194: $f0 $80
	inc  b                                           ; $4196: $04
	add  d                                           ; $4197: $82
	nop                                              ; $4198: $00
	add  b                                           ; $4199: $80
	ret  nz                                          ; $419a: $c0

	add  b                                           ; $419b: $80
	ld   [$8080], sp                                 ; $419c: $08 $80 $80
	add  b                                           ; $419f: $80
	nop                                              ; $41a0: $00
	add  b                                           ; $41a1: $80
	inc  b                                           ; $41a2: $04
	add  b                                           ; $41a3: $80
	ret  nz                                          ; $41a4: $c0

	add  d                                           ; $41a5: $82
	nop                                              ; $41a6: $00
	add  b                                           ; $41a7: $80
	add  hl, bc                                      ; $41a8: $09
	add  b                                           ; $41a9: $80
	nop                                              ; $41aa: $00
	add  b                                           ; $41ab: $80
	jr   nz, jr_07d_412e                             ; $41ac: $20 $80

	dec  c                                           ; $41ae: $0d
	add  b                                           ; $41af: $80
	sbc  a                                           ; $41b0: $9f
	add  d                                           ; $41b1: $82
	nop                                              ; $41b2: $00
	add  b                                           ; $41b3: $80
	ld   bc, $0903                                   ; $41b4: $01 $03 $09
	inc  c                                           ; $41b7: $0c
	ld   a, [hl-]                                    ; $41b8: $3a
	ccf                                              ; $41b9: $3f
	add  b                                           ; $41ba: $80
	add  b                                           ; $41bb: $80
	add  b                                           ; $41bc: $80
	rst  $38                                         ; $41bd: $ff
	add  b                                           ; $41be: $80
	ld   [bc], a                                     ; $41bf: $02
	add  b                                           ; $41c0: $80
	ld   c, a                                        ; $41c1: $4f
	add  d                                           ; $41c2: $82
	nop                                              ; $41c3: $00
	rlca                                             ; $41c4: $07
	rst  $38                                         ; $41c5: $ff
	ld   bc, $f303                                   ; $41c6: $01 $03 $f3
	pop  af                                          ; $41c9: $f1
	ei                                               ; $41ca: $fb
	pop  de                                          ; $41cb: $d1
	push de                                          ; $41cc: $d5
	add  b                                           ; $41cd: $80
	inc  a                                           ; $41ce: $3c
	add  b                                           ; $41cf: $80
	add  b                                           ; $41d0: $80
	add  d                                           ; $41d1: $82
	nop                                              ; $41d2: $00
	rlca                                             ; $41d3: $07
	pop  bc                                          ; $41d4: $c1
	rst  $38                                         ; $41d5: $ff
	ld   b, c                                        ; $41d6: $41
	and  a                                           ; $41d7: $a7
	daa                                              ; $41d8: $27
	ld   bc, $6b95                                   ; $41d9: $01 $95 $6b
	add  b                                           ; $41dc: $80
	cp   e                                           ; $41dd: $bb

jr_07d_41de:
	add  b                                           ; $41de: $80
	ld   c, $82                                      ; $41df: $0e $82
	nop                                              ; $41e1: $00
	add  d                                           ; $41e2: $82
	rst  $38                                         ; $41e3: $ff
	ld   [bc], a                                     ; $41e4: $02
	jp   nz, $e2df                                   ; $41e5: $c2 $df $e2

	add  c                                           ; $41e8: $81
	rst  $38                                         ; $41e9: $ff
	add  b                                           ; $41ea: $80
	ld   e, e                                        ; $41eb: $5b
	add  d                                           ; $41ec: $82
	nop                                              ; $41ed: $00
	add  b                                           ; $41ee: $80
	rst  $38                                         ; $41ef: $ff
	dec  b                                           ; $41f0: $05
	or   $f7                                         ; $41f1: $f6 $f7
	ld   a, [hl]                                     ; $41f3: $7e
	rst  $38                                         ; $41f4: $ff
	ld   a, l                                        ; $41f5: $7d
	db   $fd                                         ; $41f6: $fd
	add  b                                           ; $41f7: $80
	rst  $10                                         ; $41f8: $d7
	add  b                                           ; $41f9: $80
	ld   [hl+], a                                    ; $41fa: $22
	adc  d                                           ; $41fb: $8a
	nop                                              ; $41fc: $00
	ld   [$ffee], sp                                 ; $41fd: $08 $ee $ff
	sbc  e                                           ; $4200: $9b
	rst  $38                                         ; $4201: $ff
	and  h                                           ; $4202: $a4
	rst  $38                                         ; $4203: $ff
	ld   a, [hl+]                                    ; $4204: $2a
	rst  $38                                         ; $4205: $ff
	ei                                               ; $4206: $fb
	add  l                                           ; $4207: $85
	nop                                              ; $4208: $00
	ld   [$ff82], sp                                 ; $4209: $08 $82 $ff
	ld   a, c                                        ; $420c: $79
	rst  $38                                         ; $420d: $ff
	adc  d                                           ; $420e: $8a
	rst  $38                                         ; $420f: $ff
	ld   h, [hl]                                     ; $4210: $66
	rst  $38                                         ; $4211: $ff
	rla                                              ; $4212: $17
	add  l                                           ; $4213: $85
	nop                                              ; $4214: $00
	dec  b                                           ; $4215: $05
	ld   a, l                                        ; $4216: $7d
	rst  $38                                         ; $4217: $ff
	cp   [hl]                                        ; $4218: $be
	rst  $38                                         ; $4219: $ff
	ld   a, h                                        ; $421a: $7c
	cp   a                                           ; $421b: $bf
	add  b                                           ; $421c: $80
	rst  $30                                         ; $421d: $f7
	add  a                                           ; $421e: $87
	nop                                              ; $421f: $00
	inc  b                                           ; $4220: $04
	ldh  a, [rAUD1SWEEP]                             ; $4221: $f0 $10
	ldh  a, [$c0]                                    ; $4223: $f0 $c0
	ret  nc                                          ; $4225: $d0

	add  b                                           ; $4226: $80
	jr   nz, @+$04                                   ; $4227: $20 $02

	db   $f4                                         ; $4229: $f4
	cp   $f5                                         ; $422a: $fe $f5
	add  b                                           ; $422c: $80
	cp   a                                           ; $422d: $bf
	add  b                                           ; $422e: $80
	rst  $28                                         ; $422f: $ef
	add  b                                           ; $4230: $80
	db   $fd                                         ; $4231: $fd
	ld   de, $8687                                   ; $4232: $11 $87 $86
	add  a                                           ; $4235: $87
	db   $fd                                         ; $4236: $fd
	ld   a, e                                        ; $4237: $7b
	ld   a, b                                        ; $4238: $78
	dec  hl                                          ; $4239: $2b
	inc  de                                          ; $423a: $13
	rst  $38                                         ; $423b: $ff
	cp   a                                           ; $423c: $bf
	rst  $38                                         ; $423d: $ff
	or   l                                           ; $423e: $b5
	or   a                                           ; $423f: $b7
	call $c6ff                                       ; $4240: $cd $ff $c6
	ccf                                              ; $4243: $3f
	ld   [hl], $80                                   ; $4244: $36 $80
	rst  $30                                         ; $4246: $f7
	inc  de                                          ; $4247: $13
	adc  l                                           ; $4248: $8d
	db   $fd                                         ; $4249: $fd
	halt                                             ; $424a: $76
	db   $10                                         ; $424b: $10
	rst  $38                                         ; $424c: $ff
	ld   d, [hl]                                     ; $424d: $56
	db   $fc                                         ; $424e: $fc
	ld   de, $a0ff                                   ; $424f: $11 $ff $a0
	rst  $38                                         ; $4252: $ff
	dec  l                                           ; $4253: $2d
	rst  $38                                         ; $4254: $ff
	ld   d, e                                        ; $4255: $53
	rst  $38                                         ; $4256: $ff
	add  c                                           ; $4257: $81
	rst  $38                                         ; $4258: $ff
	ldh  a, [c]                                      ; $4259: $f2
	scf                                              ; $425a: $37
	jr   c, jr_07d_41de                              ; $425b: $38 $81

	ldh  a, [rAUDENA]                                ; $425d: $f0 $26
	sub  b                                           ; $425f: $90
	ldh  a, [$90]                                    ; $4260: $f0 $90
	ldh  a, [$50]                                    ; $4262: $f0 $50
	ldh  a, [rAUD4LEN]                               ; $4264: $f0 $20
	ldh  a, [$60]                                    ; $4266: $f0 $60
	ldh  a, [rP1]                                    ; $4268: $f0 $00
	ldh  a, [$e7]                                    ; $426a: $f0 $e7
	adc  a                                           ; $426c: $8f
	add  a                                           ; $426d: $87
	ccf                                              ; $426e: $3f
	ld   sp, $667f                                   ; $426f: $31 $7f $66
	rst  $28                                         ; $4272: $ef
	sbc  b                                           ; $4273: $98
	rst  $38                                         ; $4274: $ff
	sbc  h                                           ; $4275: $9c
	rst  $38                                         ; $4276: $ff
	add  b                                           ; $4277: $80
	rst  $38                                         ; $4278: $ff
	ld   e, c                                        ; $4279: $59
	rst  $38                                         ; $427a: $ff
	ld   hl, $f1ff                                   ; $427b: $21 $ff $f1
	rst  $38                                         ; $427e: $ff
	ld   h, d                                        ; $427f: $62
	rst  $38                                         ; $4280: $ff
	ld   d, [hl]                                     ; $4281: $56

Jump_07d_4282:
	rst  $38                                         ; $4282: $ff
	ld   sp, $0fff                                   ; $4283: $31 $ff $0f
	add  b                                           ; $4286: $80
	di                                               ; $4287: $f3
	dec  bc                                          ; $4288: $0b
	ld   sp, hl                                      ; $4289: $f9
	cp   c                                           ; $428a: $b9
	cp   $36                                         ; $428b: $fe $36
	rst  $38                                         ; $428d: $ff
	db   $fd                                         ; $428e: $fd

jr_07d_428f:
	rst  $38                                         ; $428f: $ff
	ld   h, a                                        ; $4290: $67
	rst  $38                                         ; $4291: $ff
	xor  h                                           ; $4292: $ac
	cp   e                                           ; $4293: $bb
	ld   a, [$f380]                                  ; $4294: $fa $80 $f3
	add  b                                           ; $4297: $80
	and  $80                                         ; $4298: $e6 $80
	pop  bc                                          ; $429a: $c1
	ld   [de], a                                     ; $429b: $12
	rlca                                             ; $429c: $07
	jr   jr_07d_428f                                 ; $429d: $18 $f0

	ret  nz                                          ; $429f: $c0

	ldh  a, [$80]                                    ; $42a0: $f0 $80
	ldh  a, [rAUD4LEN]                               ; $42a2: $f0 $20
	ldh  a, [rSVBK]                                  ; $42a4: $f0 $70
	ldh  a, [hScriptOpcodeParams]                                    ; $42a6: $f0 $a0
	jr   nz, jr_07d_431a                             ; $42a8: $20 $70

	ret  nc                                          ; $42aa: $d0

	ret  nz                                          ; $42ab: $c0

	ldh  a, [rAUD1SWEEP]                             ; $42ac: $f0 $10
	nop                                              ; $42ae: $00
	add  b                                           ; $42af: $80
	ld   bc, $0e23                                   ; $42b0: $01 $23 $0e
	add  $d5                                         ; $42b3: $c6 $d5
	rst  $30                                         ; $42b5: $f7
	ld   h, d                                        ; $42b6: $62
	ld   a, a                                        ; $42b7: $7f
	ld   [hl+], a                                    ; $42b8: $22
	cpl                                              ; $42b9: $2f
	sub  [hl]                                        ; $42ba: $96
	sub  a                                           ; $42bb: $97
	ld   [hl], a                                     ; $42bc: $77
	ld   [hl], e                                     ; $42bd: $73
	ld   [hl], $ee                                   ; $42be: $36 $ee
	and  b                                           ; $42c0: $a0
	ld   hl, sp-$2d                                  ; $42c1: $f8 $d3
	ld   hl, sp-$2d                                  ; $42c3: $f8 $d3
	rst  $38                                         ; $42c5: $ff
	ld   l, e                                        ; $42c6: $6b
	rst  $28                                         ; $42c7: $ef
	db   $ec                                         ; $42c8: $ec
	rst  $28                                         ; $42c9: $ef
	ldh  [rIE], a                                    ; $42ca: $e0 $ff
	jp   $24ff                                       ; $42cc: $c3 $ff $24


	ld   b, a                                        ; $42cf: $47
	xor  b                                           ; $42d0: $a8

jr_07d_42d1:
	ld   sp, hl                                      ; $42d1: $f9
	db   $ec                                         ; $42d2: $ec
	db   $fd                                         ; $42d3: $fd
	nop                                              ; $42d4: $00
	rst  $38                                         ; $42d5: $ff
	add  b                                           ; $42d6: $80
	cp   $06                                         ; $42d7: $fe $06
	dec  e                                           ; $42d9: $1d
	add  b                                           ; $42da: $80
	and  $7a                                         ; $42db: $e6 $7a
	rst  $38                                         ; $42dd: $ff
	ld   a, [$8004]                                  ; $42de: $fa $04 $80
	nop                                              ; $42e1: $00
	ld   [$00f0], sp                                 ; $42e2: $08 $f0 $00
	add  b                                           ; $42e5: $80
	ret  nc                                          ; $42e6: $d0

	and  b                                           ; $42e7: $a0
	add  b                                           ; $42e8: $80
	nop                                              ; $42e9: $00
	add  b                                           ; $42ea: $80
	nop                                              ; $42eb: $00
	add  b                                           ; $42ec: $80
	ld   b, b                                        ; $42ed: $40
	add  b                                           ; $42ee: $80
	nop                                              ; $42ef: $00
	dec  e                                           ; $42f0: $1d
	rrca                                             ; $42f1: $0f
	rst  $38                                         ; $42f2: $ff
	daa                                              ; $42f3: $27
	rst  $38                                         ; $42f4: $ff
	push de                                          ; $42f5: $d5
	rst  $38                                         ; $42f6: $ff
	db   $fd                                         ; $42f7: $fd
	rst  $38                                         ; $42f8: $ff
	xor  [hl]                                        ; $42f9: $ae
	rst  $38                                         ; $42fa: $ff
	and  c                                           ; $42fb: $a1
	rst  $38                                         ; $42fc: $ff
	adc  $ff                                         ; $42fd: $ce $ff
	add  hl, hl                                      ; $42ff: $29
	rst  $38                                         ; $4300: $ff
	rla                                              ; $4301: $17
	rst  $38                                         ; $4302: $ff
	or   $f7                                         ; $4303: $f6 $f7
	xor  b                                           ; $4305: $a8
	xor  [hl]                                        ; $4306: $ae
	db   $f4                                         ; $4307: $f4
	db   $fd                                         ; $4308: $fd
	add  c                                           ; $4309: $81
	rst  $30                                         ; $430a: $f7
	add  [hl]                                        ; $430b: $86
	cp   [hl]                                        ; $430c: $be
	xor  e                                           ; $430d: $ab
	db   $eb                                         ; $430e: $eb
	add  b                                           ; $430f: $80
	cp   $80                                         ; $4310: $fe $80
	rst  $38                                         ; $4312: $ff
	ld   b, $fd                                      ; $4313: $06 $fd
	dec  e                                           ; $4315: $1d
	ld   e, $7e                                      ; $4316: $1e $7e
	rst  $38                                         ; $4318: $ff
	ld   a, l                                        ; $4319: $7d

jr_07d_431a:
	db   $fd                                         ; $431a: $fd
	add  b                                           ; $431b: $80
	rst  $20                                         ; $431c: $e7
	ld   b, $cf                                      ; $431d: $06 $cf
	call $dedf                                       ; $431f: $cd $df $de
	rst  $38                                         ; $4322: $ff
	di                                               ; $4323: $f3
	ldh  a, [$80]                                    ; $4324: $f0 $80
	ret  nz                                          ; $4326: $c0

	inc  bc                                          ; $4327: $03
	add  b                                           ; $4328: $80
	sub  b                                           ; $4329: $90
	add  b                                           ; $432a: $80
	sub  b                                           ; $432b: $90
	add  b                                           ; $432c: $80

jr_07d_432d:
	ldh  [$0c], a                                    ; $432d: $e0 $0c
	db   $10                                         ; $432f: $10
	ldh  a, [$b0]                                    ; $4330: $f0 $b0
	ldh  a, [hScriptOpcodeParams]                                    ; $4332: $f0 $a0
	ldh  a, [$75]                                    ; $4334: $f0 $75
	dec  hl                                          ; $4336: $2b
	add  hl, hl                                      ; $4337: $29
	dec  hl                                          ; $4338: $2b
	ld   a, [hl+]                                    ; $4339: $2a
	dec  hl                                          ; $433a: $2b
	ld   a, [hl+]                                    ; $433b: $2a
	add  b                                           ; $433c: $80
	dec  hl                                          ; $433d: $2b
	rlca                                             ; $433e: $07
	ld   a, e                                        ; $433f: $7b
	inc  bc                                          ; $4340: $03
	add  a                                           ; $4341: $87
	add  b                                           ; $4342: $80
	add  a                                           ; $4343: $87
	add  h                                           ; $4344: $84
	rst  $38                                         ; $4345: $ff
	adc  d                                           ; $4346: $8a
	add  b                                           ; $4347: $80
	dec  h                                           ; $4348: $25
	inc  bc                                          ; $4349: $03
	inc  h                                           ; $434a: $24
	jr   nz, @+$26                                   ; $434b: $20 $24

	jr   nz, jr_07d_42d1                             ; $434d: $20 $82

	inc  h                                           ; $434f: $24
	dec  c                                           ; $4350: $0d
	ld   [hl], h                                     ; $4351: $74
	inc  b                                           ; $4352: $04
	adc  l                                           ; $4353: $8d
	adc  h                                           ; $4354: $8c
	cp   $3e                                         ; $4355: $fe $3e
	call c, $9bd7                                    ; $4357: $dc $d7 $9b
	sub  e                                           ; $435a: $93
	sbc  c                                           ; $435b: $99
	adc  c                                           ; $435c: $89
	sbc  c                                           ; $435d: $99
	adc  c                                           ; $435e: $89
	add  c                                           ; $435f: $81
	sbc  c                                           ; $4360: $99
	ld   b, $81                                      ; $4361: $06 $81
	db   $db                                         ; $4363: $db
	db   $10                                         ; $4364: $10
	inc  a                                           ; $4365: $3c
	inc  hl                                          ; $4366: $23
	ld   h, b                                        ; $4367: $60
	ldh  [$80], a                                    ; $4368: $e0 $80
	or   b                                           ; $436a: $b0
	dec  b                                           ; $436b: $05
	jr   nc, jr_07d_437e                             ; $436c: $30 $10

	jr   nc, jr_07d_4390                             ; $436e: $30 $20

	jr   nc, jr_07d_4372                             ; $4370: $30 $00

jr_07d_4372:
	add  b                                           ; $4372: $80
	jr   nc, jr_07d_437d                             ; $4373: $30 $08

	or   b                                           ; $4375: $b0
	jr   nc, jr_07d_43e8                             ; $4376: $30 $70

	ld   l, e                                        ; $4378: $6b
	rst  $38                                         ; $4379: $ff
	ld   l, b                                        ; $437a: $68
	db   $fd                                         ; $437b: $fd
	ld   a, [hl]                                     ; $437c: $7e

jr_07d_437d:
	rst  $38                                         ; $437d: $ff

jr_07d_437e:
	add  b                                           ; $437e: $80
	sbc  e                                           ; $437f: $9b
	add  b                                           ; $4380: $80
	ld   b, b                                        ; $4381: $40
	add  b                                           ; $4382: $80
	ld   a, [bc]                                     ; $4383: $0a
	add  b                                           ; $4384: $80
	ld   bc, $0080                                   ; $4385: $01 $80 $00
	dec  b                                           ; $4388: $05
	ccf                                              ; $4389: $3f
	rst  $38                                         ; $438a: $ff
	or   [hl]                                        ; $438b: $b6
	or   $20                                         ; $438c: $f6 $20
	and  b                                           ; $438e: $a0
	add  b                                           ; $438f: $80

jr_07d_4390:
	ret  z                                           ; $4390: $c8

	add  b                                           ; $4391: $80
	ld   [de], a                                     ; $4392: $12
	add  b                                           ; $4393: $80
	nop                                              ; $4394: $00
	add  b                                           ; $4395: $80
	ld   [$0103], sp                                 ; $4396: $08 $03 $01
	nop                                              ; $4399: $00
	cp   [hl]                                        ; $439a: $be
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $439b: $cf
	add  b                                           ; $439c: $80
	call z, Call_07d_4880                            ; $439d: $cc $80 $48
	add  h                                           ; $43a0: $84
	ld   b, b                                        ; $43a1: $40
	inc  b                                           ; $43a2: $04
	ld   h, b                                        ; $43a3: $60
	ld   l, b                                        ; $43a4: $68
	ld   b, b                                        ; $43a5: $40
	jp   $810b                                       ; $43a6: $c3 $0b $81


	ldh  a, [$80]                                    ; $43a9: $f0 $80
	jr   nz, jr_07d_432d                             ; $43ab: $20 $80

	ld   b, b                                        ; $43ad: $40
	add  [hl]                                        ; $43ae: $86
	nop                                              ; $43af: $00
	ld   b, $e0                                      ; $43b0: $06 $e0
	rra                                              ; $43b2: $1f
	ld   a, [hl]                                     ; $43b3: $7e
	ld   l, a                                        ; $43b4: $6f
	and  [hl]                                        ; $43b5: $a6
	cp   a                                           ; $43b6: $bf
	rst  $30                                         ; $43b7: $f7
	add  c                                           ; $43b8: $81
	rst  $38                                         ; $43b9: $ff
	inc  l                                           ; $43ba: $2c
	ld   l, e                                        ; $43bb: $6b
	ld   l, a                                        ; $43bc: $6f
	ld   a, [$78ff]                                  ; $43bd: $fa $ff $78
	rst  JumpTable                                         ; $43c0: $df
	ld   e, d                                        ; $43c1: $5a
	rst  $38                                         ; $43c2: $ff
	inc  a                                           ; $43c3: $3c
	rst  $38                                         ; $43c4: $ff
	inc  de                                          ; $43c5: $13

jr_07d_43c6:
	ei                                               ; $43c6: $fb
	rst  $10                                         ; $43c7: $d7
	rst  $38                                         ; $43c8: $ff
	ld   a, a                                        ; $43c9: $7f
	rst  $38                                         ; $43ca: $ff
	db   $d3                                         ; $43cb: $d3
	ei                                               ; $43cc: $fb
	ld   d, b                                        ; $43cd: $50
	rst  $38                                         ; $43ce: $ff
	or   $fe                                         ; $43cf: $f6 $fe
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43d1: $cf
	cp   h                                           ; $43d2: $bc
	add  h                                           ; $43d3: $84
	push hl                                          ; $43d4: $e5
	db   $e3                                         ; $43d5: $e3
	rst  $38                                         ; $43d6: $ff
	sub  $d7                                         ; $43d7: $d6 $d7
	ld   h, b                                        ; $43d9: $60
	ld   [hl], a                                     ; $43da: $77
	add  sp, -$01                                    ; $43db: $e8 $ff
	ld   bc, $fced                                   ; $43dd: $01 $ed $fc
	rst  $28                                         ; $43e0: $ef
	ldh  a, [rSVBK]                                  ; $43e1: $f0 $70
	jr   nz, jr_07d_43e5                             ; $43e3: $20 $00

jr_07d_43e5:
	ld   d, b                                        ; $43e5: $50
	ldh  a, [rP1]                                    ; $43e6: $f0 $00

jr_07d_43e8:
	add  e                                           ; $43e8: $83
	ldh  a, [$08]                                    ; $43e9: $f0 $08
	ret  nz                                          ; $43eb: $c0

	ldh  a, [rP1]                                    ; $43ec: $f0 $00
	ldh  a, [$33]                                    ; $43ee: $f0 $33
	db   $fc                                         ; $43f0: $fc
	ldh  [rIE], a                                    ; $43f1: $e0 $ff
	rra                                              ; $43f3: $1f
	add  e                                           ; $43f4: $83
	rst  $38                                         ; $43f5: $ff
	ld   [bc], a                                     ; $43f6: $02
	rst  JumpTable                                         ; $43f7: $df
	rst  $38                                         ; $43f8: $ff
	rst  JumpTable                                         ; $43f9: $df
	add  h                                           ; $43fa: $84
	rst  $38                                         ; $43fb: $ff
	add  b                                           ; $43fc: $80
	add  a                                           ; $43fd: $87
	ld   b, $cf                                      ; $43fe: $06 $cf
	call $e5ff                                       ; $4400: $cd $ff $e5
	rst  $38                                         ; $4403: $ff
	and  $fe                                         ; $4404: $e6 $fe
	add  b                                           ; $4406: $80
	rst  JumpTable                                         ; $4407: $df
	ld   [de], a                                     ; $4408: $12
	cp   $f0                                         ; $4409: $fe $f0
	pop  af                                          ; $440b: $f1
	rst  $38                                         ; $440c: $ff
	ld   [$b5e8], a                                  ; $440d: $ea $e8 $b5
	rst  $30                                         ; $4410: $f7
	sbc  l                                           ; $4411: $9d
	db   $fd                                         ; $4412: $fd
	ret  c                                           ; $4413: $d8

	rst  $38                                         ; $4414: $ff
	add  sp, -$11                                    ; $4415: $e8 $ef
	ld   a, a                                        ; $4417: $7f
	ld   c, e                                        ; $4418: $4b
	ret  z                                           ; $4419: $c8

	ld   b, b                                        ; $441a: $40
	ld   c, h                                        ; $441b: $4c
	add  d                                           ; $441c: $82
	ldh  a, [$80]                                    ; $441d: $f0 $80
	and  b                                           ; $441f: $a0
	ld   [$10f0], sp                                 ; $4420: $08 $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $4423: $f0 $10
	ldh  a, [rSVBK]                                  ; $4425: $f0 $70
	ldh  a, [rSVBK]                                  ; $4427: $f0 $70
	ldh  a, [$80]                                    ; $4429: $f0 $80
	cp   $0a                                         ; $442b: $fe $0a
	dec  a                                           ; $442d: $3d
	db   $fd                                         ; $442e: $fd
	ld   [hl], a                                     ; $442f: $77
	or   a                                           ; $4430: $b7
	ret                                              ; $4431: $c9


	ret  z                                           ; $4432: $c8

	ld   a, [hl]                                     ; $4433: $7e
	ld   h, b                                        ; $4434: $60
	call nz, $03d8                                   ; $4435: $c4 $d8 $03
	add  c                                           ; $4438: $81
	nop                                              ; $4439: $00
	add  b                                           ; $443a: $80
	ld   a, [$fb08]                                  ; $443b: $fa $08 $fb
	add  d                                           ; $443e: $82
	adc  h                                           ; $443f: $8c
	db   $e4                                         ; $4440: $e4
	ld   a, [$4308]                                  ; $4441: $fa $08 $43
	jr   nz, jr_07d_43c6                             ; $4444: $20 $80

	add  e                                           ; $4446: $83
	nop                                              ; $4447: $00
	ld   [$87ff], sp                                 ; $4448: $08 $ff $87
	db   $e4                                         ; $444b: $e4
	sub  b                                           ; $444c: $90
	ei                                               ; $444d: $fb
	dec  b                                           ; $444e: $05
	adc  h                                           ; $444f: $8c
	nop                                              ; $4450: $00
	ld   a, [hl]                                     ; $4451: $7e
	add  e                                           ; $4452: $83
	nop                                              ; $4453: $00
	add  b                                           ; $4454: $80
	ld   bc, $f009                                   ; $4455: $01 $09 $f0
	ret  nz                                          ; $4458: $c0

	ld   h, b                                        ; $4459: $60
	db   $10                                         ; $445a: $10
	or   b                                           ; $445b: $b0
	ret  nz                                          ; $445c: $c0

	ld   b, b                                        ; $445d: $40
	nop                                              ; $445e: $00
	ld   h, b                                        ; $445f: $60
	db   $10                                         ; $4460: $10
	add  b                                           ; $4461: $80
	ld   b, b                                        ; $4462: $40
	add  d                                           ; $4463: $82
	jr   nz, @+$01                                   ; $4464: $20 $ff

	nop                                              ; $4466: $00
	rst  $38                                         ; $4467: $ff
	nop                                              ; $4468: $00
	rst  $38                                         ; $4469: $ff
	nop                                              ; $446a: $00
	rst  $38                                         ; $446b: $ff
	nop                                              ; $446c: $00
	rst  $38                                         ; $446d: $ff
	nop                                              ; $446e: $00
	rst  $38                                         ; $446f: $ff
	nop                                              ; $4470: $00
	ld   hl, sp+$00                                  ; $4471: $f8 $00
	adc  l                                           ; $4473: $8d
	ld   bc, $ff84                                   ; $4474: $01 $84 $ff
	inc  b                                           ; $4477: $04
	ret  nz                                          ; $4478: $c0

	rst  $38                                         ; $4479: $ff
	nop                                              ; $447a: $00
	rst  $38                                         ; $447b: $ff
	ccf                                              ; $447c: $3f
	add  c                                           ; $447d: $81
	rst  $38                                         ; $447e: $ff
	ld   [$fff0], sp                                 ; $447f: $08 $f0 $ff
	ldh  a, [rIE]                                    ; $4482: $f0 $ff
	db   $fc                                         ; $4484: $fc
	rst  $38                                         ; $4485: $ff
	nop                                              ; $4486: $00
	rst  $38                                         ; $4487: $ff
	inc  bc                                          ; $4488: $03
	add  c                                           ; $4489: $81
	rst  $38                                         ; $448a: $ff
	ld   a, [bc]                                     ; $448b: $0a
	cp   $ff                                         ; $448c: $fe $ff
	add  b                                           ; $448e: $80
	rst  $38                                         ; $448f: $ff
	ld   bc, $72ff                                   ; $4490: $01 $ff $72
	rst  $38                                         ; $4493: $ff
	rlca                                             ; $4494: $07
	ld   a, [$810f]                                  ; $4495: $fa $0f $81
	rst  $38                                         ; $4498: $ff
	inc  b                                           ; $4499: $04
	ldh  a, [rIE]                                    ; $449a: $f0 $ff
	nop                                              ; $449c: $00
	rst  $38                                         ; $449d: $ff
	rrca                                             ; $449e: $0f
	add  c                                           ; $449f: $81
	rst  $38                                         ; $44a0: $ff
	add  b                                           ; $44a1: $80
	push de                                          ; $44a2: $d5
	add  b                                           ; $44a3: $80
	xor  e                                           ; $44a4: $ab
	ld   b, $54                                      ; $44a5: $06 $54
	ld   d, l                                        ; $44a7: $55
	cp   h                                           ; $44a8: $bc
	cp   a                                           ; $44a9: $bf
	add  hl, hl                                      ; $44aa: $29
	db   $eb                                         ; $44ab: $eb
	ccf                                              ; $44ac: $3f
	add  c                                           ; $44ad: $81
	rst  $38                                         ; $44ae: $ff
	ld   [$ffe0], sp                                 ; $44af: $08 $e0 $ff
	ldh  [rIE], a                                    ; $44b2: $e0 $ff
	ld   hl, sp-$01                                  ; $44b4: $f8 $ff
	nop                                              ; $44b6: $00
	rst  $38                                         ; $44b7: $ff
	rlca                                             ; $44b8: $07
	add  c                                           ; $44b9: $81
	rst  $38                                         ; $44ba: $ff
	inc  b                                           ; $44bb: $04
	db   $fc                                         ; $44bc: $fc
	rst  $38                                         ; $44bd: $ff
	nop                                              ; $44be: $00
	rst  $38                                         ; $44bf: $ff

Call_07d_44c0:
	inc  bc                                          ; $44c0: $03
	add  c                                           ; $44c1: $81
	rst  $38                                         ; $44c2: $ff
	inc  bc                                          ; $44c3: $03
	dec  d                                           ; $44c4: $15
	push de                                          ; $44c5: $d5
	dec  hl                                          ; $44c6: $2b
	db   $eb                                         ; $44c7: $eb
	add  b                                           ; $44c8: $80
	rst  JumpTable                                         ; $44c9: $df
	inc  b                                           ; $44ca: $04
	ldh  [rIE], a                                    ; $44cb: $e0 $ff
	nop                                              ; $44cd: $00
	rst  $38                                         ; $44ce: $ff
	rra                                              ; $44cf: $1f
	add  c                                           ; $44d0: $81
	rst  $38                                         ; $44d1: $ff
	ld   [bc], a                                     ; $44d2: $02
	ld   hl, sp-$05                                  ; $44d3: $f8 $fb
	rst  $38                                         ; $44d5: $ff
	add  b                                           ; $44d6: $80
	db   $fc                                         ; $44d7: $fc
	inc  bc                                          ; $44d8: $03
	rst  $38                                         ; $44d9: $ff
	nop                                              ; $44da: $00
	rst  $38                                         ; $44db: $ff
	inc  bc                                          ; $44dc: $03
	add  c                                           ; $44dd: $81
	rst  $38                                         ; $44de: $ff
	inc  b                                           ; $44df: $04
	cp   $ff                                         ; $44e0: $fe $ff
	nop                                              ; $44e2: $00
	rst  $38                                         ; $44e3: $ff
	cp   $81                                         ; $44e4: $fe $81
	rst  $38                                         ; $44e6: $ff
	nop                                              ; $44e7: $00
	ccf                                              ; $44e8: $3f
	add  b                                           ; $44e9: $80
	rst  $38                                         ; $44ea: $ff
	ld   [$f7df], sp                                 ; $44eb: $08 $df $f7
	rst  $28                                         ; $44ee: $ef
	jp   $03fd                                       ; $44ef: $c3 $fd $03


	ld   a, [$fd3d]                                  ; $44f2: $fa $3d $fd
	add  [hl]                                        ; $44f5: $86
	nop                                              ; $44f6: $00
	nop                                              ; $44f7: $00
	rst  $38                                         ; $44f8: $ff
	add  l                                           ; $44f9: $85
	nop                                              ; $44fa: $00
	nop                                              ; $44fb: $00
	rst  $38                                         ; $44fc: $ff
	add  l                                           ; $44fd: $85
	nop                                              ; $44fe: $00
	ld   bc, $e010                                   ; $44ff: $01 $10 $e0
	add  b                                           ; $4502: $80
	ret  nc                                          ; $4503: $d0

	add  b                                           ; $4504: $80
	ldh  [$80], a                                    ; $4505: $e0 $80
	ret  nc                                          ; $4507: $d0

	nop                                              ; $4508: $00
	rrca                                             ; $4509: $0f
	add  a                                           ; $450a: $87
	nop                                              ; $450b: $00
	add  b                                           ; $450c: $80
	ld   de, $8180                                   ; $450d: $11 $80 $81
	ld   [bc], a                                     ; $4510: $02
	ld   b, h                                        ; $4511: $44
	ld   c, h                                        ; $4512: $4c
	ld   [$0083], sp                                 ; $4513: $08 $83 $00
	add  b                                           ; $4516: $80
	inc  d                                           ; $4517: $14
	add  b                                           ; $4518: $80
	nop                                              ; $4519: $00
	add  b                                           ; $451a: $80
	adc  h                                           ; $451b: $8c
	add  b                                           ; $451c: $80
	ld   c, d                                        ; $451d: $4a
	adc  b                                           ; $451e: $88
	nop                                              ; $451f: $00
	add  b                                           ; $4520: $80
	sub  e                                           ; $4521: $93
	add  b                                           ; $4522: $80
	ld   [bc], a                                     ; $4523: $02
	add  b                                           ; $4524: $80
	ld   h, b                                        ; $4525: $60
	add  b                                           ; $4526: $80
	ld   d, e                                        ; $4527: $53
	ld   bc, $7c44                                   ; $4528: $01 $44 $7c
	add  d                                           ; $452b: $82
	jr   c, @+$05                                    ; $452c: $38 $03

	ld   hl, sp-$38                                  ; $452e: $f8 $c8
	ld   hl, sp-$10                                  ; $4530: $f8 $f0
	add  b                                           ; $4532: $80
	db   $fc                                         ; $4533: $fc
	add  d                                           ; $4534: $82
	rst  $38                                         ; $4535: $ff
	add  b                                           ; $4536: $80
	db   $10                                         ; $4537: $10
	dec  bc                                          ; $4538: $0b
	add  hl, hl                                      ; $4539: $29
	add  hl, bc                                      ; $453a: $09
	add  hl, hl                                      ; $453b: $29
	jr   z, jr_07d_455e                              ; $453c: $28 $20

	ldh  [rAUD2HIGH], a                              ; $453e: $e0 $19
	ld   sp, hl                                      ; $4540: $f9
	ld   bc, $0807                                   ; $4541: $01 $07 $08
	rra                                              ; $4544: $1f
	add  b                                           ; $4545: $80
	jr   jr_07d_454b                                 ; $4546: $18 $03

	inc  d                                           ; $4548: $14
	ld   c, $c6                                      ; $4549: $0e $c6

jr_07d_454b:
	call z, $6080                                    ; $454b: $cc $80 $60
	add  b                                           ; $454e: $80
	ld   h, $0a                                      ; $454f: $26 $0a
	add  hl, hl                                      ; $4551: $29
	ld   hl, $8101                                   ; $4552: $21 $01 $81
	ld   c, c                                        ; $4555: $49
	db   $dd                                         ; $4556: $dd
	inc  e                                           ; $4557: $1c
	ld   a, h                                        ; $4558: $7c
	adc  h                                           ; $4559: $8c
	rst  $38                                         ; $455a: $ff
	rrca                                             ; $455b: $0f
	add  c                                           ; $455c: $81
	rst  $38                                         ; $455d: $ff

jr_07d_455e:
	inc  b                                           ; $455e: $04
	ld   hl, sp-$01                                  ; $455f: $f8 $ff
	nop                                              ; $4561: $00
	rst  $38                                         ; $4562: $ff
	rlca                                             ; $4563: $07
	add  c                                           ; $4564: $81
	rst  $38                                         ; $4565: $ff
	ld   [bc], a                                     ; $4566: $02
	ei                                               ; $4567: $fb
	rst  $38                                         ; $4568: $ff
	ei                                               ; $4569: $fb
	add  c                                           ; $456a: $81
	rst  $38                                         ; $456b: $ff
	inc  b                                           ; $456c: $04
	ldh  [rIE], a                                    ; $456d: $e0 $ff
	nop                                              ; $456f: $00
	rst  $38                                         ; $4570: $ff
	rra                                              ; $4571: $1f
	add  c                                           ; $4572: $81
	rst  $38                                         ; $4573: $ff
	ld   [$ffe0], sp                                 ; $4574: $08 $e0 $ff

jr_07d_4577:
	nop                                              ; $4577: $00
	rst  $38                                         ; $4578: $ff
	inc  e                                           ; $4579: $1c
	rst  $38                                         ; $457a: $ff
	nop                                              ; $457b: $00
	rst  $38                                         ; $457c: $ff
	inc  bc                                          ; $457d: $03
	add  c                                           ; $457e: $81
	rst  $38                                         ; $457f: $ff
	inc  b                                           ; $4580: $04
	db   $fc                                         ; $4581: $fc

jr_07d_4582:
	rst  $38                                         ; $4582: $ff
	nop                                              ; $4583: $00
	rst  $38                                         ; $4584: $ff
	inc  bc                                          ; $4585: $03
	add  c                                           ; $4586: $81
	rst  $38                                         ; $4587: $ff
	ld   [bc], a                                     ; $4588: $02
	rra                                              ; $4589: $1f
	rst  $38                                         ; $458a: $ff
	rra                                              ; $458b: $1f
	add  c                                           ; $458c: $81
	rst  $38                                         ; $458d: $ff
	inc  b                                           ; $458e: $04
	ldh  [rIE], a                                    ; $458f: $e0 $ff
	nop                                              ; $4591: $00
	rst  $38                                         ; $4592: $ff
	rra                                              ; $4593: $1f
	add  c                                           ; $4594: $81
	rst  $38                                         ; $4595: $ff
	ld   [$fffe], sp                                 ; $4596: $08 $fe $ff
	cp   $ff                                         ; $4599: $fe $ff
	db   $fc                                         ; $459b: $fc
	rst  $38                                         ; $459c: $ff
	nop                                              ; $459d: $00
	rst  $38                                         ; $459e: $ff
	inc  bc                                          ; $459f: $03
	add  c                                           ; $45a0: $81
	rst  $38                                         ; $45a1: $ff
	ld   a, [bc]                                     ; $45a2: $0a
	cp   $ff                                         ; $45a3: $fe $ff
	ret  nz                                          ; $45a5: $c0

	rst  $38                                         ; $45a6: $ff
	ld   bc, $20ff                                   ; $45a7: $01 $ff $20
	rst  $38                                         ; $45aa: $ff
	nop                                              ; $45ab: $00
	rst  $38                                         ; $45ac: $ff
	rra                                              ; $45ad: $1f
	add  c                                           ; $45ae: $81
	rst  $38                                         ; $45af: $ff
	inc  b                                           ; $45b0: $04
	ldh  a, [rIE]                                    ; $45b1: $f0 $ff
	nop                                              ; $45b3: $00
	rst  $38                                         ; $45b4: $ff
	rrca                                             ; $45b5: $0f
	add  l                                           ; $45b6: $85
	rst  $38                                         ; $45b7: $ff
	ld   b, $fc                                      ; $45b8: $06 $fc
	rst  $38                                         ; $45ba: $ff
	add  b                                           ; $45bb: $80
	rst  $38                                         ; $45bc: $ff
	inc  bc                                          ; $45bd: $03
	rst  $38                                         ; $45be: $ff
	ld   a, a                                        ; $45bf: $7f
	add  c                                           ; $45c0: $81
	rst  $38                                         ; $45c1: $ff
	add  hl, bc                                      ; $45c2: $09
	cp   $ff                                         ; $45c3: $fe $ff
	ei                                               ; $45c5: $fb
	ld   a, [$ffe0]                                  ; $45c6: $fa $e0 $ff
	ld   bc, $1dfe                                   ; $45c9: $01 $fe $1d
	db   $fd                                         ; $45cc: $fd
	add  b                                           ; $45cd: $80
	rst  $38                                         ; $45ce: $ff
	ld   b, $fc                                      ; $45cf: $06 $fc
	rst  $38                                         ; $45d1: $ff
	ret  nz                                          ; $45d2: $c0

	rst  $38                                         ; $45d3: $ff
	inc  bc                                          ; $45d4: $03
	rst  $38                                         ; $45d5: $ff
	ccf                                              ; $45d6: $3f
	adc  l                                           ; $45d7: $8d
	nop                                              ; $45d8: $00
	ld   bc, $e0ef                                   ; $45d9: $01 $ef $e0
	add  b                                           ; $45dc: $80
	ret  nc                                          ; $45dd: $d0

	add  b                                           ; $45de: $80
	ldh  [$80], a                                    ; $45df: $e0 $80
	ret  nc                                          ; $45e1: $d0

	add  b                                           ; $45e2: $80
	ldh  [$80], a                                    ; $45e3: $e0 $80
	ret  nc                                          ; $45e5: $d0

	add  b                                           ; $45e6: $80
	ldh  [$80], a                                    ; $45e7: $e0 $80
	ret  nc                                          ; $45e9: $d0

	ld   bc, $0e01                                   ; $45ea: $01 $01 $0e
	add  d                                           ; $45ed: $82
	nop                                              ; $45ee: $00
	add  b                                           ; $45ef: $80
	cp   b                                           ; $45f0: $b8
	inc  bc                                          ; $45f1: $03
	inc  b                                           ; $45f2: $04
	inc  h                                           ; $45f3: $24
	nop                                              ; $45f4: $00
	jr   nz, jr_07d_4577                             ; $45f5: $20 $80

	ld   b, c                                        ; $45f7: $41
	add  b                                           ; $45f8: $80
	ld   bc, $3080                                   ; $45f9: $01 $80 $30
	inc  bc                                          ; $45fc: $03
	ld   [$0818], sp                                 ; $45fd: $08 $18 $08
	jr   jr_07d_4582                                 ; $4600: $18 $80

Jump_07d_4602:
	nop                                              ; $4602: $00
	add  b                                           ; $4603: $80
	ldh  [rSC], a                                    ; $4604: $e0 $02
	rla                                              ; $4606: $17
	sub  a                                           ; $4607: $97
	ret  nz                                          ; $4608: $c0

	add  b                                           ; $4609: $80
	call nz, $4402                                   ; $460a: $c4 $02 $44
	ld   b, $02                                      ; $460d: $06 $02
	add  b                                           ; $460f: $80
	ret  nz                                          ; $4610: $c0

	add  b                                           ; $4611: $80
	and  a                                           ; $4612: $a7
	dec  b                                           ; $4613: $05
	add  c                                           ; $4614: $81
	pop  bc                                          ; $4615: $c1
	ld   b, c                                        ; $4616: $41
	inc  bc                                          ; $4617: $03
	ld   [bc], a                                     ; $4618: $02
	nop                                              ; $4619: $00
	add  b                                           ; $461a: $80
	cp   b                                           ; $461b: $b8
	inc  bc                                          ; $461c: $03
	inc  b                                           ; $461d: $04
	inc  d                                           ; $461e: $14
	rst  $38                                         ; $461f: $ff
	ldh  [$80], a                                    ; $4620: $e0 $80
	ret  nc                                          ; $4622: $d0

	add  b                                           ; $4623: $80
	ldh  [$80], a                                    ; $4624: $e0 $80
	ret  nc                                          ; $4626: $d0

	add  b                                           ; $4627: $80
	ldh  [$80], a                                    ; $4628: $e0 $80
	ldh  a, [$80]                                    ; $462a: $f0 $80
	ld   h, b                                        ; $462c: $60

jr_07d_462d:
	add  b                                           ; $462d: $80
	ld   [hl], b                                     ; $462e: $70
	nop                                              ; $462f: $00
	rrca                                             ; $4630: $0f
	add  b                                           ; $4631: $80
	db   $10                                         ; $4632: $10
	ld   [bc], a                                     ; $4633: $02
	ld   bc, $3c3d                                   ; $4634: $01 $3d $3c
	add  [hl]                                        ; $4637: $86
	ccf                                              ; $4638: $3f
	add  b                                           ; $4639: $80
	rst  $38                                         ; $463a: $ff
	ld   bc, $fe7e                                   ; $463b: $01 $7e $fe
	add  b                                           ; $463e: $80
	ret  nz                                          ; $463f: $c0

	ld   bc, $8101                                   ; $4640: $01 $01 $81
	add  b                                           ; $4643: $80
	add  d                                           ; $4644: $82
	add  b                                           ; $4645: $80
	add  b                                           ; $4646: $80
	nop                                              ; $4647: $00
	ld   hl, sp-$7e                                  ; $4648: $f8 $82
	ld   sp, hl                                      ; $464a: $f9
	ld   b, $fa                                      ; $464b: $06 $fa
	ld   [bc], a                                     ; $464d: $02
	jr   nc, jr_07d_4670                             ; $464e: $30 $20

	jr   c, jr_07d_462d                              ; $4650: $38 $db

	di                                               ; $4652: $f3
	add  b                                           ; $4653: $80
	add  e                                           ; $4654: $83
	add  b                                           ; $4655: $80
	ld   a, e                                        ; $4656: $7b
	add  b                                           ; $4657: $80
	rra                                              ; $4658: $1f
	add  d                                           ; $4659: $82
	jr   jr_07d_465d                                 ; $465a: $18 $01

	ld   l, a                                        ; $465c: $6f

jr_07d_465d:
	ld   h, b                                        ; $465d: $60
	add  b                                           ; $465e: $80
	ld   [hl], b                                     ; $465f: $70
	add  b                                           ; $4660: $80
	ld   h, b                                        ; $4661: $60
	add  b                                           ; $4662: $80
	ld   [hl], b                                     ; $4663: $70
	add  b                                           ; $4664: $80
	ld   h, b                                        ; $4665: $60
	add  b                                           ; $4666: $80
	ld   [hl], b                                     ; $4667: $70
	add  b                                           ; $4668: $80
	ld   h, b                                        ; $4669: $60
	add  b                                           ; $466a: $80
	ld   [hl], b                                     ; $466b: $70
	nop                                              ; $466c: $00
	ldh  a, [$81]                                    ; $466d: $f0 $81
	rst  $38                                         ; $466f: $ff

jr_07d_4670:
	adc  b                                           ; $4670: $88
	cp   $80                                         ; $4671: $fe $80
	rst  $38                                         ; $4673: $ff
	add  hl, bc                                      ; $4674: $09
	ld   hl, sp-$06                                  ; $4675: $f8 $fa
	ld   b, $00                                      ; $4677: $06 $00
	dec  b                                           ; $4679: $05
	inc  e                                           ; $467a: $1c
	ld   e, $1f                                      ; $467b: $1e $1f
	ld   e, $3e                                      ; $467d: $1e $3e
	add  c                                           ; $467f: $81
	inc  a                                           ; $4680: $3c
	inc  bc                                          ; $4681: $03
	inc  c                                           ; $4682: $0c
	adc  h                                           ; $4683: $8c
	add  b                                           ; $4684: $80
	ld   [$2980], sp                                 ; $4685: $08 $80 $29
	ld   c, $69                                      ; $4688: $0e $69
	ld   h, c                                        ; $468a: $61
	db   $e3                                         ; $468b: $e3
	dec  de                                          ; $468c: $1b
	ei                                               ; $468d: $fb
	ld   bc, $0107                                   ; $468e: $01 $07 $01
	dec  de                                          ; $4691: $1b
	ld   e, h                                        ; $4692: $5c
	ld   a, a                                        ; $4693: $7f
	ld   a, b                                        ; $4694: $78
	ld   a, h                                        ; $4695: $7c
	ld   d, a                                        ; $4696: $57
	ld   h, b                                        ; $4697: $60
	add  b                                           ; $4698: $80
	ld   [hl], b                                     ; $4699: $70
	add  b                                           ; $469a: $80
	ld   h, b                                        ; $469b: $60
	adc  b                                           ; $469c: $88
	jr   nc, jr_07d_469f                             ; $469d: $30 $00

jr_07d_469f:
	ldh  a, [$8b]                                    ; $469f: $f0 $8b
	rst  $38                                         ; $46a1: $ff
	inc  bc                                          ; $46a2: $03
	cp   a                                           ; $46a3: $bf
	ld   a, a                                        ; $46a4: $7f
	jr   nz, @-$1e                                   ; $46a5: $20 $e0

	add  b                                           ; $46a7: $80
	ld   hl, sp-$80                                  ; $46a8: $f8 $80
	cp   $88                                         ; $46aa: $fe $88
	rst  $38                                         ; $46ac: $ff
	add  d                                           ; $46ad: $82
	nop                                              ; $46ae: $00
	add  b                                           ; $46af: $80
	jr   nz, jr_07d_46b3                             ; $46b0: $20 $01

	sub  a                                           ; $46b2: $97

jr_07d_46b3:
	rla                                              ; $46b3: $17
	add  b                                           ; $46b4: $80
	rrca                                             ; $46b5: $0f
	ld   [bc], a                                     ; $46b6: $02
	ld   [$48c8], sp                                 ; $46b7: $08 $c8 $48
	add  b                                           ; $46ba: $80

jr_07d_46bb:
	add  sp, $01                                     ; $46bb: $e8 $01
	xor  b                                           ; $46bd: $a8
	ld   e, a                                        ; $46be: $5f
	adc  l                                           ; $46bf: $8d
	ldh  a, [$03]                                    ; $46c0: $f0 $03
	pop  af                                          ; $46c2: $f1
	rst  $38                                         ; $46c3: $ff
	cp   $ff                                         ; $46c4: $fe $ff
	adc  b                                           ; $46c6: $88
	cp   $80                                         ; $46c7: $fe $80
	rst  $38                                         ; $46c9: $ff
	add  b                                           ; $46ca: $80
	ld   hl, sp-$7e                                  ; $46cb: $f8 $82
	nop                                              ; $46cd: $00
	inc  bc                                          ; $46ce: $03
	ld   bc, $0003                                   ; $46cf: $01 $03 $00
	ld   [bc], a                                     ; $46d2: $02
	add  d                                           ; $46d3: $82
	nop                                              ; $46d4: $00
	add  b                                           ; $46d5: $80
	add  b                                           ; $46d6: $80
	add  d                                           ; $46d7: $82
	ld   [$0080], sp                                 ; $46d8: $08 $80 $00
	add  b                                           ; $46db: $80
	ld   hl, sp-$7e                                  ; $46dc: $f8 $82
	nop                                              ; $46de: $00
	inc  bc                                          ; $46df: $03
	ld   bc, $0003                                   ; $46e0: $01 $03 $00
	ld   [bc], a                                     ; $46e3: $02
	add  b                                           ; $46e4: $80
	ldh  a, [$80]                                    ; $46e5: $f0 $80
	db   $fc                                         ; $46e7: $fc
	add  b                                           ; $46e8: $80
	cp   $88                                         ; $46e9: $fe $88
	rst  $38                                         ; $46eb: $ff
	add  h                                           ; $46ec: $84
	nop                                              ; $46ed: $00
	add  b                                           ; $46ee: $80
	ldh  [$80], a                                    ; $46ef: $e0 $80
	ld   hl, sp-$80                                  ; $46f1: $f8 $80
	db   $fc                                         ; $46f3: $fc
	add  d                                           ; $46f4: $82
	rst  $38                                         ; $46f5: $ff
	add  d                                           ; $46f6: $82
	ld   bc, $0080                                   ; $46f7: $01 $80 $00
	inc  bc                                          ; $46fa: $03
	rra                                              ; $46fb: $1f
	ld   a, a                                        ; $46fc: $7f

jr_07d_46fd:
	jr   nz, jr_07d_473f                             ; $46fd: $20 $40

	add  d                                           ; $46ff: $82
	nop                                              ; $4700: $00
	add  b                                           ; $4701: $80
	ld   bc, $ec05                                   ; $4702: $01 $05 $ec
	call z, $ec2c                                    ; $4705: $cc $2c $ec
	ldh  [rP1], a                                    ; $4708: $e0 $00
	add  b                                           ; $470a: $80
	jp   $1880                                       ; $470b: $c3 $80 $18


	add  b                                           ; $470e: $80
	ld   bc, $c080                                   ; $470f: $01 $80 $c0
	add  b                                           ; $4712: $80
	jr   jr_07d_471a                                 ; $4713: $18 $05

	ld   a, l                                        ; $4715: $7d
	rst  $38                                         ; $4716: $ff
	add  d                                           ; $4717: $82
	rst  $38                                         ; $4718: $ff
	rst  $30                                         ; $4719: $f7

jr_07d_471a:
	ld   [$0180], sp                                 ; $471a: $08 $80 $01
	add  b                                           ; $471d: $80
	ldh  [$80], a                                    ; $471e: $e0 $80
	sbc  [hl]                                        ; $4720: $9e
	add  b                                           ; $4721: $80
	ld   sp, $0680                                   ; $4722: $31 $80 $06
	dec  b                                           ; $4725: $05
	rst  $30                                         ; $4726: $f7
	rst  $38                                         ; $4727: $ff
	ld   [$f4ff], sp                                 ; $4728: $08 $ff $f4
	dec  bc                                          ; $472b: $0b
	add  b                                           ; $472c: $80
	add  b                                           ; $472d: $80
	add  b                                           ; $472e: $80
	jr   nc, @-$7e                                   ; $472f: $30 $80

	dec  bc                                          ; $4731: $0b
	add  b                                           ; $4732: $80
	ret  nz                                          ; $4733: $c0

	add  b                                           ; $4734: $80
	jr   c, jr_07d_4739                              ; $4735: $38 $02

	rst  JumpTable                                         ; $4737: $df
	rst  $38                                         ; $4738: $ff

jr_07d_4739:
	jr   nz, jr_07d_46bb                             ; $4739: $20 $80

	rst  $38                                         ; $473b: $ff
	nop                                              ; $473c: $00
	nop                                              ; $473d: $00
	add  b                                           ; $473e: $80

jr_07d_473f:
	ret  c                                           ; $473f: $d8

	add  b                                           ; $4740: $80
	ld   b, $80                                      ; $4741: $06 $80
	nop                                              ; $4743: $00
	add  b                                           ; $4744: $80
	or   b                                           ; $4745: $b0
	add  b                                           ; $4746: $80

jr_07d_4747:
	dec  bc                                          ; $4747: $0b
	dec  b                                           ; $4748: $05
	ld   a, l                                        ; $4749: $7d
	rst  $38                                         ; $474a: $ff
	add  d                                           ; $474b: $82
	rst  $38                                         ; $474c: $ff
	ld   a, [$8005]                                  ; $474d: $fa $05 $80
	nop                                              ; $4750: $00
	add  b                                           ; $4751: $80
	add  b                                           ; $4752: $80
	add  b                                           ; $4753: $80
	ld   [hl], $82                                   ; $4754: $36 $82
	nop                                              ; $4756: $00
	add  b                                           ; $4757: $80
	rst  $38                                         ; $4758: $ff
	inc  bc                                          ; $4759: $03
	rlca                                             ; $475a: $07
	rst  $38                                         ; $475b: $ff
	cp   b                                           ; $475c: $b8
	ld   b, b                                        ; $475d: $40
	add  b                                           ; $475e: $80
	dec  l                                           ; $475f: $2d
	add  b                                           ; $4760: $80
	inc  b                                           ; $4761: $04
	add  b                                           ; $4762: $80
	nop                                              ; $4763: $00
	add  b                                           ; $4764: $80
	ldh  a, [$80]                                    ; $4765: $f0 $80
	rlca                                             ; $4767: $07
	add  d                                           ; $4768: $82
	rst  $38                                         ; $4769: $ff
	add  b                                           ; $476a: $80
	nop                                              ; $476b: $00
	add  b                                           ; $476c: $80
	add  b                                           ; $476d: $80
	add  b                                           ; $476e: $80
	or   [hl]                                        ; $476f: $b6
	add  b                                           ; $4770: $80
	ld   de, $0082                                   ; $4771: $11 $82 $00
	add  b                                           ; $4774: $80
	add  b                                           ; $4775: $80
	add  b                                           ; $4776: $80
	rst  $38                                         ; $4777: $ff
	add  h                                           ; $4778: $84
	nop                                              ; $4779: $00
	add  b                                           ; $477a: $80
	jr   nc, jr_07d_46fd                             ; $477b: $30 $80

	add  hl, bc                                      ; $477d: $09
	add  d                                           ; $477e: $82
	nop                                              ; $477f: $00
	add  b                                           ; $4780: $80
	add  b                                           ; $4781: $80
	add  h                                           ; $4782: $84
	nop                                              ; $4783: $00
	add  b                                           ; $4784: $80
	ld   bc, $8080                                   ; $4785: $01 $80 $80
	add  b                                           ; $4788: $80
	ld   c, h                                        ; $4789: $4c
	adc  b                                           ; $478a: $88
	nop                                              ; $478b: $00
	add  b                                           ; $478c: $80
	adc  h                                           ; $478d: $8c
	add  b                                           ; $478e: $80
	ld   b, d                                        ; $478f: $42
	adc  b                                           ; $4790: $88
	nop                                              ; $4791: $00
	add  b                                           ; $4792: $80
	inc  bc                                          ; $4793: $03
	add  b                                           ; $4794: $80
	nop                                              ; $4795: $00
	add  b                                           ; $4796: $80
	ld   h, b                                        ; $4797: $60
	add  b                                           ; $4798: $80
	inc  de                                          ; $4799: $13
	add  b                                           ; $479a: $80
	db   $fc                                         ; $479b: $fc
	adc  h                                           ; $479c: $8c
	rst  $38                                         ; $479d: $ff
	inc  bc                                          ; $479e: $03
	dec  b                                           ; $479f: $05
	rlca                                             ; $47a0: $07
	ld   b, $04                                      ; $47a1: $06 $04
	add  b                                           ; $47a3: $80
	nop                                              ; $47a4: $00
	add  d                                           ; $47a5: $82
	ld   hl, sp-$7c                                  ; $47a6: $f8 $84

jr_07d_47a8:
	rst  $38                                         ; $47a8: $ff
	add  b                                           ; $47a9: $80
	ldh  [$80], a                                    ; $47aa: $e0 $80
	nop                                              ; $47ac: $00
	inc  bc                                          ; $47ad: $03
	rrca                                             ; $47ae: $0f
	rra                                              ; $47af: $1f
	nop                                              ; $47b0: $00
	db   $10                                         ; $47b1: $10
	add  b                                           ; $47b2: $80
	nop                                              ; $47b3: $00
	add  d                                           ; $47b4: $82
	ldh  [$80], a                                    ; $47b5: $e0 $80
	db   $fc                                         ; $47b7: $fc
	dec  b                                           ; $47b8: $05
	add  l                                           ; $47b9: $85
	add  a                                           ; $47ba: $87
	ld   a, [bc]                                     ; $47bb: $0a
	add  hl, bc                                      ; $47bc: $09

jr_07d_47bd:
	add  c                                           ; $47bd: $81
	add  b                                           ; $47be: $80
	add  d                                           ; $47bf: $82
	nop                                              ; $47c0: $00
	inc  bc                                          ; $47c1: $03
	rra                                              ; $47c2: $1f
	ccf                                              ; $47c3: $3f
	nop                                              ; $47c4: $00
	jr   nz, jr_07d_4747                             ; $47c5: $20 $80

	nop                                              ; $47c7: $00
	add  b                                           ; $47c8: $80

jr_07d_47c9:
	ret  nz                                          ; $47c9: $c0

	add  b                                           ; $47ca: $80
	inc  e                                           ; $47cb: $1c
	dec  b                                           ; $47cc: $05
	dec  bc                                          ; $47cd: $0b
	adc  a                                           ; $47ce: $8f
	inc  d                                           ; $47cf: $14
	sub  d                                           ; $47d0: $92
	ld   [bc], a                                     ; $47d1: $02
	ld   bc, $8180                                   ; $47d2: $01 $80 $81
	ld   bc, $0100                                   ; $47d5: $01 $00 $01
	adc  b                                           ; $47d8: $88
	nop                                              ; $47d9: $00
	add  b                                           ; $47da: $80
	ld   a, b                                        ; $47db: $78
	add  b                                           ; $47dc: $80
	rlca                                             ; $47dd: $07
	add  d                                           ; $47de: $82
	nop                                              ; $47df: $00
	add  b                                           ; $47e0: $80
	ld   [bc], a                                     ; $47e1: $02
	add  b                                           ; $47e2: $80
	ld   h, b                                        ; $47e3: $60
	add  b                                           ; $47e4: $80
	inc  c                                           ; $47e5: $0c
	add  b                                           ; $47e6: $80
	add  b                                           ; $47e7: $80
	add  b                                           ; $47e8: $80
	ld   d, c                                        ; $47e9: $51
	add  b                                           ; $47ea: $80
	xor  d                                           ; $47eb: $aa
	add  b                                           ; $47ec: $80
	ld   a, [hl]                                     ; $47ed: $7e
	add  b                                           ; $47ee: $80
	rst  $38                                         ; $47ef: $ff
	add  b                                           ; $47f0: $80
	rst  ToBoot                                         ; $47f1: $c7
	add  b                                           ; $47f2: $80
	ld   b, [hl]                                     ; $47f3: $46
	add  b                                           ; $47f4: $80
	add  hl, bc                                      ; $47f5: $09
	add  b                                           ; $47f6: $80
	ldh  [$80], a                                    ; $47f7: $e0 $80
	rrca                                             ; $47f9: $0f
	add  b                                           ; $47fa: $80
	db   $10                                         ; $47fb: $10
	add  b                                           ; $47fc: $80
	nop                                              ; $47fd: $00
	add  b                                           ; $47fe: $80
	ldh  [$80], a                                    ; $47ff: $e0 $80
	nop                                              ; $4801: $00
	add  b                                           ; $4802: $80
	ldh  a, [rTIMA]                                  ; $4803: $f0 $05
	ld   l, $3e                                      ; $4805: $2e $3e
	ld   d, c                                        ; $4807: $51
	ld   c, c                                        ; $4808: $49
	nop                                              ; $4809: $00
	ld   [$0180], sp                                 ; $480a: $08 $80 $01
	inc  bc                                          ; $480d: $03
	ld   a, b                                        ; $480e: $78
	ld   hl, sp+$00                                  ; $480f: $f8 $00
	add  b                                           ; $4811: $80
	add  b                                           ; $4812: $80
	sbc  b                                           ; $4813: $98
	add  d                                           ; $4814: $82
	inc  b                                           ; $4815: $04
	add  b                                           ; $4816: $80
	ret  nz                                          ; $4817: $c0

	rlca                                             ; $4818: $07
	cp   b                                           ; $4819: $b8
	ld   hl, sp+$47                                  ; $481a: $f8 $47
	daa                                              ; $481c: $27

jr_07d_481d:
	ld   [bc], a                                     ; $481d: $02
	inc  hl                                          ; $481e: $23
	dec  b                                           ; $481f: $05
	inc  b                                           ; $4820: $04
	add  b                                           ; $4821: $80
	nop                                              ; $4822: $00
	add  b                                           ; $4823: $80
	ret  nz                                          ; $4824: $c0

	add  b                                           ; $4825: $80
	jr   nz, jr_07d_47a8                             ; $4826: $20 $80

	ld   h, $80                                      ; $4828: $26 $80
	ld   bc, $8180                                   ; $482a: $01 $80 $81
	add  b                                           ; $482d: $80
	ld   [hl], b                                     ; $482e: $70
	inc  bc                                          ; $482f: $03
	ld   c, $8e                                      ; $4830: $0e $8e
	inc  e                                           ; $4832: $1c
	sbc  h                                           ; $4833: $9c
	add  b                                           ; $4834: $80
	ld   [bc], a                                     ; $4835: $02
	add  d                                           ; $4836: $82
	nop                                              ; $4837: $00
	add  b                                           ; $4838: $80
	jr   nc, jr_07d_47bd                             ; $4839: $30 $82

	ld   [$0082], sp                                 ; $483b: $08 $82 $00
	add  b                                           ; $483e: $80
	ldh  [$80], a                                    ; $483f: $e0 $80
	rla                                              ; $4841: $17
	add  d                                           ; $4842: $82
	nop                                              ; $4843: $00
	add  b                                           ; $4844: $80
	ret  nz                                          ; $4845: $c0

	add  b                                           ; $4846: $80
	jr   nz, jr_07d_47c9                             ; $4847: $20 $80

	ld   h, $80                                      ; $4849: $26 $80
	ld   [bc], a                                     ; $484b: $02
	add  d                                           ; $484c: $82
	nop                                              ; $484d: $00
	add  b                                           ; $484e: $80
	cp   b                                           ; $484f: $b8
	add  b                                           ; $4850: $80
	inc  b                                           ; $4851: $04
	add  h                                           ; $4852: $84
	nop                                              ; $4853: $00
	add  b                                           ; $4854: $80
	jr   nc, @-$7e                                   ; $4855: $30 $80

	ld   [$0082], sp                                 ; $4857: $08 $82 $00
	add  b                                           ; $485a: $80
	ldh  [$80], a                                    ; $485b: $e0 $80
	rla                                              ; $485d: $17
	add  h                                           ; $485e: $84
	nop                                              ; $485f: $00
	add  b                                           ; $4860: $80
	ret  nz                                          ; $4861: $c0

	add  b                                           ; $4862: $80
	daa                                              ; $4863: $27
	add  h                                           ; $4864: $84
	nop                                              ; $4865: $00
	add  b                                           ; $4866: $80
	cp   b                                           ; $4867: $b8
	add  b                                           ; $4868: $80
	inc  b                                           ; $4869: $04
	add  d                                           ; $486a: $82
	nop                                              ; $486b: $00
	add  b                                           ; $486c: $80
	inc  a                                           ; $486d: $3c
	add  [hl]                                        ; $486e: $86
	ccf                                              ; $486f: $3f
	add  b                                           ; $4870: $80
	rst  $38                                         ; $4871: $ff
	inc  bc                                          ; $4872: $03
	ld   a, $7e                                      ; $4873: $3e $7e
	nop                                              ; $4875: $00
	ld   b, b                                        ; $4876: $40
	add  b                                           ; $4877: $80
	ld   bc, $8280                                   ; $4878: $01 $80 $82
	add  b                                           ; $487b: $80
	add  b                                           ; $487c: $80
	add  h                                           ; $487d: $84
	ld   hl, sp-$7d                                  ; $487e: $f8 $83

Call_07d_4880:
	nop                                              ; $4880: $00
	ld   bc, $e7e0                                   ; $4881: $01 $e0 $e7
	add  b                                           ; $4884: $80
	rla                                              ; $4885: $17
	nop                                              ; $4886: $00
	rrca                                             ; $4887: $0f
	add  d                                           ; $4888: $82
	ld   [$0001], sp                                 ; $4889: $08 $01 $00
	ld   [$c082], sp                                 ; $488c: $08 $82 $c0
	add  b                                           ; $488f: $80
	ld   hl, sp-$80                                  ; $4890: $f8 $80
	cp   $86                                         ; $4892: $fe $86
	rst  $38                                         ; $4894: $ff
	inc  bc                                          ; $4895: $03
	rrca                                             ; $4896: $0f
	ccf                                              ; $4897: $3f
	db   $10                                         ; $4898: $10
	jr   nz, jr_07d_481d                             ; $4899: $20 $82

	nop                                              ; $489b: $00
	add  d                                           ; $489c: $82
	ret  nz                                          ; $489d: $c0

	add  b                                           ; $489e: $80
	db   $fc                                         ; $489f: $fc
	add  b                                           ; $48a0: $80
	rst  $38                                         ; $48a1: $ff
	inc  bc                                          ; $48a2: $03
	nop                                              ; $48a3: $00
	ld   bc, $0100                                   ; $48a4: $01 $00 $01
	add  b                                           ; $48a7: $80
	add  b                                           ; $48a8: $80
	add  b                                           ; $48a9: $80
	ld   a, [hl]                                     ; $48aa: $7e
	inc  b                                           ; $48ab: $04
	add  hl, de                                      ; $48ac: $19
	dec  e                                           ; $48ad: $1d
	inc  h                                           ; $48ae: $24
	ld   [hl+], a                                    ; $48af: $22
	ld   [bc], a                                     ; $48b0: $02
	add  c                                           ; $48b1: $81
	ld   bc, $2105                                   ; $48b2: $01 $05 $21
	jr   nc, jr_07d_48c8                             ; $48b5: $30 $11

	add  hl, bc                                      ; $48b7: $09
	nop                                              ; $48b8: $00
	ld   [$0080], sp                                 ; $48b9: $08 $80 $00
	add  b                                           ; $48bc: $80
	ld   hl, sp-$80                                  ; $48bd: $f8 $80
	nop                                              ; $48bf: $00
	inc  bc                                          ; $48c0: $03
	rlca                                             ; $48c1: $07
	rrca                                             ; $48c2: $0f
	nop                                              ; $48c3: $00
	ld   [$0080], sp                                 ; $48c4: $08 $80 $00
	add  hl, bc                                      ; $48c7: $09

jr_07d_48c8:
	ld   b, b                                        ; $48c8: $40
	ret  nz                                          ; $48c9: $c0

	and  b                                           ; $48ca: $a0
	ld   h, b                                        ; $48cb: $60
	ld   h, h                                        ; $48cc: $64
	ld   h, $22                                      ; $48cd: $26 $22
	ld   hl, $0100                                   ; $48cf: $21 $00 $01
	add  b                                           ; $48d2: $80
	pop  bc                                          ; $48d3: $c1
	add  b                                           ; $48d4: $80
	nop                                              ; $48d5: $00
	nop                                              ; $48d6: $00
	rst  $38                                         ; $48d7: $ff
	rst  $38                                         ; $48d8: $ff
	nop                                              ; $48d9: $00
	rst  $38                                         ; $48da: $ff
	nop                                              ; $48db: $00
	rst  $38                                         ; $48dc: $ff
	nop                                              ; $48dd: $00
	rst  $38                                         ; $48de: $ff
	nop                                              ; $48df: $00
	rst  $38                                         ; $48e0: $ff
	nop                                              ; $48e1: $00
	ret  z                                           ; $48e2: $c8

	nop                                              ; $48e3: $00
	add  c                                           ; $48e4: $81
	ld   bc, $0f01                                   ; $48e5: $01 $01 $0f
	nop                                              ; $48e8: $00
	add  b                                           ; $48e9: $80
	ld   [bc], a                                     ; $48ea: $02
	ld   [$0705], sp                                 ; $48eb: $08 $05 $07
	nop                                              ; $48ee: $00
	inc  bc                                          ; $48ef: $03
	ld   b, $07                                      ; $48f0: $06 $07
	dec  c                                           ; $48f2: $0d
	rrca                                             ; $48f3: $0f
	ld   [$0f80], sp                                 ; $48f4: $08 $80 $0f
	dec  c                                           ; $48f7: $0d
	ld   c, $f4                                      ; $48f8: $0e $f4
	rlca                                             ; $48fa: $07
	and  a                                           ; $48fb: $a7
	cp   a                                           ; $48fc: $bf
	adc  a                                           ; $48fd: $8f
	cp   $0a                                         ; $48fe: $fe $0a
	db   $fc                                         ; $4900: $fc
	ld   c, b                                        ; $4901: $48
	ldh  a, [$60]                                    ; $4902: $f0 $60
	ret  nz                                          ; $4904: $c0

	add  b                                           ; $4905: $80
	add  c                                           ; $4906: $81
	nop                                              ; $4907: $00
	dec  b                                           ; $4908: $05
	ld   hl, $0ee5                                   ; $4909: $21 $e5 $0e
	adc  $05                                         ; $490c: $ce $05
	ld   bc, $0280                                   ; $490e: $01 $80 $02
	add  [hl]                                        ; $4911: $86
	nop                                              ; $4912: $00
	ld   bc, $610e                                   ; $4913: $01 $0e $61
	add  b                                           ; $4916: $80
	db   $e3                                         ; $4917: $e3
	add  b                                           ; $4918: $80
	ld   b, a                                        ; $4919: $47
	nop                                              ; $491a: $00
	rrca                                             ; $491b: $0f
	add  b                                           ; $491c: $80
	nop                                              ; $491d: $00
	add  b                                           ; $491e: $80
	rrca                                             ; $491f: $0f
	nop                                              ; $4920: $00
	nop                                              ; $4921: $00
	add  b                                           ; $4922: $80
	jr   z, @-$7e                                    ; $4923: $28 $80

	ld   [hl], h                                     ; $4925: $74
	dec  de                                          ; $4926: $1b
	scf                                              ; $4927: $37
	rst  $38                                         ; $4928: $ff
	rlca                                             ; $4929: $07
	rst  $38                                         ; $492a: $ff
	ld   c, a                                        ; $492b: $4f
	rst  $38                                         ; $492c: $ff
	ldh  [rP1], a                                    ; $492d: $e0 $00
	add  a                                           ; $492f: $87
	ld   hl, sp+$7f                                  ; $4930: $f8 $7f
	nop                                              ; $4932: $00
	ld   [bc], a                                     ; $4933: $02
	ld   a, [de]                                     ; $4934: $1a
	inc  b                                           ; $4935: $04
	inc  a                                           ; $4936: $3c
	or   $f9                                         ; $4937: $f6 $f9
	add  c                                           ; $4939: $81
	pop  af                                          ; $493a: $f1
	rlca                                             ; $493b: $07
	rst  $20                                         ; $493c: $e7
	and  b                                           ; $493d: $a0
	rra                                              ; $493e: $1f
	ldh  a, [rIF]                                    ; $493f: $f0 $0f
	rst  $38                                         ; $4941: $ff
	nop                                              ; $4942: $00
	add  b                                           ; $4943: $80
	inc  l                                           ; $4944: $2c
	add  b                                           ; $4945: $80
	ld   a, b                                        ; $4946: $78
	ld   bc, $ec19                                   ; $4947: $01 $19 $ec
	add  b                                           ; $494a: $80
	ret  z                                           ; $494b: $c8

	add  b                                           ; $494c: $80
	ld   [$0104], sp                            ; $494d: $08 $04 $01
	ldh  a, [$0b]                                    ; $4950: $f0 $0b
	ld   a, [$83f1]                                  ; $4952: $fa $f1 $83
	nop                                              ; $4955: $00
	ld   a, [bc]                                     ; $4956: $0a
	ld   d, h                                        ; $4957: $54
	cp   a                                           ; $4958: $bf
	ld   c, [hl]                                     ; $4959: $4e
	ld   a, a                                        ; $495a: $7f
	sbc  [hl]                                        ; $495b: $9e
	rst  $38                                         ; $495c: $ff
	cp   a                                           ; $495d: $bf
	nop                                              ; $495e: $00
	pop  hl                                          ; $495f: $e1
	ld   e, $ff                                      ; $4960: $1e $ff
	add  e                                           ; $4962: $83
	nop                                              ; $4963: $00
	inc  b                                           ; $4964: $04
	or   b                                           ; $4965: $b0
	rst  $38                                         ; $4966: $ff
	rrca                                             ; $4967: $0f
	rst  $38                                         ; $4968: $ff
	cp   a                                           ; $4969: $bf
	add  b                                           ; $496a: $80
	rst  $38                                         ; $496b: $ff
	inc  bc                                          ; $496c: $03
	nop                                              ; $496d: $00
	or   a                                           ; $496e: $b7
	ld   c, b                                        ; $496f: $48
	rst  $38                                         ; $4970: $ff
	add  e                                           ; $4971: $83
	nop                                              ; $4972: $00
	ld   bc, $f907                                   ; $4973: $01 $07 $f9
	add  b                                           ; $4976: $80
	pop  af                                          ; $4977: $f1
	add  b                                           ; $4978: $80
	pop  bc                                          ; $4979: $c1
	inc  b                                           ; $497a: $04
	nop                                              ; $497b: $00
	cp   $ff                                         ; $497c: $fe $ff
	ld   bc, $83fe                                   ; $497e: $01 $fe $83
	nop                                              ; $4981: $00
	ld   bc, $0fcf                                   ; $4982: $01 $cf $0f
	add  h                                           ; $4985: $84
	nop                                              ; $4986: $00
	add  h                                           ; $4987: $84
	ld   b, b                                        ; $4988: $40
	add  b                                           ; $4989: $80
	ret  nz                                          ; $498a: $c0

	ld   bc, $ff3f                                   ; $498b: $01 $3f $ff
	add  b                                           ; $498e: $80
	ld   a, a                                        ; $498f: $7f
	add  b                                           ; $4990: $80
	xor  e                                           ; $4991: $ab
	add  b                                           ; $4992: $80
	dec  d                                           ; $4993: $15
	add  b                                           ; $4994: $80
	ld   a, [hl+]                                    ; $4995: $2a
	add  b                                           ; $4996: $80

jr_07d_4997:
	dec  b                                           ; $4997: $05
	add  d                                           ; $4998: $82
	nop                                              ; $4999: $00
	add  d                                           ; $499a: $82
	rst  $38                                         ; $499b: $ff
	add  b                                           ; $499c: $80
	rst  $28                                         ; $499d: $ef
	add  b                                           ; $499e: $80
	ld   d, a                                        ; $499f: $57
	add  b                                           ; $49a0: $80
	xor  e                                           ; $49a1: $ab
	add  b                                           ; $49a2: $80
	ld   e, a                                        ; $49a3: $5f
	add  d                                           ; $49a4: $82
	nop                                              ; $49a5: $00
	nop                                              ; $49a6: $00
	add  a                                           ; $49a7: $87
	add  c                                           ; $49a8: $81
	add  c                                           ; $49a9: $81
	add  d                                           ; $49aa: $82

jr_07d_49ab:
	pop  bc                                          ; $49ab: $c1
	add  b                                           ; $49ac: $80
	pop  hl                                          ; $49ad: $e1
	add  b                                           ; $49ae: $80

jr_07d_49af:
	ldh  [$80], a                                    ; $49af: $e0 $80
	ld   bc, $0080                                   ; $49b1: $01 $80 $00
	nop                                              ; $49b4: $00
	cp   $85                                         ; $49b5: $fe $85
	db   $fc                                         ; $49b7: $fc
	add  b                                           ; $49b8: $80
	ld   [hl], h                                     ; $49b9: $74
	add  b                                           ; $49ba: $80
	xor  h                                           ; $49bb: $ac
	add  b                                           ; $49bc: $80
	ld   d, h                                        ; $49bd: $54
	add  b                                           ; $49be: $80
	inc  l                                           ; $49bf: $2c
	inc  bc                                          ; $49c0: $03
	db   $e4                                         ; $49c1: $e4
	db   $e3                                         ; $49c2: $e3
	ldh  a, [$f3]                                    ; $49c3: $f0 $f3
	add  b                                           ; $49c5: $80
	ld   hl, sp-$80                                  ; $49c6: $f8 $80
	ei                                               ; $49c8: $fb
	inc  bc                                          ; $49c9: $03
	and  c                                           ; $49ca: $a1
	and  e                                           ; $49cb: $a3
	ld   c, d                                        ; $49cc: $4a
	ld   c, e                                        ; $49cd: $4b
	add  b                                           ; $49ce: $80
	adc  a                                           ; $49cf: $8f
	add  b                                           ; $49d0: $80
	ld   c, $00                                      ; $49d1: $0e $00
	di                                               ; $49d3: $f3
	add  b                                           ; $49d4: $80
	ld   [$008b], sp                                 ; $49d5: $08 $8b $00
	nop                                              ; $49d8: $00
	ldh  a, [$8d]                                    ; $49d9: $f0 $8d
	nop                                              ; $49db: $00
	ld   bc, $00ff                                   ; $49dc: $01 $ff $00
	add  c                                           ; $49df: $81
	rst  $38                                         ; $49e0: $ff
	nop                                              ; $49e1: $00
	nop                                              ; $49e2: $00
	add  b                                           ; $49e3: $80
	xor  d                                           ; $49e4: $aa
	add  b                                           ; $49e5: $80
	ld   bc, $0080                                   ; $49e6: $01 $80 $00
	add  b                                           ; $49e9: $80
	ld   bc, $0080                                   ; $49ea: $01 $80 $00
	ld   hl, $6808                                   ; $49ed: $21 $08 $68
	ld   [hl], b                                     ; $49f0: $70
	ld   [hl], c                                     ; $49f1: $71
	ld   h, b                                        ; $49f2: $60
	ld   h, e                                        ; $49f3: $63
	ld   h, c                                        ; $49f4: $61
	ld   h, a                                        ; $49f5: $67
	ld   h, d                                        ; $49f6: $62
	ld   l, [hl]                                     ; $49f7: $6e
	ld   b, b                                        ; $49f8: $40
	ld   a, c                                        ; $49f9: $79
	ld   hl, $6677                                   ; $49fa: $21 $77 $66
	ld   l, a                                        ; $49fd: $6f
	inc  l                                           ; $49fe: $2c
	ld   l, [hl]                                     ; $49ff: $6e
	ld   c, $de                                      ; $4a00: $0e $de
	ld   a, [de]                                     ; $4a02: $1a
	cp   d                                           ; $4a03: $ba
	ld   [hl-], a                                    ; $4a04: $32
	ld   [hl], d                                     ; $4a05: $72
	halt                                             ; $4a06: $76
	or   $ba                                         ; $4a07: $f6 $ba
	cp   $34                                         ; $4a09: $fe $34
	db   $fc                                         ; $4a0b: $fc
	jp   z, $34fa                                    ; $4a0c: $ca $fa $34

	ld   [hl], h                                     ; $4a0f: $74
	add  b                                           ; $4a10: $80
	ld   l, b                                        ; $4a11: $68
	add  b                                           ; $4a12: $80
	ld   d, b                                        ; $4a13: $50
	add  b                                           ; $4a14: $80
	jr   nz, jr_07d_4997                             ; $4a15: $20 $80

	ld   b, b                                        ; $4a17: $40
	add  h                                           ; $4a18: $84
	nop                                              ; $4a19: $00
	nop                                              ; $4a1a: $00
	inc  b                                           ; $4a1b: $04
	add  e                                           ; $4a1c: $83
	nop                                              ; $4a1d: $00
	adc  c                                           ; $4a1e: $89
	inc  b                                           ; $4a1f: $04
	adc  c                                           ; $4a20: $89
	nop                                              ; $4a21: $00
	add  b                                           ; $4a22: $80
	ld   bc, $0280                                   ; $4a23: $01 $80 $02
	add  b                                           ; $4a26: $80
	nop                                              ; $4a27: $00
	add  b                                           ; $4a28: $80
	jr   nz, jr_07d_49ab                             ; $4a29: $20 $80

	ld   b, b                                        ; $4a2b: $40
	add  b                                           ; $4a2c: $80
	jr   nz, jr_07d_49af                             ; $4a2d: $20 $80

	ld   d, b                                        ; $4a2f: $50
	add  b                                           ; $4a30: $80
	and  b                                           ; $4a31: $a0
	add  b                                           ; $4a32: $80
	ld   d, b                                        ; $4a33: $50
	add  b                                           ; $4a34: $80
	and  b                                           ; $4a35: $a0
	ld   bc, $00ff                                   ; $4a36: $01 $ff $00
	add  c                                           ; $4a39: $81
	rst  $38                                         ; $4a3a: $ff
	nop                                              ; $4a3b: $00
	nop                                              ; $4a3c: $00
	add  b                                           ; $4a3d: $80
	and  d                                           ; $4a3e: $a2
	add  b                                           ; $4a3f: $80
	ld   d, l                                        ; $4a40: $55
	add  b                                           ; $4a41: $80
	and  d                                           ; $4a42: $a2
	add  b                                           ; $4a43: $80
	rst  $20                                         ; $4a44: $e7
	add  c                                           ; $4a45: $81
	nop                                              ; $4a46: $00
	add  l                                           ; $4a47: $85
	ret  nz                                          ; $4a48: $c0

	nop                                              ; $4a49: $00
	add  b                                           ; $4a4a: $80
	add  c                                           ; $4a4b: $81
	ret  nz                                          ; $4a4c: $c0

	ld   bc, $c040                                   ; $4a4d: $01 $40 $c0
	add  b                                           ; $4a50: $80
	rst  ToBoot                                         ; $4a51: $c7
	adc  h                                           ; $4a52: $8c
	nop                                              ; $4a53: $00
	add  b                                           ; $4a54: $80
	rst  $38                                         ; $4a55: $ff
	add  b                                           ; $4a56: $80
	ld   [bc], a                                     ; $4a57: $02
	add  b                                           ; $4a58: $80
	ld   bc, $0280                                   ; $4a59: $01 $80 $02

jr_07d_4a5c:
	add  b                                           ; $4a5c: $80
	ld   bc, $0280                                   ; $4a5d: $01 $80 $02
	add  b                                           ; $4a60: $80
	ld   bc, $0080                                   ; $4a61: $01 $80 $00
	add  b                                           ; $4a64: $80
	rst  $38                                         ; $4a65: $ff
	ld   bc, $d6d0                                   ; $4a66: $01 $d0 $d6
	add  b                                           ; $4a69: $80
	xor  $04                                         ; $4a6a: $ee $04
	call c, $eefe                                    ; $4a6c: $dc $fe $ee
	cp   $f2                                         ; $4a6f: $fe $f2
	add  b                                           ; $4a71: $80
	cp   $07                                         ; $4a72: $fe $07
	sbc  $3e                                         ; $4a74: $de $3e
	ld   l, $fe                                      ; $4a76: $2e $fe
	or   $80                                         ; $4a78: $f6 $80
	add  h                                           ; $4a7a: $84
	nop                                              ; $4a7b: $00
	add  e                                           ; $4a7c: $83
	inc  b                                           ; $4a7d: $04
	add  [hl]                                        ; $4a7e: $86
	nop                                              ; $4a7f: $00
	ld   bc, $8e8d                                   ; $4a80: $01 $8d $8e
	adc  h                                           ; $4a83: $8c
	ld   c, $00                                      ; $4a84: $0e $00
	db   $fc                                         ; $4a86: $fc
	add  [hl]                                        ; $4a87: $86
	nop                                              ; $4a88: $00
	add  e                                           ; $4a89: $83
	rst  $38                                         ; $4a8a: $ff
	add  b                                           ; $4a8b: $80
	ld   [$ff00], a                                  ; $4a8c: $ea $00 $ff
	add  [hl]                                        ; $4a8f: $86
	nop                                              ; $4a90: $00
	add  c                                           ; $4a91: $81
	rst  $38                                         ; $4a92: $ff
	add  b                                           ; $4a93: $80
	ld   d, l                                        ; $4a94: $55
	add  b                                           ; $4a95: $80
	xor  b                                           ; $4a96: $a8
	nop                                              ; $4a97: $00
	rst  $38                                         ; $4a98: $ff
	add  l                                           ; $4a99: $85
	nop                                              ; $4a9a: $00
	ld   bc, $f906                                   ; $4a9b: $01 $06 $f9
	add  b                                           ; $4a9e: $80
	rst  $20                                         ; $4a9f: $e7
	add  b                                           ; $4aa0: $80
	ld   e, $80                                      ; $4aa1: $1e $80
	ldh  a, [rP1]                                    ; $4aa3: $f0 $00
	rst  $38                                         ; $4aa5: $ff
	add  [hl]                                        ; $4aa6: $86
	nop                                              ; $4aa7: $00
	nop                                              ; $4aa8: $00
	ldh  a, [$80]                                    ; $4aa9: $f0 $80
	ret  nz                                          ; $4aab: $c0

	add  b                                           ; $4aac: $80
	db   $10                                         ; $4aad: $10
	add  b                                           ; $4aae: $80
	or   b                                           ; $4aaf: $b0
	ld   bc, $d8d7                                   ; $4ab0: $01 $d7 $d8
	add  b                                           ; $4ab3: $80
	jp   $1b80                                       ; $4ab4: $c3 $80 $1b


	inc  b                                           ; $4ab7: $04
	ret  c                                           ; $4ab8: $d8

	db   $db                                         ; $4ab9: $db
	rst  $10                                         ; $4aba: $d7
	rst  JumpTable                                         ; $4abb: $df
	rst  $28                                         ; $4abc: $ef
	add  c                                           ; $4abd: $81
	rst  $38                                         ; $4abe: $ff
	ld   [bc], a                                     ; $4abf: $02
	cp   a                                           ; $4ac0: $bf
	rst  $38                                         ; $4ac1: $ff
	and  h                                           ; $4ac2: $a4
	adc  c                                           ; $4ac3: $89
	nop                                              ; $4ac4: $00
	inc  b                                           ; $4ac5: $04
	ld   [bc], a                                     ; $4ac6: $02
	nop                                              ; $4ac7: $00

jr_07d_4ac8:
	inc  b                                           ; $4ac8: $04
	nop                                              ; $4ac9: $00
	ld   b, $87                                      ; $4aca: $06 $87
	add  b                                           ; $4acc: $80
	ld   b, $a0                                      ; $4acd: $06 $a0
	add  b                                           ; $4acf: $80

jr_07d_4ad0:
	ld   bc, $c241                                   ; $4ad0: $01 $41 $c2
	add  d                                           ; $4ad3: $82
	and  b                                           ; $4ad4: $a0
	add  c                                           ; $4ad5: $81
	nop                                              ; $4ad6: $00
	add  b                                           ; $4ad7: $80
	db   $10                                         ; $4ad8: $10
	add  b                                           ; $4ad9: $80
	jr   nc, jr_07d_4a5c                             ; $4ada: $30 $80

	ld   h, b                                        ; $4adc: $60
	add  b                                           ; $4add: $80
	add  b                                           ; $4ade: $80
	add  d                                           ; $4adf: $82
	nop                                              ; $4ae0: $00
	add  h                                           ; $4ae1: $84
	and  l                                           ; $4ae2: $a5
	add  b                                           ; $4ae3: $80
	push hl                                          ; $4ae4: $e5
	add  b                                           ; $4ae5: $80
	ccf                                              ; $4ae6: $3f
	add  d                                           ; $4ae7: $82
	dec  h                                           ; $4ae8: $25
	inc  b                                           ; $4ae9: $04
	dec  b                                           ; $4aea: $05
	dec  e                                           ; $4aeb: $1d
	ld   a, [de]                                     ; $4aec: $1a
	inc  b                                           ; $4aed: $04
	ld   b, $80                                      ; $4aee: $06 $80
	ld   [bc], a                                     ; $4af0: $02
	add  b                                           ; $4af1: $80
	db   $fc                                         ; $4af2: $fc
	add  b                                           ; $4af3: $80
	inc  bc                                          ; $4af4: $03
	add  e                                           ; $4af5: $83
	nop                                              ; $4af6: $00
	ld   [$0002], sp                                 ; $4af7: $08 $02 $00
	ld   l, [hl]                                     ; $4afa: $6e
	adc  h                                           ; $4afb: $8c
	call c, $d89c                                    ; $4afc: $dc $9c $d8
	ld   hl, sp-$80                                  ; $4aff: $f8 $80
	add  b                                           ; $4b01: $80
	rst  $38                                         ; $4b02: $ff
	add  e                                           ; $4b03: $83
	add  b                                           ; $4b04: $80
	ld   [bc], a                                     ; $4b05: $02
	and  b                                           ; $4b06: $a0
	add  b                                           ; $4b07: $80
	and  b                                           ; $4b08: $a0
	add  [hl]                                        ; $4b09: $86
	nop                                              ; $4b0a: $00
	add  b                                           ; $4b0b: $80
	ldh  a, [$83]                                    ; $4b0c: $f0 $83
	nop                                              ; $4b0e: $00
	ld   a, [bc]                                     ; $4b0f: $0a
	ld   a, [hl+]                                    ; $4b10: $2a
	sbc  c                                           ; $4b11: $99
	add  hl, sp                                      ; $4b12: $39
	ld   sp, hl                                      ; $4b13: $f9
	di                                               ; $4b14: $f3
	rrca                                             ; $4b15: $0f
	ld   l, a                                        ; $4b16: $6f
	inc  bc                                          ; $4b17: $03
	dec  de                                          ; $4b18: $1b
	add  b                                           ; $4b19: $80
	add  a                                           ; $4b1a: $87
	add  b                                           ; $4b1b: $80
	ldh  [rP1], a                                    ; $4b1c: $e0 $00
	ld   a, a                                        ; $4b1e: $7f
	add  b                                           ; $4b1f: $80
	ret  nz                                          ; $4b20: $c0

	nop                                              ; $4b21: $00
	adc  a                                           ; $4b22: $8f
	add  d                                           ; $4b23: $82
	dec  b                                           ; $4b24: $05
	nop                                              ; $4b25: $00
	add  hl, bc                                      ; $4b26: $09
	add  b                                           ; $4b27: $80
	add  hl, de                                      ; $4b28: $19
	ld   bc, $3d39                                   ; $4b29: $01 $39 $3d
	add  b                                           ; $4b2c: $80
	ld   a, c                                        ; $4b2d: $79
	add  b                                           ; $4b2e: $80
	push af                                          ; $4b2f: $f5
	inc  bc                                          ; $4b30: $03
	dec  c                                           ; $4b31: $0d
	rrca                                             ; $4b32: $0f
	jr   nc, @-$7e                                   ; $4b33: $30 $80

	add  c                                           ; $4b35: $81
	ret  nz                                          ; $4b36: $c0

	add  e                                           ; $4b37: $83
	add  b                                           ; $4b38: $80
	inc  bc                                          ; $4b39: $03
	sub  c                                           ; $4b3a: $91
	pop  de                                          ; $4b3b: $d1
	jp   $80d3                                       ; $4b3c: $c3 $d3 $80


	sbc  $01                                         ; $4b3f: $de $01
	and  b                                           ; $4b41: $a0
	nop                                              ; $4b42: $00
	add  b                                           ; $4b43: $80
	db   $10                                         ; $4b44: $10
	add  b                                           ; $4b45: $80
	jr   nc, jr_07d_4ac8                             ; $4b46: $30 $80

	ld   h, b                                        ; $4b48: $60
	add  b                                           ; $4b49: $80
	ret  nz                                          ; $4b4a: $c0

	add  b                                           ; $4b4b: $80
	sub  b                                           ; $4b4c: $90
	add  b                                           ; $4b4d: $80
	jr   nc, jr_07d_4ad0                             ; $4b4e: $30 $80

	ld   [hl], b                                     ; $4b50: $70
	ld   bc, $55aa                                   ; $4b51: $01 $aa $55
	add  b                                           ; $4b54: $80
	xor  d                                           ; $4b55: $aa
	add  b                                           ; $4b56: $80
	ld   d, h                                        ; $4b57: $54
	add  b                                           ; $4b58: $80
	and  c                                           ; $4b59: $a1
	add  b                                           ; $4b5a: $80
	ld   c, $80                                      ; $4b5b: $0e $80
	ld   [hl], c                                     ; $4b5d: $71
	add  b                                           ; $4b5e: $80
	add  e                                           ; $4b5f: $83
	add  b                                           ; $4b60: $80
	ld   e, e                                        ; $4b61: $5b
	add  b                                           ; $4b62: $80
	ld   b, e                                        ; $4b63: $43
	add  b                                           ; $4b64: $80
	sbc  [hl]                                        ; $4b65: $9e
	add  b                                           ; $4b66: $80
	ld   [hl], b                                     ; $4b67: $70
	add  b                                           ; $4b68: $80
	add  e                                           ; $4b69: $83
	ld   [de], a                                     ; $4b6a: $12
	ld   a, [hl-]                                    ; $4b6b: $3a
	dec  sp                                          ; $4b6c: $3b
	or   h                                           ; $4b6d: $b4
	cp   [hl]                                        ; $4b6e: $be
	and  h                                           ; $4b6f: $a4
	or   b                                           ; $4b70: $b0
	ldh  [$80], a                                    ; $4b71: $e0 $80
	db   $fc                                         ; $4b73: $fc
	add  e                                           ; $4b74: $83
	ld   a, [de]                                     ; $4b75: $1a
	dec  de                                          ; $4b76: $1b
	or   l                                           ; $4b77: $b5
	cp   a                                           ; $4b78: $bf
	call z, $00f8                                    ; $4b79: $cc $f8 $00
	ret  nz                                          ; $4b7c: $c0

	nop                                              ; $4b7d: $00
	add  e                                           ; $4b7e: $83
	add  b                                           ; $4b7f: $80
	inc  b                                           ; $4b80: $04
	ldh  a, [$b0]                                    ; $4b81: $f0 $b0
	ld   [hl], b                                     ; $4b83: $70
	ldh  a, [rLCDC]                                  ; $4b84: $f0 $40
	adc  c                                           ; $4b86: $89
	nop                                              ; $4b87: $00
	rlca                                             ; $4b88: $07
	ret  nc                                          ; $4b89: $d0

	rst  $38                                         ; $4b8a: $ff
	inc  h                                           ; $4b8b: $24
	rst  $38                                         ; $4b8c: $ff
	cpl                                              ; $4b8d: $2f
	rst  $38                                         ; $4b8e: $ff
	ld   sp, hl                                      ; $4b8f: $f9
	db   $fd                                         ; $4b90: $fd
	add  b                                           ; $4b91: $80
	push af                                          ; $4b92: $f5
	add  b                                           ; $4b93: $80
	push hl                                          ; $4b94: $e5
	inc  b                                           ; $4b95: $04
	dec  h                                           ; $4b96: $25
	push hl                                          ; $4b97: $e5
	rra                                              ; $4b98: $1f
	rst  $38                                         ; $4b99: $ff
	ld   [bc], a                                     ; $4b9a: $02
	add  e                                           ; $4b9b: $83
	nop                                              ; $4b9c: $00
	add  h                                           ; $4b9d: $84
	inc  b                                           ; $4b9e: $04
	inc  b                                           ; $4b9f: $04
	inc  c                                           ; $4ba0: $0c
	inc  b                                           ; $4ba1: $04
	inc  c                                           ; $4ba2: $0c
	nop                                              ; $4ba3: $00
	ld   h, $81                                      ; $4ba4: $26 $81
	add  b                                           ; $4ba6: $80
	add  h                                           ; $4ba7: $84
	ret  nz                                          ; $4ba8: $c0

	add  b                                           ; $4ba9: $80
	pop  bc                                          ; $4baa: $c1
	add  b                                           ; $4bab: $80
	ld   b, e                                        ; $4bac: $43
	ld   [bc], a                                     ; $4bad: $02
	add  $86                                         ; $4bae: $c6 $86
	ldh  [$85], a                                    ; $4bb0: $e0 $85
	nop                                              ; $4bb2: $00
	add  b                                           ; $4bb3: $80
	add  b                                           ; $4bb4: $80
	add  h                                           ; $4bb5: $84
	nop                                              ; $4bb6: $00
	ld   b, $38                                      ; $4bb7: $06 $38
	ld   b, c                                        ; $4bb9: $41
	or   d                                           ; $4bba: $b2
	call c, $9dbb                                    ; $4bbb: $dc $bb $9d
	sbc  e                                           ; $4bbe: $9b
	add  a                                           ; $4bbf: $87
	sbc  c                                           ; $4bc0: $99
	nop                                              ; $4bc1: $00
	ld   sp, $0080                                   ; $4bc2: $31 $80 $00
	ld   bc, $0c04                                   ; $4bc5: $01 $04 $0c
	add  a                                           ; $4bc8: $87
	ld   [$0c80], sp                                 ; $4bc9: $08 $80 $0c
	inc  bc                                          ; $4bcc: $03
	ld   [hl+], a                                    ; $4bcd: $22
	add  b                                           ; $4bce: $80
	ret  nz                                          ; $4bcf: $c0

	ret  nc                                          ; $4bd0: $d0

	adc  d                                           ; $4bd1: $8a
	add  b                                           ; $4bd2: $80
	nop                                              ; $4bd3: $00
	or   b                                           ; $4bd4: $b0
	adc  l                                           ; $4bd5: $8d
	nop                                              ; $4bd6: $00
	add  b                                           ; $4bd7: $80
	ret  nz                                          ; $4bd8: $c0

	inc  bc                                          ; $4bd9: $03
	rst  $38                                         ; $4bda: $ff
	ld   hl, sp-$38                                  ; $4bdb: $f8 $c8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bdd: $cf
	add  b                                           ; $4bde: $80
	rst  JumpTable                                         ; $4bdf: $df
	ld   a, [bc]                                     ; $4be0: $0a
	rst  $38                                         ; $4be1: $ff
	ld   a, a                                        ; $4be2: $7f
	rst  $38                                         ; $4be3: $ff
	ld   e, [hl]                                     ; $4be4: $5e
	ld   e, $20                                      ; $4be5: $1e $20
	ld   h, b                                        ; $4be7: $60
	ld   a, a                                        ; $4be8: $7f
	inc  c                                           ; $4be9: $0c
	rlca                                             ; $4bea: $07
	rst  $30                                         ; $4beb: $f7
	add  b                                           ; $4bec: $80
	rlca                                             ; $4bed: $07
	add  b                                           ; $4bee: $80
	add  l                                           ; $4bef: $85
	ld   bc, $8084                                   ; $4bf0: $01 $84 $80

jr_07d_4bf3:
	add  b                                           ; $4bf3: $80
	nop                                              ; $4bf4: $00
	ld   [$0308], sp                                 ; $4bf5: $08 $08 $03
	db   $10                                         ; $4bf8: $10
	jr   jr_07d_4bf3                                 ; $4bf9: $18 $f8

	ld   a, a                                        ; $4bfb: $7f
	call c, $fddd                                    ; $4bfc: $dc $dd $fd
	add  b                                           ; $4bff: $80
	rst  $38                                         ; $4c00: $ff
	add  hl, bc                                      ; $4c01: $09
	ld   a, a                                        ; $4c02: $7f
	rst  $38                                         ; $4c03: $ff
	adc  a                                           ; $4c04: $8f
	cp   a                                           ; $4c05: $bf
	inc  bc                                          ; $4c06: $03
	jp   $3000                                       ; $4c07: $c3 $00 $30


	nop                                              ; $4c0a: $00
	ret  nz                                          ; $4c0b: $c0

	adc  h                                           ; $4c0c: $8c
	ldh  a, [$80]                                    ; $4c0d: $f0 $80
	jr   nc, jr_07d_4c11                             ; $4c0f: $30 $00

jr_07d_4c11:
	nop                                              ; $4c11: $00
	add  b                                           ; $4c12: $80
	ld   a, a                                        ; $4c13: $7f
	nop                                              ; $4c14: $00
	rst  $38                                         ; $4c15: $ff
	adc  b                                           ; $4c16: $88
	nop                                              ; $4c17: $00
	dec  b                                           ; $4c18: $05
	ld   a, [hl+]                                    ; $4c19: $2a
	dec  l                                           ; $4c1a: $2d
	ei                                               ; $4c1b: $fb
	rst  $38                                         ; $4c1c: $ff
	db   $fc                                         ; $4c1d: $fc
	rst  $38                                         ; $4c1e: $ff
	add  c                                           ; $4c1f: $81
	nop                                              ; $4c20: $00
	add  b                                           ; $4c21: $80
	rlca                                             ; $4c22: $07
	add  c                                           ; $4c23: $81
	inc  bc                                          ; $4c24: $03
	inc  b                                           ; $4c25: $04
	rla                                              ; $4c26: $17
	rra                                              ; $4c27: $1f
	sbc  a                                           ; $4c28: $9f
	sbc  c                                           ; $4c29: $99
	ldh  a, [c]                                      ; $4c2a: $f2
	add  b                                           ; $4c2b: $80
	nop                                              ; $4c2c: $00
	nop                                              ; $4c2d: $00
	rst  $38                                         ; $4c2e: $ff
	add  b                                           ; $4c2f: $80
	nop                                              ; $4c30: $00
	nop                                              ; $4c31: $00
	add  b                                           ; $4c32: $80
	add  e                                           ; $4c33: $83
	rst  $38                                         ; $4c34: $ff
	add  b                                           ; $4c35: $80
	cp   $80                                         ; $4c36: $fe $80
	db   $fc                                         ; $4c38: $fc
	nop                                              ; $4c39: $00
	add  b                                           ; $4c3a: $80
	add  b                                           ; $4c3b: $80
	nop                                              ; $4c3c: $00
	nop                                              ; $4c3d: $00
	ldh  a, [$80]                                    ; $4c3e: $f0 $80
	nop                                              ; $4c40: $00
	add  b                                           ; $4c41: $80
	ldh  a, [rP1]                                    ; $4c42: $f0 $00
	ret  nz                                          ; $4c44: $c0

	add  c                                           ; $4c45: $81
	ldh  a, [$80]                                    ; $4c46: $f0 $80
	ldh  [$80], a                                    ; $4c48: $e0 $80
	ret  nz                                          ; $4c4a: $c0

	nop                                              ; $4c4b: $00
	dec  d                                           ; $4c4c: $15
	adc  e                                           ; $4c4d: $8b
	dec  l                                           ; $4c4e: $2d
	add  b                                           ; $4c4f: $80
	ld   l, l                                        ; $4c50: $6d
	ld   [bc], a                                     ; $4c51: $02
	sbc  a                                           ; $4c52: $9f
	sub  c                                           ; $4c53: $91
	sbc  l                                           ; $4c54: $9d
	add  b                                           ; $4c55: $80
	sub  a                                           ; $4c56: $97
	ld   bc, $9495                                   ; $4c57: $01 $95 $94
	add  b                                           ; $4c5a: $80
	sbc  l                                           ; $4c5b: $9d
	ld   bc, $9a9f                                   ; $4c5c: $01 $9f $9a
	add  b                                           ; $4c5f: $80
	sbc  e                                           ; $4c60: $9b
	add  b                                           ; $4c61: $80
	sbc  c                                           ; $4c62: $99
	ld   [bc], a                                     ; $4c63: $02
	sbc  b                                           ; $4c64: $98
	adc  a                                           ; $4c65: $8f
	ld   hl, sp-$80                                  ; $4c66: $f8 $80
	ldh  a, [$80]                                    ; $4c68: $f0 $80
	ldh  [$80], a                                    ; $4c6a: $e0 $80
	ret  nz                                          ; $4c6c: $c0

	ld   [$c080], sp                                 ; $4c6d: $08 $80 $c0
	ld   b, b                                        ; $4c70: $40
	ldh  a, [$90]                                    ; $4c71: $f0 $90
	db   $fc                                         ; $4c73: $fc
	db   $ed                                         ; $4c74: $ed
	ld   a, a                                        ; $4c75: $7f
	adc  [hl]                                        ; $4c76: $8e
	add  c                                           ; $4c77: $81
	ret  nz                                          ; $4c78: $c0

	add  b                                           ; $4c79: $80
	ret  nc                                          ; $4c7a: $d0

	adc  b                                           ; $4c7b: $88
	ldh  a, [rSB]                                    ; $4c7c: $f0 $01
	ret  nz                                          ; $4c7e: $c0

	nop                                              ; $4c7f: $00
	add  c                                           ; $4c80: $81
	rst  $38                                         ; $4c81: $ff
	nop                                              ; $4c82: $00
	nop                                              ; $4c83: $00
	add  b                                           ; $4c84: $80
	xor  d                                           ; $4c85: $aa
	add  b                                           ; $4c86: $80
	ld   d, a                                        ; $4c87: $57
	add  b                                           ; $4c88: $80
	xor  d                                           ; $4c89: $aa
	add  b                                           ; $4c8a: $80
	ld   a, d                                        ; $4c8b: $7a
	add  b                                           ; $4c8c: $80
	nop                                              ; $4c8d: $00

jr_07d_4c8e:
	ld   bc, $00ff                                   ; $4c8e: $01 $ff $00
	add  c                                           ; $4c91: $81
	rst  $38                                         ; $4c92: $ff
	nop                                              ; $4c93: $00
	nop                                              ; $4c94: $00
	add  b                                           ; $4c95: $80
	xor  d                                           ; $4c96: $aa
	add  b                                           ; $4c97: $80
	ld   d, l                                        ; $4c98: $55
	add  b                                           ; $4c99: $80
	xor  d                                           ; $4c9a: $aa
	add  b                                           ; $4c9b: $80
	sbc  $80                                         ; $4c9c: $de $80
	nop                                              ; $4c9e: $00
	ld   bc, $00ff                                   ; $4c9f: $01 $ff $00
	add  c                                           ; $4ca2: $81
	rst  $38                                         ; $4ca3: $ff
	nop                                              ; $4ca4: $00
	nop                                              ; $4ca5: $00
	add  b                                           ; $4ca6: $80
	xor  d                                           ; $4ca7: $aa
	add  b                                           ; $4ca8: $80
	ld   d, b                                        ; $4ca9: $50
	add  b                                           ; $4caa: $80
	xor  c                                           ; $4cab: $a9
	add  b                                           ; $4cac: $80
	ldh  a, [c]                                      ; $4cad: $f2
	add  b                                           ; $4cae: $80
	nop                                              ; $4caf: $00
	ld   bc, $00ff                                   ; $4cb0: $01 $ff $00
	add  c                                           ; $4cb3: $81
	rst  $38                                         ; $4cb4: $ff
	nop                                              ; $4cb5: $00
	nop                                              ; $4cb6: $00
	add  b                                           ; $4cb7: $80
	xor  d                                           ; $4cb8: $aa
	add  b                                           ; $4cb9: $80
	push de                                          ; $4cba: $d5
	add  b                                           ; $4cbb: $80
	xor  d                                           ; $4cbc: $aa
	add  b                                           ; $4cbd: $80
	cp   l                                           ; $4cbe: $bd
	add  b                                           ; $4cbf: $80
	nop                                              ; $4cc0: $00
	dec  b                                           ; $4cc1: $05
	cp   $02                                         ; $4cc2: $fe $02
	db   $f4                                         ; $4cc4: $f4
	ld   hl, sp-$0f                                  ; $4cc5: $f8 $f1
	ld   bc, $aa80                                   ; $4cc7: $01 $80 $aa
	add  b                                           ; $4cca: $80
	ld   d, h                                        ; $4ccb: $54
	add  b                                           ; $4ccc: $80
	xor  c                                           ; $4ccd: $a9
	add  b                                           ; $4cce: $80
	and  $80                                         ; $4ccf: $e6 $80
	daa                                              ; $4cd1: $27
	add  b                                           ; $4cd2: $80
	ret  nz                                          ; $4cd3: $c0

	ld   [bc], a                                     ; $4cd4: $02
	ld   h, a                                        ; $4cd5: $67
	ld   h, h                                        ; $4cd6: $64
	inc  bc                                          ; $4cd7: $03
	add  c                                           ; $4cd8: $81
	nop                                              ; $4cd9: $00
	add  b                                           ; $4cda: $80
	ld   bc, $8184                                   ; $4cdb: $01 $84 $81
	add  b                                           ; $4cde: $80
	nop                                              ; $4cdf: $00
	ld   [bc], a                                     ; $4ce0: $02
	rst  $38                                         ; $4ce1: $ff
	nop                                              ; $4ce2: $00
	rst  $38                                         ; $4ce3: $ff
	add  c                                           ; $4ce4: $81
	nop                                              ; $4ce5: $00
	add  h                                           ; $4ce6: $84
	rst  $28                                         ; $4ce7: $ef
	rlca                                             ; $4ce8: $07
	db   $ec                                         ; $4ce9: $ec
	rst  $28                                         ; $4cea: $ef
	inc  bc                                          ; $4ceb: $03
	nop                                              ; $4cec: $00
	rst  $38                                         ; $4ced: $ff
	nop                                              ; $4cee: $00
	rst  $38                                         ; $4cef: $ff
	nop                                              ; $4cf0: $00
	add  b                                           ; $4cf1: $80
	ld   [bc], a                                     ; $4cf2: $02
	add  b                                           ; $4cf3: $80
	ld   a, d                                        ; $4cf4: $7a

jr_07d_4cf5:
	add  b                                           ; $4cf5: $80
	ld   a, [hl]                                     ; $4cf6: $7e
	add  hl, bc                                      ; $4cf7: $09
	ld   [hl], h                                     ; $4cf8: $74
	ld   a, [hl]                                     ; $4cf9: $7e
	adc  [hl]                                        ; $4cfa: $8e
	cp   $7a                                         ; $4cfb: $fe $7a

jr_07d_4cfd:
	nop                                              ; $4cfd: $00
	rst  $38                                         ; $4cfe: $ff
	nop                                              ; $4cff: $00
	rst  $38                                         ; $4d00: $ff
	nop                                              ; $4d01: $00
	add  b                                           ; $4d02: $80
	pop  hl                                          ; $4d03: $e1
	add  b                                           ; $4d04: $80
	call c, $ae03                                    ; $4d05: $dc $03 $ae
	cp   [hl]                                        ; $4d08: $be
	xor  [hl]                                        ; $4d09: $ae
	cp   [hl]                                        ; $4d0a: $be
	add  b                                           ; $4d0b: $80
	jr   jr_07d_4c8e                                 ; $4d0c: $18 $80

	nop                                              ; $4d0e: $00
	inc  b                                           ; $4d0f: $04
	rst  $38                                         ; $4d10: $ff
	nop                                              ; $4d11: $00
	rst  $38                                         ; $4d12: $ff
	nop                                              ; $4d13: $00
	ld   sp, hl                                      ; $4d14: $f9
	add  c                                           ; $4d15: $81
	ei                                               ; $4d16: $fb
	inc  bc                                          ; $4d17: $03
	ld   a, c                                        ; $4d18: $79
	ld   a, e                                        ; $4d19: $7b
	ld   h, e                                        ; $4d1a: $63
	ld   a, e                                        ; $4d1b: $7b
	add  b                                           ; $4d1c: $80
	dec  sp                                          ; $4d1d: $3b
	dec  b                                           ; $4d1e: $05
	jr   jr_07d_4d21                                 ; $4d1f: $18 $00

jr_07d_4d21:
	ld   sp, hl                                      ; $4d21: $f9
	add  hl, bc                                      ; $4d22: $09
	ldh  a, [rP1]                                    ; $4d23: $f0 $00
	add  b                                           ; $4d25: $80
	rst  $38                                         ; $4d26: $ff
	inc  b                                           ; $4d27: $04
	ld   a, a                                        ; $4d28: $7f
	rst  $38                                         ; $4d29: $ff
	ldh  [rIE], a                                    ; $4d2a: $e0 $ff
	ld   [hl], b                                     ; $4d2c: $70
	add  c                                           ; $4d2d: $81
	ld   a, a                                        ; $4d2e: $7f
	nop                                              ; $4d2f: $00
	ld   l, a                                        ; $4d30: $6f
	rst  $38                                         ; $4d31: $ff
	nop                                              ; $4d32: $00
	rst  $38                                         ; $4d33: $ff
	nop                                              ; $4d34: $00
	rst  $38                                         ; $4d35: $ff
	nop                                              ; $4d36: $00
	rst  $38                                         ; $4d37: $ff
	nop                                              ; $4d38: $00
	rst  $38                                         ; $4d39: $ff
	nop                                              ; $4d3a: $00
	ret  z                                           ; $4d3b: $c8

	nop                                              ; $4d3c: $00
	adc  a                                           ; $4d3d: $8f
	ld   bc, $0f00                                   ; $4d3e: $01 $00 $0f
	add  e                                           ; $4d41: $83
	nop                                              ; $4d42: $00
	ld   a, [bc]                                     ; $4d43: $0a
	ld   a, [bc]                                     ; $4d44: $0a
	rrca                                             ; $4d45: $0f
	nop                                              ; $4d46: $00
	rrca                                             ; $4d47: $0f
	nop                                              ; $4d48: $00
	rrca                                             ; $4d49: $0f
	nop                                              ; $4d4a: $00
	rrca                                             ; $4d4b: $0f
	dec  b                                           ; $4d4c: $05
	rrca                                             ; $4d4d: $0f
	ldh  a, [c]                                      ; $4d4e: $f2
	add  e                                           ; $4d4f: $83
	ld   [bc], a                                     ; $4d50: $02
	ld   a, [bc]                                     ; $4d51: $0a
	xor  b                                           ; $4d52: $a8
	rst  $38                                         ; $4d53: $ff
	ld   [bc], a                                     ; $4d54: $02
	rst  $38                                         ; $4d55: $ff
	nop                                              ; $4d56: $00
	rst  $38                                         ; $4d57: $ff
	nop                                              ; $4d58: $00
	rst  $38                                         ; $4d59: $ff
	ld   d, h                                        ; $4d5a: $54
	rst  $38                                         ; $4d5b: $ff
	nop                                              ; $4d5c: $00
	add  e                                           ; $4d5d: $83
	ld   bc, $020a                                   ; $4d5e: $01 $0a $02
	cp   $b9                                         ; $4d61: $fe $b9
	db   $fd                                         ; $4d63: $fd
	ld   [de], a                                     ; $4d64: $12
	cp   $01                                         ; $4d65: $fe $01
	db   $fd                                         ; $4d67: $fd
	ld   [bc], a                                     ; $4d68: $02
	cp   $d4                                         ; $4d69: $fe $d4
	add  e                                           ; $4d6b: $83
	ret  nz                                          ; $4d6c: $c0

	ld   bc, $3878                                   ; $4d6d: $01 $78 $38
	add  b                                           ; $4d70: $80
	ld   e, h                                        ; $4d71: $5c
	add  b                                           ; $4d72: $80
	jr   c, jr_07d_4cf5                              ; $4d73: $38 $80

	ld   e, h                                        ; $4d75: $5c
	add  b                                           ; $4d76: $80
	jr   c, jr_07d_4cfd                              ; $4d77: $38 $84

	nop                                              ; $4d79: $00
	add  b                                           ; $4d7a: $80
	ccf                                              ; $4d7b: $3f
	add  b                                           ; $4d7c: $80
	ld   a, a                                        ; $4d7d: $7f
	add  b                                           ; $4d7e: $80
	cp   a                                           ; $4d7f: $bf
	add  b                                           ; $4d80: $80
	ld   a, a                                        ; $4d81: $7f
	add  b                                           ; $4d82: $80
	cp   a                                           ; $4d83: $bf
	nop                                              ; $4d84: $00
	inc  c                                           ; $4d85: $0c
	add  e                                           ; $4d86: $83
	ld   c, $03                                      ; $4d87: $0e $03
	pop  af                                          ; $4d89: $f1
	db   $fc                                         ; $4d8a: $fc
	or   $fe                                         ; $4d8b: $f6 $fe
	add  d                                           ; $4d8d: $82
	rst  $38                                         ; $4d8e: $ff
	ld   [bc], a                                     ; $4d8f: $02
	db   $fd                                         ; $4d90: $fd
	rst  $38                                         ; $4d91: $ff
	dec  b                                           ; $4d92: $05
	add  e                                           ; $4d93: $83
	nop                                              ; $4d94: $00
	ld   bc, $00ff                                   ; $4d95: $01 $ff $00
	add  d                                           ; $4d98: $82
	rst  $38                                         ; $4d99: $ff
	inc  b                                           ; $4d9a: $04
	xor  d                                           ; $4d9b: $aa
	rst  $38                                         ; $4d9c: $ff
	nop                                              ; $4d9d: $00
	rst  $38                                         ; $4d9e: $ff
	ld   d, l                                        ; $4d9f: $55
	add  e                                           ; $4da0: $83
	nop                                              ; $4da1: $00
	ld   a, [bc]                                     ; $4da2: $0a
	ld   d, d                                        ; $4da3: $52
	xor  a                                           ; $4da4: $af
	or   $f7                                         ; $4da5: $f6 $f7
	cp   $ff                                         ; $4da7: $fe $ff
	xor  [hl]                                        ; $4da9: $ae
	rst  $38                                         ; $4daa: $ff
	ld   b, $ff                                      ; $4dab: $06 $ff
	ld   b, l                                        ; $4dad: $45
	add  e                                           ; $4dae: $83
	jr   jr_07d_4dbb                                 ; $4daf: $18 $0a

	xor  d                                           ; $4db1: $aa
	ld   a, a                                        ; $4db2: $7f
	jr   z, jr_07d_4e34                              ; $4db3: $28 $7f

	xor  c                                           ; $4db5: $a9
	rst  $38                                         ; $4db6: $ff
	xor  e                                           ; $4db7: $ab
	rst  $38                                         ; $4db8: $ff
	xor  e                                           ; $4db9: $ab
	rst  $38                                         ; $4dba: $ff

jr_07d_4dbb:
	call c, $0082                                    ; $4dbb: $dc $82 $00
	nop                                              ; $4dbe: $00
	ld   bc, $ff80                                   ; $4dbf: $01 $80 $ff
	add  b                                           ; $4dc2: $80
	pop  hl                                          ; $4dc3: $e1
	add  b                                           ; $4dc4: $80
	pop  af                                          ; $4dc5: $f1
	add  b                                           ; $4dc6: $80
	ld   sp, hl                                      ; $4dc7: $f9
	add  b                                           ; $4dc8: $80
	db   $fd                                         ; $4dc9: $fd
	nop                                              ; $4dca: $00
	ld   bc, $0082                                   ; $4dcb: $01 $82 $00
	add  b                                           ; $4dce: $80
	rst  $38                                         ; $4dcf: $ff
	add  b                                           ; $4dd0: $80
	db   $ed                                         ; $4dd1: $ed
	rlca                                             ; $4dd2: $07
	ret  nz                                          ; $4dd3: $c0

	db   $ec                                         ; $4dd4: $ec
	xor  l                                           ; $4dd5: $ad
	add  c                                           ; $4dd6: $81
	pop  hl                                          ; $4dd7: $e1
	push hl                                          ; $4dd8: $e5
	db   $ed                                         ; $4dd9: $ed
	ld   l, c                                        ; $4dda: $69
	add  c                                           ; $4ddb: $81
	ret  nz                                          ; $4ddc: $c0

	dec  b                                           ; $4ddd: $05
	ld   b, b                                        ; $4dde: $40
	rst  $38                                         ; $4ddf: $ff
	db   $fd                                         ; $4de0: $fd
	cp   $fd                                         ; $4de1: $fe $fd
	ld   sp, hl                                      ; $4de3: $f9
	add  c                                           ; $4de4: $81
	ld   hl, sp+$03                                  ; $4de5: $f8 $03
	db   $fc                                         ; $4de7: $fc
	cp   $fb                                         ; $4de8: $fe $fb
	jp   $3a81                                       ; $4dea: $c3 $81 $3a


	dec  c                                           ; $4ded: $0d
	ld   [bc], a                                     ; $4dee: $02
	ld   a, [$39fe]                                  ; $4def: $fa $fe $39
	ld   a, d                                        ; $4df2: $7a
	ld   a, e                                        ; $4df3: $7b
	inc  a                                           ; $4df4: $3c
	ccf                                              ; $4df5: $3f
	jr   c, jr_07d_4e77                              ; $4df6: $38 $7f

	ld   hl, sp-$41                                  ; $4df8: $f8 $bf
	dec  a                                           ; $4dfa: $3d
	nop                                              ; $4dfb: $00
	add  b                                           ; $4dfc: $80
	ld   a, [hl+]                                    ; $4dfd: $2a
	add  b                                           ; $4dfe: $80
	dec  d                                           ; $4dff: $15
	dec  bc                                          ; $4e00: $0b
	ld   a, [$78ff]                                  ; $4e01: $fa $ff $78
	rst  $38                                         ; $4e04: $ff
	ld   a, h                                        ; $4e05: $7c
	rst  $38                                         ; $4e06: $ff
	cp   $ff                                         ; $4e07: $fe $ff
	cp   $ff                                         ; $4e09: $fe $ff
	nop                                              ; $4e0b: $00
	ld   bc, $ab80                                   ; $4e0c: $01 $80 $ab
	add  b                                           ; $4e0f: $80
	ld   d, l                                        ; $4e10: $55
	dec  bc                                          ; $4e11: $0b
	ld   a, a                                        ; $4e12: $7f
	add  e                                           ; $4e13: $83
	db   $e3                                         ; $4e14: $e3
	pop  hl                                          ; $4e15: $e1
	ld   a, c                                        ; $4e16: $79
	ld   hl, sp+$38                                  ; $4e17: $f8 $38
	ld   hl, sp+$1c                                  ; $4e19: $f8 $1c
	db   $fc                                         ; $4e1b: $fc
	rst  JumpTable                                         ; $4e1c: $df
	add  b                                           ; $4e1d: $80
	add  b                                           ; $4e1e: $80
	adc  d                                           ; $4e1f: $8a
	add  b                                           ; $4e20: $80
	sub  l                                           ; $4e21: $95
	add  b                                           ; $4e22: $80
	adc  d                                           ; $4e23: $8a
	add  b                                           ; $4e24: $80
	sub  l                                           ; $4e25: $95
	add  b                                           ; $4e26: $80
	adc  d                                           ; $4e27: $8a
	inc  b                                           ; $4e28: $04
	sub  l                                           ; $4e29: $95
	dec  d                                           ; $4e2a: $15
	ld   c, d                                        ; $4e2b: $4a
	ld   a, [bc]                                     ; $4e2c: $0a
	ccf                                              ; $4e2d: $3f
	adc  c                                           ; $4e2e: $89
	rrca                                             ; $4e2f: $0f
	add  d                                           ; $4e30: $82
	nop                                              ; $4e31: $00
	nop                                              ; $4e32: $00
	rrca                                             ; $4e33: $0f

jr_07d_4e34:
	adc  c                                           ; $4e34: $89
	rst  $38                                         ; $4e35: $ff
	add  d                                           ; $4e36: $82
	nop                                              ; $4e37: $00
	inc  bc                                          ; $4e38: $03
	rst  $30                                         ; $4e39: $f7
	rst  $38                                         ; $4e3a: $ff
	or   $fe                                         ; $4e3b: $f6 $fe
	add  [hl]                                        ; $4e3d: $86
	rst  $38                                         ; $4e3e: $ff
	add  d                                           ; $4e3f: $82
	nop                                              ; $4e40: $00
	add  b                                           ; $4e41: $80
	ld   e, h                                        ; $4e42: $5c
	add  b                                           ; $4e43: $80
	cp   d                                           ; $4e44: $ba
	add  b                                           ; $4e45: $80
	ld   a, l                                        ; $4e46: $7d
	add  b                                           ; $4e47: $80
	ei                                               ; $4e48: $fb
	add  d                                           ; $4e49: $82
	rst  $38                                         ; $4e4a: $ff
	add  d                                           ; $4e4b: $82
	nop                                              ; $4e4c: $00
	add  b                                           ; $4e4d: $80
	ld   a, a                                        ; $4e4e: $7f
	add  b                                           ; $4e4f: $80
	rst  $38                                         ; $4e50: $ff
	add  b                                           ; $4e51: $80
	ld   a, a                                        ; $4e52: $7f
	add  h                                           ; $4e53: $84
	rst  $38                                         ; $4e54: $ff
	add  d                                           ; $4e55: $82
	nop                                              ; $4e56: $00
	inc  b                                           ; $4e57: $04
	db   $fd                                         ; $4e58: $fd
	rst  $38                                         ; $4e59: $ff
	ld   sp, hl                                      ; $4e5a: $f9
	rst  $38                                         ; $4e5b: $ff
	ei                                               ; $4e5c: $fb
	add  l                                           ; $4e5d: $85
	rst  $38                                         ; $4e5e: $ff
	add  d                                           ; $4e5f: $82
	nop                                              ; $4e60: $00
	inc  b                                           ; $4e61: $04
	ld   d, l                                        ; $4e62: $55
	rst  $38                                         ; $4e63: $ff
	ld   d, h                                        ; $4e64: $54
	rst  $38                                         ; $4e65: $ff
	cp   $85                                         ; $4e66: $fe $85
	rst  $38                                         ; $4e68: $ff
	add  d                                           ; $4e69: $82
	nop                                              ; $4e6a: $00
	ld   [$ff57], sp                                 ; $4e6b: $08 $57 $ff
	inc  bc                                          ; $4e6e: $03
	rst  $38                                         ; $4e6f: $ff
	add  e                                           ; $4e70: $83
	rst  $38                                         ; $4e71: $ff
	db   $d3                                         ; $4e72: $d3
	rst  $38                                         ; $4e73: $ff
	ei                                               ; $4e74: $fb
	add  c                                           ; $4e75: $81
	rst  $38                                         ; $4e76: $ff

jr_07d_4e77:
	add  d                                           ; $4e77: $82
	nop                                              ; $4e78: $00
	ld   [bc], a                                     ; $4e79: $02
	ld   [hl], a                                     ; $4e7a: $77
	rst  $38                                         ; $4e7b: $ff
	ld   [hl], a                                     ; $4e7c: $77
	add  a                                           ; $4e7d: $87
	rst  $38                                         ; $4e7e: $ff
	add  d                                           ; $4e7f: $82
	nop                                              ; $4e80: $00
	add  b                                           ; $4e81: $80
	cp   $88                                         ; $4e82: $fe $88
	rst  $38                                         ; $4e84: $ff
	add  h                                           ; $4e85: $84
	nop                                              ; $4e86: $00
	adc  b                                           ; $4e87: $88
	rst  $38                                         ; $4e88: $ff
	add  e                                           ; $4e89: $83
	nop                                              ; $4e8a: $00
	adc  d                                           ; $4e8b: $8a
	ccf                                              ; $4e8c: $3f
	add  b                                           ; $4e8d: $80
	rra                                              ; $4e8e: $1f
	dec  b                                           ; $4e8f: $05
	nop                                              ; $4e90: $00
	dec  b                                           ; $4e91: $05
	rlca                                             ; $4e92: $07
	ld   hl, sp-$01                                  ; $4e93: $f8 $ff
	ld   a, [$ff85]                                  ; $4e95: $fa $85 $ff
	add  d                                           ; $4e98: $82
	nop                                              ; $4e99: $00
	add  b                                           ; $4e9a: $80
	rst  $38                                         ; $4e9b: $ff
	ld   a, [bc]                                     ; $4e9c: $0a
	cp   $ff                                         ; $4e9d: $fe $ff
	cp   $ff                                         ; $4e9f: $fe $ff
	cp   $ff                                         ; $4ea1: $fe $ff
	db   $fc                                         ; $4ea3: $fc
	rst  $38                                         ; $4ea4: $ff
	ld   hl, sp-$01                                  ; $4ea5: $f8 $ff
	dec  b                                           ; $4ea7: $05
	add  c                                           ; $4ea8: $81
	nop                                              ; $4ea9: $00
	inc  c                                           ; $4eaa: $0c
	ld   b, d                                        ; $4eab: $42
	db   $fd                                         ; $4eac: $fd
	ld   e, $fe                                      ; $4ead: $1e $fe
	dec  e                                           ; $4eaf: $1d
	db   $fd                                         ; $4eb0: $fd
	ld   e, $fe                                      ; $4eb1: $1e $fe
	dec  c                                           ; $4eb3: $0d
	db   $fd                                         ; $4eb4: $fd
	ld   a, [hl+]                                    ; $4eb5: $2a
	ld   a, [$817f]                                  ; $4eb6: $fa $7f $81
	nop                                              ; $4eb9: $00
	rlca                                             ; $4eba: $07
	push af                                          ; $4ebb: $f5
	dec  d                                           ; $4ebc: $15
	cp   [hl]                                        ; $4ebd: $be
	xor  [hl]                                        ; $4ebe: $ae
	ld   e, c                                        ; $4ebf: $59
	ld   d, l                                        ; $4ec0: $55
	xor  b                                           ; $4ec1: $a8
	xor  e                                           ; $4ec2: $ab
	add  b                                           ; $4ec3: $80
	ld   d, l                                        ; $4ec4: $55
	add  b                                           ; $4ec5: $80
	xor  d                                           ; $4ec6: $aa
	nop                                              ; $4ec7: $00
	rst  $38                                         ; $4ec8: $ff
	add  c                                           ; $4ec9: $81
	nop                                              ; $4eca: $00
	nop                                              ; $4ecb: $00
	rst  $38                                         ; $4ecc: $ff
	add  l                                           ; $4ecd: $85
	nop                                              ; $4ece: $00
	ld   [bc], a                                     ; $4ecf: $02
	xor  h                                           ; $4ed0: $ac
	ret  nc                                          ; $4ed1: $d0

	sub  b                                           ; $4ed2: $90
	add  e                                           ; $4ed3: $83
	ld   d, b                                        ; $4ed4: $50
	nop                                              ; $4ed5: $00
	cp   h                                           ; $4ed6: $bc
	add  l                                           ; $4ed7: $85
	nop                                              ; $4ed8: $00
	add  b                                           ; $4ed9: $80
	xor  e                                           ; $4eda: $ab
	add  b                                           ; $4edb: $80
	ld   d, l                                        ; $4edc: $55
	add  b                                           ; $4edd: $80
	ld   a, [bc]                                     ; $4ede: $0a
	add  b                                           ; $4edf: $80
	dec  b                                           ; $4ee0: $05
	add  [hl]                                        ; $4ee1: $86
	nop                                              ; $4ee2: $00
	add  b                                           ; $4ee3: $80
	rst  $38                                         ; $4ee4: $ff
	add  b                                           ; $4ee5: $80
	ld   a, a                                        ; $4ee6: $7f
	add  b                                           ; $4ee7: $80
	rst  $38                                         ; $4ee8: $ff
	add  b                                           ; $4ee9: $80
	ld   a, a                                        ; $4eea: $7f
	add  [hl]                                        ; $4eeb: $86
	nop                                              ; $4eec: $00
	add  [hl]                                        ; $4eed: $86
	ldh  a, [rP1]                                    ; $4eee: $f0 $00
	ld   hl, sp-$7f                                  ; $4ef0: $f8 $81
	nop                                              ; $4ef2: $00
	adc  d                                           ; $4ef3: $8a
	add  b                                           ; $4ef4: $80
	inc  bc                                          ; $4ef5: $03
	and  $01                                         ; $4ef6: $e6 $01
	ld   e, $0e                                      ; $4ef8: $1e $0e
	add  b                                           ; $4efa: $80
	ld   [$0988], sp                                 ; $4efb: $08 $88 $09
	ld   bc, $c03f                                   ; $4efe: $01 $3f $c0
	add  b                                           ; $4f01: $80
	nop                                              ; $4f02: $00
	add  b                                           ; $4f03: $80
	ld   [hl], b                                     ; $4f04: $70
	add  [hl]                                        ; $4f05: $86
	ldh  a, [rSC]                                    ; $4f06: $f0 $02
	ldh  [$f0], a                                    ; $4f08: $e0 $f0
	sbc  b                                           ; $4f0a: $98
	add  l                                           ; $4f0b: $85
	add  b                                           ; $4f0c: $80
	nop                                              ; $4f0d: $00
	ld   b, b                                        ; $4f0e: $40
	add  l                                           ; $4f0f: $85
	ret  nz                                          ; $4f10: $c0

	nop                                              ; $4f11: $00
	ld   a, [hl]                                     ; $4f12: $7e
	adc  l                                           ; $4f13: $8d
	add  hl, bc                                      ; $4f14: $09

jr_07d_4f15:
	ld   [bc], a                                     ; $4f15: $02
	rra                                              ; $4f16: $1f
	ldh  a, [$d0]                                    ; $4f17: $f0 $d0
	add  c                                           ; $4f19: $81
	ldh  a, [rSC]                                    ; $4f1a: $f0 $02
	or   b                                           ; $4f1c: $b0
	ldh  a, [rSVBK]                                  ; $4f1d: $f0 $70
	add  l                                           ; $4f1f: $85
	ldh  a, [rP1]                                    ; $4f20: $f0 $00
	cp   b                                           ; $4f22: $b8
	add  l                                           ; $4f23: $85
	ret  nz                                          ; $4f24: $c0

	ld   bc, $c040                                   ; $4f25: $01 $40 $c0
	add  h                                           ; $4f28: $84
	ld   b, b                                        ; $4f29: $40
	nop                                              ; $4f2a: $00
	cp   $8d                                         ; $4f2b: $fe $8d
	add  hl, bc                                      ; $4f2d: $09
	nop                                              ; $4f2e: $00
	rrca                                             ; $4f2f: $0f
	add  e                                           ; $4f30: $83
	ldh  a, [rSC]                                    ; $4f31: $f0 $02
	ldh  [$f0], a                                    ; $4f33: $e0 $f0

jr_07d_4f35:
	ret  nz                                          ; $4f35: $c0

	add  c                                           ; $4f36: $81
	ldh  a, [rP1]                                    ; $4f37: $f0 $00
	sub  b                                           ; $4f39: $90
	add  c                                           ; $4f3a: $81
	ldh  a, [rSB]                                    ; $4f3b: $f0 $01
	ld   [$8640], sp                                 ; $4f3d: $08 $40 $86
	ret  nz                                          ; $4f40: $c0

	add  d                                           ; $4f41: $82
	ld   b, b                                        ; $4f42: $40
	add  b                                           ; $4f43: $80
	nop                                              ; $4f44: $00
	nop                                              ; $4f45: $00
	cp   $8d                                         ; $4f46: $fe $8d
	add  hl, bc                                      ; $4f48: $09
	nop                                              ; $4f49: $00
	adc  a                                           ; $4f4a: $8f
	add  c                                           ; $4f4b: $81
	ldh  [rP1], a                                    ; $4f4c: $e0 $00
	ld   [hl], b                                     ; $4f4e: $70
	add  c                                           ; $4f4f: $81
	ret  nc                                          ; $4f50: $d0

	rrca                                             ; $4f51: $0f
	or   b                                           ; $4f52: $b0
	ldh  a, [$e0]                                    ; $4f53: $f0 $e0
	ldh  a, [rSVBK]                                  ; $4f55: $f0 $70
	ldh  a, [$90]                                    ; $4f57: $f0 $90
	ldh  a, [$88]                                    ; $4f59: $f0 $88
	add  h                                           ; $4f5b: $84
	ld   [$1098], sp                                 ; $4f5c: $08 $98 $10
	ldh  [$e3], a                                    ; $4f5f: $e0 $e3
	nop                                              ; $4f61: $00
	add  b                                           ; $4f62: $80
	ld   [$4880], sp                                 ; $4f63: $08 $80 $48
	add  b                                           ; $4f66: $80
	ld   hl, sp-$80                                  ; $4f67: $f8 $80
	cp   $00                                         ; $4f69: $fe $00
	rst  $38                                         ; $4f6b: $ff
	add  e                                           ; $4f6c: $83
	nop                                              ; $4f6d: $00
	nop                                              ; $4f6e: $00
	rst  $38                                         ; $4f6f: $ff
	add  c                                           ; $4f70: $81
	nop                                              ; $4f71: $00
	add  b                                           ; $4f72: $80
	rst  $38                                         ; $4f73: $ff
	add  d                                           ; $4f74: $82
	nop                                              ; $4f75: $00
	nop                                              ; $4f76: $00
	rlca                                             ; $4f77: $07
	adc  l                                           ; $4f78: $8d
	nop                                              ; $4f79: $00
	ld   bc, $02fa                                   ; $4f7a: $01 $fa $02
	add  b                                           ; $4f7d: $80
	ld   bc, $0080                                   ; $4f7e: $01 $80 $00
	add  b                                           ; $4f81: $80
	ld   bc, $0086                                   ; $4f82: $01 $86 $00
	add  b                                           ; $4f85: $80
	xor  a                                           ; $4f86: $af
	dec  b                                           ; $4f87: $05
	ld   e, [hl]                                     ; $4f88: $5e
	ld   e, a                                        ; $4f89: $5f
	and  c                                           ; $4f8a: $a1
	xor  a                                           ; $4f8b: $af
	ld   b, b                                        ; $4f8c: $40
	ld   d, b                                        ; $4f8d: $50
	add  b                                           ; $4f8e: $80
	and  b                                           ; $4f8f: $a0
	add  b                                           ; $4f90: $80
	ld   b, a                                        ; $4f91: $47
	add  b                                           ; $4f92: $80
	jr   c, jr_07d_4f15                              ; $4f93: $38 $80

	nop                                              ; $4f95: $00
	inc  bc                                          ; $4f96: $03
	rst  $38                                         ; $4f97: $ff
	ldh  a, [rP1]                                    ; $4f98: $f0 $00
	ldh  [$80], a                                    ; $4f9a: $e0 $80
	nop                                              ; $4f9c: $00
	add  b                                           ; $4f9d: $80
	db   $10                                         ; $4f9e: $10
	add  b                                           ; $4f9f: $80
	ldh  [$82], a                                    ; $4fa0: $e0 $82
	nop                                              ; $4fa2: $00
	add  b                                           ; $4fa3: $80
	jr   nc, jr_07d_4fa6                             ; $4fa4: $30 $00

jr_07d_4fa6:
	rrca                                             ; $4fa6: $0f
	sbc  c                                           ; $4fa7: $99
	nop                                              ; $4fa8: $00
	add  b                                           ; $4fa9: $80
	ld   [bc], a                                     ; $4faa: $02
	add  b                                           ; $4fab: $80
	inc  bc                                          ; $4fac: $03
	add  [hl]                                        ; $4fad: $86
	nop                                              ; $4fae: $00
	add  d                                           ; $4faf: $82
	stop                                             ; $4fb0: $10 $00
	jr   nz, jr_07d_4f35                             ; $4fb2: $20 $81

	jr   nc, jr_07d_4fb6                             ; $4fb4: $30 $00

jr_07d_4fb6:
	db   $10                                         ; $4fb6: $10
	adc  c                                           ; $4fb7: $89
	nop                                              ; $4fb8: $00
	add  d                                           ; $4fb9: $82
	inc  b                                           ; $4fba: $04
	add  h                                           ; $4fbb: $84
	nop                                              ; $4fbc: $00
	add  d                                           ; $4fbd: $82
	ld   [bc], a                                     ; $4fbe: $02
	add  d                                           ; $4fbf: $82
	inc  bc                                          ; $4fc0: $03
	add  b                                           ; $4fc1: $80
	inc  de                                          ; $4fc2: $13
	add  d                                           ; $4fc3: $82
	inc  bc                                          ; $4fc4: $03
	add  d                                           ; $4fc5: $82
	inc  de                                          ; $4fc6: $13
	nop                                              ; $4fc7: $00
	ld   d, $83                                      ; $4fc8: $16 $83
	rla                                              ; $4fca: $17
	add  b                                           ; $4fcb: $80
	sub  a                                           ; $4fcc: $97
	ld   bc, $7061                                   ; $4fcd: $01 $61 $70
	add  d                                           ; $4fd0: $82
	ld   [hl], h                                     ; $4fd1: $74
	add  d                                           ; $4fd2: $82
	ld   a, h                                        ; $4fd3: $7c
	ld   bc, $7c78                                   ; $4fd4: $01 $78 $7c
	add  d                                           ; $4fd7: $82
	db   $fc                                         ; $4fd8: $fc
	ld   bc, $8490                                   ; $4fd9: $01 $90 $84
	add  b                                           ; $4fdc: $80
	and  h                                           ; $4fdd: $a4
	add  d                                           ; $4fde: $82
	xor  h                                           ; $4fdf: $ac
	ld   bc, $aca8                                   ; $4fe0: $01 $a8 $ac
	add  c                                           ; $4fe3: $81
	xor  l                                           ; $4fe4: $ad
	add  c                                           ; $4fe5: $81
	cp   l                                           ; $4fe6: $bd
	nop                                              ; $4fe7: $00
	ld   [bc], a                                     ; $4fe8: $02
	adc  l                                           ; $4fe9: $8d
	rla                                              ; $4fea: $17
	nop                                              ; $4feb: $00
	add  a                                           ; $4fec: $87
	adc  l                                           ; $4fed: $8d
	sub  a                                           ; $4fee: $97
	nop                                              ; $4fef: $00
	ld   sp, hl                                      ; $4ff0: $f9
	adc  l                                           ; $4ff1: $8d
	db   $fc                                         ; $4ff2: $fc

jr_07d_4ff3:
	add  h                                           ; $4ff3: $84
	cp   l                                           ; $4ff4: $bd
	nop                                              ; $4ff5: $00
	or   l                                           ; $4ff6: $b5
	add  c                                           ; $4ff7: $81
	cp   l                                           ; $4ff8: $bd
	add  h                                           ; $4ff9: $84
	db   $fd                                         ; $4ffa: $fd
	ld   [bc], a                                     ; $4ffb: $02
	ld   a, [bc]                                     ; $4ffc: $0a
	rla                                              ; $4ffd: $17
	ld   d, $81                                      ; $4ffe: $16 $81
	rla                                              ; $5000: $17
	add  d                                           ; $5001: $82
	ld   d, $80                                      ; $5002: $16 $80
	ld   b, $80                                      ; $5004: $06 $80
	inc  b                                           ; $5006: $04
	add  b                                           ; $5007: $80
	nop                                              ; $5008: $00
	add  h                                           ; $5009: $84
	sub  a                                           ; $500a: $97
	ld   [bc], a                                     ; $500b: $02
	sub  b                                           ; $500c: $90
	sub  e                                           ; $500d: $93
	sub  b                                           ; $500e: $90
	add  e                                           ; $500f: $83
	sub  e                                           ; $5010: $93
	add  b                                           ; $5011: $80
	add  d                                           ; $5012: $82
	add  h                                           ; $5013: $84
	db   $f4                                         ; $5014: $f4
	ld   [bc], a                                     ; $5015: $02
	nop                                              ; $5016: $00
	rst  $38                                         ; $5017: $ff
	ld   bc, $ff83                                   ; $5018: $01 $83 $ff
	add  b                                           ; $501b: $80
	ld   [hl], e                                     ; $501c: $73
	nop                                              ; $501d: $00
	pop  hl                                          ; $501e: $e1
	add  c                                           ; $501f: $81
	db   $fc                                         ; $5020: $fc
	inc  bc                                          ; $5021: $03
	db   $f4                                         ; $5022: $f4
	db   $fc                                         ; $5023: $fc
	db   $ed                                         ; $5024: $ed
	db   $fd                                         ; $5025: $fd
	add  b                                           ; $5026: $80
	cp   l                                           ; $5027: $bd
	ld   bc, $bdb9                                   ; $5028: $01 $b9 $bd
	add  d                                           ; $502b: $82
	or   l                                           ; $502c: $b5
	add  b                                           ; $502d: $80
	nop                                              ; $502e: $00
	add  d                                           ; $502f: $82
	add  b                                           ; $5030: $80
	inc  bc                                          ; $5031: $03
	nop                                              ; $5032: $00
	rst  $38                                         ; $5033: $ff
	nop                                              ; $5034: $00
	rst  $38                                         ; $5035: $ff
	add  c                                           ; $5036: $81
	nop                                              ; $5037: $00
	inc  bc                                          ; $5038: $03
	rst  $38                                         ; $5039: $ff
	ld   bc, $b1ff                                   ; $503a: $01 $ff $b1
	add  e                                           ; $503d: $83
	or   b                                           ; $503e: $b0
	nop                                              ; $503f: $00
	ret  nz                                          ; $5040: $c0

	add  d                                           ; $5041: $82
	db   $fc                                         ; $5042: $fc
	ld   bc, $b8f8                                   ; $5043: $01 $f8 $b8
	add  b                                           ; $5046: $80
	ld   hl, sp+$02                                  ; $5047: $f8 $02
	ldh  a, [rHDMA3]                                 ; $5049: $f0 $53
	ccf                                              ; $504b: $3f
	add  b                                           ; $504c: $80
	ld   e, $05                                      ; $504d: $1e $05
	jr   @+$1e                                       ; $504f: $18 $1c

	rlca                                             ; $5051: $07
	nop                                              ; $5052: $00
	jr   nz, jr_07d_5095                             ; $5053: $20 $40

	add  b                                           ; $5055: $80
	db   $10                                         ; $5056: $10
	add  b                                           ; $5057: $80
	jr   nz, jr_07d_505c                             ; $5058: $20 $02

	ld   b, b                                        ; $505a: $40
	nop                                              ; $505b: $00

jr_07d_505c:
	add  hl, de                                      ; $505c: $19
	add  c                                           ; $505d: $81
	ld   a, $02                                      ; $505e: $3e $02
	ld   c, $1e                                      ; $5060: $0e $1e
	or   $80                                         ; $5062: $f6 $80
	ld   [bc], a                                     ; $5064: $02
	nop                                              ; $5065: $00
	ld   bc, $0480                                   ; $5066: $01 $80 $04
	add  b                                           ; $5069: $80
	ld   [bc], a                                     ; $506a: $02
	inc  bc                                          ; $506b: $03
	ld   bc, $c100                                   ; $506c: $01 $00 $c1
	nop                                              ; $506f: $00
	add  b                                           ; $5070: $80
	jr   nz, jr_07d_4ff3                             ; $5071: $20 $80

	inc  sp                                          ; $5073: $33
	adc  b                                           ; $5074: $88
	ccf                                              ; $5075: $3f
	nop                                              ; $5076: $00
	pop  bc                                          ; $5077: $c1
	add  b                                           ; $5078: $80
	nop                                              ; $5079: $00
	ld   [bc], a                                     ; $507a: $02
	ld   [bc], a                                     ; $507b: $02
	ldh  [c], a                                      ; $507c: $e2
	and  $88                                         ; $507d: $e6 $88
	cp   $00                                         ; $507f: $fe $00
	ld   a, b                                        ; $5081: $78
	add  a                                           ; $5082: $87
	nop                                              ; $5083: $00
	add  h                                           ; $5084: $84
	ld   [$8000], sp                                 ; $5085: $08 $00 $80
	xor  l                                           ; $5088: $ad
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
	rlca                                             ; $508b: $07
	adc  l                                           ; $508c: $8d
	nop                                              ; $508d: $00
	nop                                              ; $508e: $00
	adc  l                                           ; $508f: $8d
	add  a                                           ; $5090: $87
	ld   a, [bc]                                     ; $5091: $0a
	nop                                              ; $5092: $00
	inc  bc                                          ; $5093: $03
	add  c                                           ; $5094: $81

jr_07d_5095:
	dec  bc                                          ; $5095: $0b
	add  b                                           ; $5096: $80
	rrca                                             ; $5097: $0f
	nop                                              ; $5098: $00
	adc  b                                           ; $5099: $88
	adc  c                                           ; $509a: $89
	nop                                              ; $509b: $00
	add  b                                           ; $509c: $80
	db   $10                                         ; $509d: $10
	add  b                                           ; $509e: $80
	ld   d, b                                        ; $509f: $50
	adc  b                                           ; $50a0: $88
	nop                                              ; $50a1: $00
	add  h                                           ; $50a2: $84
	ld   [bc], a                                     ; $50a3: $02
	adc  b                                           ; $50a4: $88
	nop                                              ; $50a5: $00
	add  h                                           ; $50a6: $84
	ld   bc, $0700                                   ; $50a7: $01 $00 $07
	add  c                                           ; $50aa: $81
	nop                                              ; $50ab: $00
	adc  e                                           ; $50ac: $8b
	add  b                                           ; $50ad: $80
	add  c                                           ; $50ae: $81
	rrca                                             ; $50af: $0f
	nop                                              ; $50b0: $00
	dec  c                                           ; $50b1: $0d
	adc  c                                           ; $50b2: $89
	rrca                                             ; $50b3: $0f
	ld   bc, $50da                                   ; $50b4: $01 $da $50
	add  d                                           ; $50b7: $82
	ld   d, d                                        ; $50b8: $52
	add  b                                           ; $50b9: $80
	ld   d, [hl]                                     ; $50ba: $56
	ld   [bc], a                                     ; $50bb: $02
	add  $d6                                         ; $50bc: $c6 $d6
	ld   e, [hl]                                     ; $50be: $5e
	add  c                                           ; $50bf: $81
	sbc  $03                                         ; $50c0: $de $03
	sub  $de                                         ; $50c2: $d6 $de
	sbc  d                                           ; $50c4: $9a
	ld   [bc], a                                     ; $50c5: $02
	add  d                                           ; $50c6: $82
	ld   b, $01                                      ; $50c7: $06 $01
	ld   [bc], a                                     ; $50c9: $02
	ld   b, $84                                      ; $50ca: $06 $84
	ld   d, $80                                      ; $50cc: $16 $80
	ld   [hl], $01                                   ; $50ce: $36 $01
	dec  b                                           ; $50d0: $05
	ld   bc, $2180                                   ; $50d1: $01 $80 $21
	add  d                                           ; $50d4: $82
	dec  h                                           ; $50d5: $25
	add  d                                           ; $50d6: $82
	ld   h, a                                        ; $50d7: $67
	nop                                              ; $50d8: $00
	ld   h, [hl]                                     ; $50d9: $66
	add  c                                           ; $50da: $81
	ld   h, a                                        ; $50db: $67
	ld   [bc], a                                     ; $50dc: $02
	add  [hl]                                        ; $50dd: $86
	add  b                                           ; $50de: $80
	nop                                              ; $50df: $00
	adc  e                                           ; $50e0: $8b
	add  b                                           ; $50e1: $80
	nop                                              ; $50e2: $00
	ld   b, $85                                      ; $50e3: $06 $85
	rrca                                             ; $50e5: $0f
	ld   [bc], a                                     ; $50e6: $02
	dec  bc                                          ; $50e7: $0b
	rrca                                             ; $50e8: $0f
	dec  c                                           ; $50e9: $0d
	add  c                                           ; $50ea: $81
	rrca                                             ; $50eb: $0f
	ld   [bc], a                                     ; $50ec: $02
	rlca                                             ; $50ed: $07
	rrca                                             ; $50ee: $0f
	add  $83                                         ; $50ef: $c6 $83
	sbc  $84                                         ; $50f1: $de $84
	cp   $00                                         ; $50f3: $fe $00
	or   $81                                         ; $50f5: $f6 $81
	cp   $00                                         ; $50f7: $fe $00
	add  d                                           ; $50f9: $82
	adc  l                                           ; $50fa: $8d
	ld   [hl], $02                                   ; $50fb: $36 $02
	ld   a, [bc]                                     ; $50fd: $0a
	ld   l, a                                        ; $50fe: $6f
	ld   h, a                                        ; $50ff: $67
	adc  e                                           ; $5100: $8b
	ld   l, a                                        ; $5101: $6f
	nop                                              ; $5102: $00
	ld   c, [hl]                                     ; $5103: $4e
	adc  e                                           ; $5104: $8b
	add  b                                           ; $5105: $80
	ld   [bc], a                                     ; $5106: $02
	nop                                              ; $5107: $00
	add  b                                           ; $5108: $80
	adc  b                                           ; $5109: $88
	add  e                                           ; $510a: $83
	rrca                                             ; $510b: $0f
	add  [hl]                                        ; $510c: $86
	dec  bc                                          ; $510d: $0b
	add  b                                           ; $510e: $80
	add  hl, bc                                      ; $510f: $09
	add  b                                           ; $5110: $80
	cp   $00                                         ; $5111: $fe $00
	ld   e, [hl]                                     ; $5113: $5e
	add  c                                           ; $5114: $81
	sbc  $80                                         ; $5115: $de $80
	ld   e, d                                        ; $5117: $5a
	add  b                                           ; $5118: $80
	ld   d, b                                        ; $5119: $50
	add  b                                           ; $511a: $80
	ld   d, [hl]                                     ; $511b: $56
	add  b                                           ; $511c: $80
	rla                                              ; $511d: $17
	add  b                                           ; $511e: $80
	inc  b                                           ; $511f: $04
	dec  b                                           ; $5120: $05
	ld   [de], a                                     ; $5121: $12
	ld   [hl], $32                                   ; $5122: $36 $32
	ld   [hl], $16                                   ; $5124: $36 $16
	ld   [hl], $82                                   ; $5126: $36 $82
	inc  d                                           ; $5128: $14
	add  b                                           ; $5129: $80
	ld   bc, $ff80                                   ; $512a: $01 $80 $ff
	add  b                                           ; $512d: $80
	nop                                              ; $512e: $00
	inc  b                                           ; $512f: $04
	ld   h, $6f                                      ; $5130: $26 $6f
	cpl                                              ; $5132: $2f
	ld   l, a                                        ; $5133: $6f
	ld   h, a                                        ; $5134: $67
	add  l                                           ; $5135: $85
	ld   l, [hl]                                     ; $5136: $6e
	add  d                                           ; $5137: $82
	ld   h, $00                                      ; $5138: $26 $00
	add  a                                           ; $513a: $87
	adc  e                                           ; $513b: $8b
	add  b                                           ; $513c: $80
	add  b                                           ; $513d: $80
	nop                                              ; $513e: $00
	ld   bc, $088f                                   ; $513f: $01 $8f $08
	add  d                                           ; $5142: $82
	nop                                              ; $5143: $00
	ld   bc, $0080                                   ; $5144: $01 $80 $00
	add  b                                           ; $5147: $80
	ld   [$1c80], sp                                 ; $5148: $08 $80 $1c
	add  b                                           ; $514b: $80
	call nz, $4402                                   ; $514c: $c4 $02 $44
	call nz, $8384                                   ; $514f: $c4 $84 $83
	inc  b                                           ; $5152: $04
	ld   [bc], a                                     ; $5153: $02
	db   $f4                                         ; $5154: $f4
	inc  b                                           ; $5155: $04
	inc  c                                           ; $5156: $0c
	add  b                                           ; $5157: $80
	inc  b                                           ; $5158: $04
	dec  b                                           ; $5159: $05
	db   $fc                                         ; $515a: $fc
	db   $fd                                         ; $515b: $fd
	rst  $38                                         ; $515c: $ff
	ld   [bc], a                                     ; $515d: $02
	rst  $38                                         ; $515e: $ff
	ld   e, c                                        ; $515f: $59
	add  e                                           ; $5160: $83
	and  [hl]                                        ; $5161: $a6
	add  b                                           ; $5162: $80
	add  d                                           ; $5163: $82
	add  d                                           ; $5164: $82
	add  b                                           ; $5165: $80
	inc  b                                           ; $5166: $04
	ld   a, a                                        ; $5167: $7f
	rst  $38                                         ; $5168: $ff
	sbc  a                                           ; $5169: $9f
	rst  $38                                         ; $516a: $ff
	rst  $20                                         ; $516b: $e7
	add  c                                           ; $516c: $81
	nop                                              ; $516d: $00
	add  b                                           ; $516e: $80
	inc  b                                           ; $516f: $04
	nop                                              ; $5170: $00
	rlca                                             ; $5171: $07
	add  l                                           ; $5172: $85
	nop                                              ; $5173: $00
	add  b                                           ; $5174: $80
	and  h                                           ; $5175: $a4
	nop                                              ; $5176: $00
	rst  $38                                         ; $5177: $ff
	rst  $38                                         ; $5178: $ff
	nop                                              ; $5179: $00
	rst  $38                                         ; $517a: $ff
	nop                                              ; $517b: $00
	db   $eb                                         ; $517c: $eb
	nop                                              ; $517d: $00
	add  hl, sp                                      ; $517e: $39
	ld   bc, $0a01                                   ; $517f: $01 $01 $0a
	dec  b                                           ; $5182: $05
	add  b                                           ; $5183: $80
	ld   a, [bc]                                     ; $5184: $0a
	add  b                                           ; $5185: $80
	dec  b                                           ; $5186: $05
	add  b                                           ; $5187: $80
	ld   a, [bc]                                     ; $5188: $0a
	inc  bc                                          ; $5189: $03
	inc  c                                           ; $518a: $0c
	rrca                                             ; $518b: $0f
	inc  c                                           ; $518c: $0c
	rrca                                             ; $518d: $0f
	add  b                                           ; $518e: $80
	dec  b                                           ; $518f: $05
	add  b                                           ; $5190: $80
	nop                                              ; $5191: $00
	ld   bc, $55a5                                   ; $5192: $01 $a5 $55
	add  b                                           ; $5195: $80
	xor  d                                           ; $5196: $aa
	add  b                                           ; $5197: $80
	ld   d, l                                        ; $5198: $55
	add  b                                           ; $5199: $80
	xor  d                                           ; $519a: $aa
	dec  b                                           ; $519b: $05
	ld   d, l                                        ; $519c: $55
	push de                                          ; $519d: $d5
	xor  d                                           ; $519e: $aa
	ld   l, d                                        ; $519f: $6a
	dec  d                                           ; $51a0: $15
	ld   d, l                                        ; $51a1: $55
	add  b                                           ; $51a2: $80
	ld   [$5780], a                                  ; $51a3: $ea $80 $57
	add  b                                           ; $51a6: $80
	xor  a                                           ; $51a7: $af
	add  b                                           ; $51a8: $80
	ld   d, a                                        ; $51a9: $57
	add  b                                           ; $51aa: $80
	xor  a                                           ; $51ab: $af
	add  b                                           ; $51ac: $80
	ld   d, a                                        ; $51ad: $57
	add  b                                           ; $51ae: $80
	xor  a                                           ; $51af: $af
	add  b                                           ; $51b0: $80
	ld   d, a                                        ; $51b1: $57
	add  b                                           ; $51b2: $80
	xor  a                                           ; $51b3: $af
	adc  d                                           ; $51b4: $8a
	rst  $38                                         ; $51b5: $ff
	dec  b                                           ; $51b6: $05
	cp   $ff                                         ; $51b7: $fe $ff
	db   $fd                                         ; $51b9: $fd
	rst  $38                                         ; $51ba: $ff
	add  d                                           ; $51bb: $82
	cp   $80                                         ; $51bc: $fe $80
	sbc  $80                                         ; $51be: $de $80
	or   $01                                         ; $51c0: $f6 $01
	ld   a, [hl]                                     ; $51c2: $7e
	cp   $86                                         ; $51c3: $fe $86
	or   $01                                         ; $51c5: $f6 $01
	nop                                              ; $51c7: $00
	rra                                              ; $51c8: $1f
	add  b                                           ; $51c9: $80
	nop                                              ; $51ca: $00
	add  b                                           ; $51cb: $80
	rra                                              ; $51cc: $1f
	ld   [bc], a                                     ; $51cd: $02
	inc  e                                           ; $51ce: $1c
	rra                                              ; $51cf: $1f
	inc  bc                                          ; $51d0: $03
	add  l                                           ; $51d1: $85
	rra                                              ; $51d2: $1f
	add  hl, bc                                      ; $51d3: $09
	cp   $7f                                         ; $51d4: $fe $7f
	ld   a, [hl]                                     ; $51d6: $7e
	rst  $38                                         ; $51d7: $ff
	ld   [bc], a                                     ; $51d8: $02
	rst  $38                                         ; $51d9: $ff
	ld   bc, $fbff                                   ; $51da: $01 $ff $fb
	rst  $38                                         ; $51dd: $ff
	add  b                                           ; $51de: $80
	ei                                               ; $51df: $fb
	add  b                                           ; $51e0: $80
	ld   sp, hl                                      ; $51e1: $f9
	inc  bc                                          ; $51e2: $03
	ld   a, c                                        ; $51e3: $79
	ld   sp, hl                                      ; $51e4: $f9
	inc  b                                           ; $51e5: $04
	ld   a, h                                        ; $51e6: $7c

jr_07d_51e7:
	add  b                                           ; $51e7: $80
	rst  $38                                         ; $51e8: $ff
	rlca                                             ; $51e9: $07
	add  c                                           ; $51ea: $81
	rst  $38                                         ; $51eb: $ff
	jr   c, jr_07d_51e7                              ; $51ec: $38 $f9

	add  c                                           ; $51ee: $81
	pop  hl                                          ; $51ef: $e1
	pop  bc                                          ; $51f0: $c1
	rst  $38                                         ; $51f1: $ff
	add  b                                           ; $51f2: $80
	db   $fd                                         ; $51f3: $fd
	dec  b                                           ; $51f4: $05
	ld   a, [$05f9]                                  ; $51f5: $fa $f9 $05
	reti                                             ; $51f8: $d9


	rrca                                             ; $51f9: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51fa: $cf
	add  b                                           ; $51fb: $80
	ret  z                                           ; $51fc: $c8

	nop                                              ; $51fd: $00
	add  [hl]                                        ; $51fe: $86
	add  d                                           ; $51ff: $82
	add  h                                           ; $5200: $84
	nop                                              ; $5201: $00
	add  b                                           ; $5202: $80
	add  b                                           ; $5203: $80
	and  b                                           ; $5204: $a0
	ld   [bc], a                                     ; $5205: $02
	add  h                                           ; $5206: $84
	add  b                                           ; $5207: $80
	inc  bc                                          ; $5208: $03
	add  c                                           ; $5209: $81
	rst  $38                                         ; $520a: $ff
	add  b                                           ; $520b: $80
	nop                                              ; $520c: $00
	ld   bc, $fbfa                                   ; $520d: $01 $fa $fb
	add  b                                           ; $5210: $80
	ld   a, e                                        ; $5211: $7b
	add  b                                           ; $5212: $80
	dec  sp                                          ; $5213: $3b
	add  b                                           ; $5214: $80
	dec  de                                          ; $5215: $1b
	add  b                                           ; $5216: $80
	dec  bc                                          ; $5217: $0b
	dec  c                                           ; $5218: $0d
	add  $fb                                         ; $5219: $c6 $fb
	jp   nc, Jump_07d_60ff                           ; $521b: $d2 $ff $60

	ld   a, [hl]                                     ; $521e: $7e
	dec  d                                           ; $521f: $15
	rra                                              ; $5220: $1f
	ld   [$450f], sp                                 ; $5221: $08 $0f $45
	ld   b, [hl]                                     ; $5224: $46
	ld   b, d                                        ; $5225: $42
	ld   b, e                                        ; $5226: $43
	add  b                                           ; $5227: $80
	ld   b, c                                        ; $5228: $41
	ld   bc, $8848                                   ; $5229: $01 $48 $88
	add  b                                           ; $522c: $80
	ld   b, b                                        ; $522d: $40
	ld   de, $f8a8                                   ; $522e: $11 $a8 $f8
	ld   c, e                                        ; $5231: $4b
	db   $eb                                         ; $5232: $eb
	sbc  l                                           ; $5233: $9d
	db   $dd                                         ; $5234: $dd
	and  b                                           ; $5235: $a0
	cp   $89                                         ; $5236: $fe $89
	ld   a, c                                        ; $5238: $79
	ld   a, [bc]                                     ; $5239: $0a
	cp   e                                           ; $523a: $bb
	ld   a, b                                        ; $523b: $78
	rra                                              ; $523c: $1f
	nop                                              ; $523d: $00
	rrca                                             ; $523e: $0f
	rlca                                             ; $523f: $07
	nop                                              ; $5240: $00
	add  b                                           ; $5241: $80
	rst  $38                                         ; $5242: $ff
	add  b                                           ; $5243: $80
	nop                                              ; $5244: $00
	add  b                                           ; $5245: $80
	add  c                                           ; $5246: $81
	add  b                                           ; $5247: $80
	ld   c, [hl]                                     ; $5248: $4e
	inc  b                                           ; $5249: $04
	ld   h, b                                        ; $524a: $60
	ldh  [$7f], a                                    ; $524b: $e0 $7f
	rst  $38                                         ; $524d: $ff
	nop                                              ; $524e: $00
	add  b                                           ; $524f: $80
	rst  $38                                         ; $5250: $ff
	nop                                              ; $5251: $00
	nop                                              ; $5252: $00
	add  b                                           ; $5253: $80
	rst  $38                                         ; $5254: $ff
	add  b                                           ; $5255: $80
	nop                                              ; $5256: $00
	add  b                                           ; $5257: $80
	and  b                                           ; $5258: $a0
	add  b                                           ; $5259: $80
	jr   nz, jr_07d_5260                             ; $525a: $20 $04

	ld   bc, $df21                                   ; $525c: $01 $21 $df
	rst  $38                                         ; $525f: $ff

jr_07d_5260:
	nop                                              ; $5260: $00
	add  b                                           ; $5261: $80
	rst  $38                                         ; $5262: $ff
	nop                                              ; $5263: $00
	nop                                              ; $5264: $00
	add  b                                           ; $5265: $80
	rst  $38                                         ; $5266: $ff
	add  b                                           ; $5267: $80
	nop                                              ; $5268: $00
	add  b                                           ; $5269: $80
	ld   a, [de]                                     ; $526a: $1a
	add  b                                           ; $526b: $80
	ld   h, d                                        ; $526c: $62
	inc  b                                           ; $526d: $04
	add  b                                           ; $526e: $80
	add  d                                           ; $526f: $82
	db   $fd                                         ; $5270: $fd
	rst  $38                                         ; $5271: $ff
	nop                                              ; $5272: $00
	add  b                                           ; $5273: $80
	rst  $38                                         ; $5274: $ff
	nop                                              ; $5275: $00
	nop                                              ; $5276: $00
	add  b                                           ; $5277: $80
	rst  $38                                         ; $5278: $ff
	add  b                                           ; $5279: $80
	nop                                              ; $527a: $00
	add  b                                           ; $527b: $80
	ld   bc, $0680                                   ; $527c: $01 $80 $06
	add  b                                           ; $527f: $80

Jump_07d_5280:
	jr   @+$03                                       ; $5280: $18 $01

	ldh  a, [rP1]                                    ; $5282: $f0 $00
	add  b                                           ; $5284: $80
	ld   a, [bc]                                     ; $5285: $0a
	add  b                                           ; $5286: $80
	dec  b                                           ; $5287: $05
	add  b                                           ; $5288: $80
	ld   [bc], a                                     ; $5289: $02
	add  b                                           ; $528a: $80
	ld   bc, $0080                                   ; $528b: $01 $80 $00
	add  b                                           ; $528e: $80
	ld   bc, $0080                                   ; $528f: $01 $80 $00
	ld   bc, $55a5                                   ; $5292: $01 $a5 $55
	add  b                                           ; $5295: $80
	ld   a, [hl+]                                    ; $5296: $2a
	add  b                                           ; $5297: $80
	ld   d, l                                        ; $5298: $55
	add  b                                           ; $5299: $80
	xor  d                                           ; $529a: $aa
	add  b                                           ; $529b: $80
	ld   d, l                                        ; $529c: $55

jr_07d_529d:
	add  b                                           ; $529d: $80
	xor  d                                           ; $529e: $aa
	add  b                                           ; $529f: $80
	ld   d, l                                        ; $52a0: $55
	add  b                                           ; $52a1: $80
	xor  d                                           ; $52a2: $aa
	add  b                                           ; $52a3: $80
	ld   e, a                                        ; $52a4: $5f
	add  b                                           ; $52a5: $80
	xor  a                                           ; $52a6: $af
	add  b                                           ; $52a7: $80
	ld   e, a                                        ; $52a8: $5f
	add  b                                           ; $52a9: $80
	cp   a                                           ; $52aa: $bf
	add  b                                           ; $52ab: $80
	ld   e, a                                        ; $52ac: $5f
	add  b                                           ; $52ad: $80
	cp   a                                           ; $52ae: $bf
	add  b                                           ; $52af: $80
	ld   e, a                                        ; $52b0: $5f
	add  b                                           ; $52b1: $80
	cp   a                                           ; $52b2: $bf
	inc  bc                                          ; $52b3: $03
	db   $fc                                         ; $52b4: $fc
	rst  $38                                         ; $52b5: $ff
	ld   a, [$82ff]                                  ; $52b6: $fa $ff $82
	cp   $00                                         ; $52b9: $fe $00
	ei                                               ; $52bb: $fb
	add  e                                           ; $52bc: $83
	cp   $13                                         ; $52bd: $fe $13
	ld   sp, hl                                      ; $52bf: $f9
	db   $fc                                         ; $52c0: $fc
	adc  a                                           ; $52c1: $8f
	or   $9f                                         ; $52c2: $f6 $9f
	rst  $38                                         ; $52c4: $ff
	ld   c, e                                        ; $52c5: $4b
	rst  $38                                         ; $52c6: $ff
	inc  bc                                          ; $52c7: $03
	rst  $38                                         ; $52c8: $ff
	inc  bc                                          ; $52c9: $03
	rst  $38                                         ; $52ca: $ff
	ld   bc, $92ff                                   ; $52cb: $01 $ff $92
	rst  $38                                         ; $52ce: $ff
	ld   b, h                                        ; $52cf: $44
	ld   a, a                                        ; $52d0: $7f
	db   $e3                                         ; $52d1: $e3

Jump_07d_52d2:
	rra                                              ; $52d2: $1f
	add  b                                           ; $52d3: $80
	rrca                                             ; $52d4: $0f
	ld   [de], a                                     ; $52d5: $12
	ret  nz                                          ; $52d6: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52d7: $cf
	ld   hl, sp-$01                                  ; $52d8: $f8 $ff
	and  a                                           ; $52da: $a7
	rst  $38                                         ; $52db: $ff
	rrca                                             ; $52dc: $0f
	rst  $38                                         ; $52dd: $ff
	sbc  a                                           ; $52de: $9f
	rst  $38                                         ; $52df: $ff
	rst  JumpTable                                         ; $52e0: $df
	cp   a                                           ; $52e1: $bf
	sbc  [hl]                                        ; $52e2: $9e
	ld   sp, hl                                      ; $52e3: $f9
	add  hl, sp                                      ; $52e4: $39
	pop  af                                          ; $52e5: $f1
	inc  c                                           ; $52e6: $0c
	db   $fc                                         ; $52e7: $fc
	ld   e, $81                                      ; $52e8: $1e $81
	cp   $09                                         ; $52ea: $fe $09
	or   $fe                                         ; $52ec: $f6 $fe
	ld   hl, sp-$02                                  ; $52ee: $f8 $fe
	ld   c, [hl]                                     ; $52f0: $4e
	cp   $6d                                         ; $52f1: $fe $6d
	pop  af                                          ; $52f3: $f1
	call nz, $80c3                                   ; $52f4: $c4 $c3 $80
	add  e                                           ; $52f7: $83
	ld   a, [de]                                     ; $52f8: $1a
	cp   h                                           ; $52f9: $bc
	inc  bc                                          ; $52fa: $03
	ld   a, d                                        ; $52fb: $7a
	inc  bc                                          ; $52fc: $03
	nop                                              ; $52fd: $00
	ld   [bc], a                                     ; $52fe: $02
	inc  b                                           ; $52ff: $04
	rlca                                             ; $5300: $07
	ld   [bc], a                                     ; $5301: $02
	rlca                                             ; $5302: $07
	rrca                                             ; $5303: $0f
	ld   hl, sp+$08                                  ; $5304: $f8 $08
	ld   hl, sp+$34                                  ; $5306: $f8 $34
	ret  z                                           ; $5308: $c8

	ld   a, [bc]                                     ; $5309: $0a
	ld   [$9010], sp                                 ; $530a: $08 $10 $90
	ld   [$0ce8], sp                                 ; $530d: $08 $e8 $0c
	ld   l, h                                        ; $5310: $6c
	ld   bc, $7c81                                   ; $5311: $01 $81 $7c
	adc  c                                           ; $5314: $89
	inc  bc                                          ; $5315: $03
	nop                                              ; $5316: $00
	ld   [bc], a                                     ; $5317: $02
	add  c                                           ; $5318: $81
	inc  bc                                          ; $5319: $03
	add  b                                           ; $531a: $80
	jr   c, jr_07d_529d                              ; $531b: $38 $80

	ld   a, h                                        ; $531d: $7c
	add  b                                           ; $531e: $80
	ld   a, l                                        ; $531f: $7d
	add  b                                           ; $5320: $80
	ld   bc, $0280                                   ; $5321: $01 $80 $02
	add  b                                           ; $5324: $80
	inc  b                                           ; $5325: $04
	add  b                                           ; $5326: $80
	ld   [$1880], sp                                 ; $5327: $08 $80 $18
	dec  bc                                          ; $532a: $0b
	db   $db                                         ; $532b: $db
	xor  $ca                                         ; $532c: $ee $ca
	or   $94                                         ; $532e: $f6 $94
	sbc  e                                           ; $5330: $9b
	ld   a, [bc]                                     ; $5331: $0a
	rrca                                             ; $5332: $0f
	dec  b                                           ; $5333: $05
	rlca                                             ; $5334: $07
	ld   [bc], a                                     ; $5335: $02
	inc  bc                                          ; $5336: $03
	add  b                                           ; $5337: $80
	ld   bc, $0080                                   ; $5338: $01 $80 $00

jr_07d_533b:
	dec  d                                           ; $533b: $15
	sub  b                                           ; $533c: $90
	ld   d, b                                        ; $533d: $50
	rrca                                             ; $533e: $0f
	ld   a, a                                        ; $533f: $7f
	ret  z                                           ; $5340: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5341: $cf
	ld   c, d                                        ; $5342: $4a
	jp   z, Jump_07d_6aea                            ; $5343: $ca $ea $6a

	jp   z, Jump_07d_75ba                            ; $5346: $ca $ba $75

	db   $dd                                         ; $5349: $dd
	xor  h                                           ; $534a: $ac
	ei                                               ; $534b: $fb
	ld   a, $26                                      ; $534c: $3e $26
	rst  JumpTable                                         ; $534e: $df
	rst  $38                                         ; $534f: $ff
	nop                                              ; $5350: $00
	rst  $38                                         ; $5351: $ff
	add  d                                           ; $5352: $82
	xor  b                                           ; $5353: $a8
	add  b                                           ; $5354: $80
	xor  c                                           ; $5355: $a9
	add  b                                           ; $5356: $80
	ld   d, a                                        ; $5357: $57
	rlca                                             ; $5358: $07
	nop                                              ; $5359: $00
	rst  $38                                         ; $535a: $ff
	nop                                              ; $535b: $00
	ld   [bc], a                                     ; $535c: $02
	db   $fd                                         ; $535d: $fd
	rst  $38                                         ; $535e: $ff
	nop                                              ; $535f: $00
	rst  $38                                         ; $5360: $ff
	add  b                                           ; $5361: $80
	ld   [$0080], sp                                 ; $5362: $08 $80 $00
	add  b                                           ; $5365: $80
	db   $10                                         ; $5366: $10
	inc  bc                                          ; $5367: $03
	cp   e                                           ; $5368: $bb
	rst  $38                                         ; $5369: $ff
	ld   b, h                                        ; $536a: $44
	rst  $38                                         ; $536b: $ff
	add  b                                           ; $536c: $80
	ld   h, b                                        ; $536d: $60
	add  b                                           ; $536e: $80
	rst  $38                                         ; $536f: $ff
	ld   bc, $ff00                                   ; $5370: $01 $00 $ff
	add  b                                           ; $5373: $80
	ld   hl, $0180                                   ; $5374: $21 $80 $01
	add  b                                           ; $5377: $80
	ld   e, d                                        ; $5378: $5a
	add  b                                           ; $5379: $80
	rst  $38                                         ; $537a: $ff
	nop                                              ; $537b: $00
	nop                                              ; $537c: $00
	add  b                                           ; $537d: $80
	rst  $38                                         ; $537e: $ff
	add  l                                           ; $537f: $85
	nop                                              ; $5380: $00
	ld   bc, $07f8                                   ; $5381: $01 $f8 $07
	add  b                                           ; $5384: $80
	inc  bc                                          ; $5385: $03
	add  b                                           ; $5386: $80
	rrca                                             ; $5387: $0f
	add  b                                           ; $5388: $80
	rra                                              ; $5389: $1f
	nop                                              ; $538a: $00
	rst  $38                                         ; $538b: $ff
	add  l                                           ; $538c: $85
	nop                                              ; $538d: $00
	ld   bc, $e01f                                   ; $538e: $01 $1f $e0
	add  b                                           ; $5391: $80
	ret  nz                                          ; $5392: $c0

	add  b                                           ; $5393: $80
	add  b                                           ; $5394: $80
	add  b                                           ; $5395: $80

jr_07d_5396:
	nop                                              ; $5396: $00
	nop                                              ; $5397: $00
	rst  $38                                         ; $5398: $ff
	add  l                                           ; $5399: $85
	nop                                              ; $539a: $00
	ld   bc, $01fe                                   ; $539b: $01 $fe $01
	add  h                                           ; $539e: $84
	nop                                              ; $539f: $00
	nop                                              ; $53a0: $00
	rst  $38                                         ; $53a1: $ff
	add  l                                           ; $53a2: $85
	nop                                              ; $53a3: $00
	ld   bc, $8070                                   ; $53a4: $01 $70 $80
	add  h                                           ; $53a7: $84
	nop                                              ; $53a8: $00
	ld   bc, $2f20                                   ; $53a9: $01 $20 $2f
	add  b                                           ; $53ac: $80
	ld   a, h                                        ; $53ad: $7c
	add  b                                           ; $53ae: $80
	ldh  a, [$80]                                    ; $53af: $f0 $80

jr_07d_53b1:
	ldh  [$80], a                                    ; $53b1: $e0 $80
	ret  nz                                          ; $53b3: $c0

	add  h                                           ; $53b4: $84
	nop                                              ; $53b5: $00
	add  b                                           ; $53b6: $80
	inc  c                                           ; $53b7: $0c
	add  b                                           ; $53b8: $80
	jr   jr_07d_533b                                 ; $53b9: $18 $80

	ld   [bc], a                                     ; $53bb: $02
	adc  c                                           ; $53bc: $89
	nop                                              ; $53bd: $00
	inc  b                                           ; $53be: $04
	ld   [bc], a                                     ; $53bf: $02
	db   $fd                                         ; $53c0: $fd
	rst  $38                                         ; $53c1: $ff
	nop                                              ; $53c2: $00
	rst  $38                                         ; $53c3: $ff
	add  b                                           ; $53c4: $80
	sub  d                                           ; $53c5: $92
	add  b                                           ; $53c6: $80
	dec  l                                           ; $53c7: $2d
	add  b                                           ; $53c8: $80
	add  h                                           ; $53c9: $84
	inc  bc                                          ; $53ca: $03
	cp   [hl]                                        ; $53cb: $be
	rst  $38                                         ; $53cc: $ff
	or   $48                                         ; $53cd: $f6 $48
	add  b                                           ; $53cf: $80
	ret  nz                                          ; $53d0: $c0

	add  b                                           ; $53d1: $80
	rst  $38                                         ; $53d2: $ff
	ld   bc, $ff00                                   ; $53d3: $01 $00 $ff
	add  b                                           ; $53d6: $80
	ld   c, d                                        ; $53d7: $4a
	add  b                                           ; $53d8: $80
	dec  h                                           ; $53d9: $25

jr_07d_53da:
	add  b                                           ; $53da: $80
	add  d                                           ; $53db: $82
	inc  bc                                          ; $53dc: $03
	sub  $ff                                         ; $53dd: $d6 $ff
	sub  $00                                         ; $53df: $d6 $00
	add  b                                           ; $53e1: $80
	adc  a                                           ; $53e2: $8f
	dec  e                                           ; $53e3: $1d
	ld   e, $14                                      ; $53e4: $1e $14
	ld   [hl], $00                                   ; $53e6: $36 $00
	ld   b, h                                        ; $53e8: $44
	nop                                              ; $53e9: $00
	adc  c                                           ; $53ea: $89
	nop                                              ; $53eb: $00
	ld   [de], a                                     ; $53ec: $12
	nop                                              ; $53ed: $00
	inc  h                                           ; $53ee: $24
	nop                                              ; $53ef: $00
	ld   c, a                                        ; $53f0: $4f
	ld   [$1e9e], sp                                 ; $53f1: $08 $9e $1e
	inc  a                                           ; $53f4: $3c
	inc  l                                           ; $53f5: $2c
	ld   l, b                                        ; $53f6: $68
	ld   d, b                                        ; $53f7: $50
	reti                                             ; $53f8: $d9


	ld   hl, $0033                                   ; $53f9: $21 $33 $00
	inc  h                                           ; $53fc: $24
	nop                                              ; $53fd: $00
	ld   c, b                                        ; $53fe: $48
	nop                                              ; $53ff: $00
	adc  a                                           ; $5400: $8f
	nop                                              ; $5401: $00
	add  b                                           ; $5402: $80
	inc  a                                           ; $5403: $3c
	add  b                                           ; $5404: $80
	ld   a, b                                        ; $5405: $78
	dec  c                                           ; $5406: $0d
	ldh  a, [$b0]                                    ; $5407: $f0 $b0
	and  c                                           ; $5409: $a1
	ld   b, c                                        ; $540a: $41
	ld   h, e                                        ; $540b: $63
	add  e                                           ; $540c: $83

jr_07d_540d:
	rst  ToBoot                                         ; $540d: $c7
	rlca                                             ; $540e: $07
	adc  a                                           ; $540f: $8f
	inc  bc                                          ; $5410: $03
	inc  c                                           ; $5411: $0c
	nop                                              ; $5412: $00
	ccf                                              ; $5413: $3f
	jr   nc, jr_07d_5396                             ; $5414: $30 $80

	ld   [hl], b                                     ; $5416: $70
	add  b                                           ; $5417: $80
	ldh  a, [$80]                                    ; $5418: $f0 $80
	ldh  [$80], a                                    ; $541a: $e0 $80
	ret  nz                                          ; $541c: $c0

	add  b                                           ; $541d: $80
	add  b                                           ; $541e: $80
	add  b                                           ; $541f: $80
	nop                                              ; $5420: $00
	add  b                                           ; $5421: $80
	db   $10                                         ; $5422: $10
	dec  bc                                          ; $5423: $0b
	ld   de, $2200                                   ; $5424: $11 $00 $22
	jr   nz, jr_07d_540d                             ; $5427: $20 $e4

	ret  nc                                          ; $5429: $d0

	ld   e, b                                        ; $542a: $58
	ld   h, b                                        ; $542b: $60
	ld   sp, $2220                                   ; $542c: $31 $20 $22
	jr   nz, jr_07d_53b1                             ; $542f: $20 $80

	inc  h                                           ; $5431: $24
	inc  hl                                          ; $5432: $23
	inc  l                                           ; $5433: $2c
	ld   a, [hl+]                                    ; $5434: $2a
	dec  de                                          ; $5435: $1b
	inc  d                                           ; $5436: $14
	ld   [hl], $28                                   ; $5437: $36 $28
	ld   l, h                                        ; $5439: $6c
	nop                                              ; $543a: $00
	adc  b                                           ; $543b: $88
	nop                                              ; $543c: $00
	ld   de, $2301                                   ; $543d: $11 $01 $23
	ld   [bc], a                                     ; $5440: $02
	ld   b, [hl]                                     ; $5441: $46
	dec  b                                           ; $5442: $05
	adc  l                                           ; $5443: $8d
	ld   a, [bc]                                     ; $5444: $0a
	dec  de                                          ; $5445: $1b
	inc  d                                           ; $5446: $14
	ld   [hl], $28                                   ; $5447: $36 $28
	ld   l, h                                        ; $5449: $6c
	ld   d, b                                        ; $544a: $50
	ret  c                                           ; $544b: $d8

	and  b                                           ; $544c: $a0
	or   c                                           ; $544d: $b1
	ld   b, c                                        ; $544e: $41
	ld   h, e                                        ; $544f: $63
	add  d                                           ; $5450: $82
	add  $05                                         ; $5451: $c6 $05
	adc  l                                           ; $5453: $8d
	dec  bc                                          ; $5454: $0b
	dec  de                                          ; $5455: $1b
	db   $10                                         ; $5456: $10
	add  b                                           ; $5457: $80
	jr   nc, jr_07d_53da                             ; $5458: $30 $80

	ld   [hl], b                                     ; $545a: $70
	add  b                                           ; $545b: $80
	ldh  a, [$80]                                    ; $545c: $f0 $80
	ldh  [$80], a                                    ; $545e: $e0 $80
	ret  nz                                          ; $5460: $c0

	add  b                                           ; $5461: $80
	add  b                                           ; $5462: $80
	add  b                                           ; $5463: $80
	nop                                              ; $5464: $00
	dec  c                                           ; $5465: $0d
	dec  [hl]                                        ; $5466: $35
	ld   a, $38                                      ; $5467: $3e $38
	inc  a                                           ; $5469: $3c
	ld   b, b                                        ; $546a: $40
	ret  nz                                          ; $546b: $c0

	ret  z                                           ; $546c: $c8

	ld   a, b                                        ; $546d: $78
	ret  nc                                          ; $546e: $d0

	ldh  [rLYC], a                                   ; $546f: $e0 $45
	push bc                                          ; $5471: $c5
	ld   a, [bc]                                     ; $5472: $0a
	adc  d                                           ; $5473: $8a
	add  b                                           ; $5474: $80
	dec  d                                           ; $5475: $15
	add  [hl]                                        ; $5476: $86
	nop                                              ; $5477: $00
	add  b                                           ; $5478: $80
	ld   b, b                                        ; $5479: $40
	add  b                                           ; $547a: $80
	add  b                                           ; $547b: $80

jr_07d_547c:
	add  b                                           ; $547c: $80
	ret  nz                                          ; $547d: $c0

	add  b                                           ; $547e: $80
	add  b                                           ; $547f: $80
	adc  [hl]                                        ; $5480: $8e
	nop                                              ; $5481: $00
	nop                                              ; $5482: $00
	rrca                                             ; $5483: $0f
	adc  l                                           ; $5484: $8d
	nop                                              ; $5485: $00
	nop                                              ; $5486: $00
	rrca                                             ; $5487: $0f
	add  c                                           ; $5488: $81
	nop                                              ; $5489: $00
	add  b                                           ; $548a: $80

jr_07d_548b:
	db   $fd                                         ; $548b: $fd
	add  b                                           ; $548c: $80

jr_07d_548d:
	nop                                              ; $548d: $00
	add  b                                           ; $548e: $80
	db   $f4                                         ; $548f: $f4
	add  d                                           ; $5490: $82
	nop                                              ; $5491: $00
	add  b                                           ; $5492: $80
	rst  ToBoot                                         ; $5493: $c7
	add  d                                           ; $5494: $82
	nop                                              ; $5495: $00
	add  b                                           ; $5496: $80
	ld   a, [hl]                                     ; $5497: $7e
	add  b                                           ; $5498: $80
	nop                                              ; $5499: $00
	add  b                                           ; $549a: $80
	rst  $38                                         ; $549b: $ff
	add  d                                           ; $549c: $82
	nop                                              ; $549d: $00
	add  b                                           ; $549e: $80
	adc  a                                           ; $549f: $8f
	add  b                                           ; $54a0: $80
	nop                                              ; $54a1: $00
	add  b                                           ; $54a2: $80
	db   $10                                         ; $54a3: $10
	add  b                                           ; $54a4: $80
	rst  $38                                         ; $54a5: $ff
	add  b                                           ; $54a6: $80
	nop                                              ; $54a7: $00
	ld   [bc], a                                     ; $54a8: $02
	ret  z                                           ; $54a9: $c8

	rst  $38                                         ; $54aa: $ff
	scf                                              ; $54ab: $37
	add  c                                           ; $54ac: $81
	nop                                              ; $54ad: $00
	add  b                                           ; $54ae: $80
	ld   e, $00                                      ; $54af: $1e $00
	rrca                                             ; $54b1: $0f
	add  c                                           ; $54b2: $81
	nop                                              ; $54b3: $00
	add  b                                           ; $54b4: $80
	ld   [hl], b                                     ; $54b5: $70
	add  b                                           ; $54b6: $80
	nop                                              ; $54b7: $00
	ld   [bc], a                                     ; $54b8: $02
	ld   [hl], b                                     ; $54b9: $70

jr_07d_54ba:
	ldh  a, [$80]                                    ; $54ba: $f0 $80
	add  c                                           ; $54bc: $81
	nop                                              ; $54bd: $00
	add  b                                           ; $54be: $80
	db   $10                                         ; $54bf: $10
	rla                                              ; $54c0: $17
	dec  de                                          ; $54c1: $1b
	rla                                              ; $54c2: $17
	ld   [$f00f], sp                                 ; $54c3: $08 $0f $f0
	rst  $30                                         ; $54c6: $f7
	ei                                               ; $54c7: $fb
	ld   [$0717], sp                                 ; $54c8: $08 $17 $07
	inc  hl                                          ; $54cb: $23
	nop                                              ; $54cc: $00
	ld   b, h                                        ; $54cd: $44
	nop                                              ; $54ce: $00
	adc  b                                           ; $54cf: $88
	nop                                              ; $54d0: $00
	rla                                              ; $54d1: $17
	rst  $38                                         ; $54d2: $ff
	ld   [de], a                                     ; $54d3: $12
	push af                                          ; $54d4: $f5
	ld   a, a                                        ; $54d5: $7f
	rst  $38                                         ; $54d6: $ff
	add  b                                           ; $54d7: $80
	nop                                              ; $54d8: $00
	add  b                                           ; $54d9: $80
	rst  $30                                         ; $54da: $f7
	add  hl, bc                                      ; $54db: $09
	jp   Jump_07d_4602                               ; $54dc: $c3 $02 $46


	dec  b                                           ; $54df: $05
	adc  l                                           ; $54e0: $8d
	ld   a, [bc]                                     ; $54e1: $0a
	ld   h, l                                        ; $54e2: $65
	rst  $38                                         ; $54e3: $ff
	ldh  [$7f], a                                    ; $54e4: $e0 $7f
	add  b                                           ; $54e6: $80
	rst  $38                                         ; $54e7: $ff
	add  b                                           ; $54e8: $80
	nop                                              ; $54e9: $00
	add  b                                           ; $54ea: $80
	rst  $30                                         ; $54eb: $f7
	rlca                                             ; $54ec: $07
	jp   $c682                                       ; $54ed: $c3 $82 $c6


	dec  b                                           ; $54f0: $05
	adc  l                                           ; $54f1: $8d
	ld   a, [bc]                                     ; $54f2: $0a
	jp   c, $80d0                                    ; $54f3: $da $d0 $80

	ldh  [$80], a                                    ; $54f6: $e0 $80
	ret  nc                                          ; $54f8: $d0

	add  b                                           ; $54f9: $80
	jr   nc, jr_07d_547c                             ; $54fa: $30 $80

	ldh  [$80], a                                    ; $54fc: $e0 $80
	ret  nz                                          ; $54fe: $c0

	add  b                                           ; $54ff: $80
	add  b                                           ; $5500: $80
	add  b                                           ; $5501: $80
	nop                                              ; $5502: $00
	dec  b                                           ; $5503: $05
	ld   sp, $3634                                   ; $5504: $31 $34 $36
	jr   c, jr_07d_5545                              ; $5507: $38 $3c

	jr   c, jr_07d_548b                              ; $5509: $38 $80

	jr   nc, jr_07d_548d                             ; $550b: $30 $80

	ccf                                              ; $550d: $3f
	daa                                              ; $550e: $27
	ld   d, d                                        ; $550f: $52
	rst  $38                                         ; $5510: $ff
	nop                                              ; $5511: $00
	rst  $38                                         ; $5512: $ff
	xor  l                                           ; $5513: $ad
	rst  $38                                         ; $5514: $ff
	ld   e, $14                                      ; $5515: $1e $14
	ld   [hl], $28                                   ; $5517: $36 $28
	ld   l, h                                        ; $5519: $6c
	ld   d, b                                        ; $551a: $50
	ret  c                                           ; $551b: $d8

	and  b                                           ; $551c: $a0
	xor  a                                           ; $551d: $af
	rst  $38                                         ; $551e: $ff
	add  l                                           ; $551f: $85
	rst  $38                                         ; $5520: $ff
	jr   nz, @+$01                                   ; $5521: $20 $ff

	ld   e, d                                        ; $5523: $5a
	rst  $38                                         ; $5524: $ff
	ld   e, $16                                      ; $5525: $1e $16
	inc  [hl]                                        ; $5527: $34
	inc  l                                           ; $5528: $2c
	ld   l, b                                        ; $5529: $68
	ld   e, b                                        ; $552a: $58
	ret  nc                                          ; $552b: $d0

	or   b                                           ; $552c: $b0
	or   l                                           ; $552d: $b5
	push af                                          ; $552e: $f5
	ld   l, d                                        ; $552f: $6a
	ld   [$ffbf], a                                  ; $5530: $ea $bf $ff
	ccf                                              ; $5533: $3f
	rst  $38                                         ; $5534: $ff
	rra                                              ; $5535: $1f
	db   $10                                         ; $5536: $10
	add  b                                           ; $5537: $80
	jr   nc, jr_07d_54ba                             ; $5538: $30 $80

	ld   [hl], b                                     ; $553a: $70
	add  b                                           ; $553b: $80
	ldh  a, [$80]                                    ; $553c: $f0 $80
	ld   d, b                                        ; $553e: $50
	add  b                                           ; $553f: $80
	and  b                                           ; $5540: $a0
	add  e                                           ; $5541: $83
	ldh  a, [rSB]                                    ; $5542: $f0 $01
	rst  $38                                         ; $5544: $ff

jr_07d_5545:
	nop                                              ; $5545: $00
	add  b                                           ; $5546: $80
	rst  $38                                         ; $5547: $ff
	nop                                              ; $5548: $00
	nop                                              ; $5549: $00
	add  b                                           ; $554a: $80
	rst  $38                                         ; $554b: $ff
	add  b                                           ; $554c: $80
	nop                                              ; $554d: $00
	add  b                                           ; $554e: $80
	and  b                                           ; $554f: $a0
	add  b                                           ; $5550: $80
	jr   nz, jr_07d_555a                             ; $5551: $20 $07

	ld   bc, $d821                                   ; $5553: $01 $21 $d8
	ld   hl, sp+$3e                                  ; $5556: $f8 $3e
	cp   $c0                                         ; $5558: $fe $c0

jr_07d_555a:
	nop                                              ; $555a: $00
	add  b                                           ; $555b: $80
	db   $fd                                         ; $555c: $fd
	add  b                                           ; $555d: $80
	nop                                              ; $555e: $00
	add  b                                           ; $555f: $80
	ld   a, [de]                                     ; $5560: $1a
	add  b                                           ; $5561: $80
	ld   h, d                                        ; $5562: $62
	inc  bc                                          ; $5563: $03
	add  b                                           ; $5564: $80
	add  d                                           ; $5565: $82
	ld   [bc], a                                     ; $5566: $02
	nop                                              ; $5567: $00
	add  b                                           ; $5568: $80
	sbc  $80                                         ; $5569: $de $80
	nop                                              ; $556b: $00
	add  b                                           ; $556c: $80
	call nc, $0080                                   ; $556d: $d4 $80 $00
	add  b                                           ; $5570: $80
	inc  bc                                          ; $5571: $03
	add  b                                           ; $5572: $80
	inc  c                                           ; $5573: $0c
	add  b                                           ; $5574: $80
	jr   nc, jr_07d_5578                             ; $5575: $30 $01

	rrca                                             ; $5577: $0f

jr_07d_5578:
	nop                                              ; $5578: $00
	add  b                                           ; $5579: $80
	add  b                                           ; $557a: $80
	add  h                                           ; $557b: $84
	nop                                              ; $557c: $00
	add  d                                           ; $557d: $82
	ld   b, b                                        ; $557e: $40
	rlca                                             ; $557f: $07
	nop                                              ; $5580: $00
	ld   b, b                                        ; $5581: $40
	ld   c, c                                        ; $5582: $49
	ld   h, $df                                      ; $5583: $26 $df
	rst  $38                                         ; $5585: $ff
	nop                                              ; $5586: $00
	rst  $38                                         ; $5587: $ff
	add  b                                           ; $5588: $80
	ld   [hl+], a                                    ; $5589: $22
	add  b                                           ; $558a: $80
	ld   de, $9480                                   ; $558b: $11 $80 $94
	add  b                                           ; $558e: $80
	rst  $38                                         ; $558f: $ff
	ld   [bc], a                                     ; $5590: $02
	rst  $20                                         ; $5591: $e7
	jr   @+$01                                       ; $5592: $18 $ff

	rst  $38                                         ; $5594: $ff
	nop                                              ; $5595: $00
	rst  $38                                         ; $5596: $ff
	nop                                              ; $5597: $00
	rst  $38                                         ; $5598: $ff
	nop                                              ; $5599: $00
	rst  $38                                         ; $559a: $ff
	nop                                              ; $559b: $00
	rst  $38                                         ; $559c: $ff
	nop                                              ; $559d: $00
	rst  $38                                         ; $559e: $ff
	nop                                              ; $559f: $00
	rst  $38                                         ; $55a0: $ff
	nop                                              ; $55a1: $00
	and  [hl]                                        ; $55a2: $a6
	nop                                              ; $55a3: $00
	inc  hl                                          ; $55a4: $23
	ld   bc, $0904                                   ; $55a5: $01 $04 $09
	rrca                                             ; $55a8: $0f
	inc  c                                           ; $55a9: $0c
	rrca                                             ; $55aa: $0f
	ld   [$0f81], sp                                 ; $55ab: $08 $81 $0f
	nop                                              ; $55ae: $00
	dec  bc                                          ; $55af: $0b
	add  c                                           ; $55b0: $81
	rrca                                             ; $55b1: $0f
	ld   [$0f0e], sp                                 ; $55b2: $08 $0e $0f
	ld   a, [bc]                                     ; $55b5: $0a
	rrca                                             ; $55b6: $0f
	db   $fd                                         ; $55b7: $fd
	rst  $38                                         ; $55b8: $ff
	db   $db                                         ; $55b9: $db
	rst  $38                                         ; $55ba: $ff
	or   $81                                         ; $55bb: $f6 $81
	rst  $38                                         ; $55bd: $ff
	ld   [bc], a                                     ; $55be: $02
	cp   a                                           ; $55bf: $bf
	rst  $38                                         ; $55c0: $ff
	db   $db                                         ; $55c1: $db
	add  c                                           ; $55c2: $81
	rst  $38                                         ; $55c3: $ff
	ld   [$fffd], sp                                 ; $55c4: $08 $fd $ff
	or   l                                           ; $55c7: $b5
	rst  $38                                         ; $55c8: $ff
	db   $fd                                         ; $55c9: $fd
	rst  $38                                         ; $55ca: $ff
	xor  b                                           ; $55cb: $a8
	rst  $38                                         ; $55cc: $ff
	pop  hl                                          ; $55cd: $e1
	add  c                                           ; $55ce: $81
	rst  $38                                         ; $55cf: $ff
	nop                                              ; $55d0: $00
	cp   $81                                         ; $55d1: $fe $81
	rst  $38                                         ; $55d3: $ff
	ld   [de], a                                     ; $55d4: $12
	cp   $ff                                         ; $55d5: $fe $ff
	ld   c, d                                        ; $55d7: $4a
	rst  $38                                         ; $55d8: $ff
	dec  sp                                          ; $55d9: $3b
	rst  $38                                         ; $55da: $ff
	call nz, Call_07d_67ff                           ; $55db: $c4 $ff $67
	rst  $38                                         ; $55de: $ff
	db   $dd                                         ; $55df: $dd
	rst  $38                                         ; $55e0: $ff
	rst  $28                                         ; $55e1: $ef
	rst  $38                                         ; $55e2: $ff
	ei                                               ; $55e3: $fb
	rst  $38                                         ; $55e4: $ff
	ld   [hl], a                                     ; $55e5: $77
	rst  $38                                         ; $55e6: $ff
	ld   h, $81                                      ; $55e7: $26 $81
	rst  $38                                         ; $55e9: $ff
	ld   b, $58                                      ; $55ea: $06 $58
	rst  $38                                         ; $55ec: $ff
	sbc  e                                           ; $55ed: $9b
	rst  $38                                         ; $55ee: $ff
	ld   l, l                                        ; $55ef: $6d
	rst  $38                                         ; $55f0: $ff
	ei                                               ; $55f1: $fb
	add  c                                           ; $55f2: $81
	rst  $38                                         ; $55f3: $ff
	ld   [bc], a                                     ; $55f4: $02
	cp   a                                           ; $55f5: $bf
	rst  $38                                         ; $55f6: $ff
	ld   [$ff81], a                                  ; $55f7: $ea $81 $ff
	ld   b, $cf                                      ; $55fa: $06 $cf
	rst  $38                                         ; $55fc: $ff
	ld   a, [$eeff]                                  ; $55fd: $fa $ff $ee
	rst  $38                                         ; $5600: $ff
	cp   $81                                         ; $5601: $fe $81
	rst  $38                                         ; $5603: $ff
	inc  d                                           ; $5604: $14
	ld   [hl], a                                     ; $5605: $77
	rst  $38                                         ; $5606: $ff
	ld   d, c                                        ; $5607: $51
	rst  $38                                         ; $5608: $ff
	ldh  [rIE], a                                    ; $5609: $e0 $ff
	rla                                              ; $560b: $17
	rst  $38                                         ; $560c: $ff
	cp   c                                           ; $560d: $b9
	rst  $38                                         ; $560e: $ff
	rst  $28                                         ; $560f: $ef
	rst  $38                                         ; $5610: $ff
	ld   [hl], a                                     ; $5611: $77
	rst  $38                                         ; $5612: $ff
	sbc  $ff                                         ; $5613: $de $ff
	cp   e                                           ; $5615: $bb
	rst  $38                                         ; $5616: $ff
	inc  e                                           ; $5617: $1c
	rst  $38                                         ; $5618: $ff
	add  sp, -$7f                                    ; $5619: $e8 $81
	db   $fd                                         ; $561b: $fd
	ld   b, $a5                                      ; $561c: $06 $a5
	db   $fd                                         ; $561e: $fd
	push de                                          ; $561f: $d5
	push af                                          ; $5620: $f5
	or   l                                           ; $5621: $b5
	push af                                          ; $5622: $f5
	ld   d, l                                        ; $5623: $55
	add  c                                           ; $5624: $81
	push de                                          ; $5625: $d5
	ld   bc, $c988                                   ; $5626: $01 $88 $c9
	add  c                                           ; $5629: $81
	reti                                             ; $562a: $d9


	dec  b                                           ; $562b: $05
	ld   sp, hl                                      ; $562c: $f9
	ldh  [rIE], a                                    ; $562d: $e0 $ff
	ld   sp, hl                                      ; $562f: $f9
	rst  $38                                         ; $5630: $ff
	ld   b, [hl]                                     ; $5631: $46
	add  c                                           ; $5632: $81
	rst  $38                                         ; $5633: $ff
	ld   [bc], a                                     ; $5634: $02
	ret  nz                                          ; $5635: $c0

	rst  $38                                         ; $5636: $ff
	ld   [hl], l                                     ; $5637: $75
	add  c                                           ; $5638: $81
	adc  d                                           ; $5639: $8a
	add  b                                           ; $563a: $80
	adc  e                                           ; $563b: $8b
	nop                                              ; $563c: $00
	nop                                              ; $563d: $00
	add  b                                           ; $563e: $80
	adc  a                                           ; $563f: $8f
	ld   bc, $00ff                                   ; $5640: $01 $ff $00
	add  c                                           ; $5643: $81
	rst  $38                                         ; $5644: $ff
	inc  c                                           ; $5645: $0c
	nop                                              ; $5646: $00
	rst  $38                                         ; $5647: $ff
	ld   e, h                                        ; $5648: $5c
	xor  a                                           ; $5649: $af
	xor  h                                           ; $564a: $ac
	cp   a                                           ; $564b: $bf
	sub  b                                           ; $564c: $90
	cp   a                                           ; $564d: $bf
	cpl                                              ; $564e: $2f
	rst  $38                                         ; $564f: $ff
	ldh  [rIE], a                                    ; $5650: $e0 $ff
	nop                                              ; $5652: $00
	add  c                                           ; $5653: $81
	rst  $38                                         ; $5654: $ff
	inc  c                                           ; $5655: $0c
	nop                                              ; $5656: $00
	rst  $38                                         ; $5657: $ff
	ld   a, $ff                                      ; $5658: $3e $ff
	ld   a, $ff                                      ; $565a: $3e $ff
	inc  bc                                          ; $565c: $03
	rst  $38                                         ; $565d: $ff
	ld   a, l                                        ; $565e: $7d
	ld   a, a                                        ; $565f: $7f
	add  c                                           ; $5660: $81
	rst  $38                                         ; $5661: $ff
	ld   b, b                                        ; $5662: $40
	add  c                                           ; $5663: $81
	ccf                                              ; $5664: $3f
	rlca                                             ; $5665: $07
	ret  nz                                          ; $5666: $c0

	rst  $38                                         ; $5667: $ff
	ld   a, a                                        ; $5668: $7f
	rst  $38                                         ; $5669: $ff
	and  [hl]                                        ; $566a: $a6
	rst  $38                                         ; $566b: $ff
	rlca                                             ; $566c: $07
	db   $e3                                         ; $566d: $e3
	add  b                                           ; $566e: $80
	di                                               ; $566f: $f3
	ld   [bc], a                                     ; $5670: $02
	ld   [hl], e                                     ; $5671: $73
	di                                               ; $5672: $f3
	dec  sp                                          ; $5673: $3b
	add  c                                           ; $5674: $81
	ei                                               ; $5675: $fb
	add  hl, bc                                      ; $5676: $09
	ld   e, [hl]                                     ; $5677: $5e
	rst  $38                                         ; $5678: $ff
	db   $e3                                         ; $5679: $e3
	rst  $38                                         ; $567a: $ff
	ccf                                              ; $567b: $3f
	rst  $38                                         ; $567c: $ff
	cp   b                                           ; $567d: $b8
	rst  $38                                         ; $567e: $ff
	ld   h, a                                        ; $567f: $67
	rst  $38                                         ; $5680: $ff
	add  b                                           ; $5681: $80
	db   $fc                                         ; $5682: $fc
	inc  bc                                          ; $5683: $03
	ret  nc                                          ; $5684: $d0

	ldh  a, [$c4]                                    ; $5685: $f0 $c4
	add  h                                           ; $5687: $84
	add  b                                           ; $5688: $80
	and  b                                           ; $5689: $a0
	inc  b                                           ; $568a: $04
	add  b                                           ; $568b: $80
	rst  $38                                         ; $568c: $ff
	adc  a                                           ; $568d: $8f
	rst  $38                                         ; $568e: $ff
	ld   a, h                                        ; $568f: $7c
	add  c                                           ; $5690: $81
	rst  $38                                         ; $5691: $ff
	add  b                                           ; $5692: $80
	rra                                              ; $5693: $1f
	nop                                              ; $5694: $00
	inc  c                                           ; $5695: $0c
	add  b                                           ; $5696: $80
	rrca                                             ; $5697: $0f
	add  b                                           ; $5698: $80
	inc  c                                           ; $5699: $0c
	add  b                                           ; $569a: $80
	ld   [$ff81], sp                                 ; $569b: $08 $81 $ff
	nop                                              ; $569e: $00
	rlca                                             ; $569f: $07
	add  c                                           ; $56a0: $81
	rst  $38                                         ; $56a1: $ff
	ld   [bc], a                                     ; $56a2: $02
	add  $ff                                         ; $56a3: $c6 $ff
	ld   a, $80                                      ; $56a5: $3e $80
	rst  $38                                         ; $56a7: $ff
	add  c                                           ; $56a8: $81
	rlca                                             ; $56a9: $07
	inc  bc                                          ; $56aa: $03
	push af                                          ; $56ab: $f5
	rlca                                             ; $56ac: $07
	inc  bc                                          ; $56ad: $03
	rlca                                             ; $56ae: $07
	add  b                                           ; $56af: $80
	inc  bc                                          ; $56b0: $03
	nop                                              ; $56b1: $00
	ld   [bc], a                                     ; $56b2: $02
	add  a                                           ; $56b3: $87
	inc  bc                                          ; $56b4: $03
	dec  b                                           ; $56b5: $05
	ldh  a, [rIE]                                    ; $56b6: $f0 $ff
	ld   e, a                                        ; $56b8: $5f
	di                                               ; $56b9: $f3
	ld   [bc], a                                     ; $56ba: $02
	ld   [hl], e                                     ; $56bb: $73
	add  b                                           ; $56bc: $80
	inc  sp                                          ; $56bd: $33
	nop                                              ; $56be: $00
	ld   sp, $3381                                   ; $56bf: $31 $81 $33
	nop                                              ; $56c2: $00
	rla                                              ; $56c3: $17
	add  c                                           ; $56c4: $81
	scf                                              ; $56c5: $37
	rlca                                             ; $56c6: $07
	ld   hl, $c3ff                                   ; $56c7: $21 $ff $c3
	ld   a, a                                        ; $56ca: $7f
	ld   c, a                                        ; $56cb: $4f
	ld   l, a                                        ; $56cc: $6f
	dec  h                                           ; $56cd: $25
	ld   h, a                                        ; $56ce: $67
	add  h                                           ; $56cf: $84
	ld   h, [hl]                                     ; $56d0: $66
	add  b                                           ; $56d1: $80
	ld   h, h                                        ; $56d2: $64
	ld   b, $b4                                      ; $56d3: $06 $b4
	rst  $38                                         ; $56d5: $ff
	ld   l, a                                        ; $56d6: $6f
	cp   a                                           ; $56d7: $bf
	cp   h                                           ; $56d8: $bc
	cp   a                                           ; $56d9: $bf
	ld   hl, $b987                                   ; $56da: $21 $87 $b9
	rlca                                             ; $56dd: $07
	nop                                              ; $56de: $00
	rst  $38                                         ; $56df: $ff
	ld   b, b                                        ; $56e0: $40
	rst  $38                                         ; $56e1: $ff
	ld   c, c                                        ; $56e2: $49
	ret                                              ; $56e3: $c9


	add  hl, bc                                      ; $56e4: $09
	ret                                              ; $56e5: $c9


	add  d                                           ; $56e6: $82
	ret  z                                           ; $56e7: $c8

	add  d                                           ; $56e8: $82
	ld   c, b                                        ; $56e9: $48
	ld   b, $10                                      ; $56ea: $06 $10
	rst  $38                                         ; $56ec: $ff
	and  l                                           ; $56ed: $a5
	rst  $38                                         ; $56ee: $ff
	db   $db                                         ; $56ef: $db
	cp   $26                                         ; $56f0: $fe $26
	add  l                                           ; $56f2: $85
	or   [hl]                                        ; $56f3: $b6
	add  b                                           ; $56f4: $80
	and  [hl]                                        ; $56f5: $a6
	ld   [$ff2f], sp                                 ; $56f6: $08 $2f $ff
	ld   e, a                                        ; $56f9: $5f
	rst  $38                                         ; $56fa: $ff
	db   $d3                                         ; $56fb: $d3
	di                                               ; $56fc: $f3
	or   e                                           ; $56fd: $b3
	di                                               ; $56fe: $f3
	db   $e3                                         ; $56ff: $e3
	add  c                                           ; $5700: $81
	di                                               ; $5701: $f3
	add  b                                           ; $5702: $80
	or   e                                           ; $5703: $b3
	add  b                                           ; $5704: $80
	cp   e                                           ; $5705: $bb
	ld   bc, $5756                                   ; $5706: $01 $56 $57
	add  b                                           ; $5709: $80
	ld   c, a                                        ; $570a: $4f
	inc  bc                                          ; $570b: $03
	ld   c, l                                        ; $570c: $4d
	ld   c, a                                        ; $570d: $4f
	ld   c, e                                        ; $570e: $4b
	ld   c, a                                        ; $570f: $4f
	add  c                                           ; $5710: $81
	ld   b, a                                        ; $5711: $47
	add  b                                           ; $5712: $80
	ld   c, a                                        ; $5713: $4f
	rrca                                             ; $5714: $0f
	ld   a, a                                        ; $5715: $7f
	ld   a, $7f                                      ; $5716: $3e $7f
	ld   b, c                                        ; $5718: $41
	rst  $38                                         ; $5719: $ff
	cp   a                                           ; $571a: $bf
	rst  $38                                         ; $571b: $ff
	add  b                                           ; $571c: $80
	rst  $38                                         ; $571d: $ff
	add  b                                           ; $571e: $80
	rst  $38                                         ; $571f: $ff
	ld   a, a                                        ; $5720: $7f
	rst  $38                                         ; $5721: $ff
	nop                                              ; $5722: $00
	rst  $38                                         ; $5723: $ff
	nop                                              ; $5724: $00
	add  l                                           ; $5725: $85
	rst  $38                                         ; $5726: $ff
	inc  bc                                          ; $5727: $03
	ret  nz                                          ; $5728: $c0

	rst  $38                                         ; $5729: $ff
	nop                                              ; $572a: $00
	ccf                                              ; $572b: $3f
	add  b                                           ; $572c: $80
	rra                                              ; $572d: $1f
	inc  bc                                          ; $572e: $03
	ldh  [rIE], a                                    ; $572f: $e0 $ff
	nop                                              ; $5731: $00
	rra                                              ; $5732: $1f
	add  b                                           ; $5733: $80
	rrca                                             ; $5734: $0f
	add  d                                           ; $5735: $82
	rst  $38                                         ; $5736: $ff
	ld   [bc], a                                     ; $5737: $02

jr_07d_5738:
	nop                                              ; $5738: $00
	rst  $38                                         ; $5739: $ff
	nop                                              ; $573a: $00
	add  c                                           ; $573b: $81
	rst  $38                                         ; $573c: $ff
	ld   [bc], a                                     ; $573d: $02
	nop                                              ; $573e: $00
	rst  $38                                         ; $573f: $ff
	nop                                              ; $5740: $00
	add  c                                           ; $5741: $81
	rst  $38                                         ; $5742: $ff
	add  d                                           ; $5743: $82
	ccf                                              ; $5744: $3f
	ld   [bc], a                                     ; $5745: $02
	ldh  [rIE], a                                    ; $5746: $e0 $ff
	nop                                              ; $5748: $00
	add  c                                           ; $5749: $81
	rra                                              ; $574a: $1f
	ld   [bc], a                                     ; $574b: $02
	ldh  [rIE], a                                    ; $574c: $e0 $ff
	db   $10                                         ; $574e: $10
	add  c                                           ; $574f: $81
	rrca                                             ; $5750: $0f
	ld   de, $fece                                   ; $5751: $11 $ce $fe
	rst  $10                                         ; $5754: $d7
	rst  $38                                         ; $5755: $ff
	rra                                              ; $5756: $1f
	rst  $38                                         ; $5757: $ff
	dec  bc                                          ; $5758: $0b
	rst  $38                                         ; $5759: $ff
	rst  $30                                         ; $575a: $f7
	rst  $38                                         ; $575b: $ff
	dec  b                                           ; $575c: $05
	rst  $38                                         ; $575d: $ff
	ld   [bc], a                                     ; $575e: $02
	rst  $38                                         ; $575f: $ff
	db   $fd                                         ; $5760: $fd
	rst  $38                                         ; $5761: $ff
	dec  b                                           ; $5762: $05
	inc  b                                           ; $5763: $04
	add  b                                           ; $5764: $80
	nop                                              ; $5765: $00
	add  b                                           ; $5766: $80
	add  e                                           ; $5767: $83
	dec  bc                                          ; $5768: $0b
	add  b                                           ; $5769: $80
	sub  b                                           ; $576a: $90
	pop  de                                          ; $576b: $d1
	call $c7cc                                       ; $576c: $cd $cc $c7
	rst  $20                                         ; $576f: $e7
	db   $e3                                         ; $5770: $e3
	di                                               ; $5771: $f3
	pop  af                                          ; $5772: $f1
	jp   hl                                          ; $5773: $e9


	add  sp, -$80                                    ; $5774: $e8 $80
	dec  c                                           ; $5776: $0d
	add  b                                           ; $5777: $80
	add  b                                           ; $5778: $80
	add  b                                           ; $5779: $80
	dec  b                                           ; $577a: $05
	add  b                                           ; $577b: $80
	pop  bc                                          ; $577c: $c1

jr_07d_577d:
	dec  bc                                          ; $577d: $0b
	jr   c, jr_07d_5738                              ; $577e: $38 $b8

	adc  [hl]                                        ; $5780: $8e
	cp   $f0                                         ; $5781: $fe $f0
	rst  $38                                         ; $5783: $ff
	ld   h, a                                        ; $5784: $67
	sbc  [hl]                                        ; $5785: $9e
	rst  $20                                         ; $5786: $e7
	push hl                                          ; $5787: $e5
	ld   a, a                                        ; $5788: $7f
	ld   a, e                                        ; $5789: $7b
	add  b                                           ; $578a: $80
	rst  $38                                         ; $578b: $ff
	add  b                                           ; $578c: $80
	ld   e, l                                        ; $578d: $5d
	add  b                                           ; $578e: $80
	ld   c, $80                                      ; $578f: $0e $80
	ld   [bc], a                                     ; $5791: $02
	ld   [bc], a                                     ; $5792: $02
	nop                                              ; $5793: $00
	ei                                               ; $5794: $fb
	inc  b                                           ; $5795: $04
	add  l                                           ; $5796: $85
	nop                                              ; $5797: $00
	ld   [$ff7f], sp                                 ; $5798: $08 $7f $ff
	ld   a, a                                        ; $579b: $7f
	rst  $38                                         ; $579c: $ff
	cp   $ff                                         ; $579d: $fe $ff
	ld   sp, hl                                      ; $579f: $f9
	rst  $38                                         ; $57a0: $ff
	rlca                                             ; $57a1: $07
	add  l                                           ; $57a2: $85
	nop                                              ; $57a3: $00
	ld   [$ffc3], sp                                 ; $57a4: $08 $c3 $ff
	or   e                                           ; $57a7: $b3
	db   $fc                                         ; $57a8: $fc
	ld   c, [hl]                                     ; $57a9: $4e
	ldh  a, [c]                                      ; $57aa: $f2
	jr   nz, jr_07d_577d                             ; $57ab: $20 $d0

	ccf                                              ; $57ad: $3f
	add  l                                           ; $57ae: $85
	nop                                              ; $57af: $00
	ld   bc, $609f                                   ; $57b0: $01 $9f $60
	add  b                                           ; $57b3: $80
	ld   h, h                                        ; $57b4: $64
	add  b                                           ; $57b5: $80
	ld   h, b                                        ; $57b6: $60

jr_07d_57b7:
	add  b                                           ; $57b7: $80
	ld   h, h                                        ; $57b8: $64
	nop                                              ; $57b9: $00
	rst  $38                                         ; $57ba: $ff
	add  l                                           ; $57bb: $85
	nop                                              ; $57bc: $00
	nop                                              ; $57bd: $00
	sub  b                                           ; $57be: $90
	add  l                                           ; $57bf: $85
	ld   h, b                                        ; $57c0: $60
	ld   bc, $424d                                   ; $57c1: $01 $4d $42
	add  b                                           ; $57c4: $80
	ld   d, d                                        ; $57c5: $52
	add  b                                           ; $57c6: $80
	ld   b, d                                        ; $57c7: $42
	add  b                                           ; $57c8: $80
	ld   d, d                                        ; $57c9: $52
	add  b                                           ; $57ca: $80
	ld   b, d                                        ; $57cb: $42
	dec  b                                           ; $57cc: $05
	ld   d, d                                        ; $57cd: $52
	jp   nc, wIsDoubleSpeed                                   ; $57ce: $d2 $02 $c2

	sub  d                                           ; $57d1: $92
	jp   nc, $9280                                   ; $57d2: $d2 $80 $92

	add  b                                           ; $57d5: $80
	db   $10                                         ; $57d6: $10
	add  b                                           ; $57d7: $80
	sub  d                                           ; $57d8: $92
	add  b                                           ; $57d9: $80
	db   $10                                         ; $57da: $10
	add  b                                           ; $57db: $80
	sub  d                                           ; $57dc: $92
	add  b                                           ; $57dd: $80
	db   $10                                         ; $57de: $10
	add  b                                           ; $57df: $80
	sub  d                                           ; $57e0: $92
	add  b                                           ; $57e1: $80
	db   $10                                         ; $57e2: $10
	add  b                                           ; $57e3: $80
	ld   h, b                                        ; $57e4: $60
	add  b                                           ; $57e5: $80
	ld   h, h                                        ; $57e6: $64
	add  b                                           ; $57e7: $80
	ld   h, b                                        ; $57e8: $60
	add  b                                           ; $57e9: $80
	ld   h, h                                        ; $57ea: $64
	add  b                                           ; $57eb: $80
	ld   h, b                                        ; $57ec: $60
	add  b                                           ; $57ed: $80
	ld   h, h                                        ; $57ee: $64
	add  b                                           ; $57ef: $80
	ld   h, b                                        ; $57f0: $60
	add  b                                           ; $57f1: $80
	ld   h, h                                        ; $57f2: $64
	nop                                              ; $57f3: $00
	ld   l, a                                        ; $57f4: $6f
	adc  l                                           ; $57f5: $8d
	ld   h, b                                        ; $57f6: $60
	inc  bc                                          ; $57f7: $03
	ld   c, l                                        ; $57f8: $4d
	jp   nz, Jump_07d_52d2                           ; $57f9: $c2 $d2 $52

	add  b                                           ; $57fc: $80
	ld   e, a                                        ; $57fd: $5f
	dec  bc                                          ; $57fe: $0b

Jump_07d_57ff:
	ld   d, c                                        ; $57ff: $51
	ld   e, a                                        ; $5800: $5f
	ld   e, c                                        ; $5801: $59
	pop  de                                          ; $5802: $d1
	push de                                          ; $5803: $d5
	pop  de                                          ; $5804: $d1
	push de                                          ; $5805: $d5
	ld   d, c                                        ; $5806: $51
	ld   d, l                                        ; $5807: $55
	ld   d, c                                        ; $5808: $51
	sub  b                                           ; $5809: $90
	sub  d                                           ; $580a: $92
	add  b                                           ; $580b: $80
	db   $10                                         ; $580c: $10
	dec  c                                           ; $580d: $0d
	rra                                              ; $580e: $1f
	sbc  a                                           ; $580f: $9f
	sub  c                                           ; $5810: $91
	sbc  a                                           ; $5811: $9f
	sbc  c                                           ; $5812: $99
	sub  c                                           ; $5813: $91
	sub  l                                           ; $5814: $95
	sub  c                                           ; $5815: $91
	sub  l                                           ; $5816: $95
	sub  c                                           ; $5817: $91
	sub  l                                           ; $5818: $95
	sub  c                                           ; $5819: $91
	ldh  [c], a                                      ; $581a: $e2
	ld   h, b                                        ; $581b: $60
	add  b                                           ; $581c: $80
	ld   h, h                                        ; $581d: $64
	ld   bc, $e020                                   ; $581e: $01 $20 $e0
	add  b                                           ; $5821: $80
	db   $e4                                         ; $5822: $e4
	add  b                                           ; $5823: $80
	ldh  [$80], a                                    ; $5824: $e0 $80
	db   $e4                                         ; $5826: $e4
	add  b                                           ; $5827: $80
	ldh  [$80], a                                    ; $5828: $e0 $80
	db   $e4                                         ; $582a: $e4
	nop                                              ; $582b: $00
	xor  a                                           ; $582c: $af
	adc  l                                           ; $582d: $8d
	ld   h, b                                        ; $582e: $60
	ld   bc, $9f6f                                   ; $582f: $01 $6f $9f
	add  b                                           ; $5832: $80
	inc  h                                           ; $5833: $24
	add  b                                           ; $5834: $80
	jr   z, jr_07d_57b7                              ; $5835: $28 $80

	xor  c                                           ; $5837: $a9
	add  b                                           ; $5838: $80
	add  hl, sp                                      ; $5839: $39
	add  b                                           ; $583a: $80
	dec  b                                           ; $583b: $05
	add  b                                           ; $583c: $80
	add  a                                           ; $583d: $87
	dec  b                                           ; $583e: $05
	push af                                          ; $583f: $f5
	rst  $30                                         ; $5840: $f7
	rst  $28                                         ; $5841: $ef
	ld   [de], a                                     ; $5842: $12
	db   $10                                         ; $5843: $10
	ret  nc                                          ; $5844: $d0

	add  b                                           ; $5845: $80
	jp   nc, $d00b                                   ; $5846: $d2 $0b $d0

	ldh  a, [hScriptOpcodeParams+2]                                    ; $5849: $f0 $a2
	cp   $b4                                         ; $584b: $fe $b4
	rst  $38                                         ; $584d: $ff
	or   h                                           ; $584e: $b4
	rst  $38                                         ; $584f: $ff
	and  h                                           ; $5850: $a4
	rst  $38                                         ; $5851: $ff
	add  a                                           ; $5852: $87
	ld   h, b                                        ; $5853: $60
	add  b                                           ; $5854: $80
	ld   h, h                                        ; $5855: $64
	add  b                                           ; $5856: $80
	ld   h, b                                        ; $5857: $60
	add  b                                           ; $5858: $80
	ld   h, h                                        ; $5859: $64
	add  b                                           ; $585a: $80
	ld   h, b                                        ; $585b: $60
	ld   b, $64                                      ; $585c: $06 $64
	db   $e4                                         ; $585e: $e4
	nop                                              ; $585f: $00
	ldh  a, [rP1]                                    ; $5860: $f0 $00
	cp   $e1                                         ; $5862: $fe $e1
	adc  l                                           ; $5864: $8d
	ld   h, b                                        ; $5865: $60
	add  hl, bc                                      ; $5866: $09
	inc  de                                          ; $5867: $13
	rst  $38                                         ; $5868: $ff
	sub  c                                           ; $5869: $91
	cp   $4e                                         ; $586a: $fe $4e
	ldh  a, [c]                                      ; $586c: $f2
	ld   [hl+], a                                    ; $586d: $22
	jp   nc, Jump_07d_4282                           ; $586e: $d2 $82 $42

	add  b                                           ; $5871: $80
	ld   d, d                                        ; $5872: $52
	add  b                                           ; $5873: $80
	ld   b, d                                        ; $5874: $42
	add  b                                           ; $5875: $80
	ld   d, d                                        ; $5876: $52
	inc  bc                                          ; $5877: $03
	ld   [de], a                                     ; $5878: $12
	sub  d                                           ; $5879: $92
	sub  b                                           ; $587a: $90
	db   $10                                         ; $587b: $10
	add  b                                           ; $587c: $80
	sub  d                                           ; $587d: $92
	add  b                                           ; $587e: $80
	db   $10                                         ; $587f: $10
	add  b                                           ; $5880: $80
	sub  d                                           ; $5881: $92
	add  b                                           ; $5882: $80
	db   $10                                         ; $5883: $10
	add  b                                           ; $5884: $80
	sub  d                                           ; $5885: $92
	add  b                                           ; $5886: $80
	db   $10                                         ; $5887: $10
	add  b                                           ; $5888: $80
	ld   h, b                                        ; $5889: $60
	add  b                                           ; $588a: $80
	ld   h, h                                        ; $588b: $64
	add  b                                           ; $588c: $80
	ld   h, b                                        ; $588d: $60
	add  b                                           ; $588e: $80
	ld   h, h                                        ; $588f: $64
	add  b                                           ; $5890: $80
	ld   h, b                                        ; $5891: $60
	add  b                                           ; $5892: $80
	ld   h, h                                        ; $5893: $64
	add  b                                           ; $5894: $80
	ld   h, b                                        ; $5895: $60
	add  b                                           ; $5896: $80
	ld   h, h                                        ; $5897: $64
	nop                                              ; $5898: $00
	ld   l, a                                        ; $5899: $6f
	adc  l                                           ; $589a: $8d
	ld   h, b                                        ; $589b: $60
	add  hl, bc                                      ; $589c: $09
	ld   c, l                                        ; $589d: $4d
	jp   nz, Jump_07d_52d2                           ; $589e: $c2 $d2 $52

	ld   b, d                                        ; $58a1: $42
	jp   nz, $d292                                   ; $58a2: $c2 $92 $d2

	add  d                                           ; $58a5: $82
	jp   nz, Jump_07d_5280                           ; $58a6: $c2 $80 $52

	ld   bc, $42c2                                   ; $58a9: $01 $c2 $42
	add  b                                           ; $58ac: $80
	ld   d, d                                        ; $58ad: $52
	add  b                                           ; $58ae: $80
	sub  d                                           ; $58af: $92
	add  b                                           ; $58b0: $80
	db   $10                                         ; $58b1: $10
	add  b                                           ; $58b2: $80
	sub  d                                           ; $58b3: $92
	add  b                                           ; $58b4: $80
	db   $10                                         ; $58b5: $10
	add  b                                           ; $58b6: $80
	sub  d                                           ; $58b7: $92
	add  b                                           ; $58b8: $80
	db   $10                                         ; $58b9: $10
	add  b                                           ; $58ba: $80
	sub  d                                           ; $58bb: $92
	add  b                                           ; $58bc: $80
	db   $10                                         ; $58bd: $10
	add  b                                           ; $58be: $80
	ld   h, b                                        ; $58bf: $60
	add  b                                           ; $58c0: $80
	ld   h, h                                        ; $58c1: $64
	add  b                                           ; $58c2: $80
	ld   h, b                                        ; $58c3: $60
	add  b                                           ; $58c4: $80
	ld   h, h                                        ; $58c5: $64
	add  b                                           ; $58c6: $80
	ld   h, b                                        ; $58c7: $60
	add  b                                           ; $58c8: $80
	ld   h, h                                        ; $58c9: $64
	add  b                                           ; $58ca: $80
	ld   h, b                                        ; $58cb: $60
	add  b                                           ; $58cc: $80
	ld   h, h                                        ; $58cd: $64
	nop                                              ; $58ce: $00
	ld   l, a                                        ; $58cf: $6f
	adc  l                                           ; $58d0: $8d
	ld   h, b                                        ; $58d1: $60
	rlca                                             ; $58d2: $07
	ld   e, b                                        ; $58d3: $58
	ld   d, c                                        ; $58d4: $51
	ld   e, c                                        ; $58d5: $59
	ld   e, a                                        ; $58d6: $5f
	ld   b, b                                        ; $58d7: $40
	ld   e, a                                        ; $58d8: $5f
	ld   c, l                                        ; $58d9: $4d
	ld   d, d                                        ; $58da: $52
	add  b                                           ; $58db: $80
	ld   b, d                                        ; $58dc: $42
	add  b                                           ; $58dd: $80
	ld   d, d                                        ; $58de: $52
	inc  b                                           ; $58df: $04
	ld   b, d                                        ; $58e0: $42
	jp   nz, $f282                                   ; $58e1: $c2 $82 $f2

	rst  $20                                         ; $58e4: $e7
	add  c                                           ; $58e5: $81
	sub  c                                           ; $58e6: $91
	dec  b                                           ; $58e7: $05
	sbc  c                                           ; $58e8: $99
	sbc  a                                           ; $58e9: $9f
	add  b                                           ; $58ea: $80
	rra                                              ; $58eb: $1f
	adc  l                                           ; $58ec: $8d
	sub  d                                           ; $58ed: $92
	add  b                                           ; $58ee: $80
	db   $10                                         ; $58ef: $10
	add  b                                           ; $58f0: $80
	sub  d                                           ; $58f1: $92
	add  b                                           ; $58f2: $80
	db   $10                                         ; $58f3: $10
	ld   bc, $e020                                   ; $58f4: $01 $20 $e0
	add  b                                           ; $58f7: $80
	db   $e4                                         ; $58f8: $e4
	add  b                                           ; $58f9: $80
	ldh  [$80], a                                    ; $58fa: $e0 $80
	db   $e4                                         ; $58fc: $e4
	ld   bc, $60a0                                   ; $58fd: $01 $a0 $60
	add  b                                           ; $5900: $80
	ld   h, h                                        ; $5901: $64
	add  b                                           ; $5902: $80
	ld   h, b                                        ; $5903: $60
	add  b                                           ; $5904: $80
	ld   h, h                                        ; $5905: $64
	nop                                              ; $5906: $00
	ld   l, a                                        ; $5907: $6f
	adc  l                                           ; $5908: $8d
	ld   h, b                                        ; $5909: $60
	ld   [bc], a                                     ; $590a: $02
	dec  c                                           ; $590b: $0d
	rst  $38                                         ; $590c: $ff
	sbc  a                                           ; $590d: $9f
	add  c                                           ; $590e: $81
	rst  $38                                         ; $590f: $ff
	dec  b                                           ; $5910: $05
	ld   d, c                                        ; $5911: $51
	ccf                                              ; $5912: $3f
	inc  bc                                          ; $5913: $03
	ccf                                              ; $5914: $3f
	ld   e, a                                        ; $5915: $5f
	ld   a, a                                        ; $5916: $7f
	add  d                                           ; $5917: $82
	rst  $38                                         ; $5918: $ff
	inc  b                                           ; $5919: $04
	ldh  [rIE], a                                    ; $591a: $e0 $ff
	db   $fd                                         ; $591c: $fd
	rst  $38                                         ; $591d: $ff
	sbc  $81                                         ; $591e: $de $81
	rst  $38                                         ; $5920: $ff
	nop                                              ; $5921: $00
	ld   a, a                                        ; $5922: $7f
	add  l                                           ; $5923: $85
	rst  $38                                         ; $5924: $ff
	inc  c                                           ; $5925: $0c
	ld   e, l                                        ; $5926: $5d
	rst  $38                                         ; $5927: $ff
	nop                                              ; $5928: $00
	rst  $38                                         ; $5929: $ff
	jr   nc, @+$01                                   ; $592a: $30 $ff

	add  $ff                                         ; $592c: $c6 $ff
	ld   hl, sp-$01                                  ; $592e: $f8 $ff
	dec  sp                                          ; $5930: $3b
	rst  $38                                         ; $5931: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5932: $cf
	add  c                                           ; $5933: $81
	rst  $38                                         ; $5934: $ff
	inc  c                                           ; $5935: $0c
	inc  h                                           ; $5936: $24
	ldh  [rP1], a                                    ; $5937: $e0 $00
	ldh  a, [rP1]                                    ; $5939: $f0 $00
	ldh  a, [rP1]                                    ; $593b: $f0 $00
	ldh  a, [$c0]                                    ; $593d: $f0 $c0
	ldh  a, [$90]                                    ; $593f: $f0 $90
	ldh  a, [$e0]                                    ; $5941: $f0 $e0
	add  c                                           ; $5943: $81
	ldh  a, [rP1]                                    ; $5944: $f0 $00
	ld   a, a                                        ; $5946: $7f
	add  e                                           ; $5947: $83
	rst  $38                                         ; $5948: $ff
	inc  c                                           ; $5949: $0c
	adc  a                                           ; $594a: $8f
	rst  $38                                         ; $594b: $ff
	or   a                                           ; $594c: $b7
	rst  $38                                         ; $594d: $ff
	rst  ToBoot                                         ; $594e: $c7
	rst  $38                                         ; $594f: $ff
	cp   $ff                                         ; $5950: $fe $ff
	cp   $07                                         ; $5952: $fe $07
	xor  e                                           ; $5954: $ab
	rst  $38                                         ; $5955: $ff
	ld   a, a                                        ; $5956: $7f
	add  e                                           ; $5957: $83
	rst  $38                                         ; $5958: $ff
	nop                                              ; $5959: $00
	rst  JumpTable                                         ; $595a: $df
	add  c                                           ; $595b: $81
	rst  $38                                         ; $595c: $ff
	inc  b                                           ; $595d: $04
	db   $f4                                         ; $595e: $f4
	rst  $38                                         ; $595f: $ff
	ld   sp, hl                                      ; $5960: $f9
	rst  $38                                         ; $5961: $ff
	ld   a, [bc]                                     ; $5962: $0a
	add  e                                           ; $5963: $83
	rst  $38                                         ; $5964: $ff
	ld   a, [bc]                                     ; $5965: $0a
	ld   a, a                                        ; $5966: $7f
	rst  $38                                         ; $5967: $ff
	rra                                              ; $5968: $1f
	rst  $38                                         ; $5969: $ff
	adc  a                                           ; $596a: $8f
	rst  $38                                         ; $596b: $ff
	daa                                              ; $596c: $27
	rst  $38                                         ; $596d: $ff
	rrca                                             ; $596e: $0f
	rst  $38                                         ; $596f: $ff
	xor  h                                           ; $5970: $ac
	adc  l                                           ; $5971: $8d
	ldh  a, [$03]                                    ; $5972: $f0 $03
	ld   l, a                                        ; $5974: $6f
	rlca                                             ; $5975: $07
	add  a                                           ; $5976: $87
	add  b                                           ; $5977: $80
	add  b                                           ; $5978: $80
	ld   bc, $8080                                   ; $5979: $01 $80 $80
	add  b                                           ; $597c: $80
	nop                                              ; $597d: $00
	add  b                                           ; $597e: $80
	inc  bc                                          ; $597f: $03
	nop                                              ; $5980: $00
	nop                                              ; $5981: $00
	add  b                                           ; $5982: $80
	ld   h, b                                        ; $5983: $60
	dec  c                                           ; $5984: $0d
	cp   $f2                                         ; $5985: $fe $f2
	rst  $38                                         ; $5987: $ff
	jp   nz, $063f                                   ; $5988: $c2 $3f $06

	rrca                                             ; $598b: $0f
	pop  bc                                          ; $598c: $c1
	rst  $20                                         ; $598d: $e7
	ld   b, b                                        ; $598e: $40
	ld   a, c                                        ; $598f: $79
	ldh  [$fe], a                                    ; $5990: $e0 $fe
	ld   b, $80                                      ; $5992: $06 $80
	rlca                                             ; $5994: $07
	ld   de, $8fff                                   ; $5995: $11 $ff $8f
	rst  $38                                         ; $5998: $ff
	sub  e                                           ; $5999: $93
	rst  $38                                         ; $599a: $ff
	db   $e4                                         ; $599b: $e4
	rst  $38                                         ; $599c: $ff
	reti                                             ; $599d: $d9


	rst  $38                                         ; $599e: $ff
	ld   d, d                                        ; $599f: $52
	rst  $38                                         ; $59a0: $ff
	inc  de                                          ; $59a1: $13
	ld   a, a                                        ; $59a2: $7f
	ld   [$091f], sp                                 ; $59a3: $08 $1f $09
	rst  $38                                         ; $59a6: $ff
	ld   h, c                                        ; $59a7: $61
	add  c                                           ; $59a8: $81
	ldh  a, [$0a]                                    ; $59a9: $f0 $0a
	ldh  [$f0], a                                    ; $59ab: $e0 $f0
	sub  b                                           ; $59ad: $90
	ldh  a, [$60]                                    ; $59ae: $f0 $60
	ldh  a, [$90]                                    ; $59b0: $f0 $90
	ldh  a, [rAUD4LEN]                               ; $59b2: $f0 $20
	ldh  a, [$c0]                                    ; $59b4: $f0 $c0
	add  b                                           ; $59b6: $80
	ldh  a, [rIE]                                    ; $59b7: $f0 $ff
	nop                                              ; $59b9: $00
	rst  $38                                         ; $59ba: $ff
	nop                                              ; $59bb: $00
	rst  $38                                         ; $59bc: $ff
	nop                                              ; $59bd: $00
	rst  $38                                         ; $59be: $ff
	nop                                              ; $59bf: $00
	rst  $38                                         ; $59c0: $ff
	nop                                              ; $59c1: $00
	rst  $38                                         ; $59c2: $ff
	nop                                              ; $59c3: $00
	rst  $30                                         ; $59c4: $f7
	nop                                              ; $59c5: $00
	ld   d, h                                        ; $59c6: $54
	ld   bc, $0f00                                   ; $59c7: $01 $00 $0f
	add  d                                           ; $59ca: $82
	ld   b, $84                                      ; $59cb: $06 $84
	ld   [bc], a                                     ; $59cd: $02
	add  e                                           ; $59ce: $83
	nop                                              ; $59cf: $00
	ld   bc, $ed1c                                   ; $59d0: $01 $1c $ed
	add  b                                           ; $59d3: $80
	rst  $28                                         ; $59d4: $ef
	add  b                                           ; $59d5: $80
	ld   sp, hl                                      ; $59d6: $f9
	add  b                                           ; $59d7: $80
	pop  bc                                          ; $59d8: $c1
	add  b                                           ; $59d9: $80
	rrca                                             ; $59da: $0f
	nop                                              ; $59db: $00
	ld   bc, $0093                                   ; $59dc: $01 $93 $00
	ld   [bc], a                                     ; $59df: $02
	ret  nz                                          ; $59e0: $c0

	ldh  [rAUD4LEN], a                               ; $59e1: $e0 $20
	adc  l                                           ; $59e3: $8d
	nop                                              ; $59e4: $00
	ld   b, $01                                      ; $59e5: $06 $01
	nop                                              ; $59e7: $00
	ld   b, $00                                      ; $59e8: $06 $00
	jr   jr_07d_59ec                                 ; $59ea: $18 $00

jr_07d_59ec:
	rra                                              ; $59ec: $1f
	add  l                                           ; $59ed: $85
	nop                                              ; $59ee: $00
	db   $10                                         ; $59ef: $10
	ld   a, b                                        ; $59f0: $78
	nop                                              ; $59f1: $00
	adc  [hl]                                        ; $59f2: $8e
	nop                                              ; $59f3: $00
	jr   c, jr_07d_59f6                              ; $59f4: $38 $00

jr_07d_59f6:
	ld   [hl], c                                     ; $59f6: $71
	nop                                              ; $59f7: $00
	add  b                                           ; $59f8: $80
	nop                                              ; $59f9: $00
	ccf                                              ; $59fa: $3f
	nop                                              ; $59fb: $00
	ccf                                              ; $59fc: $3f
	nop                                              ; $59fd: $00
	ld   b, b                                        ; $59fe: $40
	nop                                              ; $59ff: $00
	and  c                                           ; $5a00: $a1
	add  c                                           ; $5a01: $81
	nop                                              ; $5a02: $00
	ld   [$0080], sp                                 ; $5a03: $08 $80 $00
	sbc  $00                                         ; $5a06: $de $00
	ld   a, a                                        ; $5a08: $7f
	ld   bc, $03fd                                   ; $5a09: $01 $fd $03
	rst  $38                                         ; $5a0c: $ff
	add  c                                           ; $5a0d: $81
	inc  bc                                          ; $5a0e: $03
	dec  b                                           ; $5a0f: $05
	ld   a, a                                        ; $5a10: $7f
	rst  $38                                         ; $5a11: $ff
	ld   a, h                                        ; $5a12: $7c
	rst  $38                                         ; $5a13: $ff
	nop                                              ; $5a14: $00
	rst  $38                                         ; $5a15: $ff
	add  b                                           ; $5a16: $80
	ei                                               ; $5a17: $fb
	add  d                                           ; $5a18: $82
	db   $db                                         ; $5a19: $db
	add  d                                           ; $5a1a: $82
	sbc  e                                           ; $5a1b: $9b
	dec  b                                           ; $5a1c: $05
	ld   hl, sp-$01                                  ; $5a1d: $f8 $ff
	rlca                                             ; $5a1f: $07
	rst  $38                                         ; $5a20: $ff
	ret  nz                                          ; $5a21: $c0

	ccf                                              ; $5a22: $3f
	add  d                                           ; $5a23: $82
	scf                                              ; $5a24: $37
	add  b                                           ; $5a25: $80
	ld   [hl], a                                     ; $5a26: $77
	add  d                                           ; $5a27: $82
	ld   [hl], e                                     ; $5a28: $73
	nop                                              ; $5a29: $00
	nop                                              ; $5a2a: $00
	add  c                                           ; $5a2b: $81
	rst  $38                                         ; $5a2c: $ff
	ld   bc, $fe01                                   ; $5a2d: $01 $01 $fe
	add  d                                           ; $5a30: $82
	xor  $80                                         ; $5a31: $ee $80
	rst  $28                                         ; $5a33: $ef
	add  d                                           ; $5a34: $82
	xor  l                                           ; $5a35: $ad
	ld   bc, $ff04                                   ; $5a36: $01 $04 $ff
	add  b                                           ; $5a39: $80
	ei                                               ; $5a3a: $fb
	ld   bc, $f10a                                   ; $5a3b: $01 $0a $f1
	add  b                                           ; $5a3e: $80
	ei                                               ; $5a3f: $fb
	add  [hl]                                        ; $5a40: $86
	db   $db                                         ; $5a41: $db
	nop                                              ; $5a42: $00
	nop                                              ; $5a43: $00
	add  c                                           ; $5a44: $81
	rst  $38                                         ; $5a45: $ff
	ld   bc, $2fd0                                   ; $5a46: $01 $d0 $2f
	add  b                                           ; $5a49: $80
	dec  l                                           ; $5a4a: $2d
	add  b                                           ; $5a4b: $80
	ld   l, l                                        ; $5a4c: $6d
	add  b                                           ; $5a4d: $80
	ld   c, h                                        ; $5a4e: $4c
	add  d                                           ; $5a4f: $82
	call z, $0000                                   ; $5a50: $cc $00 $00
	add  c                                           ; $5a53: $81
	rst  $38                                         ; $5a54: $ff
	ld   bc, $8f70                                   ; $5a55: $01 $70 $8f
	add  d                                           ; $5a58: $82
	rst  JumpTable                                         ; $5a59: $df
	add  b                                           ; $5a5a: $80
	ei                                               ; $5a5b: $fb
	add  d                                           ; $5a5c: $82
	ld   sp, hl                                      ; $5a5d: $f9
	nop                                              ; $5a5e: $00
	nop                                              ; $5a5f: $00
	add  c                                           ; $5a60: $81
	rst  $38                                         ; $5a61: $ff
	ld   bc, $ff00                                   ; $5a62: $01 $00 $ff
	add  h                                           ; $5a65: $84
	rst  JumpTable                                         ; $5a66: $df
	add  b                                           ; $5a67: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a68: $cf
	add  b                                           ; $5a69: $80
	call $3105                                       ; $5a6a: $cd $05 $31
	adc  a                                           ; $5a6d: $8f
	and  c                                           ; $5a6e: $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a6f: $cf
	ld   e, a                                        ; $5a70: $5f
	adc  a                                           ; $5a71: $8f
	add  d                                           ; $5a72: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a73: $cf
	add  b                                           ; $5a74: $80
	rst  $20                                         ; $5a75: $e7
	add  b                                           ; $5a76: $80
	db   $e3                                         ; $5a77: $e3
	add  b                                           ; $5a78: $80
	and  c                                           ; $5a79: $a1
	db   $10                                         ; $5a7a: $10
	dec  sp                                          ; $5a7b: $3b
	nop                                              ; $5a7c: $00
	stop                                             ; $5a7d: $10 $00
	ld   [$2c00], sp                                 ; $5a7f: $08 $00 $2c
	nop                                              ; $5a82: $00

jr_07d_5a83:
	ld   [$0700], sp                                 ; $5a83: $08 $00 $07
	nop                                              ; $5a86: $00
	inc  bc                                          ; $5a87: $03
	nop                                              ; $5a88: $00
	inc  bc                                          ; $5a89: $03
	nop                                              ; $5a8a: $00
	ldh  a, [$8d]                                    ; $5a8b: $f0 $8d
	nop                                              ; $5a8d: $00
	nop                                              ; $5a8e: $00
	ldh  a, [$91]                                    ; $5a8f: $f0 $91
	nop                                              ; $5a91: $00
	ld   [bc], a                                     ; $5a92: $02
	inc  bc                                          ; $5a93: $03
	nop                                              ; $5a94: $00
	inc  bc                                          ; $5a95: $03
	adc  c                                           ; $5a96: $89
	nop                                              ; $5a97: $00
	inc  b                                           ; $5a98: $04
	cp   $00                                         ; $5a99: $fe $00
	rlca                                             ; $5a9b: $07
	nop                                              ; $5a9c: $00
	ld   sp, hl                                      ; $5a9d: $f9
	add  a                                           ; $5a9e: $87
	nop                                              ; $5a9f: $00
	inc  b                                           ; $5aa0: $04
	ld   bc, $7e00                                   ; $5aa1: $01 $00 $7e
	nop                                              ; $5aa4: $00
	add  b                                           ; $5aa5: $80
	add  c                                           ; $5aa6: $81
	nop                                              ; $5aa7: $00
	nop                                              ; $5aa8: $00
	add  b                                           ; $5aa9: $80
	add  c                                           ; $5aaa: $81
	nop                                              ; $5aab: $00
	ld   [bc], a                                     ; $5aac: $02
	ld   a, a                                        ; $5aad: $7f
	nop                                              ; $5aae: $00
	rst  $38                                         ; $5aaf: $ff
	adc  e                                           ; $5ab0: $8b
	nop                                              ; $5ab1: $00
	ld   [bc], a                                     ; $5ab2: $02
	rst  $38                                         ; $5ab3: $ff
	nop                                              ; $5ab4: $00
	rst  $38                                         ; $5ab5: $ff
	add  b                                           ; $5ab6: $80
	nop                                              ; $5ab7: $00
	add  b                                           ; $5ab8: $80
	inc  bc                                          ; $5ab9: $03
	add  c                                           ; $5aba: $81
	rlca                                             ; $5abb: $07
	add  b                                           ; $5abc: $80
	ld   b, $08                                      ; $5abd: $06 $08
	rrca                                             ; $5abf: $0f
	inc  b                                           ; $5ac0: $04
	inc  e                                           ; $5ac1: $1c
	nop                                              ; $5ac2: $00
	rst  $28                                         ; $5ac3: $ef
	nop                                              ; $5ac4: $00
	cp   a                                           ; $5ac5: $bf
	nop                                              ; $5ac6: $00
	and  h                                           ; $5ac7: $a4
	add  e                                           ; $5ac8: $83
	dec  de                                          ; $5ac9: $1b
	add  d                                           ; $5aca: $82
	jr   jr_07d_5ad3                                 ; $5acb: $18 $06

	inc  a                                           ; $5acd: $3c
	nop                                              ; $5ace: $00
	inc  a                                           ; $5acf: $3c
	nop                                              ; $5ad0: $00
	jr   c, jr_07d_5ad3                              ; $5ad1: $38 $00

jr_07d_5ad3:
	res  0, e                                        ; $5ad3: $cb $83
	di                                               ; $5ad5: $f3
	add  b                                           ; $5ad6: $80
	inc  sp                                          ; $5ad7: $33
	add  [hl]                                        ; $5ad8: $86
	nop                                              ; $5ad9: $00
	add  b                                           ; $5ada: $80
	xor  l                                           ; $5adb: $ad
	add  b                                           ; $5adc: $80
	dec  l                                           ; $5add: $2d
	add  b                                           ; $5ade: $80
	add  hl, hl                                      ; $5adf: $29

jr_07d_5ae0:
	add  b                                           ; $5ae0: $80
	add  hl, bc                                      ; $5ae1: $09
	add  [hl]                                        ; $5ae2: $86
	nop                                              ; $5ae3: $00
	add  h                                           ; $5ae4: $84
	sbc  e                                           ; $5ae5: $9b
	add  b                                           ; $5ae6: $80
	adc  d                                           ; $5ae7: $8a
	add  [hl]                                        ; $5ae8: $86
	nop                                              ; $5ae9: $00
	add  d                                           ; $5aea: $82
	call z, $8c80                                    ; $5aeb: $cc $80 $8c
	adc  b                                           ; $5aee: $88
	nop                                              ; $5aef: $00
	add  b                                           ; $5af0: $80
	db   $fd                                         ; $5af1: $fd
	add  d                                           ; $5af2: $82
	ld   a, h                                        ; $5af3: $7c
	adc  b                                           ; $5af4: $88
	nop                                              ; $5af5: $00
	add  b                                           ; $5af6: $80
	call $cc82                                       ; $5af7: $cd $82 $cc
	adc  b                                           ; $5afa: $88
	nop                                              ; $5afb: $00
	add  b                                           ; $5afc: $80
	xor  a                                           ; $5afd: $af
	add  d                                           ; $5afe: $82
	or   b                                           ; $5aff: $b0
	add  b                                           ; $5b00: $80
	jr   nc, jr_07d_5a83                             ; $5b01: $30 $80

	db   $10                                         ; $5b03: $10
	add  h                                           ; $5b04: $84
	nop                                              ; $5b05: $00
	nop                                              ; $5b06: $00
	rst  $38                                         ; $5b07: $ff
	add  l                                           ; $5b08: $85
	nop                                              ; $5b09: $00
	ld   bc, $50a0                                   ; $5b0a: $01 $a0 $50
	add  b                                           ; $5b0d: $80
	and  b                                           ; $5b0e: $a0
	add  b                                           ; $5b0f: $80
	ld   d, b                                        ; $5b10: $50
	add  b                                           ; $5b11: $80
	and  b                                           ; $5b12: $a0
	ld   bc, $555a                                   ; $5b13: $01 $5a $55
	add  b                                           ; $5b16: $80
	xor  d                                           ; $5b17: $aa
	add  b                                           ; $5b18: $80
	ld   d, l                                        ; $5b19: $55
	add  b                                           ; $5b1a: $80
	xor  d                                           ; $5b1b: $aa
	add  b                                           ; $5b1c: $80
	ld   d, l                                        ; $5b1d: $55
	add  b                                           ; $5b1e: $80
	xor  d                                           ; $5b1f: $aa
	add  b                                           ; $5b20: $80
	ld   d, l                                        ; $5b21: $55
	inc  bc                                          ; $5b22: $03
	ld   bc, $5400                                   ; $5b23: $01 $00 $54
	ld   d, l                                        ; $5b26: $55
	add  b                                           ; $5b27: $80
	xor  d                                           ; $5b28: $aa
	add  b                                           ; $5b29: $80
	ld   d, l                                        ; $5b2a: $55
	add  b                                           ; $5b2b: $80
	xor  d                                           ; $5b2c: $aa
	add  b                                           ; $5b2d: $80
	ld   d, l                                        ; $5b2e: $55
	rlca                                             ; $5b2f: $07
	xor  a                                           ; $5b30: $af
	xor  b                                           ; $5b31: $a8
	ld   a, e                                        ; $5b32: $7b
	ld   b, b                                        ; $5b33: $40
	rst  JumpTable                                         ; $5b34: $df
	inc  bc                                          ; $5b35: $03
	or   l                                           ; $5b36: $b5
	ld   d, l                                        ; $5b37: $55
	add  b                                           ; $5b38: $80
	xor  d                                           ; $5b39: $aa
	add  hl, bc                                      ; $5b3a: $09
	ld   d, a                                        ; $5b3b: $57
	ld   d, h                                        ; $5b3c: $54
	cp   h                                           ; $5b3d: $bc
	and  b                                           ; $5b3e: $a0
	rst  $20                                         ; $5b3f: $e7
	nop                                              ; $5b40: $00
	ccf                                              ; $5b41: $3f
	rlca                                             ; $5b42: $07
	rst  $38                                         ; $5b43: $ff
	ccf                                              ; $5b44: $3f
	add  b                                           ; $5b45: $80
	rst  $38                                         ; $5b46: $ff
	rlca                                             ; $5b47: $07
	ld   e, a                                        ; $5b48: $5f
	ld   d, b                                        ; $5b49: $50
	ldh  a, [$80]                                    ; $5b4a: $f0 $80
	sub  b                                           ; $5b4c: $90
	nop                                              ; $5b4d: $00
	ldh  a, [rAUD1SWEEP]                             ; $5b4e: $f0 $10
	add  h                                           ; $5b50: $84
	ldh  a, [$80]                                    ; $5b51: $f0 $80
	add  b                                           ; $5b53: $80
	ld   bc, $0a05                                   ; $5b54: $01 $05 $0a
	add  b                                           ; $5b57: $80
	ld   l, $80                                      ; $5b58: $2e $80
	ld   l, [hl]                                     ; $5b5a: $6e
	add  b                                           ; $5b5b: $80
	jr   nc, jr_07d_5ae0                             ; $5b5c: $30 $82

	cp   e                                           ; $5b5e: $bb
	add  b                                           ; $5b5f: $80
	adc  b                                           ; $5b60: $88
	add  b                                           ; $5b61: $80
	cp   $00                                         ; $5b62: $fe $00
	rst  $28                                         ; $5b64: $ef
	add  b                                           ; $5b65: $80
	xor  $03                                         ; $5b66: $ee $03
	db   $ec                                         ; $5b68: $ec
	add  h                                           ; $5b69: $84
	add  a                                           ; $5b6a: $87
	cp   a                                           ; $5b6b: $bf
	add  b                                           ; $5b6c: $80
	cp   h                                           ; $5b6d: $bc
	add  c                                           ; $5b6e: $81
	and  h                                           ; $5b6f: $a4
	ld   [bc], a                                     ; $5b70: $02
	inc  h                                           ; $5b71: $24
	ccf                                              ; $5b72: $3f
	rst  $38                                         ; $5b73: $ff
	add  b                                           ; $5b74: $80
	sub  b                                           ; $5b75: $90
	add  b                                           ; $5b76: $80
	add  d                                           ; $5b77: $82
	add  b                                           ; $5b78: $80
	sbc  a                                           ; $5b79: $9f
	add  b                                           ; $5b7a: $80
	ret  nc                                          ; $5b7b: $d0

	add  d                                           ; $5b7c: $82
	db   $10                                         ; $5b7d: $10
	add  b                                           ; $5b7e: $80
	rra                                              ; $5b7f: $1f
	add  b                                           ; $5b80: $80
	ldh  [c], a                                      ; $5b81: $e2
	add  b                                           ; $5b82: $80
	add  d                                           ; $5b83: $82
	add  b                                           ; $5b84: $80
	db   $10                                         ; $5b85: $10
	add  [hl]                                        ; $5b86: $86
	ld   b, b                                        ; $5b87: $40
	add  b                                           ; $5b88: $80
	ldh  a, [$81]                                    ; $5b89: $f0 $81
	nop                                              ; $5b8b: $00
	add  l                                           ; $5b8c: $85
	rst  $38                                         ; $5b8d: $ff
	inc  b                                           ; $5b8e: $04
	ld   a, a                                        ; $5b8f: $7f

jr_07d_5b90:
	scf                                              ; $5b90: $37
	ld   c, a                                        ; $5b91: $4f

jr_07d_5b92:
	ld   c, b                                        ; $5b92: $48
	ld   c, a                                        ; $5b93: $4f
	add  d                                           ; $5b94: $82
	sbc  $03                                         ; $5b95: $de $03
	inc  e                                           ; $5b97: $1c
	call c, $fec1                                    ; $5b98: $dc $c1 $fe
	add  h                                           ; $5b9b: $84
	rst  $38                                         ; $5b9c: $ff
	ld   bc, $ff00                                   ; $5b9d: $01 $00 $ff
	add  b                                           ; $5ba0: $80
	and  $80                                         ; $5ba1: $e6 $80
	or   $06                                         ; $5ba3: $f6 $06
	sbc  a                                           ; $5ba5: $9f
	ld   [hl], b                                     ; $5ba6: $70
	sbc  h                                           ; $5ba7: $9c
	ld   [hl], b                                     ; $5ba8: $70
	rlca                                             ; $5ba9: $07
	ld   hl, sp-$04                                  ; $5baa: $f8 $fc
	add  c                                           ; $5bac: $81
	rst  $38                                         ; $5bad: $ff
	ld   bc, $ff00                                   ; $5bae: $01 $00 $ff
	add  b                                           ; $5bb1: $80
	db   $eb                                         ; $5bb2: $eb
	add  b                                           ; $5bb3: $80
	ld   l, e                                        ; $5bb4: $6b
	nop                                              ; $5bb5: $00
	rst  $38                                         ; $5bb6: $ff
	add  c                                           ; $5bb7: $81
	nop                                              ; $5bb8: $00
	inc  b                                           ; $5bb9: $04
	ldh  [rP1], a                                    ; $5bba: $e0 $00
	ld   [hl], b                                     ; $5bbc: $70
	add  b                                           ; $5bbd: $80
	ldh  a, [$80]                                    ; $5bbe: $f0 $80
	ldh  [$80], a                                    ; $5bc0: $e0 $80
	ld   h, b                                        ; $5bc2: $60
	add  c                                           ; $5bc3: $81
	ld   b, b                                        ; $5bc4: $40
	inc  b                                           ; $5bc5: $04

jr_07d_5bc6:
	and  [hl]                                        ; $5bc6: $a6
	nop                                              ; $5bc7: $00
	rlca                                             ; $5bc8: $07
	nop                                              ; $5bc9: $00
	ld   bc, $0083                                   ; $5bca: $01 $83 $00
	ld   [bc], a                                     ; $5bcd: $02
	rst  $38                                         ; $5bce: $ff
	nop                                              ; $5bcf: $00
	rst  $38                                         ; $5bd0: $ff
	add  e                                           ; $5bd1: $83
	nop                                              ; $5bd2: $00
	ld   a, [bc]                                     ; $5bd3: $0a
	add  b                                           ; $5bd4: $80
	nop                                              ; $5bd5: $00
	ldh  [rP1], a                                    ; $5bd6: $e0 $00
	ld   a, b                                        ; $5bd8: $78
	nop                                              ; $5bd9: $00
	ld   e, $00                                      ; $5bda: $1e $00
	ld   sp, hl                                      ; $5bdc: $f9
	nop                                              ; $5bdd: $00
	rst  $38                                         ; $5bde: $ff
	add  c                                           ; $5bdf: $81
	nop                                              ; $5be0: $00
	ld   [bc], a                                     ; $5be1: $02
	inc  bc                                          ; $5be2: $03
	nop                                              ; $5be3: $00
	inc  bc                                          ; $5be4: $03
	add  l                                           ; $5be5: $85
	nop                                              ; $5be6: $00
	inc  c                                           ; $5be7: $0c
	rst  $38                                         ; $5be8: $ff
	nop                                              ; $5be9: $00
	sbc  a                                           ; $5bea: $9f
	nop                                              ; $5beb: $00
	ld   a, b                                        ; $5bec: $78
	nop                                              ; $5bed: $00
	jr   jr_07d_5b90                                 ; $5bee: $18 $a0

	ld   b, b                                        ; $5bf0: $40
	db   $10                                         ; $5bf1: $10
	ldh  [hScriptOpcodeParams], a                                    ; $5bf2: $e0 $a0
	or   b                                           ; $5bf4: $b0
	add  b                                           ; $5bf5: $80
	ld   d, b                                        ; $5bf6: $50
	inc  bc                                          ; $5bf7: $03
	and  b                                           ; $5bf8: $a0
	ld   d, b                                        ; $5bf9: $50
	nop                                              ; $5bfa: $00
	ldh  a, [$80]                                    ; $5bfb: $f0 $80
	and  b                                           ; $5bfd: $a0
	ld   [$a050], sp                                 ; $5bfe: $08 $50 $a0
	nop                                              ; $5c01: $00
	ccf                                              ; $5c02: $3f
	nop                                              ; $5c03: $00
	scf                                              ; $5c04: $37
	rlca                                             ; $5c05: $07
	rst  $38                                         ; $5c06: $ff
	ccf                                              ; $5c07: $3f
	add  b                                           ; $5c08: $80
	jr   c, jr_07d_5c0e                              ; $5c09: $38 $03

	ld   b, e                                        ; $5c0b: $43
	inc  bc                                          ; $5c0c: $03
	sbc  e                                           ; $5c0d: $9b

jr_07d_5c0e:
	dec  de                                          ; $5c0e: $1b
	add  b                                           ; $5c0f: $80
	jr   c, jr_07d_5b92                              ; $5c10: $38 $80

	rra                                              ; $5c12: $1f
	add  b                                           ; $5c13: $80
	rst  $38                                         ; $5c14: $ff
	add  b                                           ; $5c15: $80
	ld   hl, sp-$80                                  ; $5c16: $f8 $80
	add  e                                           ; $5c18: $83
	add  b                                           ; $5c19: $80
	dec  sp                                          ; $5c1a: $3b
	add  b                                           ; $5c1b: $80
	cp   e                                           ; $5c1c: $bb
	add  b                                           ; $5c1d: $80
	or   b                                           ; $5c1e: $b0
	inc  bc                                          ; $5c1f: $03
	adc  a                                           ; $5c20: $8f
	adc  [hl]                                        ; $5c21: $8e
	ld   sp, hl                                      ; $5c22: $f9
	ld   hl, sp-$80                                  ; $5c23: $f8 $80
	add  a                                           ; $5c25: $87
	add  hl, bc                                      ; $5c26: $09
	ld   l, a                                        ; $5c27: $6f
	ld   l, h                                        ; $5c28: $6c
	db   $ec                                         ; $5c29: $ec
	ldh  [$f0], a                                    ; $5c2a: $e0 $f0
	pop  af                                          ; $5c2c: $f1
	or   c                                           ; $5c2d: $b1
	cp   d                                           ; $5c2e: $ba
	ld   a, d                                        ; $5c2f: $7a
	ld   [bc], a                                     ; $5c30: $02
	add  b                                           ; $5c31: $80
	add  d                                           ; $5c32: $82
	ld   [bc], a                                     ; $5c33: $02
	ld   [bc], a                                     ; $5c34: $02
	ld   h, b                                        ; $5c35: $60
	ldh  [$80], a                                    ; $5c36: $e0 $80
	ret  nz                                          ; $5c38: $c0

	add  d                                           ; $5c39: $82
	ld   b, b                                        ; $5c3a: $40
	add  b                                           ; $5c3b: $80
	ldh  [$83], a                                    ; $5c3c: $e0 $83
	nop                                              ; $5c3e: $00
	ld   bc, $ee11                                   ; $5c3f: $01 $11 $ee
	add  b                                           ; $5c42: $80
	jr   nz, jr_07d_5bc6                             ; $5c43: $20 $81

	cp   e                                           ; $5c45: $bb
	nop                                              ; $5c46: $00
	cp   d                                           ; $5c47: $ba
	add  b                                           ; $5c48: $80
	ld   [de], a                                     ; $5c49: $12
	ld   [bc], a                                     ; $5c4a: $02
	ld   hl, sp-$07                                  ; $5c4b: $f8 $f9
	rst  $38                                         ; $5c4d: $ff
	add  b                                           ; $5c4e: $80
	cp   $80                                         ; $5c4f: $fe $80
	rst  $38                                         ; $5c51: $ff
	add  b                                           ; $5c52: $80
	sub  b                                           ; $5c53: $90
	add  b                                           ; $5c54: $80
	ldh  a, [$80]                                    ; $5c55: $f0 $80
	ld   b, a                                        ; $5c57: $47
	add  b                                           ; $5c58: $80
	ld   b, h                                        ; $5c59: $44
	add  b                                           ; $5c5a: $80
	inc  b                                           ; $5c5b: $04
	dec  b                                           ; $5c5c: $05
	rst  $38                                         ; $5c5d: $ff
	rst  $20                                         ; $5c5e: $e7
	jr   jr_07d_5c7d                                 ; $5c5f: $18 $1c

	db   $fc                                         ; $5c61: $fc
	ldh  [$82], a                                    ; $5c62: $e0 $82
	add  d                                           ; $5c64: $82
	add  b                                           ; $5c65: $80
	ei                                               ; $5c66: $fb
	add  h                                           ; $5c67: $84
	db   $10                                         ; $5c68: $10
	ld   [bc], a                                     ; $5c69: $02
	ccf                                              ; $5c6a: $3f
	ld   c, a                                        ; $5c6b: $4f
	ld   [hl], b                                     ; $5c6c: $70
	add  e                                           ; $5c6d: $83
	nop                                              ; $5c6e: $00
	add  b                                           ; $5c6f: $80
	ret  nz                                          ; $5c70: $c0

	add  h                                           ; $5c71: $84
	ld   b, b                                        ; $5c72: $40
	add  b                                           ; $5c73: $80
	ldh  [rSC], a                                    ; $5c74: $e0 $02
	jr   nc, jr_07d_5ca9                             ; $5c76: $30 $31

	cp   $80                                         ; $5c78: $fe $80
	ld   a, $82                                      ; $5c7a: $3e $82
	nop                                              ; $5c7c: $00

jr_07d_5c7d:
	ld   [$00c0], sp                                 ; $5c7d: $08 $c0 $00
	ret  nz                                          ; $5c80: $c0

	nop                                              ; $5c81: $00
	sbc  h                                           ; $5c82: $9c
	nop                                              ; $5c83: $00
	ld   a, e                                        ; $5c84: $7b
	nop                                              ; $5c85: $00
	ld   d, c                                        ; $5c86: $51
	add  c                                           ; $5c87: $81
	or   [hl]                                        ; $5c88: $b6
	adc  d                                           ; $5c89: $8a
	nop                                              ; $5c8a: $00
	add  d                                           ; $5c8b: $82
	ld   l, d                                        ; $5c8c: $6a
	adc  d                                           ; $5c8d: $8a
	nop                                              ; $5c8e: $00
	nop                                              ; $5c8f: $00
	rrca                                             ; $5c90: $0f
	add  d                                           ; $5c91: $82
	ld   b, b                                        ; $5c92: $40
	adc  c                                           ; $5c93: $89
	nop                                              ; $5c94: $00
	inc  b                                           ; $5c95: $04
	ld   [hl], b                                     ; $5c96: $70
	nop                                              ; $5c97: $00
	ld   h, b                                        ; $5c98: $60
	nop                                              ; $5c99: $00
	rra                                              ; $5c9a: $1f
	adc  c                                           ; $5c9b: $89
	nop                                              ; $5c9c: $00
	ld   de, $43a3                                   ; $5c9d: $11 $a3 $43
	ld   h, b                                        ; $5ca0: $60
	ld   b, b                                        ; $5ca1: $40
	push bc                                          ; $5ca2: $c5
	pop  bc                                          ; $5ca3: $c1
	ld   e, c                                        ; $5ca4: $59
	ld   b, c                                        ; $5ca5: $41
	ld   h, d                                        ; $5ca6: $62
	ld   d, h                                        ; $5ca7: $54
	ld   [hl], a                                     ; $5ca8: $77

jr_07d_5ca9:
	ld   b, c                                        ; $5ca9: $41
	push de                                          ; $5caa: $d5
	pop  hl                                          ; $5cab: $e1
	ld   b, l                                        ; $5cac: $45
	ld   hl, $f77b                                   ; $5cad: $21 $7b $f7
	add  b                                           ; $5cb0: $80
	cp   $80                                         ; $5cb1: $fe $80
	db   $fc                                         ; $5cb3: $fc
	add  b                                           ; $5cb4: $80
	ld   sp, hl                                      ; $5cb5: $f9
	add  b                                           ; $5cb6: $80
	ld   a, [$fc80]                                  ; $5cb7: $fa $80 $fc
	add  b                                           ; $5cba: $80
	ld   hl, sp+$04                                  ; $5cbb: $f8 $04
	cp   $f8                                         ; $5cbd: $fe $f8
	add  hl, sp                                      ; $5cbf: $39
	ld   sp, $80f1                                   ; $5cc0: $31 $f1 $80
	dec  sp                                          ; $5cc3: $3b
	inc  c                                           ; $5cc4: $0c
	add  hl, hl                                      ; $5cc5: $29
	xor  c                                           ; $5cc6: $a9
	ld   h, e                                        ; $5cc7: $63
	ld   b, e                                        ; $5cc8: $43
	ld   b, c                                        ; $5cc9: $41
	ld   bc, $8303                                   ; $5cca: $01 $03 $83
	ld   bc, $0321                                   ; $5ccd: $01 $21 $03
	add  d                                           ; $5cd0: $82
	ld   a, $80                                      ; $5cd1: $3e $80

jr_07d_5cd3:
	inc  e                                           ; $5cd3: $1c
	add  b                                           ; $5cd4: $80
	dec  e                                           ; $5cd5: $1d
	add  b                                           ; $5cd6: $80
	cp   c                                           ; $5cd7: $b9
	add  b                                           ; $5cd8: $80
	dec  d                                           ; $5cd9: $15
	add  d                                           ; $5cda: $82
	db   $fd                                         ; $5cdb: $fd
	rlca                                             ; $5cdc: $07
	ldh  a, [$f2]                                    ; $5cdd: $f0 $f2
	ld   h, e                                        ; $5cdf: $63
	ld   a, l                                        ; $5ce0: $7d
	pop  af                                          ; $5ce1: $f1
	pop  hl                                          ; $5ce2: $e1
	rst  $38                                         ; $5ce3: $ff
	di                                               ; $5ce4: $f3
	add  b                                           ; $5ce5: $80
	cp   e                                           ; $5ce6: $bb
	add  b                                           ; $5ce7: $80
	sbc  a                                           ; $5ce8: $9f
	add  b                                           ; $5ce9: $80
	sbc  e                                           ; $5cea: $9b
	ld   bc, $c1ff                                   ; $5ceb: $01 $ff $c1
	add  b                                           ; $5cee: $80
	ret  nz                                          ; $5cef: $c0

	nop                                              ; $5cf0: $00
	pop  bc                                          ; $5cf1: $c1
	add  b                                           ; $5cf2: $80
	adc  e                                           ; $5cf3: $8b
	ld   bc, $45c5                                   ; $5cf4: $01 $c5 $45
	add  b                                           ; $5cf7: $80
	ld   c, e                                        ; $5cf8: $4b
	add  b                                           ; $5cf9: $80
	ld   b, l                                        ; $5cfa: $45
	ld   bc, $0b4b                                   ; $5cfb: $01 $4b $0b
	add  b                                           ; $5cfe: $80
	dec  b                                           ; $5cff: $05
	add  b                                           ; $5d00: $80
	dec  bc                                          ; $5d01: $0b
	ld   [bc], a                                     ; $5d02: $02
	dec  b                                           ; $5d03: $05
	jp   nz, $80f8                                   ; $5d04: $c2 $f8 $80

	ld   sp, hl                                      ; $5d07: $f9
	add  b                                           ; $5d08: $80
	ei                                               ; $5d09: $fb
	ld   bc, $fefa                                   ; $5d0a: $01 $fa $fe
	add  b                                           ; $5d0d: $80
	rst  $38                                         ; $5d0e: $ff
	add  c                                           ; $5d0f: $81
	db   $fd                                         ; $5d10: $fd
	nop                                              ; $5d11: $00
	ld   sp, hl                                      ; $5d12: $f9
	add  b                                           ; $5d13: $80
	ldh  a, [rTAC]                                   ; $5d14: $f0 $07
	rra                                              ; $5d16: $1f
	add  c                                           ; $5d17: $81
	ld   [hl], d                                     ; $5d18: $72
	ld   l, h                                        ; $5d19: $6c
	ld   l, [hl]                                     ; $5d1a: $6e
	xor  $ec                                         ; $5d1b: $ee $ec
	inc  l                                           ; $5d1d: $2c
	add  b                                           ; $5d1e: $80
	ld   l, $80                                      ; $5d1f: $2e $80
	inc  l                                           ; $5d21: $2c
	inc  b                                           ; $5d22: $04
	sbc  [hl]                                        ; $5d23: $9e
	ld   c, [hl]                                     ; $5d24: $4e
	adc  h                                           ; $5d25: $8c
	sbc  h                                           ; $5d26: $9c
	nop                                              ; $5d27: $00
	add  b                                           ; $5d28: $80
	ld   a, [hl]                                     ; $5d29: $7e
	add  e                                           ; $5d2a: $83
	rst  $38                                         ; $5d2b: $ff
	nop                                              ; $5d2c: $00
	cp   $80                                         ; $5d2d: $fe $80
	ld   bc, $f105                                   ; $5d2f: $01 $05 $f1
	adc  c                                           ; $5d32: $89
	ld   sp, hl                                      ; $5d33: $f9
	ld   a, b                                        ; $5d34: $78
	ld   hl, sp+$3e                                  ; $5d35: $f8 $3e
	add  c                                           ; $5d37: $81
	nop                                              ; $5d38: $00
	add  d                                           ; $5d39: $82
	ld   b, b                                        ; $5d3a: $40
	ld   bc, $c0fe                                   ; $5d3b: $01 $fe $c0
	add  b                                           ; $5d3e: $80
	ld   hl, sp-$80                                  ; $5d3f: $f8 $80
	ldh  a, [$80]                                    ; $5d41: $f0 $80
	and  $01                                         ; $5d43: $e6 $01
	sub  b                                           ; $5d45: $90
	db   $10                                         ; $5d46: $10
	add  b                                           ; $5d47: $80
	jr   z, jr_07d_5d4b                              ; $5d48: $28 $01

	db   $10                                         ; $5d4a: $10

jr_07d_5d4b:
	sub  b                                           ; $5d4b: $90
	add  b                                           ; $5d4c: $80
	xor  b                                           ; $5d4d: $a8
	add  b                                           ; $5d4e: $80
	sub  b                                           ; $5d4f: $90
	add  b                                           ; $5d50: $80

Call_07d_5d51:
	jr   z, jr_07d_5cd3                              ; $5d51: $28 $80

	ld   d, b                                        ; $5d53: $50
	add  b                                           ; $5d54: $80
	ld   l, b                                        ; $5d55: $68
	nop                                              ; $5d56: $00
	ld   bc, $0582                                   ; $5d57: $01 $82 $05
	add  e                                           ; $5d5a: $83
	ld   bc, $0480                                   ; $5d5b: $01 $80 $04
	add  b                                           ; $5d5e: $80
	nop                                              ; $5d5f: $00
	dec  b                                           ; $5d60: $05
	inc  hl                                          ; $5d61: $23
	rra                                              ; $5d62: $1f
	cp   h                                           ; $5d63: $bc
	add  c                                           ; $5d64: $81
	ld   b, c                                        ; $5d65: $41
	ld   b, e                                        ; $5d66: $43
	add  d                                           ; $5d67: $82
	ld   e, e                                        ; $5d68: $5b
	add  hl, bc                                      ; $5d69: $09
	ld   b, e                                        ; $5d6a: $43
	ld   b, d                                        ; $5d6b: $42
	ld   a, [de]                                     ; $5d6c: $1a
	rra                                              ; $5d6d: $1f
	rlca                                             ; $5d6e: $07
	rrca                                             ; $5d6f: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d70: $cf
	rst  $38                                         ; $5d71: $ff
	db   $f4                                         ; $5d72: $f4
	res  0, b                                        ; $5d73: $cb $80
	jp   c, $bb80                                    ; $5d75: $da $80 $bb

	add  b                                           ; $5d78: $80
	cp   d                                           ; $5d79: $ba
	add  b                                           ; $5d7a: $80
	ld   a, e                                        ; $5d7b: $7b
	add  b                                           ; $5d7c: $80
	ld   a, d                                        ; $5d7d: $7a
	add  b                                           ; $5d7e: $80
	ld   [hl], e                                     ; $5d7f: $73
	add  b                                           ; $5d80: $80
	ld   l, d                                        ; $5d81: $6a
	ld   de, $0050                                   ; $5d82: $11 $50 $00
	jr   c, jr_07d_5d87                              ; $5d85: $38 $00

jr_07d_5d87:
	jr   c, jr_07d_5d89                              ; $5d87: $38 $00

jr_07d_5d89:
	jr   c, jr_07d_5d8b                              ; $5d89: $38 $00

jr_07d_5d8b:
	jr   c, jr_07d_5d8d                              ; $5d8b: $38 $00

jr_07d_5d8d:
	ld   a, b                                        ; $5d8d: $78
	nop                                              ; $5d8e: $00
	jr   z, jr_07d_5d91                              ; $5d8f: $28 $00

jr_07d_5d91:
	ld   l, [hl]                                     ; $5d91: $6e
	nop                                              ; $5d92: $00
	ld   a, $50                                      ; $5d93: $3e $50
	add  b                                           ; $5d95: $80
	ld   [hl+], a                                    ; $5d96: $22
	add  b                                           ; $5d97: $80
	ld   d, b                                        ; $5d98: $50
	add  b                                           ; $5d99: $80
	ld   [hl+], a                                    ; $5d9a: $22
	add  b                                           ; $5d9b: $80
	ld   d, b                                        ; $5d9c: $50
	add  b                                           ; $5d9d: $80
	jr   nz, @-$7e                                   ; $5d9e: $20 $80

	ld   d, b                                        ; $5da0: $50
	add  b                                           ; $5da1: $80
	and  b                                           ; $5da2: $a0
	inc  c                                           ; $5da3: $0c
	ld   e, [hl]                                     ; $5da4: $5e
	nop                                              ; $5da5: $00
	add  b                                           ; $5da6: $80
	nop                                              ; $5da7: $00
	add  b                                           ; $5da8: $80
	nop                                              ; $5da9: $00
	sbc  $00                                         ; $5daa: $de $00
	ld   a, a                                        ; $5dac: $7f
	ld   bc, $03fd                                   ; $5dad: $01 $fd $03
	rst  $38                                         ; $5db0: $ff
	add  c                                           ; $5db1: $81
	inc  bc                                          ; $5db2: $03
	ld   [$007c], sp                                 ; $5db3: $08 $7c $00
	inc  b                                           ; $5db6: $04
	nop                                              ; $5db7: $00
	ld   l, [hl]                                     ; $5db8: $6e
	nop                                              ; $5db9: $00
	rra                                              ; $5dba: $1f
	nop                                              ; $5dbb: $00
	ld   a, [bc]                                     ; $5dbc: $0a
	add  c                                           ; $5dbd: $81
	nop                                              ; $5dbe: $00
	inc  d                                           ; $5dbf: $14
	rst  $38                                         ; $5dc0: $ff
	nop                                              ; $5dc1: $00
	rst  $38                                         ; $5dc2: $ff
	nop                                              ; $5dc3: $00
	ret  nz                                          ; $5dc4: $c0

	inc  bc                                          ; $5dc5: $03
	dec  hl                                          ; $5dc6: $2b
	rlca                                             ; $5dc7: $07
	cp   a                                           ; $5dc8: $bf
	rlca                                             ; $5dc9: $07
	or   $06                                         ; $5dca: $f6 $06
	xor  a                                           ; $5dcc: $af
	inc  b                                           ; $5dcd: $04
	inc  e                                           ; $5dce: $1c
	nop                                              ; $5dcf: $00
	rst  $28                                         ; $5dd0: $ef
	nop                                              ; $5dd1: $00
	cp   a                                           ; $5dd2: $bf
	nop                                              ; $5dd3: $00
	ld   b, b                                        ; $5dd4: $40
	rst  $38                                         ; $5dd5: $ff
	nop                                              ; $5dd6: $00
	rst  $38                                         ; $5dd7: $ff
	nop                                              ; $5dd8: $00
	rst  $38                                         ; $5dd9: $ff
	nop                                              ; $5dda: $00
	rst  $38                                         ; $5ddb: $ff
	nop                                              ; $5ddc: $00
	rst  $38                                         ; $5ddd: $ff
	nop                                              ; $5dde: $00
	ld   hl, sp+$00                                  ; $5ddf: $f8 $00
	ld   e, $01                                      ; $5de1: $1e $01
	sbc  b                                           ; $5de3: $98
	nop                                              ; $5de4: $00
	add  b                                           ; $5de5: $80
	db   $10                                         ; $5de6: $10
	add  b                                           ; $5de7: $80
	dec  b                                           ; $5de8: $05
	add  b                                           ; $5de9: $80
	ld   [bc], a                                     ; $5dea: $02
	sbc  [hl]                                        ; $5deb: $9e
	nop                                              ; $5dec: $00
	ld   de, $0f06                                   ; $5ded: $11 $06 $0f
	add  hl, bc                                      ; $5df0: $09
	rrca                                             ; $5df1: $0f
	dec  c                                           ; $5df2: $0d
	rrca                                             ; $5df3: $0f
	ld   bc, $050f                                   ; $5df4: $01 $0f $05
	rrca                                             ; $5df7: $0f
	ld   [$0e0f], sp                                 ; $5df8: $08 $0f $0e
	rrca                                             ; $5dfb: $0f
	ld   b, $0f                                      ; $5dfc: $06 $0f
	ld   a, c                                        ; $5dfe: $79
	add  b                                           ; $5dff: $80
	add  b                                           ; $5e00: $80
	ldh  [$2d], a                                    ; $5e01: $e0 $2d
	ld   a, a                                        ; $5e03: $7f
	rst  $38                                         ; $5e04: $ff
	ld   a, [hl]                                     ; $5e05: $7e
	rst  $38                                         ; $5e06: $ff
	ldh  a, [rIE]                                    ; $5e07: $f0 $ff
	jp   nz, $0cff                                   ; $5e09: $c2 $ff $0c

	rst  $38                                         ; $5e0c: $ff
	ld   a, $ff                                      ; $5e0d: $3e $ff
	ld   a, [hl]                                     ; $5e0f: $7e
	ld   a, a                                        ; $5e10: $7f
	ld   hl, $917f                                   ; $5e11: $21 $7f $91
	rst  $38                                         ; $5e14: $ff
	jr   nc, @+$01                                   ; $5e15: $30 $ff

	nop                                              ; $5e17: $00
	rst  $38                                         ; $5e18: $ff
	ldh  a, [rIE]                                    ; $5e19: $f0 $ff
	inc  b                                           ; $5e1b: $04
	rst  $38                                         ; $5e1c: $ff
	adc  c                                           ; $5e1d: $89
	rst  $38                                         ; $5e1e: $ff
	ld   [hl], l                                     ; $5e1f: $75
	rst  $38                                         ; $5e20: $ff
	ccf                                              ; $5e21: $3f
	db   $fc                                         ; $5e22: $fc
	inc  c                                           ; $5e23: $0c
	ld   hl, sp+$00                                  ; $5e24: $f8 $00
	ldh  a, [$30]                                    ; $5e26: $f0 $30
	ldh  [rAUD4LEN], a                               ; $5e28: $e0 $20
	ret  nz                                          ; $5e2a: $c0

	rlca                                             ; $5e2b: $07
	add  b                                           ; $5e2c: $80
	sbc  a                                           ; $5e2d: $9f
	nop                                              ; $5e2e: $00
	ld   [de], a                                     ; $5e2f: $12
	ld   a, [bc]                                     ; $5e30: $0a
	add  b                                           ; $5e31: $80
	rla                                              ; $5e32: $17
	dec  e                                           ; $5e33: $1d
	ld   c, $0f                                      ; $5e34: $0e $0f
	dec  e                                           ; $5e36: $1d
	ld   a, [de]                                     ; $5e37: $1a
	ccf                                              ; $5e38: $3f
	ld   hl, $07fe                                   ; $5e39: $21 $fe $07
	db   $fd                                         ; $5e3c: $fd
	rra                                              ; $5e3d: $1f
	ld   sp, hl                                      ; $5e3e: $f9
	rst  $38                                         ; $5e3f: $ff
	add  l                                           ; $5e40: $85
	ret  nc                                          ; $5e41: $d0

	dec  c                                           ; $5e42: $0d
	db   $fd                                         ; $5e43: $fd
	cp   d                                           ; $5e44: $ba
	ld   a, d                                        ; $5e45: $7a
	ld   a, l                                        ; $5e46: $7d
	db   $fd                                         ; $5e47: $fd
	xor  $fe                                         ; $5e48: $ee $fe
	rst  $28                                         ; $5e4a: $ef
	rst  $38                                         ; $5e4b: $ff
	rst  $28                                         ; $5e4c: $ef
	rst  $38                                         ; $5e4d: $ff
	rst  $20                                         ; $5e4e: $e7
	rst  $38                                         ; $5e4f: $ff
	rst  $10                                         ; $5e50: $d7
	ld   b, b                                        ; $5e51: $40
	add  d                                           ; $5e52: $82
	nop                                              ; $5e53: $00
	add  b                                           ; $5e54: $80
	ld   b, b                                        ; $5e55: $40
	add  hl, bc                                      ; $5e56: $09
	add  b                                           ; $5e57: $80

jr_07d_5e58:
	ret  nz                                          ; $5e58: $c0

	ld   b, b                                        ; $5e59: $40
	ld   h, b                                        ; $5e5a: $60
	and  b                                           ; $5e5b: $a0
	or   b                                           ; $5e5c: $b0
	db   $10                                         ; $5e5d: $10
	jr   jr_07d_5e58                                 ; $5e5e: $18 $f8

	nop                                              ; $5e60: $00
	add  b                                           ; $5e61: $80
	ld   [bc], a                                     ; $5e62: $02
	add  b                                           ; $5e63: $80
	dec  b                                           ; $5e64: $05
	add  b                                           ; $5e65: $80
	ld   l, $80                                      ; $5e66: $2e $80
	ld   d, h                                        ; $5e68: $54
	add  b                                           ; $5e69: $80
	ld   a, [$5080]                                  ; $5e6a: $fa $80 $50
	add  b                                           ; $5e6d: $80
	and  b                                           ; $5e6e: $a0
	add  b                                           ; $5e6f: $80
	ld   d, h                                        ; $5e70: $54
	add  b                                           ; $5e71: $80
	ld   hl, sp-$80                                  ; $5e72: $f8 $80
	ld   d, c                                        ; $5e74: $51
	inc  sp                                          ; $5e75: $33
	adc  c                                           ; $5e76: $89
	adc  e                                           ; $5e77: $8b
	ld   d, c                                        ; $5e78: $51
	ld   d, a                                        ; $5e79: $57
	inc  bc                                          ; $5e7a: $03
	cpl                                              ; $5e7b: $2f
	ld   [de], a                                     ; $5e7c: $12
	ld   a, d                                        ; $5e7d: $7a
	pop  de                                          ; $5e7e: $d1
	or   c                                           ; $5e7f: $b1
	dec  [hl]                                        ; $5e80: $35
	dec  d                                           ; $5e81: $15
	or   a                                           ; $5e82: $b7
	cp   a                                           ; $5e83: $bf
	ld   h, $6f                                      ; $5e84: $26 $6f
	ld   e, $df                                      ; $5e86: $1e $df
	ld   a, [hl-]                                    ; $5e88: $3a
	cp   a                                           ; $5e89: $bf
	ld   [hl], b                                     ; $5e8a: $70
	ld   a, a                                        ; $5e8b: $7f
	push af                                          ; $5e8c: $f5
	rst  $38                                         ; $5e8d: $ff
	ld   d, a                                        ; $5e8e: $57
	ld   a, a                                        ; $5e8f: $7f
	jp   nc, $d2ff                                   ; $5e90: $d2 $ff $d2

	rst  $38                                         ; $5e93: $ff
	sub  [hl]                                        ; $5e94: $96
	rst  $38                                         ; $5e95: $ff
	ld   a, $ff                                      ; $5e96: $3e $ff
	ld   l, d                                        ; $5e98: $6a
	rst  $38                                         ; $5e99: $ff
	push bc                                          ; $5e9a: $c5
	rst  $38                                         ; $5e9b: $ff
	xor  a                                           ; $5e9c: $af
	rst  $38                                         ; $5e9d: $ff
	cp   l                                           ; $5e9e: $bd
	db   $fd                                         ; $5e9f: $fd
	ret  nz                                          ; $5ea0: $c0

	rst  $38                                         ; $5ea1: $ff
	push de                                          ; $5ea2: $d5
	rst  $38                                         ; $5ea3: $ff
	jp   nz, Jump_07d_57ff                           ; $5ea4: $c2 $ff $57

	rst  $38                                         ; $5ea7: $ff
	cp   a                                           ; $5ea8: $bf
	rst  $38                                         ; $5ea9: $ff
	add  b                                           ; $5eaa: $80
	xor  $80                                         ; $5eab: $ee $80
	rst  $38                                         ; $5ead: $ff
	add  b                                           ; $5eae: $80
	ld   a, l                                        ; $5eaf: $7d
	add  b                                           ; $5eb0: $80
	ld   b, h                                        ; $5eb1: $44
	add  b                                           ; $5eb2: $80
	ld   a, [bc]                                     ; $5eb3: $0a
	add  b                                           ; $5eb4: $80
	add  l                                           ; $5eb5: $85
	add  b                                           ; $5eb6: $80
	dec  hl                                          ; $5eb7: $2b
	add  b                                           ; $5eb8: $80
	dec  e                                           ; $5eb9: $1d
	add  b                                           ; $5eba: $80
	ld   a, [bc]                                     ; $5ebb: $0a
	dec  b                                           ; $5ebc: $05
	inc  d                                           ; $5ebd: $14
	dec  d                                           ; $5ebe: $15
	ld   b, c                                        ; $5ebf: $41
	ld   b, d                                        ; $5ec0: $42
	rlca                                             ; $5ec1: $07
	dec  b                                           ; $5ec2: $05
	add  b                                           ; $5ec3: $80
	xor  a                                           ; $5ec4: $af
	add  b                                           ; $5ec5: $80
	ld   d, l                                        ; $5ec6: $55
	add  b                                           ; $5ec7: $80
	adc  [hl]                                        ; $5ec8: $8e
	add  b                                           ; $5ec9: $80
	ld   d, e                                        ; $5eca: $53
	add  b                                           ; $5ecb: $80
	dec  c                                           ; $5ecc: $0d
	add  b                                           ; $5ecd: $80
	sub  b                                           ; $5ece: $90
	add  b                                           ; $5ecf: $80
	ld   a, [hl+]                                    ; $5ed0: $2a
	add  b                                           ; $5ed1: $80
	nop                                              ; $5ed2: $00
	add  b                                           ; $5ed3: $80
	and  b                                           ; $5ed4: $a0
	add  b                                           ; $5ed5: $80
	nop                                              ; $5ed6: $00
	add  b                                           ; $5ed7: $80
	xor  b                                           ; $5ed8: $a8
	add  b                                           ; $5ed9: $80
	ld   b, b                                        ; $5eda: $40
	add  b                                           ; $5edb: $80
	xor  b                                           ; $5edc: $a8
	add  b                                           ; $5edd: $80
	ld   d, d                                        ; $5ede: $52
	add  b                                           ; $5edf: $80
	ldh  [$8e], a                                    ; $5ee0: $e0 $8e
	nop                                              ; $5ee2: $00
	inc  c                                           ; $5ee3: $0c
	ld   b, $0f                                      ; $5ee4: $06 $0f
	ld   [$060f], sp                                 ; $5ee6: $08 $0f $06
	rrca                                             ; $5ee9: $0f
	inc  bc                                          ; $5eea: $03
	rrca                                             ; $5eeb: $0f
	add  hl, bc                                      ; $5eec: $09
	rrca                                             ; $5eed: $0f
	ld   c, $0f                                      ; $5eee: $0e $0f
	dec  c                                           ; $5ef0: $0d
	add  c                                           ; $5ef1: $81
	rrca                                             ; $5ef2: $0f
	ld   a, [de]                                     ; $5ef3: $1a
	ld   [$f1ff], sp                                 ; $5ef4: $08 $ff $f1
	rst  $38                                         ; $5ef7: $ff
	ld   l, e                                        ; $5ef8: $6b
	rst  $38                                         ; $5ef9: $ff
	nop                                              ; $5efa: $00
	rst  $38                                         ; $5efb: $ff
	cp   l                                           ; $5efc: $bd
	rst  $38                                         ; $5efd: $ff
	db   $fc                                         ; $5efe: $fc
	rst  $38                                         ; $5eff: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f00: $cf
	rst  $38                                         ; $5f01: $ff
	ld   sp, hl                                      ; $5f02: $f9
	rst  $38                                         ; $5f03: $ff
	db   $ed                                         ; $5f04: $ed
	cp   $e0                                         ; $5f05: $fe $e0
	cp   $96                                         ; $5f07: $fe $96
	cp   $03                                         ; $5f09: $fe $03
	db   $fc                                         ; $5f0b: $fc
	ld   a, b                                        ; $5f0c: $78
	db   $fc                                         ; $5f0d: $fc
	rst  $20                                         ; $5f0e: $e7
	add  c                                           ; $5f0f: $81
	db   $fc                                         ; $5f10: $fc
	rlca                                             ; $5f11: $07
	jp   nz, $f3fc                                   ; $5f12: $c2 $fc $f3

	inc  de                                          ; $5f15: $13
	ld   [hl], c                                     ; $5f16: $71
	ld   bc, $0bcb                                   ; $5f17: $01 $cb $0b
	add  b                                           ; $5f1a: $80
	sub  l                                           ; $5f1b: $95
	ld   bc, $3bbb                                   ; $5f1c: $01 $bb $3b
	add  b                                           ; $5f1f: $80
	ld   e, a                                        ; $5f20: $5f
	add  b                                           ; $5f21: $80
	ld   a, [hl-]                                    ; $5f22: $3a

jr_07d_5f23:
	add  b                                           ; $5f23: $80
	ld   a, l                                        ; $5f24: $7d
	jr   nc, jr_07d_5f23                             ; $5f25: $30 $fc

	rst  $38                                         ; $5f27: $ff
	ei                                               ; $5f28: $fb
	rst  $38                                         ; $5f29: $ff
	ei                                               ; $5f2a: $fb
	rst  $38                                         ; $5f2b: $ff
	ei                                               ; $5f2c: $fb
	rst  $38                                         ; $5f2d: $ff
	ld   a, [$fcff]                                  ; $5f2e: $fa $ff $fc
	rst  $38                                         ; $5f31: $ff
	db   $fc                                         ; $5f32: $fc
	rst  $38                                         ; $5f33: $ff
	db   $fc                                         ; $5f34: $fc
	rst  $38                                         ; $5f35: $ff
	ld   a, [bc]                                     ; $5f36: $0a
	rst  $38                                         ; $5f37: $ff
	di                                               ; $5f38: $f3
	rst  $38                                         ; $5f39: $ff
	ei                                               ; $5f3a: $fb
	rst  $38                                         ; $5f3b: $ff
	ld   sp, hl                                      ; $5f3c: $f9
	rst  $38                                         ; $5f3d: $ff
	ld   hl, sp-$01                                  ; $5f3e: $f8 $ff
	db   $fc                                         ; $5f40: $fc
	rst  $38                                         ; $5f41: $ff
	cp   $ff                                         ; $5f42: $fe $ff
	ld   a, a                                        ; $5f44: $7f
	rst  $38                                         ; $5f45: $ff
	ldh  a, [c]                                      ; $5f46: $f2
	adc  [hl]                                        ; $5f47: $8e
	call nc, $ebd7                                   ; $5f48: $d4 $d7 $eb
	ld   [$f4f7], a                                  ; $5f4b: $ea $f7 $f4
	rst  $20                                         ; $5f4e: $e7
	ld   sp, hl                                      ; $5f4f: $f9
	ld   c, c                                        ; $5f50: $49
	ld   sp, hl                                      ; $5f51: $f9
	ld   b, $f3                                      ; $5f52: $06 $f3
	ld   d, b                                        ; $5f54: $50
	di                                               ; $5f55: $f3
	dec  b                                           ; $5f56: $05
	add  c                                           ; $5f57: $81
	nop                                              ; $5f58: $00
	dec  b                                           ; $5f59: $05
	add  b                                           ; $5f5a: $80
	ld   b, b                                        ; $5f5b: $40
	ret  nc                                          ; $5f5c: $d0

	add  sp, $57                                     ; $5f5d: $e8 $57
	ld   d, b                                        ; $5f5f: $50
	add  b                                           ; $5f60: $80
	xor  d                                           ; $5f61: $aa
	add  b                                           ; $5f62: $80
	db   $fd                                         ; $5f63: $fd
	add  hl, bc                                      ; $5f64: $09
	ld   e, [hl]                                     ; $5f65: $5e
	cp   $7d                                         ; $5f66: $fe $7d
	ld   h, d                                        ; $5f68: $62
	ld   de, $a3d1                                   ; $5f69: $11 $d1 $a3
	ld   h, e                                        ; $5f6c: $63
	sub  l                                           ; $5f6d: $95
	push de                                          ; $5f6e: $d5
	add  b                                           ; $5f6f: $80
	db   $e3                                         ; $5f70: $e3
	ld   [bc], a                                     ; $5f71: $02
	pop  af                                          ; $5f72: $f1
	ld   de, $801f                                   ; $5f73: $11 $1f $80
	ld   bc, $0022                                   ; $5f76: $01 $22 $00
	ld   d, c                                        ; $5f79: $51
	rst  $38                                         ; $5f7a: $ff
	sub  [hl]                                        ; $5f7b: $96
	rst  $38                                         ; $5f7c: $ff
	or   [hl]                                        ; $5f7d: $b6
	rst  $38                                         ; $5f7e: $ff
	inc  l                                           ; $5f7f: $2c
	rst  $38                                         ; $5f80: $ff
	inc  c                                           ; $5f81: $0c
	rst  $38                                         ; $5f82: $ff
	ld   b, l                                        ; $5f83: $45
	rst  $38                                         ; $5f84: $ff
	ld   h, l                                        ; $5f85: $65
	rst  $38                                         ; $5f86: $ff
	add  [hl]                                        ; $5f87: $86
	rrca                                             ; $5f88: $0f
	ld   a, l                                        ; $5f89: $7d
	ld   a, [$df5f]                                  ; $5f8a: $fa $5f $df

jr_07d_5f8d:
	ld   a, e                                        ; $5f8d: $7b
	ei                                               ; $5f8e: $fb
	ld   [hl], a                                     ; $5f8f: $77
	rst  $30                                         ; $5f90: $f7

jr_07d_5f91:
	ld   l, a                                        ; $5f91: $6f
	rst  $28                                         ; $5f92: $ef
	ld   [hl], l                                     ; $5f93: $75
	push af                                          ; $5f94: $f5

jr_07d_5f95:
	ld   l, b                                        ; $5f95: $68
	add  sp, $35                                     ; $5f96: $e8 $35
	push af                                          ; $5f98: $f5
	xor  d                                           ; $5f99: $aa
	ld   [$fd80], a                                  ; $5f9a: $ea $80 $fd
	add  b                                           ; $5f9d: $80
	ld   hl, sp-$80                                  ; $5f9e: $f8 $80
	db   $dd                                         ; $5fa0: $dd
	add  b                                           ; $5fa1: $80
	rst  $38                                         ; $5fa2: $ff
	add  b                                           ; $5fa3: $80
	cp   $80                                         ; $5fa4: $fe $80
	rst  $38                                         ; $5fa6: $ff
	add  b                                           ; $5fa7: $80
	ld   e, a                                        ; $5fa8: $5f
	nop                                              ; $5fa9: $00
	nop                                              ; $5faa: $00
	add  b                                           ; $5fab: $80
	dec  b                                           ; $5fac: $05
	add  b                                           ; $5fad: $80
	xor  a                                           ; $5fae: $af
	add  b                                           ; $5faf: $80
	ld   d, l                                        ; $5fb0: $55
	add  b                                           ; $5fb1: $80
	adc  [hl]                                        ; $5fb2: $8e
	add  b                                           ; $5fb3: $80
	ld   d, e                                        ; $5fb4: $53
	add  b                                           ; $5fb5: $80
	dec  c                                           ; $5fb6: $0d
	add  b                                           ; $5fb7: $80
	sub  b                                           ; $5fb8: $90
	ld   de, $ad2a                                   ; $5fb9: $11 $2a $ad
	rst  ToBoot                                         ; $5fbc: $c7
	ld   [$926a], sp                                 ; $5fbd: $08 $6a $92
	or   h                                           ; $5fc0: $b4
	xor  $ea                                         ; $5fc1: $ee $ea
	adc  l                                           ; $5fc3: $8d
	db   $dd                                         ; $5fc4: $dd
	ld   [de], a                                     ; $5fc5: $12
	ld   l, d                                        ; $5fc6: $6a
	add  b                                           ; $5fc7: $80
	cp   b                                           ; $5fc8: $b8
	ld   b, b                                        ; $5fc9: $40
	ld   [hl], b                                     ; $5fca: $70
	jr   nz, @-$7e                                   ; $5fcb: $20 $80

	ld   b, b                                        ; $5fcd: $40
	add  h                                           ; $5fce: $84
	nop                                              ; $5fcf: $00
	add  b                                           ; $5fd0: $80
	ld   b, b                                        ; $5fd1: $40
	add  b                                           ; $5fd2: $80
	add  b                                           ; $5fd3: $80
	add  b                                           ; $5fd4: $80
	nop                                              ; $5fd5: $00
	add  b                                           ; $5fd6: $80
	inc  b                                           ; $5fd7: $04
	adc  l                                           ; $5fd8: $8d
	nop                                              ; $5fd9: $00
	dec  b                                           ; $5fda: $05
	inc  b                                           ; $5fdb: $04
	ret  nz                                          ; $5fdc: $c0

	ld   b, h                                        ; $5fdd: $44
	ret  nz                                          ; $5fde: $c0

	add  b                                           ; $5fdf: $80
	ret  nz                                          ; $5fe0: $c0

	add  [hl]                                        ; $5fe1: $86
	add  b                                           ; $5fe2: $80
	add  b                                           ; $5fe3: $80
	nop                                              ; $5fe4: $00
	ld   b, $48                                      ; $5fe5: $06 $48
	nop                                              ; $5fe7: $00
	ret  z                                           ; $5fe8: $c8

	nop                                              ; $5fe9: $00
	adc  b                                           ; $5fea: $88
	nop                                              ; $5feb: $00
	ld   [$0083], sp                                 ; $5fec: $08 $83 $00
	add  b                                           ; $5fef: $80
	rrca                                             ; $5ff0: $0f
	add  b                                           ; $5ff1: $80
	ld   a, e                                        ; $5ff2: $7b
	rlca                                             ; $5ff3: $07
	ld   c, b                                        ; $5ff4: $48
	nop                                              ; $5ff5: $00
	ld   l, b                                        ; $5ff6: $68
	nop                                              ; $5ff7: $00
	ld   h, b                                        ; $5ff8: $60
	nop                                              ; $5ff9: $00
	ld   b, b                                        ; $5ffa: $40
	nop                                              ; $5ffb: $00
	add  b                                           ; $5ffc: $80
	rlca                                             ; $5ffd: $07
	add  b                                           ; $5ffe: $80
	rst  $10                                         ; $5fff: $d7
	add  b                                           ; $6000: $80
	rst  $30                                         ; $6001: $f7
	add  b                                           ; $6002: $80
	rst  $10                                         ; $6003: $d7
	ld   [bc], a                                     ; $6004: $02
	stop                                             ; $6005: $10 $00
	db   $10                                         ; $6007: $10
	add  c                                           ; $6008: $81
	nop                                              ; $6009: $00
	add  b                                           ; $600a: $80
	jr   jr_07d_5f8d                                 ; $600b: $18 $80

	cp   b                                           ; $600d: $b8
	add  d                                           ; $600e: $82
	jr   c, jr_07d_5f91                              ; $600f: $38 $80

	jr   nc, jr_07d_5f95                             ; $6011: $30 $82

	nop                                              ; $6013: $00
	ld   bc, $0001                                   ; $6014: $01 $01 $00
	add  b                                           ; $6017: $80
	ld   a, [hl]                                     ; $6018: $7e
	ld   bc, $bcbe                                   ; $6019: $01 $be $bc
	add  b                                           ; $601c: $80
	ld   a, h                                        ; $601d: $7c
	add  b                                           ; $601e: $80
	db   $fc                                         ; $601f: $fc
	ld   d, $7c                                      ; $6020: $16 $7c
	ld   a, b                                        ; $6022: $78
	stop                                             ; $6023: $10 $00
	add  h                                           ; $6025: $84
	nop                                              ; $6026: $00
	ld   b, h                                        ; $6027: $44
	nop                                              ; $6028: $00
	ld   b, h                                        ; $6029: $44
	nop                                              ; $602a: $00
	ld   b, h                                        ; $602b: $44
	nop                                              ; $602c: $00
	ld   b, b                                        ; $602d: $40
	nop                                              ; $602e: $00
	add  b                                           ; $602f: $80
	rlca                                             ; $6030: $07
	add  [hl]                                        ; $6031: $86
	ld   de, $3d74                                   ; $6032: $11 $74 $3d

jr_07d_6035:
	ld   hl, $6171                                   ; $6035: $21 $71 $61
	add  b                                           ; $6038: $80

jr_07d_6039:
	ld   h, e                                        ; $6039: $63
	ld   bc, $a3e3                                   ; $603a: $01 $e3 $a3
	add  b                                           ; $603d: $80
	pop  hl                                          ; $603e: $e1
	add  b                                           ; $603f: $80
	pop  bc                                          ; $6040: $c1
	dec  b                                           ; $6041: $05
	ret  nz                                          ; $6042: $c0

	add  b                                           ; $6043: $80
	ld   bc, $c04e                                   ; $6044: $01 $4e $c0
	nop                                              ; $6047: $00
	add  c                                           ; $6048: $81
	add  b                                           ; $6049: $80
	adc  b                                           ; $604a: $88
	nop                                              ; $604b: $00
	nop                                              ; $604c: $00
	ldh  a, [$be]                                    ; $604d: $f0 $be
	nop                                              ; $604f: $00
	add  b                                           ; $6050: $80
	ccf                                              ; $6051: $3f
	add  b                                           ; $6052: $80
	ld   e, l                                        ; $6053: $5d
	add  b                                           ; $6054: $80
	scf                                              ; $6055: $37
	add  b                                           ; $6056: $80
	ld   e, l                                        ; $6057: $5d
	add  b                                           ; $6058: $80
	dec  bc                                          ; $6059: $0b
	add  b                                           ; $605a: $80
	ld   d, l                                        ; $605b: $55
	add  b                                           ; $605c: $80
	ld   a, e                                        ; $605d: $7b
	add  b                                           ; $605e: $80
	ld   a, l                                        ; $605f: $7d
	add  b                                           ; $6060: $80
	or   b                                           ; $6061: $b0
	add  b                                           ; $6062: $80
	push af                                          ; $6063: $f5
	add  b                                           ; $6064: $80
	or   d                                           ; $6065: $b2
	add  b                                           ; $6066: $80
	ld   [hl], a                                     ; $6067: $77
	add  b                                           ; $6068: $80
	rst  $20                                         ; $6069: $e7
	add  b                                           ; $606a: $80
	push hl                                          ; $606b: $e5
	add  b                                           ; $606c: $80
	db   $e3                                         ; $606d: $e3
	add  b                                           ; $606e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $606f: $cf
	add  b                                           ; $6070: $80
	nop                                              ; $6071: $00
	add  b                                           ; $6072: $80
	and  b                                           ; $6073: $a0
	add  b                                           ; $6074: $80
	nop                                              ; $6075: $00
	add  b                                           ; $6076: $80
	xor  b                                           ; $6077: $a8
	add  b                                           ; $6078: $80
	ld   b, b                                        ; $6079: $40
	add  b                                           ; $607a: $80
	xor  b                                           ; $607b: $a8
	add  b                                           ; $607c: $80
	ld   d, d                                        ; $607d: $52
	add  b                                           ; $607e: $80
	ldh  [$8d], a                                    ; $607f: $e0 $8d
	nop                                              ; $6081: $00
	add  b                                           ; $6082: $80
	inc  bc                                          ; $6083: $03
	add  b                                           ; $6084: $80
	rrca                                             ; $6085: $0f
	add  b                                           ; $6086: $80
	ld   c, $80                                      ; $6087: $0e $80
	ld   b, $80                                      ; $6089: $06 $80
	add  b                                           ; $608b: $80
	add  b                                           ; $608c: $80
	ret  nz                                          ; $608d: $c0

	add  b                                           ; $608e: $80
	ldh  a, [$80]                                    ; $608f: $f0 $80
	db   $fc                                         ; $6091: $fc
	add  b                                           ; $6092: $80
	ld   a, a                                        ; $6093: $7f
	add  b                                           ; $6094: $80
	ld   a, e                                        ; $6095: $7b
	add  b                                           ; $6096: $80
	ld   [hl], a                                     ; $6097: $77
	add  b                                           ; $6098: $80
	inc  hl                                          ; $6099: $23
	add  b                                           ; $609a: $80
	ld   d, a                                        ; $609b: $57
	add  b                                           ; $609c: $80
	inc  hl                                          ; $609d: $23
	add  b                                           ; $609e: $80
	inc  bc                                          ; $609f: $03
	add  b                                           ; $60a0: $80
	nop                                              ; $60a1: $00
	add  b                                           ; $60a2: $80
	push af                                          ; $60a3: $f5
	add  b                                           ; $60a4: $80
	rst  $10                                         ; $60a5: $d7
	add  b                                           ; $60a6: $80
	add  l                                           ; $60a7: $85
	add  b                                           ; $60a8: $80
	push bc                                          ; $60a9: $c5
	add  b                                           ; $60aa: $80
	adc  l                                           ; $60ab: $8d
	add  b                                           ; $60ac: $80
	push bc                                          ; $60ad: $c5
	add  b                                           ; $60ae: $80
	add  c                                           ; $60af: $81
	add  b                                           ; $60b0: $80
	dec  b                                           ; $60b1: $05
	add  b                                           ; $60b2: $80
	jr   c, jr_07d_6035                              ; $60b3: $38 $80

	inc  d                                           ; $60b5: $14
	add  b                                           ; $60b6: $80
	jr   z, jr_07d_6039                              ; $60b7: $28 $80

	inc  d                                           ; $60b9: $14
	add  b                                           ; $60ba: $80
	ld   [hl-], a                                    ; $60bb: $32
	add  b                                           ; $60bc: $80
	ld   [hl], $80                                   ; $60bd: $36 $80
	ld   [hl-], a                                    ; $60bf: $32
	add  b                                           ; $60c0: $80
	ld   [hl], $00                                   ; $60c1: $36 $00
	rst  $38                                         ; $60c3: $ff
	add  d                                           ; $60c4: $82
	ldh  a, [$86]                                    ; $60c5: $f0 $86
	ldh  [$80], a                                    ; $60c7: $e0 $80
	ld   hl, sp+$09                                  ; $60c9: $f8 $09
	rst  $38                                         ; $60cb: $ff
	ld   b, l                                        ; $60cc: $45
	ld   [de], a                                     ; $60cd: $12
	call nc, $8010                                   ; $60ce: $d4 $10 $80
	inc  b                                           ; $60d1: $04
	add  [hl]                                        ; $60d2: $86
	ld   a, [bc]                                     ; $60d3: $0a
	adc  d                                           ; $60d4: $8a
	add  b                                           ; $60d5: $80
	ld   b, $80                                      ; $60d6: $06 $80
	ld   a, [hl+]                                    ; $60d8: $2a
	add  c                                           ; $60d9: $81
	ld   h, $00                                      ; $60da: $26 $00
	ret  z                                           ; $60dc: $c8

	add  b                                           ; $60dd: $80
	inc  bc                                          ; $60de: $03
	add  b                                           ; $60df: $80
	ld   l, e                                        ; $60e0: $6b
	rlca                                             ; $60e1: $07
	res  1, e                                        ; $60e2: $cb $8b
	rst  JumpTable                                         ; $60e4: $df
	db   $dd                                         ; $60e5: $dd
	rst  JumpTable                                         ; $60e6: $df
	db   $db                                         ; $60e7: $db
	rst  JumpTable                                         ; $60e8: $df
	ld   e, a                                        ; $60e9: $5f
	add  c                                           ; $60ea: $81
	rst  JumpTable                                         ; $60eb: $df
	ld   bc, $1016                                   ; $60ec: $01 $16 $10
	add  c                                           ; $60ef: $81
	sub  b                                           ; $60f0: $90
	add  e                                           ; $60f1: $83
	or   b                                           ; $60f2: $b0
	nop                                              ; $60f3: $00
	ldh  [$83], a                                    ; $60f4: $e0 $83
	ldh  a, [rP1]                                    ; $60f6: $f0 $00
	ret  nc                                          ; $60f8: $d0

	cp   [hl]                                        ; $60f9: $be
	nop                                              ; $60fa: $00
	add  b                                           ; $60fb: $80
	ld   [hl], a                                     ; $60fc: $77
	add  b                                           ; $60fd: $80
	rst  $38                                         ; $60fe: $ff

Jump_07d_60ff:
	add  b                                           ; $60ff: $80
	ld   a, a                                        ; $6100: $7f
	add  b                                           ; $6101: $80
	rst  $38                                         ; $6102: $ff
	add  b                                           ; $6103: $80
	ld   a, e                                        ; $6104: $7b
	add  h                                           ; $6105: $84
	rst  $38                                         ; $6106: $ff
	add  b                                           ; $6107: $80
	db   $ed                                         ; $6108: $ed
	add  b                                           ; $6109: $80
	ld   c, [hl]                                     ; $610a: $4e
	add  b                                           ; $610b: $80
	adc  e                                           ; $610c: $8b
	add  b                                           ; $610d: $80
	ld   b, $80                                      ; $610e: $06 $80
	adc  a                                           ; $6110: $8f
	add  b                                           ; $6111: $80
	ld   e, l                                        ; $6112: $5d
	add  b                                           ; $6113: $80
	ret  c                                           ; $6114: $d8

	add  b                                           ; $6115: $80
	call $c780                                       ; $6116: $cd $80 $c7
	add  b                                           ; $6119: $80
	ld   l, d                                        ; $611a: $6a
	add  b                                           ; $611b: $80
	or   h                                           ; $611c: $b4
	add  b                                           ; $611d: $80
	ld   [$dd80], a                                  ; $611e: $ea $80 $dd
	add  b                                           ; $6121: $80
	ld   l, d                                        ; $6122: $6a
	add  b                                           ; $6123: $80
	cp   b                                           ; $6124: $b8
	add  b                                           ; $6125: $80
	ld   [hl], b                                     ; $6126: $70

jr_07d_6127:
	add  b                                           ; $6127: $80
	ld   b, b                                        ; $6128: $40
	add  b                                           ; $6129: $80
	and  b                                           ; $612a: $a0
	add  b                                           ; $612b: $80
	ld   d, b                                        ; $612c: $50
	add  b                                           ; $612d: $80
	ldh  [$80], a                                    ; $612e: $e0 $80
	ld   b, b                                        ; $6130: $40
	add  b                                           ; $6131: $80
	and  b                                           ; $6132: $a0
	add  b                                           ; $6133: $80
	nop                                              ; $6134: $00
	add  b                                           ; $6135: $80
	jr   nz, @+$01                                   ; $6136: $20 $ff

	nop                                              ; $6138: $00
	cp   l                                           ; $6139: $bd
	nop                                              ; $613a: $00
	add  b                                           ; $613b: $80
	rst  $38                                         ; $613c: $ff
	add  b                                           ; $613d: $80
	db   $fd                                         ; $613e: $fd
	adc  b                                           ; $613f: $88
	rst  $38                                         ; $6140: $ff
	add  b                                           ; $6141: $80
	nop                                              ; $6142: $00
	add  b                                           ; $6143: $80
	sbc  e                                           ; $6144: $9b
	add  b                                           ; $6145: $80
	ld   e, a                                        ; $6146: $5f
	add  b                                           ; $6147: $80
	sbc  e                                           ; $6148: $9b
	add  b                                           ; $6149: $80
	ld   e, e                                        ; $614a: $5b
	add  b                                           ; $614b: $80
	sbc  e                                           ; $614c: $9b
	add  b                                           ; $614d: $80
	dec  de                                          ; $614e: $1b
	add  d                                           ; $614f: $82
	nop                                              ; $6150: $00
	add  b                                           ; $6151: $80
	db   $f4                                         ; $6152: $f4
	add  b                                           ; $6153: $80
	ld   a, [$dc80]                                  ; $6154: $fa $80 $dc
	add  h                                           ; $6157: $84
	db   $fc                                         ; $6158: $fc
	add  h                                           ; $6159: $84
	nop                                              ; $615a: $00
	add  b                                           ; $615b: $80
	and  b                                           ; $615c: $a0
	add  b                                           ; $615d: $80
	ld   d, b                                        ; $615e: $50
	add  b                                           ; $615f: $80
	ldh  [$80], a                                    ; $6160: $e0 $80
	ret  nc                                          ; $6162: $d0

	add  b                                           ; $6163: $80
	ldh  a, [rIE]                                    ; $6164: $f0 $ff
	nop                                              ; $6166: $00
	jp   nz, $0000                                  ; $6167: $c2 $00 $00

	rst  $38                                         ; $616a: $ff
	add  c                                           ; $616b: $81
	nop                                              ; $616c: $00
	inc  e                                           ; $616d: $1c
	ld   bc, $4100                                   ; $616e: $01 $00 $41
	nop                                              ; $6171: $00
	ld   c, c                                        ; $6172: $49
	nop                                              ; $6173: $00
	add  hl, bc                                      ; $6174: $09
	nop                                              ; $6175: $00
	ld   bc, $fe00                                   ; $6176: $01 $00 $fe
	nop                                              ; $6179: $00
	sbc  e                                           ; $617a: $9b
	nop                                              ; $617b: $00
	and  b                                           ; $617c: $a0
	nop                                              ; $617d: $00
	and  h                                           ; $617e: $a4
	nop                                              ; $617f: $00
	or   h                                           ; $6180: $b4
	nop                                              ; $6181: $00
	cp   b                                           ; $6182: $b8
	nop                                              ; $6183: $00
	sbc  b                                           ; $6184: $98
	nop                                              ; $6185: $00
	sbc  d                                           ; $6186: $9a
	nop                                              ; $6187: $00
	sub  c                                           ; $6188: $91
	nop                                              ; $6189: $00
	call c, $0081                                    ; $618a: $dc $81 $00
	ld   d, $62                                      ; $618d: $16 $62
	nop                                              ; $618f: $00
	db   $e3                                         ; $6190: $e3
	nop                                              ; $6191: $00
	and  e                                           ; $6192: $a3
	nop                                              ; $6193: $00
	and  d                                           ; $6194: $a2
	nop                                              ; $6195: $00
	ld   [hl+], a                                    ; $6196: $22
	nop                                              ; $6197: $00
	ld   a, [hl]                                     ; $6198: $7e
	nop                                              ; $6199: $00
	ret  nc                                          ; $619a: $d0

	nop                                              ; $619b: $00
	jr   nz, jr_07d_619e                             ; $619c: $20 $00

jr_07d_619e:
	jr   nz, jr_07d_61a0                             ; $619e: $20 $00

jr_07d_61a0:
	jr   nz, jr_07d_61a2                             ; $61a0: $20 $00

jr_07d_61a2:
	jr   nz, jr_07d_61a4                             ; $61a2: $20 $00

jr_07d_61a4:
	jr   nz, jr_07d_6127                             ; $61a4: $20 $81

	nop                                              ; $61a6: $00
	nop                                              ; $61a7: $00
	ldh  a, [rIE]                                    ; $61a8: $f0 $ff
	nop                                              ; $61aa: $00
	cp   h                                           ; $61ab: $bc
	nop                                              ; $61ac: $00
	ld   [de], a                                     ; $61ad: $12
	cp   $00                                         ; $61ae: $fe $00
	stop                                             ; $61b0: $10 $00
	sub  b                                           ; $61b2: $90
	nop                                              ; $61b3: $00
	stop                                             ; $61b4: $10 $00
	ld   [bc], a                                     ; $61b6: $02
	nop                                              ; $61b7: $00
	ld   b, [hl]                                     ; $61b8: $46
	nop                                              ; $61b9: $00
	ld   a, d                                        ; $61ba: $7a
	nop                                              ; $61bb: $00
	ld   [hl], b                                     ; $61bc: $70
	nop                                              ; $61bd: $00
	inc  sp                                          ; $61be: $33
	nop                                              ; $61bf: $00
	add  d                                           ; $61c0: $82
	add  c                                           ; $61c1: $81
	nop                                              ; $61c2: $00
	ld   b, $81                                      ; $61c3: $06 $81
	nop                                              ; $61c5: $00
	add  c                                           ; $61c6: $81
	nop                                              ; $61c7: $00
	add  d                                           ; $61c8: $82
	nop                                              ; $61c9: $00
	inc  d                                           ; $61ca: $14
	add  c                                           ; $61cb: $81
	nop                                              ; $61cc: $00
	nop                                              ; $61cd: $00
	ld   e, b                                        ; $61ce: $58
	add  c                                           ; $61cf: $81
	nop                                              ; $61d0: $00
	dec  b                                           ; $61d1: $05
	ld   d, e                                        ; $61d2: $53
	inc  bc                                          ; $61d3: $03
	ld   a, a                                        ; $61d4: $7f
	rrca                                             ; $61d5: $0f
	sbc  a                                           ; $61d6: $9f
	rra                                              ; $61d7: $1f
	add  b                                           ; $61d8: $80
	ccf                                              ; $61d9: $3f
	add  b                                           ; $61da: $80
	ld   b, e                                        ; $61db: $43
	add  b                                           ; $61dc: $80
	ld   c, $00                                      ; $61dd: $0e $00
	rrca                                             ; $61df: $0f
	add  b                                           ; $61e0: $80
	db   $10                                         ; $61e1: $10
	ld   bc, $9070                                   ; $61e2: $01 $70 $90
	add  c                                           ; $61e5: $81
	ldh  [$80], a                                    ; $61e6: $e0 $80
	ret  nz                                          ; $61e8: $c0

	ld   b, $80                                      ; $61e9: $06 $80
	sub  b                                           ; $61eb: $90
	db   $10                                         ; $61ec: $10
	ldh  a, [$c0]                                    ; $61ed: $f0 $c0
	ldh  a, [$30]                                    ; $61ef: $f0 $30
	rst  $38                                         ; $61f1: $ff
	nop                                              ; $61f2: $00
	cp   h                                           ; $61f3: $bc
	nop                                              ; $61f4: $00
	ld   l, d                                        ; $61f5: $6a
	ld   bc, $008a                                   ; $61f6: $01 $8a $00
	ld   [$0001], sp                                 ; $61f9: $08 $01 $00
	rlca                                             ; $61fc: $07
	ld   bc, $0f02                                   ; $61fd: $01 $02 $0f
	nop                                              ; $6200: $00
	dec  e                                           ; $6201: $1d
	ld   [bc], a                                     ; $6202: $02

jr_07d_6203:
	add  c                                           ; $6203: $81
	ld   a, [hl+]                                    ; $6204: $2a
	add  hl, bc                                      ; $6205: $09
	jr   nz, jr_07d_6208                             ; $6206: $20 $00

jr_07d_6208:
	ld   a, a                                        ; $6208: $7f
	rra                                              ; $6209: $1f
	ret  nz                                          ; $620a: $c0

	ld   h, b                                        ; $620b: $60
	rst  $28                                         ; $620c: $ef
	ldh  a, [$c1]                                    ; $620d: $f0 $c1
	cp   $80                                         ; $620f: $fe $80
	ld   d, l                                        ; $6211: $55
	add  d                                           ; $6212: $82
	xor  d                                           ; $6213: $aa
	add  b                                           ; $6214: $80
	nop                                              ; $6215: $00
	add  b                                           ; $6216: $80
	rst  $38                                         ; $6217: $ff
	add  b                                           ; $6218: $80
	nop                                              ; $6219: $00
	dec  b                                           ; $621a: $05
	rst  $38                                         ; $621b: $ff
	nop                                              ; $621c: $00
	db   $fd                                         ; $621d: $fd
	rlca                                             ; $621e: $07
	ld   d, b                                        ; $621f: $50
	ld   d, l                                        ; $6220: $55
	add  d                                           ; $6221: $82
	xor  d                                           ; $6222: $aa
	add  b                                           ; $6223: $80
	nop                                              ; $6224: $00
	add  b                                           ; $6225: $80
	rst  $38                                         ; $6226: $ff
	add  b                                           ; $6227: $80
	nop                                              ; $6228: $00
	dec  b                                           ; $6229: $05
	rst  $38                                         ; $622a: $ff
	nop                                              ; $622b: $00
	ld   d, l                                        ; $622c: $55
	rst  $38                                         ; $622d: $ff
	nop                                              ; $622e: $00
	ld   d, l                                        ; $622f: $55
	add  d                                           ; $6230: $82
	xor  d                                           ; $6231: $aa
	add  b                                           ; $6232: $80
	nop                                              ; $6233: $00
	add  b                                           ; $6234: $80
	rst  $38                                         ; $6235: $ff
	add  b                                           ; $6236: $80
	nop                                              ; $6237: $00
	dec  b                                           ; $6238: $05
	rst  $38                                         ; $6239: $ff
	nop                                              ; $623a: $00
	ld   d, c                                        ; $623b: $51
	cp   $06                                         ; $623c: $fe $06
	ld   d, [hl]                                     ; $623e: $56
	add  d                                           ; $623f: $82
	xor  d                                           ; $6240: $aa
	add  b                                           ; $6241: $80
	dec  b                                           ; $6242: $05
	ld   d, $fa                                      ; $6243: $16 $fa
	ei                                               ; $6245: $fb
	inc  b                                           ; $6246: $04
	ld   b, $fc                                      ; $6247: $06 $fc
	nop                                              ; $6249: $00
	ld   h, d                                        ; $624a: $62
	sub  c                                           ; $624b: $91
	ld   [hl], $23                                   ; $624c: $36 $23
	ld   c, c                                        ; $624e: $49
	ld   h, b                                        ; $624f: $60
	sub  a                                           ; $6250: $97
	rst  $10                                         ; $6251: $d7
	jr   c, jr_07d_6203                              ; $6252: $38 $af

	ld   [hl], a                                     ; $6254: $77
	ld   e, a                                        ; $6255: $5f
	rst  $28                                         ; $6256: $ef
	cp   a                                           ; $6257: $bf
	rst  JumpTable                                         ; $6258: $df
	ld   a, a                                        ; $6259: $7f
	ccf                                              ; $625a: $3f
	add  d                                           ; $625b: $82
	rst  $38                                         ; $625c: $ff
	nop                                              ; $625d: $00
	nop                                              ; $625e: $00
	add  b                                           ; $625f: $80
	rst  $38                                         ; $6260: $ff
	nop                                              ; $6261: $00
	nop                                              ; $6262: $00
	add  l                                           ; $6263: $85
	rst  $38                                         ; $6264: $ff
	nop                                              ; $6265: $00
	cp   a                                           ; $6266: $bf
	add  e                                           ; $6267: $83
	ld   h, b                                        ; $6268: $60
	add  b                                           ; $6269: $80
	ld   h, d                                        ; $626a: $62
	add  b                                           ; $626b: $80
	ld   h, h                                        ; $626c: $64
	ld   b, $2a                                      ; $626d: $06 $2a
	ld   l, d                                        ; $626f: $6a
	inc  h                                           ; $6270: $24
	ld   h, h                                        ; $6271: $64
	ld   a, [hl+]                                    ; $6272: $2a
	ld   l, d                                        ; $6273: $6a
	ld   h, b                                        ; $6274: $60
	add  d                                           ; $6275: $82
	rst  $38                                         ; $6276: $ff
	nop                                              ; $6277: $00
	nop                                              ; $6278: $00
	add  b                                           ; $6279: $80
	rst  $38                                         ; $627a: $ff
	nop                                              ; $627b: $00
	ld   bc, $ff85                                   ; $627c: $01 $85 $ff
	nop                                              ; $627f: $00
	cp   $82                                         ; $6280: $fe $82
	rst  $38                                         ; $6282: $ff
	nop                                              ; $6283: $00
	nop                                              ; $6284: $00
	add  b                                           ; $6285: $80
	ld   a, a                                        ; $6286: $7f
	nop                                              ; $6287: $00
	ld   b, b                                        ; $6288: $40
	add  l                                           ; $6289: $85
	ld   a, a                                        ; $628a: $7f
	ld   [bc], a                                     ; $628b: $02
	dec  a                                           ; $628c: $3d
	cp   $fc                                         ; $628d: $fe $fc
	add  b                                           ; $628f: $80
	rst  $38                                         ; $6290: $ff
	nop                                              ; $6291: $00
	nop                                              ; $6292: $00
	add  b                                           ; $6293: $80
	rst  $38                                         ; $6294: $ff
	nop                                              ; $6295: $00
	nop                                              ; $6296: $00
	add  [hl]                                        ; $6297: $86
	rst  $38                                         ; $6298: $ff
	add  b                                           ; $6299: $80
	rra                                              ; $629a: $1f
	add  b                                           ; $629b: $80
	cp   $00                                         ; $629c: $fe $00
	nop                                              ; $629e: $00
	add  b                                           ; $629f: $80
	rst  $38                                         ; $62a0: $ff
	nop                                              ; $62a1: $00
	nop                                              ; $62a2: $00
	add  l                                           ; $62a3: $85
	rst  $38                                         ; $62a4: $ff
	ld   de, $f5d5                                   ; $62a5: $11 $d5 $f5
	jp   z, $151a                                    ; $62a8: $ca $1a $15

	dec  e                                           ; $62ab: $1d
	set  1, a                                        ; $62ac: $cb $cf
	dec  b                                           ; $62ae: $05
	rst  $20                                         ; $62af: $e7
	ldh  [c], a                                      ; $62b0: $e2
	di                                               ; $62b1: $f3
	pop  af                                          ; $62b2: $f1
	ld   sp, hl                                      ; $62b3: $f9
	ld   hl, sp-$04                                  ; $62b4: $f8 $fc
	or   l                                           ; $62b6: $b5
	or   [hl]                                        ; $62b7: $b6
	add  b                                           ; $62b8: $80
	db   $db                                         ; $62b9: $db
	add  b                                           ; $62ba: $80
	ld   l, l                                        ; $62bb: $6d
	add  d                                           ; $62bc: $82
	rst  $38                                         ; $62bd: $ff
	inc  bc                                          ; $62be: $03
	ld   e, e                                        ; $62bf: $5b
	db   $db                                         ; $62c0: $db
	add  b                                           ; $62c1: $80
	rst  $38                                         ; $62c2: $ff
	add  b                                           ; $62c3: $80
	nop                                              ; $62c4: $00
	ld   bc, $db24                                   ; $62c5: $01 $24 $db
	add  b                                           ; $62c8: $80
	ld   l, l                                        ; $62c9: $6d
	add  b                                           ; $62ca: $80
	or   $82                                         ; $62cb: $f6 $82
	rst  $38                                         ; $62cd: $ff
	add  b                                           ; $62ce: $80
	ld   l, l                                        ; $62cf: $6d
	ld   bc, $ff00                                   ; $62d0: $01 $00 $ff
	add  b                                           ; $62d3: $80
	nop                                              ; $62d4: $00
	inc  b                                           ; $62d5: $04
	di                                               ; $62d6: $f3
	rlca                                             ; $62d7: $07
	dec  b                                           ; $62d8: $05
	rrca                                             ; $62d9: $0f
	ld   c, $89                                      ; $62da: $0e $89
	rrca                                             ; $62dc: $0f
	ld   [bc], a                                     ; $62dd: $02
	nop                                              ; $62de: $00
	rst  $38                                         ; $62df: $ff
	ret  nz                                          ; $62e0: $c0

	add  b                                           ; $62e1: $80
	rst  $38                                         ; $62e2: $ff
	inc  bc                                          ; $62e3: $03
	ret  nz                                          ; $62e4: $c0

	ld   a, a                                        ; $62e5: $7f
	rst  $38                                         ; $62e6: $ff
	add  b                                           ; $62e7: $80
	add  l                                           ; $62e8: $85
	rst  $38                                         ; $62e9: $ff
	ld   [bc], a                                     ; $62ea: $02
	nop                                              ; $62eb: $00
	rst  $38                                         ; $62ec: $ff
	nop                                              ; $62ed: $00
	add  b                                           ; $62ee: $80
	rst  $38                                         ; $62ef: $ff
	nop                                              ; $62f0: $00
	nop                                              ; $62f1: $00
	add  b                                           ; $62f2: $80
	rst  $38                                         ; $62f3: $ff
	nop                                              ; $62f4: $00
	nop                                              ; $62f5: $00
	add  l                                           ; $62f6: $85
	rst  $38                                         ; $62f7: $ff
	ld   [bc], a                                     ; $62f8: $02
	nop                                              ; $62f9: $00
	rst  $38                                         ; $62fa: $ff
	nop                                              ; $62fb: $00
	add  b                                           ; $62fc: $80
	rst  $38                                         ; $62fd: $ff
	nop                                              ; $62fe: $00
	nop                                              ; $62ff: $00
	add  b                                           ; $6300: $80
	rst  $38                                         ; $6301: $ff
	nop                                              ; $6302: $00
	nop                                              ; $6303: $00
	add  l                                           ; $6304: $85
	rst  $38                                         ; $6305: $ff
	ld   [bc], a                                     ; $6306: $02
	nop                                              ; $6307: $00
	rst  $38                                         ; $6308: $ff
	nop                                              ; $6309: $00
	add  b                                           ; $630a: $80
	rst  $38                                         ; $630b: $ff
	nop                                              ; $630c: $00
	nop                                              ; $630d: $00
	add  b                                           ; $630e: $80
	rst  $38                                         ; $630f: $ff
	inc  d                                           ; $6310: $14
	ld   [bc], a                                     ; $6311: $02
	cp   $f8                                         ; $6312: $fe $f8
	db   $fc                                         ; $6314: $fc
	pop  af                                          ; $6315: $f1
	ld   sp, hl                                      ; $6316: $f9
	ldh  [c], a                                      ; $6317: $e2
	di                                               ; $6318: $f3
	ld   [de], a                                     ; $6319: $12
	db   $fd                                         ; $631a: $fd
	db   $10                                         ; $631b: $10
	ldh  [c], a                                      ; $631c: $e2
	db   $fd                                         ; $631d: $fd
	ld   bc, $3f3e                                   ; $631e: $01 $3e $3f
	ld   b, c                                        ; $6321: $41
	ld   a, a                                        ; $6322: $7f
	cp   a                                           ; $6323: $bf
	rst  $38                                         ; $6324: $ff
	ld   a, a                                        ; $6325: $7f
	add  d                                           ; $6326: $82
	rst  $38                                         ; $6327: $ff
	nop                                              ; $6328: $00
	ld   a, a                                        ; $6329: $7f
	add  b                                           ; $632a: $80
	rst  $38                                         ; $632b: $ff
	nop                                              ; $632c: $00
	ld   a, a                                        ; $632d: $7f
	add  e                                           ; $632e: $83
	rst  $38                                         ; $632f: $ff
	add  b                                           ; $6330: $80
	ld   a, [$d580]                                  ; $6331: $fa $80 $d5
	add  b                                           ; $6334: $80
	xor  d                                           ; $6335: $aa
	add  h                                           ; $6336: $84
	rst  $38                                         ; $6337: $ff
	add  b                                           ; $6338: $80
	ld   [$5580], a                                  ; $6339: $ea $80 $55
	add  b                                           ; $633c: $80
	xor  d                                           ; $633d: $aa
	add  b                                           ; $633e: $80
	ld   d, l                                        ; $633f: $55
	add  b                                           ; $6340: $80
	xor  d                                           ; $6341: $aa
	add  d                                           ; $6342: $82
	rst  $38                                         ; $6343: $ff
	add  b                                           ; $6344: $80
	ld   d, l                                        ; $6345: $55
	add  b                                           ; $6346: $80
	xor  d                                           ; $6347: $aa
	add  b                                           ; $6348: $80
	ld   d, l                                        ; $6349: $55
	add  b                                           ; $634a: $80
	xor  d                                           ; $634b: $aa
	add  b                                           ; $634c: $80
	ld   d, l                                        ; $634d: $55
	add  b                                           ; $634e: $80
	xor  d                                           ; $634f: $aa
	nop                                              ; $6350: $00
	cp   $81                                         ; $6351: $fe $81
	rst  $38                                         ; $6353: $ff
	add  b                                           ; $6354: $80
	ld   e, a                                        ; $6355: $5f
	add  b                                           ; $6356: $80
	xor  e                                           ; $6357: $ab
	add  b                                           ; $6358: $80
	ld   d, l                                        ; $6359: $55
	add  b                                           ; $635a: $80
	xor  e                                           ; $635b: $ab
	add  b                                           ; $635c: $80
	ld   d, l                                        ; $635d: $55
	add  b                                           ; $635e: $80
	xor  e                                           ; $635f: $ab
	nop                                              ; $6360: $00
	cp   [hl]                                        ; $6361: $be
	add  l                                           ; $6362: $85
	ld   a, a                                        ; $6363: $7f
	add  b                                           ; $6364: $80
	ld   e, a                                        ; $6365: $5f
	add  b                                           ; $6366: $80
	ld   l, a                                        ; $6367: $6f
	add  b                                           ; $6368: $80
	ld   d, a                                        ; $6369: $57
	add  b                                           ; $636a: $80
	ld   l, e                                        ; $636b: $6b
	nop                                              ; $636c: $00
	ccf                                              ; $636d: $3f
	adc  l                                           ; $636e: $8d
	rst  $38                                         ; $636f: $ff
	ld   bc, $eef5                                   ; $6370: $01 $f5 $ee
	add  b                                           ; $6373: $80
	cp   $8a                                         ; $6374: $fe $8a
	xor  $00                                         ; $6376: $ee $00
	db   $e4                                         ; $6378: $e4
	add  b                                           ; $6379: $80
	ld   sp, hl                                      ; $637a: $f9
	adc  e                                           ; $637b: $8b
	rst  $38                                         ; $637c: $ff
	ld   c, $b7                                      ; $637d: $0e $b7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $637f: $cf
	and  e                                           ; $6380: $a3
	rst  $20                                         ; $6381: $e7
	pop  de                                          ; $6382: $d1
	di                                               ; $6383: $f3
	add  sp, -$07                                    ; $6384: $e8 $f9
	db   $f4                                         ; $6386: $f4
	db   $fc                                         ; $6387: $fc
	ld   a, [$fdfe]                                  ; $6388: $fa $fe $fd
	rst  $38                                         ; $638b: $ff
	cp   $87                                         ; $638c: $fe $87
	rst  $38                                         ; $638e: $ff
	ld   [$ff7f], sp                                 ; $638f: $08 $7f $ff
	ccf                                              ; $6392: $3f
	ld   a, a                                        ; $6393: $7f
	rra                                              ; $6394: $1f
	ccf                                              ; $6395: $3f
	adc  a                                           ; $6396: $8f
	sbc  a                                           ; $6397: $9f
	ldh  a, [$85]                                    ; $6398: $f0 $85
	nop                                              ; $639a: $00
	ld   [$bfe0], sp                                 ; $639b: $08 $e0 $bf
	ld   e, $be                                      ; $639e: $1e $be
	or   b                                           ; $63a0: $b0
	or   c                                           ; $63a1: $b1
	ld   bc, $f00f                                   ; $63a2: $01 $0f $f0
	add  l                                           ; $63a5: $85
	nop                                              ; $63a6: $00
	dec  b                                           ; $63a7: $05
	ld   [hl], l                                     ; $63a8: $75
	add  l                                           ; $63a9: $85
	ld   a, [de]                                     ; $63aa: $1a
	ld   l, d                                        ; $63ab: $6a
	ld   d, l                                        ; $63ac: $55
	push de                                          ; $63ad: $d5
	add  b                                           ; $63ae: $80
	xor  d                                           ; $63af: $aa
	add  [hl]                                        ; $63b0: $86
	nop                                              ; $63b1: $00
	add  b                                           ; $63b2: $80
	ld   d, l                                        ; $63b3: $55
	add  b                                           ; $63b4: $80
	xor  d                                           ; $63b5: $aa
	add  b                                           ; $63b6: $80
	ld   d, l                                        ; $63b7: $55
	add  b                                           ; $63b8: $80
	xor  d                                           ; $63b9: $aa
	add  [hl]                                        ; $63ba: $86
	nop                                              ; $63bb: $00
	add  d                                           ; $63bc: $82
	ldh  a, [$80]                                    ; $63bd: $f0 $80
	ld   d, b                                        ; $63bf: $50
	add  b                                           ; $63c0: $80
	or   b                                           ; $63c1: $b0
	ld   bc, $94f4                                   ; $63c2: $01 $f4 $94
	add  b                                           ; $63c5: $80
	sbc  b                                           ; $63c6: $98
	add  b                                           ; $63c7: $80
	sub  h                                           ; $63c8: $94
	add  b                                           ; $63c9: $80
	sbc  b                                           ; $63ca: $98
	add  b                                           ; $63cb: $80
	db   $10                                         ; $63cc: $10
	add  b                                           ; $63cd: $80
	adc  b                                           ; $63ce: $88
	add  b                                           ; $63cf: $80
	db   $10                                         ; $63d0: $10
	add  b                                           ; $63d1: $80
	add  b                                           ; $63d2: $80
	nop                                              ; $63d3: $00
	ld   h, b                                        ; $63d4: $60
	add  d                                           ; $63d5: $82
	nop                                              ; $63d6: $00
	adc  c                                           ; $63d7: $89
	ld   bc, $2004                                   ; $63d8: $01 $04 $20
	nop                                              ; $63db: $00
	ld   h, c                                        ; $63dc: $61
	rlca                                             ; $63dd: $07
	ld   b, a                                        ; $63de: $47
	add  b                                           ; $63df: $80
	ld   hl, sp+$00                                  ; $63e0: $f8 $00
	inc  bc                                          ; $63e2: $03
	add  h                                           ; $63e3: $84
	rst  $38                                         ; $63e4: $ff
	add  b                                           ; $63e5: $80
	xor  a                                           ; $63e6: $af
	inc  bc                                          ; $63e7: $03
	inc  de                                          ; $63e8: $13
	db   $10                                         ; $63e9: $10
	ld   b, b                                        ; $63ea: $40
	add  b                                           ; $63eb: $80
	add  b                                           ; $63ec: $80
	sub  b                                           ; $63ed: $90
	add  b                                           ; $63ee: $80
	add  b                                           ; $63ef: $80
	add  b                                           ; $63f0: $80
	sub  b                                           ; $63f1: $90
	add  b                                           ; $63f2: $80
	add  b                                           ; $63f3: $80
	add  b                                           ; $63f4: $80
	sub  b                                           ; $63f5: $90
	add  b                                           ; $63f6: $80
	add  b                                           ; $63f7: $80
	nop                                              ; $63f8: $00
	and  b                                           ; $63f9: $a0
	adc  l                                           ; $63fa: $8d
	nop                                              ; $63fb: $00
	nop                                              ; $63fc: $00
	dec  de                                          ; $63fd: $1b
	add  e                                           ; $63fe: $83
	and  $11                                         ; $63ff: $e6 $11
	ld   h, [hl]                                     ; $6401: $66
	and  $66                                         ; $6402: $e6 $66
	and  $66                                         ; $6404: $e6 $66
	and  $66                                         ; $6406: $e6 $66
	and  $66                                         ; $6408: $e6 $66
	and  $d9                                         ; $640a: $e6 $d9
	rst  ToBoot                                         ; $640c: $c7
	ld   h, c                                        ; $640d: $61
	ld   h, e                                        ; $640e: $63
	jr   nz, @+$25                                   ; $640f: $20 $23

	sub  d                                           ; $6411: $92
	sub  e                                           ; $6412: $93
	add  b                                           ; $6413: $80
	jp   Jump_07d_6780                               ; $6414: $c3 $80 $67


	add  b                                           ; $6417: $80
	inc  sp                                          ; $6418: $33
	add  b                                           ; $6419: $80
	sbc  e                                           ; $641a: $9b
	nop                                              ; $641b: $00
	ld   b, e                                        ; $641c: $43
	adc  l                                           ; $641d: $8d
	add  b                                           ; $641e: $80
	nop                                              ; $641f: $00
	and  b                                           ; $6420: $a0
	add  c                                           ; $6421: $81
	nop                                              ; $6422: $00
	inc  bc                                          ; $6423: $03
	xor  b                                           ; $6424: $a8
	db   $f4                                         ; $6425: $f4
	ld   sp, hl                                      ; $6426: $f9
	ld   a, [$f580]                                  ; $6427: $fa $80 $f5
	nop                                              ; $642a: $00
	ret  nz                                          ; $642b: $c0

	add  c                                           ; $642c: $81
	nop                                              ; $642d: $00
	ld   [bc], a                                     ; $642e: $02
	add  b                                           ; $642f: $80
	nop                                              ; $6430: $00
	ld   a, a                                        ; $6431: $7f
	add  l                                           ; $6432: $85
	ld   bc, $8102                                   ; $6433: $01 $02 $81
	ld   b, c                                        ; $6436: $41
	ld   hl, $0181                                   ; $6437: $21 $81 $01
	ld   [bc], a                                     ; $643a: $02
	pop  hl                                          ; $643b: $e1
	add  c                                           ; $643c: $81
	add  d                                           ; $643d: $82
	add  c                                           ; $643e: $81
	nop                                              ; $643f: $00
	ld   bc, $f408                                   ; $6440: $01 $08 $f4
	add  b                                           ; $6443: $80
	add  sp, -$80                                    ; $6444: $e8 $80
	call nc, $0082                                   ; $6446: $d4 $82 $00
	ld   [bc], a                                     ; $6449: $02
	db   $fc                                         ; $644a: $fc
	nop                                              ; $644b: $00
	inc  h                                           ; $644c: $24
	add  c                                           ; $644d: $81
	ret  c                                           ; $644e: $d8

	dec  c                                           ; $644f: $0d
	sbc  b                                           ; $6450: $98
	ret  c                                           ; $6451: $d8

	sbc  b                                           ; $6452: $98
	ret  c                                           ; $6453: $d8

	sbc  b                                           ; $6454: $98
	ret  c                                           ; $6455: $d8

	sbc  b                                           ; $6456: $98
	ret  c                                           ; $6457: $d8

	sbc  b                                           ; $6458: $98
	ret  c                                           ; $6459: $d8

	jr   @-$26                                       ; $645a: $18 $d8

	add  b                                           ; $645c: $80
	sbc  a                                           ; $645d: $9f
	add  b                                           ; $645e: $80
	sbc  [hl]                                        ; $645f: $9e
	add  b                                           ; $6460: $80
	sbc  a                                           ; $6461: $9f
	add  b                                           ; $6462: $80
	sbc  [hl]                                        ; $6463: $9e
	add  b                                           ; $6464: $80
	sbc  l                                           ; $6465: $9d
	add  b                                           ; $6466: $80
	sbc  d                                           ; $6467: $9a
	add  b                                           ; $6468: $80
	sbc  l                                           ; $6469: $9d
	add  b                                           ; $646a: $80
	sbc  d                                           ; $646b: $9a
	ld   bc, $5535                                   ; $646c: $01 $35 $55
	add  b                                           ; $646f: $80
	xor  d                                           ; $6470: $aa
	add  b                                           ; $6471: $80
	ld   d, b                                        ; $6472: $50
	add  b                                           ; $6473: $80
	and  b                                           ; $6474: $a0
	add  b                                           ; $6475: $80
	ld   b, b                                        ; $6476: $40
	add  b                                           ; $6477: $80
	add  b                                           ; $6478: $80
	add  d                                           ; $6479: $82
	nop                                              ; $647a: $00
	add  b                                           ; $647b: $80
	ld   d, l                                        ; $647c: $55
	add  b                                           ; $647d: $80
	ld   [bc], a                                     ; $647e: $02
	add  b                                           ; $647f: $80
	ld   bc, $0084                                   ; $6480: $01 $84 $00
	dec  b                                           ; $6483: $05
	inc  c                                           ; $6484: $0c
	nop                                              ; $6485: $00
	ld   e, $00                                      ; $6486: $1e $00
	ld   b, d                                        ; $6488: $42
	ld   d, b                                        ; $6489: $50
	add  b                                           ; $648a: $80
	and  b                                           ; $648b: $a0
	add  b                                           ; $648c: $80
	ld   d, b                                        ; $648d: $50
	add  b                                           ; $648e: $80
	and  b                                           ; $648f: $a0
	add  b                                           ; $6490: $80
	ld   d, b                                        ; $6491: $50
	add  b                                           ; $6492: $80
	jr   nz, @-$7e                                   ; $6493: $20 $80

	db   $10                                         ; $6495: $10
	add  b                                           ; $6496: $80
	jr   nz, jr_07d_649a                             ; $6497: $20 $01

	ld   [hl], b                                     ; $6499: $70

jr_07d_649a:
	db   $10                                         ; $649a: $10
	add  b                                           ; $649b: $80
	add  b                                           ; $649c: $80
	add  b                                           ; $649d: $80
	nop                                              ; $649e: $00
	add  b                                           ; $649f: $80
	add  b                                           ; $64a0: $80
	add  b                                           ; $64a1: $80
	nop                                              ; $64a2: $00
	add  b                                           ; $64a3: $80
	add  b                                           ; $64a4: $80
	add  d                                           ; $64a5: $82
	nop                                              ; $64a6: $00
	nop                                              ; $64a7: $00
	ld   h, b                                        ; $64a8: $60
	adc  l                                           ; $64a9: $8d
	ld   bc, $d501                                   ; $64aa: $01 $01 $d5
	rst  $10                                         ; $64ad: $d7
	add  b                                           ; $64ae: $80
	xor  e                                           ; $64af: $ab
	add  b                                           ; $64b0: $80
	rst  $10                                         ; $64b1: $d7
	add  b                                           ; $64b2: $80
	db   $eb                                         ; $64b3: $eb
	add  b                                           ; $64b4: $80
	ld   [hl], a                                     ; $64b5: $77
	add  b                                           ; $64b6: $80
	dec  hl                                          ; $64b7: $2b
	add  b                                           ; $64b8: $80
	rla                                              ; $64b9: $17
	inc  bc                                          ; $64ba: $03
	adc  c                                           ; $64bb: $89
	adc  e                                           ; $64bc: $8b
	ld   d, c                                        ; $64bd: $51
	sub  b                                           ; $64be: $90
	adc  h                                           ; $64bf: $8c
	add  b                                           ; $64c0: $80
	ld   bc, $09ce                                   ; $64c1: $01 $ce $09
	add  d                                           ; $64c4: $82
	ld   [$0980], sp                                 ; $64c5: $08 $80 $09
	add  [hl]                                        ; $64c8: $86
	ld   [$fa01], sp                                 ; $64c9: $08 $01 $fa
	jp   c, $d980                                    ; $64cc: $da $80 $d9

	add  b                                           ; $64cf: $80
	jp   c, $d980                                    ; $64d0: $da $80 $d9

	add  b                                           ; $64d3: $80
	jp   c, $d980                                    ; $64d4: $da $80 $d9

	add  b                                           ; $64d7: $80
	jp   c, $d980                                    ; $64d8: $da $80 $d9

	dec  b                                           ; $64db: $05
	ld   l, c                                        ; $64dc: $69
	ld   c, a                                        ; $64dd: $4f
	and  h                                           ; $64de: $a4
	and  a                                           ; $64df: $a7
	ld   b, d                                        ; $64e0: $42
	ld   b, e                                        ; $64e1: $43
	add  b                                           ; $64e2: $80
	and  e                                           ; $64e3: $a3
	add  b                                           ; $64e4: $80
	ld   d, e                                        ; $64e5: $53
	add  b                                           ; $64e6: $80
	add  e                                           ; $64e7: $83
	add  d                                           ; $64e8: $82
	inc  bc                                          ; $64e9: $03
	inc  bc                                          ; $64ea: $03
	cp   d                                           ; $64eb: $ba
	ld   h, [hl]                                     ; $64ec: $66
	ld   l, $6e                                      ; $64ed: $2e $6e
	add  b                                           ; $64ef: $80
	ld   h, [hl]                                     ; $64f0: $66
	adc  b                                           ; $64f1: $88
	ld   l, [hl]                                     ; $64f2: $6e
	ld   [bc], a                                     ; $64f3: $02
	db   $e3                                         ; $64f4: $e3
	inc  bc                                          ; $64f5: $03
	add  e                                           ; $64f6: $83
	add  a                                           ; $64f7: $87
	inc  bc                                          ; $64f8: $03
	add  b                                           ; $64f9: $80
	ldh  a, [rSC]                                    ; $64fa: $f0 $02
	add  e                                           ; $64fc: $83
	di                                               ; $64fd: $f3
	rrca                                             ; $64fe: $0f
	add  l                                           ; $64ff: $85
	add  c                                           ; $6500: $81

jr_07d_6501:
	add  b                                           ; $6501: $80
	add  b                                           ; $6502: $80
	rlca                                             ; $6503: $07
	pop  bc                                          ; $6504: $c1
	add  b                                           ; $6505: $80
	and  b                                           ; $6506: $a0
	ld   b, b                                        ; $6507: $40
	ld   e, b                                        ; $6508: $58
	ldh  [rAUD3LEN], a                               ; $6509: $e0 $1b
	db   $fc                                         ; $650b: $fc
	add  d                                           ; $650c: $82
	nop                                              ; $650d: $00
	add  b                                           ; $650e: $80
	add  b                                           ; $650f: $80
	add  b                                           ; $6510: $80
	ld   h, b                                        ; $6511: $60
	ld   b, $98                                      ; $6512: $06 $98
	jr   @+$69                                       ; $6514: $18 $67

	rlca                                             ; $6516: $07
	ld   [de], a                                     ; $6517: $12
	inc  bc                                          ; $6518: $03
	ld   c, [hl]                                     ; $6519: $4e
	adc  e                                           ; $651a: $8b
	add  b                                           ; $651b: $80
	add  hl, bc                                      ; $651c: $09
	nop                                              ; $651d: $00
	add  b                                           ; $651e: $80
	di                                               ; $651f: $f3
	db   $fc                                         ; $6520: $fc
	db   $10                                         ; $6521: $10
	ld   a, a                                        ; $6522: $7f
	adc  a                                           ; $6523: $8f
	cp   a                                           ; $6524: $bf
	ld   b, a                                        ; $6525: $47
	ld   e, a                                        ; $6526: $5f
	add  b                                           ; $6527: $80
	xor  a                                           ; $6528: $af
	inc  bc                                          ; $6529: $03
	ld   d, e                                        ; $652a: $53
	ld   d, a                                        ; $652b: $57
	rla                                              ; $652c: $17
	rst  $20                                         ; $652d: $e7
	add  b                                           ; $652e: $80
	dec  de                                          ; $652f: $1b
	ld   [bc], a                                     ; $6530: $02
	ld   [bc], a                                     ; $6531: $02
	ld   a, b                                        ; $6532: $78
	ld   a, c                                        ; $6533: $79
	add  b                                           ; $6534: $80
	cp   $89                                         ; $6535: $fe $89
	rst  $38                                         ; $6537: $ff
	inc  c                                           ; $6538: $0c
	inc  bc                                          ; $6539: $03
	nop                                              ; $653a: $00
	inc  bc                                          ; $653b: $03
	nop                                              ; $653c: $00
	ret  nz                                          ; $653d: $c0

	nop                                              ; $653e: $00
	jr   nz, jr_07d_6501                             ; $653f: $20 $c0

	ret  c                                           ; $6541: $d8

	ldh  [$e6], a                                    ; $6542: $e0 $e6
	ld   hl, sp-$07                                  ; $6544: $f8 $f9
	add  b                                           ; $6546: $80
	cp   $05                                         ; $6547: $fe $05
	rst  $38                                         ; $6549: $ff
	ret  nz                                          ; $654a: $c0

	add  b                                           ; $654b: $80
	nop                                              ; $654c: $00
	add  b                                           ; $654d: $80
	ret  nz                                          ; $654e: $c0

	add  a                                           ; $654f: $87
	nop                                              ; $6550: $00
	inc  b                                           ; $6551: $04
	ret  nz                                          ; $6552: $c0

	nop                                              ; $6553: $00
	ld   a, $fd                                      ; $6554: $3e $fd
	db   $fc                                         ; $6556: $fc
	adc  e                                           ; $6557: $8b
	rst  $38                                         ; $6558: $ff
	inc  bc                                          ; $6559: $03
	cp   c                                           ; $655a: $b9
	ld   h, [hl]                                     ; $655b: $66
	ld   l, $6e                                      ; $655c: $2e $6e
	add  b                                           ; $655e: $80
	ld   h, [hl]                                     ; $655f: $66
	adc  b                                           ; $6560: $88
	ld   l, [hl]                                     ; $6561: $6e
	nop                                              ; $6562: $00
	ld   h, b                                        ; $6563: $60
	adc  l                                           ; $6564: $8d
	and  $00                                         ; $6565: $e6 $00
	jp   hl                                          ; $6567: $e9


	add  b                                           ; $6568: $80
	ret  nz                                          ; $6569: $c0

	adc  e                                           ; $656a: $8b
	ldh  a, [$0c]                                    ; $656b: $f0 $0c
	ld   l, a                                        ; $656d: $6f
	ret  c                                           ; $656e: $d8

	nop                                              ; $656f: $00
	ret  c                                           ; $6570: $d8

	nop                                              ; $6571: $00
	ret  c                                           ; $6572: $d8

	ld   b, b                                        ; $6573: $40
	ret  c                                           ; $6574: $d8

	ret  nz                                          ; $6575: $c0

	ret  c                                           ; $6576: $d8

	ret  nz                                          ; $6577: $c0

	ret  c                                           ; $6578: $d8

	ret  nc                                          ; $6579: $d0

	add  c                                           ; $657a: $81
	ret  c                                           ; $657b: $d8

	ld   bc, $0828                                   ; $657c: $01 $28 $08
	add  h                                           ; $657f: $84
	ld   a, [bc]                                     ; $6580: $0a
	add  [hl]                                        ; $6581: $86
	dec  bc                                          ; $6582: $0b
	ld   bc, $dafa                                   ; $6583: $01 $fa $da
	add  b                                           ; $6586: $80
	reti                                             ; $6587: $d9


	add  b                                           ; $6588: $80
	jp   c, $d980                                    ; $6589: $da $80 $d9

	add  b                                           ; $658c: $80
	jp   c, $d980                                    ; $658d: $da $80 $d9

	add  b                                           ; $6590: $80
	jp   c, $d902                                    ; $6591: $da $02 $d9

	pop  bc                                          ; $6594: $c1
	add  $89                                         ; $6595: $c6 $89
	ld   l, [hl]                                     ; $6597: $6e
	nop                                              ; $6598: $00
	ld   l, d                                        ; $6599: $6a
	add  c                                           ; $659a: $81
	ld   l, [hl]                                     ; $659b: $6e
	nop                                              ; $659c: $00
	ld   l, h                                        ; $659d: $6c
	adc  l                                           ; $659e: $8d
	ret  c                                           ; $659f: $d8

	nop                                              ; $65a0: $00
	dec  hl                                          ; $65a1: $2b
	add  a                                           ; $65a2: $87
	dec  bc                                          ; $65a3: $0b
	add  b                                           ; $65a4: $80
	add  hl, bc                                      ; $65a5: $09
	add  d                                           ; $65a6: $82
	ld   [$fa00], sp                                 ; $65a7: $08 $00 $fa
	adc  h                                           ; $65aa: $8c
	ld   l, [hl]                                     ; $65ab: $6e
	ld   bc, $4c4e                                   ; $65ac: $01 $4e $4c
	add  c                                           ; $65af: $81
	and  $01                                         ; $65b0: $e6 $01
	pop  hl                                          ; $65b2: $e1
	rst  $20                                         ; $65b3: $e7
	add  b                                           ; $65b4: $80
	db   $e3                                         ; $65b5: $e3
	add  b                                           ; $65b6: $80
	pop  hl                                          ; $65b7: $e1
	add  e                                           ; $65b8: $83
	ldh  [$80], a                                    ; $65b9: $e0 $80
	nop                                              ; $65bb: $00
	add  c                                           ; $65bc: $81
	ret  c                                           ; $65bd: $d8

	ld   bc, $c018                                   ; $65be: $01 $18 $c0
	add  b                                           ; $65c1: $80
	add  b                                           ; $65c2: $80
	add  b                                           ; $65c3: $80
	ldh  [$82], a                                    ; $65c4: $e0 $82
	nop                                              ; $65c6: $00
	ld   [bc], a                                     ; $65c7: $02
	ret  nc                                          ; $65c8: $d0

	ret  nz                                          ; $65c9: $c0

	ld   a, [de]                                     ; $65ca: $1a
	adc  e                                           ; $65cb: $8b
	xor  $04                                         ; $65cc: $ee $04
	db   $e4                                         ; $65ce: $e4
	ldh  [$dc], a                                    ; $65cf: $e0 $dc
	nop                                              ; $65d1: $00
	inc  a                                           ; $65d2: $3c
	add  b                                           ; $65d3: $80
	nop                                              ; $65d4: $00
	adc  c                                           ; $65d5: $89
	rst  $38                                         ; $65d6: $ff
	ld   [bc], a                                     ; $65d7: $02
	pop  hl                                          ; $65d8: $e1
	nop                                              ; $65d9: $00
	ld   e, $80                                      ; $65da: $1e $80
	nop                                              ; $65dc: $00
	adc  c                                           ; $65dd: $89
	rst  $38                                         ; $65de: $ff
	ld   [bc], a                                     ; $65df: $02
	ldh  a, [rP1]                                    ; $65e0: $f0 $00
	rrca                                             ; $65e2: $0f
	add  b                                           ; $65e3: $80
	nop                                              ; $65e4: $00
	adc  c                                           ; $65e5: $89
	rst  $38                                         ; $65e6: $ff
	ld   [bc], a                                     ; $65e7: $02
	rra                                              ; $65e8: $1f
	nop                                              ; $65e9: $00
	ldh  [$80], a                                    ; $65ea: $e0 $80
	nop                                              ; $65ec: $00
	add  c                                           ; $65ed: $81
	ldh  a, [$80]                                    ; $65ee: $f0 $80
	ld   hl, sp+$01                                  ; $65f0: $f8 $01
	ldh  a, [$f8]                                    ; $65f2: $f0 $f8
	add  b                                           ; $65f4: $80
	db   $fc                                         ; $65f5: $fc
	ld   [bc], a                                     ; $65f6: $02
	ld   hl, sp-$04                                  ; $65f7: $f8 $fc
	inc  bc                                          ; $65f9: $03
	rst  $38                                         ; $65fa: $ff
	nop                                              ; $65fb: $00
	rst  $38                                         ; $65fc: $ff
	nop                                              ; $65fd: $00
	rst  $38                                         ; $65fe: $ff
	nop                                              ; $65ff: $00
	rst  $38                                         ; $6600: $ff
	nop                                              ; $6601: $00
	rst  $38                                         ; $6602: $ff
	nop                                              ; $6603: $00
	sbc  b                                           ; $6604: $98
	nop                                              ; $6605: $00
	ld   b, a                                        ; $6606: $47
	ld   bc, $0000                                   ; $6607: $01 $00 $00
	add  b                                           ; $660a: $80
	ld   a, [bc]                                     ; $660b: $0a
	add  b                                           ; $660c: $80
	dec  b                                           ; $660d: $05
	add  b                                           ; $660e: $80
	ld   a, [bc]                                     ; $660f: $0a
	add  b                                           ; $6610: $80
	dec  b                                           ; $6611: $05
	add  b                                           ; $6612: $80
	ld   a, [bc]                                     ; $6613: $0a
	rla                                              ; $6614: $17
	dec  b                                           ; $6615: $05
	inc  b                                           ; $6616: $04
	rrca                                             ; $6617: $0f
	inc  c                                           ; $6618: $0c
	rrca                                             ; $6619: $0f
	inc  de                                          ; $661a: $13
	and  c                                           ; $661b: $a1
	and  a                                           ; $661c: $a7
	ld   h, l                                        ; $661d: $65
	ld   a, h                                        ; $661e: $7c
	add  a                                           ; $661f: $87
	add  c                                           ; $6620: $81
	rra                                              ; $6621: $1f
	rlca                                             ; $6622: $07
	ld   a, a                                        ; $6623: $7f
	ld   c, a                                        ; $6624: $4f
	rst  $38                                         ; $6625: $ff
	adc  a                                           ; $6626: $8f
	rst  $38                                         ; $6627: $ff
	rra                                              ; $6628: $1f
	rst  $38                                         ; $6629: $ff
	sbc  e                                           ; $662a: $9b
	daa                                              ; $662b: $27
	rlca                                             ; $662c: $07
	adc  e                                           ; $662d: $8b
	daa                                              ; $662e: $27
	nop                                              ; $662f: $00
	ei                                               ; $6630: $fb
	adc  l                                           ; $6631: $8d
	ld   h, a                                        ; $6632: $67
	nop                                              ; $6633: $00
	cp   a                                           ; $6634: $bf
	sbc  c                                           ; $6635: $99
	rst  $38                                         ; $6636: $ff
	inc  b                                           ; $6637: $04
	cp   $ff                                         ; $6638: $fe $ff
	db   $fd                                         ; $663a: $fd
	db   $fc                                         ; $663b: $fc
	cp   $83                                         ; $663c: $fe $83
	db   $fd                                         ; $663e: $fd
	add  d                                           ; $663f: $82
	db   $fc                                         ; $6640: $fc
	add  b                                           ; $6641: $80
	db   $fd                                         ; $6642: $fd
	dec  b                                           ; $6643: $05
	ld   a, a                                        ; $6644: $7f
	ei                                               ; $6645: $fb
	rst  $38                                         ; $6646: $ff
	rst  $30                                         ; $6647: $f7
	xor  a                                           ; $6648: $af
	rst  JumpTable                                         ; $6649: $df
	add  b                                           ; $664a: $80
	cp   a                                           ; $664b: $bf
	add  b                                           ; $664c: $80
	ld   a, a                                        ; $664d: $7f
	add  b                                           ; $664e: $80
	rst  $38                                         ; $664f: $ff
	add  b                                           ; $6650: $80
	ld   a, [bc]                                     ; $6651: $0a
	add  h                                           ; $6652: $84
	rst  $38                                         ; $6653: $ff
	add  d                                           ; $6654: $82
	ei                                               ; $6655: $fb
	add  d                                           ; $6656: $82
	rst  $30                                         ; $6657: $f7
	add  b                                           ; $6658: $80
	and  b                                           ; $6659: $a0
	add  d                                           ; $665a: $82
	rst  $28                                         ; $665b: $ef
	add  b                                           ; $665c: $80
	rst  JumpTable                                         ; $665d: $df
	nop                                              ; $665e: $00
	rst  $38                                         ; $665f: $ff
	add  b                                           ; $6660: $80
	xor  b                                           ; $6661: $a8
	add  b                                           ; $6662: $80
	ld   d, b                                        ; $6663: $50
	add  b                                           ; $6664: $80
	xor  b                                           ; $6665: $a8
	add  b                                           ; $6666: $80
	ld   d, b                                        ; $6667: $50
	add  b                                           ; $6668: $80
	rst  $38                                         ; $6669: $ff
	add  b                                           ; $666a: $80
	ld   d, b                                        ; $666b: $50
	add  b                                           ; $666c: $80
	xor  b                                           ; $666d: $a8
	add  b                                           ; $666e: $80
	ld   d, b                                        ; $666f: $50
	add  b                                           ; $6670: $80
	ld   c, e                                        ; $6671: $4b
	add  b                                           ; $6672: $80
	ld   d, l                                        ; $6673: $55
	add  b                                           ; $6674: $80
	ld   c, e                                        ; $6675: $4b
	inc  bc                                          ; $6676: $03
	ld   d, l                                        ; $6677: $55
	ld   d, h                                        ; $6678: $54
	cp   $ff                                         ; $6679: $fe $ff
	add  b                                           ; $667b: $80
	ld   d, l                                        ; $667c: $55
	add  b                                           ; $667d: $80
	ld   c, e                                        ; $667e: $4b
	ld   bc, $5d55                                   ; $667f: $01 $55 $5d
	add  c                                           ; $6682: $81
	ldh  a, [rP1]                                    ; $6683: $f0 $00
	ld   hl, sp-$7f                                  ; $6685: $f8 $81
	db   $fc                                         ; $6687: $fc
	ld   [bc], a                                     ; $6688: $02
	inc  b                                           ; $6689: $04
	rlca                                             ; $668a: $07
	rst  $38                                         ; $668b: $ff
	add  h                                           ; $668c: $84
	ld   a, [$2a80]                                  ; $668d: $fa $80 $2a
	add  b                                           ; $6690: $80
	dec  d                                           ; $6691: $15
	add  b                                           ; $6692: $80
	ld   a, [hl+]                                    ; $6693: $2a
	inc  bc                                          ; $6694: $03
	dec  d                                           ; $6695: $15
	ld   [bc], a                                     ; $6696: $02
	add  sp, -$01                                    ; $6697: $e8 $ff
	add  b                                           ; $6699: $80
	dec  d                                           ; $669a: $15
	add  b                                           ; $669b: $80
	ld   a, [hl+]                                    ; $669c: $2a
	ld   de, $ca15                                   ; $669d: $11 $15 $ca
	ld   a, a                                        ; $66a0: $7f

jr_07d_66a1:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66a1: $cf
	cp   a                                           ; $66a2: $bf
	rst  $28                                         ; $66a3: $ef
	rst  JumpTable                                         ; $66a4: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66a5: $cf
	rst  JumpTable                                         ; $66a6: $df
	rlca                                             ; $66a7: $07
	rrca                                             ; $66a8: $0f
	di                                               ; $66a9: $f3
	rst  $30                                         ; $66aa: $f7
	ld   sp, hl                                      ; $66ab: $f9
	ei                                               ; $66ac: $fb
	db   $fc                                         ; $66ad: $fc
	db   $fd                                         ; $66ae: $fd
	nop                                              ; $66af: $00
	adc  c                                           ; $66b0: $89
	cp   $04                                         ; $66b1: $fe $04
	db   $fc                                         ; $66b3: $fc
	cp   $f8                                         ; $66b4: $fe $f8
	cp   $da                                         ; $66b6: $fe $da
	adc  l                                           ; $66b8: $8d
	ccf                                              ; $66b9: $3f
	jr   nz, jr_07d_66a1                             ; $66ba: $20 $e5

	rrca                                             ; $66bc: $0f
	nop                                              ; $66bd: $00
	rrca                                             ; $66be: $0f
	nop                                              ; $66bf: $00
	rrca                                             ; $66c0: $0f
	nop                                              ; $66c1: $00
	rrca                                             ; $66c2: $0f
	nop                                              ; $66c3: $00
	rrca                                             ; $66c4: $0f
	nop                                              ; $66c5: $00
	rrca                                             ; $66c6: $0f
	nop                                              ; $66c7: $00
	rrca                                             ; $66c8: $0f
	nop                                              ; $66c9: $00
	rrca                                             ; $66ca: $0f
	ld   e, d                                        ; $66cb: $5a
	rst  $38                                         ; $66cc: $ff
	rrca                                             ; $66cd: $0f
	rst  $38                                         ; $66ce: $ff
	rlca                                             ; $66cf: $07
	rst  $38                                         ; $66d0: $ff
	inc  bc                                          ; $66d1: $03
	rst  $38                                         ; $66d2: $ff
	ld   bc, $00ff                                   ; $66d3: $01 $ff $00
	rst  $38                                         ; $66d6: $ff
	nop                                              ; $66d7: $00
	rst  $38                                         ; $66d8: $ff
	nop                                              ; $66d9: $00
	rst  $38                                         ; $66da: $ff
	xor  [hl]                                        ; $66db: $ae
	adc  l                                           ; $66dc: $8d
	daa                                              ; $66dd: $27
	nop                                              ; $66de: $00
	ei                                               ; $66df: $fb
	adc  l                                           ; $66e0: $8d
	ld   h, a                                        ; $66e1: $67
	nop                                              ; $66e2: $00
	cp   a                                           ; $66e3: $bf
	adc  c                                           ; $66e4: $89
	rst  $38                                         ; $66e5: $ff
	add  b                                           ; $66e6: $80
	cp   $0f                                         ; $66e7: $fe $0f
	db   $fc                                         ; $66e9: $fc
	db   $fd                                         ; $66ea: $fd
	ld   sp, hl                                      ; $66eb: $f9
	ld   a, [$f4f0]                                  ; $66ec: $fa $f0 $f4
	ldh  [$e8], a                                    ; $66ef: $e0 $e8
	ret  nz                                          ; $66f1: $c0

	ret  nc                                          ; $66f2: $d0

	add  b                                           ; $66f3: $80
	and  b                                           ; $66f4: $a0
	nop                                              ; $66f5: $00
	ld   b, b                                        ; $66f6: $40
	nop                                              ; $66f7: $00
	add  c                                           ; $66f8: $81
	add  b                                           ; $66f9: $80
	nop                                              ; $66fa: $00
	ld   bc, $ff9f                                   ; $66fb: $01 $9f $ff
	add  b                                           ; $66fe: $80
	ldh  [$03], a                                    ; $66ff: $e0 $03
	rst  $38                                         ; $6701: $ff
	rst  JumpTable                                         ; $6702: $df
	rst  $38                                         ; $6703: $ff
	cp   a                                           ; $6704: $bf
	adc  b                                           ; $6705: $88
	rst  $38                                         ; $6706: $ff
	add  b                                           ; $6707: $80
	nop                                              ; $6708: $00
	adc  b                                           ; $6709: $88
	rst  $38                                         ; $670a: $ff
	add  b                                           ; $670b: $80
	cp   $80                                         ; $670c: $fe $80
	rst  JumpTable                                         ; $670e: $df
	add  b                                           ; $670f: $80
	nop                                              ; $6710: $00
	add  d                                           ; $6711: $82
	cp   a                                           ; $6712: $bf
	add  h                                           ; $6713: $84
	ld   a, a                                        ; $6714: $7f
	add  c                                           ; $6715: $81
	rst  $38                                         ; $6716: $ff
	inc  bc                                          ; $6717: $03
	xor  b                                           ; $6718: $a8
	jr   z, jr_07d_679a                              ; $6719: $28 $7f

	rst  $38                                         ; $671b: $ff
	add  b                                           ; $671c: $80
	xor  d                                           ; $671d: $aa
	add  b                                           ; $671e: $80
	push de                                          ; $671f: $d5
	add  b                                           ; $6720: $80
	xor  d                                           ; $6721: $aa
	add  b                                           ; $6722: $80
	push de                                          ; $6723: $d5
	add  b                                           ; $6724: $80
	ld   a, [$ff80]                                  ; $6725: $fa $80 $ff
	add  b                                           ; $6728: $80
	ld   c, e                                        ; $6729: $4b
	add  b                                           ; $672a: $80
	rst  $38                                         ; $672b: $ff
	add  b                                           ; $672c: $80
	ld   c, e                                        ; $672d: $4b
	add  b                                           ; $672e: $80
	ld   d, a                                        ; $672f: $57
	add  b                                           ; $6730: $80
	ld   c, e                                        ; $6731: $4b
	add  b                                           ; $6732: $80
	ld   d, a                                        ; $6733: $57
	rlca                                             ; $6734: $07
	rst  $28                                         ; $6735: $ef
	xor  a                                           ; $6736: $af
	cp   a                                           ; $6737: $bf
	rst  $38                                         ; $6738: $ff
	ld   sp, hl                                      ; $6739: $f9

jr_07d_673a:
	add  hl, bc                                      ; $673a: $09
	rrca                                             ; $673b: $0f
	rst  $38                                         ; $673c: $ff
	add  b                                           ; $673d: $80
	ld   sp, hl                                      ; $673e: $f9
	adc  b                                           ; $673f: $88
	ld   hl, sp+$03                                  ; $6740: $f8 $03
	ld   a, [hl+]                                    ; $6742: $2a
	jr   nz, jr_07d_673a                             ; $6743: $20 $f5

	rst  $38                                         ; $6745: $ff
	add  b                                           ; $6746: $80
	ld   a, [hl+]                                    ; $6747: $2a
	add  b                                           ; $6748: $80
	sub  l                                           ; $6749: $95
	add  b                                           ; $674a: $80
	xor  d                                           ; $674b: $aa
	add  b                                           ; $674c: $80
	sub  l                                           ; $674d: $95
	add  b                                           ; $674e: $80
	xor  d                                           ; $674f: $aa
	ld   [bc], a                                     ; $6750: $02
	sub  l                                           ; $6751: $95
	sub  h                                           ; $6752: $94
	cp   $80                                         ; $6753: $fe $80
	nop                                              ; $6755: $00
	adc  d                                           ; $6756: $8a
	rst  $38                                         ; $6757: $ff
	db   $10                                         ; $6758: $10
	xor  d                                           ; $6759: $aa
	cp   $00                                         ; $675a: $fe $00
	ld   a, [hl]                                     ; $675c: $7e
	nop                                              ; $675d: $00
	ld   a, [hl]                                     ; $675e: $7e
	ld   b, b                                        ; $675f: $40
	cp   [hl]                                        ; $6760: $be
	jr   nz, @-$20                                   ; $6761: $20 $de

	sub  b                                           ; $6763: $90
	xor  $c0                                         ; $6764: $ee $c0
	xor  $f0                                         ; $6766: $ee $f0
	or   $22                                         ; $6768: $f6 $22
	add  a                                           ; $676a: $87
	ccf                                              ; $676b: $3f
	ld   b, $2f                                      ; $676c: $06 $2f
	ccf                                              ; $676e: $3f
	dec  h                                           ; $676f: $25
	ccf                                              ; $6770: $3f
	jr   nz, jr_07d_67b2                             ; $6771: $20 $3f

	push af                                          ; $6773: $f5
	add  [hl]                                        ; $6774: $86
	nop                                              ; $6775: $00
	add  b                                           ; $6776: $80
	ldh  [rSB], a                                    ; $6777: $e0 $01
	add  b                                           ; $6779: $80
	add  d                                           ; $677a: $82
	add  c                                           ; $677b: $81
	nop                                              ; $677c: $00
	nop                                              ; $677d: $00
	ld   [bc], a                                     ; $677e: $02
	sub  [hl]                                        ; $677f: $96

Jump_07d_6780:
	nop                                              ; $6780: $00
	add  b                                           ; $6781: $80
	ld   a, [hl+]                                    ; $6782: $2a
	add  b                                           ; $6783: $80
	dec  d                                           ; $6784: $15
	add  b                                           ; $6785: $80
	ld   a, [bc]                                     ; $6786: $0a
	add  b                                           ; $6787: $80
	dec  b                                           ; $6788: $05
	add  [hl]                                        ; $6789: $86
	nop                                              ; $678a: $00
	add  b                                           ; $678b: $80
	and  b                                           ; $678c: $a0
	add  b                                           ; $678d: $80
	ld   d, b                                        ; $678e: $50
	add  b                                           ; $678f: $80
	and  b                                           ; $6790: $a0
	dec  b                                           ; $6791: $05
	ld   d, b                                        ; $6792: $50
	add  b                                           ; $6793: $80
	rst  $38                                         ; $6794: $ff
	add  a                                           ; $6795: $87
	rst  $38                                         ; $6796: $ff
	ld   d, a                                        ; $6797: $57
	add  h                                           ; $6798: $84
	rrca                                             ; $6799: $0f

jr_07d_679a:
	dec  b                                           ; $679a: $05
	rst  $38                                         ; $679b: $ff
	cpl                                              ; $679c: $2f
	rst  $38                                         ; $679d: $ff
	adc  a                                           ; $679e: $8f
	rst  $38                                         ; $679f: $ff
	ld   e, a                                        ; $67a0: $5f
	xor  l                                           ; $67a1: $ad
	nop                                              ; $67a2: $00
	db   $10                                         ; $67a3: $10
	ret  nc                                          ; $67a4: $d0

	rst  $38                                         ; $67a5: $ff
	adc  a                                           ; $67a6: $8f
	rst  $38                                         ; $67a7: $ff
	adc  a                                           ; $67a8: $8f
	rst  $38                                         ; $67a9: $ff
	adc  a                                           ; $67aa: $8f
	rst  $38                                         ; $67ab: $ff
	adc  a                                           ; $67ac: $8f
	rst  $38                                         ; $67ad: $ff
	adc  a                                           ; $67ae: $8f
	rst  $38                                         ; $67af: $ff
	adc  a                                           ; $67b0: $8f
	rst  $38                                         ; $67b1: $ff

jr_07d_67b2:
	rst  ToBoot                                         ; $67b2: $c7
	rst  $38                                         ; $67b3: $ff
	rla                                              ; $67b4: $17
	sub  h                                           ; $67b5: $94
	nop                                              ; $67b6: $00
	add  b                                           ; $67b7: $80
	ld   bc, $0280                                   ; $67b8: $01 $80 $02
	add  b                                           ; $67bb: $80
	ld   bc, $0280                                   ; $67bc: $01 $80 $02
	add  b                                           ; $67bf: $80
	dec  b                                           ; $67c0: $05
	add  b                                           ; $67c1: $80
	and  b                                           ; $67c2: $a0
	add  b                                           ; $67c3: $80
	ld   d, b                                        ; $67c4: $50
	add  b                                           ; $67c5: $80
	and  b                                           ; $67c6: $a0
	add  b                                           ; $67c7: $80
	ld   d, b                                        ; $67c8: $50
	add  b                                           ; $67c9: $80
	and  b                                           ; $67ca: $a0
	add  b                                           ; $67cb: $80
	ld   d, b                                        ; $67cc: $50
	add  b                                           ; $67cd: $80
	and  b                                           ; $67ce: $a0
	ld   de, $8050                                   ; $67cf: $11 $50 $80
	rst  $38                                         ; $67d2: $ff
	rst  ToBoot                                         ; $67d3: $c7
	rst  $38                                         ; $67d4: $ff
	rst  ToBoot                                         ; $67d5: $c7
	rst  $38                                         ; $67d6: $ff
	rst  ToBoot                                         ; $67d7: $c7
	rst  $38                                         ; $67d8: $ff
	rst  ToBoot                                         ; $67d9: $c7
	rst  $38                                         ; $67da: $ff
	rst  ToBoot                                         ; $67db: $c7
	rst  $38                                         ; $67dc: $ff
	rst  ToBoot                                         ; $67dd: $c7
	rst  $38                                         ; $67de: $ff
	rst  ToBoot                                         ; $67df: $c7
	rst  $38                                         ; $67e0: $ff
	add  sp, -$73                                    ; $67e1: $e8 $8d
	rst  $38                                         ; $67e3: $ff
	ld   a, [bc]                                     ; $67e4: $0a
	ldh  a, [$fe]                                    ; $67e5: $f0 $fe
	or   $ff                                         ; $67e7: $f6 $ff
	ldh  a, [c]                                      ; $67e9: $f2
	rst  $38                                         ; $67ea: $ff
	ldh  a, [rIE]                                    ; $67eb: $f0 $ff
	ld   hl, sp-$01                                  ; $67ed: $f8 $ff
	db   $fd                                         ; $67ef: $fd
	add  e                                           ; $67f0: $83
	rst  $38                                         ; $67f1: $ff
	nop                                              ; $67f2: $00
	nop                                              ; $67f3: $00
	add  b                                           ; $67f4: $80
	and  b                                           ; $67f5: $a0
	add  b                                           ; $67f6: $80
	ld   d, b                                        ; $67f7: $50
	inc  d                                           ; $67f8: $14
	ldh  [$60], a                                    ; $67f9: $e0 $60
	ldh  a, [rAUD4LEN]                               ; $67fb: $f0 $20
	ldh  a, [rP1]                                    ; $67fd: $f0 $00

Call_07d_67ff:
	ldh  a, [rP1]                                    ; $67ff: $f0 $00
	ldh  a, [rP1]                                    ; $6801: $f0 $00
	ldh  a, [$b2]                                    ; $6803: $f0 $b2
	nop                                              ; $6805: $00
	jr   @-$1e                                       ; $6806: $18 $e0

	pop  hl                                          ; $6808: $e1
	ldh  [$ec], a                                    ; $6809: $e0 $ec
	ldh  [$e8], a                                    ; $680b: $e0 $e8
	nop                                              ; $680d: $00
	add  b                                           ; $680e: $80
	ld   bc, $0380                                   ; $680f: $01 $80 $03
	add  b                                           ; $6812: $80
	rra                                              ; $6813: $1f
	nop                                              ; $6814: $00
	rst  $38                                         ; $6815: $ff
	adc  [hl]                                        ; $6816: $8e
	nop                                              ; $6817: $00
	add  b                                           ; $6818: $80
	ld   [bc], a                                     ; $6819: $02
	add  b                                           ; $681a: $80
	ld   bc, $0280                                   ; $681b: $01 $80 $02
	add  b                                           ; $681e: $80
	ld   bc, $0086                                   ; $681f: $01 $86 $00
	add  b                                           ; $6822: $80
	and  b                                           ; $6823: $a0
	add  b                                           ; $6824: $80
	ld   d, b                                        ; $6825: $50
	add  b                                           ; $6826: $80
	and  b                                           ; $6827: $a0
	add  b                                           ; $6828: $80
	ld   d, b                                        ; $6829: $50
	add  b                                           ; $682a: $80
	and  b                                           ; $682b: $a0
	add  b                                           ; $682c: $80
	ld   d, b                                        ; $682d: $50
	add  b                                           ; $682e: $80
	jr   nz, jr_07d_6842                             ; $682f: $20 $11

	ld   d, b                                        ; $6831: $50
	add  b                                           ; $6832: $80
	rst  $38                                         ; $6833: $ff

jr_07d_6834:
	adc  a                                           ; $6834: $8f
	rst  $38                                         ; $6835: $ff
	adc  a                                           ; $6836: $8f
	rst  $38                                         ; $6837: $ff
	rst  ToBoot                                         ; $6838: $c7
	rst  $38                                         ; $6839: $ff
	rst  ToBoot                                         ; $683a: $c7
	rst  $38                                         ; $683b: $ff
	rst  ToBoot                                         ; $683c: $c7
	rst  $38                                         ; $683d: $ff
	rst  ToBoot                                         ; $683e: $c7
	rst  $38                                         ; $683f: $ff
	rst  ToBoot                                         ; $6840: $c7
	rst  $38                                         ; $6841: $ff

jr_07d_6842:
	rla                                              ; $6842: $17
	xor  h                                           ; $6843: $ac
	nop                                              ; $6844: $00
	ld   de, $c010                                   ; $6845: $11 $10 $c0
	rst  $38                                         ; $6848: $ff
	rst  ToBoot                                         ; $6849: $c7
	rst  $38                                         ; $684a: $ff
	rst  ToBoot                                         ; $684b: $c7
	rst  $38                                         ; $684c: $ff
	rst  ToBoot                                         ; $684d: $c7
	rst  $38                                         ; $684e: $ff
	rst  ToBoot                                         ; $684f: $c7
	rst  $38                                         ; $6850: $ff
	rst  ToBoot                                         ; $6851: $c7

jr_07d_6852:
	rst  $38                                         ; $6852: $ff
	rst  ToBoot                                         ; $6853: $c7
	rst  $38                                         ; $6854: $ff
	rst  ToBoot                                         ; $6855: $c7

jr_07d_6856:
	rst  $38                                         ; $6856: $ff
	rla                                              ; $6857: $17
	add  d                                           ; $6858: $82
	nop                                              ; $6859: $00

jr_07d_685a:
	dec  bc                                          ; $685a: $0b
	add  b                                           ; $685b: $80
	nop                                              ; $685c: $00
	ldh  [$80], a                                    ; $685d: $e0 $80
	ld   hl, sp-$20                                  ; $685f: $f8 $e0
	cp   $f8                                         ; $6861: $fe $f8
	rst  $38                                         ; $6863: $ff
	cp   $ff                                         ; $6864: $fe $ff
	nop                                              ; $6866: $00
	add  b                                           ; $6867: $80
	ld   [bc], a                                     ; $6868: $02
	add  b                                           ; $6869: $80
	dec  b                                           ; $686a: $05
	add  b                                           ; $686b: $80
	ld   [bc], a                                     ; $686c: $02
	add  b                                           ; $686d: $80
	dec  b                                           ; $686e: $05
	add  b                                           ; $686f: $80
	ld   [bc], a                                     ; $6870: $02
	add  b                                           ; $6871: $80

jr_07d_6872:
	dec  b                                           ; $6872: $05
	inc  bc                                          ; $6873: $03
	jp   nz, $f502                                   ; $6874: $c2 $02 $f5

	dec  [hl]                                        ; $6877: $35
	add  b                                           ; $6878: $80
	and  b                                           ; $6879: $a0
	add  b                                           ; $687a: $80
	ld   d, b                                        ; $687b: $50
	add  b                                           ; $687c: $80
	and  b                                           ; $687d: $a0
	add  b                                           ; $687e: $80
	ld   d, b                                        ; $687f: $50
	add  b                                           ; $6880: $80
	and  b                                           ; $6881: $a0
	add  b                                           ; $6882: $80
	ld   d, b                                        ; $6883: $50
	add  b                                           ; $6884: $80
	and  b                                           ; $6885: $a0
	ld   de, $8050                                   ; $6886: $11 $50 $80
	rst  $38                                         ; $6889: $ff
	rst  ToBoot                                         ; $688a: $c7
	rst  $38                                         ; $688b: $ff
	rst  ToBoot                                         ; $688c: $c7
	rst  $38                                         ; $688d: $ff
	rst  ToBoot                                         ; $688e: $c7
	rst  $38                                         ; $688f: $ff
	rst  ToBoot                                         ; $6890: $c7
	rst  $38                                         ; $6891: $ff
	rst  ToBoot                                         ; $6892: $c7
	rst  $38                                         ; $6893: $ff
	rst  ToBoot                                         ; $6894: $c7
	rst  $38                                         ; $6895: $ff
	add  a                                           ; $6896: $87
	rst  $38                                         ; $6897: $ff
	xor  b                                           ; $6898: $a8
	sbc  l                                           ; $6899: $9d
	rst  $38                                         ; $689a: $ff
	adc  [hl]                                        ; $689b: $8e
	ldh  a, [rAUD1SWEEP]                             ; $689c: $f0 $10
	sub  h                                           ; $689e: $94
	ld   a, a                                        ; $689f: $7f
	pop  bc                                          ; $68a0: $c1
	rst  $38                                         ; $68a1: $ff
	ld   bc, $c3ff                                   ; $68a2: $01 $ff $c3
	rst  $38                                         ; $68a5: $ff
	rst  ToBoot                                         ; $68a6: $c7
	rst  $38                                         ; $68a7: $ff
	rst  ToBoot                                         ; $68a8: $c7
	rst  $38                                         ; $68a9: $ff
	rst  ToBoot                                         ; $68aa: $c7
	rst  $38                                         ; $68ab: $ff
	rst  ToBoot                                         ; $68ac: $c7
	rst  $38                                         ; $68ad: $ff
	rla                                              ; $68ae: $17
	sbc  [hl]                                        ; $68af: $9e
	nop                                              ; $68b0: $00
	add  b                                           ; $68b1: $80
	jr   nz, jr_07d_6834                             ; $68b2: $20 $80

	db   $10                                         ; $68b4: $10
	add  b                                           ; $68b5: $80
	nop                                              ; $68b6: $00
	add  b                                           ; $68b7: $80
	db   $10                                         ; $68b8: $10
	add  l                                           ; $68b9: $85
	nop                                              ; $68ba: $00
	db   $10                                         ; $68bb: $10
	ret  nc                                          ; $68bc: $d0

	rst  $38                                         ; $68bd: $ff
	rst  ToBoot                                         ; $68be: $c7
	rst  $38                                         ; $68bf: $ff
	rst  ToBoot                                         ; $68c0: $c7
	rst  $38                                         ; $68c1: $ff
	rst  ToBoot                                         ; $68c2: $c7
	rst  $38                                         ; $68c3: $ff
	rst  ToBoot                                         ; $68c4: $c7
	rst  $38                                         ; $68c5: $ff
	add  a                                           ; $68c6: $87
	rst  $38                                         ; $68c7: $ff
	add  a                                           ; $68c8: $87
	rst  $38                                         ; $68c9: $ff
	add  a                                           ; $68ca: $87
	rst  $38                                         ; $68cb: $ff
	ld   d, a                                        ; $68cc: $57
	sbc  [hl]                                        ; $68cd: $9e
	nop                                              ; $68ce: $00
	add  b                                           ; $68cf: $80
	jr   nz, jr_07d_6852                             ; $68d0: $20 $80

	db   $10                                         ; $68d2: $10
	add  b                                           ; $68d3: $80
	jr   nz, jr_07d_6856                             ; $68d4: $20 $80

	ld   d, b                                        ; $68d6: $50
	add  b                                           ; $68d7: $80
	jr   nz, jr_07d_685a                             ; $68d8: $20 $80

	ld   d, b                                        ; $68da: $50
	add  b                                           ; $68db: $80
	jr   nz, jr_07d_68e0                             ; $68dc: $20 $02

	ld   d, b                                        ; $68de: $50
	inc  l                                           ; $68df: $2c

jr_07d_68e0:
	add  e                                           ; $68e0: $83
	add  b                                           ; $68e1: $80
	pop  hl                                          ; $68e2: $e1
	add  b                                           ; $68e3: $80
	ldh  a, [$80]                                    ; $68e4: $f0 $80
	db   $fc                                         ; $68e6: $fc
	add  b                                           ; $68e7: $80
	rst  $38                                         ; $68e8: $ff
	add  b                                           ; $68e9: $80
	ccf                                              ; $68ea: $3f
	ld   [bc], a                                     ; $68eb: $02
	rlca                                             ; $68ec: $07
	rst  ToBoot                                         ; $68ed: $c7
	ret  nz                                          ; $68ee: $c0

	add  b                                           ; $68ef: $80
	jr   c, jr_07d_6872                              ; $68f0: $38 $80

	add  $89                                         ; $68f2: $c6 $89
	ld   a, [$8a01]                                  ; $68f4: $fa $01 $8a
	ld   a, [bc]                                     ; $68f7: $0a
	add  b                                           ; $68f8: $80
	ld   [bc], a                                     ; $68f9: $02
	nop                                              ; $68fa: $00
	ld   a, d                                        ; $68fb: $7a
	add  b                                           ; $68fc: $80
	ld   [bc], a                                     ; $68fd: $02
	adc  e                                           ; $68fe: $8b
	ld   a, [$f902]                                  ; $68ff: $fa $02 $f9
	db   $fc                                         ; $6902: $fc
	cp   $80                                         ; $6903: $fe $80
	ld   hl, sp-$79                                  ; $6905: $f8 $87
	db   $f4                                         ; $6907: $f4
	nop                                              ; $6908: $00
	push af                                          ; $6909: $f5
	add  b                                           ; $690a: $80
	ldh  a, [$82]                                    ; $690b: $f0 $82
	ldh  a, [c]                                      ; $690d: $f2
	sub  h                                           ; $690e: $94
	ld   a, [$e680]                                  ; $690f: $fa $80 $e6
	ld   b, $9c                                      ; $6912: $06 $9c
	sbc  a                                           ; $6914: $9f
	ld   [hl], e                                     ; $6915: $73
	ld   a, a                                        ; $6916: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6917: $cf
	rst  $38                                         ; $6918: $ff
	ccf                                              ; $6919: $3f
	add  b                                           ; $691a: $80
	rst  $38                                         ; $691b: $ff
	add  b                                           ; $691c: $80
	ld   a, [bc]                                     ; $691d: $0a
	add  l                                           ; $691e: $85
	rst  $38                                         ; $691f: $ff
	sub  e                                           ; $6920: $93
	nop                                              ; $6921: $00
	inc  b                                           ; $6922: $04
	rst  $38                                         ; $6923: $ff
	nop                                              ; $6924: $00
	rst  $38                                         ; $6925: $ff
	add  b                                           ; $6926: $80
	ld   a, a                                        ; $6927: $7f
	add  c                                           ; $6928: $81
	nop                                              ; $6929: $00
	ld   [bc], a                                     ; $692a: $02
	db   $fc                                         ; $692b: $fc
	ld   e, l                                        ; $692c: $5d
	ld   e, [hl]                                     ; $692d: $5e
	add  e                                           ; $692e: $83
	nop                                              ; $692f: $00
	ld   bc, $00c0                                   ; $6930: $01 $c0 $00
	add  b                                           ; $6933: $80
	ret  nz                                          ; $6934: $c0

	nop                                              ; $6935: $00
	ccf                                              ; $6936: $3f
	add  c                                           ; $6937: $81
	nop                                              ; $6938: $00
	add  b                                           ; $6939: $80
	ccf                                              ; $693a: $3f
	nop                                              ; $693b: $00
	pop  bc                                          ; $693c: $c1
	add  d                                           ; $693d: $82
	nop                                              ; $693e: $00
	nop                                              ; $693f: $00
	add  b                                           ; $6940: $80
	add  b                                           ; $6941: $80
	nop                                              ; $6942: $00
	add  b                                           ; $6943: $80
	add  b                                           ; $6944: $80
	add  b                                           ; $6945: $80
	nop                                              ; $6946: $00
	nop                                              ; $6947: $00
	add  b                                           ; $6948: $80
	add  c                                           ; $6949: $81
	nop                                              ; $694a: $00
	nop                                              ; $694b: $00
	pop  bc                                          ; $694c: $c1
	adc  d                                           ; $694d: $8a
	ld   a, [hl]                                     ; $694e: $7e
	add  b                                           ; $694f: $80
	ld   a, $02                                      ; $6950: $3e $02
	cp   [hl]                                        ; $6952: $be
	or   a                                           ; $6953: $b7
	ret  z                                           ; $6954: $c8

	add  b                                           ; $6955: $80
	call nc, $d880                                   ; $6956: $d4 $80 $d8
	add  d                                           ; $6959: $82
	call c, $1c01                                    ; $695a: $dc $01 $1c
	call c, $0080                                    ; $695d: $dc $80 $00
	ld   [bc], a                                     ; $6960: $02
	xor  c                                           ; $6961: $a9
	xor  b                                           ; $6962: $a8
	nop                                              ; $6963: $00
	add  h                                           ; $6964: $84

jr_07d_6965:
	ld   a, [hl]                                     ; $6965: $7e
	add  b                                           ; $6966: $80
	ld   a, b                                        ; $6967: $78
	add  b                                           ; $6968: $80
	ld   b, [hl]                                     ; $6969: $46
	add  b                                           ; $696a: $80
	jr   c, @+$07                                    ; $696b: $38 $05

	ret  nz                                          ; $696d: $c0

	ld   [$ff2a], a                                  ; $696e: $ea $2a $ff
	ldh  [$e1], a                                    ; $6971: $e0 $e1
	add  b                                           ; $6973: $80
	add  b                                           ; $6974: $80
	dec  b                                           ; $6975: $05
	nop                                              ; $6976: $00
	jr   c, jr_07d_6979                              ; $6977: $38 $00

jr_07d_6979:
	ld   a, l                                        ; $6979: $7d
	jr   c, jr_07d_69b6                              ; $697a: $38 $3a

	add  c                                           ; $697c: $81
	jr   c, @+$0c                                    ; $697d: $38 $0a

	ld   b, c                                        ; $697f: $41
	nop                                              ; $6980: $00
	db   $dd                                         ; $6981: $dd
	nop                                              ; $6982: $00
	jr   jr_07d_6965                                 ; $6983: $18 $e0

	pop  hl                                          ; $6985: $e1
	ldh  [$ec], a                                    ; $6986: $e0 $ec
	ldh  [$e8], a                                    ; $6988: $e0 $e8
	add  c                                           ; $698a: $81
	nop                                              ; $698b: $00
	add  b                                           ; $698c: $80
	ld   bc, $0380                                   ; $698d: $01 $80 $03
	adc  [hl]                                        ; $6990: $8e
	ld   [de], a                                     ; $6991: $12
	add  d                                           ; $6992: $82
	rst  $38                                         ; $6993: $ff
	ld   [bc], a                                     ; $6994: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6995: $cf
	rst  $38                                         ; $6996: $ff
	scf                                              ; $6997: $37
	add  c                                           ; $6998: $81
	rst  $30                                         ; $6999: $f7
	inc  bc                                          ; $699a: $03
	rst  ToBoot                                         ; $699b: $c7
	rst  $30                                         ; $699c: $f7
	ld   c, a                                        ; $699d: $4f
	adc  a                                           ; $699e: $8f
	add  b                                           ; $699f: $80
	rst  $38                                         ; $69a0: $ff
	adc  [hl]                                        ; $69a1: $8e
	ld   [de], a                                     ; $69a2: $12
	adc  [hl]                                        ; $69a3: $8e
	rst  $38                                         ; $69a4: $ff
	add  b                                           ; $69a5: $80
	inc  de                                          ; $69a6: $13
	add  b                                           ; $69a7: $80
	ld   [de], a                                     ; $69a8: $12
	add  b                                           ; $69a9: $80
	inc  de                                          ; $69aa: $13
	adc  b                                           ; $69ab: $88
	ld   [de], a                                     ; $69ac: $12
	add  d                                           ; $69ad: $82
	ld   a, a                                        ; $69ae: $7f
	add  b                                           ; $69af: $80
	ccf                                              ; $69b0: $3f
	add  h                                           ; $69b1: $84
	cp   a                                           ; $69b2: $bf
	add  e                                           ; $69b3: $83
	rst  $38                                         ; $69b4: $ff
	sbc  l                                           ; $69b5: $9d

jr_07d_69b6:
	nop                                              ; $69b6: $00
	nop                                              ; $69b7: $00
	ld   a, $8d                                      ; $69b8: $3e $8d
	nop                                              ; $69ba: $00
	ld   b, $41                                      ; $69bb: $06 $41
	ld   b, b                                        ; $69bd: $40
	and  e                                           ; $69be: $a3
	sub  e                                           ; $69bf: $93
	add  sp, $24                                     ; $69c0: $e8 $24
	inc  a                                           ; $69c2: $3c
	add  c                                           ; $69c3: $81
	ld   a, [hl]                                     ; $69c4: $7e
	ld   bc, $4e6e                                   ; $69c5: $01 $6e $4e
	add  b                                           ; $69c8: $80
	ld   b, d                                        ; $69c9: $42
	inc  b                                           ; $69ca: $04
	ld   e, [hl]                                     ; $69cb: $5e
	ld   b, b                                        ; $69cc: $40
	pop  bc                                          ; $69cd: $c1
	ret  nz                                          ; $69ce: $c0

	ld   b, b                                        ; $69cf: $40
	adc  c                                           ; $69d0: $89
	ret  nz                                          ; $69d1: $c0

	add  b                                           ; $69d2: $80
	ret  nc                                          ; $69d3: $d0

	nop                                              ; $69d4: $00
	pop  bc                                          ; $69d5: $c1
	add  [hl]                                        ; $69d6: $86
	cp   [hl]                                        ; $69d7: $be
	add  b                                           ; $69d8: $80
	ld   a, $83                                      ; $69d9: $3e $83
	ld   a, [hl]                                     ; $69db: $7e
	nop                                              ; $69dc: $00
	add  c                                           ; $69dd: $81
	sbc  l                                           ; $69de: $9d
	nop                                              ; $69df: $00
	ld   [bc], a                                     ; $69e0: $02
	ccf                                              ; $69e1: $3f
	nop                                              ; $69e2: $00
	ret  nz                                          ; $69e3: $c0

	add  a                                           ; $69e4: $87
	nop                                              ; $69e5: $00
	add  b                                           ; $69e6: $80
	ld   bc, $0380                                   ; $69e7: $01 $80 $03
	add  b                                           ; $69ea: $80
	rlca                                             ; $69eb: $07
	add  b                                           ; $69ec: $80
	rrca                                             ; $69ed: $0f
	add  b                                           ; $69ee: $80
	ld   e, $80                                      ; $69ef: $1e $80
	add  hl, sp                                      ; $69f1: $39
	add  b                                           ; $69f2: $80
	ld   h, a                                        ; $69f3: $67
	add  b                                           ; $69f4: $80
	rst  JumpTable                                         ; $69f5: $df
	add  b                                           ; $69f6: $80
	cp   a                                           ; $69f7: $bf
	add  b                                           ; $69f8: $80
	ld   a, a                                        ; $69f9: $7f
	adc  [hl]                                        ; $69fa: $8e
	ld   [de], a                                     ; $69fb: $12
	adc  [hl]                                        ; $69fc: $8e
	rst  $38                                         ; $69fd: $ff
	add  h                                           ; $69fe: $84
	ld   [de], a                                     ; $69ff: $12
	add  b                                           ; $6a00: $80
	inc  de                                          ; $6a01: $13
	nop                                              ; $6a02: $00
	db   $10                                         ; $6a03: $10
	add  e                                           ; $6a04: $83
	inc  de                                          ; $6a05: $13
	ld   bc, $1211                                   ; $6a06: $01 $11 $12
	add  [hl]                                        ; $6a09: $86
	rst  $38                                         ; $6a0a: $ff
	add  [hl]                                        ; $6a0b: $86
	ld   a, a                                        ; $6a0c: $7f
	adc  [hl]                                        ; $6a0d: $8e
	ld   [de], a                                     ; $6a0e: $12
	adc  a                                           ; $6a0f: $8f
	rst  $38                                         ; $6a10: $ff
	rst  $38                                         ; $6a11: $ff
	nop                                              ; $6a12: $00
	rst  $38                                         ; $6a13: $ff
	nop                                              ; $6a14: $00
	sbc  e                                           ; $6a15: $9b
	nop                                              ; $6a16: $00
	ld   a, [$0600]                                  ; $6a17: $fa $00 $06
	ld   a, [bc]                                     ; $6a1a: $0a
	rrca                                             ; $6a1b: $0f
	dec  bc                                          ; $6a1c: $0b
	rrca                                             ; $6a1d: $0f
	inc  c                                           ; $6a1e: $0c
	rrca                                             ; $6a1f: $0f
	dec  bc                                          ; $6a20: $0b
	add  e                                           ; $6a21: $83
	rrca                                             ; $6a22: $0f
	ld   [$0f0e], sp                                 ; $6a23: $08 $0e $0f
	ld   [$f90f], sp                                 ; $6a26: $08 $0f $f9
	rst  $38                                         ; $6a29: $ff
	db   $dd                                         ; $6a2a: $dd
	rst  $38                                         ; $6a2b: $ff
	or   $81                                         ; $6a2c: $f6 $81
	rst  $38                                         ; $6a2e: $ff
	ld   [bc], a                                     ; $6a2f: $02
	cp   a                                           ; $6a30: $bf
	rst  $38                                         ; $6a31: $ff
	db   $db                                         ; $6a32: $db
	add  c                                           ; $6a33: $81
	rst  $38                                         ; $6a34: $ff
	ld   [$fffd], sp                                 ; $6a35: $08 $fd $ff
	ld   c, e                                        ; $6a38: $4b
	rst  $38                                         ; $6a39: $ff
	ld   h, e                                        ; $6a3a: $63
	rst  $38                                         ; $6a3b: $ff
	ret  z                                           ; $6a3c: $c8

	rst  $38                                         ; $6a3d: $ff
	pop  hl                                          ; $6a3e: $e1
	add  c                                           ; $6a3f: $81
	rst  $38                                         ; $6a40: $ff
	nop                                              ; $6a41: $00
	cp   $81                                         ; $6a42: $fe $81
	rst  $38                                         ; $6a44: $ff
	ld   [de], a                                     ; $6a45: $12
	cp   $ff                                         ; $6a46: $fe $ff
	ld   c, d                                        ; $6a48: $4a
	rst  $38                                         ; $6a49: $ff
	dec  sp                                          ; $6a4a: $3b
	rst  $38                                         ; $6a4b: $ff

jr_07d_6a4c:
	call nz, Call_07d_67ff                           ; $6a4c: $c4 $ff $67
	rst  $38                                         ; $6a4f: $ff
	db   $dd                                         ; $6a50: $dd
	rst  $38                                         ; $6a51: $ff
	rst  $28                                         ; $6a52: $ef
	rst  $38                                         ; $6a53: $ff
	ei                                               ; $6a54: $fb
	rst  $38                                         ; $6a55: $ff
	ld   [hl], a                                     ; $6a56: $77
	rst  $38                                         ; $6a57: $ff
	ld   h, $81                                      ; $6a58: $26 $81
	rst  $38                                         ; $6a5a: $ff
	ld   b, $58                                      ; $6a5b: $06 $58
	rst  $38                                         ; $6a5d: $ff
	sbc  e                                           ; $6a5e: $9b
	rst  $38                                         ; $6a5f: $ff
	ld   l, l                                        ; $6a60: $6d
	rst  $38                                         ; $6a61: $ff
	ei                                               ; $6a62: $fb
	add  c                                           ; $6a63: $81
	rst  $38                                         ; $6a64: $ff
	ld   [bc], a                                     ; $6a65: $02
	cp   a                                           ; $6a66: $bf
	rst  $38                                         ; $6a67: $ff
	ld   [$ff81], a                                  ; $6a68: $ea $81 $ff
	ld   b, $cf                                      ; $6a6b: $06 $cf
	rst  $38                                         ; $6a6d: $ff
	ld   a, [$eeff]                                  ; $6a6e: $fa $ff $ee
	rst  $38                                         ; $6a71: $ff
	cp   $81                                         ; $6a72: $fe $81
	rst  $38                                         ; $6a74: $ff
	inc  d                                           ; $6a75: $14
	ld   [hl], a                                     ; $6a76: $77
	rst  $38                                         ; $6a77: $ff
	ld   d, c                                        ; $6a78: $51
	rst  $38                                         ; $6a79: $ff
	ldh  [rIE], a                                    ; $6a7a: $e0 $ff
	rla                                              ; $6a7c: $17
	rst  $38                                         ; $6a7d: $ff
	ld   sp, hl                                      ; $6a7e: $f9
	rst  $38                                         ; $6a7f: $ff
	xor  a                                           ; $6a80: $af
	rst  $38                                         ; $6a81: $ff
	ld   h, a                                        ; $6a82: $67
	rst  $38                                         ; $6a83: $ff
	cp   $ff                                         ; $6a84: $fe $ff
	cp   e                                           ; $6a86: $bb
	rst  $38                                         ; $6a87: $ff
	ld   l, [hl]                                     ; $6a88: $6e
	rst  $38                                         ; $6a89: $ff
	xor  e                                           ; $6a8a: $ab
	add  c                                           ; $6a8b: $81
	db   $fd                                         ; $6a8c: $fd
	ld   [bc], a                                     ; $6a8d: $02
	cp   l                                           ; $6a8e: $bd
	db   $fd                                         ; $6a8f: $fd
	call $fd80                                       ; $6a90: $cd $80 $fd
	dec  bc                                          ; $6a93: $0b
	push af                                          ; $6a94: $f5
	ld   d, l                                        ; $6a95: $55
	push de                                          ; $6a96: $d5
	sub  h                                           ; $6a97: $94
	push de                                          ; $6a98: $d5
	scf                                              ; $6a99: $37
	rst  $38                                         ; $6a9a: $ff
	rst  $28                                         ; $6a9b: $ef
	rst  $38                                         ; $6a9c: $ff
	rst  JumpTable                                         ; $6a9d: $df
	rst  $38                                         ; $6a9e: $ff
	ld   sp, hl                                      ; $6a9f: $f9
	add  h                                           ; $6aa0: $84
	rst  $38                                         ; $6aa1: $ff
	inc  bc                                          ; $6aa2: $03
	adc  a                                           ; $6aa3: $8f
	di                                               ; $6aa4: $f3
	rst  $38                                         ; $6aa5: $ff
	or   $81                                         ; $6aa6: $f6 $81
	rst  $38                                         ; $6aa8: $ff
	inc  b                                           ; $6aa9: $04
	cp   $ff                                         ; $6aaa: $fe $ff
	ei                                               ; $6aac: $fb
	rst  $38                                         ; $6aad: $ff
	adc  a                                           ; $6aae: $8f
	add  b                                           ; $6aaf: $80
	rst  $38                                         ; $6ab0: $ff
	add  b                                           ; $6ab1: $80
	cp   $05                                         ; $6ab2: $fe $05
	ld   hl, sp-$19                                  ; $6ab4: $f8 $e7
	rst  $38                                         ; $6ab6: $ff
	or   b                                           ; $6ab7: $b0
	ld   hl, sp-$18                                  ; $6ab8: $f8 $e8
	add  b                                           ; $6aba: $80
	ld   hl, sp+$05                                  ; $6abb: $f8 $05
	ldh  [hScriptOpcodeParams], a                                    ; $6abd: $e0 $a0
	ldh  [$df], a                                    ; $6abf: $e0 $df
	rst  $38                                         ; $6ac1: $ff
	ret  nz                                          ; $6ac2: $c0

	add  c                                           ; $6ac3: $81
	nop                                              ; $6ac4: $00
	add  b                                           ; $6ac5: $80
	rst  $38                                         ; $6ac6: $ff
	ld   [bc], a                                     ; $6ac7: $02
	rrca                                             ; $6ac8: $0f
	ccf                                              ; $6ac9: $3f
	jr   nc, jr_07d_6a4c                             ; $6aca: $30 $80

	ccf                                              ; $6acc: $3f
	add  b                                           ; $6acd: $80
	rrca                                             ; $6ace: $0f
	ld   [bc], a                                     ; $6acf: $02
	ld   bc, $fffe                                   ; $6ad0: $01 $fe $ff
	add  d                                           ; $6ad3: $82
	nop                                              ; $6ad4: $00
	add  b                                           ; $6ad5: $80
	rst  $38                                         ; $6ad6: $ff
	dec  b                                           ; $6ad7: $05
	ld   b, b                                        ; $6ad8: $40
	rst  $38                                         ; $6ad9: $ff
	and  [hl]                                        ; $6ada: $a6
	rst  $38                                         ; $6adb: $ff
	rlca                                             ; $6adc: $07
	db   $e3                                         ; $6add: $e3
	add  b                                           ; $6ade: $80
	di                                               ; $6adf: $f3
	ld   [bc], a                                     ; $6ae0: $02
	ld   [hl], e                                     ; $6ae1: $73
	di                                               ; $6ae2: $f3
	dec  sp                                          ; $6ae3: $3b
	add  c                                           ; $6ae4: $81
	ei                                               ; $6ae5: $fb
	add  hl, bc                                      ; $6ae6: $09
	sbc  [hl]                                        ; $6ae7: $9e
	rst  $38                                         ; $6ae8: $ff
	inc  hl                                          ; $6ae9: $23

Jump_07d_6aea:
	rst  $38                                         ; $6aea: $ff
	ccf                                              ; $6aeb: $3f
	rst  $38                                         ; $6aec: $ff
	cp   b                                           ; $6aed: $b8
	rst  $38                                         ; $6aee: $ff
	ld   h, a                                        ; $6aef: $67
	rst  $38                                         ; $6af0: $ff
	add  b                                           ; $6af1: $80
	db   $fc                                         ; $6af2: $fc
	inc  bc                                          ; $6af3: $03
	ret  nc                                          ; $6af4: $d0

	ldh  a, [$c4]                                    ; $6af5: $f0 $c4
	add  h                                           ; $6af7: $84
	add  b                                           ; $6af8: $80
	and  b                                           ; $6af9: $a0
	inc  b                                           ; $6afa: $04
	add  b                                           ; $6afb: $80
	rst  $38                                         ; $6afc: $ff
	adc  a                                           ; $6afd: $8f
	rst  $38                                         ; $6afe: $ff
	ld   a, h                                        ; $6aff: $7c
	add  c                                           ; $6b00: $81
	rst  $38                                         ; $6b01: $ff
	add  b                                           ; $6b02: $80
	rra                                              ; $6b03: $1f
	nop                                              ; $6b04: $00
	inc  c                                           ; $6b05: $0c
	add  b                                           ; $6b06: $80
	rrca                                             ; $6b07: $0f
	add  b                                           ; $6b08: $80
	inc  c                                           ; $6b09: $0c
	add  b                                           ; $6b0a: $80
	ld   [$ff81], sp                                 ; $6b0b: $08 $81 $ff
	nop                                              ; $6b0e: $00
	rlca                                             ; $6b0f: $07
	add  c                                           ; $6b10: $81
	rst  $38                                         ; $6b11: $ff
	ld   [bc], a                                     ; $6b12: $02
	add  $ff                                         ; $6b13: $c6 $ff
	ld   a, $80                                      ; $6b15: $3e $80
	rst  $38                                         ; $6b17: $ff
	add  c                                           ; $6b18: $81
	rlca                                             ; $6b19: $07
	ld   [bc], a                                     ; $6b1a: $02
	rst  $38                                         ; $6b1b: $ff
	rrca                                             ; $6b1c: $0f
	dec  bc                                          ; $6b1d: $0b
	adc  e                                           ; $6b1e: $8b
	rrca                                             ; $6b1f: $0f
	inc  b                                           ; $6b20: $04
	di                                               ; $6b21: $f3
	rst  $38                                         ; $6b22: $ff
	ld   [hl], e                                     ; $6b23: $73
	rst  $38                                         ; $6b24: $ff
	cp   a                                           ; $6b25: $bf
	add  l                                           ; $6b26: $85
	rst  $38                                         ; $6b27: $ff
	nop                                              ; $6b28: $00
	ei                                               ; $6b29: $fb
	add  c                                           ; $6b2a: $81
	rst  $38                                         ; $6b2b: $ff
	ld   b, $16                                      ; $6b2c: $06 $16
	rst  $38                                         ; $6b2e: $ff
	ld   e, [hl]                                     ; $6b2f: $5e
	rst  $38                                         ; $6b30: $ff
	rst  $20                                         ; $6b31: $e7
	rst  $38                                         ; $6b32: $ff
	cp   $83                                         ; $6b33: $fe $83
	rst  $38                                         ; $6b35: $ff
	nop                                              ; $6b36: $00
	db   $fd                                         ; $6b37: $fd
	add  c                                           ; $6b38: $81
	rst  $38                                         ; $6b39: $ff
	inc  b                                           ; $6b3a: $04
	ld   d, b                                        ; $6b3b: $50
	rst  $38                                         ; $6b3c: $ff
	xor  a                                           ; $6b3d: $af
	rst  $38                                         ; $6b3e: $ff
	db   $dd                                         ; $6b3f: $dd
	add  e                                           ; $6b40: $83
	rst  $38                                         ; $6b41: $ff
	nop                                              ; $6b42: $00
	rst  $28                                         ; $6b43: $ef
	add  e                                           ; $6b44: $83
	rst  $38                                         ; $6b45: $ff
	ld   a, [bc]                                     ; $6b46: $0a
	xor  c                                           ; $6b47: $a9
	rst  $38                                         ; $6b48: $ff
	ld   c, a                                        ; $6b49: $4f
	rst  $38                                         ; $6b4a: $ff
	ld   a, c                                        ; $6b4b: $79
	rst  $38                                         ; $6b4c: $ff
	cp   a                                           ; $6b4d: $bf
	rst  $38                                         ; $6b4e: $ff
	cp   [hl]                                        ; $6b4f: $be
	rst  $38                                         ; $6b50: $ff
	ld   a, a                                        ; $6b51: $7f
	add  e                                           ; $6b52: $83
	rst  $38                                         ; $6b53: $ff
	ld   [$ff58], sp                                 ; $6b54: $08 $58 $ff
	and  l                                           ; $6b57: $a5
	rst  $38                                         ; $6b58: $ff
	call c, $dfff                                    ; $6b59: $dc $ff $df
	rst  $38                                         ; $6b5c: $ff
	rst  $28                                         ; $6b5d: $ef
	add  c                                           ; $6b5e: $81
	rst  $38                                         ; $6b5f: $ff
	inc  c                                           ; $6b60: $0c
	ei                                               ; $6b61: $fb
	rst  $38                                         ; $6b62: $ff
	ei                                               ; $6b63: $fb
	rst  $38                                         ; $6b64: $ff
	and  h                                           ; $6b65: $a4
	di                                               ; $6b66: $f3
	ld   [hl], a                                     ; $6b67: $77
	rst  $30                                         ; $6b68: $f7
	jp   nc, $53f3                                   ; $6b69: $d2 $f3 $53

	di                                               ; $6b6c: $f3
	db   $d3                                         ; $6b6d: $d3
	add  e                                           ; $6b6e: $83
	di                                               ; $6b6f: $f3
	inc  bc                                          ; $6b70: $03
	cp   e                                           ; $6b71: $bb
	ei                                               ; $6b72: $fb
	add  $57                                         ; $6b73: $c6 $57
	add  b                                           ; $6b75: $80
	ld   c, a                                        ; $6b76: $4f
	inc  b                                           ; $6b77: $04
	ld   c, l                                        ; $6b78: $4d
	ld   c, a                                        ; $6b79: $4f
	ld   c, e                                        ; $6b7a: $4b
	ld   c, a                                        ; $6b7b: $4f
	ld   b, a                                        ; $6b7c: $47
	add  d                                           ; $6b7d: $82
	ld   c, a                                        ; $6b7e: $4f
	add  b                                           ; $6b7f: $80
	ld   e, [hl]                                     ; $6b80: $5e
	ld   bc, $3e7e                                   ; $6b81: $01 $7e $3e
	add  b                                           ; $6b84: $80
	add  c                                           ; $6b85: $81
	nop                                              ; $6b86: $00
	add  b                                           ; $6b87: $80
	add  b                                           ; $6b88: $80
	rst  $38                                         ; $6b89: $ff
	nop                                              ; $6b8a: $00
	add  b                                           ; $6b8b: $80
	add  c                                           ; $6b8c: $81
	nop                                              ; $6b8d: $00
	add  b                                           ; $6b8e: $80
	rst  $38                                         ; $6b8f: $ff
	add  e                                           ; $6b90: $83
	nop                                              ; $6b91: $00
	add  b                                           ; $6b92: $80
	ret  nz                                          ; $6b93: $c0

	nop                                              ; $6b94: $00

jr_07d_6b95:
	nop                                              ; $6b95: $00
	add  b                                           ; $6b96: $80
	rst  $38                                         ; $6b97: $ff
	add  d                                           ; $6b98: $82
	nop                                              ; $6b99: $00
	add  b                                           ; $6b9a: $80
	rst  $38                                         ; $6b9b: $ff
	add  [hl]                                        ; $6b9c: $86
	nop                                              ; $6b9d: $00
	add  b                                           ; $6b9e: $80
	rst  $38                                         ; $6b9f: $ff
	add  d                                           ; $6ba0: $82
	nop                                              ; $6ba1: $00
	add  b                                           ; $6ba2: $80
	rst  $38                                         ; $6ba3: $ff
	add  [hl]                                        ; $6ba4: $86
	nop                                              ; $6ba5: $00
	add  b                                           ; $6ba6: $80
	rst  $38                                         ; $6ba7: $ff
	add  d                                           ; $6ba8: $82
	nop                                              ; $6ba9: $00
	add  b                                           ; $6baa: $80
	rst  $38                                         ; $6bab: $ff
	add  d                                           ; $6bac: $82
	nop                                              ; $6bad: $00
	dec  bc                                          ; $6bae: $0b
	rrca                                             ; $6baf: $0f
	ccf                                              ; $6bb0: $3f
	scf                                              ; $6bb1: $37
	rra                                              ; $6bb2: $1f
	rst  $28                                         ; $6bb3: $ef
	rst  $38                                         ; $6bb4: $ff
	dec  bc                                          ; $6bb5: $0b
	rlca                                             ; $6bb6: $07
	dec  b                                           ; $6bb7: $05
	rlca                                             ; $6bb8: $07
	ld   a, [$81ff]                                  ; $6bb9: $fa $ff $81
	inc  bc                                          ; $6bbc: $03
	ld   [bc], a                                     ; $6bbd: $02
	ld   bc, $0405                                   ; $6bbe: $01 $05 $04
	add  b                                           ; $6bc1: $80
	nop                                              ; $6bc2: $00
	add  b                                           ; $6bc3: $80
	add  e                                           ; $6bc4: $83
	dec  bc                                          ; $6bc5: $0b
	add  b                                           ; $6bc6: $80
	sub  b                                           ; $6bc7: $90
	pop  de                                          ; $6bc8: $d1
	call $c7cc                                       ; $6bc9: $cd $cc $c7
	rst  $20                                         ; $6bcc: $e7
	db   $e3                                         ; $6bcd: $e3
	ld   [hl], e                                     ; $6bce: $73
	pop  af                                          ; $6bcf: $f1
	ld   l, c                                        ; $6bd0: $69
	add  sp, -$80                                    ; $6bd1: $e8 $80
	dec  c                                           ; $6bd3: $0d
	add  b                                           ; $6bd4: $80
	add  b                                           ; $6bd5: $80
	add  b                                           ; $6bd6: $80
	dec  b                                           ; $6bd7: $05
	add  b                                           ; $6bd8: $80
	pop  bc                                          ; $6bd9: $c1

jr_07d_6bda:
	rlca                                             ; $6bda: $07
	jr   c, jr_07d_6b95                              ; $6bdb: $38 $b8

	adc  [hl]                                        ; $6bdd: $8e
	cp   $f0                                         ; $6bde: $fe $f0
	rst  $38                                         ; $6be0: $ff
	ld   h, l                                        ; $6be1: $65
	sbc  d                                           ; $6be2: $9a
	add  b                                           ; $6be3: $80
	push hl                                          ; $6be4: $e5
	add  b                                           ; $6be5: $80
	ld   a, e                                        ; $6be6: $7b
	add  b                                           ; $6be7: $80
	rst  $38                                         ; $6be8: $ff
	add  b                                           ; $6be9: $80
	ld   e, l                                        ; $6bea: $5d
	add  b                                           ; $6beb: $80
	ld   c, $80                                      ; $6bec: $0e $80
	ld   [bc], a                                     ; $6bee: $02
	ld   [bc], a                                     ; $6bef: $02
	nop                                              ; $6bf0: $00
	ei                                               ; $6bf1: $fb
	inc  b                                           ; $6bf2: $04
	add  l                                           ; $6bf3: $85
	nop                                              ; $6bf4: $00
	ld   [$ff7f], sp                                 ; $6bf5: $08 $7f $ff
	ld   a, a                                        ; $6bf8: $7f
	rst  $38                                         ; $6bf9: $ff
	cp   $ff                                         ; $6bfa: $fe $ff
	ld   sp, hl                                      ; $6bfc: $f9
	rst  $38                                         ; $6bfd: $ff
	rlca                                             ; $6bfe: $07
	add  l                                           ; $6bff: $85
	nop                                              ; $6c00: $00
	ld   [$ffc3], sp                                 ; $6c01: $08 $c3 $ff
	or   e                                           ; $6c04: $b3
	db   $fc                                         ; $6c05: $fc
	ld   c, [hl]                                     ; $6c06: $4e
	ldh  a, [c]                                      ; $6c07: $f2
	jr   nz, jr_07d_6bda                             ; $6c08: $20 $d0

	ccf                                              ; $6c0a: $3f
	add  l                                           ; $6c0b: $85
	nop                                              ; $6c0c: $00
	ld   bc, $609f                                   ; $6c0d: $01 $9f $60
	add  b                                           ; $6c10: $80

jr_07d_6c11:
	ld   h, h                                        ; $6c11: $64
	add  b                                           ; $6c12: $80
	ld   h, b                                        ; $6c13: $60
	add  b                                           ; $6c14: $80
	ld   h, h                                        ; $6c15: $64
	nop                                              ; $6c16: $00
	rst  $38                                         ; $6c17: $ff
	add  l                                           ; $6c18: $85
	nop                                              ; $6c19: $00
	nop                                              ; $6c1a: $00
	add  b                                           ; $6c1b: $80
	add  l                                           ; $6c1c: $85
	ld   h, b                                        ; $6c1d: $60
	ld   bc, $425d                                   ; $6c1e: $01 $5d $42
	add  b                                           ; $6c21: $80
	ld   d, d                                        ; $6c22: $52
	add  b                                           ; $6c23: $80
	ld   b, d                                        ; $6c24: $42
	add  b                                           ; $6c25: $80
	ld   d, d                                        ; $6c26: $52
	add  hl, bc                                      ; $6c27: $09
	ld   b, e                                        ; $6c28: $43
	ld   b, d                                        ; $6c29: $42
	ld   d, d                                        ; $6c2a: $52
	jp   nc, wIsDoubleSpeed                                   ; $6c2b: $d2 $02 $c2

	sub  d                                           ; $6c2e: $92
	jp   nc, $9293                                   ; $6c2f: $d2 $93 $92

	add  b                                           ; $6c32: $80
	db   $10                                         ; $6c33: $10
	add  b                                           ; $6c34: $80
	sub  d                                           ; $6c35: $92
	add  b                                           ; $6c36: $80
	db   $10                                         ; $6c37: $10
	add  b                                           ; $6c38: $80
	sub  d                                           ; $6c39: $92
	rlca                                             ; $6c3a: $07
	ldh  a, [rAUD1SWEEP]                             ; $6c3b: $f0 $10
	adc  d                                           ; $6c3d: $8a
	ld   [bc], a                                     ; $6c3e: $02
	add  a                                           ; $6c3f: $87
	nop                                              ; $6c40: $00
	adc  a                                           ; $6c41: $8f
	ld   h, b                                        ; $6c42: $60
	add  b                                           ; $6c43: $80
	ld   h, h                                        ; $6c44: $64
	add  b                                           ; $6c45: $80
	ld   h, b                                        ; $6c46: $60
	add  b                                           ; $6c47: $80
	ld   h, h                                        ; $6c48: $64
	add  b                                           ; $6c49: $80
	ld   h, b                                        ; $6c4a: $60
	add  b                                           ; $6c4b: $80
	ld   h, h                                        ; $6c4c: $64
	add  b                                           ; $6c4d: $80
	ld   h, b                                        ; $6c4e: $60
	add  b                                           ; $6c4f: $80
	ld   h, h                                        ; $6c50: $64
	nop                                              ; $6c51: $00
	ld   a, a                                        ; $6c52: $7f
	adc  l                                           ; $6c53: $8d
	ld   h, b                                        ; $6c54: $60
	jr   nc, jr_07d_6cb3                             ; $6c55: $30 $5c

	jp   nz, Jump_07d_52d2                           ; $6c57: $c2 $d2 $52

	ld   e, [hl]                                     ; $6c5a: $5e
	ld   e, a                                        ; $6c5b: $5f
	ld   d, c                                        ; $6c5c: $51
	ld   e, a                                        ; $6c5d: $5f
	ld   e, c                                        ; $6c5e: $59
	ld   d, c                                        ; $6c5f: $51
	ld   d, l                                        ; $6c60: $55
	ld   d, c                                        ; $6c61: $51
	ld   d, l                                        ; $6c62: $55
	ld   d, c                                        ; $6c63: $51
	ld   d, l                                        ; $6c64: $55
	ld   d, c                                        ; $6c65: $51
	ld   l, a                                        ; $6c66: $6f
	nop                                              ; $6c67: $00
	add  d                                           ; $6c68: $82
	nop                                              ; $6c69: $00
	sub  b                                           ; $6c6a: $90
	sbc  a                                           ; $6c6b: $9f
	sub  c                                           ; $6c6c: $91
	sbc  a                                           ; $6c6d: $9f
	sbc  c                                           ; $6c6e: $99
	sub  c                                           ; $6c6f: $91
	sub  l                                           ; $6c70: $95
	sub  c                                           ; $6c71: $91
	sub  l                                           ; $6c72: $95
	sub  c                                           ; $6c73: $91
	sub  l                                           ; $6c74: $95
	sub  c                                           ; $6c75: $91
	ld   a, l                                        ; $6c76: $7d
	nop                                              ; $6c77: $00
	inc  b                                           ; $6c78: $04
	nop                                              ; $6c79: $00
	add  h                                           ; $6c7a: $84
	ret  nz                                          ; $6c7b: $c0

	call nz, $c4c0                                   ; $6c7c: $c4 $c0 $c4
	ret  nz                                          ; $6c7f: $c0

	call nz, $c4c0                                   ; $6c80: $c4 $c0 $c4
	ret  nz                                          ; $6c83: $c0

	call nz, Call_07d_44c0                           ; $6c84: $c4 $c0 $44
	adc  l                                           ; $6c87: $8d
	nop                                              ; $6c88: $00
	ld   bc, $9fff                                   ; $6c89: $01 $ff $9f
	add  b                                           ; $6c8c: $80
	inc  h                                           ; $6c8d: $24
	add  b                                           ; $6c8e: $80
	jr   z, jr_07d_6c11                              ; $6c8f: $28 $80

	xor  c                                           ; $6c91: $a9
	add  b                                           ; $6c92: $80
	add  hl, sp                                      ; $6c93: $39
	add  b                                           ; $6c94: $80
	dec  b                                           ; $6c95: $05
	add  b                                           ; $6c96: $80
	add  a                                           ; $6c97: $87
	ld   [hl+], a                                    ; $6c98: $22
	push af                                          ; $6c99: $f5
	rst  $30                                         ; $6c9a: $f7
	stop                                             ; $6c9b: $10 $00
	jp   nz, $c2c0                                   ; $6c9d: $c2 $c0 $c2

	ret  nz                                          ; $6ca0: $c0

	ldh  [c], a                                      ; $6ca1: $e2
	ldh  [$ee], a                                    ; $6ca2: $e0 $ee
	sbc  h                                           ; $6ca4: $9c
	sbc  l                                           ; $6ca5: $9d
	db   $e3                                         ; $6ca6: $e3
	add  e                                           ; $6ca7: $83
	db   $fc                                         ; $6ca8: $fc
	cp   h                                           ; $6ca9: $bc
	di                                               ; $6caa: $f3
	ld   c, h                                        ; $6cab: $4c
	nop                                              ; $6cac: $00
	inc  b                                           ; $6cad: $04
	nop                                              ; $6cae: $00
	inc  b                                           ; $6caf: $04
	nop                                              ; $6cb0: $00
	inc  b                                           ; $6cb1: $04
	nop                                              ; $6cb2: $00

jr_07d_6cb3:
	inc  b                                           ; $6cb3: $04
	nop                                              ; $6cb4: $00
	add  h                                           ; $6cb5: $84
	add  b                                           ; $6cb6: $80
	sub  h                                           ; $6cb7: $94
	ld   [hl], b                                     ; $6cb8: $70
	ld   a, [hl]                                     ; $6cb9: $7e
	adc  [hl]                                        ; $6cba: $8e
	db   $10                                         ; $6cbb: $10
	adc  l                                           ; $6cbc: $8d
	nop                                              ; $6cbd: $00
	add  hl, bc                                      ; $6cbe: $09
	add  e                                           ; $6cbf: $83
	rst  $38                                         ; $6cc0: $ff
	sub  c                                           ; $6cc1: $91
	cp   $4e                                         ; $6cc2: $fe $4e
	ldh  a, [c]                                      ; $6cc4: $f2
	ld   [hl+], a                                    ; $6cc5: $22
	jp   nc, Jump_07d_4282                           ; $6cc6: $d2 $82 $42

	add  b                                           ; $6cc9: $80
	ld   d, d                                        ; $6cca: $52
	add  b                                           ; $6ccb: $80
	ld   b, d                                        ; $6ccc: $42
	add  b                                           ; $6ccd: $80
	ld   d, d                                        ; $6cce: $52
	inc  bc                                          ; $6ccf: $03
	ld   [de], a                                     ; $6cd0: $12
	sub  d                                           ; $6cd1: $92
	sub  b                                           ; $6cd2: $90
	db   $10                                         ; $6cd3: $10
	add  b                                           ; $6cd4: $80
	sub  d                                           ; $6cd5: $92
	add  b                                           ; $6cd6: $80
	db   $10                                         ; $6cd7: $10
	add  b                                           ; $6cd8: $80
	sub  d                                           ; $6cd9: $92
	add  b                                           ; $6cda: $80
	db   $10                                         ; $6cdb: $10
	add  b                                           ; $6cdc: $80
	sub  d                                           ; $6cdd: $92
	add  b                                           ; $6cde: $80
	db   $10                                         ; $6cdf: $10
	add  b                                           ; $6ce0: $80
	ld   h, b                                        ; $6ce1: $60
	add  b                                           ; $6ce2: $80
	ld   h, h                                        ; $6ce3: $64
	add  b                                           ; $6ce4: $80
	ld   h, b                                        ; $6ce5: $60
	add  b                                           ; $6ce6: $80
	ld   h, h                                        ; $6ce7: $64
	add  b                                           ; $6ce8: $80
	ld   h, b                                        ; $6ce9: $60
	add  b                                           ; $6cea: $80
	ld   h, h                                        ; $6ceb: $64
	add  b                                           ; $6cec: $80
	ld   h, b                                        ; $6ced: $60
	add  b                                           ; $6cee: $80
	ld   h, h                                        ; $6cef: $64
	nop                                              ; $6cf0: $00
	ld   a, a                                        ; $6cf1: $7f
	adc  l                                           ; $6cf2: $8d
	ld   h, b                                        ; $6cf3: $60
	dec  bc                                          ; $6cf4: $0b
	ld   e, h                                        ; $6cf5: $5c
	jp   nz, Jump_07d_52d2                           ; $6cf6: $c2 $d2 $52

	ld   b, d                                        ; $6cf9: $42
	jp   nz, $d292                                   ; $6cfa: $c2 $92 $d2

	add  d                                           ; $6cfd: $82
	jp   nz, Jump_07d_52d2                           ; $6cfe: $c2 $d2 $52

	add  b                                           ; $6d01: $80
	jp   nz, $d280                                   ; $6d02: $c2 $80 $d2

	jr   nz, jr_07d_6d73                             ; $6d05: $20 $6c

	nop                                              ; $6d07: $00
	add  d                                           ; $6d08: $82
	nop                                              ; $6d09: $00
	add  d                                           ; $6d0a: $82
	nop                                              ; $6d0b: $00
	add  d                                           ; $6d0c: $82
	nop                                              ; $6d0d: $00
	add  d                                           ; $6d0e: $82
	nop                                              ; $6d0f: $00
	add  d                                           ; $6d10: $82
	nop                                              ; $6d11: $00
	add  d                                           ; $6d12: $82
	nop                                              ; $6d13: $00

jr_07d_6d14:
	add  d                                           ; $6d14: $82
	nop                                              ; $6d15: $00
	ld   l, a                                        ; $6d16: $6f
	nop                                              ; $6d17: $00
	inc  e                                           ; $6d18: $1c
	inc  b                                           ; $6d19: $04
	ld   b, $00                                      ; $6d1a: $06 $00
	dec  b                                           ; $6d1c: $05
	nop                                              ; $6d1d: $00
	inc  b                                           ; $6d1e: $04
	nop                                              ; $6d1f: $00
	inc  b                                           ; $6d20: $04
	nop                                              ; $6d21: $00
	inc  b                                           ; $6d22: $04
	nop                                              ; $6d23: $00
	inc  b                                           ; $6d24: $04
	nop                                              ; $6d25: $00
	db   $e4                                         ; $6d26: $e4
	add  e                                           ; $6d27: $83
	ld   h, b                                        ; $6d28: $60
	ld   bc, $60e0                                   ; $6d29: $01 $e0 $60
	add  [hl]                                        ; $6d2c: $86
	nop                                              ; $6d2d: $00
	rlca                                             ; $6d2e: $07
	call z, Call_07d_5d51                            ; $6d2f: $cc $51 $5d
	ld   e, a                                        ; $6d32: $5f
	ld   b, b                                        ; $6d33: $40
	ld   e, a                                        ; $6d34: $5f
	ld   c, h                                        ; $6d35: $4c
	ld   d, d                                        ; $6d36: $52
	add  b                                           ; $6d37: $80
	ld   b, d                                        ; $6d38: $42
	add  b                                           ; $6d39: $80
	ld   d, d                                        ; $6d3a: $52
	nop                                              ; $6d3b: $00
	ld   [bc], a                                     ; $6d3c: $02
	add  b                                           ; $6d3d: $80
	ld   b, d                                        ; $6d3e: $42
	ld   bc, $86f2                                   ; $6d3f: $01 $f2 $86
	add  c                                           ; $6d42: $81
	sub  c                                           ; $6d43: $91
	inc  e                                           ; $6d44: $1c
	sbc  c                                           ; $6d45: $99
	sbc  a                                           ; $6d46: $9f
	nop                                              ; $6d47: $00
	rra                                              ; $6d48: $1f
	sub  d                                           ; $6d49: $92
	nop                                              ; $6d4a: $00
	add  d                                           ; $6d4b: $82
	nop                                              ; $6d4c: $00
	add  d                                           ; $6d4d: $82
	nop                                              ; $6d4e: $00
	add  d                                           ; $6d4f: $82
	nop                                              ; $6d50: $00
	ldh  a, [$c0]                                    ; $6d51: $f0 $c0
	call nz, $c4c0                                   ; $6d53: $c4 $c0 $c4
	ret  nz                                          ; $6d56: $c0

	call nz, Call_07d_44c0                           ; $6d57: $c4 $c0 $44
	nop                                              ; $6d5a: $00
	inc  b                                           ; $6d5b: $04
	nop                                              ; $6d5c: $00
	inc  b                                           ; $6d5d: $04
	nop                                              ; $6d5e: $00
	inc  b                                           ; $6d5f: $04
	nop                                              ; $6d60: $00
	inc  b                                           ; $6d61: $04
	adc  l                                           ; $6d62: $8d
	nop                                              ; $6d63: $00
	ld   [bc], a                                     ; $6d64: $02
	sbc  l                                           ; $6d65: $9d
	rst  $38                                         ; $6d66: $ff
	sbc  a                                           ; $6d67: $9f
	add  c                                           ; $6d68: $81
	rst  $38                                         ; $6d69: $ff
	dec  b                                           ; $6d6a: $05
	ld   d, c                                        ; $6d6b: $51
	ccf                                              ; $6d6c: $3f
	inc  bc                                          ; $6d6d: $03
	ccf                                              ; $6d6e: $3f
	ld   e, a                                        ; $6d6f: $5f
	ld   a, a                                        ; $6d70: $7f
	add  d                                           ; $6d71: $82
	rst  $38                                         ; $6d72: $ff

jr_07d_6d73:
	dec  b                                           ; $6d73: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d74: $cf
	ldh  a, [$71]                                    ; $6d75: $f0 $71
	di                                               ; $6d77: $f3
	ldh  a, [c]                                      ; $6d78: $f2
	di                                               ; $6d79: $f3
	adc  b                                           ; $6d7a: $88
	rst  $38                                         ; $6d7b: $ff
	dec  c                                           ; $6d7c: $0d
	ld   d, e                                        ; $6d7d: $53
	ld   [hl], c                                     ; $6d7e: $71
	add  c                                           ; $6d7f: $81
	cp   $2e                                         ; $6d80: $fe $2e
	pop  hl                                          ; $6d82: $e1
	ld   bc, $20f8                                   ; $6d83: $01 $f8 $20
	cp   $22                                         ; $6d86: $fe $22
	cp   $ce                                         ; $6d88: $fe $ce
	cp   $80                                         ; $6d8a: $fe $80
	rst  $38                                         ; $6d8c: $ff
	ld   [bc], a                                     ; $6d8d: $02
	dec  d                                           ; $6d8e: $15
	ret  nz                                          ; $6d8f: $c0

	ret  nc                                          ; $6d90: $d0

	add  b                                           ; $6d91: $80
	jr   nc, jr_07d_6d14                             ; $6d92: $30 $80

	ret  nz                                          ; $6d94: $c0

	add  b                                           ; $6d95: $80
	jr   nc, jr_07d_6d9c                             ; $6d96: $30 $04

	nop                                              ; $6d98: $00
	db   $10                                         ; $6d99: $10
	ld   [hl], b                                     ; $6d9a: $70
	ld   h, b                                        ; $6d9b: $60

jr_07d_6d9c:
	ld   [hl], b                                     ; $6d9c: $70
	add  b                                           ; $6d9d: $80
	ldh  a, [rP1]                                    ; $6d9e: $f0 $00
	ld   a, a                                        ; $6da0: $7f
	add  e                                           ; $6da1: $83
	rst  $38                                         ; $6da2: $ff
	inc  c                                           ; $6da3: $0c
	adc  a                                           ; $6da4: $8f
	rst  $38                                         ; $6da5: $ff
	or   a                                           ; $6da6: $b7
	rst  $38                                         ; $6da7: $ff
	rst  ToBoot                                         ; $6da8: $c7
	rst  $38                                         ; $6da9: $ff
	cp   $ff                                         ; $6daa: $fe $ff
	cp   $07                                         ; $6dac: $fe $07
	xor  e                                           ; $6dae: $ab
	rst  $38                                         ; $6daf: $ff
	ld   a, a                                        ; $6db0: $7f
	add  e                                           ; $6db1: $83
	rst  $38                                         ; $6db2: $ff
	nop                                              ; $6db3: $00
	rst  JumpTable                                         ; $6db4: $df
	add  c                                           ; $6db5: $81
	rst  $38                                         ; $6db6: $ff
	inc  b                                           ; $6db7: $04
	db   $f4                                         ; $6db8: $f4
	rst  $38                                         ; $6db9: $ff
	ld   sp, hl                                      ; $6dba: $f9
	rst  $38                                         ; $6dbb: $ff
	dec  bc                                          ; $6dbc: $0b
	add  e                                           ; $6dbd: $83
	rst  $38                                         ; $6dbe: $ff
	ld   a, [bc]                                     ; $6dbf: $0a
	ld   a, a                                        ; $6dc0: $7f
	rst  $38                                         ; $6dc1: $ff
	sbc  a                                           ; $6dc2: $9f
	rst  $38                                         ; $6dc3: $ff
	rrca                                             ; $6dc4: $0f
	rst  $38                                         ; $6dc5: $ff
	daa                                              ; $6dc6: $27
	rst  $38                                         ; $6dc7: $ff
	rrca                                             ; $6dc8: $0f
	rst  $38                                         ; $6dc9: $ff
	xor  l                                           ; $6dca: $ad
	adc  l                                           ; $6dcb: $8d
	ldh  a, [$03]                                    ; $6dcc: $f0 $03
	ld   l, a                                        ; $6dce: $6f

jr_07d_6dcf:
	rlca                                             ; $6dcf: $07
	add  a                                           ; $6dd0: $87
	add  b                                           ; $6dd1: $80
	add  b                                           ; $6dd2: $80
	ld   bc, $8080                                   ; $6dd3: $01 $80 $80
	add  b                                           ; $6dd6: $80
	nop                                              ; $6dd7: $00
	add  b                                           ; $6dd8: $80
	inc  bc                                          ; $6dd9: $03
	nop                                              ; $6dda: $00
	nop                                              ; $6ddb: $00
	add  b                                           ; $6ddc: $80
	ld   h, b                                        ; $6ddd: $60
	dec  c                                           ; $6dde: $0d
	cp   $f2                                         ; $6ddf: $fe $f2
	rst  $38                                         ; $6de1: $ff
	ret  nz                                          ; $6de2: $c0

	ccf                                              ; $6de3: $3f
	inc  b                                           ; $6de4: $04
	rrca                                             ; $6de5: $0f
	pop  bc                                          ; $6de6: $c1
	rst  $20                                         ; $6de7: $e7
	ld   b, b                                        ; $6de8: $40
	ld   a, c                                        ; $6de9: $79
	ldh  [$fe], a                                    ; $6dea: $e0 $fe
	ld   b, $80                                      ; $6dec: $06 $80
	rlca                                             ; $6dee: $07
	ld   de, $8eff                                   ; $6def: $11 $ff $8e
	rst  $38                                         ; $6df2: $ff
	sub  e                                           ; $6df3: $93
	rst  $38                                         ; $6df4: $ff
	push hl                                          ; $6df5: $e5
	rst  $38                                         ; $6df6: $ff
	adc  c                                           ; $6df7: $89
	rst  $38                                         ; $6df8: $ff
	ld   [de], a                                     ; $6df9: $12
	rst  $38                                         ; $6dfa: $ff
	inc  bc                                          ; $6dfb: $03
	ld   a, a                                        ; $6dfc: $7f
	ld   [$091f], sp                                 ; $6dfd: $08 $1f $09
	rst  $38                                         ; $6e00: $ff
	ld   h, c                                        ; $6e01: $61

jr_07d_6e02:
	add  c                                           ; $6e02: $81
	ldh  a, [$0a]                                    ; $6e03: $f0 $0a
	ldh  [$f0], a                                    ; $6e05: $e0 $f0
	sub  b                                           ; $6e07: $90
	ldh  a, [$60]                                    ; $6e08: $f0 $60
	ldh  a, [$90]                                    ; $6e0a: $f0 $90
	ldh  a, [rAUD4LEN]                               ; $6e0c: $f0 $20
	ldh  a, [$c0]                                    ; $6e0e: $f0 $c0
	add  b                                           ; $6e10: $80
	ldh  a, [rIE]                                    ; $6e11: $f0 $ff
	nop                                              ; $6e13: $00
	rst  $38                                         ; $6e14: $ff
	nop                                              ; $6e15: $00
	rst  $38                                         ; $6e16: $ff

jr_07d_6e17:
	nop                                              ; $6e17: $00
	rst  $38                                         ; $6e18: $ff
	nop                                              ; $6e19: $00
	rst  $38                                         ; $6e1a: $ff
	nop                                              ; $6e1b: $00
	rst  $38                                         ; $6e1c: $ff
	nop                                              ; $6e1d: $00
	rst  $30                                         ; $6e1e: $f7
	nop                                              ; $6e1f: $00
	daa                                              ; $6e20: $27
	ld   bc, $0f82                                   ; $6e21: $01 $82 $0f
	add  h                                           ; $6e24: $84
	ld   c, $84                                      ; $6e25: $0e $84
	inc  c                                           ; $6e27: $0c
	add  c                                           ; $6e28: $81
	nop                                              ; $6e29: $00
	inc  bc                                          ; $6e2a: $03
	ccf                                              ; $6e2b: $3f
	ld   a, [hl+]                                    ; $6e2c: $2a
	ld   l, d                                        ; $6e2d: $6a
	ld   c, [hl]                                     ; $6e2e: $4e
	add  c                                           ; $6e2f: $81
	ld   c, d                                        ; $6e30: $4a
	inc  c                                           ; $6e31: $0c
	ld   e, d                                        ; $6e32: $5a
	ld   b, d                                        ; $6e33: $42
	inc  bc                                          ; $6e34: $03
	ld   [bc], a                                     ; $6e35: $02
	ld   [hl+], a                                    ; $6e36: $22
	nop                                              ; $6e37: $00
	ld   b, b                                        ; $6e38: $40
	nop                                              ; $6e39: $00
	pop  bc                                          ; $6e3a: $c1
	ld   e, $5f                                      ; $6e3b: $1e $5f
	inc  d                                           ; $6e3d: $14
	sub  h                                           ; $6e3e: $94
	add  b                                           ; $6e3f: $80
	inc  d                                           ; $6e40: $14
	add  d                                           ; $6e41: $82
	inc  b                                           ; $6e42: $04
	add  e                                           ; $6e43: $83
	nop                                              ; $6e44: $00
	dec  b                                           ; $6e45: $05
	add  $39                                         ; $6e46: $c6 $39
	dec  a                                           ; $6e48: $3d
	jr   jr_07d_6ea3                                 ; $6e49: $18 $58

	jr   jr_07d_6dcf                                 ; $6e4b: $18 $82

	ld   [$9802], sp                                 ; $6e4d: $08 $02 $98
	ld   [$800a], sp                                 ; $6e50: $08 $0a $80
	ld   [$0003], sp                                 ; $6e53: $08 $03 $00
	dec  c                                           ; $6e56: $0d
	ldh  a, [$e8]                                    ; $6e57: $f0 $e8
	add  b                                           ; $6e59: $80
	and  b                                           ; $6e5a: $a0
	inc  bc                                          ; $6e5b: $03
	add  b                                           ; $6e5c: $80
	add  c                                           ; $6e5d: $81
	add  b                                           ; $6e5e: $80
	sub  b                                           ; $6e5f: $90
	add  c                                           ; $6e60: $81
	nop                                              ; $6e61: $00
	nop                                              ; $6e62: $00
	inc  b                                           ; $6e63: $04
	add  c                                           ; $6e64: $81
	nop                                              ; $6e65: $00
	inc  b                                           ; $6e66: $04
	ld   hl, $4ede                                   ; $6e67: $21 $de $4e
	ld   b, h                                        ; $6e6a: $44
	ld   d, h                                        ; $6e6b: $54
	add  c                                           ; $6e6c: $81
	ld   b, h                                        ; $6e6d: $44
	rla                                              ; $6e6e: $17
	ldh  [rLCDC], a                                  ; $6e6f: $e0 $40
	ld   b, h                                        ; $6e71: $44
	ld   b, b                                        ; $6e72: $40
	ld   bc, $4000                                   ; $6e73: $01 $00 $40
	nop                                              ; $6e76: $00
	inc  bc                                          ; $6e77: $03
	ld   hl, sp-$48                                  ; $6e78: $f8 $b8
	xor  b                                           ; $6e7a: $a8
	inc  l                                           ; $6e7b: $2c
	jr   z, jr_07d_6ee6                              ; $6e7c: $28 $68

	jr   nz, jr_07d_6ea6                             ; $6e7e: $20 $26

	jr   nz, jr_07d_6e02                             ; $6e80: $20 $80

	nop                                              ; $6e82: $00
	ld   bc, $4200                                   ; $6e83: $01 $00 $42
	ld   l, b                                        ; $6e86: $68
	add  d                                           ; $6e87: $82
	add  sp, $02                                     ; $6e88: $e8 $02
	ld   l, b                                        ; $6e8a: $68
	ld   h, b                                        ; $6e8b: $60
	ld   h, d                                        ; $6e8c: $62
	add  c                                           ; $6e8d: $81
	ld   h, b                                        ; $6e8e: $60
	inc  b                                           ; $6e8f: $04
	ld   h, c                                        ; $6e90: $61
	ld   h, b                                        ; $6e91: $60
	ld   h, d                                        ; $6e92: $62
	ld   h, b                                        ; $6e93: $60
	jr   jr_07d_6e17                                 ; $6e94: $18 $81

	rlca                                             ; $6e96: $07
	dec  b                                           ; $6e97: $05
	scf                                              ; $6e98: $37
	rlca                                             ; $6e99: $07
	inc  hl                                          ; $6e9a: $23
	daa                                              ; $6e9b: $27
	rlca                                             ; $6e9c: $07
	ld   c, a                                        ; $6e9d: $4f
	add  h                                           ; $6e9e: $84
	rra                                              ; $6e9f: $1f
	nop                                              ; $6ea0: $00
	sbc  a                                           ; $6ea1: $9f
	add  b                                           ; $6ea2: $80

jr_07d_6ea3:
	ld   a, a                                        ; $6ea3: $7f
	add  c                                           ; $6ea4: $81
	rst  $38                                         ; $6ea5: $ff

jr_07d_6ea6:
	inc  b                                           ; $6ea6: $04
	ldh  [rIE], a                                    ; $6ea7: $e0 $ff
	sbc  a                                           ; $6ea9: $9f
	rst  $38                                         ; $6eaa: $ff
	ld   a, a                                        ; $6eab: $7f
	add  e                                           ; $6eac: $83
	rst  $38                                         ; $6ead: $ff
	nop                                              ; $6eae: $00
	inc  bc                                          ; $6eaf: $03
	add  b                                           ; $6eb0: $80
	rst  $30                                         ; $6eb1: $f7
	add  c                                           ; $6eb2: $81
	rst  $38                                         ; $6eb3: $ff
	ld   [bc], a                                     ; $6eb4: $02
	rrca                                             ; $6eb5: $0f
	rst  $38                                         ; $6eb6: $ff
	di                                               ; $6eb7: $f3
	add  l                                           ; $6eb8: $85
	rst  $38                                         ; $6eb9: $ff
	nop                                              ; $6eba: $00
	db   $e3                                         ; $6ebb: $e3
	add  c                                           ; $6ebc: $81
	rst  $28                                         ; $6ebd: $ef
	ld   bc, $f7fd                                   ; $6ebe: $01 $fd $f7
	add  c                                           ; $6ec1: $81
	or   $01                                         ; $6ec2: $f6 $01
	rst  $30                                         ; $6ec4: $f7
	rst  $38                                         ; $6ec5: $ff
	add  b                                           ; $6ec6: $80
	ei                                               ; $6ec7: $fb
	inc  bc                                          ; $6ec8: $03
	cp   $f6                                         ; $6ec9: $fe $f6
	rst  $30                                         ; $6ecb: $f7
	or   $82                                         ; $6ecc: $f6 $82
	rst  $30                                         ; $6ece: $f7
	ld   bc, $0eff                                   ; $6ecf: $01 $ff $0e
	add  c                                           ; $6ed2: $81
	nop                                              ; $6ed3: $00
	ld   [$ff3f], sp                                 ; $6ed4: $08 $3f $ff
	ret  nz                                          ; $6ed7: $c0

jr_07d_6ed8:
	ld   a, a                                        ; $6ed8: $7f
	ld   b, b                                        ; $6ed9: $40
	rst  $38                                         ; $6eda: $ff
	jr   nz, jr_07d_6ed8                             ; $6edb: $20 $fb

	db   $eb                                         ; $6edd: $eb
	add  c                                           ; $6ede: $81
	ei                                               ; $6edf: $fb
	add  c                                           ; $6ee0: $81
	dec  bc                                          ; $6ee1: $0b
	add  hl, bc                                      ; $6ee2: $09
	rrca                                             ; $6ee3: $0f
	adc  $ff                                         ; $6ee4: $ce $ff

jr_07d_6ee6:
	dec  l                                           ; $6ee6: $2d
	rst  $38                                         ; $6ee7: $ff
	inc  l                                           ; $6ee8: $2c
	rst  $38                                         ; $6ee9: $ff
	adc  e                                           ; $6eea: $8b
	or   d                                           ; $6eeb: $b2
	ccf                                              ; $6eec: $3f
	add  b                                           ; $6eed: $80
	or   l                                           ; $6eee: $b5
	ld   b, $f5                                      ; $6eef: $06 $f5
	reti                                             ; $6ef1: $d9


	ei                                               ; $6ef2: $fb
	ld   l, l                                        ; $6ef3: $6d
	ld   a, a                                        ; $6ef4: $7f
	inc  a                                           ; $6ef5: $3c
	ccf                                              ; $6ef6: $3f
	add  b                                           ; $6ef7: $80
	inc  e                                           ; $6ef8: $1c
	add  b                                           ; $6ef9: $80
	adc  a                                           ; $6efa: $8f
	ld   bc, $cc33                                   ; $6efb: $01 $33 $cc
	add  b                                           ; $6efe: $80
	reti                                             ; $6eff: $d9


	ld   b, $98                                      ; $6f00: $06 $98
	sbc  l                                           ; $6f02: $9d
	sub  h                                           ; $6f03: $94
	cp   e                                           ; $6f04: $bb
	jr   z, jr_07d_6f5e                              ; $6f05: $28 $57

	ld   d, l                                        ; $6f07: $55
	add  c                                           ; $6f08: $81
	rst  $38                                         ; $6f09: $ff
	add  b                                           ; $6f0a: $80
	add  b                                           ; $6f0b: $80
	add  d                                           ; $6f0c: $82
	inc  c                                           ; $6f0d: $0c
	nop                                              ; $6f0e: $00
	ld   c, $80                                      ; $6f0f: $0e $80
	inc  c                                           ; $6f11: $0c
	nop                                              ; $6f12: $00
	dec  c                                           ; $6f13: $0d
	add  b                                           ; $6f14: $80
	rrca                                             ; $6f15: $0f
	ld   [bc], a                                     ; $6f16: $02
	ld   c, $08                                      ; $6f17: $0e $08
	dec  c                                           ; $6f19: $0d
	add  c                                           ; $6f1a: $81
	nop                                              ; $6f1b: $00
	nop                                              ; $6f1c: $00
	ld   [$0083], sp                                 ; $6f1d: $08 $83 $00
	inc  d                                           ; $6f20: $14
	ld   c, c                                        ; $6f21: $49
	jr   nc, @+$5a                                   ; $6f22: $30 $58

	sbc  $71                                         ; $6f24: $de $71
	ld   d, b                                        ; $6f26: $50
	ld   b, a                                        ; $6f27: $47
	ld   b, b                                        ; $6f28: $40
	ld   c, c                                        ; $6f29: $49
	nop                                              ; $6f2a: $00
	sub  b                                           ; $6f2b: $90
	nop                                              ; $6f2c: $00
	ld   [bc], a                                     ; $6f2d: $02
	nop                                              ; $6f2e: $00
	inc  bc                                          ; $6f2f: $03
	nop                                              ; $6f30: $00
	ld   b, d                                        ; $6f31: $42
	inc  h                                           ; $6f32: $24
	ld   h, [hl]                                     ; $6f33: $66
	cp   $e3                                         ; $6f34: $fe $e3
	add  c                                           ; $6f36: $81
	nop                                              ; $6f37: $00
	ld   [bc], a                                     ; $6f38: $02
	inc  d                                           ; $6f39: $14
	nop                                              ; $6f3a: $00
	ld   [$0081], sp                                 ; $6f3b: $08 $81 $00
	inc  bc                                          ; $6f3e: $03
	add  b                                           ; $6f3f: $80
	nop                                              ; $6f40: $00
	xor  $91                                         ; $6f41: $ee $91
	add  b                                           ; $6f43: $80
	rst  $38                                         ; $6f44: $ff
	ld   bc, $109f                                   ; $6f45: $01 $9f $10
	add  b                                           ; $6f48: $80
	nop                                              ; $6f49: $00
	ld   [bc], a                                     ; $6f4a: $02
	jr   nz, jr_07d_6f4d                             ; $6f4b: $20 $00

jr_07d_6f4d:
	ld   d, b                                        ; $6f4d: $50
	add  c                                           ; $6f4e: $81
	nop                                              ; $6f4f: $00
	ld   [$008e], sp                                 ; $6f50: $08 $8e $00
	ld   b, b                                        ; $6f53: $40
	ld   bc, $7f4f                                   ; $6f54: $01 $4f $7f
	cp   c                                           ; $6f57: $b9
	add  b                                           ; $6f58: $80
	ld   b, b                                        ; $6f59: $40
	add  c                                           ; $6f5a: $81
	nop                                              ; $6f5b: $00
	nop                                              ; $6f5c: $00
	add  [hl]                                        ; $6f5d: $86

jr_07d_6f5e:
	add  e                                           ; $6f5e: $83
	nop                                              ; $6f5f: $00
	ld   d, $bb                                      ; $6f60: $16 $bb
	inc  b                                           ; $6f62: $04
	rst  $38                                         ; $6f63: $ff
	cp   a                                           ; $6f64: $bf
	db   $e4                                         ; $6f65: $e4
	nop                                              ; $6f66: $00
	inc  bc                                          ; $6f67: $03
	nop                                              ; $6f68: $00
	ld   [$1000], sp                                 ; $6f69: $08 $00 $10
	nop                                              ; $6f6c: $00
	ld   [bc], a                                     ; $6f6d: $02
	nop                                              ; $6f6e: $00
	ldh  [c], a                                      ; $6f6f: $e2
	nop                                              ; $6f70: $00
	ret  nz                                          ; $6f71: $c0

	sub  c                                           ; $6f72: $91
	or   c                                           ; $6f73: $b1
	rst  $38                                         ; $6f74: $ff
	dec  d                                           ; $6f75: $15
	db   $10                                         ; $6f76: $10
	ld   e, $81                                      ; $6f77: $1e $81
	nop                                              ; $6f79: $00
	ld   bc, $649d                                   ; $6f7a: $01 $9d $64
	add  b                                           ; $6f7d: $80
	ld   l, h                                        ; $6f7e: $6c
	inc  b                                           ; $6f7f: $04
	ld   a, h                                        ; $6f80: $7c
	ld   a, b                                        ; $6f81: $78
	ld   [hl], b                                     ; $6f82: $70
	ld   [hl], c                                     ; $6f83: $71
	ld   [hl], e                                     ; $6f84: $73
	add  b                                           ; $6f85: $80
	ld   [hl], c                                     ; $6f86: $71
	ld   bc, $7773                                   ; $6f87: $01 $73 $77
	add  b                                           ; $6f8a: $80
	ld   h, a                                        ; $6f8b: $67
	rlca                                             ; $6f8c: $07
	ld   l, a                                        ; $6f8d: $6f
	ld   a, [hl]                                     ; $6f8e: $7e
	ccf                                              ; $6f8f: $3f
	dec  a                                           ; $6f90: $3d
	ld   a, a                                        ; $6f91: $7f
	ld   a, e                                        ; $6f92: $7b
	ld   a, a                                        ; $6f93: $7f
	rst  $30                                         ; $6f94: $f7
	add  c                                           ; $6f95: $81
	rst  $38                                         ; $6f96: $ff
	nop                                              ; $6f97: $00
	rst  $28                                         ; $6f98: $ef
	add  c                                           ; $6f99: $81
	rst  $38                                         ; $6f9a: $ff
	ld   [bc], a                                     ; $6f9b: $02
	rst  JumpTable                                         ; $6f9c: $df
	rst  $38                                         ; $6f9d: $ff
	ccf                                              ; $6f9e: $3f
	sbc  l                                           ; $6f9f: $9d
	rst  $38                                         ; $6fa0: $ff
	inc  b                                           ; $6fa1: $04
	ldh  a, [$f7]                                    ; $6fa2: $f0 $f7
	ei                                               ; $6fa4: $fb
	rst  $38                                         ; $6fa5: $ff
	db   $fc                                         ; $6fa6: $fc
	adc  c                                           ; $6fa7: $89
	rst  $38                                         ; $6fa8: $ff
	nop                                              ; $6fa9: $00
	nop                                              ; $6faa: $00
	add  c                                           ; $6fab: $81
	rst  $38                                         ; $6fac: $ff
	ld   [bc], a                                     ; $6fad: $02
	ld   a, a                                        ; $6fae: $7f

jr_07d_6faf:
	rst  $38                                         ; $6faf: $ff
	add  b                                           ; $6fb0: $80
	add  a                                           ; $6fb1: $87
	rst  $38                                         ; $6fb2: $ff
	ld   b, $00                                      ; $6fb3: $06 $00
	rst  $38                                         ; $6fb5: $ff
	cp   $ff                                         ; $6fb6: $fe $ff
	pop  af                                          ; $6fb8: $f1
	rst  $38                                         ; $6fb9: $ff
	rrca                                             ; $6fba: $0f
	add  a                                           ; $6fbb: $87
	rst  $38                                         ; $6fbc: $ff
	ld   [bc], a                                     ; $6fbd: $02
	jr   nz, jr_07d_6faf                             ; $6fbe: $20 $ef

	inc  l                                           ; $6fc0: $2c
	add  c                                           ; $6fc1: $81
	rst  $20                                         ; $6fc2: $e7
	nop                                              ; $6fc3: $00
	db   $e4                                         ; $6fc4: $e4
	add  b                                           ; $6fc5: $80
	rst  $20                                         ; $6fc6: $e7
	inc  bc                                          ; $6fc7: $03
	rst  $38                                         ; $6fc8: $ff
	xor  $ff                                         ; $6fc9: $ee $ff
	pop  af                                          ; $6fcb: $f1
	add  c                                           ; $6fcc: $81
	rst  $38                                         ; $6fcd: $ff
	ld   a, [bc]                                     ; $6fce: $0a
	nop                                              ; $6fcf: $00
	rst  $38                                         ; $6fd0: $ff
	ccf                                              ; $6fd1: $3f
	rst  $38                                         ; $6fd2: $ff
	cp   a                                           ; $6fd3: $bf
	rst  $38                                         ; $6fd4: $ff
	ld   [hl], b                                     ; $6fd5: $70
	rst  $38                                         ; $6fd6: $ff
	adc  a                                           ; $6fd7: $8f
	rst  $38                                         ; $6fd8: $ff
	ld   a, a                                        ; $6fd9: $7f
	add  h                                           ; $6fda: $84
	rst  $38                                         ; $6fdb: $ff
	add  l                                           ; $6fdc: $85
	nop                                              ; $6fdd: $00
	nop                                              ; $6fde: $00
	rst  $38                                         ; $6fdf: $ff
	add  b                                           ; $6fe0: $80
	ld   a, [hl]                                     ; $6fe1: $7e
	add  b                                           ; $6fe2: $80
	ld   sp, hl                                      ; $6fe3: $f9
	inc  bc                                          ; $6fe4: $03
	and  $e1                                         ; $6fe5: $e6 $e1
	rra                                              ; $6fe7: $1f
	rst  $20                                         ; $6fe8: $e7
	add  l                                           ; $6fe9: $85
	nop                                              ; $6fea: $00
	inc  bc                                          ; $6feb: $03
	pop  hl                                          ; $6fec: $e1
	ld   a, a                                        ; $6fed: $7f
	rra                                              ; $6fee: $1f
	rst  $38                                         ; $6fef: $ff
	add  b                                           ; $6ff0: $80
	db   $dd                                         ; $6ff1: $dd
	add  b                                           ; $6ff2: $80
	rst  $38                                         ; $6ff3: $ff
	nop                                              ; $6ff4: $00
	ld   a, [hl]                                     ; $6ff5: $7e
	add  l                                           ; $6ff6: $85
	nop                                              ; $6ff7: $00
	ld   bc, $de23                                   ; $6ff8: $01 $23 $de
	add  b                                           ; $6ffb: $80
	rst  $38                                         ; $6ffc: $ff
	add  b                                           ; $6ffd: $80
	rst  $30                                         ; $6ffe: $f7
	add  b                                           ; $6fff: $80
	rst  $38                                         ; $7000: $ff
	nop                                              ; $7001: $00
	db   $fd                                         ; $7002: $fd
	add  [hl]                                        ; $7003: $86
	nop                                              ; $7004: $00
	add  c                                           ; $7005: $81
	ldh  a, [$80]                                    ; $7006: $f0 $80
	ret  nc                                          ; $7008: $d0

	add  b                                           ; $7009: $80
	ldh  a, [rSB]                                    ; $700a: $f0 $01
	pop  bc                                          ; $700c: $c1
	xor  $80                                         ; $700d: $ee $80
	ei                                               ; $700f: $fb
	add  b                                           ; $7010: $80
	rst  $38                                         ; $7011: $ff
	ld   bc, $faf8                                   ; $7012: $01 $f8 $fa
	add  b                                           ; $7015: $80
	rst  $38                                         ; $7016: $ff
	rla                                              ; $7017: $17
	cp   $fd                                         ; $7018: $fe $fd
	ld   sp, hl                                      ; $701a: $f9
	ei                                               ; $701b: $fb
	cp   d                                           ; $701c: $ba
	cp   a                                           ; $701d: $bf
	ld   e, h                                        ; $701e: $5c
	ei                                               ; $701f: $fb
	cp   $ff                                         ; $7020: $fe $ff
	sub  [hl]                                        ; $7022: $96
	rst  $30                                         ; $7023: $f7
	and  $ff                                         ; $7024: $e6 $ff
	ld   a, [hl-]                                    ; $7026: $3a
	rst  $28                                         ; $7027: $ef
	ld   l, $ff                                      ; $7028: $2e $ff
	ld   e, $ff                                      ; $702a: $1e $ff
	call c, $e3cf                                    ; $702c: $dc $cf $e3
	rst  $28                                         ; $702f: $ef
	add  b                                           ; $7030: $80
	rst  $30                                         ; $7031: $f7
	add  b                                           ; $7032: $80
	cp   $80                                         ; $7033: $fe $80
	rst  $30                                         ; $7035: $f7
	add  b                                           ; $7036: $80
	or   $80                                         ; $7037: $f6 $80
	rst  $38                                         ; $7039: $ff
	add  b                                           ; $703a: $80
	cp   $02                                         ; $703b: $fe $02
	ld   a, a                                        ; $703d: $7f
	rst  $38                                         ; $703e: $ff
	ld   a, l                                        ; $703f: $7d
	add  c                                           ; $7040: $81
	ldh  a, [$80]                                    ; $7041: $f0 $80
	and  b                                           ; $7043: $a0
	add  b                                           ; $7044: $80
	ld   h, b                                        ; $7045: $60
	add  d                                           ; $7046: $82
	ldh  a, [$80]                                    ; $7047: $f0 $80
	ret  nz                                          ; $7049: $c0

	add  b                                           ; $704a: $80
	ldh  a, [rAUD3LOW]                               ; $704b: $f0 $1d
	ld   l, b                                        ; $704d: $68
	db   $fc                                         ; $704e: $fc
	ld   l, h                                        ; $704f: $6c
	db   $fc                                         ; $7050: $fc
	ld   e, [hl]                                     ; $7051: $5e
	call c, $fcfe                                    ; $7052: $dc $fe $fc
	xor  l                                           ; $7055: $ad
	db   $ec                                         ; $7056: $ec
	cp   [hl]                                        ; $7057: $be
	db   $fc                                         ; $7058: $fc
	ld   l, l                                        ; $7059: $6d
	db   $ec                                         ; $705a: $ec
	ld   e, $9f                                      ; $705b: $1e $9f
	db   $e4                                         ; $705d: $e4
	rrca                                             ; $705e: $0f
	xor  a                                           ; $705f: $af
	rrca                                             ; $7060: $0f
	ld   l, a                                        ; $7061: $6f
	rrca                                             ; $7062: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7063: $cf
	rrca                                             ; $7064: $0f
	cpl                                              ; $7065: $2f
	rrca                                             ; $7066: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7067: $cf
	rrca                                             ; $7068: $0f
	adc  a                                           ; $7069: $8f
	rrca                                             ; $706a: $0f
	add  b                                           ; $706b: $80
	rst  $38                                         ; $706c: $ff
	ld   bc, $dfde                                   ; $706d: $01 $de $df
	add  b                                           ; $7070: $80
	rst  $10                                         ; $7071: $d7
	add  b                                           ; $7072: $80
	rst  $38                                         ; $7073: $ff
	ld   bc, $ff7f                                   ; $7074: $01 $7f $ff
	add  b                                           ; $7077: $80
	rst  $30                                         ; $7078: $f7
	add  b                                           ; $7079: $80
	rst  $38                                         ; $707a: $ff
	add  b                                           ; $707b: $80
	rst  $28                                         ; $707c: $ef
	add  b                                           ; $707d: $80
	rst  $38                                         ; $707e: $ff
	ld   bc, $d05d                                   ; $707f: $01 $5d $d0
	add  b                                           ; $7082: $80
	ldh  a, [$80]                                    ; $7083: $f0 $80
	ldh  [$80], a                                    ; $7085: $e0 $80
	and  b                                           ; $7087: $a0
	add  h                                           ; $7088: $84
	ldh  a, [$80]                                    ; $7089: $f0 $80
	ld   h, b                                        ; $708b: $60
	ld   bc, $d9d6                                   ; $708c: $01 $d6 $d9
	add  d                                           ; $708f: $82
	sbc  c                                           ; $7090: $99
	ld   a, [de]                                     ; $7091: $1a
	cp   a                                           ; $7092: $bf
	add  b                                           ; $7093: $80
	ld   e, a                                        ; $7094: $5f
	sbc  a                                           ; $7095: $9f
	cp   c                                           ; $7096: $b9
	and  [hl]                                        ; $7097: $a6
	ld   h, $a6                                      ; $7098: $26 $a6
	ld   h, $a6                                      ; $709a: $26 $a6
	ld   h, d                                        ; $709c: $62
	cp   l                                           ; $709d: $bd
	cp   [hl]                                        ; $709e: $be
	cp   $7d                                         ; $709f: $fe $7d
	db   $fd                                         ; $70a1: $fd
	inc  bc                                          ; $70a2: $03
	ld   [bc], a                                     ; $70a3: $02
	db   $fc                                         ; $70a4: $fc
	ld   a, a                                        ; $70a5: $7f
	add  hl, de                                      ; $70a6: $19
	ld   l, [hl]                                     ; $70a7: $6e
	ld   l, b                                        ; $70a8: $68
	ld   h, a                                        ; $70a9: $67
	ld   h, c                                        ; $70aa: $61
	ld   l, [hl]                                     ; $70ab: $6e
	scf                                              ; $70ac: $37
	add  e                                           ; $70ad: $83
	rst  $38                                         ; $70ae: $ff
	add  b                                           ; $70af: $80
	rst  $30                                         ; $70b0: $f7
	inc  b                                           ; $70b1: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70b2: $cf
	rst  $38                                         ; $70b3: $ff
	di                                               ; $70b4: $f3
	cp   a                                           ; $70b5: $bf
	cp   [hl]                                        ; $70b6: $be
	add  b                                           ; $70b7: $80
	rst  $20                                         ; $70b8: $e7
	ld   bc, $02fd                                   ; $70b9: $01 $fd $02
	add  c                                           ; $70bc: $81
	ldh  a, [$80]                                    ; $70bd: $f0 $80
	and  b                                           ; $70bf: $a0
	add  h                                           ; $70c0: $84
	ldh  a, [rDIV]                                   ; $70c1: $f0 $04
	ld   [hl], b                                     ; $70c3: $70
	ldh  a, [$80]                                    ; $70c4: $f0 $80
	ldh  a, [$e0]                                    ; $70c6: $f0 $e0
	add  b                                           ; $70c8: $80
	ld   a, a                                        ; $70c9: $7f
	ld   [bc], a                                     ; $70ca: $02
	cp   a                                           ; $70cb: $bf
	ccf                                              ; $70cc: $3f
	cp   a                                           ; $70cd: $bf
	add  b                                           ; $70ce: $80
	cp   [hl]                                        ; $70cf: $be
	add  b                                           ; $70d0: $80
	rst  $38                                         ; $70d1: $ff
	add  b                                           ; $70d2: $80
	cp   a                                           ; $70d3: $bf
	add  b                                           ; $70d4: $80
	rst  $38                                         ; $70d5: $ff
	add  b                                           ; $70d6: $80
	ei                                               ; $70d7: $fb
	ld   bc, $ff5e                                   ; $70d8: $01 $5e $ff
	add  b                                           ; $70db: $80
	db   $fd                                         ; $70dc: $fd
	add  b                                           ; $70dd: $80
	rst  JumpTable                                         ; $70de: $df

jr_07d_70df:
	add  b                                           ; $70df: $80
	rst  $38                                         ; $70e0: $ff
	add  b                                           ; $70e1: $80
	rst  JumpTable                                         ; $70e2: $df
	add  d                                           ; $70e3: $82
	rst  $38                                         ; $70e4: $ff
	add  b                                           ; $70e5: $80
	rst  $28                                         ; $70e6: $ef
	ld   bc, $fe7d                                   ; $70e7: $01 $7d $fe
	add  b                                           ; $70ea: $80
	rst  $38                                         ; $70eb: $ff
	inc  bc                                          ; $70ec: $03
	db   $ed                                         ; $70ed: $ed
	rst  $28                                         ; $70ee: $ef
	db   $fc                                         ; $70ef: $fc
	cp   $80                                         ; $70f0: $fe $80
	rst  $28                                         ; $70f2: $ef
	add  d                                           ; $70f3: $82
	rst  $38                                         ; $70f4: $ff
	add  b                                           ; $70f5: $80
	cp   $01                                         ; $70f6: $fe $01
	db   $fd                                         ; $70f8: $fd
	ldh  a, [$80]                                    ; $70f9: $f0 $80
	ldh  [$80], a                                    ; $70fb: $e0 $80
	ldh  a, [$80]                                    ; $70fd: $f0 $80
	ldh  [$80], a                                    ; $70ff: $e0 $80
	ret  nc                                          ; $7101: $d0

	add  b                                           ; $7102: $80
	ldh  [$80], a                                    ; $7103: $e0 $80
	or   b                                           ; $7105: $b0
	add  b                                           ; $7106: $80
	ldh  [rTMA], a                                   ; $7107: $e0 $06
	call c, $beff                                    ; $7109: $dc $ff $be
	or   [hl]                                        ; $710c: $b6
	ldh  a, [c]                                      ; $710d: $f2
	cp   $6c                                         ; $710e: $fe $6c
	add  c                                           ; $7110: $81
	db   $fc                                         ; $7111: $fc
	dec  bc                                          ; $7112: $0b
	cp   l                                           ; $7113: $bd
	db   $fc                                         ; $7114: $fc
	cp   [hl]                                        ; $7115: $be
	db   $fc                                         ; $7116: $fc
	ld   a, h                                        ; $7117: $7c
	call c, $071b                                    ; $7118: $dc $1b $07
	dec  l                                           ; $711b: $2d
	ld   d, a                                        ; $711c: $57
	ld   bc, $8003                                   ; $711d: $01 $03 $80
	ld   b, a                                        ; $7120: $47
	ld   c, $c7                                      ; $7121: $0e $c7
	ld   b, a                                        ; $7123: $47
	rst  $20                                         ; $7124: $e7
	ld   h, a                                        ; $7125: $67
	cp   l                                           ; $7126: $bd
	ld   a, a                                        ; $7127: $7f
	ld   de, $dc0f                                   ; $7128: $11 $0f $dc
	rst  $38                                         ; $712b: $ff
	db   $fd                                         ; $712c: $fd
	rst  $38                                         ; $712d: $ff
	dec  [hl]                                        ; $712e: $35
	rst  $30                                         ; $712f: $f7
	ld   a, l                                        ; $7130: $7d
	add  d                                           ; $7131: $82
	ld   a, a                                        ; $7132: $7f
	dec  b                                           ; $7133: $05
	rst  $38                                         ; $7134: $ff
	ld   a, a                                        ; $7135: $7f
	rst  $38                                         ; $7136: $ff
	ld   e, a                                        ; $7137: $5f
	rst  JumpTable                                         ; $7138: $df
	dec  a                                           ; $7139: $3d
	add  e                                           ; $713a: $83
	ldh  a, [$80]                                    ; $713b: $f0 $80
	ret  nc                                          ; $713d: $d0

	add  h                                           ; $713e: $84
	ldh  a, [$80]                                    ; $713f: $f0 $80
	ldh  [rSB], a                                    ; $7141: $e0 $01
	ld   a, a                                        ; $7143: $7f
	adc  a                                           ; $7144: $8f
	add  b                                           ; $7145: $80
	rst  $28                                         ; $7146: $ef
	add  b                                           ; $7147: $80
	ld   a, h                                        ; $7148: $7c
	dec  bc                                          ; $7149: $0b
	rrca                                             ; $714a: $0f
	adc  a                                           ; $714b: $8f
	ld   [hl], c                                     ; $714c: $71
	ld   sp, $6e5e                                   ; $714d: $31 $5e $6e
	ld   h, e                                        ; $7150: $63
	ld   l, l                                        ; $7151: $6d
	call $00cc                                       ; $7152: $cd $cc $00
	rst  $38                                         ; $7155: $ff
	add  b                                           ; $7156: $80
	db   $fc                                         ; $7157: $fc
	add  d                                           ; $7158: $82
	ld   b, b                                        ; $7159: $40
	add  b                                           ; $715a: $80
	ret  nz                                          ; $715b: $c0

	add  b                                           ; $715c: $80
	jr   c, jr_07d_70df                              ; $715d: $38 $80

	add  [hl]                                        ; $715f: $86
	inc  bc                                          ; $7160: $03
	ld   sp, $7ac1                                   ; $7161: $31 $c1 $7a
	rst  $30                                         ; $7164: $f7
	add  b                                           ; $7165: $80
	rst  $38                                         ; $7166: $ff
	inc  bc                                          ; $7167: $03
	ld   a, a                                        ; $7168: $7f
	rst  $38                                         ; $7169: $ff
	ld   a, a                                        ; $716a: $7f
	rst  $38                                         ; $716b: $ff
	add  b                                           ; $716c: $80
	rst  $30                                         ; $716d: $f7
	add  b                                           ; $716e: $80
	rst  $28                                         ; $716f: $ef
	add  b                                           ; $7170: $80
	rst  $38                                         ; $7171: $ff
	add  b                                           ; $7172: $80
	rst  $30                                         ; $7173: $f7
	nop                                              ; $7174: $00
	ld   a, l                                        ; $7175: $7d
	add  e                                           ; $7176: $83
	ldh  a, [$80]                                    ; $7177: $f0 $80
	or   b                                           ; $7179: $b0
	add  [hl]                                        ; $717a: $86
	ldh  a, [rSB]                                    ; $717b: $f0 $01
	ld   c, c                                        ; $717d: $49
	add  [hl]                                        ; $717e: $86
	add  c                                           ; $717f: $81
	ld   b, $80                                      ; $7180: $06 $80
	ld   b, [hl]                                     ; $7182: $46
	nop                                              ; $7183: $00
	add  $85                                         ; $7184: $c6 $85
	call z, $ce11                                    ; $7186: $cc $11 $ce
	ld   h, b                                        ; $7189: $60
	ld   h, a                                        ; $718a: $67
	ld   h, c                                        ; $718b: $61
	ld   l, a                                        ; $718c: $6f
	ld   l, c                                        ; $718d: $69
	ld   [hl], a                                     ; $718e: $77
	ld   [hl], c                                     ; $718f: $71
	ld   l, a                                        ; $7190: $6f
	jp   $d3df                                       ; $7191: $c3 $df $d3


	rst  $28                                         ; $7194: $ef
	and  e                                           ; $7195: $a3
	rst  JumpTable                                         ; $7196: $df
	rlca                                             ; $7197: $07
	rst  $38                                         ; $7198: $ff
	xor  a                                           ; $7199: $af
	add  b                                           ; $719a: $80
	cp   $88                                         ; $719b: $fe $88
	sbc  d                                           ; $719d: $9a
	add  c                                           ; $719e: $81
	ld   a, [de]                                     ; $719f: $1a
	nop                                              ; $71a0: $00
	dec  d                                           ; $71a1: $15
	adc  l                                           ; $71a2: $8d
	ld   [hl], b                                     ; $71a3: $70
	dec  bc                                          ; $71a4: $0b
	or   a                                           ; $71a5: $b7
	call $bb14                                       ; $71a6: $cd $14 $bb
	ld   [hl+], a                                    ; $71a9: $22
	db   $dd                                         ; $71aa: $dd
	ld   b, h                                        ; $71ab: $44
	cp   e                                           ; $71ac: $bb
	ld   a, [bc]                                     ; $71ad: $0a
	push af                                          ; $71ae: $f5
	ld   d, l                                        ; $71af: $55
	rst  $38                                         ; $71b0: $ff
	add  b                                           ; $71b1: $80
	ei                                               ; $71b2: $fb
	add  b                                           ; $71b3: $80
	rra                                              ; $71b4: $1f
	db   $10                                         ; $71b5: $10
	ld   [hl], a                                     ; $71b6: $77
	rst  JumpTable                                         ; $71b7: $df
	ld   b, a                                        ; $71b8: $47
	cp   a                                           ; $71b9: $bf
	rrca                                             ; $71ba: $0f
	rst  $38                                         ; $71bb: $ff
	rra                                              ; $71bc: $1f
	rst  $38                                         ; $71bd: $ff
	ccf                                              ; $71be: $3f
	rst  $38                                         ; $71bf: $ff
	ld   a, e                                        ; $71c0: $7b
	rst  $38                                         ; $71c1: $ff
	rst  $30                                         ; $71c2: $f7
	rst  $38                                         ; $71c3: $ff
	db   $eb                                         ; $71c4: $eb
	rst  $38                                         ; $71c5: $ff
	rst  $20                                         ; $71c6: $e7
	add  b                                           ; $71c7: $80
	ld   a, [de]                                     ; $71c8: $1a
	add  b                                           ; $71c9: $80
	sbc  d                                           ; $71ca: $9a
	add  b                                           ; $71cb: $80
	ld   a, [$7a80]                                  ; $71cc: $fa $80 $7a
	add  b                                           ; $71cf: $80
	ld   a, [de]                                     ; $71d0: $1a
	add  b                                           ; $71d1: $80
	jp   nz, $7280                                   ; $71d2: $c2 $80 $72

	ld   bc, $151a                                   ; $71d5: $01 $1a $15
	adc  l                                           ; $71d8: $8d
	ld   [hl], b                                     ; $71d9: $70
	ld   [bc], a                                     ; $71da: $02
	ld   a, [hl]                                     ; $71db: $7e
	rst  $38                                         ; $71dc: $ff
	cp   $81                                         ; $71dd: $fe $81
	rst  $38                                         ; $71df: $ff
	inc  b                                           ; $71e0: $04
	ccf                                              ; $71e1: $3f
	rst  $38                                         ; $71e2: $ff
	jp   $fcff                                       ; $71e3: $c3 $ff $fc


	add  e                                           ; $71e6: $83
	rst  $38                                         ; $71e7: $ff
	ld   [bc], a                                     ; $71e8: $02
	add  sp, -$11                                    ; $71e9: $e8 $ef
	rrca                                             ; $71eb: $0f
	add  c                                           ; $71ec: $81
	rst  $28                                         ; $71ed: $ef
	nop                                              ; $71ee: $00
	rst  $20                                         ; $71ef: $e7
	add  c                                           ; $71f0: $81
	rst  $28                                         ; $71f1: $ef
	ld   [bc], a                                     ; $71f2: $02
	inc  l                                           ; $71f3: $2c
	rst  $38                                         ; $71f4: $ff
	jp   $ff81                                       ; $71f5: $c3 $81 $ff


	nop                                              ; $71f8: $00
	nop                                              ; $71f9: $00
	add  b                                           ; $71fa: $80
	add  a                                           ; $71fb: $87
	add  b                                           ; $71fc: $80
	db   $e3                                         ; $71fd: $e3
	add  b                                           ; $71fe: $80
	ld   hl, sp+$05                                  ; $71ff: $f8 $05
	cp   $86                                         ; $7201: $fe $86
	rst  $38                                         ; $7203: $ff
	ld   a, c                                        ; $7204: $79
	rst  $38                                         ; $7205: $ff
	cp   $81                                         ; $7206: $fe $81
	rst  $38                                         ; $7208: $ff
	nop                                              ; $7209: $00
	rrca                                             ; $720a: $0f
	add  b                                           ; $720b: $80
	ld   [hl], b                                     ; $720c: $70
	add  d                                           ; $720d: $82
	ldh  a, [$80]                                    ; $720e: $f0 $80
	jr   nc, @-$7e                                   ; $7210: $30 $80

	nop                                              ; $7212: $00
	dec  b                                           ; $7213: $05
	ret  nz                                          ; $7214: $c0

	ld   b, b                                        ; $7215: $40
	ldh  [hScriptOpcodeParams], a                                    ; $7216: $e0 $a0
	ldh  a, [$c0]                                    ; $7218: $f0 $c0
	rst  $38                                         ; $721a: $ff
	nop                                              ; $721b: $00
	rst  $38                                         ; $721c: $ff
	nop                                              ; $721d: $00
	rst  $38                                         ; $721e: $ff
	nop                                              ; $721f: $00
	rst  $38                                         ; $7220: $ff
	nop                                              ; $7221: $00
	rst  $38                                         ; $7222: $ff
	nop                                              ; $7223: $00
	rst  $38                                         ; $7224: $ff
	nop                                              ; $7225: $00
	rst  $30                                         ; $7226: $f7
	nop                                              ; $7227: $00
	inc  l                                           ; $7228: $2c
	ld   bc, $0002                                   ; $7229: $01 $02 $00
	rrca                                             ; $722c: $0f
	nop                                              ; $722d: $00
	add  e                                           ; $722e: $83
	rrca                                             ; $722f: $0f
	add  b                                           ; $7230: $80
	dec  c                                           ; $7231: $0d
	add  b                                           ; $7232: $80
	rrca                                             ; $7233: $0f
	jr   @+$06                                       ; $7234: $18 $04

	dec  b                                           ; $7236: $05
	dec  bc                                          ; $7237: $0b
	dec  c                                           ; $7238: $0d
	ld   b, $fe                                      ; $7239: $06 $fe
	ld   [bc], a                                     ; $723b: $02
	cp   $f8                                         ; $723c: $fe $f8
	db   $fd                                         ; $723e: $fd
	db   $ed                                         ; $723f: $ed
	rst  $30                                         ; $7240: $f7
	ld   b, [hl]                                     ; $7241: $46
	ld   l, d                                        ; $7242: $6a
	ld   l, a                                        ; $7243: $6f
	cp   a                                           ; $7244: $bf
	ld   a, [bc]                                     ; $7245: $0a
	ld   l, d                                        ; $7246: $6a
	ld   d, l                                        ; $7247: $55
	push de                                          ; $7248: $d5
	add  b                                           ; $7249: $80
	ld   a, a                                        ; $724a: $7f
	add  b                                           ; $724b: $80
	rst  $38                                         ; $724c: $ff
	ld   a, a                                        ; $724d: $7f
	add  c                                           ; $724e: $81
	rst  $38                                         ; $724f: $ff
	add  b                                           ; $7250: $80
	xor  a                                           ; $7251: $af
	add  b                                           ; $7252: $80
	rst  $38                                         ; $7253: $ff
	add  b                                           ; $7254: $80
	xor  e                                           ; $7255: $ab
	add  b                                           ; $7256: $80
	rst  $38                                         ; $7257: $ff
	ld   [de], a                                     ; $7258: $12
	nop                                              ; $7259: $00
	rst  $38                                         ; $725a: $ff
	ld   bc, $fcff                                   ; $725b: $01 $ff $fc
	rst  $38                                         ; $725e: $ff
	ld   sp, hl                                      ; $725f: $f9
	rst  $38                                         ; $7260: $ff
	di                                               ; $7261: $f3
	rst  $38                                         ; $7262: $ff
	rst  ToBoot                                         ; $7263: $c7
	rst  $38                                         ; $7264: $ff
	or   b                                           ; $7265: $b0
	rst  $38                                         ; $7266: $ff
	nop                                              ; $7267: $00
	rst  $38                                         ; $7268: $ff
	ld   b, b                                        ; $7269: $40
	ccf                                              ; $726a: $3f
	nop                                              ; $726b: $00
	add  a                                           ; $726c: $87
	rst  $38                                         ; $726d: $ff
	ld   d, $00                                      ; $726e: $16 $00
	rst  $38                                         ; $7270: $ff
	nop                                              ; $7271: $00
	rst  $38                                         ; $7272: $ff
	ld   bc, $01fe                                   ; $7273: $01 $fe $01
	rst  $38                                         ; $7276: $ff
	db   $fc                                         ; $7277: $fc
	rst  $38                                         ; $7278: $ff
	ld   hl, sp-$02                                  ; $7279: $f8 $fe
	di                                               ; $727b: $f3
	rst  $38                                         ; $727c: $ff
	ldh  [c], a                                      ; $727d: $e2
	ld   a, [$f505]                                  ; $727e: $fa $05 $f5
	ld   a, [hl+]                                    ; $7281: $2a
	ld   [$ff20], a                                  ; $7282: $ea $20 $ff
	nop                                              ; $7285: $00
	add  c                                           ; $7286: $81
	rst  $38                                         ; $7287: $ff
	add  b                                           ; $7288: $80
	xor  d                                           ; $7289: $aa
	add  b                                           ; $728a: $80
	rst  $38                                         ; $728b: $ff
	ld   bc, $abaa                                   ; $728c: $01 $aa $ab
	add  b                                           ; $728f: $80
	ld   d, a                                        ; $7290: $57
	inc  b                                           ; $7291: $04
	nop                                              ; $7292: $00
	inc  bc                                          ; $7293: $03
	ld   [bc], a                                     ; $7294: $02
	rst  $38                                         ; $7295: $ff
	ld   b, b                                        ; $7296: $40
	add  c                                           ; $7297: $81
	rst  $38                                         ; $7298: $ff
	ld   bc, $ab6b                                   ; $7299: $01 $6b $ab
	add  b                                           ; $729c: $80
	rst  $38                                         ; $729d: $ff
	ld   bc, $aa2a                                   ; $729e: $01 $2a $aa
	add  b                                           ; $72a1: $80
	sub  a                                           ; $72a2: $97
	add  b                                           ; $72a3: $80
	ld   a, [bc]                                     ; $72a4: $0a
	ld   [bc], a                                     ; $72a5: $02
	nop                                              ; $72a6: $00
	rst  $38                                         ; $72a7: $ff
	ld   [bc], a                                     ; $72a8: $02
	adc  e                                           ; $72a9: $8b
	rst  $38                                         ; $72aa: $ff
	ld   [bc], a                                     ; $72ab: $02
	ld   [bc], a                                     ; $72ac: $02
	rst  $38                                         ; $72ad: $ff
	nop                                              ; $72ae: $00
	add  a                                           ; $72af: $87
	rst  $38                                         ; $72b0: $ff
	add  b                                           ; $72b1: $80
	push af                                          ; $72b2: $f5
	add  b                                           ; $72b3: $80
	rst  $38                                         ; $72b4: $ff
	ld   [bc], a                                     ; $72b5: $02
	nop                                              ; $72b6: $00
	rst  $38                                         ; $72b7: $ff
	ld   [$ff81], sp                                 ; $72b8: $08 $81 $ff
	ld   bc, $fff3                                   ; $72bb: $01 $f3 $ff
	add  b                                           ; $72be: $80
	or   $01                                         ; $72bf: $f6 $01
	xor  b                                           ; $72c1: $a8
	xor  h                                           ; $72c2: $ac
	add  b                                           ; $72c3: $80
	ld   d, d                                        ; $72c4: $52
	add  b                                           ; $72c5: $80
	and  d                                           ; $72c6: $a2
	inc  bc                                          ; $72c7: $03
	nop                                              ; $72c8: $00
	rst  $38                                         ; $72c9: $ff
	nop                                              ; $72ca: $00
	rst  $38                                         ; $72cb: $ff
	add  b                                           ; $72cc: $80
	ld   [$5580], a                                  ; $72cd: $ea $80 $55
	add  b                                           ; $72d0: $80
	xor  d                                           ; $72d1: $aa
	add  h                                           ; $72d2: $84
	nop                                              ; $72d3: $00
	dec  b                                           ; $72d4: $05
	ld   bc, $41fe                                   ; $72d5: $01 $fe $41
	rst  $38                                         ; $72d8: $ff
	add  b                                           ; $72d9: $80
	pop  bc                                          ; $72da: $c1
	add  b                                           ; $72db: $80
	ld   h, c                                        ; $72dc: $61
	add  b                                           ; $72dd: $80
	and  b                                           ; $72de: $a0
	add  d                                           ; $72df: $82
	db   $10                                         ; $72e0: $10
	add  b                                           ; $72e1: $80
	ld   [$4016], sp                                 ; $72e2: $08 $16 $40
	cp   a                                           ; $72e5: $bf
	ld   d, b                                        ; $72e6: $50
	ld   e, a                                        ; $72e7: $5f
	ld   d, a                                        ; $72e8: $57
	ld   e, a                                        ; $72e9: $5f
	adc  e                                           ; $72ea: $8b
	xor  a                                           ; $72eb: $af
	ld   h, l                                        ; $72ec: $65
	rst  $10                                         ; $72ed: $d7
	ld   a, [hl-]                                    ; $72ee: $3a
	ld   l, e                                        ; $72ef: $6b
	dec  b                                           ; $72f0: $05
	dec  l                                           ; $72f1: $2d
	ld   e, $12                                      ; $72f2: $1e $12
	dec  de                                          ; $72f4: $1b
	rst  $38                                         ; $72f5: $ff
	dec  h                                           ; $72f6: $25
	db   $fd                                         ; $72f7: $fd
	set  7, e                                        ; $72f8: $cb $fb
	rst  $28                                         ; $72fa: $ef
	add  b                                           ; $72fb: $80
	rst  $30                                         ; $72fc: $f7
	inc  c                                           ; $72fd: $0c
	rst  $38                                         ; $72fe: $ff
	ei                                               ; $72ff: $fb
	rst  $38                                         ; $7300: $ff
	ld   a, l                                        ; $7301: $7d
	rst  $38                                         ; $7302: $ff
	cp   [hl]                                        ; $7303: $be
	rst  $38                                         ; $7304: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7305: $cf
	rst  $38                                         ; $7306: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7307: $cf
	rst  JumpTable                                         ; $7308: $df
	sbc  a                                           ; $7309: $9f
	cp   a                                           ; $730a: $bf
	add  b                                           ; $730b: $80
	ld   a, a                                        ; $730c: $7f
	inc  bc                                          ; $730d: $03
	sbc  a                                           ; $730e: $9f
	cp   a                                           ; $730f: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7310: $cf
	rst  JumpTable                                         ; $7311: $df
	add  b                                           ; $7312: $80
	rst  $28                                         ; $7313: $ef
	dec  b                                           ; $7314: $05
	ld   hl, sp-$09                                  ; $7315: $f8 $f7
	pop  af                                          ; $7317: $f1
	ld   [bc], a                                     ; $7318: $02
	add  hl, bc                                      ; $7319: $09
	dec  b                                           ; $731a: $05
	add  b                                           ; $731b: $80
	ld   c, $80                                      ; $731c: $0e $80
	dec  b                                           ; $731e: $05
	add  b                                           ; $731f: $80
	rrca                                             ; $7320: $0f
	add  b                                           ; $7321: $80
	dec  b                                           ; $7322: $05
	add  b                                           ; $7323: $80
	rrca                                             ; $7324: $0f
	add  b                                           ; $7325: $80
	dec  b                                           ; $7326: $05
	add  b                                           ; $7327: $80
	xor  d                                           ; $7328: $aa
	add  b                                           ; $7329: $80
	ld   d, l                                        ; $732a: $55
	add  b                                           ; $732b: $80
	and  b                                           ; $732c: $a0
	add  b                                           ; $732d: $80
	ld   b, b                                        ; $732e: $40
	add  b                                           ; $732f: $80
	and  b                                           ; $7330: $a0
	add  b                                           ; $7331: $80
	ld   b, b                                        ; $7332: $40
	inc  de                                          ; $7333: $13
	and  l                                           ; $7334: $a5
	and  [hl]                                        ; $7335: $a6
	ld   c, a                                        ; $7336: $4f
	ld   d, e                                        ; $7337: $53
	or   l                                           ; $7338: $b5
	xor  e                                           ; $7339: $ab
	ld   e, h                                        ; $733a: $5c
	ld   e, a                                        ; $733b: $5f
	add  hl, hl                                      ; $733c: $29
	cpl                                              ; $733d: $2f
	inc  de                                          ; $733e: $13
	rra                                              ; $733f: $1f
	dec  h                                           ; $7340: $25
	ld   a, $0f                                      ; $7341: $3e $0f
	ld   h, e                                        ; $7343: $63
	and  b                                           ; $7344: $a0
	ccf                                              ; $7345: $3f
	ld   h, a                                        ; $7346: $67
	add  a                                           ; $7347: $87
	add  h                                           ; $7348: $84
	rst  $38                                         ; $7349: $ff
	ld   b, $e1                                      ; $734a: $06 $e1
	cp   $f8                                         ; $734c: $fe $f8
	rra                                              ; $734e: $1f
	add  a                                           ; $734f: $87
	rst  $38                                         ; $7350: $ff
	ld   a, a                                        ; $7351: $7f
	add  l                                           ; $7352: $85
	rst  $38                                         ; $7353: $ff
	inc  d                                           ; $7354: $14
	pop  af                                          ; $7355: $f1
	cp   $f7                                         ; $7356: $fe $f7
	rlca                                             ; $7358: $07
	ld   [bc], a                                     ; $7359: $02
	rst  $38                                         ; $735a: $ff
	ld   hl, sp-$02                                  ; $735b: $f8 $fe
	ldh  a, [$fc]                                    ; $735d: $f0 $fc
	add  sp, -$01                                    ; $735f: $e8 $ff
	sbc  a                                           ; $7361: $9f
	ret  nz                                          ; $7362: $c0

	add  b                                           ; $7363: $80
	ret  nz                                          ; $7364: $c0

	rst  $38                                         ; $7365: $ff
	nop                                              ; $7366: $00
	add  b                                           ; $7367: $80
	rst  $38                                         ; $7368: $ff
	add  b                                           ; $7369: $80
	add  h                                           ; $736a: $84
	nop                                              ; $736b: $00
	add  hl, bc                                      ; $736c: $09
	rst  $38                                         ; $736d: $ff
	cp   $03                                         ; $736e: $fe $03
	dec  sp                                          ; $7370: $3b
	ld   a, $f6                                      ; $7371: $3e $f6
	rrca                                             ; $7373: $0f
	inc  b                                           ; $7374: $04
	cp   $0c                                         ; $7375: $fe $0c
	add  c                                           ; $7377: $81
	ld   [$1081], sp                                 ; $7378: $08 $81 $10
	ld   b, $f0                                      ; $737b: $06 $f0
	push af                                          ; $737d: $f5
	dec  d                                           ; $737e: $15
	rst  $38                                         ; $737f: $ff
	nop                                              ; $7380: $00
	xor  d                                           ; $7381: $aa
	ld   d, l                                        ; $7382: $55
	add  b                                           ; $7383: $80
	ld   a, [bc]                                     ; $7384: $0a
	add  b                                           ; $7385: $80
	dec  b                                           ; $7386: $05
	add  b                                           ; $7387: $80
	ld   [bc], a                                     ; $7388: $02
	add  b                                           ; $7389: $80
	dec  b                                           ; $738a: $05
	add  b                                           ; $738b: $80
	ld   a, [bc]                                     ; $738c: $0a
	dec  b                                           ; $738d: $05
	ld   a, l                                        ; $738e: $7d
	ld   a, a                                        ; $738f: $7f
	db   $fd                                         ; $7390: $fd
	nop                                              ; $7391: $00
	and  c                                           ; $7392: $a1
	ld   e, a                                        ; $7393: $5f
	add  b                                           ; $7394: $80
	xor  a                                           ; $7395: $af
	add  b                                           ; $7396: $80
	ld   d, a                                        ; $7397: $57
	add  b                                           ; $7398: $80
	xor  e                                           ; $7399: $ab
	add  b                                           ; $739a: $80
	ld   d, a                                        ; $739b: $57
	add  b                                           ; $739c: $80
	xor  e                                           ; $739d: $ab
	dec  b                                           ; $739e: $05
	call nc, $ffd5                                   ; $739f: $d4 $d5 $ff
	nop                                              ; $73a2: $00
	ld   a, [hl+]                                    ; $73a3: $2a
	push de                                          ; $73a4: $d5
	add  b                                           ; $73a5: $80
	ld   a, [$d580]                                  ; $73a6: $fa $80 $d5
	add  b                                           ; $73a9: $80
	ld   [$d580], a                                  ; $73aa: $ea $80 $d5
	add  b                                           ; $73ad: $80
	ld   [$5180], a                                  ; $73ae: $ea $80 $51
	inc  bc                                          ; $73b1: $03
	cp   $01                                         ; $73b2: $fe $01
	xor  [hl]                                        ; $73b4: $ae
	ld   d, c                                        ; $73b5: $51
	add  b                                           ; $73b6: $80
	and  c                                           ; $73b7: $a1
	add  b                                           ; $73b8: $80
	ld   d, b                                        ; $73b9: $50
	add  b                                           ; $73ba: $80
	and  b                                           ; $73bb: $a0
	add  b                                           ; $73bc: $80
	ld   d, b                                        ; $73bd: $50
	add  b                                           ; $73be: $80

jr_07d_73bf:
	and  b                                           ; $73bf: $a0
	add  c                                           ; $73c0: $81
	nop                                              ; $73c1: $00
	add  b                                           ; $73c2: $80
	rst  $38                                         ; $73c3: $ff
	nop                                              ; $73c4: $00
	nop                                              ; $73c5: $00
	add  h                                           ; $73c6: $84
	add  b                                           ; $73c7: $80
	add  d                                           ; $73c8: $82
	ld   b, b                                        ; $73c9: $40
	add  b                                           ; $73ca: $80
	ld   [$0f03], sp                                 ; $73cb: $08 $03 $0f
	ldh  a, [$df]                                    ; $73ce: $f0 $df
	inc  h                                           ; $73d0: $24

jr_07d_73d1:
	add  b                                           ; $73d1: $80
	ld   d, l                                        ; $73d2: $55
	rrca                                             ; $73d3: $0f
	inc  l                                           ; $73d4: $2c
	ld   a, [hl+]                                    ; $73d5: $2a
	ld   d, l                                        ; $73d6: $55
	ld   d, a                                        ; $73d7: $57
	ld   a, [hl+]                                    ; $73d8: $2a
	dec  hl                                          ; $73d9: $2b
	ld   d, h                                        ; $73da: $54
	ld   d, l                                        ; $73db: $55
	rra                                              ; $73dc: $1f
	db   $10                                         ; $73dd: $10
	ldh  a, [rSB]                                    ; $73de: $f0 $01
	ei                                               ; $73e0: $fb
	ld   b, $50                                      ; $73e1: $06 $50
	ld   d, d                                        ; $73e3: $52
	add  b                                           ; $73e4: $80
	xor  c                                           ; $73e5: $a9
	ld   bc, $5455                                   ; $73e6: $01 $55 $54
	add  b                                           ; $73e9: $80
	xor  e                                           ; $73ea: $ab
	add  b                                           ; $73eb: $80
	push de                                          ; $73ec: $d5
	jr   nz, @+$01                                   ; $73ed: $20 $ff

	nop                                              ; $73ef: $00
	db   $10                                         ; $73f0: $10
	sbc  a                                           ; $73f1: $9f
	add  a                                           ; $73f2: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73f3: $cf
	jp   Jump_07d_4167                               ; $73f4: $c3 $67 $41


	inc  de                                          ; $73f7: $13
	and  b                                           ; $73f8: $a0
	adc  c                                           ; $73f9: $89
	ld   d, b                                        ; $73fa: $50
	call nz, $eea4                                   ; $73fb: $c4 $a4 $ee
	rst  ToBoot                                         ; $73fe: $c7
	ld   bc, $fe3e                                   ; $73ff: $01 $3e $fe
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7402: $cf
	rst  $38                                         ; $7403: $ff
	db   $f4                                         ; $7404: $f4
	rst  $38                                         ; $7405: $ff
	ld   sp, hl                                      ; $7406: $f9
	rst  $38                                         ; $7407: $ff
	db   $fc                                         ; $7408: $fc
	rst  $38                                         ; $7409: $ff
	ld   a, [hl]                                     ; $740a: $7e
	rst  $38                                         ; $740b: $ff
	ccf                                              ; $740c: $3f
	ld   a, a                                        ; $740d: $7f
	ret  nz                                          ; $740e: $c0

	add  l                                           ; $740f: $85
	nop                                              ; $7410: $00
	dec  b                                           ; $7411: $05
	ld   [hl], a                                     ; $7412: $77
	ld   sp, hl                                      ; $7413: $f9
	ret  nc                                          ; $7414: $d0

	pop  hl                                          ; $7415: $e1
	jp   nz, $8082                                   ; $7416: $c2 $82 $80

	inc  c                                           ; $7419: $0c
	nop                                              ; $741a: $00
	rst  $38                                         ; $741b: $ff
	add  l                                           ; $741c: $85
	nop                                              ; $741d: $00
	nop                                              ; $741e: $00
	add  sp, -$7f                                    ; $741f: $e8 $81
	ld   hl, sp+$04                                  ; $7421: $f8 $04
	ld   a, b                                        ; $7423: $78
	ld   hl, sp+$20                                  ; $7424: $f8 $20
	ld   a, b                                        ; $7426: $78
	ret  z                                           ; $7427: $c8

	add  l                                           ; $7428: $85
	nop                                              ; $7429: $00
	ld   bc, $3f37                                   ; $742a: $01 $37 $3f
	add  b                                           ; $742d: $80
	ld   l, a                                        ; $742e: $6f
	add  b                                           ; $742f: $80
	ld   e, a                                        ; $7430: $5f
	ld   [bc], a                                     ; $7431: $02
	db   $d3                                         ; $7432: $d3
	rst  JumpTable                                         ; $7433: $df
	inc  b                                           ; $7434: $04
	add  l                                           ; $7435: $85
	nop                                              ; $7436: $00
	nop                                              ; $7437: $00
	jr   nc, jr_07d_73bf                             ; $7438: $30 $85

	ret  nz                                          ; $743a: $c0

	ld   [bc], a                                     ; $743b: $02
	or   b                                           ; $743c: $b0
	rst  $38                                         ; $743d: $ff
	ret  nz                                          ; $743e: $c0

	adc  e                                           ; $743f: $8b
	rst  $38                                         ; $7440: $ff
	ld   [bc], a                                     ; $7441: $02
	ldh  a, [$8f]                                    ; $7442: $f0 $8f
	jr   nz, jr_07d_73d1                             ; $7444: $20 $8b

	rst  $38                                         ; $7446: $ff
	ld   b, $31                                      ; $7447: $06 $31
	rst  $28                                         ; $7449: $ef
	db   $10                                         ; $744a: $10
	pop  af                                          ; $744b: $f1
	db   $ec                                         ; $744c: $ec
	db   $fc                                         ; $744d: $fc
	rst  $30                                         ; $744e: $f7
	add  a                                           ; $744f: $87

jr_07d_7450:
	cp   $00                                         ; $7450: $fe $00
	ld   [hl], $81                                   ; $7452: $36 $81
	ret  nz                                          ; $7454: $c0

	add  b                                           ; $7455: $80
	nop                                              ; $7456: $00
	add  [hl]                                        ; $7457: $86
	ret  nz                                          ; $7458: $c0

	add  b                                           ; $7459: $80
	ldh  [rSB], a                                    ; $745a: $e0 $01
	adc  a                                           ; $745c: $8f
	rst  $38                                         ; $745d: $ff
	add  b                                           ; $745e: $80
	cp   $80                                         ; $745f: $fe $80
	db   $fd                                         ; $7461: $fd
	add  b                                           ; $7462: $80
	cp   $80                                         ; $7463: $fe $80
	db   $fd                                         ; $7465: $fd
	add  b                                           ; $7466: $80
	cp   $80                                         ; $7467: $fe $80
	db   $fd                                         ; $7469: $fd
	add  b                                           ; $746a: $80
	rst  $38                                         ; $746b: $ff
	inc  bc                                          ; $746c: $03
	add  d                                           ; $746d: $82
	ld   b, $8a                                      ; $746e: $06 $8a
	adc  [hl]                                        ; $7470: $8e
	add  b                                           ; $7471: $80
	ld   a, [de]                                     ; $7472: $1a
	add  b                                           ; $7473: $80
	ld   [hl-], a                                    ; $7474: $32
	add  b                                           ; $7475: $80
	ld   h, c                                        ; $7476: $61
	add  b                                           ; $7477: $80
	pop  bc                                          ; $7478: $c1
	add  b                                           ; $7479: $80
	add  e                                           ; $747a: $83
	add  b                                           ; $747b: $80
	rlca                                             ; $747c: $07
	ld   bc, $0e08                                   ; $747d: $01 $08 $0e
	add  b                                           ; $7480: $80
	ld   e, $80                                      ; $7481: $1e $80
	ld   a, $80                                      ; $7483: $3e $80
	ld   a, [hl]                                     ; $7485: $7e
	add  d                                           ; $7486: $82
	cp   $00                                         ; $7487: $fe $00
	ld   a, [hl]                                     ; $7489: $7e
	add  c                                           ; $748a: $81
	cp   $00                                         ; $748b: $fe $00
	halt                                             ; $748d: $76
	add  c                                           ; $748e: $81
	ld   d, b                                        ; $748f: $50
	inc  b                                           ; $7490: $04
	ld   [hl], b                                     ; $7491: $70
	ld   h, b                                        ; $7492: $60
	ld   b, b                                        ; $7493: $40
	ld   [hl], b                                     ; $7494: $70
	ldh  a, [$80]                                    ; $7495: $f0 $80
	add  b                                           ; $7497: $80
	add  e                                           ; $7498: $83
	or   b                                           ; $7499: $b0
	ld   b, $33                                      ; $749a: $06 $33
	rst  $38                                         ; $749c: $ff
	pop  af                                          ; $749d: $f1
	rst  $38                                         ; $749e: $ff
	db   $fc                                         ; $749f: $fc
	rst  $38                                         ; $74a0: $ff
	cp   $83                                         ; $74a1: $fe $83
	rst  $38                                         ; $74a3: $ff
	inc  b                                           ; $74a4: $04
	db   $fc                                         ; $74a5: $fc
	rst  $38                                         ; $74a6: $ff
	db   $fd                                         ; $74a7: $fd
	ld   bc, $8300                                   ; $74a8: $01 $00 $83
	rst  $38                                         ; $74ab: $ff
	ld   a, [bc]                                     ; $74ac: $0a
	ccf                                              ; $74ad: $3f
	rst  $38                                         ; $74ae: $ff
	rra                                              ; $74af: $1f
	rst  $38                                         ; $74b0: $ff
	rst  ToBoot                                         ; $74b1: $c7
	ld   hl, sp-$19                                  ; $74b2: $f8 $e7
	rlca                                             ; $74b4: $07
	add  $ff                                         ; $74b5: $c6 $ff
	add  hl, sp                                      ; $74b7: $39
	add  l                                           ; $74b8: $85
	rst  $38                                         ; $74b9: $ff
	inc  b                                           ; $74ba: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74bb: $cf
	ldh  a, [$d8]                                    ; $74bc: $f0 $d8
	rra                                              ; $74be: $1f
	rlca                                             ; $74bf: $07
	add  c                                           ; $74c0: $81
	rst  $38                                         ; $74c1: $ff
	ld   [bc], a                                     ; $74c2: $02
	ret  nz                                          ; $74c3: $c0

	ldh  a, [$c0]                                    ; $74c4: $f0 $c0
	add  h                                           ; $74c6: $84
	ldh  a, [$80]                                    ; $74c7: $f0 $80
	nop                                              ; $74c9: $00
	add  e                                           ; $74ca: $83
	ldh  a, [rSB]                                    ; $74cb: $f0 $01
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74cd: $cf
	jr   nc, jr_07d_7450                             ; $74ce: $30 $80

	ret  nz                                          ; $74d0: $c0

	add  b                                           ; $74d1: $80
	nop                                              ; $74d2: $00
	add  d                                           ; $74d3: $82
	inc  b                                           ; $74d4: $04
	add  b                                           ; $74d5: $80
	ld   b, d                                        ; $74d6: $42
	add  b                                           ; $74d7: $80
	ld   b, e                                        ; $74d8: $43
	add  b                                           ; $74d9: $80
	ld   h, $03                                      ; $74da: $26 $03
	cpl                                              ; $74dc: $2f
	jr   c, jr_07d_74e8                              ; $74dd: $38 $09

	add  hl, de                                      ; $74df: $19
	add  b                                           ; $74e0: $80
	add  hl, bc                                      ; $74e1: $09
	add  b                                           ; $74e2: $80
	inc  bc                                          ; $74e3: $03
	ld   bc, $0602                                   ; $74e4: $01 $02 $06
	add  b                                           ; $74e7: $80

jr_07d_74e8:
	ld   h, $01                                      ; $74e8: $26 $01
	add  c                                           ; $74ea: $81
	add  e                                           ; $74eb: $83
	add  b                                           ; $74ec: $80
	inc  bc                                          ; $74ed: $03
	dec  b                                           ; $74ee: $05
	ld   b, l                                        ; $74ef: $45
	cp   a                                           ; $74f0: $bf
	or   h                                           ; $74f1: $b4
	cp   a                                           ; $74f2: $bf
	ld   h, a                                        ; $74f3: $67
	ld   a, b                                        ; $74f4: $78
	add  b                                           ; $74f5: $80
	ld   [hl], a                                     ; $74f6: $77
	ld   [$eced], sp                                 ; $74f7: $08 $ed $ec
	xor  $ef                                         ; $74fa: $ee $ef
	rst  $38                                         ; $74fc: $ff
	ldh  a, [$e2]                                    ; $74fd: $f0 $e2
	rst  $38                                         ; $74ff: $ff
	ld   [hl-], a                                    ; $7500: $32
	add  c                                           ; $7501: $81
	ret  nz                                          ; $7502: $c0

	ld   bc, $20a0                                   ; $7503: $01 $a0 $20
	add  b                                           ; $7506: $80
	sub  b                                           ; $7507: $90
	add  b                                           ; $7508: $80
	add  b                                           ; $7509: $80
	ld   bc, $8000                                   ; $750a: $01 $00 $80
	add  b                                           ; $750d: $80
	nop                                              ; $750e: $00
	add  b                                           ; $750f: $80
	ret  nz                                          ; $7510: $c0

	nop                                              ; $7511: $00
	adc  a                                           ; $7512: $8f
	adc  l                                           ; $7513: $8d
	rst  $38                                         ; $7514: $ff
	nop                                              ; $7515: $00
	ld   e, a                                        ; $7516: $5f
	adc  l                                           ; $7517: $8d
	rst  $38                                         ; $7518: $ff
	nop                                              ; $7519: $00
	ret  c                                           ; $751a: $d8

	add  e                                           ; $751b: $83
	cp   $80                                         ; $751c: $fe $80
	or   $80                                         ; $751e: $f6 $80
	xor  $80                                         ; $7520: $ee $80
	sub  $80                                         ; $7522: $d6 $80
	and  [hl]                                        ; $7524: $a6
	add  b                                           ; $7525: $80
	ld   b, [hl]                                     ; $7526: $46
	ld   bc, $e036                                   ; $7527: $01 $36 $e0
	add  b                                           ; $752a: $80
	ldh  a, [rP1]                                    ; $752b: $f0 $00
	ldh  [$89], a                                    ; $752d: $e0 $89
	ldh  a, [rSB]                                    ; $752f: $f0 $01
	cp   [hl]                                        ; $7531: $be
	cp   $80                                         ; $7532: $fe $80
	db   $fd                                         ; $7534: $fd
	ld   bc, $febe                                   ; $7535: $01 $be $fe
	add  b                                           ; $7538: $80
	rst  $38                                         ; $7539: $ff
	ld   bc, $ffc0                                   ; $753a: $01 $c0 $ff
	add  b                                           ; $753d: $80
	rra                                              ; $753e: $1f
	dec  b                                           ; $753f: $05
	nop                                              ; $7540: $00
	rst  $38                                         ; $7541: $ff
	nop                                              ; $7542: $00
	rst  $38                                         ; $7543: $ff
	ld   [hl], b                                     ; $7544: $70
	adc  a                                           ; $7545: $8f
	add  b                                           ; $7546: $80
	ld   e, a                                        ; $7547: $5f
	add  b                                           ; $7548: $80
	cp   a                                           ; $7549: $bf
	add  b                                           ; $754a: $80
	rst  $38                                         ; $754b: $ff
	nop                                              ; $754c: $00
	nop                                              ; $754d: $00

jr_07d_754e:
	add  c                                           ; $754e: $81
	rst  $38                                         ; $754f: $ff
	inc  b                                           ; $7550: $04
	ld   bc, $00fe                                   ; $7551: $01 $fe $00
	rst  $38                                         ; $7554: $ff
	ld   b, a                                        ; $7555: $47
	add  c                                           ; $7556: $81
	cp   $00                                         ; $7557: $fe $00
	sbc  [hl]                                        ; $7559: $9e
	add  c                                           ; $755a: $81
	cp   $01                                         ; $755b: $fe $01
	ld   a, [hl+]                                    ; $755d: $2a
	ldh  a, [c]                                      ; $755e: $f2
	add  c                                           ; $755f: $81
	cp   $80                                         ; $7560: $fe $80
	nop                                              ; $7562: $00
	inc  bc                                          ; $7563: $03
	rst  $38                                         ; $7564: $ff
	cp   a                                           ; $7565: $bf
	or   b                                           ; $7566: $b0
	add  b                                           ; $7567: $80
	add  a                                           ; $7568: $87
	or   b                                           ; $7569: $b0
	dec  de                                          ; $756a: $1b
	db   $10                                         ; $756b: $10
	jr   nc, jr_07d_754e                             ; $756c: $30 $e0

	ldh  a, [rIF]                                    ; $756e: $f0 $0f
	rst  $38                                         ; $7570: $ff
	ld   a, a                                        ; $7571: $7f
	rst  $38                                         ; $7572: $ff
	nop                                              ; $7573: $00
	ld   a, a                                        ; $7574: $7f
	ld   a, $a1                                      ; $7575: $3e $a1
	or   d                                           ; $7577: $b2
	ldh  [c], a                                      ; $7578: $e2
	reti                                             ; $7579: $d9


	pop  af                                          ; $757a: $f1
	ld   l, [hl]                                     ; $757b: $6e
	ld   a, [$fd36]                                  ; $757c: $fa $36 $fd
	cp   c                                           ; $757f: $b9
	rst  $38                                         ; $7580: $ff
	cp   $ff                                         ; $7581: $fe $ff
	nop                                              ; $7583: $00
	rst  $38                                         ; $7584: $ff
	and  b                                           ; $7585: $a0
	ld   e, a                                        ; $7586: $5f
	add  b                                           ; $7587: $80
	xor  e                                           ; $7588: $ab
	add  b                                           ; $7589: $80
	ld   a, a                                        ; $758a: $7f
	add  b                                           ; $758b: $80
	xor  e                                           ; $758c: $ab
	add  b                                           ; $758d: $80
	rst  $38                                         ; $758e: $ff
	inc  c                                           ; $758f: $0c
	ld   a, a                                        ; $7590: $7f
	rst  $38                                         ; $7591: $ff
	ccf                                              ; $7592: $3f
	rst  $38                                         ; $7593: $ff
	ld   b, b                                        ; $7594: $40
	rst  $38                                         ; $7595: $ff
	jr   @+$01                                       ; $7596: $18 $ff

	pop  hl                                          ; $7598: $e1
	rst  $38                                         ; $7599: $ff

jr_07d_759a:
	ld   hl, sp-$01                                  ; $759a: $f8 $ff

jr_07d_759c:
	cp   $81                                         ; $759c: $fe $81
	rst  $38                                         ; $759e: $ff
	add  d                                           ; $759f: $82
	ldh  a, [rSC]                                    ; $75a0: $f0 $02
	nop                                              ; $75a2: $00
	ldh  a, [rP1]                                    ; $75a3: $f0 $00
	add  e                                           ; $75a5: $83
	ldh  a, [rTIMA]                                  ; $75a6: $f0 $05
	jr   nc, jr_07d_759a                             ; $75a8: $30 $f0

	db   $10                                         ; $75aa: $10
	ldh  a, [$e5]                                    ; $75ab: $f0 $e5
	ld   a, [hl-]                                    ; $75ad: $3a
	add  b                                           ; $75ae: $80
	ld   h, c                                        ; $75af: $61
	add  b                                           ; $75b0: $80
	ld   de, $1082                                   ; $75b1: $11 $82 $10
	add  b                                           ; $75b4: $80
	add  b                                           ; $75b5: $80
	nop                                              ; $75b6: $00
	nop                                              ; $75b7: $00
	add  d                                           ; $75b8: $82
	add  b                                           ; $75b9: $80

Jump_07d_75ba:
	ld   [bc], a                                     ; $75ba: $02
	ld   bc, $0100                                   ; $75bb: $01 $00 $01
	add  [hl]                                        ; $75be: $86
	nop                                              ; $75bf: $00
	dec  b                                           ; $75c0: $05
	ld   b, $07                                      ; $75c1: $06 $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75c3: $cf
	pop  af                                          ; $75c4: $f1
	ld   a, $ff                                      ; $75c5: $3e $ff
	add  b                                           ; $75c7: $80
	db   $fd                                         ; $75c8: $fd
	inc  bc                                          ; $75c9: $03
	ld   hl, sp-$07                                  ; $75ca: $f8 $f9
	rra                                              ; $75cc: $1f
	ldh  [$80], a                                    ; $75cd: $e0 $80
	ld   c, $06                                      ; $75cf: $0e $06
	ld   c, b                                        ; $75d1: $48
	ld   a, [hl]                                     ; $75d2: $7e
	ld   b, $30                                      ; $75d3: $06 $30
	ld   [de], a                                     ; $75d5: $12
	sbc  a                                           ; $75d6: $9f
	jp   nz, Jump_07d_4084                           ; $75d7: $c2 $84 $40

	ld   [bc], a                                     ; $75da: $02
	ret  nz                                          ; $75db: $c0

	ld   b, b                                        ; $75dc: $40
	ret  nz                                          ; $75dd: $c0

	add  b                                           ; $75de: $80
	nop                                              ; $75df: $00
	add  b                                           ; $75e0: $80
	ld   b, b                                        ; $75e1: $40
	add  b                                           ; $75e2: $80
	ret  nz                                          ; $75e3: $c0

	nop                                              ; $75e4: $00
	adc  a                                           ; $75e5: $8f
	adc  l                                           ; $75e6: $8d
	rst  $38                                         ; $75e7: $ff
	ld   bc, $fe5e                                   ; $75e8: $01 $5e $fe
	add  b                                           ; $75eb: $80
	db   $fd                                         ; $75ec: $fd
	add  b                                           ; $75ed: $80
	ld   a, [$f480]                                  ; $75ee: $fa $80 $f4
	inc  bc                                          ; $75f1: $03
	ret  z                                           ; $75f2: $c8

	ld   hl, sp-$20                                  ; $75f3: $f8 $e0
	ldh  a, [$80]                                    ; $75f5: $f0 $80
	ret                                              ; $75f7: $c9


	add  b                                           ; $75f8: $80
	adc  e                                           ; $75f9: $8b
	ld   bc, $8680                                   ; $75fa: $01 $80 $86
	add  b                                           ; $75fd: $80
	ld   c, $80                                      ; $75fe: $0e $80
	ld   e, $80                                      ; $7600: $1e $80
	ld   a, $80                                      ; $7602: $3e $80
	ld   h, [hl]                                     ; $7604: $66
	add  b                                           ; $7605: $80
	add  $80                                         ; $7606: $c6 $80
	add  [hl]                                        ; $7608: $86
	add  b                                           ; $7609: $80
	ld   b, $01                                      ; $760a: $06 $01
	ld   [hl], $f0                                   ; $760c: $36 $f0
	add  b                                           ; $760e: $80
	ldh  [$80], a                                    ; $760f: $e0 $80
	ret  nz                                          ; $7611: $c0

	ld   [bc], a                                     ; $7612: $02
	or   b                                           ; $7613: $b0
	and  b                                           ; $7614: $a0
	jr   nz, jr_07d_759c                             ; $7615: $20 $85

	ld   d, b                                        ; $7617: $50
	nop                                              ; $7618: $00

jr_07d_7619:
	and  b                                           ; $7619: $a0
	rst  $38                                         ; $761a: $ff
	nop                                              ; $761b: $00
	rst  $38                                         ; $761c: $ff
	nop                                              ; $761d: $00
	rst  $38                                         ; $761e: $ff
	nop                                              ; $761f: $00
	rst  $38                                         ; $7620: $ff
	nop                                              ; $7621: $00
	rst  $38                                         ; $7622: $ff
	nop                                              ; $7623: $00
	rst  $38                                         ; $7624: $ff
	nop                                              ; $7625: $00
	rst  $30                                         ; $7626: $f7
	nop                                              ; $7627: $00
	ld   e, h                                        ; $7628: $5c
	ld   bc, $0001                                   ; $7629: $01 $01 $00
	rrca                                             ; $762c: $0f
	add  b                                           ; $762d: $80
	nop                                              ; $762e: $00
	add  b                                           ; $762f: $80
	inc  bc                                          ; $7630: $03
	adc  c                                           ; $7631: $89
	rrca                                             ; $7632: $0f
	add  c                                           ; $7633: $81
	rst  $38                                         ; $7634: $ff
	add  b                                           ; $7635: $80
	rlca                                             ; $7636: $07
	add  b                                           ; $7637: $80
	ld   c, $82                                      ; $7638: $0e $82
	ld   l, $82                                      ; $763a: $2e $82
	xor  [hl]                                        ; $763c: $ae
	add  h                                           ; $763d: $84
	rst  $38                                         ; $763e: $ff
	add  b                                           ; $763f: $80
	ld   [hl-], a                                    ; $7640: $32
	add  d                                           ; $7641: $82
	ldh  a, [c]                                      ; $7642: $f2
	add  d                                           ; $7643: $82
	or   $84                                         ; $7644: $f6 $84
	rst  $38                                         ; $7646: $ff
	add  b                                           ; $7647: $80
	db   $e3                                         ; $7648: $e3
	add  [hl]                                        ; $7649: $86
	rst  $30                                         ; $764a: $f7
	add  d                                           ; $764b: $82
	rst  $38                                         ; $764c: $ff
	add  b                                           ; $764d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $764e: $cf
	add  h                                           ; $764f: $84
	db   $e4                                         ; $7650: $e4
	add  d                                           ; $7651: $82
	db   $ec                                         ; $7652: $ec
	add  d                                           ; $7653: $82
	rst  $38                                         ; $7654: $ff
	add  b                                           ; $7655: $80
	db   $fc                                         ; $7656: $fc
	add  h                                           ; $7657: $84
	sbc  a                                           ; $7658: $9f
	add  d                                           ; $7659: $82
	adc  a                                           ; $765a: $8f
	nop                                              ; $765b: $00
	add  a                                           ; $765c: $87
	add  c                                           ; $765d: $81
	add  b                                           ; $765e: $80
	ld   bc, $1014                                   ; $765f: $01 $14 $10
	add  b                                           ; $7662: $80
	ld   d, b                                        ; $7663: $50
	inc  bc                                          ; $7664: $03
	ld   l, d                                        ; $7665: $6a
	ld   l, b                                        ; $7666: $68
	dec  a                                           ; $7667: $3d
	inc  a                                           ; $7668: $3c
	add  b                                           ; $7669: $80
	cp   h                                           ; $766a: $bc
	add  b                                           ; $766b: $80
	sbc  $00                                         ; $766c: $de $00
	rst  $38                                         ; $766e: $ff
	add  d                                           ; $766f: $82
	add  b                                           ; $7670: $80
	add  b                                           ; $7671: $80
	ld   b, b                                        ; $7672: $40
	add  b                                           ; $7673: $80
	nop                                              ; $7674: $00
	add  b                                           ; $7675: $80
	jr   nz, jr_07d_768d                             ; $7676: $20 $15

	jr   jr_07d_7619                                 ; $7678: $18 $9f

	nop                                              ; $767a: $00
	ld   b, c                                        ; $767b: $41
	nop                                              ; $767c: $00
	scf                                              ; $767d: $37
	ld   c, $b8                                      ; $767e: $0e $b8
	ccf                                              ; $7680: $3f
	ld   a, a                                        ; $7681: $7f
	rrca                                             ; $7682: $0f
	dec  bc                                          ; $7683: $0b
	rlca                                             ; $7684: $07
	add  hl, de                                      ; $7685: $19
	inc  bc                                          ; $7686: $03
	ld   a, l                                        ; $7687: $7d
	nop                                              ; $7688: $00
	db   $e3                                         ; $7689: $e3
	nop                                              ; $768a: $00
	add  c                                           ; $768b: $81
	inc  c                                           ; $768c: $0c

jr_07d_768d:
	ldh  a, [c]                                      ; $768d: $f2
	add  b                                           ; $768e: $80
	inc  c                                           ; $768f: $0c
	inc  bc                                          ; $7690: $03
	rlca                                             ; $7691: $07
	rra                                              ; $7692: $1f
	ld   hl, sp-$20                                  ; $7693: $f8 $e0
	add  d                                           ; $7695: $82
	rst  $38                                         ; $7696: $ff
	dec  b                                           ; $7697: $05
	ld   hl, sp-$28                                  ; $7698: $f8 $d8
	scf                                              ; $769a: $37
	rla                                              ; $769b: $17
	ld   l, a                                        ; $769c: $6f
	ld   a, a                                        ; $769d: $7f
	add  b                                           ; $769e: $80
	jr   nc, jr_07d_76a4                             ; $769f: $30 $03

	rst  $38                                         ; $76a1: $ff
	xor  a                                           ; $76a2: $af
	ld   a, a                                        ; $76a3: $7f

jr_07d_76a4:
	ccf                                              ; $76a4: $3f
	add  d                                           ; $76a5: $82
	rst  $38                                         ; $76a6: $ff
	dec  b                                           ; $76a7: $05
	inc  e                                           ; $76a8: $1c
	rra                                              ; $76a9: $1f
	jp   $8fcf                                       ; $76aa: $c3 $cf $8f


	add  b                                           ; $76ad: $80
	add  b                                           ; $76ae: $80
	ld   bc, $ff83                                   ; $76af: $01 $83 $ff
	inc  c                                           ; $76b2: $0c
	db   $e4                                         ; $76b3: $e4
	db   $fc                                         ; $76b4: $fc
	ld   hl, sp+$00                                  ; $76b5: $f8 $00
	pop  de                                          ; $76b7: $d1
	pop  bc                                          ; $76b8: $c1
	ld   hl, sp-$10                                  ; $76b9: $f8 $f0
	ld   hl, sp-$01                                  ; $76bb: $f8 $ff
	ccf                                              ; $76bd: $3f
	rst  $38                                         ; $76be: $ff
	ret  c                                           ; $76bf: $d8

	add  c                                           ; $76c0: $81
	rst  $38                                         ; $76c1: $ff
	nop                                              ; $76c2: $00
	jr   @-$7e                                       ; $76c3: $18 $80

	rst  $38                                         ; $76c5: $ff
	ld   [bc], a                                     ; $76c6: $02
	rrca                                             ; $76c7: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76c8: $cf
	ret  nz                                          ; $76c9: $c0

	add  b                                           ; $76ca: $80

jr_07d_76cb:
	ld   h, b                                        ; $76cb: $60
	dec  c                                           ; $76cc: $0d
	nop                                              ; $76cd: $00
	ldh  a, [$f3]                                    ; $76ce: $f0 $f3
	db   $e3                                         ; $76d0: $e3
	jr   c, jr_07d_76cb                              ; $76d1: $38 $f8

	xor  h                                           ; $76d3: $ac
	db   $ec                                         ; $76d4: $ec
	ld   h, d                                        ; $76d5: $62
	ldh  [c], a                                      ; $76d6: $e2
	pop  hl                                          ; $76d7: $e1
	pop  bc                                          ; $76d8: $c1
	call z, $800c                                    ; $76d9: $cc $0c $80
	ccf                                              ; $76dc: $3f
	add  hl, bc                                      ; $76dd: $09
	rlca                                             ; $76de: $07
	ld   a, c                                        ; $76df: $79
	ld   a, b                                        ; $76e0: $78
	add  hl, de                                      ; $76e1: $19
	sbc  c                                           ; $76e2: $99
	add  c                                           ; $76e3: $81
	ld   h, [hl]                                     ; $76e4: $66
	ld   h, b                                        ; $76e5: $60
	dec  e                                           ; $76e6: $1d
	inc  e                                           ; $76e7: $1c
	add  b                                           ; $76e8: $80
	add  b                                           ; $76e9: $80
	rrca                                             ; $76ea: $0f
	ld   [hl], d                                     ; $76eb: $72
	ld   [hl], c                                     ; $76ec: $71
	dec  b                                           ; $76ed: $05
	ld   bc, $dfe5                                   ; $76ee: $01 $e5 $df
	rra                                              ; $76f1: $1f
	rst  JumpTable                                         ; $76f2: $df
	db   $eb                                         ; $76f3: $eb
	rst  $38                                         ; $76f4: $ff
	ld   h, a                                        ; $76f5: $67
	ld   a, a                                        ; $76f6: $7f
	or   a                                           ; $76f7: $b7
	ccf                                              ; $76f8: $3f
	ld   c, c                                        ; $76f9: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76fa: $cf
	add  b                                           ; $76fb: $80
	rst  $30                                         ; $76fc: $f7
	add  b                                           ; $76fd: $80
	ei                                               ; $76fe: $fb
	nop                                              ; $76ff: $00
	rst  $38                                         ; $7700: $ff
	adc  l                                           ; $7701: $8d
	rrca                                             ; $7702: $0f
	ld   bc, $ae5e                                   ; $7703: $01 $5e $ae
	add  d                                           ; $7706: $82
	adc  $86                                         ; $7707: $ce $86
	xor  $80                                         ; $7709: $ee $80
	cp   $84                                         ; $770b: $fe $84
	or   $80                                         ; $770d: $f6 $80
	halt                                             ; $770f: $76
	add  b                                           ; $7710: $80
	ld   a, [hl]                                     ; $7711: $7e
	add  b                                           ; $7712: $80
	ld   a, a                                        ; $7713: $7f
	add  d                                           ; $7714: $82
	ccf                                              ; $7715: $3f
	add  b                                           ; $7716: $80
	rst  $30                                         ; $7717: $f7
	adc  h                                           ; $7718: $8c
	rst  $28                                         ; $7719: $ef
	add  h                                           ; $771a: $84
	jp   hl                                          ; $771b: $e9


	add  b                                           ; $771c: $80
	di                                               ; $771d: $f3
	add  d                                           ; $771e: $82
	rst  $30                                         ; $771f: $f7
	add  b                                           ; $7720: $80
	rst  $28                                         ; $7721: $ef
	add  b                                           ; $7722: $80
	rst  JumpTable                                         ; $7723: $df
	add  b                                           ; $7724: $80
	adc  a                                           ; $7725: $8f
	add  h                                           ; $7726: $84
	call $cc86                                       ; $7727: $cd $86 $cc
	add  d                                           ; $772a: $82
	rst  JumpTable                                         ; $772b: $df
	add  b                                           ; $772c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $772d: $cf
	add  b                                           ; $772e: $80
	rst  $28                                         ; $772f: $ef
	add  b                                           ; $7730: $80
	rst  $20                                         ; $7731: $e7
	add  b                                           ; $7732: $80
	di                                               ; $7733: $f3
	add  b                                           ; $7734: $80
	ld   [hl], c                                     ; $7735: $71
	add  b                                           ; $7736: $80
	ld   a, c                                        ; $7737: $79
	add  b                                           ; $7738: $80
	inc  bc                                          ; $7739: $03
	ld   b, $8f                                      ; $773a: $06 $8f
	add  b                                           ; $773c: $80
	call z, $c3c0                                    ; $773d: $cc $c0 $c3
	ret  nz                                          ; $7740: $c0

	add  b                                           ; $7741: $80
	add  b                                           ; $7742: $80
	adc  a                                           ; $7743: $8f
	add  c                                           ; $7744: $81
	cp   a                                           ; $7745: $bf
	add  b                                           ; $7746: $80
	ccf                                              ; $7747: $3f
	ld   b, $c3                                      ; $7748: $06 $c3
	jr   c, jr_07d_7788                              ; $774a: $38 $3c

	ld   [hl], e                                     ; $774c: $73
	ld   a, e                                        ; $774d: $7b
	ld   b, $f6                                      ; $774e: $06 $f6
	add  b                                           ; $7750: $80
	ld   b, $80                                      ; $7751: $06 $80
	ld   hl, sp-$7c                                  ; $7753: $f8 $84
	rst  $38                                         ; $7755: $ff
	add  b                                           ; $7756: $80
	rst  JumpTable                                         ; $7757: $df
	add  b                                           ; $7758: $80
	nop                                              ; $7759: $00
	add  b                                           ; $775a: $80
	ret  nz                                          ; $775b: $c0

	add  b                                           ; $775c: $80
	nop                                              ; $775d: $00
	add  b                                           ; $775e: $80
	ld   h, b                                        ; $775f: $60
	add  e                                           ; $7760: $83
	rst  $38                                         ; $7761: $ff
	ld   bc, $0ff0                                   ; $7762: $01 $f0 $0f
	add  b                                           ; $7765: $80
	ld   bc, $0e80                                   ; $7766: $01 $80 $0e
	add  b                                           ; $7769: $80
	inc  sp                                          ; $776a: $33

jr_07d_776b:
	ld   [bc], a                                     ; $776b: $02
	ld   b, b                                        ; $776c: $40
	ld   c, h                                        ; $776d: $4c
	inc  c                                           ; $776e: $0c
	add  e                                           ; $776f: $83
	rst  $38                                         ; $7770: $ff
	inc  bc                                          ; $7771: $03
	inc  b                                           ; $7772: $04
	ld   hl, sp-$09                                  ; $7773: $f8 $f7
	db   $f4                                         ; $7775: $f4
	add  b                                           ; $7776: $80
	rrca                                             ; $7777: $0f
	add  b                                           ; $7778: $80
	ldh  a, [rP1]                                    ; $7779: $f0 $00
	nop                                              ; $777b: $00
	add  b                                           ; $777c: $80
	rlca                                             ; $777d: $07
	add  e                                           ; $777e: $83
	rst  $38                                         ; $777f: $ff
	add  b                                           ; $7780: $80

jr_07d_7781:
	ld   [hl-], a                                    ; $7781: $32
	ld   [$01e1], sp                                 ; $7782: $08 $e1 $01
	add  sp, -$78                                    ; $7785: $e8 $88
	ld   h, h                                        ; $7787: $64

jr_07d_7788:
	inc  b                                           ; $7788: $04
	jr   jr_07d_776b                                 ; $7789: $18 $e0

	rst  $20                                         ; $778b: $e7
	add  b                                           ; $778c: $80
	ld   hl, sp-$80                                  ; $778d: $f8 $80
	ldh  [rSC], a                                    ; $778f: $e0 $02
	rst  ToBoot                                         ; $7791: $c7
	ld   h, $1e                                      ; $7792: $26 $1e
	add  b                                           ; $7794: $80
	jr   jr_07d_779b                                 ; $7795: $18 $04

	add  c                                           ; $7797: $81
	add  b                                           ; $7798: $80
	ld   c, $01                                      ; $7799: $0e $01

jr_07d_779b:
	pop  af                                          ; $779b: $f1
	add  b                                           ; $779c: $80
	dec  c                                           ; $779d: $0d
	add  b                                           ; $779e: $80
	ld   a, $80                                      ; $779f: $3e $80
	ld   a, a                                        ; $77a1: $7f
	rlca                                             ; $77a2: $07
	rst  $38                                         ; $77a3: $ff
	dec  e                                           ; $77a4: $1d
	ld   [bc], a                                     ; $77a5: $02
	ld   h, e                                        ; $77a6: $63
	inc  bc                                          ; $77a7: $03
	add  c                                           ; $77a8: $81
	ld   a, l                                        ; $77a9: $7d
	ld   a, h                                        ; $77aa: $7c
	add  b                                           ; $77ab: $80
	cp   $80                                         ; $77ac: $fe $80
	db   $e3                                         ; $77ae: $e3
	add  b                                           ; $77af: $80
	ret  nz                                          ; $77b0: $c0

	add  b                                           ; $77b1: $80
	rra                                              ; $77b2: $1f
	ld   [bc], a                                     ; $77b3: $02
	rst  $38                                         ; $77b4: $ff
	inc  bc                                          ; $77b5: $03
	db   $fc                                         ; $77b6: $fc
	add  b                                           ; $77b7: $80
	ld   a, $80                                      ; $77b8: $3e $80
	cp   $81                                         ; $77ba: $fe $81
	nop                                              ; $77bc: $00
	add  b                                           ; $77bd: $80
	ret  nz                                          ; $77be: $c0

	add  b                                           ; $77bf: $80
	nop                                              ; $77c0: $00
	add  b                                           ; $77c1: $80
	add  b                                           ; $77c2: $80
	ld   bc, $1ee1                                   ; $77c3: $01 $e1 $1e
	add  l                                           ; $77c6: $85
	nop                                              ; $77c7: $00
	ld   [$15ea], sp                                 ; $77c8: $08 $ea $15
	jr   z, jr_07d_77fc                              ; $77cb: $28 $2f

	ld   b, a                                        ; $77cd: $47
	ld   e, a                                        ; $77ce: $5f
	sbc  h                                           ; $77cf: $9c
	cp   a                                           ; $77d0: $bf
	jp   $0085                                       ; $77d1: $c3 $85 $00


	ld   [$0ffc], sp                                 ; $77d4: $08 $fc $0f
	nop                                              ; $77d7: $00
	rrca                                             ; $77d8: $0f
	nop                                              ; $77d9: $00
	rrca                                             ; $77da: $0f
	nop                                              ; $77db: $00
	rrca                                             ; $77dc: $0f
	db   $fc                                         ; $77dd: $fc
	add  l                                           ; $77de: $85
	nop                                              ; $77df: $00
	ld   [$c0ff], sp                                 ; $77e0: $08 $ff $c0
	nop                                              ; $77e3: $00
	ret  nz                                          ; $77e4: $c0

	nop                                              ; $77e5: $00
	ret  nz                                          ; $77e6: $c0

	nop                                              ; $77e7: $00
	ret  nz                                          ; $77e8: $c0

	rst  $38                                         ; $77e9: $ff

jr_07d_77ea:
	add  l                                           ; $77ea: $85
	nop                                              ; $77eb: $00
	nop                                              ; $77ec: $00
	ld   [hl], b                                     ; $77ed: $70
	add  e                                           ; $77ee: $83
	sub  b                                           ; $77ef: $90
	inc  bc                                          ; $77f0: $03
	stop                                             ; $77f1: $10 $00
	ld   [hl-], a                                    ; $77f3: $32
	ccf                                              ; $77f4: $3f
	add  b                                           ; $77f5: $80
	jp   $138a                                       ; $77f6: $c3 $8a $13


	ld   bc, $0002                                   ; $77f9: $01 $02 $00

jr_07d_77fc:
	adc  b                                           ; $77fc: $88
	jr   z, jr_07d_7781                              ; $77fd: $28 $82

	ld   [$008e], sp                                 ; $77ff: $08 $8e $00
	nop                                              ; $7802: $00
	rrca                                             ; $7803: $0f
	adc  l                                           ; $7804: $8d
	nop                                              ; $7805: $00
	nop                                              ; $7806: $00
	ldh  a, [$81]                                    ; $7807: $f0 $81
	rst  $38                                         ; $7809: $ff
	nop                                              ; $780a: $00

jr_07d_780b:
	ld   bc, $0f80                                   ; $780b: $01 $80 $0f
	add  h                                           ; $780e: $84
	inc  bc                                          ; $780f: $03
	add  c                                           ; $7810: $81
	ld   bc, $e882                                   ; $7811: $01 $82 $e8
	add  b                                           ; $7814: $80
	ld   [$2886], sp                                 ; $7815: $08 $86 $28
	add  b                                           ; $7818: $80
	ld   [$008e], sp                                 ; $7819: $08 $8e $00
	nop                                              ; $781c: $00
	rrca                                             ; $781d: $0f
	adc  l                                           ; $781e: $8d
	nop                                              ; $781f: $00
	add  hl, bc                                      ; $7820: $09
	inc  c                                           ; $7821: $0c
	inc  bc                                          ; $7822: $03
	nop                                              ; $7823: $00
	ld   h, b                                        ; $7824: $60
	and  $f6                                         ; $7825: $e6 $f6
	ldh  a, [$c1]                                    ; $7827: $f0 $c1
	call $81cc                                       ; $7829: $cd $cc $81
	rst  JumpTable                                         ; $782c: $df
	inc  b                                           ; $782d: $04
	sbc  a                                           ; $782e: $9f
	sbc  e                                           ; $782f: $9b
	sbc  a                                           ; $7830: $9f
	db   $fc                                         ; $7831: $fc
	ld   hl, sp-$80                                  ; $7832: $f8 $80
	ld   a, b                                        ; $7834: $78
	add  b                                           ; $7835: $80
	ld   [$e880], sp                                 ; $7836: $08 $80 $e8

jr_07d_7839:
	ld   [bc], a                                     ; $7839: $02
	ld   [$68e8], sp                                 ; $783a: $08 $e8 $68
	add  c                                           ; $783d: $81
	add  sp, $02                                     ; $783e: $e8 $02
	xor  b                                           ; $7840: $a8
	add  sp, $20                                     ; $7841: $e8 $20
	adc  l                                           ; $7843: $8d
	nop                                              ; $7844: $00
	nop                                              ; $7845: $00
	rrca                                             ; $7846: $0f
	adc  l                                           ; $7847: $8d
	nop                                              ; $7848: $00
	ld   a, [bc]                                     ; $7849: $0a
	inc  bc                                          ; $784a: $03
	ccf                                              ; $784b: $3f
	inc  bc                                          ; $784c: $03
	ccf                                              ; $784d: $3f
	inc  c                                           ; $784e: $0c
	ccf                                              ; $784f: $3f
	jr   nc, jr_07d_7891                             ; $7850: $30 $3f

	ld   b, e                                        ; $7852: $43
	ld   a, a                                        ; $7853: $7f
	rrca                                             ; $7854: $0f
	add  b                                           ; $7855: $80
	ld   a, a                                        ; $7856: $7f
	ld   bc, $7b78                                   ; $7857: $01 $78 $7b
	add  b                                           ; $785a: $80
	inc  bc                                          ; $785b: $03
	rlca                                             ; $785c: $07
	rrca                                             ; $785d: $0f
	nop                                              ; $785e: $00
	rrca                                             ; $785f: $0f
	ld   [bc], a                                     ; $7860: $02
	rrca                                             ; $7861: $0f
	add  hl, bc                                      ; $7862: $09
	rrca                                             ; $7863: $0f
	ld   [$0081], sp                                 ; $7864: $08 $81 $00
	add  b                                           ; $7867: $80
	jr   c, jr_07d_77ea                              ; $7868: $38 $80

	ret  nz                                          ; $786a: $c0

	nop                                              ; $786b: $00
	nop                                              ; $786c: $00
	add  c                                           ; $786d: $81
	ret  nz                                          ; $786e: $c0

	nop                                              ; $786f: $00
	nop                                              ; $7870: $00

jr_07d_7871:
	add  c                                           ; $7871: $81
	ret  nz                                          ; $7872: $c0

	add  [hl]                                        ; $7873: $86
	nop                                              ; $7874: $00
	nop                                              ; $7875: $00
	adc  a                                           ; $7876: $8f
	add  l                                           ; $7877: $85
	add  b                                           ; $7878: $80
	add  [hl]                                        ; $7879: $86
	nop                                              ; $787a: $00
	nop                                              ; $787b: $00
	ld   e, $85                                      ; $787c: $1e $85
	inc  de                                          ; $787e: $13
	add  b                                           ; $787f: $80
	sub  e                                           ; $7880: $93
	inc  bc                                          ; $7881: $03
	ei                                               ; $7882: $fb
	rst  $38                                         ; $7883: $ff
	add  hl, sp                                      ; $7884: $39
	ccf                                              ; $7885: $3f
	add  b                                           ; $7886: $80

jr_07d_7887:
	ret  nz                                          ; $7887: $c0

	adc  h                                           ; $7888: $8c
	jr   z, jr_07d_780b                              ; $7889: $28 $80

	ld   [$008e], sp                                 ; $788b: $08 $8e $00
	nop                                              ; $788e: $00
	rrca                                             ; $788f: $0f
	adc  l                                           ; $7890: $8d

jr_07d_7891:
	nop                                              ; $7891: $00
	nop                                              ; $7892: $00
	ld   c, $84                                      ; $7893: $0e $84
	ld   bc, $0304                                   ; $7895: $01 $04 $03
	db   $e3                                         ; $7898: $e3
	rst  $20                                         ; $7899: $e7
	add  hl, de                                      ; $789a: $19
	rra                                              ; $789b: $1f
	add  b                                           ; $789c: $80
	ldh  [$80], a                                    ; $789d: $e0 $80
	rra                                              ; $789f: $1f
	add  b                                           ; $78a0: $80
	ld   [$2886], sp                                 ; $78a1: $08 $86 $28
	add  b                                           ; $78a4: $80
	ld   [$2880], sp                                 ; $78a5: $08 $80 $28
	add  b                                           ; $78a8: $80
	jr   c, jr_07d_7839                              ; $78a9: $38 $8e

	nop                                              ; $78ab: $00
	nop                                              ; $78ac: $00
	rrca                                             ; $78ad: $0f
	adc  l                                           ; $78ae: $8d
	nop                                              ; $78af: $00
	ld   [bc], a                                     ; $78b0: $02
	sbc  [hl]                                        ; $78b1: $9e
	sbc  e                                           ; $78b2: $9b
	sbc  d                                           ; $78b3: $9a
	add  b                                           ; $78b4: $80
	sub  c                                           ; $78b5: $91
	ld   bc, $1595                                   ; $78b6: $01 $95 $15
	add  l                                           ; $78b9: $85
	sub  l                                           ; $78ba: $95
	ld   [bc], a                                     ; $78bb: $02
	dec  d                                           ; $78bc: $15
	sub  l                                           ; $78bd: $95
	call $e883                                       ; $78be: $cd $83 $e8
	nop                                              ; $78c1: $00
	ret  z                                           ; $78c2: $c8

	add  c                                           ; $78c3: $81
	add  sp, -$7c                                    ; $78c4: $e8 $84
	ld   hl, sp-$72                                  ; $78c6: $f8 $8e
	nop                                              ; $78c8: $00
	nop                                              ; $78c9: $00
	rrca                                             ; $78ca: $0f
	adc  l                                           ; $78cb: $8d
	nop                                              ; $78cc: $00
	ld   b, $9f                                      ; $78cd: $06 $9f
	sub  l                                           ; $78cf: $95
	sub  h                                           ; $78d0: $94
	sbc  a                                           ; $78d1: $9f
	sub  l                                           ; $78d2: $95
	sbc  a                                           ; $78d3: $9f
	sbc  e                                           ; $78d4: $9b
	add  d                                           ; $78d5: $82
	rst  JumpTable                                         ; $78d6: $df
	add  e                                           ; $78d7: $83
	rst  $38                                         ; $78d8: $ff
	nop                                              ; $78d9: $00
	sbc  b                                           ; $78da: $98
	add  a                                           ; $78db: $87
	ld   hl, sp+$00                                  ; $78dc: $f8 $00
	ret  c                                           ; $78de: $d8

	add  e                                           ; $78df: $83
	ld   hl, sp+$00                                  ; $78e0: $f8 $00
	jr   nz, jr_07d_7871                             ; $78e2: $20 $8d

	nop                                              ; $78e4: $00
	nop                                              ; $78e5: $00
	rrca                                             ; $78e6: $0f
	adc  l                                           ; $78e7: $8d
	nop                                              ; $78e8: $00
	rlca                                             ; $78e9: $07
	ldh  [rIE], a                                    ; $78ea: $e0 $ff
	rst  $28                                         ; $78ec: $ef
	rst  $38                                         ; $78ed: $ff
	inc  a                                           ; $78ee: $3c
	ccf                                              ; $78ef: $3f
	inc  c                                           ; $78f0: $0c
	rrca                                             ; $78f1: $0f
	add  b                                           ; $78f2: $80
	inc  bc                                          ; $78f3: $03
	add  e                                           ; $78f4: $83
	nop                                              ; $78f5: $00
	ld   bc, $64fc                                   ; $78f6: $01 $fc $64
	add  c                                           ; $78f9: $81

jr_07d_78fa:
	ld   hl, sp+$00                                  ; $78fa: $f8 $00
	ld   a, b                                        ; $78fc: $78
	add  c                                           ; $78fd: $81
	ld   hl, sp+$03                                  ; $78fe: $f8 $03
	jr   c, jr_07d_78fa                              ; $7900: $38 $f8

	ret  c                                           ; $7902: $d8

	ld   hl, sp-$80                                  ; $7903: $f8 $80
	jr   c, jr_07d_7887                              ; $7905: $38 $80

	ld   [$008e], sp                                 ; $7907: $08 $8e $00
	nop                                              ; $790a: $00
	rrca                                             ; $790b: $0f
	adc  l                                           ; $790c: $8d
	nop                                              ; $790d: $00
	ld   bc, $0906                                   ; $790e: $01 $06 $09
	add  b                                           ; $7911: $80
	ld   d, b                                        ; $7912: $50
	add  h                                           ; $7913: $84
	jr   nc, @-$7e                                   ; $7914: $30 $80

	or   b                                           ; $7916: $b0
	add  b                                           ; $7917: $80
	ret  nc                                          ; $7918: $d0

	dec  b                                           ; $7919: $05
	rst  $28                                         ; $791a: $ef
	db   $ec                                         ; $791b: $ec
	inc  bc                                          ; $791c: $03
	ld   bc, $c0c1                                   ; $791d: $01 $c1 $c0
	add  b                                           ; $7920: $80
	pop  hl                                          ; $7921: $e1
	dec  b                                           ; $7922: $05
	ldh  [$f0], a                                    ; $7923: $e0 $f0
	ldh  [$c8], a                                    ; $7925: $e0 $c8
	db   $fc                                         ; $7927: $fc
	cp   h                                           ; $7928: $bc
	add  b                                           ; $7929: $80
	db   $fd                                         ; $792a: $fd
	nop                                              ; $792b: $00
	ld   a, b                                        ; $792c: $78
	add  b                                           ; $792d: $80
	add  c                                           ; $792e: $81
	add  c                                           ; $792f: $81
	dec  b                                           ; $7930: $05
	inc  bc                                          ; $7931: $03
	pop  bc                                          ; $7932: $c1
	push bc                                          ; $7933: $c5
	dec  a                                           ; $7934: $3d
	inc  a                                           ; $7935: $3c
	add  b                                           ; $7936: $80
	pop  hl                                          ; $7937: $e1
	add  b                                           ; $7938: $80
	ld   a, $80                                      ; $7939: $3e $80
	pop  bc                                          ; $793b: $c1
	inc  bc                                          ; $793c: $03
	cp   b                                           ; $793d: $b8
	jr   c, jr_07d_79a2                              ; $793e: $38 $62

	ldh  [$80], a                                    ; $7940: $e0 $80
	db   $e4                                         ; $7942: $e4
	add  b                                           ; $7943: $80
	add  sp, -$80                                    ; $7944: $e8 $80
	ret  nc                                          ; $7946: $d0

	ld   bc, $9492                                   ; $7947: $01 $92 $94
	add  c                                           ; $794a: $81
	dec  b                                           ; $794b: $05
	ld   b, $25                                      ; $794c: $06 $25
	inc  h                                           ; $794e: $24
	db   $e4                                         ; $794f: $e4
	ldh  [$7c], a                                    ; $7950: $e0 $7c
	ld   a, c                                        ; $7952: $79
	ld   bc, $b980                                   ; $7953: $01 $80 $b9
	nop                                              ; $7956: $00
	nop                                              ; $7957: $00
	add  c                                           ; $7958: $81
	jr   c, jr_07d_795b                              ; $7959: $38 $00

jr_07d_795b:
	jr   z, @-$7e                                    ; $795b: $28 $80

	db   $10                                         ; $795d: $10
	ld   bc, $1000                                   ; $795e: $01 $00 $10
	add  b                                           ; $7961: $80
	nop                                              ; $7962: $00
	ld   [bc], a                                     ; $7963: $02
	add  [hl]                                        ; $7964: $86
	sbc  d                                           ; $7965: $9a
	sbc  [hl]                                        ; $7966: $9e
	add  d                                           ; $7967: $82
	sbc  a                                           ; $7968: $9f
	ld   [bc], a                                     ; $7969: $02
	adc  l                                           ; $796a: $8d
	ld   e, a                                        ; $796b: $5f
	rst  $10                                         ; $796c: $d7
	add  e                                           ; $796d: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $796e: $cf
	nop                                              ; $796f: $00
	ld   c, b                                        ; $7970: $48
	add  b                                           ; $7971: $80
	db   $e4                                         ; $7972: $e4
	ld   bc, $6404                                   ; $7973: $01 $04 $64
	add  c                                           ; $7976: $81
	ld   l, b                                        ; $7977: $68
	add  b                                           ; $7978: $80
	ld   [$0980], sp                                 ; $7979: $08 $80 $09
	nop                                              ; $797c: $00
	ld   [$0a80], sp                                 ; $797d: $08 $80 $0a
	add  b                                           ; $7980: $80
	dec  bc                                          ; $7981: $0b
	ld   a, [bc]                                     ; $7982: $0a
	nop                                              ; $7983: $00
	jr   c, jr_07d_7986                              ; $7984: $38 $00

jr_07d_7986:
	ld   l, h                                        ; $7986: $6c
	jr   z, jr_07d_79cd                              ; $7987: $28 $44

	db   $10                                         ; $7989: $10
	ld   a, h                                        ; $798a: $7c
	ld   b, h                                        ; $798b: $44
	ld   d, l                                        ; $798c: $55
	ld   b, l                                        ; $798d: $45
	add  b                                           ; $798e: $80
	nop                                              ; $798f: $00
	ld   [bc], a                                     ; $7990: $02
	cp   $ff                                         ; $7991: $fe $ff
	add  [hl]                                        ; $7993: $86
	add  c                                           ; $7994: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7995: $cf
	ld   [bc], a                                     ; $7996: $02
	call $27af                                       ; $7997: $cd $af $27
	add  e                                           ; $799a: $83
	cpl                                              ; $799b: $2f
	nop                                              ; $799c: $00
	dec  l                                           ; $799d: $2d
	add  c                                           ; $799e: $81
	xor  a                                           ; $799f: $af
	db   $10                                         ; $79a0: $10
	ld   b, h                                        ; $79a1: $44

jr_07d_79a2:
	push af                                          ; $79a2: $f5
	rst  $30                                         ; $79a3: $f7
	or   $36                                         ; $79a4: $f6 $36
	rst  $30                                         ; $79a6: $f7
	or   d                                           ; $79a7: $b2
	rst  $30                                         ; $79a8: $f7
	ld   [hl], c                                     ; $79a9: $71
	di                                               ; $79aa: $f3
	pop  af                                          ; $79ab: $f1
	pop  de                                          ; $79ac: $d1
	push de                                          ; $79ad: $d5
	inc  d                                           ; $79ae: $14
	ld   [hl], $2f                                   ; $79af: $36 $2f
	xor  $80                                         ; $79b1: $ee $80
	rst  $38                                         ; $79b3: $ff
	ld   a, [bc]                                     ; $79b4: $0a
	nop                                              ; $79b5: $00
	ld   a, a                                        ; $79b6: $7f
	rst  $38                                         ; $79b7: $ff
	add  [hl]                                        ; $79b8: $86
	cp   $f8                                         ; $79b9: $fe $f8
	nop                                              ; $79bb: $00
	ld   c, $fe                                      ; $79bc: $0e $fe
	ldh  a, [rP1]                                    ; $79be: $f0 $00
	add  b                                           ; $79c0: $80
	cp   $01                                         ; $79c1: $fe $01
	dec  b                                           ; $79c3: $05
	rla                                              ; $79c4: $17
	add  b                                           ; $79c5: $80
	ld   d, a                                        ; $79c6: $57
	nop                                              ; $79c7: $00
	ld   [hl], e                                     ; $79c8: $73
	add  c                                           ; $79c9: $81
	ld   [hl], a                                     ; $79ca: $77
	inc  bc                                          ; $79cb: $03
	or   a                                           ; $79cc: $b7

jr_07d_79cd:
	scf                                              ; $79cd: $37
	ld   d, c                                        ; $79ce: $51
	rst  $10                                         ; $79cf: $d7
	add  b                                           ; $79d0: $80
	rst  $30                                         ; $79d1: $f7
	inc  c                                           ; $79d2: $0c
	db   $e3                                         ; $79d3: $e3
	ei                                               ; $79d4: $fb
	push bc                                          ; $79d5: $c5
	ld   [hl-], a                                    ; $79d6: $32
	pop  hl                                          ; $79d7: $e1
	ld   bc, $88e8                                   ; $79d8: $01 $e8 $88
	ld   h, h                                        ; $79db: $64
	inc  b                                           ; $79dc: $04
	add  hl, de                                      ; $79dd: $19
	pop  hl                                          ; $79de: $e1
	rst  $20                                         ; $79df: $e7
	add  b                                           ; $79e0: $80
	ld   hl, sp-$80                                  ; $79e1: $f8 $80
	ldh  [rSC], a                                    ; $79e3: $e0 $02
	rst  ToBoot                                         ; $79e5: $c7
	dec  b                                           ; $79e6: $05
	cpl                                              ; $79e7: $2f
	add  b                                           ; $79e8: $80
	dec  hl                                          ; $79e9: $2b
	add  b                                           ; $79ea: $80
	and  e                                           ; $79eb: $a3
	ld   [bc], a                                     ; $79ec: $02
	ld   l, l                                        ; $79ed: $6d
	ld   h, b                                        ; $79ee: $60
	ldh  [$80], a                                    ; $79ef: $e0 $80
	adc  l                                           ; $79f1: $8d
	add  b                                           ; $79f2: $80
	ld   a, $80                                      ; $79f3: $3e $80
	ld   a, a                                        ; $79f5: $7f
	inc  bc                                          ; $79f6: $03
	rst  $38                                         ; $79f7: $ff
	ldh  a, [rIE]                                    ; $79f8: $f0 $ff
	rst  $30                                         ; $79fa: $f7
	add  c                                           ; $79fb: $81
	rst  $38                                         ; $79fc: $ff
	add  b                                           ; $79fd: $80
	cp   $00                                         ; $79fe: $fe $00
	ld   hl, sp-$80                                  ; $7a00: $f8 $80
	ld   bc, $c080                                   ; $7a02: $01 $80 $c0
	add  b                                           ; $7a05: $80
	rra                                              ; $7a06: $1f
	ld   [bc], a                                     ; $7a07: $02
	rst  $38                                         ; $7a08: $ff
	adc  a                                           ; $7a09: $8f
	ld   a, b                                        ; $7a0a: $78
	add  b                                           ; $7a0b: $80
	ld   a, [hl-]                                    ; $7a0c: $3a
	add  b                                           ; $7a0d: $80
	ld   a, d                                        ; $7a0e: $7a
	nop                                              ; $7a0f: $00
	ld   [$0c80], sp                                 ; $7a10: $08 $80 $0c
	add  b                                           ; $7a13: $80
	jp   $0080                                       ; $7a14: $c3 $80 $00


	add  b                                           ; $7a17: $80
	add  b                                           ; $7a18: $80
	ld   bc, $1ee1                                   ; $7a19: $01 $e1 $1e
	rst  $38                                         ; $7a1c: $ff
	nop                                              ; $7a1d: $00
	rst  $38                                         ; $7a1e: $ff
	nop                                              ; $7a1f: $00
	rst  $38                                         ; $7a20: $ff
	nop                                              ; $7a21: $00
	rst  $38                                         ; $7a22: $ff
	nop                                              ; $7a23: $00
	ld   sp, hl                                      ; $7a24: $f9
	nop                                              ; $7a25: $00
	add  h                                           ; $7a26: $84
	ld   bc, $0087                                   ; $7a27: $01 $87 $00
	nop                                              ; $7a2a: $00
	rst  $38                                         ; $7a2b: $ff
	add  b                                           ; $7a2c: $80
	cp   $80                                         ; $7a2d: $fe $80
	ld   bc, $fc80                                   ; $7a2f: $01 $80 $fc
	nop                                              ; $7a32: $00
	rst  $38                                         ; $7a33: $ff
	add  l                                           ; $7a34: $85
	nop                                              ; $7a35: $00
	ld   bc, $9c63                                   ; $7a36: $01 $63 $9c
	add  b                                           ; $7a39: $80
	ld   [hl], e                                     ; $7a3a: $73
	inc  b                                           ; $7a3b: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a3c: $cf
	call z, $383c                                    ; $7a3d: $cc $3c $38
	ld   hl, sp-$7b                                  ; $7a40: $f8 $85
	nop                                              ; $7a42: $00
	inc  bc                                          ; $7a43: $03
	dec  b                                           ; $7a44: $05
	ld   a, [$35f5]                                  ; $7a45: $fa $f5 $35
	add  b                                           ; $7a48: $80
	ld   a, [hl-]                                    ; $7a49: $3a
	add  b                                           ; $7a4a: $80
	dec  [hl]                                        ; $7a4b: $35
	nop                                              ; $7a4c: $00
	ccf                                              ; $7a4d: $3f
	add  l                                           ; $7a4e: $85
	nop                                              ; $7a4f: $00
	ld   bc, $8070                                   ; $7a50: $01 $70 $80
	add  b                                           ; $7a53: $80
	nop                                              ; $7a54: $00
	add  b                                           ; $7a55: $80
	add  b                                           ; $7a56: $80
	add  b                                           ; $7a57: $80
	jr   nc, jr_07d_7a5b                             ; $7a58: $30 $01

	xor  a                                           ; $7a5a: $af

jr_07d_7a5b:
	ld   e, a                                        ; $7a5b: $5f
	add  b                                           ; $7a5c: $80
	xor  a                                           ; $7a5d: $af
	add  b                                           ; $7a5e: $80
	rst  $38                                         ; $7a5f: $ff
	inc  b                                           ; $7a60: $04
	ld   a, a                                        ; $7a61: $7f
	rst  $38                                         ; $7a62: $ff
	add  b                                           ; $7a63: $80
	rst  $38                                         ; $7a64: $ff
	ldh  [$82], a                                    ; $7a65: $e0 $82
	cpl                                              ; $7a67: $2f
	dec  bc                                          ; $7a68: $0b
	jr   nz, jr_07d_7ab8                             ; $7a69: $20 $4d

	db   $fd                                         ; $7a6b: $fd
	db   $fc                                         ; $7a6c: $fc
	db   $fd                                         ; $7a6d: $fd
	ld   [hl], c                                     ; $7a6e: $71
	rst  $38                                         ; $7a6f: $ff
	ldh  [rIE], a                                    ; $7a70: $e0 $ff
	nop                                              ; $7a72: $00
	rst  $38                                         ; $7a73: $ff
	rra                                              ; $7a74: $1f
	add  b                                           ; $7a75: $80
	rst  $38                                         ; $7a76: $ff
	add  b                                           ; $7a77: $80

jr_07d_7a78:
	ld   hl, sp+$09                                  ; $7a78: $f8 $09
	nop                                              ; $7a7a: $00
	ret  z                                           ; $7a7b: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a7c: $cf
	rlca                                             ; $7a7d: $07
	rst  $38                                         ; $7a7e: $ff
	cp   $ff                                         ; $7a7f: $fe $ff
	nop                                              ; $7a81: $00
	rst  $38                                         ; $7a82: $ff
	ld   bc, $ff82                                   ; $7a83: $01 $82 $ff
	add  c                                           ; $7a86: $81
	nop                                              ; $7a87: $00
	nop                                              ; $7a88: $00
	rrca                                             ; $7a89: $0f
	add  c                                           ; $7a8a: $81
	ldh  a, [rSC]                                    ; $7a8b: $f0 $02
	nop                                              ; $7a8d: $00
	ldh  a, [rP1]                                    ; $7a8e: $f0 $00
	add  h                                           ; $7a90: $84
	ldh  a, [$81]                                    ; $7a91: $f0 $81
	nop                                              ; $7a93: $00
	inc  b                                           ; $7a94: $04
	ld   [$282d], a                                  ; $7a95: $ea $2d $28
	cpl                                              ; $7a98: $2f
	dec  hl                                          ; $7a99: $2b
	add  e                                           ; $7a9a: $83
	inc  l                                           ; $7a9b: $2c
	add  h                                           ; $7a9c: $84
	dec  l                                           ; $7a9d: $2d
	inc  b                                           ; $7a9e: $04
	ld   [hl], $fe                                   ; $7a9f: $36 $fe
	ld   c, $fe                                      ; $7aa1: $0e $fe
	ldh  a, [$80]                                    ; $7aa3: $f0 $80
	rra                                              ; $7aa5: $1f
	add  e                                           ; $7aa6: $83
	nop                                              ; $7aa7: $00
	add  b                                           ; $7aa8: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7aa9: $cf
	add  b                                           ; $7aaa: $80

jr_07d_7aab:
	jp   hl                                          ; $7aab: $e9


	add  d                                           ; $7aac: $82
	nop                                              ; $7aad: $00
	ld   [bc], a                                     ; $7aae: $02
	inc  bc                                          ; $7aaf: $03
	rst  $38                                         ; $7ab0: $ff
	db   $fc                                         ; $7ab1: $fc
	add  b                                           ; $7ab2: $80
	inc  bc                                          ; $7ab3: $03
	add  d                                           ; $7ab4: $82
	nop                                              ; $7ab5: $00
	inc  bc                                          ; $7ab6: $03
	rlca                                             ; $7ab7: $07

jr_07d_7ab8:
	ld   b, $07                                      ; $7ab8: $06 $07
	add  hl, bc                                      ; $7aba: $09
	add  c                                           ; $7abb: $81

jr_07d_7abc:
	nop                                              ; $7abc: $00
	add  b                                           ; $7abd: $80
	ldh  a, [rP1]                                    ; $7abe: $f0 $00
	nop                                              ; $7ac0: $00
	add  b                                           ; $7ac1: $80
	ldh  a, [$81]                                    ; $7ac2: $f0 $81
	nop                                              ; $7ac4: $00
	dec  b                                           ; $7ac5: $05
	ret  nz                                          ; $7ac6: $c0

	ldh  a, [rSVBK]                                  ; $7ac7: $f0 $70
	ldh  a, [$58]                                    ; $7ac9: $f0 $58
	rst  $28                                         ; $7acb: $ef
	add  b                                           ; $7acc: $80
	rrca                                             ; $7acd: $0f
	adc  d                                           ; $7ace: $8a
	xor  a                                           ; $7acf: $af
	ld   bc, $0109                                   ; $7ad0: $01 $09 $01
	add  b                                           ; $7ad3: $80
	add  b                                           ; $7ad4: $80
	add  b                                           ; $7ad5: $80
	cp   $04                                         ; $7ad6: $fe $04
	db   $fc                                         ; $7ad8: $fc
	add  e                                           ; $7ad9: $83
	add  b                                           ; $7ada: $80
	add  a                                           ; $7adb: $87
	add  [hl]                                        ; $7adc: $86
	add  e                                           ; $7add: $83
	add  a                                           ; $7ade: $87
	dec  b                                           ; $7adf: $05

jr_07d_7ae0:
	ld   a, b                                        ; $7ae0: $78
	rst  $38                                         ; $7ae1: $ff
	xor  $1f                                         ; $7ae2: $ee $1f
	ld   c, $01                                      ; $7ae4: $0e $01
	add  d                                           ; $7ae6: $82
	ret  nz                                          ; $7ae7: $c0

	ld   [$0ff1], sp                                 ; $7ae8: $08 $f1 $0f
	ldh  [$e1], a                                    ; $7aeb: $e0 $e1
	ldh  a, [rIE]                                    ; $7aed: $f0 $ff
	rrca                                             ; $7aef: $0f
	ldh  a, [rP1]                                    ; $7af0: $f0 $00
	add  c                                           ; $7af2: $81
	ldh  a, [rSB]                                    ; $7af3: $f0 $01
	ret  nz                                          ; $7af5: $c0

	jr   nc, jr_07d_7a78                             ; $7af6: $30 $80

	nop                                              ; $7af8: $00
	add  b                                           ; $7af9: $80
	add  b                                           ; $7afa: $80

jr_07d_7afb:
	dec  b                                           ; $7afb: $05
	jr   nc, @-$0e                                   ; $7afc: $30 $f0

	jr   nz, jr_07d_7ae0                             ; $7afe: $20 $e0

	rrca                                             ; $7b00: $0f
	nop                                              ; $7b01: $00
	add  b                                           ; $7b02: $80
	cp   $80                                         ; $7b03: $fe $80
	rst  $38                                         ; $7b05: $ff
	add  c                                           ; $7b06: $81
	nop                                              ; $7b07: $00
	add  l                                           ; $7b08: $85
	rst  $38                                         ; $7b09: $ff
	ld   bc, $f800                                   ; $7b0a: $01 $00 $f8
	add  b                                           ; $7b0d: $80
	ldh  [rSC], a                                    ; $7b0e: $e0 $02
	nop                                              ; $7b10: $00
	jr   jr_07d_7aab                                 ; $7b11: $18 $98

	add  c                                           ; $7b13: $81
	ld   sp, hl                                      ; $7b14: $f9
	ld   bc, $fcf2                                   ; $7b15: $01 $f2 $fc
	add  d                                           ; $7b18: $82
	db   $fd                                         ; $7b19: $fd
	inc  bc                                          ; $7b1a: $03
	adc  d                                           ; $7b1b: $8a
	ld   a, [hl-]                                    ; $7b1c: $3a
	jr   nc, jr_07d_7b56                             ; $7b1d: $30 $37

	add  b                                           ; $7b1f: $80
	ccf                                              ; $7b20: $3f
	ld   bc, $c707                                   ; $7b21: $01 $07 $c7
	add  b                                           ; $7b24: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b25: $cf
	add  b                                           ; $7b26: $80
	rlca                                             ; $7b27: $07
	add  b                                           ; $7b28: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b29: $cf
	add  b                                           ; $7b2a: $80
	rst  ToBoot                                         ; $7b2b: $c7
	nop                                              ; $7b2c: $00
	jr   c, jr_07d_7abc                              ; $7b2d: $38 $8d

	ldh  a, [rSB]                                    ; $7b2f: $f0 $01
	dec  hl                                          ; $7b31: $2b
	inc  l                                           ; $7b32: $2c
	adc  h                                           ; $7b33: $8c
	dec  l                                           ; $7b34: $2d
	ld   bc, $00c8                                   ; $7b35: $01 $c8 $00
	add  b                                           ; $7b38: $80
	add  b                                           ; $7b39: $80
	add  b                                           ; $7b3a: $80
	ldh  [$80], a                                    ; $7b3b: $e0 $80
	ldh  a, [$80]                                    ; $7b3d: $f0 $80
	ld   hl, sp-$7e                                  ; $7b3f: $f8 $82
	db   $fc                                         ; $7b41: $fc
	add  b                                           ; $7b42: $80
	cp   $8e                                         ; $7b43: $fe $8e
	nop                                              ; $7b45: $00
	nop                                              ; $7b46: $00
	rrca                                             ; $7b47: $0f
	adc  l                                           ; $7b48: $8d
	nop                                              ; $7b49: $00
	nop                                              ; $7b4a: $00
	ld   [$2d87], a                                  ; $7b4b: $ea $87 $2d
	rlca                                             ; $7b4e: $07
	xor  b                                           ; $7b4f: $a8
	xor  a                                           ; $7b50: $af
	xor  d                                           ; $7b51: $aa
	dec  l                                           ; $7b52: $2d
	xor  h                                           ; $7b53: $ac
	db   $ec                                         ; $7b54: $ec
	pop  hl                                          ; $7b55: $e1

jr_07d_7b56:
	jp   hl                                          ; $7b56: $e9


	add  d                                           ; $7b57: $82
	ld   sp, hl                                      ; $7b58: $f9
	add  b                                           ; $7b59: $80
	pop  af                                          ; $7b5a: $f1
	add  b                                           ; $7b5b: $80
	jp   $0e07                                       ; $7b5c: $c3 $07 $0e


	adc  [hl]                                        ; $7b5f: $8e
	add  h                                           ; $7b60: $84
	db   $fc                                         ; $7b61: $fc
	add  sp, $1f                                     ; $7b62: $e8 $1f
	inc  c                                           ; $7b64: $0c
	inc  bc                                          ; $7b65: $03
	add  b                                           ; $7b66: $80
	ld   b, $80                                      ; $7b67: $06 $80
	dec  b                                           ; $7b69: $05
	add  b                                           ; $7b6a: $80
	ld   b, $80                                      ; $7b6b: $06 $80
	inc  c                                           ; $7b6d: $0c
	add  b                                           ; $7b6e: $80
	ld   a, [bc]                                     ; $7b6f: $0a
	add  b                                           ; $7b70: $80
	inc  a                                           ; $7b71: $3c
	ld   [bc], a                                     ; $7b72: $02
	add  hl, sp                                      ; $7b73: $39
	ld   sp, hl                                      ; $7b74: $f9
	rst  $38                                         ; $7b75: $ff
	add  a                                           ; $7b76: $87
	jr   nc, jr_07d_7afb                             ; $7b77: $30 $82

	ld   [hl], b                                     ; $7b79: $70
	add  b                                           ; $7b7a: $80
	ldh  a, [rP1]                                    ; $7b7b: $f0 $00
	xor  b                                           ; $7b7d: $a8
	add  c                                           ; $7b7e: $81
	xor  a                                           ; $7b7f: $af
	ld   [bc], a                                     ; $7b80: $02
	ld   c, $0f                                      ; $7b81: $0e $0f
	db   $fd                                         ; $7b83: $fd
	add  b                                           ; $7b84: $80
	cp   $02                                         ; $7b85: $fe $02
	rst  $38                                         ; $7b87: $ff
	rrca                                             ; $7b88: $0f
	inc  c                                           ; $7b89: $0c
	add  b                                           ; $7b8a: $80
	db   $fc                                         ; $7b8b: $fc
	ld   [bc], a                                     ; $7b8c: $02
	inc  c                                           ; $7b8d: $0c
	inc  b                                           ; $7b8e: $04
	cp   $81                                         ; $7b8f: $fe $81
	add  a                                           ; $7b91: $87
	inc  c                                           ; $7b92: $0c
	ld   b, a                                        ; $7b93: $47
	rst  ToBoot                                         ; $7b94: $c7
	rst  $20                                         ; $7b95: $e7
	daa                                              ; $7b96: $27
	ld   c, a                                        ; $7b97: $4f
	adc  a                                           ; $7b98: $8f
	ld   a, a                                        ; $7b99: $7f
	rrca                                             ; $7b9a: $0f
	add  hl, bc                                      ; $7b9b: $09
	ld   a, c                                        ; $7b9c: $79
	rst  $38                                         ; $7b9d: $ff
	add  a                                           ; $7b9e: $87
	adc  [hl]                                        ; $7b9f: $8e
	add  a                                           ; $7ba0: $87
	rst  $38                                         ; $7ba1: $ff
	add  b                                           ; $7ba2: $80
	cp   $80                                         ; $7ba3: $fe $80
	rst  $38                                         ; $7ba5: $ff
	add  b                                           ; $7ba6: $80
	cp   $00                                         ; $7ba7: $fe $00
	rra                                              ; $7ba9: $1f
	add  c                                           ; $7baa: $81
	ldh  [$80], a                                    ; $7bab: $e0 $80
	ret  nz                                          ; $7bad: $c0

	add  b                                           ; $7bae: $80
	and  b                                           ; $7baf: $a0
	add  b                                           ; $7bb0: $80
	ld   b, b                                        ; $7bb1: $40
	add  b                                           ; $7bb2: $80
	and  b                                           ; $7bb3: $a0
	add  b                                           ; $7bb4: $80
	ld   b, b                                        ; $7bb5: $40
	add  b                                           ; $7bb6: $80
	add  b                                           ; $7bb7: $80
	nop                                              ; $7bb8: $00
	rst  $30                                         ; $7bb9: $f7
	add  b                                           ; $7bba: $80
	ld   hl, sp+$03                                  ; $7bbb: $f8 $03
	db   $fc                                         ; $7bbd: $fc
	db   $f4                                         ; $7bbe: $f4
	ld   hl, sp-$38                                  ; $7bbf: $f8 $c8
	add  b                                           ; $7bc1: $80
	ldh  a, [$03]                                    ; $7bc2: $f0 $03
	pop  bc                                          ; $7bc4: $c1
	db   $fd                                         ; $7bc5: $fd
	cp   $f2                                         ; $7bc6: $fe $f2
	add  b                                           ; $7bc8: $80
	db   $fc                                         ; $7bc9: $fc
	ld   a, [bc]                                     ; $7bca: $0a
	ldh  a, [rTMA]                                   ; $7bcb: $f0 $06
	add  [hl]                                        ; $7bcd: $86
	add  a                                           ; $7bce: $87
	rlca                                             ; $7bcf: $07
	ld   bc, $8687                                   ; $7bd0: $01 $87 $86
	add  e                                           ; $7bd3: $83
	add  a                                           ; $7bd4: $87
	inc  b                                           ; $7bd5: $04
	add  d                                           ; $7bd6: $82
	rlca                                             ; $7bd7: $07
	add  b                                           ; $7bd8: $80
	daa                                              ; $7bd9: $27
	db   $10                                         ; $7bda: $10
	dec  c                                           ; $7bdb: $0d
	db   $fd                                         ; $7bdc: $fd
	ld   a, [$f03a]                                  ; $7bdd: $fa $3a $f0
	ret  nz                                          ; $7be0: $c0

	ld   a, a                                        ; $7be1: $7f
	rst  $38                                         ; $7be2: $ff
	sbc  a                                           ; $7be3: $9f
	rst  $38                                         ; $7be4: $ff
	rst  $20                                         ; $7be5: $e7
	ccf                                              ; $7be6: $3f
	ld   sp, hl                                      ; $7be7: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7be8: $cf
	cp   $f3                                         ; $7be9: $fe $f3
	inc  c                                           ; $7beb: $0c
	add  e                                           ; $7bec: $83
	nop                                              ; $7bed: $00
	add  [hl]                                        ; $7bee: $86
	ldh  a, [rSC]                                    ; $7bef: $f0 $02
	ld   [hl], b                                     ; $7bf1: $70
	ldh  a, [rSVBK]                                  ; $7bf2: $f0 $70
	add  a                                           ; $7bf4: $87
	rst  $38                                         ; $7bf5: $ff
	add  b                                           ; $7bf6: $80
	db   $fd                                         ; $7bf7: $fd
	add  b                                           ; $7bf8: $80
	xor  d                                           ; $7bf9: $aa
	add  b                                           ; $7bfa: $80
	ld   d, l                                        ; $7bfb: $55
	add  d                                           ; $7bfc: $82
	rst  $38                                         ; $7bfd: $ff
	add  b                                           ; $7bfe: $80
	ld   a, [$d580]                                  ; $7bff: $fa $80 $d5
	add  b                                           ; $7c02: $80
	xor  d                                           ; $7c03: $aa
	add  b                                           ; $7c04: $80
	ld   d, l                                        ; $7c05: $55
	add  b                                           ; $7c06: $80
	xor  d                                           ; $7c07: $aa
	add  b                                           ; $7c08: $80
	ld   d, l                                        ; $7c09: $55
	add  b                                           ; $7c0a: $80
	xor  b                                           ; $7c0b: $a8
	add  b                                           ; $7c0c: $80
	ld   d, l                                        ; $7c0d: $55
	add  b                                           ; $7c0e: $80
	xor  d                                           ; $7c0f: $aa
	add  b                                           ; $7c10: $80
	ld   d, l                                        ; $7c11: $55
	add  b                                           ; $7c12: $80
	xor  d                                           ; $7c13: $aa
	add  b                                           ; $7c14: $80
	ld   d, l                                        ; $7c15: $55
	add  b                                           ; $7c16: $80
	xor  d                                           ; $7c17: $aa
	add  b                                           ; $7c18: $80
	ld   d, l                                        ; $7c19: $55
	nop                                              ; $7c1a: $00
	rrca                                             ; $7c1b: $0f
	add  b                                           ; $7c1c: $80
	ldh  a, [rSC]                                    ; $7c1d: $f0 $02
	jr   nc, @-$4e                                   ; $7c1f: $30 $b0

	add  b                                           ; $7c21: $80
	add  b                                           ; $7c22: $80
	ld   d, b                                        ; $7c23: $50
	add  b                                           ; $7c24: $80
	and  b                                           ; $7c25: $a0
	add  b                                           ; $7c26: $80
	ld   d, b                                        ; $7c27: $50
	add  b                                           ; $7c28: $80
	and  b                                           ; $7c29: $a0
	add  b                                           ; $7c2a: $80
	ld   d, b                                        ; $7c2b: $50
	ld   bc, $1f10                                   ; $7c2c: $01 $10 $1f
	add  b                                           ; $7c2f: $80
	ccf                                              ; $7c30: $3f
	adc  b                                           ; $7c31: $88
	rst  $38                                         ; $7c32: $ff
	add  b                                           ; $7c33: $80
	cp   a                                           ; $7c34: $bf
	nop                                              ; $7c35: $00
	ldh  a, [$80]                                    ; $7c36: $f0 $80
	nop                                              ; $7c38: $00
	ld   bc, $0005                                   ; $7c39: $01 $05 $00
	add  b                                           ; $7c3c: $80
	dec  b                                           ; $7c3d: $05
	add  a                                           ; $7c3e: $87
	dec  c                                           ; $7c3f: $0d
	nop                                              ; $7c40: $00
	ld   hl, sp-$80                                  ; $7c41: $f8 $80
	nop                                              ; $7c43: $00
	ld   [bc], a                                     ; $7c44: $02
	ld   b, c                                        ; $7c45: $41
	ld   [$8049], sp                                 ; $7c46: $08 $49 $80
	ld   c, l                                        ; $7c49: $4d
	add  [hl]                                        ; $7c4a: $86
	ld   e, l                                        ; $7c4b: $5d
	add  c                                           ; $7c4c: $81
	nop                                              ; $7c4d: $00
	ld   bc, $04a3                                   ; $7c4e: $01 $a3 $04
	add  c                                           ; $7c51: $81
	and  a                                           ; $7c52: $a7
	add  d                                           ; $7c53: $82
	xor  a                                           ; $7c54: $af
	add  d                                           ; $7c55: $82
	rst  $28                                         ; $7c56: $ef
	add  c                                           ; $7c57: $81
	nop                                              ; $7c58: $00
	ld   bc, $0066                                   ; $7c59: $01 $66 $00
	add  e                                           ; $7c5c: $83
	ld   h, [hl]                                     ; $7c5d: $66
	add  h                                           ; $7c5e: $84
	halt                                             ; $7c5f: $76
	nop                                              ; $7c60: $00
	rra                                              ; $7c61: $1f
	add  b                                           ; $7c62: $80
	nop                                              ; $7c63: $00
	ld   bc, $00c0                                   ; $7c64: $01 $c0 $00
	add  d                                           ; $7c67: $82
	ret  nz                                          ; $7c68: $c0

	add  l                                           ; $7c69: $85
	ldh  [rP1], a                                    ; $7c6a: $e0 $00
	jp   z, $0d85                                    ; $7c6c: $ca $85 $0d

	add  [hl]                                        ; $7c6f: $86
	rrca                                             ; $7c70: $0f
	nop                                              ; $7c71: $00
	and  l                                           ; $7c72: $a5
	add  e                                           ; $7c73: $83
	ld   e, l                                        ; $7c74: $5d
	adc  b                                           ; $7c75: $88
	ld   a, l                                        ; $7c76: $7d
	adc  [hl]                                        ; $7c77: $8e
	rst  $28                                         ; $7c78: $ef
	add  [hl]                                        ; $7c79: $86
	halt                                             ; $7c7a: $76
	add  [hl]                                        ; $7c7b: $86
	or   $00                                         ; $7c7c: $f6 $00
	rst  JumpTable                                         ; $7c7e: $df
	adc  l                                           ; $7c7f: $8d
	ldh  [rP1], a                                    ; $7c80: $e0 $00
	ret  z                                           ; $7c82: $c8

	adc  l                                           ; $7c83: $8d
	rrca                                             ; $7c84: $0f
	ld   bc, $7d85                                   ; $7c85: $01 $85 $7d
	add  [hl]                                        ; $7c88: $86
	ld   e, a                                        ; $7c89: $5f
	add  h                                           ; $7c8a: $84
	ld   e, l                                        ; $7c8b: $5d
	add  d                                           ; $7c8c: $82
	or   $8a                                         ; $7c8d: $f6 $8a
	halt                                             ; $7c8f: $76
	ld   bc, $0ff7                                   ; $7c90: $01 $f7 $0f
	add  a                                           ; $7c93: $87
	dec  c                                           ; $7c94: $0d
	add  c                                           ; $7c95: $81
	dec  b                                           ; $7c96: $05
	add  b                                           ; $7c97: $80
	push af                                          ; $7c98: $f5
	nop                                              ; $7c99: $00
	xor  l                                           ; $7c9a: $ad
	adc  l                                           ; $7c9b: $8d
	ld   e, l                                        ; $7c9c: $5d
	adc  b                                           ; $7c9d: $88
	halt                                             ; $7c9e: $76
	add  h                                           ; $7c9f: $84
	ld   [hl], h                                     ; $7ca0: $74
	nop                                              ; $7ca1: $00
	rst  JumpTable                                         ; $7ca2: $df
	add  [hl]                                        ; $7ca3: $86
	ldh  [$83], a                                    ; $7ca4: $e0 $83
	ret  nz                                          ; $7ca6: $c0

	add  b                                           ; $7ca7: $80
	rst  JumpTable                                         ; $7ca8: $df
	nop                                              ; $7ca9: $00
	ld   a, [de]                                     ; $7caa: $1a
	add  b                                           ; $7cab: $80
	push af                                          ; $7cac: $f5
	add  b                                           ; $7cad: $80
	dec  b                                           ; $7cae: $05
	adc  c                                           ; $7caf: $89
	ld   d, l                                        ; $7cb0: $55
	ld   bc, $5d0d                                   ; $7cb1: $01 $0d $5d
	adc  h                                           ; $7cb4: $8c
	ld   e, c                                        ; $7cb5: $59
	add  h                                           ; $7cb6: $84
	rst  $28                                         ; $7cb7: $ef
	adc  b                                           ; $7cb8: $88
	xor  $8e                                         ; $7cb9: $ee $8e
	ld   [hl], h                                     ; $7cbb: $74
	nop                                              ; $7cbc: $00
	ret  nz                                          ; $7cbd: $c0

	add  b                                           ; $7cbe: $80
	rst  JumpTable                                         ; $7cbf: $df
	add  b                                           ; $7cc0: $80
	ret  nz                                          ; $7cc1: $c0

	adc  c                                           ; $7cc2: $89
	push de                                          ; $7cc3: $d5
	nop                                              ; $7cc4: $00
	db   $10                                         ; $7cc5: $10
	add  d                                           ; $7cc6: $82
	ld   d, l                                        ; $7cc7: $55
	add  b                                           ; $7cc8: $80
	dec  b                                           ; $7cc9: $05
	add  d                                           ; $7cca: $82
	push af                                          ; $7ccb: $f5
	add  b                                           ; $7ccc: $80
	dec  b                                           ; $7ccd: $05
	add  b                                           ; $7cce: $80
	push af                                          ; $7ccf: $f5
	nop                                              ; $7cd0: $00
	dec  b                                           ; $7cd1: $05
	adc  h                                           ; $7cd2: $8c
	ld   e, c                                        ; $7cd3: $59
	add  b                                           ; $7cd4: $80
	ld   b, c                                        ; $7cd5: $41
	adc  h                                           ; $7cd6: $8c
	xor  $80                                         ; $7cd7: $ee $80
	ldh  [c], a                                      ; $7cd9: $e2
	adc  [hl]                                        ; $7cda: $8e
	ld   [hl], h                                     ; $7cdb: $74
	nop                                              ; $7cdc: $00
	ret  nz                                          ; $7cdd: $c0

	add  d                                           ; $7cde: $82
	push de                                          ; $7cdf: $d5
	add  b                                           ; $7ce0: $80
	ret  nz                                          ; $7ce1: $c0

	add  d                                           ; $7ce2: $82
	rst  JumpTable                                         ; $7ce3: $df
	add  b                                           ; $7ce4: $80
	ret  nz                                          ; $7ce5: $c0

	add  b                                           ; $7ce6: $80
	rst  JumpTable                                         ; $7ce7: $df
	nop                                              ; $7ce8: $00
	ret  nz                                          ; $7ce9: $c0

	add  b                                           ; $7cea: $80
	ld   hl, sp-$74                                  ; $7ceb: $f8 $8c
	rst  $38                                         ; $7ced: $ff
	add  b                                           ; $7cee: $80
	jr   c, @-$72                                    ; $7cef: $38 $8c

	rst  $38                                         ; $7cf1: $ff
	add  b                                           ; $7cf2: $80
	inc  c                                           ; $7cf3: $0c
	adc  h                                           ; $7cf4: $8c
	rst  $38                                         ; $7cf5: $ff
	add  b                                           ; $7cf6: $80
	ld   [bc], a                                     ; $7cf7: $02
	adc  h                                           ; $7cf8: $8c
	rst  $38                                         ; $7cf9: $ff
	add  b                                           ; $7cfa: $80
	rra                                              ; $7cfb: $1f
	adc  h                                           ; $7cfc: $8c
	rst  $38                                         ; $7cfd: $ff
	nop                                              ; $7cfe: $00
	ld   hl, sp-$80                                  ; $7cff: $f8 $80
	nop                                              ; $7d01: $00
	ld   bc, $0003                                   ; $7d02: $01 $03 $00
	add  d                                           ; $7d05: $82
	inc  bc                                          ; $7d06: $03
	add  l                                           ; $7d07: $85
	rlca                                             ; $7d08: $07
	nop                                              ; $7d09: $00
	db   $fc                                         ; $7d0a: $fc
	add  b                                           ; $7d0b: $80
	nop                                              ; $7d0c: $00
	ld   [bc], a                                     ; $7d0d: $02
	dec  b                                           ; $7d0e: $05
	jr   nz, jr_07d_7d36                             ; $7d0f: $20 $25

	adc  b                                           ; $7d11: $88
	ld   [hl], l                                     ; $7d12: $75
	add  c                                           ; $7d13: $81
	nop                                              ; $7d14: $00
	ld   [bc], a                                     ; $7d15: $02
	adc  $00                                         ; $7d16: $ce $00
	adc  $88                                         ; $7d18: $ce $88
	xor  $81                                         ; $7d1a: $ee $81
	nop                                              ; $7d1c: $00
	inc  b                                           ; $7d1d: $04
	jr   nz, jr_07d_7d23                             ; $7d1e: $20 $03

	daa                                              ; $7d20: $27
	and  e                                           ; $7d21: $a3
	and  a                                           ; $7d22: $a7

jr_07d_7d23:
	add  h                                           ; $7d23: $84
	or   a                                           ; $7d24: $b7
	add  b                                           ; $7d25: $80
	rst  $30                                         ; $7d26: $f7
	nop                                              ; $7d27: $00
	rrca                                             ; $7d28: $0f
	add  b                                           ; $7d29: $80
	nop                                              ; $7d2a: $00
	ld   [bc], a                                     ; $7d2b: $02
	jr   nz, jr_07d_7d2e                             ; $7d2c: $20 $00

jr_07d_7d2e:
	jr   nz, @-$7c                                   ; $7d2e: $20 $82

	and  b                                           ; $7d30: $a0
	nop                                              ; $7d31: $00
	ldh  [$83], a                                    ; $7d32: $e0 $83
	ldh  a, [rP1]                                    ; $7d34: $f0 $00

jr_07d_7d36:
	db   $e4                                         ; $7d36: $e4
	adc  l                                           ; $7d37: $8d
	rlca                                             ; $7d38: $07
	nop                                              ; $7d39: $00
	add  c                                           ; $7d3a: $81
	adc  l                                           ; $7d3b: $8d
	ld   a, l                                        ; $7d3c: $7d
	adc  [hl]                                        ; $7d3d: $8e
	xor  $86                                         ; $7d3e: $ee $86
	rst  $38                                         ; $7d40: $ff
	add  c                                           ; $7d41: $81
	ldh  a, [rP1]                                    ; $7d42: $f0 $00
	di                                               ; $7d44: $f3
	add  d                                           ; $7d45: $82
	or   b                                           ; $7d46: $b0
	nop                                              ; $7d47: $00
	ld   a, [hl]                                     ; $7d48: $7e
	adc  c                                           ; $7d49: $89
	ld   a, l                                        ; $7d4a: $7d
	add  d                                           ; $7d4b: $82
	ld   [hl], l                                     ; $7d4c: $75
	nop                                              ; $7d4d: $00
	or   b                                           ; $7d4e: $b0
	add  c                                           ; $7d4f: $81
	or   e                                           ; $7d50: $b3
	add  d                                           ; $7d51: $82
	or   b                                           ; $7d52: $b0
	add  d                                           ; $7d53: $82
	or   e                                           ; $7d54: $b3
	add  d                                           ; $7d55: $82
	or   b                                           ; $7d56: $b0
	nop                                              ; $7d57: $00
	ld   hl, sp-$7e                                  ; $7d58: $f8 $82
	rlca                                             ; $7d5a: $07
	add  a                                           ; $7d5b: $87
	inc  bc                                          ; $7d5c: $03
	add  b                                           ; $7d5d: $80
	ei                                               ; $7d5e: $fb
	nop                                              ; $7d5f: $00
	adc  l                                           ; $7d60: $8d
	adc  l                                           ; $7d61: $8d
	ld   [hl], l                                     ; $7d62: $75
	nop                                              ; $7d63: $00
	inc  bc                                          ; $7d64: $03
	add  b                                           ; $7d65: $80
	ei                                               ; $7d66: $fb
	add  b                                           ; $7d67: $80
	inc  bc                                          ; $7d68: $03
	adc  c                                           ; $7d69: $89
	ld   d, e                                        ; $7d6a: $53
	nop                                              ; $7d6b: $00
	dec  h                                           ; $7d6c: $25
	add  l                                           ; $7d6d: $85
	ld   [hl], l                                     ; $7d6e: $75
	add  [hl]                                        ; $7d6f: $86
	ld   h, l                                        ; $7d70: $65
	nop                                              ; $7d71: $00
	or   b                                           ; $7d72: $b0
	add  b                                           ; $7d73: $80
	or   d                                           ; $7d74: $b2
	nop                                              ; $7d75: $00
	or   e                                           ; $7d76: $b3
	add  b                                           ; $7d77: $80
	or   c                                           ; $7d78: $b1
	add  b                                           ; $7d79: $80
	or   b                                           ; $7d7a: $b0
	add  d                                           ; $7d7b: $82
	or   e                                           ; $7d7c: $b3
	add  d                                           ; $7d7d: $82
	or   b                                           ; $7d7e: $b0
	nop                                              ; $7d7f: $00
	nop                                              ; $7d80: $00

jr_07d_7d81:
	add  d                                           ; $7d81: $82
	ld   d, e                                        ; $7d82: $53
	add  b                                           ; $7d83: $80
	inc  bc                                          ; $7d84: $03
	add  d                                           ; $7d85: $82
	ei                                               ; $7d86: $fb
	add  b                                           ; $7d87: $80
	inc  bc                                          ; $7d88: $03
	add  b                                           ; $7d89: $80
	ei                                               ; $7d8a: $fb
	nop                                              ; $7d8b: $00
	inc  bc                                          ; $7d8c: $03
	adc  h                                           ; $7d8d: $8c
	ld   h, l                                        ; $7d8e: $65
	add  b                                           ; $7d8f: $80
	dec  b                                           ; $7d90: $05
	nop                                              ; $7d91: $00
	or   b                                           ; $7d92: $b0
	add  c                                           ; $7d93: $81
	or   e                                           ; $7d94: $b3
	add  d                                           ; $7d95: $82
	or   b                                           ; $7d96: $b0
	add  e                                           ; $7d97: $83
	or   e                                           ; $7d98: $b3
	inc  b                                           ; $7d99: $04
	or   b                                           ; $7d9a: $b0
	jr   nc, jr_07d_7dce                             ; $7d9b: $30 $31

	db   $fd                                         ; $7d9d: $fd
	db   $fc                                         ; $7d9e: $fc
	adc  h                                           ; $7d9f: $8c
	rst  $38                                         ; $7da0: $ff
	add  b                                           ; $7da1: $80
	ld   [hl], d                                     ; $7da2: $72
	adc  h                                           ; $7da3: $8c
	rst  $38                                         ; $7da4: $ff
	add  b                                           ; $7da5: $80
	ld   de, $ff8c                                   ; $7da6: $11 $8c $ff
	add  b                                           ; $7da9: $80
	call z, $ff8c                                    ; $7daa: $cc $8c $ff
	rlca                                             ; $7dad: $07
	ldh  [$7f], a                                    ; $7dae: $e0 $7f
	ld   d, l                                        ; $7db0: $55
	or   l                                           ; $7db1: $b5
	add  d                                           ; $7db2: $82
	jp   nz, $1020                                   ; $7db3: $c2 $20 $10

	add  b                                           ; $7db6: $80
	ld   hl, sp-$80                                  ; $7db7: $f8 $80
	rst  $38                                         ; $7db9: $ff
	add  b                                           ; $7dba: $80
	ld   a, [$f580]                                  ; $7dbb: $fa $80 $f5
	rlca                                             ; $7dbe: $07
	ld   [$52fe], sp                                 ; $7dbf: $08 $fe $52
	ld   d, l                                        ; $7dc2: $55
	and  c                                           ; $7dc3: $a1
	and  e                                           ; $7dc4: $a3
	inc  b                                           ; $7dc5: $04
	ld   [$1f80], sp                                 ; $7dc6: $08 $80 $1f
	add  b                                           ; $7dc9: $80
	rst  $38                                         ; $7dca: $ff
	add  b                                           ; $7dcb: $80
	xor  a                                           ; $7dcc: $af
	add  b                                           ; $7dcd: $80

jr_07d_7dce:
	ld   e, a                                        ; $7dce: $5f
	ld   [$cf38], sp                                 ; $7dcf: $08 $38 $cf
	rlca                                             ; $7dd2: $07
	rst  $38                                         ; $7dd3: $ff
	cp   $ff                                         ; $7dd4: $fe $ff
	nop                                              ; $7dd6: $00
	rst  $38                                         ; $7dd7: $ff
	ld   bc, $ff82                                   ; $7dd8: $01 $82 $ff
	add  b                                           ; $7ddb: $80
	nop                                              ; $7ddc: $00
	add  b                                           ; $7ddd: $80
	ret  nz                                          ; $7dde: $c0

	dec  b                                           ; $7ddf: $05
	inc  bc                                          ; $7de0: $03
	add  c                                           ; $7de1: $81
	add  a                                           ; $7de2: $87
	db   $e4                                         ; $7de3: $e4
	rst  $20                                         ; $7de4: $e7
	push af                                          ; $7de5: $f5
	add  b                                           ; $7de6: $80
	or   $01                                         ; $7de7: $f6 $01
	cp   $f6                                         ; $7de9: $fe $f6
	add  b                                           ; $7deb: $80
	cp   $0f                                         ; $7dec: $fe $0f
	rst  $38                                         ; $7dee: $ff
	ld   sp, hl                                      ; $7def: $f9
	rst  $38                                         ; $7df0: $ff
	ld   [bc], a                                     ; $7df1: $02
	ldh  a, [rSVBK]                                  ; $7df2: $f0 $70
	ld   hl, sp-$48                                  ; $7df4: $f8 $b8
	ld   hl, sp-$78                                  ; $7df6: $f8 $88
	ld   a, h                                        ; $7df8: $7c
	inc  l                                           ; $7df9: $2c
	jr   c, jr_07d_7e54                              ; $7dfa: $38 $58

	ld   a, h                                        ; $7dfc: $7c
	inc  a                                           ; $7dfd: $3c
	add  b                                           ; $7dfe: $80
	jr   c, jr_07d_7d81                              ; $7dff: $38 $80

	cp   b                                           ; $7e01: $b8
	dec  b                                           ; $7e02: $05
	db   $10                                         ; $7e03: $10
	ret  nc                                          ; $7e04: $d0

	ret  nz                                          ; $7e05: $c0

	jp   $fcff                                       ; $7e06: $c3 $ff $fc


	add  b                                           ; $7e09: $80
	inc  bc                                          ; $7e0a: $03
	add  d                                           ; $7e0b: $82
	nop                                              ; $7e0c: $00
	inc  bc                                          ; $7e0d: $03
	rlca                                             ; $7e0e: $07
	ld   b, $07                                      ; $7e0f: $06 $07
	ld   sp, hl                                      ; $7e11: $f9
	rst  $38                                         ; $7e12: $ff
	nop                                              ; $7e13: $00
	rst  $38                                         ; $7e14: $ff
	nop                                              ; $7e15: $00
	rst  $38                                         ; $7e16: $ff
	nop                                              ; $7e17: $00
	sbc  d                                           ; $7e18: $9a
	nop                                              ; $7e19: $00
	nop                                              ; $7e1a: $00
	ld   bc, $0302                                   ; $7e1b: $01 $02 $03
	inc  b                                           ; $7e1e: $04
	inc  b                                           ; $7e1f: $04
	inc  b                                           ; $7e20: $04
	rlca                                             ; $7e21: $07
	dec  b                                           ; $7e22: $05
	ld   b, $0e                                      ; $7e23: $06 $0e
	rrca                                             ; $7e25: $0f
	dec  a                                           ; $7e26: $3d
	dec  c                                           ; $7e27: $0d
	inc  b                                           ; $7e28: $04
	inc  b                                           ; $7e29: $04
	jr   nz, jr_07d_7e4d                             ; $7e2a: $20 $21

	ld   [hl+], a                                    ; $7e2c: $22
	inc  hl                                          ; $7e2d: $23
	db   $10                                         ; $7e2e: $10
	ld   de, $1312                                   ; $7e2f: $11 $12 $13
	inc  d                                           ; $7e32: $14
	dec  d                                           ; $7e33: $15
	ld   d, $3e                                      ; $7e34: $16 $3e
	ld   c, l                                        ; $7e36: $4d
	ld   c, [hl]                                     ; $7e37: $4e
	ld   c, a                                        ; $7e38: $4f
	ld   d, h                                        ; $7e39: $54
	ld   d, l                                        ; $7e3a: $55
	dec  e                                           ; $7e3b: $1d
	ld   e, $1f                                      ; $7e3c: $1e $1f
	jr   nc, jr_07d_7e71                             ; $7e3e: $30 $31

	ld   [hl-], a                                    ; $7e40: $32
	inc  sp                                          ; $7e41: $33
	jr   nz, jr_07d_7e65                             ; $7e42: $20 $21

	ld   [hl+], a                                    ; $7e44: $22
	inc  hl                                          ; $7e45: $23
	inc  h                                           ; $7e46: $24
	dec  h                                           ; $7e47: $25
	ld   h, $56                                      ; $7e48: $26 $56
	ld   e, l                                        ; $7e4a: $5d
	ld   e, [hl]                                     ; $7e4b: $5e
	ld   e, a                                        ; $7e4c: $5f

jr_07d_7e4d:
	ld   l, c                                        ; $7e4d: $69
	cpl                                              ; $7e4e: $2f
	dec  l                                           ; $7e4f: $2d
	ld   l, $2f                                      ; $7e50: $2e $2f
	inc  h                                           ; $7e52: $24
	dec  h                                           ; $7e53: $25

jr_07d_7e54:
	ld   h, $27                                      ; $7e54: $26 $27
	jr   nc, jr_07d_7e89                             ; $7e56: $30 $31

	ld   [hl-], a                                    ; $7e58: $32
	inc  sp                                          ; $7e59: $33
	inc  [hl]                                        ; $7e5a: $34
	dec  [hl]                                        ; $7e5b: $35
	ld   [hl], $70                                   ; $7e5c: $36 $70
	ld   a, d                                        ; $7e5e: $7a
	ld   [$291c], sp                                 ; $7e5f: $08 $1c $29
	ld   c, b                                        ; $7e62: $48
	dec  l                                           ; $7e63: $2d
	ld   b, h                                        ; $7e64: $44

jr_07d_7e65:
	ccf                                              ; $7e65: $3f
	inc  [hl]                                        ; $7e66: $34
	dec  [hl]                                        ; $7e67: $35
	ld   [hl], $37                                   ; $7e68: $36 $37
	ld   b, b                                        ; $7e6a: $40
	ld   b, c                                        ; $7e6b: $41
	ld   b, d                                        ; $7e6c: $42
	ld   b, e                                        ; $7e6d: $43
	ld   b, h                                        ; $7e6e: $44
	ld   b, l                                        ; $7e6f: $45
	ld   b, [hl]                                     ; $7e70: $46

jr_07d_7e71:
	jr   c, jr_07d_7eac                              ; $7e71: $38 $39

	dec  sp                                          ; $7e73: $3b
	inc  e                                           ; $7e74: $1c
	ld   b, [hl]                                     ; $7e75: $46
	ld   c, h                                        ; $7e76: $4c
	dec  l                                           ; $7e77: $2d
	ld   b, h                                        ; $7e78: $44
	ld   b, h                                        ; $7e79: $44
	jr   z, jr_07d_7eb1                              ; $7e7a: $28 $35

	ld   a, [hl+]                                    ; $7e7c: $2a
	dec  hl                                          ; $7e7d: $2b
	ld   d, b                                        ; $7e7e: $50
	ld   d, c                                        ; $7e7f: $51
	ld   d, d                                        ; $7e80: $52
	ld   d, e                                        ; $7e81: $53
	ld   b, h                                        ; $7e82: $44
	ld   b, h                                        ; $7e83: $44
	ld   b, h                                        ; $7e84: $44
	ld   c, c                                        ; $7e85: $49
	add  hl, sp                                      ; $7e86: $39
	ld   c, e                                        ; $7e87: $4b
	inc  e                                           ; $7e88: $1c

jr_07d_7e89:
	ld   b, [hl]                                     ; $7e89: $46
	ld   c, h                                        ; $7e8a: $4c
	dec  l                                           ; $7e8b: $2d
	ld   b, h                                        ; $7e8c: $44
	ld   b, h                                        ; $7e8d: $44
	jr   z, jr_07d_7ec5                              ; $7e8e: $28 $35

	ld   a, [hl-]                                    ; $7e90: $3a
	dec  hl                                          ; $7e91: $2b
	ld   h, b                                        ; $7e92: $60
	ld   h, c                                        ; $7e93: $61
	ld   h, d                                        ; $7e94: $62
	ld   h, e                                        ; $7e95: $63
	ld   h, h                                        ; $7e96: $64
	ld   h, l                                        ; $7e97: $65
	ld   h, [hl]                                     ; $7e98: $66
	ld   c, l                                        ; $7e99: $4d
	ld   c, d                                        ; $7e9a: $4a
	ld   c, [hl]                                     ; $7e9b: $4e
	ld   d, c                                        ; $7e9c: $51
	ld   c, a                                        ; $7e9d: $4f
	ld   d, b                                        ; $7e9e: $50
	ld   l, l                                        ; $7e9f: $6d
	ld   l, [hl]                                     ; $7ea0: $6e
	ld   l, a                                        ; $7ea1: $6f
	inc  l                                           ; $7ea2: $2c
	dec  l                                           ; $7ea3: $2d
	ld   l, $2b                                      ; $7ea4: $2e $2b
	ld   b, h                                        ; $7ea6: $44
	ld   [hl], c                                     ; $7ea7: $71
	ld   [hl], d                                     ; $7ea8: $72
	ld   [hl], e                                     ; $7ea9: $73
	ld   [hl], h                                     ; $7eaa: $74
	ld   [hl], l                                     ; $7eab: $75

jr_07d_7eac:
	halt                                             ; $7eac: $76
	ld   [hl], a                                     ; $7ead: $77
	ld   d, d                                        ; $7eae: $52
	ld   d, e                                        ; $7eaf: $53
	ld   d, h                                        ; $7eb0: $54

jr_07d_7eb1:
	ld   d, l                                        ; $7eb1: $55
	ld   a, h                                        ; $7eb2: $7c
	ld   a, l                                        ; $7eb3: $7d
	ld   a, [hl]                                     ; $7eb4: $7e
	ld   a, a                                        ; $7eb5: $7f
	inc  a                                           ; $7eb6: $3c
	dec  a                                           ; $7eb7: $3d
	ld   a, $3f                                      ; $7eb8: $3e $3f
	nop                                              ; $7eba: $00
	ld   bc, $0302                                   ; $7ebb: $01 $02 $03
	inc  b                                           ; $7ebe: $04
	dec  b                                           ; $7ebf: $05
	ld   b, $07                                      ; $7ec0: $06 $07
	rlca                                             ; $7ec2: $07
	add  hl, bc                                      ; $7ec3: $09
	ld   a, [bc]                                     ; $7ec4: $0a

jr_07d_7ec5:
	dec  bc                                          ; $7ec5: $0b
	inc  c                                           ; $7ec6: $0c
	dec  c                                           ; $7ec7: $0d
	ld   c, $0f                                      ; $7ec8: $0e $0f
	ld   b, b                                        ; $7eca: $40
	ld   b, c                                        ; $7ecb: $41
	ld   b, d                                        ; $7ecc: $42
	ld   b, e                                        ; $7ecd: $43
	db   $10                                         ; $7ece: $10
	ld   de, $1312                                   ; $7ecf: $11 $12 $13
	inc  d                                           ; $7ed2: $14
	dec  d                                           ; $7ed3: $15
	ld   d, $17                                      ; $7ed4: $16 $17
	jr   jr_07d_7ef1                                 ; $7ed6: $18 $19

	ld   a, [de]                                     ; $7ed8: $1a
	dec  de                                          ; $7ed9: $1b
	dec  de                                          ; $7eda: $1b
	dec  e                                           ; $7edb: $1d
	ld   e, $1f                                      ; $7edc: $1e $1f
	ld   b, h                                        ; $7ede: $44
	dec  de                                          ; $7edf: $1b
	dec  de                                          ; $7ee0: $1b
	ld   b, a                                        ; $7ee1: $47
	inc  b                                           ; $7ee2: $04
	inc  b                                           ; $7ee3: $04
	inc  b                                           ; $7ee4: $04
	inc  b                                           ; $7ee5: $04
	inc  b                                           ; $7ee6: $04
	inc  b                                           ; $7ee7: $04
	inc  b                                           ; $7ee8: $04
	inc  b                                           ; $7ee9: $04
	inc  bc                                          ; $7eea: $03
	inc  bc                                          ; $7eeb: $03
	inc  bc                                          ; $7eec: $03
	inc  bc                                          ; $7eed: $03
	inc  bc                                          ; $7eee: $03
	inc  b                                           ; $7eef: $04
	inc  b                                           ; $7ef0: $04

jr_07d_7ef1:
	inc  b                                           ; $7ef1: $04
	inc  c                                           ; $7ef2: $0c
	inc  c                                           ; $7ef3: $0c
	inc  c                                           ; $7ef4: $0c
	inc  c                                           ; $7ef5: $0c
	inc  b                                           ; $7ef6: $04
	inc  b                                           ; $7ef7: $04
	inc  b                                           ; $7ef8: $04
	inc  b                                           ; $7ef9: $04
	inc  b                                           ; $7efa: $04
	inc  b                                           ; $7efb: $04
	inc  b                                           ; $7efc: $04
	inc  bc                                          ; $7efd: $03
	inc  bc                                          ; $7efe: $03
	inc  bc                                          ; $7eff: $03
	inc  bc                                          ; $7f00: $03
	inc  bc                                          ; $7f01: $03
	inc  bc                                          ; $7f02: $03
	inc  b                                           ; $7f03: $04
	inc  b                                           ; $7f04: $04
	inc  b                                           ; $7f05: $04
	inc  c                                           ; $7f06: $0c
	inc  c                                           ; $7f07: $0c
	inc  c                                           ; $7f08: $0c
	inc  c                                           ; $7f09: $0c
	inc  b                                           ; $7f0a: $04
	inc  b                                           ; $7f0b: $04
	inc  b                                           ; $7f0c: $04
	inc  b                                           ; $7f0d: $04
	inc  b                                           ; $7f0e: $04
	inc  bc                                          ; $7f0f: $03
	inc  bc                                          ; $7f10: $03
	inc  bc                                          ; $7f11: $03
	inc  bc                                          ; $7f12: $03
	inc  bc                                          ; $7f13: $03
	inc  bc                                          ; $7f14: $03
	inc  bc                                          ; $7f15: $03
	dec  bc                                          ; $7f16: $0b
	inc  b                                           ; $7f17: $04
	inc  b                                           ; $7f18: $04
	inc  b                                           ; $7f19: $04
	inc  c                                           ; $7f1a: $0c
	inc  c                                           ; $7f1b: $0c
	dec  bc                                          ; $7f1c: $0b
	inc  c                                           ; $7f1d: $0c
	inc  b                                           ; $7f1e: $04
	inc  b                                           ; $7f1f: $04
	inc  b                                           ; $7f20: $04
	inc  b                                           ; $7f21: $04
	inc  b                                           ; $7f22: $04
	inc  bc                                          ; $7f23: $03
	inc  bc                                          ; $7f24: $03
	inc  bc                                          ; $7f25: $03
	inc  bc                                          ; $7f26: $03
	dec  bc                                          ; $7f27: $0b
	dec  bc                                          ; $7f28: $0b
	dec  bc                                          ; $7f29: $0b
	dec  bc                                          ; $7f2a: $0b
	inc  b                                           ; $7f2b: $04
	inc  b                                           ; $7f2c: $04
	inc  b                                           ; $7f2d: $04
	inc  c                                           ; $7f2e: $0c
	inc  c                                           ; $7f2f: $0c
	dec  bc                                          ; $7f30: $0b
	inc  c                                           ; $7f31: $0c
	inc  b                                           ; $7f32: $04
	inc  b                                           ; $7f33: $04
	inc  b                                           ; $7f34: $04
	inc  b                                           ; $7f35: $04
	inc  b                                           ; $7f36: $04
	inc  bc                                          ; $7f37: $03
	inc  bc                                          ; $7f38: $03
	dec  bc                                          ; $7f39: $0b
	dec  bc                                          ; $7f3a: $0b
	dec  bc                                          ; $7f3b: $0b
	dec  bc                                          ; $7f3c: $0b
	dec  bc                                          ; $7f3d: $0b
	dec  bc                                          ; $7f3e: $0b
	inc  b                                           ; $7f3f: $04
	inc  b                                           ; $7f40: $04
	inc  b                                           ; $7f41: $04
	inc  c                                           ; $7f42: $0c
	inc  c                                           ; $7f43: $0c
	dec  bc                                          ; $7f44: $0b
	inc  c                                           ; $7f45: $0c

jr_07d_7f46:
	inc  b                                           ; $7f46: $04
	inc  b                                           ; $7f47: $04
	inc  b                                           ; $7f48: $04
	inc  b                                           ; $7f49: $04
	inc  b                                           ; $7f4a: $04
	inc  b                                           ; $7f4b: $04
	inc  b                                           ; $7f4c: $04
	dec  bc                                          ; $7f4d: $0b
	dec  bc                                          ; $7f4e: $0b
	dec  bc                                          ; $7f4f: $0b
	dec  bc                                          ; $7f50: $0b
	dec  bc                                          ; $7f51: $0b
	dec  bc                                          ; $7f52: $0b
	inc  b                                           ; $7f53: $04
	inc  b                                           ; $7f54: $04
	inc  b                                           ; $7f55: $04
	inc  c                                           ; $7f56: $0c
	inc  c                                           ; $7f57: $0c
	dec  bc                                          ; $7f58: $0b
	inc  c                                           ; $7f59: $0c
	inc  b                                           ; $7f5a: $04
	inc  b                                           ; $7f5b: $04
	inc  b                                           ; $7f5c: $04
	dec  b                                           ; $7f5d: $05
	dec  b                                           ; $7f5e: $05
	dec  b                                           ; $7f5f: $05
	dec  b                                           ; $7f60: $05
	dec  bc                                          ; $7f61: $0b
	dec  bc                                          ; $7f62: $0b
	dec  bc                                          ; $7f63: $0b
	dec  bc                                          ; $7f64: $0b
	inc  c                                           ; $7f65: $0c
	inc  c                                           ; $7f66: $0c
	inc  b                                           ; $7f67: $04
	inc  b                                           ; $7f68: $04
	inc  b                                           ; $7f69: $04
	inc  c                                           ; $7f6a: $0c
	inc  c                                           ; $7f6b: $0c
	inc  c                                           ; $7f6c: $0c
	inc  c                                           ; $7f6d: $0c
	inc  b                                           ; $7f6e: $04
	inc  b                                           ; $7f6f: $04
	dec  b                                           ; $7f70: $05
	dec  b                                           ; $7f71: $05
	dec  b                                           ; $7f72: $05
	dec  b                                           ; $7f73: $05
	dec  b                                           ; $7f74: $05
	inc  b                                           ; $7f75: $04
	inc  c                                           ; $7f76: $0c
	inc  c                                           ; $7f77: $0c
	inc  c                                           ; $7f78: $0c
	inc  c                                           ; $7f79: $0c
	inc  b                                           ; $7f7a: $04
	inc  b                                           ; $7f7b: $04
	dec  b                                           ; $7f7c: $05
	dec  b                                           ; $7f7d: $05
	inc  c                                           ; $7f7e: $0c
	inc  c                                           ; $7f7f: $0c
	inc  c                                           ; $7f80: $0c
	inc  c                                           ; $7f81: $0c
	inc  c                                           ; $7f82: $0c
	inc  c                                           ; $7f83: $0c
	inc  c                                           ; $7f84: $0c
	inc  c                                           ; $7f85: $0c
	inc  c                                           ; $7f86: $0c
	inc  c                                           ; $7f87: $0c
	inc  c                                           ; $7f88: $0c
	inc  c                                           ; $7f89: $0c
	inc  c                                           ; $7f8a: $0c
	inc  c                                           ; $7f8b: $0c
	inc  c                                           ; $7f8c: $0c
	inc  c                                           ; $7f8d: $0c
	inc  c                                           ; $7f8e: $0c
	inc  c                                           ; $7f8f: $0c
	dec  c                                           ; $7f90: $0d
	dec  c                                           ; $7f91: $0d
	inc  c                                           ; $7f92: $0c
	inc  c                                           ; $7f93: $0c
	inc  c                                           ; $7f94: $0c
	inc  c                                           ; $7f95: $0c
	inc  c                                           ; $7f96: $0c
	inc  c                                           ; $7f97: $0c
	inc  c                                           ; $7f98: $0c
	inc  c                                           ; $7f99: $0c
	inc  c                                           ; $7f9a: $0c
	inc  c                                           ; $7f9b: $0c
	inc  c                                           ; $7f9c: $0c
	inc  c                                           ; $7f9d: $0c
	inc  c                                           ; $7f9e: $0c
	inc  c                                           ; $7f9f: $0c
	inc  c                                           ; $7fa0: $0c
	inc  c                                           ; $7fa1: $0c
	inc  c                                           ; $7fa2: $0c
	inc  c                                           ; $7fa3: $0c
	inc  c                                           ; $7fa4: $0c
	inc  c                                           ; $7fa5: $0c
	inc  c                                           ; $7fa6: $0c
	inc  c                                           ; $7fa7: $0c
	inc  c                                           ; $7fa8: $0c
	inc  c                                           ; $7fa9: $0c
	rra                                              ; $7faa: $1f
	nop                                              ; $7fab: $00
	nop                                              ; $7fac: $00
	rrca                                             ; $7fad: $0f
	add  c                                           ; $7fae: $81
	nop                                              ; $7faf: $00
	add  b                                           ; $7fb0: $80
	rrca                                             ; $7fb1: $0f
	adc  b                                           ; $7fb2: $88
	nop                                              ; $7fb3: $00
	nop                                              ; $7fb4: $00
	ldh  a, [$81]                                    ; $7fb5: $f0 $81
	nop                                              ; $7fb7: $00
	ld   [bc], a                                     ; $7fb8: $02
	ret  nz                                          ; $7fb9: $c0

	rst  ToBoot                                         ; $7fba: $c7
	ld   b, a                                        ; $7fbb: $47
	add  c                                           ; $7fbc: $81
	ld   b, b                                        ; $7fbd: $40
	nop                                              ; $7fbe: $00
	nop                                              ; $7fbf: $00
	add  e                                           ; $7fc0: $83
	jr   nz, jr_07d_7fc4                             ; $7fc1: $20 $01

	nop                                              ; $7fc3: $00

jr_07d_7fc4:
	jr   nz, jr_07d_7f46                             ; $7fc4: $20 $80

	nop                                              ; $7fc6: $00
	ld   [bc], a                                     ; $7fc7: $02
	cpl                                              ; $7fc8: $2f
	rst  $38                                         ; $7fc9: $ff
	ret  nc                                          ; $7fca: $d0

	add  a                                           ; $7fcb: $87
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	rst  $38                                         ; $7fce: $ff
	rst  $38                                         ; $7fcf: $ff
	nop                                              ; $7fd0: $00
	rst  $38                                         ; $7fd1: $ff
	nop                                              ; $7fd2: $00
	rst  $38                                         ; $7fd3: $ff
	nop                                              ; $7fd4: $00
	rst  $38                                         ; $7fd5: $ff
	nop                                              ; $7fd6: $00
	rst  $38                                         ; $7fd7: $ff
	nop                                              ; $7fd8: $00
	rst  $38                                         ; $7fd9: $ff
	nop                                              ; $7fda: $00
	rst  $38                                         ; $7fdb: $ff
	nop                                              ; $7fdc: $00
	rst  $38                                         ; $7fdd: $ff
	nop                                              ; $7fde: $00
	rst  $38                                         ; $7fdf: $ff
	nop                                              ; $7fe0: $00
	rst  $38                                         ; $7fe1: $ff
	nop                                              ; $7fe2: $00
	rst  $38                                         ; $7fe3: $ff
	nop                                              ; $7fe4: $00
	rst  $38                                         ; $7fe5: $ff
	nop                                              ; $7fe6: $00
	rst  $38                                         ; $7fe7: $ff
	nop                                              ; $7fe8: $00
	rst  $38                                         ; $7fe9: $ff
	nop                                              ; $7fea: $00
	rst  $38                                         ; $7feb: $ff
	nop                                              ; $7fec: $00
	cp   [hl]                                        ; $7fed: $be
	nop                                              ; $7fee: $00
	nop                                              ; $7fef: $00
	nop                                              ; $7ff0: $00
	nop                                              ; $7ff1: $00
	nop                                              ; $7ff2: $00
	nop                                              ; $7ff3: $00
	nop                                              ; $7ff4: $00
	nop                                              ; $7ff5: $00
	nop                                              ; $7ff6: $00
	nop                                              ; $7ff7: $00
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
