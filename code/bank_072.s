; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $072", ROMX[$4000], BANK[$72]

	sbc  b                                           ; $4000: $98
	ld   bc, $0086                                   ; $4001: $01 $86 $00
	nop                                              ; $4004: $00
	rrca                                             ; $4005: $0f
	add  l                                           ; $4006: $85
	nop                                              ; $4007: $00
	nop                                              ; $4008: $00
	rrca                                             ; $4009: $0f
	add  l                                           ; $400a: $85
	nop                                              ; $400b: $00
	ld   bc, $00ff                                   ; $400c: $01 $ff $00
	add  b                                           ; $400f: $80
	ld   bc, $0082                                   ; $4010: $01 $82 $00
	nop                                              ; $4013: $00
	rst  $38                                         ; $4014: $ff
	add  l                                           ; $4015: $85
	nop                                              ; $4016: $00
	ld   bc, $08f7                                   ; $4017: $01 $f7 $08
	add  b                                           ; $401a: $80
	ld   d, h                                        ; $401b: $54
	add  b                                           ; $401c: $80
	ld   [$5480], sp                                 ; $401d: $08 $80 $54
	nop                                              ; $4020: $00
	rst  $38                                         ; $4021: $ff
	add  l                                           ; $4022: $85
	nop                                              ; $4023: $00
	nop                                              ; $4024: $00
	ld   hl, $de83                                   ; $4025: $21 $83 $de
	add  b                                           ; $4028: $80
	ld   c, h                                        ; $4029: $4c
	nop                                              ; $402a: $00
	rst  $38                                         ; $402b: $ff
	add  l                                           ; $402c: $85
	nop                                              ; $402d: $00
	ld   bc, $708f                                   ; $402e: $01 $8f $70
	add  b                                           ; $4031: $80
	ld   [hl], d                                     ; $4032: $72
	add  b                                           ; $4033: $80
	ld   [hl-], a                                    ; $4034: $32
	add  b                                           ; $4035: $80
	ld   [hl], d                                     ; $4036: $72
	nop                                              ; $4037: $00
	rst  $38                                         ; $4038: $ff
	add  l                                           ; $4039: $85
	nop                                              ; $403a: $00
	ld   bc, $17e8                                   ; $403b: $01 $e8 $17
	add  b                                           ; $403e: $80
	dec  bc                                          ; $403f: $0b
	add  b                                           ; $4040: $80
	rla                                              ; $4041: $17
	ld   [bc], a                                     ; $4042: $02
	ld   c, $0f                                      ; $4043: $0e $0f
	cp   $85                                         ; $4045: $fe $85
	nop                                              ; $4047: $00
	inc  b                                           ; $4048: $04
	jp   hl                                          ; $4049: $e9


	dec  sp                                          ; $404a: $3b
	dec  bc                                          ; $404b: $0b
	dec  sp                                          ; $404c: $3b
	dec  de                                          ; $404d: $1b
	add  c                                           ; $404e: $81
	dec  sp                                          ; $404f: $3b
	nop                                              ; $4050: $00
	jp   nz, $0085                                   ; $4051: $c2 $85 $00

	ld   [$7f80], sp                                 ; $4054: $08 $80 $7f
	ld   d, b                                        ; $4057: $50
	ld   a, a                                        ; $4058: $7f
	ld   b, a                                        ; $4059: $47
	ld   a, a                                        ; $405a: $7f
	ld   b, a                                        ; $405b: $47
	ld   a, a                                        ; $405c: $7f
	ret  nc                                          ; $405d: $d0

	add  l                                           ; $405e: $85
	nop                                              ; $405f: $00
	ld   bc, $fffe                                   ; $4060: $01 $fe $ff
	add  b                                           ; $4063: $80
	ld   c, c                                        ; $4064: $49
	inc  b                                           ; $4065: $04
	ld   c, b                                        ; $4066: $48
	ld   c, c                                        ; $4067: $49
	ld   c, a                                        ; $4068: $4f
	ld   b, c                                        ; $4069: $41
	ld   c, $85                                      ; $406a: $0e $85
	nop                                              ; $406c: $00
	ld   [bc], a                                     ; $406d: $02
	dec  c                                           ; $406e: $0d
	rst  $30                                         ; $406f: $f7
	inc  bc                                          ; $4070: $03
	add  e                                           ; $4071: $83
	di                                               ; $4072: $f3
	nop                                              ; $4073: $00
	ld   a, [bc]                                     ; $4074: $0a
	add  l                                           ; $4075: $85
	nop                                              ; $4076: $00
	ld   [$9f03], sp                                 ; $4077: $08 $03 $9f
	ei                                               ; $407a: $fb
	xor  [hl]                                        ; $407b: $ae
	rst  $30                                         ; $407c: $f7
	ret                                              ; $407d: $c9


	ld   [$b6ab], a                                  ; $407e: $ea $ab $b6
	add  l                                           ; $4081: $85
	nop                                              ; $4082: $00
	nop                                              ; $4083: $00
	ld   l, h                                        ; $4084: $6c
	add  l                                           ; $4085: $85
	cp   e                                           ; $4086: $bb
	nop                                              ; $4087: $00
	rst  $10                                         ; $4088: $d7
	add  l                                           ; $4089: $85
	nop                                              ; $408a: $00
	ld   bc, $e01f                                   ; $408b: $01 $1f $e0
	add  l                                           ; $408e: $85
	rst  $38                                         ; $408f: $ff
	add  l                                           ; $4090: $85
	nop                                              ; $4091: $00
	ld   bc, $00ff                                   ; $4092: $01 $ff $00
	add  h                                           ; $4095: $84
	cp   [hl]                                        ; $4096: $be
	nop                                              ; $4097: $00
	rst  $38                                         ; $4098: $ff
	add  l                                           ; $4099: $85
	nop                                              ; $409a: $00
	ld   bc, $00ff                                   ; $409b: $01 $ff $00
	add  b                                           ; $409e: $80
	pop  de                                          ; $409f: $d1
	add  b                                           ; $40a0: $80
	ld   [$d180], a                                  ; $40a1: $ea $80 $d1
	nop                                              ; $40a4: $00
	rst  $38                                         ; $40a5: $ff
	add  l                                           ; $40a6: $85
	nop                                              ; $40a7: $00
	ld   bc, $00ff                                   ; $40a8: $01 $ff $00
	add  b                                           ; $40ab: $80
	ld   b, b                                        ; $40ac: $40
	add  b                                           ; $40ad: $80
	and  b                                           ; $40ae: $a0
	add  b                                           ; $40af: $80
	ld   b, b                                        ; $40b0: $40
	nop                                              ; $40b1: $00
	ldh  a, [$8d]                                    ; $40b2: $f0 $8d
	nop                                              ; $40b4: $00
	ld   bc, $00f0                                   ; $40b5: $01 $f0 $00
	add  b                                           ; $40b8: $80
	ld   bc, $0084                                   ; $40b9: $01 $84 $00
	add  b                                           ; $40bc: $80
	ld   bc, $0082                                   ; $40bd: $01 $82 $00
	add  h                                           ; $40c0: $84
	rst  $38                                         ; $40c1: $ff
	dec  bc                                          ; $40c2: $0b
	ld   a, a                                        ; $40c3: $7f
	rst  $38                                         ; $40c4: $ff
	cp   a                                           ; $40c5: $bf
	rst  $38                                         ; $40c6: $ff
	ld   c, a                                        ; $40c7: $4f
	ld   a, a                                        ; $40c8: $7f
	and  e                                           ; $40c9: $a3
	xor  a                                           ; $40ca: $af
	ld   d, h                                        ; $40cb: $54
	ld   d, a                                        ; $40cc: $57
	ld   hl, $80de                                   ; $40cd: $21 $de $80
	ld   c, h                                        ; $40d0: $4c
	add  b                                           ; $40d1: $80
	sbc  [hl]                                        ; $40d2: $9e
	add  b                                           ; $40d3: $80
	ld   c, h                                        ; $40d4: $4c
	add  b                                           ; $40d5: $80
	sbc  [hl]                                        ; $40d6: $9e
	add  b                                           ; $40d7: $80
	inc  c                                           ; $40d8: $0c
	add  b                                           ; $40d9: $80
	sbc  [hl]                                        ; $40da: $9e
	add  b                                           ; $40db: $80
	inc  c                                           ; $40dc: $0c
	add  b                                           ; $40dd: $80
	ld   [hl-], a                                    ; $40de: $32
	add  b                                           ; $40df: $80
	ld   [hl], e                                     ; $40e0: $73
	add  b                                           ; $40e1: $80
	ld   [hl-], a                                    ; $40e2: $32
	add  b                                           ; $40e3: $80
	ld   [hl], e                                     ; $40e4: $73
	add  b                                           ; $40e5: $80
	ld   [hl-], a                                    ; $40e6: $32
	add  b                                           ; $40e7: $80
	ld   [hl], e                                     ; $40e8: $73
	add  b                                           ; $40e9: $80
	ld   [hl-], a                                    ; $40ea: $32
	add  b                                           ; $40eb: $80
	ld   [hl], e                                     ; $40ec: $73
	ld   bc, $1716                                   ; $40ed: $01 $16 $17
	add  b                                           ; $40f0: $80
	ld   c, $80                                      ; $40f1: $0e $80
	ld   b, $80                                      ; $40f3: $06 $80
	inc  c                                           ; $40f5: $0c
	add  b                                           ; $40f6: $80
	jr   nz, @-$7e                                   ; $40f7: $20 $80

	inc  e                                           ; $40f9: $1c
	add  b                                           ; $40fa: $80
	nop                                              ; $40fb: $00
	add  b                                           ; $40fc: $80
	inc  b                                           ; $40fd: $04
	dec  b                                           ; $40fe: $05
	rla                                              ; $40ff: $17
	dec  sp                                          ; $4100: $3b
	rrca                                             ; $4101: $0f
	ccf                                              ; $4102: $3f

jr_072_4103:
	dec  de                                          ; $4103: $1b
	dec  sp                                          ; $4104: $3b
	add  b                                           ; $4105: $80
	ccf                                              ; $4106: $3f
	inc  d                                           ; $4107: $14
	dec  hl                                          ; $4108: $2b

jr_072_4109:
	dec  sp                                          ; $4109: $3b
	rrca                                             ; $410a: $0f
	ccf                                              ; $410b: $3f
	rrca                                             ; $410c: $0f
	ccf                                              ; $410d: $3f
	rlca                                             ; $410e: $07
	ccf                                              ; $410f: $3f
	ld   l, d                                        ; $4110: $6a
	ld   a, a                                        ; $4111: $7f
	ld   d, d                                        ; $4112: $52
	ld   a, a                                        ; $4113: $7f
	ld   b, a                                        ; $4114: $47
	ld   a, a                                        ; $4115: $7f
	ld   b, a                                        ; $4116: $47
	ld   a, a                                        ; $4117: $7f
	ld   d, d                                        ; $4118: $52
	ld   a, a                                        ; $4119: $7f
	ld   [hl], a                                     ; $411a: $77
	ld   a, a                                        ; $411b: $7f
	ld   e, h                                        ; $411c: $5c
	add  c                                           ; $411d: $81
	ld   a, a                                        ; $411e: $7f
	ld   [bc], a                                     ; $411f: $02
	dec  hl                                          ; $4120: $2b
	rst  $38                                         ; $4121: $ff
	rra                                              ; $4122: $1f
	add  e                                           ; $4123: $83
	nop                                              ; $4124: $00
	nop                                              ; $4125: $00
	inc  c                                           ; $4126: $0c
	add  b                                           ; $4127: $80
	db   $ec                                         ; $4128: $ec
	ld   bc, $8ccc                                   ; $4129: $01 $cc $8c
	add  c                                           ; $412c: $81
	ld   c, h                                        ; $412d: $4c
	ld   [bc], a                                     ; $412e: $02
	sub  a                                           ; $412f: $97
	ldh  a, [c]                                      ; $4130: $f2
	and  d                                           ; $4131: $a2
	add  e                                           ; $4132: $83
	ldh  a, [c]                                      ; $4133: $f2
	inc  b                                           ; $4134: $04
	ld   a, [hl+]                                    ; $4135: $2a
	rst  $38                                         ; $4136: $ff
	ld   a, l                                        ; $4137: $7d
	rst  $38                                         ; $4138: $ff
	rst  ToBoot                                         ; $4139: $c7
	add  c                                           ; $413a: $81
	rst  $38                                         ; $413b: $ff
	inc  c                                           ; $413c: $0c
	ld   a, [hl-]                                    ; $413d: $3a
	cp   [hl]                                        ; $413e: $be
	rst  $38                                         ; $413f: $ff
	ret                                              ; $4140: $c9


	rst  $30                                         ; $4141: $f7
	rst  $38                                         ; $4142: $ff
	ret  nz                                          ; $4143: $c0

	ccf                                              ; $4144: $3f
	nop                                              ; $4145: $00
	rst  $38                                         ; $4146: $ff
	rst  $30                                         ; $4147: $f7
	rst  $38                                         ; $4148: $ff
	inc  e                                           ; $4149: $1c
	add  c                                           ; $414a: $81
	rst  $38                                         ; $414b: $ff
	inc  c                                           ; $414c: $0c
	ld   a, b                                        ; $414d: $78
	cp   e                                           ; $414e: $bb
	cp   c                                           ; $414f: $b9

jr_072_4150:
	cp   e                                           ; $4150: $bb
	cp   b                                           ; $4151: $b8
	cp   e                                           ; $4152: $bb
	jr   c, jr_072_4150                              ; $4153: $38 $fb

	dec  d                                           ; $4155: $15
	rst  $38                                         ; $4156: $ff
	rst  JumpTable                                         ; $4157: $df
	rst  $38                                         ; $4158: $ff
	ld   [hl], c                                     ; $4159: $71
	add  c                                           ; $415a: $81
	rst  $38                                         ; $415b: $ff
	ld   bc, $f856                                   ; $415c: $01 $56 $f8
	add  h                                           ; $415f: $84
	rst  $38                                         ; $4160: $ff
	add  b                                           ; $4161: $80
	db   $fc                                         ; $4162: $fc
	add  b                                           ; $4163: $80
	cp   $05                                         ; $4164: $fe $05
	ld   a, [hl]                                     ; $4166: $7e
	cp   $de                                         ; $4167: $fe $de
	cp   $a0                                         ; $4169: $fe $a0
	nop                                              ; $416b: $00
	add  h                                           ; $416c: $84
	rst  $30                                         ; $416d: $f7
	add  b                                           ; $416e: $80
	nop                                              ; $416f: $00
	add  b                                           ; $4170: $80
	ld   [$eb82], sp                                 ; $4171: $08 $82 $eb
	add  b                                           ; $4174: $80
	nop                                              ; $4175: $00
	add  b                                           ; $4176: $80
	db   $dd                                         ; $4177: $dd
	add  b                                           ; $4178: $80

jr_072_4179:
	jp   c, $dd80                                    ; $4179: $da $80 $dd

	add  b                                           ; $417c: $80
	nop                                              ; $417d: $00
	add  b                                           ; $417e: $80
	jr   nz, jr_072_4103                             ; $417f: $20 $82

	xor  [hl]                                        ; $4181: $ae
	add  b                                           ; $4182: $80
	nop                                              ; $4183: $00
	add  b                                           ; $4184: $80
	ld   d, b                                        ; $4185: $50
	add  b                                           ; $4186: $80
	jr   nz, jr_072_4109                             ; $4187: $20 $80

	ld   d, b                                        ; $4189: $50
	add  b                                           ; $418a: $80
	nop                                              ; $418b: $00
	add  b                                           ; $418c: $80
	add  b                                           ; $418d: $80
	add  b                                           ; $418e: $80
	sub  b                                           ; $418f: $90
	add  b                                           ; $4190: $80
	and  b                                           ; $4191: $a0
	inc  d                                           ; $4192: $14
	add  hl, bc                                      ; $4193: $09
	dec  bc                                          ; $4194: $0b
	ld   d, h                                        ; $4195: $54
	ld   d, a                                        ; $4196: $57
	ld   a, [bc]                                     ; $4197: $0a
	dec  bc                                          ; $4198: $0b
	ld   d, [hl]                                     ; $4199: $56
	ld   d, a                                        ; $419a: $57
	ld   [$540b], sp                                 ; $419b: $08 $0b $54
	ld   d, a                                        ; $419e: $57
	ld   a, [bc]                                     ; $419f: $0a
	dec  bc                                          ; $41a0: $0b
	ld   d, [hl]                                     ; $41a1: $56
	ld   d, a                                        ; $41a2: $57
	nop                                              ; $41a3: $00
	rst  $38                                         ; $41a4: $ff
	add  b                                           ; $41a5: $80
	rst  $38                                         ; $41a6: $ff
	ld   bc, $ff81                                   ; $41a7: $01 $81 $ff
	add  hl, bc                                      ; $41aa: $09
	ccf                                              ; $41ab: $3f
	rst  $38                                         ; $41ac: $ff
	nop                                              ; $41ad: $00
	rst  $38                                         ; $41ae: $ff
	sub  b                                           ; $41af: $90
	rst  $38                                         ; $41b0: $ff
	add  l                                           ; $41b1: $85
	rst  $38                                         ; $41b2: $ff
	ld   e, l                                        ; $41b3: $5d
	ld   [$5480], sp                                 ; $41b4: $08 $80 $54
	add  b                                           ; $41b7: $80
	ld   [$5480], sp                                 ; $41b8: $08 $80 $54
	add  b                                           ; $41bb: $80
	ld   [$5480], sp                                 ; $41bc: $08 $80 $54
	add  b                                           ; $41bf: $80
	ld   [$5480], sp                                 ; $41c0: $08 $80 $54
	add  b                                           ; $41c3: $80
	sbc  [hl]                                        ; $41c4: $9e
	add  b                                           ; $41c5: $80
	inc  c                                           ; $41c6: $0c
	add  b                                           ; $41c7: $80
	sbc  [hl]                                        ; $41c8: $9e
	add  b                                           ; $41c9: $80
	inc  c                                           ; $41ca: $0c
	add  [hl]                                        ; $41cb: $86
	nop                                              ; $41cc: $00
	add  b                                           ; $41cd: $80
	ld   [hl-], a                                    ; $41ce: $32
	add  b                                           ; $41cf: $80
	ld   [hl], e                                     ; $41d0: $73
	add  b                                           ; $41d1: $80
	ld   [hl-], a                                    ; $41d2: $32
	add  b                                           ; $41d3: $80
	inc  bc                                          ; $41d4: $03
	add  [hl]                                        ; $41d5: $86
	nop                                              ; $41d6: $00
	ld   bc, $0405                                   ; $41d7: $01 $05 $04
	add  b                                           ; $41da: $80
	ld   b, $80                                      ; $41db: $06 $80
	ld   d, $80                                      ; $41dd: $16 $80
	ld   c, $80                                      ; $41df: $0e $80
	ld   d, $80                                      ; $41e1: $16 $80
	ld   c, $80                                      ; $41e3: $0e $80
	rla                                              ; $41e5: $17
	inc  c                                           ; $41e6: $0c
	rrca                                             ; $41e7: $0f
	ld   c, $36                                      ; $41e8: $0e $36
	ccf                                              ; $41ea: $3f
	inc  hl                                          ; $41eb: $23

jr_072_41ec:
	ccf                                              ; $41ec: $3f
	inc  hl                                          ; $41ed: $23
	ccf                                              ; $41ee: $3f
	inc  sp                                          ; $41ef: $33
	ccf                                              ; $41f0: $3f
	inc  sp                                          ; $41f1: $33
	ccf                                              ; $41f2: $3f
	ld   sp, $3c80                                   ; $41f3: $31 $80 $3c
	nop                                              ; $41f6: $00
	jr   c, jr_072_4179                              ; $41f7: $38 $80

	jr   nz, jr_072_41fb                             ; $41f9: $20 $00

jr_072_41fb:
	ld   [hl], a                                     ; $41fb: $77
	add  c                                           ; $41fc: $81
	ld   a, a                                        ; $41fd: $7f
	inc  bc                                          ; $41fe: $03
	ld   c, b                                        ; $41ff: $48
	ld   a, [hl]                                     ; $4200: $7e
	ld   b, b                                        ; $4201: $40
	ld   a, [hl]                                     ; $4202: $7e
	add  [hl]                                        ; $4203: $86
	nop                                              ; $4204: $00
	ld   [de], a                                     ; $4205: $12
	db   $ec                                         ; $4206: $ec
	call z, $ec2c                                    ; $4207: $cc $2c $ec
	ldh  [rP1], a                                    ; $420a: $e0 $00
	ld   b, e                                        ; $420c: $43
	jp   $1888                                       ; $420d: $c3 $88 $18


	sub  b                                           ; $4210: $90
	add  c                                           ; $4211: $81
	reti                                             ; $4212: $d9


	ret  c                                           ; $4213: $d8

	ld   a, [hl-]                                    ; $4214: $3a
	dec  sp                                          ; $4215: $3b
	ld   a, h                                        ; $4216: $7c
	rst  $38                                         ; $4217: $ff
	add  d                                           ; $4218: $82
	add  b                                           ; $4219: $80
	nop                                              ; $421a: $00
	inc  b                                           ; $421b: $04
	ld   [$0900], sp                                 ; $421c: $08 $00 $09
	ldh  [$e1], a                                    ; $421f: $e0 $e1
	add  b                                           ; $4221: $80
	sbc  [hl]                                        ; $4222: $9e
	ld   de, $3111                                   ; $4223: $11 $11 $31
	ld   [hl+], a                                    ; $4226: $22
	ld   b, $f3                                      ; $4227: $06 $f3
	rst  $38                                         ; $4229: $ff
	ld   [$0b00], sp                                 ; $422a: $08 $00 $0b
	dec  de                                          ; $422d: $1b
	sub  b                                           ; $422e: $90
	add  d                                           ; $422f: $82
	ld   [de], a                                     ; $4230: $12
	jr   nc, @+$0b                                   ; $4231: $30 $09

	dec  hl                                          ; $4233: $2b
	ret  nz                                          ; $4234: $c0

	jp   nz, $3880                                   ; $4235: $c2 $80 $38

	ld   [bc], a                                     ; $4238: $02
	rst  JumpTable                                         ; $4239: $df
	rst  $38                                         ; $423a: $ff
	jr   nz, @-$7d                                   ; $423b: $20 $81

	nop                                              ; $423d: $00
	dec  c                                           ; $423e: $0d
	sbc  b                                           ; $423f: $98
	ret  c                                           ; $4240: $d8

	ld   b, [hl]                                     ; $4241: $46
	rrca                                             ; $4242: $0f
	ld   [$9001], sp                                 ; $4243: $08 $01 $90
	or   b                                           ; $4246: $b0
	add  hl, bc                                      ; $4247: $09
	dec  hl                                          ; $4248: $2b
	ld   l, b                                        ; $4249: $68
	ld   [$0080], a                                  ; $424a: $ea $80 $00
	add  b                                           ; $424d: $80
	dec  b                                           ; $424e: $05
	add  b                                           ; $424f: $80
	nop                                              ; $4250: $00
	add  b                                           ; $4251: $80
	add  b                                           ; $4252: $80
	dec  b                                           ; $4253: $05
	ld   d, $36                                      ; $4254: $16 $36
	nop                                              ; $4256: $00
	inc  h                                           ; $4257: $24
	nop                                              ; $4258: $00
	inc  b                                           ; $4259: $04
	add  b                                           ; $425a: $80
	add  b                                           ; $425b: $80
	add  d                                           ; $425c: $82
	nop                                              ; $425d: $00
	add  b                                           ; $425e: $80
	dec  l                                           ; $425f: $2d
	add  b                                           ; $4260: $80
	dec  b                                           ; $4261: $05
	add  b                                           ; $4262: $80
	nop                                              ; $4263: $00
	add  b                                           ; $4264: $80
	ldh  a, [rSC]                                    ; $4265: $f0 $02
	rlca                                             ; $4267: $07
	daa                                              ; $4268: $27
	jr   nz, jr_072_41ec                             ; $4269: $20 $81

	nop                                              ; $426b: $00
	add  b                                           ; $426c: $80
	ld   bc, $8080                                   ; $426d: $01 $80 $80
	add  b                                           ; $4270: $80
	or   [hl]                                        ; $4271: $b6
	ld   [bc], a                                     ; $4272: $02
	inc  sp                                          ; $4273: $33
	scf                                              ; $4274: $37
	inc  b                                           ; $4275: $04
	add  l                                           ; $4276: $85
	nop                                              ; $4277: $00
	add  b                                           ; $4278: $80
	jr   nz, jr_072_41fb                             ; $4279: $20 $80

	ld   [$0180], sp                                 ; $427b: $08 $80 $01
	daa                                              ; $427e: $27
	db   $10                                         ; $427f: $10
	jr   nc, jr_072_42aa                             ; $4280: $30 $28

	add  hl, hl                                      ; $4282: $29
	jr   nz, jr_072_4286                             ; $4283: $20 $01

	add  hl, bc                                      ; $4285: $09

jr_072_4286:
	dec  bc                                          ; $4286: $0b
	ld   d, h                                        ; $4287: $54
	ld   d, a                                        ; $4288: $57
	ld   [$550b], sp                                 ; $4289: $08 $0b $55
	ld   d, a                                        ; $428c: $57
	add  hl, bc                                      ; $428d: $09
	dec  bc                                          ; $428e: $0b
	ld   d, h                                        ; $428f: $54
	ld   d, a                                        ; $4290: $57
	ld   [$540b], sp                                 ; $4291: $08 $0b $54
	ld   d, a                                        ; $4294: $57
	ld   d, h                                        ; $4295: $54
	rst  $38                                         ; $4296: $ff
	ld   bc, $2bff                                   ; $4297: $01 $ff $2b
	rst  $38                                         ; $429a: $ff
	ld   a, [hl+]                                    ; $429b: $2a
	rst  $38                                         ; $429c: $ff
	nop                                              ; $429d: $00
	rst  $38                                         ; $429e: $ff
	nop                                              ; $429f: $00
	rst  $38                                         ; $42a0: $ff
	ld   [bc], a                                     ; $42a1: $02
	rst  $38                                         ; $42a2: $ff
	ld   [de], a                                     ; $42a3: $12
	rst  $38                                         ; $42a4: $ff
	ld   c, l                                        ; $42a5: $4d
	ld   [$5480], sp                                 ; $42a6: $08 $80 $54
	add  b                                           ; $42a9: $80

jr_072_42aa:
	add  hl, bc                                      ; $42aa: $09
	add  b                                           ; $42ab: $80
	ld   d, h                                        ; $42ac: $54
	add  b                                           ; $42ad: $80
	add  hl, bc                                      ; $42ae: $09
	add  b                                           ; $42af: $80
	ld   d, a                                        ; $42b0: $57
	add  b                                           ; $42b1: $80
	dec  bc                                          ; $42b2: $0b
	inc  bc                                          ; $42b3: $03
	ld   d, [hl]                                     ; $42b4: $56
	ld   d, a                                        ; $42b5: $57
	inc  d                                           ; $42b6: $14
	dec  d                                           ; $42b7: $15
	add  b                                           ; $42b8: $80
	ld   a, [hl+]                                    ; $42b9: $2a
	dec  c                                           ; $42ba: $0d
	ld   d, l                                        ; $42bb: $55
	ld   d, a                                        ; $42bc: $57
	cp   l                                           ; $42bd: $bd
	cp   a                                           ; $42be: $bf
	push af                                          ; $42bf: $f5
	rst  $38                                         ; $42c0: $ff
	or   l                                           ; $42c1: $b5
	rst  $38                                         ; $42c2: $ff
	or   l                                           ; $42c3: $b5
	rst  $38                                         ; $42c4: $ff
	and  l                                           ; $42c5: $a5
	rst  $38                                         ; $42c6: $ff
	dec  b                                           ; $42c7: $05
	ld   d, l                                        ; $42c8: $55
	add  b                                           ; $42c9: $80
	rst  $38                                         ; $42ca: $ff
	dec  bc                                          ; $42cb: $0b
	ld   d, a                                        ; $42cc: $57
	rst  $38                                         ; $42cd: $ff
	ld   d, [hl]                                     ; $42ce: $56
	rst  $38                                         ; $42cf: $ff
	ld   d, [hl]                                     ; $42d0: $56
	rst  $38                                         ; $42d1: $ff
	ld   d, [hl]                                     ; $42d2: $56
	rst  $38                                         ; $42d3: $ff
	ld   d, h                                        ; $42d4: $54
	rst  $38                                         ; $42d5: $ff
	ld   d, l                                        ; $42d6: $55
	rst  $38                                         ; $42d7: $ff
	add  b                                           ; $42d8: $80
	ld   b, c                                        ; $42d9: $41
	add  b                                           ; $42da: $80
	pop  hl                                          ; $42db: $e1
	add  b                                           ; $42dc: $80
	rst  $38                                         ; $42dd: $ff
	dec  de                                          ; $42de: $1b
	xor  d                                           ; $42df: $aa
	rst  $38                                         ; $42e0: $ff
	xor  d                                           ; $42e1: $aa
	rst  $38                                         ; $42e2: $ff
	xor  d                                           ; $42e3: $aa
	rst  $38                                         ; $42e4: $ff
	xor  d                                           ; $42e5: $aa
	rst  $38                                         ; $42e6: $ff
	xor  d                                           ; $42e7: $aa
	rst  $38                                         ; $42e8: $ff
	sub  l                                           ; $42e9: $95
	ret  nz                                          ; $42ea: $c0

	and  b                                           ; $42eb: $a0
	ldh  a, [$b8]                                    ; $42ec: $f0 $b8
	db   $fc                                         ; $42ee: $fc
	xor  d                                           ; $42ef: $aa
	rst  $38                                         ; $42f0: $ff
	xor  e                                           ; $42f1: $ab
	rst  $38                                         ; $42f2: $ff
	cp   e                                           ; $42f3: $bb
	rst  $38                                         ; $42f4: $ff
	and  c                                           ; $42f5: $a1
	rst  $38                                         ; $42f6: $ff
	adc  l                                           ; $42f7: $8d
	rst  $38                                         ; $42f8: $ff
	ld   l, b                                        ; $42f9: $68
	dec  d                                           ; $42fa: $15
	add  b                                           ; $42fb: $80
	xor  d                                           ; $42fc: $aa
	add  b                                           ; $42fd: $80
	ld   d, l                                        ; $42fe: $55
	add  b                                           ; $42ff: $80
	xor  d                                           ; $4300: $aa
	add  hl, bc                                      ; $4301: $09
	dec  [hl]                                        ; $4302: $35
	push af                                          ; $4303: $f5
	ld   a, d                                        ; $4304: $7a
	ld   e, d                                        ; $4305: $5a
	or   l                                           ; $4306: $b5
	xor  l                                           ; $4307: $ad
	xor  e                                           ; $4308: $ab
	di                                               ; $4309: $f3
	and  e                                           ; $430a: $a3
	inc  bc                                          ; $430b: $03
	add  b                                           ; $430c: $80
	and  b                                           ; $430d: $a0
	add  b                                           ; $430e: $80
	ld   d, h                                        ; $430f: $54
	add  b                                           ; $4310: $80
	xor  d                                           ; $4311: $aa
	add  b                                           ; $4312: $80
	ld   d, l                                        ; $4313: $55
	add  b                                           ; $4314: $80
	xor  d                                           ; $4315: $aa
	add  b                                           ; $4316: $80
	ld   d, l                                        ; $4317: $55
	add  b                                           ; $4318: $80
	xor  e                                           ; $4319: $ab
	dec  bc                                          ; $431a: $0b
	ld   [bc], a                                     ; $431b: $02
	ld   h, d                                        ; $431c: $62
	add  h                                           ; $431d: $84
	db   $ec                                         ; $431e: $ec
	inc  b                                           ; $431f: $04
	inc  e                                           ; $4320: $1c
	sub  b                                           ; $4321: $90
	add  e                                           ; $4322: $83
	ld   b, d                                        ; $4323: $42
	ld   b, e                                        ; $4324: $43
	xor  b                                           ; $4325: $a8
	xor  d                                           ; $4326: $aa
	add  b                                           ; $4327: $80
	ld   a, [hl]                                     ; $4328: $7e
	add  b                                           ; $4329: $80
	rst  $38                                         ; $432a: $ff
	dec  c                                           ; $432b: $0d
	rst  ToBoot                                         ; $432c: $c7
	ld   b, a                                        ; $432d: $47
	adc  $46                                         ; $432e: $ce $46
	add  hl, bc                                      ; $4330: $09
	add  c                                           ; $4331: $81
	ld   h, b                                        ; $4332: $60
	add  sp, $07                                     ; $4333: $e8 $07
	ccf                                              ; $4335: $3f
	jr   nz, jr_072_4368                             ; $4336: $20 $30

	nop                                              ; $4338: $00
	ld   hl, $f180                                   ; $4339: $21 $80 $f1
	ld   bc, $0203                                   ; $433c: $01 $03 $02
	add  b                                           ; $433f: $80
	ldh  a, [rIF]                                    ; $4340: $f0 $0f
	ld   a, [hl]                                     ; $4342: $7e
	ld   a, $09                                      ; $4343: $3e $09
	ld   c, c                                        ; $4345: $49
	add  hl, bc                                      ; $4346: $09
	ld   c, b                                        ; $4347: $48
	ld   h, b                                        ; $4348: $60
	pop  hl                                          ; $4349: $e1
	ld   a, [hl-]                                    ; $434a: $3a
	ei                                               ; $434b: $fb
	add  l                                           ; $434c: $85
	add  a                                           ; $434d: $87
	sbc  e                                           ; $434e: $9b
	cp   b                                           ; $434f: $b8
	inc  [hl]                                        ; $4350: $34
	inc  d                                           ; $4351: $14
	add  b                                           ; $4352: $80
	inc  b                                           ; $4353: $04
	add  b                                           ; $4354: $80
	pop  bc                                          ; $4355: $c1
	add  b                                           ; $4356: $80
	ld   a, b                                        ; $4357: $78
	add  b                                           ; $4358: $80
	daa                                              ; $4359: $27
	ld   bc, $a1a5                                   ; $435a: $01 $a5 $a1
	add  b                                           ; $435d: $80
	inc  b                                           ; $435e: $04
	dec  bc                                          ; $435f: $0b
	inc  h                                           ; $4360: $24
	ld   [hl+], a                                    ; $4361: $22
	ld   b, b                                        ; $4362: $40
	jp   nz, $a4a0                                   ; $4363: $c2 $a0 $a4

	ld   h, $a6                                      ; $4366: $26 $a6

jr_072_4368:
	add  hl, bc                                      ; $4368: $09
	rrca                                             ; $4369: $0f
	add  a                                           ; $436a: $87
	add  l                                           ; $436b: $85
	add  b                                           ; $436c: $80
	ld   [hl], b                                     ; $436d: $70
	add  b                                           ; $436e: $80
	adc  [hl]                                        ; $436f: $8e
	add  b                                           ; $4370: $80
	sbc  h                                           ; $4371: $9c
	inc  bc                                          ; $4372: $03
	ld   [bc], a                                     ; $4373: $02
	ld   [de], a                                     ; $4374: $12
	jr   nz, jr_072_43a7                             ; $4375: $20 $30

	add  b                                           ; $4377: $80
	ld   bc, $3001                                   ; $4378: $01 $01 $30
	db   $10                                         ; $437b: $10
	add  b                                           ; $437c: $80
	jr   z, jr_072_4380                              ; $437d: $28 $01

	ld   c, b                                        ; $437f: $48

jr_072_4380:
	ld   l, b                                        ; $4380: $68
	add  d                                           ; $4381: $82
	nop                                              ; $4382: $00
	add  b                                           ; $4383: $80
	ldh  [$0e], a                                    ; $4384: $e0 $0e
	rla                                              ; $4386: $17
	sub  a                                           ; $4387: $97
	nop                                              ; $4388: $00
	add  h                                           ; $4389: $84
	nop                                              ; $438a: $00
	inc  c                                           ; $438b: $0c
	ret  z                                           ; $438c: $c8

	ret  nz                                          ; $438d: $c0

	and  b                                           ; $438e: $a0
	jr   nz, @-$58                                   ; $438f: $20 $a6

	and  d                                           ; $4391: $a2
	ld   a, b                                        ; $4392: $78
	rst  $38                                         ; $4393: $ff
	inc  bc                                          ; $4394: $03
	add  c                                           ; $4395: $81
	rst  $38                                         ; $4396: $ff
	inc  b                                           ; $4397: $04
	db   $fc                                         ; $4398: $fc
	rst  $38                                         ; $4399: $ff
	nop                                              ; $439a: $00
	rst  $38                                         ; $439b: $ff
	inc  bc                                          ; $439c: $03
	add  a                                           ; $439d: $87
	rst  $38                                         ; $439e: $ff
	inc  b                                           ; $439f: $04
	ld   hl, sp-$01                                  ; $43a0: $f8 $ff
	nop                                              ; $43a2: $00
	rst  $38                                         ; $43a3: $ff
	rlca                                             ; $43a4: $07
	add  e                                           ; $43a5: $83
	rst  $38                                         ; $43a6: $ff

jr_072_43a7:
	ld   c, b                                        ; $43a7: $48
	ldh  [rIE], a                                    ; $43a8: $e0 $ff
	db   $eb                                         ; $43aa: $eb
	dec  bc                                          ; $43ab: $0b
	ld   d, [hl]                                     ; $43ac: $56
	ld   d, a                                        ; $43ad: $57
	ld   a, [bc]                                     ; $43ae: $0a
	dec  bc                                          ; $43af: $0b
	ld   d, [hl]                                     ; $43b0: $56
	ld   d, a                                        ; $43b1: $57
	ld   [$550b], sp                                 ; $43b2: $08 $0b $55
	ld   d, a                                        ; $43b5: $57
	add  hl, bc                                      ; $43b6: $09
	dec  bc                                          ; $43b7: $0b
	ld   d, h                                        ; $43b8: $54
	ld   d, a                                        ; $43b9: $57
	db   $f4                                         ; $43ba: $f4
	rst  $38                                         ; $43bb: $ff
	and  l                                           ; $43bc: $a5
	rst  $38                                         ; $43bd: $ff
	xor  l                                           ; $43be: $ad
	rst  $38                                         ; $43bf: $ff
	xor  b                                           ; $43c0: $a8
	rst  $38                                         ; $43c1: $ff
	ld   [bc], a                                     ; $43c2: $02
	rst  $38                                         ; $43c3: $ff
	ld   d, d                                        ; $43c4: $52
	rst  $38                                         ; $43c5: $ff
	ld   d, b                                        ; $43c6: $50
	rst  $38                                         ; $43c7: $ff
	ld   d, l                                        ; $43c8: $55
	rst  $38                                         ; $43c9: $ff
	ld   d, l                                        ; $43ca: $55
	rst  $38                                         ; $43cb: $ff
	ld   d, l                                        ; $43cc: $55

jr_072_43cd:
	rst  $38                                         ; $43cd: $ff
	ld   d, l                                        ; $43ce: $55
	rst  $38                                         ; $43cf: $ff
	inc  bc                                          ; $43d0: $03
	rst  $38                                         ; $43d1: $ff
	xor  b                                           ; $43d2: $a8
	rst  $38                                         ; $43d3: $ff
	and  c                                           ; $43d4: $a1
	rst  $38                                         ; $43d5: $ff
	ld   b, b                                        ; $43d6: $40
	rst  $38                                         ; $43d7: $ff
	nop                                              ; $43d8: $00
	rst  $38                                         ; $43d9: $ff
	ld   b, b                                        ; $43da: $40
	rst  $38                                         ; $43db: $ff
	ld   d, b                                        ; $43dc: $50
	rst  $38                                         ; $43dd: $ff
	ld   c, $ff                                      ; $43de: $0e $ff
	nop                                              ; $43e0: $00
	rst  $38                                         ; $43e1: $ff
	ld   bc, $fcff                                   ; $43e2: $01 $ff $fc
	rst  $38                                         ; $43e5: $ff
	nop                                              ; $43e6: $00
	rst  $38                                         ; $43e7: $ff
	inc  bc                                          ; $43e8: $03
	rst  $38                                         ; $43e9: $ff
	inc  bc                                          ; $43ea: $03
	rst  $38                                         ; $43eb: $ff
	inc  bc                                          ; $43ec: $03
	rst  $38                                         ; $43ed: $ff
	ld   bc, $01ff                                   ; $43ee: $01 $ff $01
	add  c                                           ; $43f1: $81
	rst  $38                                         ; $43f2: $ff
	dec  bc                                          ; $43f3: $0b
	ld   bc, $01ff                                   ; $43f4: $01 $ff $01
	rst  $38                                         ; $43f7: $ff
	pop  hl                                          ; $43f8: $e1
	rst  $38                                         ; $43f9: $ff
	or   c                                           ; $43fa: $b1
	and  b                                           ; $43fb: $a0
	xor  d                                           ; $43fc: $aa
	ld   a, [$a2f2]                                  ; $43fd: $fa $f2 $a2
	add  b                                           ; $4400: $80
	ld   d, b                                        ; $4401: $50
	inc  bc                                          ; $4402: $03
	ld   e, b                                        ; $4403: $58
	ld   hl, sp-$0c                                  ; $4404: $f8 $f4
	ld   d, h                                        ; $4406: $54
	add  b                                           ; $4407: $80
	ld   a, [$d903]                                  ; $4408: $fa $03 $d9
	db   $dd                                         ; $440b: $dd
	ld   [hl+], a                                    ; $440c: $22
	sub  $80                                         ; $440d: $d6 $80
	dec  sp                                          ; $440f: $3b
	inc  c                                           ; $4410: $0c
	sbc  l                                           ; $4411: $9d
	adc  l                                           ; $4412: $8d
	sbc  d                                           ; $4413: $9a
	add  [hl]                                        ; $4414: $86
	adc  e                                           ; $4415: $8b
	adc  c                                           ; $4416: $89
	ld   b, $04                                      ; $4417: $06 $04
	and  b                                           ; $4419: $a0
	xor  b                                           ; $441a: $a8
	ld   d, l                                        ; $441b: $55
	ld   e, l                                        ; $441c: $5d
	di                                               ; $441d: $f3
	add  c                                           ; $441e: $81
	rst  $38                                         ; $441f: $ff
	add  b                                           ; $4420: $80
	ld   a, a                                        ; $4421: $7f
	add  b                                           ; $4422: $80
	rst  $38                                         ; $4423: $ff
	add  b                                           ; $4424: $80
	cp   a                                           ; $4425: $bf
	add  b                                           ; $4426: $80
	ld   a, a                                        ; $4427: $7f
	add  b                                           ; $4428: $80
	ccf                                              ; $4429: $3f
	add  b                                           ; $442a: $80
	rrca                                             ; $442b: $0f
	inc  bc                                          ; $442c: $03
	db   $fc                                         ; $442d: $fc
	db   $fd                                         ; $442e: $fd
	db   $fc                                         ; $442f: $fc
	db   $fd                                         ; $4430: $fd
	adc  d                                           ; $4431: $8a

jr_072_4432:
	rst  $38                                         ; $4432: $ff
	inc  bc                                          ; $4433: $03
	add  hl, bc                                      ; $4434: $09
	rrca                                             ; $4435: $0f
	ld   b, $0c                                      ; $4436: $06 $0c
	add  b                                           ; $4438: $80
	adc  h                                           ; $4439: $8c
	inc  bc                                          ; $443a: $03
	db   $f4                                         ; $443b: $f4
	db   $fc                                         ; $443c: $fc
	ld   hl, sp-$04                                  ; $443d: $f8 $fc
	add  b                                           ; $443f: $80
	cp   $82                                         ; $4440: $fe $82
	rst  $38                                         ; $4442: $ff
	rlca                                             ; $4443: $07
	ldh  [$ee], a                                    ; $4444: $e0 $ee
	ld   a, $2e                                      ; $4446: $3e $2e
	dec  e                                           ; $4448: $1d
	ccf                                              ; $4449: $3f
	inc  [hl]                                        ; $444a: $34
	jr   c, jr_072_43cd                              ; $444b: $38 $80

	jr   nc, @+$04                                   ; $444d: $30 $02

	db   $10                                         ; $444f: $10
	jr   nc, jr_072_4432                             ; $4450: $30 $e0

	add  c                                           ; $4452: $81
	ldh  a, [rSB]                                    ; $4453: $f0 $01
	adc  a                                           ; $4455: $8f
	add  a                                           ; $4456: $87
	add  b                                           ; $4457: $80
	ld   bc, $8809                                   ; $4458: $01 $09 $88
	sbc  h                                           ; $445b: $9c
	inc  a                                           ; $445c: $3c
	inc  e                                           ; $445d: $1c
	inc  [hl]                                        ; $445e: $34
	ld   a, h                                        ; $445f: $7c
	ld   b, e                                        ; $4460: $43
	rst  $28                                         ; $4461: $ef
	ld   a, b                                        ; $4462: $78
	ldh  [$80], a                                    ; $4463: $e0 $80
	pop  bc                                          ; $4465: $c1
	dec  b                                           ; $4466: $05
	add  b                                           ; $4467: $80
	pop  bc                                          ; $4468: $c1
	dec  e                                           ; $4469: $1d
	inc  e                                           ; $446a: $1c
	sub  a                                           ; $446b: $97
	add  a                                           ; $446c: $87
	add  b                                           ; $446d: $80
	add  d                                           ; $446e: $82
	rrca                                             ; $446f: $0f
	ld   de, $b131                                   ; $4470: $11 $31 $b1
	ld   sp, hl                                      ; $4473: $f9
	ld   a, c                                        ; $4474: $79
	ld   l, c                                        ; $4475: $69
	ldh  a, [rOBP0]                                  ; $4476: $f0 $48
	ld   d, c                                        ; $4478: $51
	add  a                                           ; $4479: $87
	inc  bc                                          ; $447a: $03
	dec  b                                           ; $447b: $05
	add  b                                           ; $447c: $80
	adc  h                                           ; $447d: $8c
	ld   [hl], d                                     ; $447e: $72
	ld   a, [hl]                                     ; $447f: $7e
	add  b                                           ; $4480: $80
	dec  e                                           ; $4481: $1d
	ld   bc, $0212                                   ; $4482: $01 $12 $02
	add  b                                           ; $4485: $80
	ld   bc, $3114                                   ; $4486: $01 $14 $31
	ld   hl, $ff07                                   ; $4489: $21 $07 $ff
	nop                                              ; $448c: $00
	rst  $38                                         ; $448d: $ff
	ld   d, a                                        ; $448e: $57
	rst  $38                                         ; $448f: $ff
	dec  b                                           ; $4490: $05
	rst  $38                                         ; $4491: $ff
	nop                                              ; $4492: $00
	rst  $38                                         ; $4493: $ff
	dec  d                                           ; $4494: $15
	rst  $38                                         ; $4495: $ff
	or   l                                           ; $4496: $b5
	rst  $38                                         ; $4497: $ff
	and  b                                           ; $4498: $a0
	rst  $38                                         ; $4499: $ff
	or   l                                           ; $449a: $b5
	rst  $38                                         ; $449b: $ff
	rra                                              ; $449c: $1f
	add  c                                           ; $449d: $81
	rst  $38                                         ; $449e: $ff

jr_072_449f:
	ld   h, $7c                                      ; $449f: $26 $7c
	rst  $38                                         ; $44a1: $ff
	add  b                                           ; $44a2: $80
	rst  $38                                         ; $44a3: $ff
	xor  c                                           ; $44a4: $a9
	rst  $38                                         ; $44a5: $ff
	nop                                              ; $44a6: $00
	rst  $38                                         ; $44a7: $ff
	nop                                              ; $44a8: $00
	rst  $38                                         ; $44a9: $ff
	ld   e, [hl]                                     ; $44aa: $5e
	dec  bc                                          ; $44ab: $0b
	ld   d, [hl]                                     ; $44ac: $56
	ld   d, a                                        ; $44ad: $57
	ld   [$550b], sp                                 ; $44ae: $08 $0b $55
	ld   d, a                                        ; $44b1: $57
	add  hl, bc                                      ; $44b2: $09
	dec  bc                                          ; $44b3: $0b
	ld   d, h                                        ; $44b4: $54
	ld   d, a                                        ; $44b5: $57
	ld   a, [bc]                                     ; $44b6: $0a
	dec  bc                                          ; $44b7: $0b
	ld   d, [hl]                                     ; $44b8: $56
	ld   d, a                                        ; $44b9: $57

jr_072_44ba:
	ld   d, l                                        ; $44ba: $55
	rst  $38                                         ; $44bb: $ff
	dec  bc                                          ; $44bc: $0b
	rst  $38                                         ; $44bd: $ff
	and  b                                           ; $44be: $a0
	rst  $38                                         ; $44bf: $ff
	add  b                                           ; $44c0: $80
	rst  $38                                         ; $44c1: $ff
	ld   a, a                                        ; $44c2: $7f
	rst  $38                                         ; $44c3: $ff
	nop                                              ; $44c4: $00
	rst  $38                                         ; $44c5: $ff
	nop                                              ; $44c6: $00
	add  e                                           ; $44c7: $83
	rst  $38                                         ; $44c8: $ff
	ld   c, a                                        ; $44c9: $4f
	ldh  [rIE], a                                    ; $44ca: $e0 $ff
	nop                                              ; $44cc: $00
	rst  $38                                         ; $44cd: $ff
	rra                                              ; $44ce: $1f
	rst  $38                                         ; $44cf: $ff
	nop                                              ; $44d0: $00
	rst  $38                                         ; $44d1: $ff
	add  b                                           ; $44d2: $80
	rst  $38                                         ; $44d3: $ff
	ld   a, a                                        ; $44d4: $7f
	rst  $38                                         ; $44d5: $ff
	nop                                              ; $44d6: $00
	rst  $38                                         ; $44d7: $ff
	rra                                              ; $44d8: $1f
	rst  $38                                         ; $44d9: $ff
	nop                                              ; $44da: $00
	rst  $38                                         ; $44db: $ff
	rra                                              ; $44dc: $1f
	rst  $38                                         ; $44dd: $ff
	add  b                                           ; $44de: $80
	rst  $38                                         ; $44df: $ff
	nop                                              ; $44e0: $00
	rst  $38                                         ; $44e1: $ff
	ld   a, h                                        ; $44e2: $7c
	rst  $38                                         ; $44e3: $ff
	nop                                              ; $44e4: $00
	rst  $38                                         ; $44e5: $ff
	inc  bc                                          ; $44e6: $03
	rst  $38                                         ; $44e7: $ff
	rra                                              ; $44e8: $1f
	rst  $38                                         ; $44e9: $ff
	rra                                              ; $44ea: $1f
	rst  $38                                         ; $44eb: $ff
	sub  c                                           ; $44ec: $91
	rst  $38                                         ; $44ed: $ff
	add  hl, de                                      ; $44ee: $19
	rst  $30                                         ; $44ef: $f7
	ld   l, b                                        ; $44f0: $68
	rst  $28                                         ; $44f1: $ef
	jr   z, @+$01                                    ; $44f2: $28 $ff

	dec  sp                                          ; $44f4: $3b
	db   $eb                                         ; $44f5: $eb
	ret  z                                           ; $44f6: $c8

	rst  JumpTable                                         ; $44f7: $df
	xor  d                                           ; $44f8: $aa
	cp   d                                           ; $44f9: $ba
	ldh  [c], a                                      ; $44fa: $e2
	rst  $38                                         ; $44fb: $ff
	and  b                                           ; $44fc: $a0
	cp   a                                           ; $44fd: $bf
	ld   [hl], a                                     ; $44fe: $77
	ld   a, l                                        ; $44ff: $7d
	dec  b                                           ; $4500: $05
	rst  $38                                         ; $4501: $ff
	nop                                              ; $4502: $00
	rst  $38                                         ; $4503: $ff
	jp   z, $0aff                                    ; $4504: $ca $ff $0a

	rst  $38                                         ; $4507: $ff
	sbc  h                                           ; $4508: $9c
	xor  l                                           ; $4509: $ad
	ld   d, h                                        ; $450a: $54
	ld   e, h                                        ; $450b: $5c
	jr   nz, jr_072_44ba                             ; $450c: $20 $ac

	jp   nz, Jump_072_4f5e                           ; $450e: $c2 $5e $4f

	rst  $38                                         ; $4511: $ff
	ld   [de], a                                     ; $4512: $12
	cp   $93                                         ; $4513: $fe $93
	rst  $38                                         ; $4515: $ff
	adc  [hl]                                        ; $4516: $8e
	cp   $df                                         ; $4517: $fe $df
	add  e                                           ; $4519: $83
	add  b                                           ; $451a: $80
	and  c                                           ; $451b: $a1
	add  b                                           ; $451c: $80
	jr   nc, jr_072_449f                             ; $451d: $30 $80

	inc  d                                           ; $451f: $14
	add  b                                           ; $4520: $80
	ld   b, $80                                      ; $4521: $06 $80
	add  b                                           ; $4523: $80
	add  b                                           ; $4524: $80
	ld   d, b                                        ; $4525: $50
	add  b                                           ; $4526: $80
	xor  b                                           ; $4527: $a8
	add  d                                           ; $4528: $82
	rst  $38                                         ; $4529: $ff
	add  c                                           ; $452a: $81
	ld   a, a                                        ; $452b: $7f
	add  hl, bc                                      ; $452c: $09
	rra                                              ; $452d: $1f
	ld   a, a                                        ; $452e: $7f
	cpl                                              ; $452f: $2f
	rra                                              ; $4530: $1f
	inc  de                                          ; $4531: $13
	rla                                              ; $4532: $17
	inc  [hl]                                        ; $4533: $34
	ld   c, d                                        ; $4534: $4a
	ld   l, d                                        ; $4535: $6a
	ret  nz                                          ; $4536: $c0

	adc  h                                           ; $4537: $8c
	rst  $38                                         ; $4538: $ff
	ld   [bc], a                                     ; $4539: $02
	ld   a, a                                        ; $453a: $7f
	ld   a, h                                        ; $453b: $7c
	db   $fc                                         ; $453c: $fc
	adc  h                                           ; $453d: $8c
	rst  $38                                         ; $453e: $ff
	nop                                              ; $453f: $00
	ret  nz                                          ; $4540: $c0

	add  c                                           ; $4541: $81
	pop  bc                                          ; $4542: $c1
	ld   bc, $e0e1                                   ; $4543: $01 $e1 $e0
	add  d                                           ; $4546: $82
	cp   $84                                         ; $4547: $fe $84
	rst  $38                                         ; $4549: $ff
	ld   bc, $ff3f                                   ; $454a: $01 $3f $ff
	add  b                                           ; $454d: $80
	ldh  [$80], a                                    ; $454e: $e0 $80
	pop  bc                                          ; $4550: $c1
	ld   [bc], a                                     ; $4551: $02
	ld   b, e                                        ; $4552: $43
	jp   $8183                                       ; $4553: $c3 $83 $81


	jp   $fd82                                       ; $4556: $c3 $82 $fd


	add  hl, bc                                      ; $4559: $09
	ld   bc, $6171                                   ; $455a: $01 $71 $61
	ld   a, c                                        ; $455d: $79
	ret  z                                           ; $455e: $c8

	ld   l, b                                        ; $455f: $68
	and  [hl]                                        ; $4560: $a6
	sbc  $f0                                         ; $4561: $de $f0
	ret  nz                                          ; $4563: $c0

	add  c                                           ; $4564: $81
	add  b                                           ; $4565: $80
	nop                                              ; $4566: $00
	nop                                              ; $4567: $00
	add  b                                           ; $4568: $80
	ld   bc, $0006                                   ; $4569: $01 $06 $00
	rst  $38                                         ; $456c: $ff
	ldh  [rIE], a                                    ; $456d: $e0 $ff
	nop                                              ; $456f: $00
	rst  $38                                         ; $4570: $ff
	rra                                              ; $4571: $1f
	add  c                                           ; $4572: $81
	rst  $38                                         ; $4573: $ff
	ld   a, [bc]                                     ; $4574: $0a
	cp   $ff                                         ; $4575: $fe $ff
	add  b                                           ; $4577: $80
	rst  $38                                         ; $4578: $ff
	ld   bc, $00ff                                   ; $4579: $01 $ff $00
	rst  $38                                         ; $457c: $ff
	nop                                              ; $457d: $00
	rst  $38                                         ; $457e: $ff
	ld   a, a                                        ; $457f: $7f
	add  c                                           ; $4580: $81
	rst  $38                                         ; $4581: $ff
	inc  b                                           ; $4582: $04
	ld   hl, sp-$01                                  ; $4583: $f8 $ff
	nop                                              ; $4585: $00
	rst  $38                                         ; $4586: $ff
	rlca                                             ; $4587: $07
	add  c                                           ; $4588: $81
	rst  $38                                         ; $4589: $ff
	add  hl, bc                                      ; $458a: $09
	db   $f4                                         ; $458b: $f4
	dec  bc                                          ; $458c: $0b
	ld   d, [hl]                                     ; $458d: $56
	ld   d, a                                        ; $458e: $57
	add  hl, bc                                      ; $458f: $09
	dec  bc                                          ; $4590: $0b
	ld   d, h                                        ; $4591: $54
	ld   d, a                                        ; $4592: $57
	ld   [$800b], sp                                 ; $4593: $08 $0b $80
	ld   d, a                                        ; $4596: $57
	ld   b, $0a                                      ; $4597: $06 $0a
	dec  bc                                          ; $4599: $0b
	ld   d, h                                        ; $459a: $54
	ld   d, a                                        ; $459b: $57
	cp   $ff                                         ; $459c: $fe $ff
	nop                                              ; $459e: $00
	add  c                                           ; $459f: $81
	rst  $38                                         ; $45a0: $ff
	ld   [bc], a                                     ; $45a1: $02
	nop                                              ; $45a2: $00
	rst  $38                                         ; $45a3: $ff
	nop                                              ; $45a4: $00
	add  c                                           ; $45a5: $81
	rst  $38                                         ; $45a6: $ff
	ld   [bc], a                                     ; $45a7: $02
	nop                                              ; $45a8: $00
	rst  $38                                         ; $45a9: $ff
	nop                                              ; $45aa: $00
	add  c                                           ; $45ab: $81
	rst  $38                                         ; $45ac: $ff
	ld   a, [hl-]                                    ; $45ad: $3a
	db   $fc                                         ; $45ae: $fc
	rst  $38                                         ; $45af: $ff
	add  b                                           ; $45b0: $80
	rst  $38                                         ; $45b1: $ff
	inc  bc                                          ; $45b2: $03
	rst  $38                                         ; $45b3: $ff
	ld   a, [hl]                                     ; $45b4: $7e
	rst  $38                                         ; $45b5: $ff
	add  b                                           ; $45b6: $80
	rst  $38                                         ; $45b7: $ff
	ld   bc, $7fff                                   ; $45b8: $01 $ff $7f
	rst  $38                                         ; $45bb: $ff
	ld   hl, sp-$01                                  ; $45bc: $f8 $ff
	nop                                              ; $45be: $00
	rst  $38                                         ; $45bf: $ff
	rlca                                             ; $45c0: $07
	rst  $38                                         ; $45c1: $ff
	db   $fc                                         ; $45c2: $fc
	rst  $38                                         ; $45c3: $ff
	nop                                              ; $45c4: $00
	rst  $38                                         ; $45c5: $ff
	inc  bc                                          ; $45c6: $03
	rst  $38                                         ; $45c7: $ff
	cp   $ff                                         ; $45c8: $fe $ff
	nop                                              ; $45ca: $00
	rst  $38                                         ; $45cb: $ff
	push af                                          ; $45cc: $f5
	db   $eb                                         ; $45cd: $eb
	scf                                              ; $45ce: $37
	rst  $10                                         ; $45cf: $d7
	db   $e4                                         ; $45d0: $e4
	rst  $28                                         ; $45d1: $ef
	inc  l                                           ; $45d2: $2c
	rst  $30                                         ; $45d3: $f7
	dec  sp                                          ; $45d4: $3b
	db   $eb                                         ; $45d5: $eb
	call nc, Call_072_54d7                           ; $45d6: $d4 $d7 $54
	rst  $38                                         ; $45d9: $ff
	ld   a, a                                        ; $45da: $7f
	rst  $10                                         ; $45db: $d7
	ld   a, [$c5ff]                                  ; $45dc: $fa $ff $c5
	rst  $38                                         ; $45df: $ff
	dec  b                                           ; $45e0: $05
	rst  $38                                         ; $45e1: $ff
	jr   c, @+$01                                    ; $45e2: $38 $ff

	ldh  a, [c]                                      ; $45e4: $f2
	rst  $38                                         ; $45e5: $ff
	nop                                              ; $45e6: $00
	rst  $38                                         ; $45e7: $ff
	rrca                                             ; $45e8: $0f
	add  c                                           ; $45e9: $81
	rst  $38                                         ; $45ea: $ff
	ld   de, $ff80                                   ; $45eb: $11 $80 $ff
	ld   hl, $1eff                                   ; $45ee: $21 $ff $1e
	rst  $38                                         ; $45f1: $ff
	ld   hl, $80fe                                   ; $45f2: $21 $fe $80
	rst  $38                                         ; $45f5: $ff
	ld   e, $ff                                      ; $45f6: $1e $ff
	cp   $ff                                         ; $45f8: $fe $ff
	add  b                                           ; $45fa: $80
	rst  $38                                         ; $45fb: $ff
	push de                                          ; $45fc: $d5
	ld   d, l                                        ; $45fd: $55
	add  b                                           ; $45fe: $80
	xor  d                                           ; $45ff: $aa
	add  b                                           ; $4600: $80
	ld   d, l                                        ; $4601: $55
	add  d                                           ; $4602: $82
	rst  $38                                         ; $4603: $ff
	rra                                              ; $4604: $1f
	ld   a, d                                        ; $4605: $7a
	ld   a, [$bf3e]                                  ; $4606: $fa $3e $bf
	ld   e, h                                        ; $4609: $5c
	rst  $38                                         ; $460a: $ff
	add  sp, $75                                     ; $460b: $e8 $75
	ret  nz                                          ; $460d: $c0

	ld   a, [$754f]                                  ; $460e: $fa $4f $75
	ld   a, d                                        ; $4611: $7a
	ld   a, [$ff32]                                  ; $4612: $fa $32 $ff
	add  a                                           ; $4615: $87
	ld   a, [$f585]                                  ; $4616: $fa $85 $f5
	ld   a, [hl-]                                    ; $4619: $3a
	ld   a, [$1f40]                                  ; $461a: $fa $40 $1f
	cp   a                                           ; $461d: $bf
	and  a                                           ; $461e: $a7
	ld   d, a                                        ; $461f: $57
	ld   d, c                                        ; $4620: $51
	add  c                                           ; $4621: $81
	xor  d                                           ; $4622: $aa
	rst  JumpTable                                         ; $4623: $df
	push af                                          ; $4624: $f5
	add  b                                           ; $4625: $80
	xor  e                                           ; $4626: $ab
	add  b                                           ; $4627: $80
	ld   d, l                                        ; $4628: $55
	ld   [bc], a                                     ; $4629: $02
	sub  h                                           ; $462a: $94
	cp   a                                           ; $462b: $bf
	dec  hl                                          ; $462c: $2b
	add  [hl]                                        ; $462d: $86
	rst  $38                                         ; $462e: $ff
	rlca                                             ; $462f: $07
	ccf                                              ; $4630: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4631: $cf
	rst  $38                                         ; $4632: $ff
	scf                                              ; $4633: $37
	rst  $38                                         ; $4634: $ff
	add  hl, sp                                      ; $4635: $39
	rst  $38                                         ; $4636: $ff
	ld   bc, $ff8d                                   ; $4637: $01 $8d $ff
	rlca                                             ; $463a: $07
	adc  a                                           ; $463b: $8f
	rst  $38                                         ; $463c: $ff
	rst  $10                                         ; $463d: $d7
	ld   e, a                                        ; $463e: $5f
	xor  c                                           ; $463f: $a9
	xor  a                                           ; $4640: $af
	ld   d, h                                        ; $4641: $54
	ld   d, l                                        ; $4642: $55
	add  b                                           ; $4643: $80
	xor  a                                           ; $4644: $af
	inc  bc                                          ; $4645: $03
	xor  l                                           ; $4646: $ad
	db   $fd                                         ; $4647: $fd
	ld   a, [$80aa]                                  ; $4648: $fa $aa $80
	ld   d, l                                        ; $464b: $55
	ld   bc, $8f70                                   ; $464c: $01 $70 $8f
	adc  h                                           ; $464f: $8c
	rst  $38                                         ; $4650: $ff
	nop                                              ; $4651: $00
	nop                                              ; $4652: $00
	add  c                                           ; $4653: $81
	rst  $38                                         ; $4654: $ff
	inc  b                                           ; $4655: $04
	ldh  [rIE], a                                    ; $4656: $e0 $ff
	nop                                              ; $4658: $00
	rst  $38                                         ; $4659: $ff
	rra                                              ; $465a: $1f
	add  c                                           ; $465b: $81
	rst  $38                                         ; $465c: $ff
	ld   a, [bc]                                     ; $465d: $0a
	xor  b                                           ; $465e: $a8
	rst  $38                                         ; $465f: $ff
	ld   [de], a                                     ; $4660: $12
	rst  $38                                         ; $4661: $ff
	ld   b, [hl]                                     ; $4662: $46
	rst  $38                                         ; $4663: $ff
	add  b                                           ; $4664: $80
	rst  $38                                         ; $4665: $ff
	inc  bc                                          ; $4666: $03
	rst  $38                                         ; $4667: $ff
	ld   a, a                                        ; $4668: $7f
	add  c                                           ; $4669: $81
	rst  $38                                         ; $466a: $ff
	rlca                                             ; $466b: $07
	ldh  [rIE], a                                    ; $466c: $e0 $ff
	nop                                              ; $466e: $00
	rst  $38                                         ; $466f: $ff
	rra                                              ; $4670: $1f
	rst  $38                                         ; $4671: $ff
	rst  $30                                         ; $4672: $f7
	dec  bc                                          ; $4673: $0b
	add  b                                           ; $4674: $80
	ld   d, a                                        ; $4675: $57
	inc  bc                                          ; $4676: $03
	ld   [$540b], sp                                 ; $4677: $08 $0b $54
	ld   d, a                                        ; $467a: $57
	add  b                                           ; $467b: $80
	dec  bc                                          ; $467c: $0b
	ld   a, [bc]                                     ; $467d: $0a
	ld   d, l                                        ; $467e: $55
	ld   d, a                                        ; $467f: $57
	ld   a, [bc]                                     ; $4680: $0a
	dec  bc                                          ; $4681: $0b
	ld   d, [hl]                                     ; $4682: $56
	ld   d, a                                        ; $4683: $57
	ld   bc, $00ff                                   ; $4684: $01 $ff $00
	rst  $38                                         ; $4687: $ff
	nop                                              ; $4688: $00
	add  e                                           ; $4689: $83
	rst  $38                                         ; $468a: $ff
	ld   [bc], a                                     ; $468b: $02
	nop                                              ; $468c: $00
	rst  $38                                         ; $468d: $ff
	nop                                              ; $468e: $00
	add  c                                           ; $468f: $81
	rst  $38                                         ; $4690: $ff
	db   $10                                         ; $4691: $10
	ret  nz                                          ; $4692: $c0

	rst  $38                                         ; $4693: $ff
	nop                                              ; $4694: $00
	rst  $38                                         ; $4695: $ff
	ccf                                              ; $4696: $3f
	rst  $38                                         ; $4697: $ff
	cp   $ff                                         ; $4698: $fe $ff
	add  b                                           ; $469a: $80
	rst  $38                                         ; $469b: $ff
	ld   bc, $7fff                                   ; $469c: $01 $ff $7f
	rst  $38                                         ; $469f: $ff
	db   $fc                                         ; $46a0: $fc
	rst  $38                                         ; $46a1: $ff
	db   $fc                                         ; $46a2: $fc
	add  c                                           ; $46a3: $81
	rst  $38                                         ; $46a4: $ff
	inc  b                                           ; $46a5: $04
	ld   hl, sp-$01                                  ; $46a6: $f8 $ff
	nop                                              ; $46a8: $00
	rst  $38                                         ; $46a9: $ff
	rlca                                             ; $46aa: $07
	add  c                                           ; $46ab: $81
	rst  $38                                         ; $46ac: $ff
	dec  bc                                          ; $46ad: $0b
	ldh  a, [rIE]                                    ; $46ae: $f0 $ff
	nop                                              ; $46b0: $00
	rst  $38                                         ; $46b1: $ff
	dec  de                                          ; $46b2: $1b
	db   $eb                                         ; $46b3: $eb
	jp   c, Jump_072_5edf                            ; $46b4: $da $df $5e

	ei                                               ; $46b7: $fb
	ld   [hl], a                                     ; $46b8: $77
	rst  $10                                         ; $46b9: $d7
	add  b                                           ; $46ba: $80
	db   $eb                                         ; $46bb: $eb
	ld   a, [bc]                                     ; $46bc: $0a
	ldh  [rIE], a                                    ; $46bd: $e0 $ff
	inc  d                                           ; $46bf: $14
	db   $eb                                         ; $46c0: $eb
	rla                                              ; $46c1: $17
	rst  $30                                         ; $46c2: $f7
	ldh  [rIE], a                                    ; $46c3: $e0 $ff
	nop                                              ; $46c5: $00
	rst  $38                                         ; $46c6: $ff
	rra                                              ; $46c7: $1f
	add  c                                           ; $46c8: $81
	rst  $38                                         ; $46c9: $ff
	inc  b                                           ; $46ca: $04
	add  b                                           ; $46cb: $80
	rst  $38                                         ; $46cc: $ff

jr_072_46cd:
	nop                                              ; $46cd: $00
	rst  $38                                         ; $46ce: $ff
	ld   a, a                                        ; $46cf: $7f
	add  c                                           ; $46d0: $81
	rst  $38                                         ; $46d1: $ff
	ld   [$ff7f], sp                                 ; $46d2: $08 $7f $ff
	ld   a, a                                        ; $46d5: $7f
	rst  $38                                         ; $46d6: $ff
	db   $fc                                         ; $46d7: $fc
	rst  $38                                         ; $46d8: $ff
	nop                                              ; $46d9: $00
	rst  $38                                         ; $46da: $ff
	inc  bc                                          ; $46db: $03
	add  c                                           ; $46dc: $81
	rst  $38                                         ; $46dd: $ff
	ld   hl, $fffc                                   ; $46de: $21 $fc $ff
	nop                                              ; $46e1: $00
	rst  $38                                         ; $46e2: $ff
	xor  c                                           ; $46e3: $a9
	rst  $38                                         ; $46e4: $ff
	rlca                                             ; $46e5: $07
	ld   a, [$ff52]                                  ; $46e6: $fa $52 $ff
	db   $10                                         ; $46e9: $10
	rst  $38                                         ; $46ea: $ff
	add  sp, -$01                                    ; $46eb: $e8 $ff
	ldh  [c], a                                      ; $46ed: $e2
	rst  $38                                         ; $46ee: $ff
	db   $10                                         ; $46ef: $10
	rst  $38                                         ; $46f0: $ff
	rrca                                             ; $46f1: $0f
	rst  $38                                         ; $46f2: $ff
	ld   h, d                                        ; $46f3: $62
	rst  $38                                         ; $46f4: $ff
	add  a                                           ; $46f5: $87
	ld   a, [$f595]                                  ; $46f6: $fa $95 $f5
	ld   a, d                                        ; $46f9: $7a
	ld   a, [$ffc2]                                  ; $46fa: $fa $c2 $ff
	rlca                                             ; $46fd: $07
	ld   a, [$f535]                                  ; $46fe: $fa $35 $f5
	add  b                                           ; $4701: $80
	ld   a, [$9509]                                  ; $4702: $fa $09 $95
	push de                                          ; $4705: $d5
	db   $eb                                         ; $4706: $eb
	xor  e                                           ; $4707: $ab
	ld   d, h                                        ; $4708: $54
	ld   d, l                                        ; $4709: $55
	ld   d, h                                        ; $470a: $54
	rst  $38                                         ; $470b: $ff
	ld   a, a                                        ; $470c: $7f
	push de                                          ; $470d: $d5
	add  b                                           ; $470e: $80
	xor  e                                           ; $470f: $ab
	add  b                                           ; $4710: $80
	ld   d, l                                        ; $4711: $55
	ld   [$bfb4], sp                                 ; $4712: $08 $b4 $bf
	db   $f4                                         ; $4715: $f4
	rst  $38                                         ; $4716: $ff
	ld   hl, sp-$01                                  ; $4717: $f8 $ff
	nop                                              ; $4719: $00
	rst  $38                                         ; $471a: $ff
	rlca                                             ; $471b: $07
	add  c                                           ; $471c: $81
	rst  $38                                         ; $471d: $ff
	inc  de                                          ; $471e: $13
	db   $fc                                         ; $471f: $fc
	rst  $38                                         ; $4720: $ff
	nop                                              ; $4721: $00
	rst  $38                                         ; $4722: $ff
	inc  bc                                          ; $4723: $03
	rst  $38                                         ; $4724: $ff
	add  b                                           ; $4725: $80
	rst  $38                                         ; $4726: $ff
	cp   a                                           ; $4727: $bf
	rst  JumpTable                                         ; $4728: $df
	rst  $38                                         ; $4729: $ff
	rst  $28                                         ; $472a: $ef
	reti                                             ; $472b: $d9


	rst  $10                                         ; $472c: $d7
	db   $eb                                         ; $472d: $eb
	ld   [$f535], a                                  ; $472e: $ea $35 $f5
	dec  hl                                          ; $4731: $2b
	db   $eb                                         ; $4732: $eb
	add  b                                           ; $4733: $80
	push de                                          ; $4734: $d5
	nop                                              ; $4735: $00
	nop                                              ; $4736: $00
	adc  b                                           ; $4737: $88
	rst  $38                                         ; $4738: $ff
	dec  b                                           ; $4739: $05
	ld   a, a                                        ; $473a: $7f
	cp   a                                           ; $473b: $bf
	rst  JumpTable                                         ; $473c: $df
	rlca                                             ; $473d: $07
	rst  $38                                         ; $473e: $ff
	daa                                              ; $473f: $27
	add  c                                           ; $4740: $81

Jump_072_4741:
	jr   nc, jr_072_46cd                             ; $4741: $30 $8a

	db   $10                                         ; $4743: $10
	ldh  a, [rSB]                                    ; $4744: $f0 $01
	add  [hl]                                        ; $4746: $86
	nop                                              ; $4747: $00
	nop                                              ; $4748: $00
	rrca                                             ; $4749: $0f
	add  l                                           ; $474a: $85
	nop                                              ; $474b: $00
	nop                                              ; $474c: $00
	rrca                                             ; $474d: $0f
	add  l                                           ; $474e: $85
	nop                                              ; $474f: $00
	nop                                              ; $4750: $00
	rst  $38                                         ; $4751: $ff
	add  l                                           ; $4752: $85
	nop                                              ; $4753: $00
	nop                                              ; $4754: $00
	rst  $38                                         ; $4755: $ff
	add  l                                           ; $4756: $85
	nop                                              ; $4757: $00
	nop                                              ; $4758: $00
	rst  $38                                         ; $4759: $ff
	add  l                                           ; $475a: $85
	nop                                              ; $475b: $00
	nop                                              ; $475c: $00
	rst  $38                                         ; $475d: $ff
	add  l                                           ; $475e: $85
	nop                                              ; $475f: $00
	nop                                              ; $4760: $00
	rst  $38                                         ; $4761: $ff
	add  l                                           ; $4762: $85
	nop                                              ; $4763: $00
	nop                                              ; $4764: $00
	rst  $38                                         ; $4765: $ff
	add  l                                           ; $4766: $85
	nop                                              ; $4767: $00
	nop                                              ; $4768: $00
	rst  $38                                         ; $4769: $ff
	add  l                                           ; $476a: $85
	nop                                              ; $476b: $00
	nop                                              ; $476c: $00
	rst  $38                                         ; $476d: $ff
	add  l                                           ; $476e: $85
	nop                                              ; $476f: $00
	nop                                              ; $4770: $00
	rst  $38                                         ; $4771: $ff
	add  l                                           ; $4772: $85
	nop                                              ; $4773: $00
	nop                                              ; $4774: $00
	rst  $38                                         ; $4775: $ff
	add  l                                           ; $4776: $85
	nop                                              ; $4777: $00
	nop                                              ; $4778: $00
	rst  $38                                         ; $4779: $ff
	add  e                                           ; $477a: $83
	nop                                              ; $477b: $00
	add  b                                           ; $477c: $80
	ld   bc, $ff00                                   ; $477d: $01 $00 $ff
	add  l                                           ; $4780: $85
	nop                                              ; $4781: $00
	ld   bc, $28d7                                   ; $4782: $01 $d7 $28
	add  b                                           ; $4785: $80
	ld   d, b                                        ; $4786: $50
	add  b                                           ; $4787: $80
	xor  b                                           ; $4788: $a8
	add  b                                           ; $4789: $80
	ld   d, b                                        ; $478a: $50
	nop                                              ; $478b: $00
	rst  $38                                         ; $478c: $ff
	add  l                                           ; $478d: $85
	nop                                              ; $478e: $00
	nop                                              ; $478f: $00
	rst  $38                                         ; $4790: $ff
	add  l                                           ; $4791: $85
	nop                                              ; $4792: $00
	nop                                              ; $4793: $00
	rst  $38                                         ; $4794: $ff
	add  l                                           ; $4795: $85
	nop                                              ; $4796: $00
	ld   bc, $01fe                                   ; $4797: $01 $fe $01
	add  h                                           ; $479a: $84
	nop                                              ; $479b: $00
	nop                                              ; $479c: $00
	rst  $38                                         ; $479d: $ff
	add  l                                           ; $479e: $85
	nop                                              ; $479f: $00
	ld   [bc], a                                     ; $47a0: $02
	sbc  a                                           ; $47a1: $9f
	ld   a, a                                        ; $47a2: $7f

jr_072_47a3:
	ld   e, a                                        ; $47a3: $5f
	add  c                                           ; $47a4: $81
	ld   a, a                                        ; $47a5: $7f
	ld   [bc], a                                     ; $47a6: $02
	sbc  [hl]                                        ; $47a7: $9e
	rst  $38                                         ; $47a8: $ff
	and  c                                           ; $47a9: $a1
	add  l                                           ; $47aa: $85
	nop                                              ; $47ab: $00
	ld   [$ffd6], sp                                 ; $47ac: $08 $d6 $ff
	xor  b                                           ; $47af: $a8
	rst  $38                                         ; $47b0: $ff
	ld   a, b                                        ; $47b1: $78
	rst  $38                                         ; $47b2: $ff
	ld   a, b                                        ; $47b3: $78
	rst  $38                                         ; $47b4: $ff
	ld   a, [hl]                                     ; $47b5: $7e
	add  l                                           ; $47b6: $85
	nop                                              ; $47b7: $00
	ld   [$fdfb], sp                                 ; $47b8: $08 $fb $fd
	cp   d                                           ; $47bb: $ba
	ei                                               ; $47bc: $fb
	inc  e                                           ; $47bd: $1c
	db   $fd                                         ; $47be: $fd
	inc  de                                          ; $47bf: $13
	ldh  a, [c]                                      ; $47c0: $f2
	ld   b, a                                        ; $47c1: $47
	add  l                                           ; $47c2: $85
	nop                                              ; $47c3: $00
	ld   bc, $3fc0                                   ; $47c4: $01 $c0 $3f
	add  b                                           ; $47c7: $80
	cp   a                                           ; $47c8: $bf
	add  d                                           ; $47c9: $82
	ccf                                              ; $47ca: $3f
	nop                                              ; $47cb: $00
	rst  $38                                         ; $47cc: $ff
	add  l                                           ; $47cd: $85
	nop                                              ; $47ce: $00
	ld   bc, $ed1a                                   ; $47cf: $01 $1a $ed

jr_072_47d2:
	add  b                                           ; $47d2: $80
	cp   $01                                         ; $47d3: $fe $01
	push af                                          ; $47d5: $f5
	db   $fd                                         ; $47d6: $fd
	add  b                                           ; $47d7: $80
	cp   $00                                         ; $47d8: $fe $00
	rst  $38                                         ; $47da: $ff
	add  l                                           ; $47db: $85
	nop                                              ; $47dc: $00
	ld   bc, $56a9                                   ; $47dd: $01 $a9 $56
	add  b                                           ; $47e0: $80
	add  [hl]                                        ; $47e1: $86
	add  b                                           ; $47e2: $80
	ld   d, [hl]                                     ; $47e3: $56
	add  b                                           ; $47e4: $80
	and  [hl]                                        ; $47e5: $a6
	nop                                              ; $47e6: $00
	ldh  a, [$8d]                                    ; $47e7: $f0 $8d
	nop                                              ; $47e9: $00
	nop                                              ; $47ea: $00
	ldh  a, [$ad]                                    ; $47eb: $f0 $ad
	nop                                              ; $47ed: $00
	add  b                                           ; $47ee: $80
	ld   [bc], a                                     ; $47ef: $02
	add  b                                           ; $47f0: $80
	inc  d                                           ; $47f1: $14
	add  b                                           ; $47f2: $80
	ld   a, [bc]                                     ; $47f3: $0a
	add  b                                           ; $47f4: $80
	dec  d                                           ; $47f5: $15
	add  b                                           ; $47f6: $80
	ld   a, [hl+]                                    ; $47f7: $2a
	add  b                                           ; $47f8: $80
	dec  d                                           ; $47f9: $15
	add  b                                           ; $47fa: $80
	ld   a, [bc]                                     ; $47fb: $0a
	add  b                                           ; $47fc: $80
	dec  d                                           ; $47fd: $15
	add  b                                           ; $47fe: $80
	add  b                                           ; $47ff: $80
	add  b                                           ; $4800: $80
	ld   b, b                                        ; $4801: $40
	add  b                                           ; $4802: $80
	and  b                                           ; $4803: $a0
	add  b                                           ; $4804: $80
	ld   h, b                                        ; $4805: $60
	add  b                                           ; $4806: $80
	and  b                                           ; $4807: $a0
	add  b                                           ; $4808: $80
	ld   h, b                                        ; $4809: $60
	add  b                                           ; $480a: $80
	ldh  [$80], a                                    ; $480b: $e0 $80
	ld   h, b                                        ; $480d: $60
	add  [hl]                                        ; $480e: $86
	nop                                              ; $480f: $00
	add  b                                           ; $4810: $80
	ld   [bc], a                                     ; $4811: $02
	add  b                                           ; $4812: $80
	nop                                              ; $4813: $00
	add  b                                           ; $4814: $80
	db   $10                                         ; $4815: $10
	add  b                                           ; $4816: $80
	ld   b, a                                        ; $4817: $47
	add  b                                           ; $4818: $80
	xor  b                                           ; $4819: $a8
	add  b                                           ; $481a: $80
	ld   d, b                                        ; $481b: $50
	add  b                                           ; $481c: $80
	xor  b                                           ; $481d: $a8
	add  b                                           ; $481e: $80
	ld   d, b                                        ; $481f: $50
	add  b                                           ; $4820: $80
	jr   z, jr_072_47a3                              ; $4821: $28 $80

	db   $10                                         ; $4823: $10
	add  [hl]                                        ; $4824: $86
	nop                                              ; $4825: $00
	add  b                                           ; $4826: $80
	rlca                                             ; $4827: $07
	add  b                                           ; $4828: $80
	rrca                                             ; $4829: $0f
	add  b                                           ; $482a: $80
	rla                                              ; $482b: $17
	ld   b, $2e                                      ; $482c: $06 $2e
	cpl                                              ; $482e: $2f
	ld   d, $17                                      ; $482f: $16 $17
	ld   l, $2f                                      ; $4831: $2e $2f
	nop                                              ; $4833: $00
	add  c                                           ; $4834: $81
	ld   bc, $8980                                   ; $4835: $01 $80 $89
	ld   de, $dbda                                   ; $4838: $11 $da $db
	ld   d, e                                        ; $483b: $53
	rst  JumpTable                                         ; $483c: $df
	inc  h                                           ; $483d: $24
	or   $00                                         ; $483e: $f6 $00
	db   $ec                                         ; $4840: $ec
	jr   z, @-$02                                    ; $4841: $28 $fc

	add  a                                           ; $4843: $87
	rst  $38                                         ; $4844: $ff
	adc  l                                           ; $4845: $8d
	rst  $38                                         ; $4846: $ff
	ld   h, $bf                                      ; $4847: $26 $bf
	ld   d, c                                        ; $4849: $51
	ld   e, l                                        ; $484a: $5d

Jump_072_484b:
	add  b                                           ; $484b: $80
	sbc  [hl]                                        ; $484c: $9e
	add  b                                           ; $484d: $80
	adc  [hl]                                        ; $484e: $8e
	add  b                                           ; $484f: $80
	jr   jr_072_47d2                                 ; $4850: $18 $80

	ld   [$0508], sp                                 ; $4852: $08 $08 $05
	rst  $38                                         ; $4855: $ff
	db   $ed                                         ; $4856: $ed
	rst  $28                                         ; $4857: $ef
	rrca                                             ; $4858: $0f
	sbc  a                                           ; $4859: $9f
	adc  $7f                                         ; $485a: $ce $7f
	inc  e                                           ; $485c: $1c
	add  c                                           ; $485d: $81
	ld   a, a                                        ; $485e: $7f
	add  hl, bc                                      ; $485f: $09
	ccf                                              ; $4860: $3f
	ld   a, a                                        ; $4861: $7f
	adc  h                                           ; $4862: $8c
	adc  a                                           ; $4863: $8f
	adc  h                                           ; $4864: $8c
	push af                                          ; $4865: $f5
	ld   [hl-], a                                    ; $4866: $32
	ldh  a, [c]                                      ; $4867: $f2
	dec  [hl]                                        ; $4868: $35
	push af                                          ; $4869: $f5
	add  b                                           ; $486a: $80
	ldh  a, [c]                                      ; $486b: $f2
	ld   bc, $f5b5                                   ; $486c: $01 $b5 $f5
	add  b                                           ; $486f: $80
	ldh  a, [c]                                      ; $4870: $f2
	add  b                                           ; $4871: $80
	push hl                                          ; $4872: $e5
	inc  bc                                          ; $4873: $03
	adc  d                                           ; $4874: $8a
	jp   z, $3f47                                    ; $4875: $ca $47 $3f

	add  d                                           ; $4878: $82
	ld   a, a                                        ; $4879: $7f
	ld   [bc], a                                     ; $487a: $02
	ccf                                              ; $487b: $3f
	ld   a, a                                        ; $487c: $7f
	ld   e, a                                        ; $487d: $5f
	add  c                                           ; $487e: $81
	ld   a, a                                        ; $487f: $7f
	inc  bc                                          ; $4880: $03
	ld   e, a                                        ; $4881: $5f
	ld   a, a                                        ; $4882: $7f
	ccf                                              ; $4883: $3f
	ld   a, a                                        ; $4884: $7f
	add  b                                           ; $4885: $80
	db   $fd                                         ; $4886: $fd
	add  b                                           ; $4887: $80
	cp   $80                                         ; $4888: $fe $80
	db   $fd                                         ; $488a: $fd
	add  b                                           ; $488b: $80
	cp   $07                                         ; $488c: $fe $07
	dec  sp                                          ; $488e: $3b
	ld   a, e                                        ; $488f: $7b
	ld   a, l                                        ; $4890: $7d
	ld   a, a                                        ; $4891: $7f
	db   $fd                                         ; $4892: $fd
	rst  $38                                         ; $4893: $ff
	cp   [hl]                                        ; $4894: $be
	cp   $80                                         ; $4895: $fe $80
	ld   b, $80                                      ; $4897: $06 $80
	and  [hl]                                        ; $4899: $a6
	add  b                                           ; $489a: $80
	ld   b, [hl]                                     ; $489b: $46
	add  b                                           ; $489c: $80
	and  [hl]                                        ; $489d: $a6
	add  b                                           ; $489e: $80
	ld   d, [hl]                                     ; $489f: $56
	add  b                                           ; $48a0: $80
	and  [hl]                                        ; $48a1: $a6
	add  b                                           ; $48a2: $80
	ld   b, [hl]                                     ; $48a3: $46
	add  b                                           ; $48a4: $80
	and  [hl]                                        ; $48a5: $a6
	nop                                              ; $48a6: $00
	ldh  a, [$8d]                                    ; $48a7: $f0 $8d
	nop                                              ; $48a9: $00
	nop                                              ; $48aa: $00
	ldh  a, [$93]                                    ; $48ab: $f0 $93
	nop                                              ; $48ad: $00
	add  b                                           ; $48ae: $80
	ld   [bc], a                                     ; $48af: $02
	add  b                                           ; $48b0: $80
	dec  b                                           ; $48b1: $05
	add  b                                           ; $48b2: $80
	ld   c, $80                                      ; $48b3: $0e $80
	rra                                              ; $48b5: $1f
	ld   [bc], a                                     ; $48b6: $02
	inc  a                                           ; $48b7: $3c
	ld   a, $02                                      ; $48b8: $3e $02
	add  l                                           ; $48ba: $85
	nop                                              ; $48bb: $00
	add  b                                           ; $48bc: $80
	ld   [bc], a                                     ; $48bd: $02
	add  b                                           ; $48be: $80
	dec  d                                           ; $48bf: $15
	add  b                                           ; $48c0: $80
	dec  hl                                          ; $48c1: $2b
	add  b                                           ; $48c2: $80
	ld   e, a                                        ; $48c3: $5f
	add  b                                           ; $48c4: $80
	ld   a, [bc]                                     ; $48c5: $0a
	add  b                                           ; $48c6: $80
	dec  b                                           ; $48c7: $05
	add  b                                           ; $48c8: $80
	ld   [hl+], a                                    ; $48c9: $22
	add  b                                           ; $48ca: $80
	ld   d, c                                        ; $48cb: $51
	add  b                                           ; $48cc: $80
	or   b                                           ; $48cd: $b0
	add  b                                           ; $48ce: $80
	pop  hl                                          ; $48cf: $e1
	add  b                                           ; $48d0: $80
	jp   $1603                                       ; $48d1: $c3 $03 $16


	sub  [hl]                                        ; $48d4: $96
	ld   h, b                                        ; $48d5: $60
	ldh  [$80], a                                    ; $48d6: $e0 $80
	ld   h, c                                        ; $48d8: $61
	add  b                                           ; $48d9: $80
	ldh  [c], a                                      ; $48da: $e2
	add  b                                           ; $48db: $80
	push bc                                          ; $48dc: $c5
	add  b                                           ; $48dd: $80
	inc  bc                                          ; $48de: $03
	add  b                                           ; $48df: $80
	rrca                                             ; $48e0: $0f
	add  b                                           ; $48e1: $80
	adc  a                                           ; $48e2: $8f
	inc  bc                                          ; $48e3: $03
	call $a8cf                                       ; $48e4: $cd $cf $a8
	xor  d                                           ; $48e7: $aa
	add  b                                           ; $48e8: $80
	rst  JumpTable                                         ; $48e9: $df
	add  b                                           ; $48ea: $80
	cp   a                                           ; $48eb: $bf
	add  b                                           ; $48ec: $80
	rst  $38                                         ; $48ed: $ff
	ld   [$fffc], sp                                 ; $48ee: $08 $fc $ff
	add  sp, -$01                                    ; $48f1: $e8 $ff
	add  b                                           ; $48f3: $80
	rst  $38                                         ; $48f4: $ff
	ld   a, [bc]                                     ; $48f5: $0a
	rst  $38                                         ; $48f6: $ff
	ld   e, $87                                      ; $48f7: $1e $87
	add  b                                           ; $48f9: $80
	add  hl, bc                                      ; $48fa: $09
	nop                                              ; $48fb: $00
	add  b                                           ; $48fc: $80
	ld   b, b                                        ; $48fd: $40
	ret  nz                                          ; $48fe: $c0

	add  b                                           ; $48ff: $80
	ret  nz                                          ; $4900: $c0

	ld   d, a                                        ; $4901: $57
	rla                                              ; $4902: $17
	ld   c, $0f                                      ; $4903: $0e $0f
	add  b                                           ; $4905: $80
	inc  bc                                          ; $4906: $03
	add  b                                           ; $4907: $80
	rlca                                             ; $4908: $07
	add  b                                           ; $4909: $80
	inc  bc                                          ; $490a: $03
	ld   bc, $0302                                   ; $490b: $01 $02 $03
	add  d                                           ; $490e: $82
	ld   bc, $3f04                                   ; $490f: $01 $04 $3f
	ret  c                                           ; $4912: $d8

	ldh  a, [$f8]                                    ; $4913: $f0 $f8
	add  sp, -$7f                                    ; $4915: $e8 $81
	ld   hl, sp-$7e                                  ; $4917: $f8 $82
	ldh  a, [$80]                                    ; $4919: $f0 $80
	push af                                          ; $491b: $f5
	inc  bc                                          ; $491c: $03
	ld   a, d                                        ; $491d: $7a
	ld   a, [$0986]                                  ; $491e: $fa $86 $09
	add  b                                           ; $4921: $80
	dec  c                                           ; $4922: $0d
	ld   bc, $1d15                                   ; $4923: $01 $15 $1d
	add  b                                           ; $4926: $80
	dec  b                                           ; $4927: $05
	ld   bc, $2909                                   ; $4928: $01 $09 $29
	add  b                                           ; $492b: $80
	xor  b                                           ; $492c: $a8
	add  b                                           ; $492d: $80
	ld   a, b                                        ; $492e: $78
	add  b                                           ; $492f: $80
	ret  c                                           ; $4930: $d8

	ld   bc, $0fd4                                   ; $4931: $01 $d4 $0f
	add  b                                           ; $4934: $80
	add  a                                           ; $4935: $87
	add  b                                           ; $4936: $80
	adc  e                                           ; $4937: $8b
	ld   bc, $8785                                   ; $4938: $01 $85 $87
	add  b                                           ; $493b: $80
	adc  a                                           ; $493c: $8f
	ld   bc, $4342                                   ; $493d: $01 $42 $43
	add  b                                           ; $4940: $80
	ld   bc, $6080                                   ; $4941: $01 $80 $60
	ld   bc, $cd35                                   ; $4944: $01 $35 $cd
	add  b                                           ; $4947: $80
	ld   [bc], a                                     ; $4948: $02
	add  b                                           ; $4949: $80
	and  l                                           ; $494a: $a5
	ld   bc, $a282                                   ; $494b: $01 $82 $a2
	add  b                                           ; $494e: $80
	db   $fd                                         ; $494f: $fd
	dec  b                                           ; $4950: $05
	jp   z, $95da                                    ; $4951: $ca $da $95

	db   $dd                                         ; $4954: $dd
	ldh  a, [rSVBK]                                  ; $4955: $f0 $70
	add  b                                           ; $4957: $80
	ld   a, e                                        ; $4958: $7b
	inc  bc                                          ; $4959: $03
	ld   a, l                                        ; $495a: $7d
	ld   a, a                                        ; $495b: $7f
	ld   a, l                                        ; $495c: $7d
	ld   a, a                                        ; $495d: $7f
	add  b                                           ; $495e: $80
	ccf                                              ; $495f: $3f
	add  b                                           ; $4960: $80
	ld   e, a                                        ; $4961: $5f
	add  b                                           ; $4962: $80
	cpl                                              ; $4963: $2f
	add  b                                           ; $4964: $80
	rra                                              ; $4965: $1f
	add  b                                           ; $4966: $80
	cpl                                              ; $4967: $2f
	add  b                                           ; $4968: $80
	db   $fd                                         ; $4969: $fd
	add  b                                           ; $496a: $80
	cp   $80                                         ; $496b: $fe $80
	db   $fd                                         ; $496d: $fd
	add  b                                           ; $496e: $80
	ld   a, [$fd80]                                  ; $496f: $fa $80 $fd

Jump_072_4972:
	add  b                                           ; $4972: $80
	ld   a, [$fd80]                                  ; $4973: $fa $80 $fd
	inc  bc                                          ; $4976: $03
	ld   a, [hl-]                                    ; $4977: $3a
	ld   a, d                                        ; $4978: $7a
	ld   d, $56                                      ; $4979: $16 $56
	add  b                                           ; $497b: $80
	ld   h, $03                                      ; $497c: $26 $03
	sub  [hl]                                        ; $497e: $96
	sub  $e6                                         ; $497f: $d6 $e6
	and  [hl]                                        ; $4981: $a6
	add  b                                           ; $4982: $80
	ld   d, [hl]                                     ; $4983: $56
	add  b                                           ; $4984: $80
	and  [hl]                                        ; $4985: $a6
	add  b                                           ; $4986: $80
	ld   b, l                                        ; $4987: $45
	ld   [bc], a                                     ; $4988: $02
	add  h                                           ; $4989: $84
	add  l                                           ; $498a: $85
	pop  af                                          ; $498b: $f1

jr_072_498c:
	add  a                                           ; $498c: $87
	nop                                              ; $498d: $00
	add  b                                           ; $498e: $80

jr_072_498f:
	ld   bc, $0a80                                   ; $498f: $01 $80 $0a
	add  b                                           ; $4992: $80
	dec  b                                           ; $4993: $05
	ld   bc, $00f0                                   ; $4994: $01 $f0 $00
	add  b                                           ; $4997: $80
	dec  b                                           ; $4998: $05
	add  b                                           ; $4999: $80
	dec  bc                                          ; $499a: $0b
	add  b                                           ; $499b: $80
	rla                                              ; $499c: $17
	inc  bc                                          ; $499d: $03
	ld   l, $2f                                      ; $499e: $2e $2f
	ld   e, l                                        ; $49a0: $5d
	ld   e, h                                        ; $49a1: $5c
	add  b                                           ; $49a2: $80
	cp   e                                           ; $49a3: $bb
	add  b                                           ; $49a4: $80
	rst  $30                                         ; $49a5: $f7
	dec  c                                           ; $49a6: $0d
	cp   b                                           ; $49a7: $b8
	cp   h                                           ; $49a8: $bc
	ld   d, l                                        ; $49a9: $55
	ld   a, c                                        ; $49aa: $79
	ld   b, d                                        ; $49ab: $42
	ld   a, [$f505]                                  ; $49ac: $fa $05 $f5
	inc  hl                                          ; $49af: $23
	jp   $27a6                                       ; $49b0: $c3 $a6 $27


	adc  $cf                                         ; $49b3: $ce $cf
	add  b                                           ; $49b5: $80
	add  b                                           ; $49b6: $80
	dec  c                                           ; $49b7: $0d
	cp   h                                           ; $49b8: $bc
	cp   a                                           ; $49b9: $bf
	ld   l, e                                        ; $49ba: $6b
	ld   a, [hl]                                     ; $49bb: $7e
	add  $fc                                         ; $49bc: $c6 $fc
	adc  h                                           ; $49be: $8c
	ld   hl, sp+$18                                  ; $49bf: $f8 $18
	ldh  a, [$30]                                    ; $49c1: $f0 $30
	ret  nz                                          ; $49c3: $c0

	ld   d, d                                        ; $49c4: $52
	ld   [de], a                                     ; $49c5: $12
	add  b                                           ; $49c6: $80
	dec  [hl]                                        ; $49c7: $35
	add  b                                           ; $49c8: $80
	dec  hl                                          ; $49c9: $2b
	add  b                                           ; $49ca: $80
	ld   e, a                                        ; $49cb: $5f
	add  b                                           ; $49cc: $80
	cp   a                                           ; $49cd: $bf
	inc  de                                          ; $49ce: $13
	ld   a, l                                        ; $49cf: $7d
	ld   a, a                                        ; $49d0: $7f
	ld   a, b                                        ; $49d1: $78
	ld   a, a                                        ; $49d2: $7f
	ld   sp, $a13f                                   ; $49d3: $31 $3f $a1
	cp   a                                           ; $49d6: $bf
	ld   b, c                                        ; $49d7: $41
	ld   e, a                                        ; $49d8: $5f
	pop  hl                                          ; $49d9: $e1
	rst  $28                                         ; $49da: $ef
	ldh  a, [rIE]                                    ; $49db: $f0 $ff
	cp   [hl]                                        ; $49dd: $be
	rst  $38                                         ; $49de: $ff
	dec  bc                                          ; $49df: $0b
	rst  $28                                         ; $49e0: $ef
	adc  a                                           ; $49e1: $8f
	rst  $28                                         ; $49e2: $ef
	add  b                                           ; $49e3: $80
	rst  $38                                         ; $49e4: $ff
	add  d                                           ; $49e5: $82
	rst  JumpTable                                         ; $49e6: $df
	ld   [bc], a                                     ; $49e7: $02
	ld   c, l                                        ; $49e8: $4d
	rst  $38                                         ; $49e9: $ff
	ld   a, l                                        ; $49ea: $7d
	add  l                                           ; $49eb: $85
	rst  $38                                         ; $49ec: $ff
	rlca                                             ; $49ed: $07
	cp   $ff                                         ; $49ee: $fe $ff
	db   $fc                                         ; $49f0: $fc
	cp   $f8                                         ; $49f1: $fe $f8
	db   $fc                                         ; $49f3: $fc
	jr   nc, @+$0a                                   ; $49f4: $30 $08

	add  b                                           ; $49f6: $80
	inc  l                                           ; $49f7: $2c
	ld   bc, $0c4c                                   ; $49f8: $01 $4c $0c
	add  b                                           ; $49fb: $80
	inc  e                                           ; $49fc: $1c
	ld   bc, $da5a                                   ; $49fd: $01 $5a $da
	add  b                                           ; $4a00: $80
	ld   d, [hl]                                     ; $4a01: $56
	inc  b                                           ; $4a02: $04
	ld   e, e                                        ; $4a03: $5b
	ld   e, a                                        ; $4a04: $5f
	ld   d, d                                        ; $4a05: $52
	ld   a, [hl]                                     ; $4a06: $7e
	jr   z, jr_072_498c                              ; $4a07: $28 $83

	nop                                              ; $4a09: $00
	add  b                                           ; $4a0a: $80
	ld   d, b                                        ; $4a0b: $50
	add  b                                           ; $4a0c: $80
	jr   z, jr_072_498f                              ; $4a0d: $28 $80

	sub  h                                           ; $4a0f: $94
	add  b                                           ; $4a10: $80
	ld   a, [hl+]                                    ; $4a11: $2a
	add  b                                           ; $4a12: $80
	sbc  l                                           ; $4a13: $9d
	rlca                                             ; $4a14: $07
	rst  $38                                         ; $4a15: $ff
	add  h                                           ; $4a16: $84
	nop                                              ; $4a17: $00
	ld   b, d                                        ; $4a18: $42
	inc  c                                           ; $4a19: $0c
	dec  h                                           ; $4a1a: $25
	ld   e, $0e                                      ; $4a1b: $1e $0e
	add  b                                           ; $4a1d: $80
	ld   a, a                                        ; $4a1e: $7f
	ld   bc, $6f6d                                   ; $4a1f: $01 $6d $6f
	add  b                                           ; $4a22: $80
	cpl                                              ; $4a23: $2f
	ld   [bc], a                                     ; $4a24: $02
	ld   [hl-], a                                    ; $4a25: $32
	ccf                                              ; $4a26: $3f
	rst  ToBoot                                         ; $4a27: $c7
	add  c                                           ; $4a28: $81
	jr   jr_072_4a2e                                 ; $4a29: $18 $03

	ld   e, b                                        ; $4a2b: $58
	jr   @-$7a                                       ; $4a2c: $18 $84

jr_072_4a2e:
	inc  d                                           ; $4a2e: $14
	add  b                                           ; $4a2f: $80
	or   h                                           ; $4a30: $b4
	ld   bc, $d8d0                                   ; $4a31: $01 $d0 $d8
	add  b                                           ; $4a34: $80
	call c, Call_072_4c05                            ; $4a35: $dc $05 $4c
	call c, $e71f                                    ; $4a38: $dc $1f $e7
	and  l                                           ; $4a3b: $a5
	push hl                                          ; $4a3c: $e5
	add  b                                           ; $4a3d: $80
	db   $e4                                         ; $4a3e: $e4
	ld   bc, $e4c4                                   ; $4a3f: $01 $c4 $e4
	add  b                                           ; $4a42: $80
	rst  $28                                         ; $4a43: $ef
	add  b                                           ; $4a44: $80
	ld   h, h                                        ; $4a45: $64
	add  b                                           ; $4a46: $80
	dec  h                                           ; $4a47: $25
	add  b                                           ; $4a48: $80
	ld   b, h                                        ; $4a49: $44
	inc  bc                                          ; $4a4a: $03
	rst  $38                                         ; $4a4b: $ff
	rst  $28                                         ; $4a4c: $ef
	rst  $20                                         ; $4a4d: $e7
	rst  $30                                         ; $4a4e: $f7
	add  b                                           ; $4a4f: $80
	or   $80                                         ; $4a50: $f6 $80
	halt                                             ; $4a52: $76
	inc  bc                                          ; $4a53: $03
	adc  c                                           ; $4a54: $89
	rst  $38                                         ; $4a55: $ff
	ld   bc, $8077                                   ; $4a56: $01 $77 $80
	or   $80                                         ; $4a59: $f6 $80
	ld   hl, sp-$80                                  ; $4a5b: $f8 $80
	rla                                              ; $4a5d: $17
	add  b                                           ; $4a5e: $80
	cpl                                              ; $4a5f: $2f
	ld   bc, $5554                                   ; $4a60: $01 $54 $55
	add  b                                           ; $4a63: $80
	ld   l, l                                        ; $4a64: $6d
	dec  bc                                          ; $4a65: $0b
	ld   e, [hl]                                     ; $4a66: $5e
	ld   e, a                                        ; $4a67: $5f
	ld   a, e                                        ; $4a68: $7b
	ld   a, a                                        ; $4a69: $7f
	ld   d, a                                        ; $4a6a: $57
	ld   e, a                                        ; $4a6b: $5f
	ld   [hl], d                                     ; $4a6c: $72
	ld   a, [hl]                                     ; $4a6d: $7e
	or   l                                           ; $4a6e: $b5
	push af                                          ; $4a6f: $f5
	cp   d                                           ; $4a70: $ba
	ld   a, [$f480]                                  ; $4a71: $fa $80 $f4
	add  b                                           ; $4a74: $80
	xor  b                                           ; $4a75: $a8
	add  hl, bc                                      ; $4a76: $09
	pop  bc                                          ; $4a77: $c1
	pop  de                                          ; $4a78: $d1
	scf                                              ; $4a79: $37
	and  a                                           ; $4a7a: $a7
	adc  $4f                                         ; $4a7b: $ce $4f
	sub  h                                           ; $4a7d: $94
	sbc  a                                           ; $4a7e: $9f
	ld   [bc], a                                     ; $4a7f: $02
	add  hl, bc                                      ; $4a80: $09
	add  b                                           ; $4a81: $80
	rra                                              ; $4a82: $1f
	add  b                                           ; $4a83: $80
	ld   a, a                                        ; $4a84: $7f
	dec  bc                                          ; $4a85: $0b
	db   $f4                                         ; $4a86: $f4
	db   $fd                                         ; $4a87: $fd
	and  c                                           ; $4a88: $a1
	ld   sp, hl                                      ; $4a89: $f9
	ld   [$00f8], sp                                 ; $4a8a: $08 $f8 $00
	ldh  a, [rAUD1SWEEP]                             ; $4a8d: $f0 $10
	ldh  [$5b], a                                    ; $4a8f: $e0 $5b
	dec  bc                                          ; $4a91: $0b
	add  b                                           ; $4a92: $80
	rrca                                             ; $4a93: $0f
	adc  d                                           ; $4a94: $8a
	nop                                              ; $4a95: $00
	ld   bc, $ef1f                                   ; $4a96: $01 $1f $ef
	add  b                                           ; $4a99: $80
	adc  [hl]                                        ; $4a9a: $8e
	add  d                                           ; $4a9b: $82
	ld   c, $80                                      ; $4a9c: $0e $80
	ld   b, $80                                      ; $4a9e: $06 $80
	nop                                              ; $4aa0: $00
	add  b                                           ; $4aa1: $80
	dec  b                                           ; $4aa2: $05
	add  b                                           ; $4aa3: $80
	dec  hl                                          ; $4aa4: $2b
	adc  [hl]                                        ; $4aa5: $8e
	nop                                              ; $4aa6: $00
	add  b                                           ; $4aa7: $80
	inc  sp                                          ; $4aa8: $33
	ld   e, $36                                      ; $4aa9: $1e $36
	scf                                              ; $4aab: $37
	jr   jr_072_4ac9                                 ; $4aac: $18 $1b

	sbc  h                                           ; $4aae: $9c

jr_072_4aaf:
	sbc  a                                           ; $4aaf: $9f
	call c, $d4df                                    ; $4ab0: $dc $df $d4
	rst  JumpTable                                         ; $4ab3: $df
	ld   e, [hl]                                     ; $4ab4: $5e
	ld   e, a                                        ; $4ab5: $5f
	ld   l, h                                        ; $4ab6: $6c
	ld   l, l                                        ; $4ab7: $6d
	pop  hl                                          ; $4ab8: $e1
	rst  $28                                         ; $4ab9: $ef
	or   e                                           ; $4aba: $b3
	rst  $30                                         ; $4abb: $f7
	ld   de, $2ff7                                   ; $4abc: $11 $f7 $2f
	ei                                               ; $4abf: $fb
	ld   [hl], a                                     ; $4ac0: $77
	rst  $38                                         ; $4ac1: $ff
	ld   a, [hl]                                     ; $4ac2: $7e
	rst  $38                                         ; $4ac3: $ff
	ld   a, [hl]                                     ; $4ac4: $7e
	rst  $38                                         ; $4ac5: $ff
	ld   a, e                                        ; $4ac6: $7b
	rst  $38                                         ; $4ac7: $ff
	and  d                                           ; $4ac8: $a2

jr_072_4ac9:
	add  c                                           ; $4ac9: $81
	db   $10                                         ; $4aca: $10
	dec  l                                           ; $4acb: $2d
	nop                                              ; $4acc: $00
	ld   bc, $1f52                                   ; $4acd: $01 $52 $1f
	ld   h, a                                        ; $4ad0: $67
	rst  $38                                         ; $4ad1: $ff
	sub  a                                           ; $4ad2: $97
	rst  $38                                         ; $4ad3: $ff
	dec  e                                           ; $4ad4: $1d
	ld   e, a                                        ; $4ad5: $5f
	add  a                                           ; $4ad6: $87
	cpl                                              ; $4ad7: $2f
	ld   l, d                                        ; $4ad8: $6a
	inc  de                                          ; $4ad9: $13
	dec  e                                           ; $4ada: $1d
	ccf                                              ; $4adb: $3f
	inc  b                                           ; $4adc: $04
	rst  $38                                         ; $4add: $ff
	ld   [hl], a                                     ; $4ade: $77
	rst  $38                                         ; $4adf: $ff
	ld   e, [hl]                                     ; $4ae0: $5e
	rst  $38                                         ; $4ae1: $ff
	cp   $ff                                         ; $4ae2: $fe $ff
	ldh  [rIE], a                                    ; $4ae4: $e0 $ff
	jp   hl                                          ; $4ae6: $e9


	rst  $38                                         ; $4ae7: $ff
	adc  a                                           ; $4ae8: $8f
	rst  $38                                         ; $4ae9: $ff
	add  a                                           ; $4aea: $87
	rst  $38                                         ; $4aeb: $ff
	cp   a                                           ; $4aec: $bf
	rst  $38                                         ; $4aed: $ff
	and  d                                           ; $4aee: $a2
	ld   a, [$ff47]                                  ; $4aef: $fa $47 $ff
	adc  [hl]                                        ; $4af2: $8e
	cp   $7c                                         ; $4af3: $fe $7c
	db   $fc                                         ; $4af5: $fc
	and  $fe                                         ; $4af6: $e6 $fe
	ld   b, d                                        ; $4af8: $42
	ld   a, [de]                                     ; $4af9: $1a
	add  b                                           ; $4afa: $80
	adc  l                                           ; $4afb: $8d
	add  b                                           ; $4afc: $80
	rrca                                             ; $4afd: $0f
	add  b                                           ; $4afe: $80
	and  a                                           ; $4aff: $a7
	add  b                                           ; $4b00: $80
	inc  bc                                          ; $4b01: $03
	add  b                                           ; $4b02: $80
	and  c                                           ; $4b03: $a1
	add  b                                           ; $4b04: $80
	nop                                              ; $4b05: $00
	inc  bc                                          ; $4b06: $03
	ld   de, $8519                                   ; $4b07: $11 $19 $85
	adc  a                                           ; $4b0a: $8f
	add  b                                           ; $4b0b: $80
	rrca                                             ; $4b0c: $0f
	add  b                                           ; $4b0d: $80
	sbc  a                                           ; $4b0e: $9f
	ld   [bc], a                                     ; $4b0f: $02
	add  hl, bc                                      ; $4b10: $09
	ld   c, $82                                      ; $4b11: $0e $82
	add  b                                           ; $4b13: $80
	add  l                                           ; $4b14: $85
	ld   de, $cb83                                   ; $4b15: $11 $83 $cb
	jp   z, Jump_072_4c4a                            ; $4b18: $ca $4a $4c

	di                                               ; $4b1b: $f3
	db   $fc                                         ; $4b1c: $fc
	or   b                                           ; $4b1d: $b0
	db   $fc                                         ; $4b1e: $fc
	cp   b                                           ; $4b1f: $b8
	ld   c, b                                        ; $4b20: $48
	ld   c, h                                        ; $4b21: $4c
	call nz, $86c6                                   ; $4b22: $c4 $c6 $86
	add  h                                           ; $4b25: $84
	inc  b                                           ; $4b26: $04
	nop                                              ; $4b27: $00
	add  b                                           ; $4b28: $80
	jr   z, jr_072_4b2d                              ; $4b29: $28 $02

	ld   a, b                                        ; $4b2b: $78
	and  b                                           ; $4b2c: $a0

jr_072_4b2d:
	jr   nz, jr_072_4aaf                             ; $4b2d: $20 $80

	ld   b, b                                        ; $4b2f: $40
	add  b                                           ; $4b30: $80
	nop                                              ; $4b31: $00
	add  b                                           ; $4b32: $80
	ld   e, $80                                      ; $4b33: $1e $80
	rrca                                             ; $4b35: $0f
	add  d                                           ; $4b36: $82
	dec  bc                                          ; $4b37: $0b
	add  b                                           ; $4b38: $80
	dec  e                                           ; $4b39: $1d
	add  b                                           ; $4b3a: $80
	ld   a, b                                        ; $4b3b: $78
	ld   [bc], a                                     ; $4b3c: $02
	ld   b, h                                        ; $4b3d: $44
	ld   a, h                                        ; $4b3e: $7c
	ld   [bc], a                                     ; $4b3f: $02
	add  c                                           ; $4b40: $81
	ld   a, [hl-]                                    ; $4b41: $3a
	add  b                                           ; $4b42: $80
	sbc  e                                           ; $4b43: $9b
	add  b                                           ; $4b44: $80
	db   $eb                                         ; $4b45: $eb
	add  b                                           ; $4b46: $80
	di                                               ; $4b47: $f3
	inc  bc                                          ; $4b48: $03
	ld   hl, sp-$25                                  ; $4b49: $f8 $db
	halt                                             ; $4b4b: $76
	ld   d, l                                        ; $4b4c: $55
	add  b                                           ; $4b4d: $80
	ld   l, d                                        ; $4b4e: $6a
	inc  l                                           ; $4b4f: $2c
	ld   b, l                                        ; $4b50: $45
	ld   b, a                                        ; $4b51: $47
	ld   b, l                                        ; $4b52: $45
	ld   c, e                                        ; $4b53: $4b
	rlca                                             ; $4b54: $07
	rla                                              ; $4b55: $17
	inc  hl                                          ; $4b56: $23
	daa                                              ; $4b57: $27
	ld   e, [hl]                                     ; $4b58: $5e
	ld   [hl], a                                     ; $4b59: $77
	ld   d, h                                        ; $4b5a: $54
	ld   h, a                                        ; $4b5b: $67
	ld   l, b                                        ; $4b5c: $68
	ld   a, a                                        ; $4b5d: $7f
	ret  nz                                          ; $4b5e: $c0

	rst  $38                                         ; $4b5f: $ff
	ret  nz                                          ; $4b60: $c0

	rst  $38                                         ; $4b61: $ff
	ld   b, b                                        ; $4b62: $40
	rst  $38                                         ; $4b63: $ff
	ld   [bc], a                                     ; $4b64: $02
	rst  $38                                         ; $4b65: $ff
	ld   b, $ff                                      ; $4b66: $06 $ff
	inc  c                                           ; $4b68: $0c
	cp   $5a                                         ; $4b69: $fe $5a
	cp   $59                                         ; $4b6b: $fe $59
	pop  hl                                          ; $4b6d: $e1
	inc  bc                                          ; $4b6e: $03
	jp   $c747                                       ; $4b6f: $c3 $47 $c7


	dec  c                                           ; $4b72: $0d
	adc  a                                           ; $4b73: $8f
	sbc  b                                           ; $4b74: $98
	rra                                              ; $4b75: $1f
	ld   de, $231f                                   ; $4b76: $11 $1f $23
	ccf                                              ; $4b79: $3f
	ld   h, a                                        ; $4b7a: $67
	ld   a, a                                        ; $4b7b: $7f
	rst  $38                                         ; $4b7c: $ff
	add  e                                           ; $4b7d: $83
	nop                                              ; $4b7e: $00
	add  b                                           ; $4b7f: $80
	dec  b                                           ; $4b80: $05
	add  b                                           ; $4b81: $80
	ld   a, [bc]                                     ; $4b82: $0a
	add  b                                           ; $4b83: $80
	dec  b                                           ; $4b84: $05
	add  b                                           ; $4b85: $80
	dec  bc                                          ; $4b86: $0b
	add  b                                           ; $4b87: $80
	dec  b                                           ; $4b88: $05
	ld   bc, $56a6                                   ; $4b89: $01 $a6 $56
	add  b                                           ; $4b8c: $80
	dec  hl                                          ; $4b8d: $2b
	add  b                                           ; $4b8e: $80
	rlca                                             ; $4b8f: $07
	add  b                                           ; $4b90: $80
	ld   b, $80                                      ; $4b91: $06 $80
	add  h                                           ; $4b93: $84
	add  b                                           ; $4b94: $80
	jp   $e180                                       ; $4b95: $c3 $80 $e1


	add  b                                           ; $4b98: $80
	ldh  [$82], a                                    ; $4b99: $e0 $82
	nop                                              ; $4b9b: $00
	add  b                                           ; $4b9c: $80
	inc  bc                                          ; $4b9d: $03
	add  b                                           ; $4b9e: $80
	dec  b                                           ; $4b9f: $05
	add  b                                           ; $4ba0: $80
	ld   [bc], a                                     ; $4ba1: $02
	add  b                                           ; $4ba2: $80
	ld   bc, $0280                                   ; $4ba3: $01 $80 $02
	add  b                                           ; $4ba6: $80
	add  c                                           ; $4ba7: $81
	add  b                                           ; $4ba8: $80
	dec  l                                           ; $4ba9: $2d
	add  b                                           ; $4baa: $80
	dec  h                                           ; $4bab: $25
	add  b                                           ; $4bac: $80
	adc  c                                           ; $4bad: $89

jr_072_4bae:
	add  b                                           ; $4bae: $80
	push bc                                          ; $4baf: $c5
	add  b                                           ; $4bb0: $80
	ret                                              ; $4bb1: $c9


	add  b                                           ; $4bb2: $80
	ld   b, l                                        ; $4bb3: $45
	add  b                                           ; $4bb4: $80
	add  [hl]                                        ; $4bb5: $86
	add  b                                           ; $4bb6: $80
	rla                                              ; $4bb7: $17
	nop                                              ; $4bb8: $00
	ld   [bc], a                                     ; $4bb9: $02
	add  c                                           ; $4bba: $81
	rst  $38                                         ; $4bbb: $ff
	ld   [de], a                                     ; $4bbc: $12
	ld   hl, sp-$01                                  ; $4bbd: $f8 $ff
	ld   a, [hl]                                     ; $4bbf: $7e
	rst  $38                                         ; $4bc0: $ff
	sub  e                                           ; $4bc1: $93
	rst  $38                                         ; $4bc2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bc3: $cf
	rst  $38                                         ; $4bc4: $ff
	adc  a                                           ; $4bc5: $8f
	rst  $38                                         ; $4bc6: $ff
	ld   b, e                                        ; $4bc7: $43
	ld   a, a                                        ; $4bc8: $7f
	or   b                                           ; $4bc9: $b0
	rla                                              ; $4bca: $17
	dec  l                                           ; $4bcb: $2d
	rlca                                             ; $4bcc: $07
	dec  de                                          ; $4bcd: $1b
	rla                                              ; $4bce: $17
	dec  d                                           ; $4bcf: $15
	add  b                                           ; $4bd0: $80
	dec  bc                                          ; $4bd1: $0b
	add  b                                           ; $4bd2: $80
	add  hl, bc                                      ; $4bd3: $09
	add  b                                           ; $4bd4: $80
	dec  b                                           ; $4bd5: $05
	add  c                                           ; $4bd6: $81
	inc  b                                           ; $4bd7: $04
	add  hl, bc                                      ; $4bd8: $09
	ldh  [rIE], a                                    ; $4bd9: $e0 $ff
	sbc  a                                           ; $4bdb: $9f
	rst  $38                                         ; $4bdc: $ff
	add  hl, sp                                      ; $4bdd: $39
	rst  $38                                         ; $4bde: $ff
	di                                               ; $4bdf: $f3
	rst  $38                                         ; $4be0: $ff
	nop                                              ; $4be1: $00
	ld   l, a                                        ; $4be2: $6f
	add  b                                           ; $4be3: $80
	cp   a                                           ; $4be4: $bf
	ld   bc, $fdcc                                   ; $4be5: $01 $cc $fd
	add  b                                           ; $4be8: $80
	ld   a, d                                        ; $4be9: $7a
	ld   b, $c5                                      ; $4bea: $06 $c5
	push af                                          ; $4bec: $f5
	ccf                                              ; $4bed: $3f
	rst  $38                                         ; $4bee: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bef: $cf
	ld   a, $be                                      ; $4bf0: $3e $be
	add  b                                           ; $4bf2: $80
	cp   h                                           ; $4bf3: $bc
	jr   c, jr_072_4bae                              ; $4bf4: $38 $b8

	ld   b, b                                        ; $4bf6: $40
	ld   d, [hl]                                     ; $4bf7: $56
	ld   a, $a0                                      ; $4bf8: $3e $a0
	ld   h, b                                        ; $4bfa: $60
	add  b                                           ; $4bfb: $80
	rra                                              ; $4bfc: $1f
	ld   a, b                                        ; $4bfd: $78
	ld   sp, $e1f9                                   ; $4bfe: $31 $f9 $e1
	pop  af                                          ; $4c01: $f1
	adc  $8e                                         ; $4c02: $ce $8e
	ld   [de], a                                     ; $4c04: $12

Call_072_4c05:
	sbc  [hl]                                        ; $4c05: $9e
	ld   [$e8fc], sp                                 ; $4c06: $08 $fc $e8
	jp   hl                                          ; $4c09: $e9


	cp   h                                           ; $4c0a: $bc
	or   [hl]                                        ; $4c0b: $b6
	inc  de                                          ; $4c0c: $13

jr_072_4c0d:
	rst  $20                                         ; $4c0d: $e7
	ret  c                                           ; $4c0e: $d8

	sbc  $ce                                         ; $4c0f: $de $ce
	db   $fc                                         ; $4c11: $fc
	xor  b                                           ; $4c12: $a8
	db   $fc                                         ; $4c13: $fc
	ld   c, c                                        ; $4c14: $49
	pop  af                                          ; $4c15: $f1
	ld   h, c                                        ; $4c16: $61
	pop  bc                                          ; $4c17: $c1
	adc  e                                           ; $4c18: $8b
	dec  bc                                          ; $4c19: $0b
	ld   b, [hl]                                     ; $4c1a: $46
	ld   b, a                                        ; $4c1b: $47
	cp   b                                           ; $4c1c: $b8
	or   $4c                                         ; $4c1d: $f6 $4c
	ld   a, h                                        ; $4c1f: $7c
	add  b                                           ; $4c20: $80
	add  sp, -$4c                                    ; $4c21: $e8 $b4
	db   $fc                                         ; $4c23: $fc
	sbc  d                                           ; $4c24: $9a
	ld   a, [$f4b4]                                  ; $4c25: $fa $b4 $f4
	ld   l, [hl]                                     ; $4c28: $6e
	xor  $98                                         ; $4c29: $ee $98
	sbc  [hl]                                        ; $4c2b: $9e
	dec  sp                                          ; $4c2c: $3b
	dec  a                                           ; $4c2d: $3d
	add  h                                           ; $4c2e: $84
	inc  a                                           ; $4c2f: $3c
	add  b                                           ; $4c30: $80
	ld   a, $80                                      ; $4c31: $3e $80
	ld   e, $80                                      ; $4c33: $1e $80
	ld   l, $80                                      ; $4c35: $2e $80
	ld   d, $41                                      ; $4c37: $16 $41
	xor  h                                           ; $4c39: $ac
	db   $fd                                         ; $4c3a: $fd
	sub  a                                           ; $4c3b: $97
	cp   $9f                                         ; $4c3c: $fe $9f
	rst  $38                                         ; $4c3e: $ff
	halt                                             ; $4c3f: $76
	ccf                                              ; $4c40: $3f
	dec  l                                           ; $4c41: $2d
	ccf                                              ; $4c42: $3f
	db   $db                                         ; $4c43: $db
	rst  JumpTable                                         ; $4c44: $df
	adc  e                                           ; $4c45: $8b
	adc  a                                           ; $4c46: $8f
	push bc                                          ; $4c47: $c5
	rst  ToBoot                                         ; $4c48: $c7
	ld   l, c                                        ; $4c49: $69

Jump_072_4c4a:
	ld   l, a                                        ; $4c4a: $6f
	add  e                                           ; $4c4b: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c4c: $cf
	db   $d3                                         ; $4c4d: $d3
	sbc  a                                           ; $4c4e: $9f
	sub  e                                           ; $4c4f: $93
	sbc  a                                           ; $4c50: $9f
	sub  c                                           ; $4c51: $91
	sbc  a                                           ; $4c52: $9f
	ld   c, b                                        ; $4c53: $48

jr_072_4c54:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c54: $cf
	and  [hl]                                        ; $4c55: $a6
	db   $e4                                         ; $4c56: $e4
	jp   $e4e3                                       ; $4c57: $c3 $e3 $e4


	db   $fc                                         ; $4c5a: $fc
	db   $f4                                         ; $4c5b: $f4
	db   $fc                                         ; $4c5c: $fc
	ld   sp, hl                                      ; $4c5d: $f9
	rst  $38                                         ; $4c5e: $ff
	rst  $28                                         ; $4c5f: $ef
	rst  $38                                         ; $4c60: $ff
	db   $f4                                         ; $4c61: $f4
	db   $d3                                         ; $4c62: $d3
	db   $e4                                         ; $4c63: $e4
	daa                                              ; $4c64: $27
	ldh  a, [c]                                      ; $4c65: $f2
	rst  $38                                         ; $4c66: $ff
	rlca                                             ; $4c67: $07
	rst  $38                                         ; $4c68: $ff
	ld   d, $fe                                      ; $4c69: $16 $fe
	call $8afd                                       ; $4c6b: $cd $fd $8a
	ei                                               ; $4c6e: $fb
	sbc  l                                           ; $4c6f: $9d
	db   $fd                                         ; $4c70: $fd
	sbc  c                                           ; $4c71: $99
	ld   sp, hl                                      ; $4c72: $f9
	db   $10                                         ; $4c73: $10
	ldh  a, [c]                                      ; $4c74: $f2
	or   c                                           ; $4c75: $b1
	pop  af                                          ; $4c76: $f1
	add  hl, de                                      ; $4c77: $19
	dec  e                                           ; $4c78: $1d
	dec  bc                                          ; $4c79: $0b
	inc  bc                                          ; $4c7a: $03
	add  b                                           ; $4c7b: $80
	ld   bc, $0086                                   ; $4c7c: $01 $86 $00
	add  b                                           ; $4c7f: $80
	ld   [$0607], sp                                 ; $4c80: $08 $07 $06
	ld   c, $09                                      ; $4c83: $0e $09
	pop  af                                          ; $4c85: $f1
	ldh  a, [$f1]                                    ; $4c86: $f0 $f1
	ld   [hl], c                                     ; $4c88: $71
	ld   [hl], b                                     ; $4c89: $70
	add  b                                           ; $4c8a: $80
	jr   c, jr_072_4c0d                              ; $4c8b: $38 $80

	sbc  h                                           ; $4c8d: $9c
	add  b                                           ; $4c8e: $80
	ld   c, $05                                      ; $4c8f: $0e $05
	ld   b, $07                                      ; $4c91: $06 $07
	ld   bc, $c103                                   ; $4c93: $01 $03 $c1
	jp   nz, $e080                                   ; $4c96: $c2 $80 $e0

	add  hl, bc                                      ; $4c99: $09
	ld   [hl], b                                     ; $4c9a: $70
	ldh  a, [$b8]                                    ; $4c9b: $f0 $b8
	ld   a, b                                        ; $4c9d: $78
	ld   e, h                                        ; $4c9e: $5c
	inc  a                                           ; $4c9f: $3c
	dec  h                                           ; $4ca0: $25
	dec  e                                           ; $4ca1: $1d
	rla                                              ; $4ca2: $17
	rrca                                             ; $4ca3: $0f
	add  b                                           ; $4ca4: $80
	inc  bc                                          ; $4ca5: $03
	add  b                                           ; $4ca6: $80
	dec  bc                                          ; $4ca7: $0b
	add  b                                           ; $4ca8: $80
	dec  d                                           ; $4ca9: $15
	add  b                                           ; $4caa: $80
	ld   a, [bc]                                     ; $4cab: $0a
	add  b                                           ; $4cac: $80
	ld   e, $13                                      ; $4cad: $1e $13
	dec  de                                          ; $4caf: $1b
	rra                                              ; $4cb0: $1f
	ldh  a, [rIE]                                    ; $4cb1: $f0 $ff
	xor  e                                           ; $4cb3: $ab
	rst  $38                                         ; $4cb4: $ff
	ld   [de], a                                     ; $4cb5: $12
	ldh  a, [c]                                      ; $4cb6: $f2
	dec  de                                          ; $4cb7: $1b
	cp   a                                           ; $4cb8: $bf
	ei                                               ; $4cb9: $fb
	rst  $38                                         ; $4cba: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cbb: $cf
	rst  JumpTable                                         ; $4cbc: $df
	ld   b, l                                        ; $4cbd: $45
	ld   c, l                                        ; $4cbe: $4d
	ld   [bc], a                                     ; $4cbf: $02
	cp   $fb                                         ; $4cc0: $fe $fb
	rst  $38                                         ; $4cc2: $ff
	add  b                                           ; $4cc3: $80
	cp   $80                                         ; $4cc4: $fe $80
	xor  c                                           ; $4cc6: $a9
	jr   jr_072_4c54                                 ; $4cc7: $18 $8b

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cc9: $cf
	add  a                                           ; $4cca: $87
	rst  $20                                         ; $4ccb: $e7
	rst  JumpTable                                         ; $4ccc: $df
	rst  $38                                         ; $4ccd: $ff
	ld   hl, sp-$21                                  ; $4cce: $f8 $df
	ld   c, l                                        ; $4cd0: $4d
	ld   e, a                                        ; $4cd1: $5f
	adc  l                                           ; $4cd2: $8d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cd3: $cf
	and  l                                           ; $4cd4: $a5
	db   $ed                                         ; $4cd5: $ed
	inc  a                                           ; $4cd6: $3c
	ld   b, $cb                                      ; $4cd7: $06 $cb
	dec  a                                           ; $4cd9: $3d
	cp   e                                           ; $4cda: $bb
	ld   a, [hl-]                                    ; $4cdb: $3a
	ld   b, [hl]                                     ; $4cdc: $46
	inc  c                                           ; $4cdd: $0c
	inc  l                                           ; $4cde: $2c
	ld   [$8018], sp                                 ; $4cdf: $08 $18 $80
	or   b                                           ; $4ce2: $b0
	ld   [bc], a                                     ; $4ce3: $02
	ldh  [$c0], a                                    ; $4ce4: $e0 $c0
	rst  JumpTable                                         ; $4ce6: $df
	add  b                                           ; $4ce7: $80
	nop                                              ; $4ce8: $00
	ld   bc, $fd02                                   ; $4ce9: $01 $02 $fd
	add  b                                           ; $4cec: $80
	ld   a, [$f480]                                  ; $4ced: $fa $80 $f4
	add  b                                           ; $4cf0: $80
	xor  b                                           ; $4cf1: $a8
	ld   hl, $5651                                   ; $4cf2: $21 $51 $56
	add  c                                           ; $4cf5: $81
	cp   c                                           ; $4cf6: $b9
	ld   h, $e7                                      ; $4cf7: $26 $e7
	ld   b, c                                        ; $4cf9: $41
	ld   b, a                                        ; $4cfa: $47
	cp   h                                           ; $4cfb: $bc
	ld   e, h                                        ; $4cfc: $5c
	inc  b                                           ; $4cfd: $04
	inc  c                                           ; $4cfe: $0c
	ld   a, [bc]                                     ; $4cff: $0a
	ld   a, [hl+]                                    ; $4d00: $2a
	sbc  b                                           ; $4d01: $98
	ret  c                                           ; $4d02: $d8

	or   a                                           ; $4d03: $b7
	ld   a, $fa                                      ; $4d04: $3e $fa
	db   $fc                                         ; $4d06: $fc
	db   $10                                         ; $4d07: $10
	ldh  a, [$dd]                                    ; $4d08: $f0 $dd
	db   $fd                                         ; $4d0a: $fd
	inc  sp                                          ; $4d0b: $33
	rrca                                             ; $4d0c: $0f
	db   $10                                         ; $4d0d: $10
	inc  e                                           ; $4d0e: $1c
	inc  sp                                          ; $4d0f: $33
	inc  hl                                          ; $4d10: $23
	rst  JumpTable                                         ; $4d11: $df
	cp   a                                           ; $4d12: $bf
	ld   l, d                                        ; $4d13: $6a
	ld   [$7980], a                                  ; $4d14: $ea $80 $79
	dec  d                                           ; $4d17: $15
	add  h                                           ; $4d18: $84
	db   $fc                                         ; $4d19: $fc
	ld   [hl], h                                     ; $4d1a: $74
	db   $fc                                         ; $4d1b: $fc
	add  d                                           ; $4d1c: $82
	ld   a, [hl]                                     ; $4d1d: $7e
	jp   hl                                          ; $4d1e: $e9


	db   $fd                                         ; $4d1f: $fd
	ret  c                                           ; $4d20: $d8

	ldh  a, [$bd]                                    ; $4d21: $f0 $bd
	call $9ede                                       ; $4d23: $cd $de $9e
	dec  a                                           ; $4d26: $3d
	ccf                                              ; $4d27: $3f
	jr   c, jr_072_4d68                              ; $4d28: $38 $3e

	dec  h                                           ; $4d2a: $25
	add  hl, sp                                      ; $4d2b: $39
	or   [hl]                                        ; $4d2c: $b6
	xor  [hl]                                        ; $4d2d: $ae
	add  b                                           ; $4d2e: $80
	ld   b, h                                        ; $4d2f: $44
	add  b                                           ; $4d30: $80
	and  c                                           ; $4d31: $a1
	add  b                                           ; $4d32: $80
	ld   b, c                                        ; $4d33: $41
	add  b                                           ; $4d34: $80
	and  e                                           ; $4d35: $a3
	add  b                                           ; $4d36: $80
	ld   b, l                                        ; $4d37: $45
	add  b                                           ; $4d38: $80
	adc  e                                           ; $4d39: $8b
	add  b                                           ; $4d3a: $80
	rla                                              ; $4d3b: $17
	add  b                                           ; $4d3c: $80
	jp   $c180                                       ; $4d3d: $c3 $80 $c1


	add  b                                           ; $4d40: $80
	jp   $c082                                       ; $4d41: $c3 $82 $c0


	add  b                                           ; $4d44: $80
	add  b                                           ; $4d45: $80
	add  b                                           ; $4d46: $80
	inc  b                                           ; $4d47: $04
	dec  bc                                          ; $4d48: $0b
	ld   d, l                                        ; $4d49: $55
	ld   a, a                                        ; $4d4a: $7f
	ld   a, $f7                                      ; $4d4b: $3e $f7
	dec  hl                                          ; $4d4d: $2b
	rst  $38                                         ; $4d4e: $ff
	add  hl, sp                                      ; $4d4f: $39
	rst  $38                                         ; $4d50: $ff
	pop  bc                                          ; $4d51: $c1
	ld   [hl], e                                     ; $4d52: $73
	ld   [hl], b                                     ; $4d53: $70
	inc  sp                                          ; $4d54: $33
	add  b                                           ; $4d55: $80
	db   $10                                         ; $4d56: $10
	add  b                                           ; $4d57: $80
	ld   b, b                                        ; $4d58: $40
	rlca                                             ; $4d59: $07
	add  d                                           ; $4d5a: $82
	add  e                                           ; $4d5b: $83

jr_072_4d5c:
	jr   nc, jr_072_4d5c                             ; $4d5c: $30 $fe

	xor  [hl]                                        ; $4d5e: $ae
	cp   $19                                         ; $4d5f: $fe $19
	sbc  c                                           ; $4d61: $99
	add  b                                           ; $4d62: $80
	dec  de                                          ; $4d63: $1b
	dec  e                                           ; $4d64: $1d
	ld   a, [bc]                                     ; $4d65: $0a
	ld   a, [de]                                     ; $4d66: $1a
	rla                                              ; $4d67: $17

jr_072_4d68:
	rlca                                             ; $4d68: $07
	jr   z, @+$41                                    ; $4d69: $28 $3f

	ld   a, b                                        ; $4d6b: $78
	adc  a                                           ; $4d6c: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d6d: $cf
	call $9988                                       ; $4d6e: $cd $88 $99
	ld   hl, $8031                                   ; $4d71: $21 $31 $80
	db   $e4                                         ; $4d74: $e4
	db   $fc                                         ; $4d75: $fc
	ld   a, h                                        ; $4d76: $7c
	nop                                              ; $4d77: $00
	ld   hl, sp-$80                                  ; $4d78: $f8 $80
	ld   a, b                                        ; $4d7a: $78
	inc  bc                                          ; $4d7b: $03

jr_072_4d7c:
	rst  $38                                         ; $4d7c: $ff
	ld   d, $0f                                      ; $4d7d: $16 $0f
	ld   [$0a0f], sp                                 ; $4d7f: $08 $0f $0a
	rrca                                             ; $4d82: $0f
	add  b                                           ; $4d83: $80
	dec  b                                           ; $4d84: $05
	add  b                                           ; $4d85: $80
	nop                                              ; $4d86: $00
	add  b                                           ; $4d87: $80
	ld   [$0415], sp                                 ; $4d88: $08 $15 $04
	inc  c                                           ; $4d8b: $0c
	inc  bc                                          ; $4d8c: $03
	rlca                                             ; $4d8d: $07
	ld   [hl], e                                     ; $4d8e: $73
	add  b                                           ; $4d8f: $80
	ld   h, b                                        ; $4d90: $60
	ldh  [$88], a                                    ; $4d91: $e0 $88
	ld   hl, sp+$50                                  ; $4d93: $f8 $50
	ld   e, h                                        ; $4d95: $5c
	jr   jr_072_4db6                                 ; $4d96: $18 $1e

	inc  [hl]                                        ; $4d98: $34
	dec  a                                           ; $4d99: $3d
	ld   h, d                                        ; $4d9a: $62
	ld   [hl], d                                     ; $4d9b: $72
	jp   nz, $c0e1                                   ; $4d9c: $c2 $e1 $c0

	nop                                              ; $4d9f: $00
	add  b                                           ; $4da0: $80
	ld   bc, $0780                                   ; $4da1: $01 $80 $07

jr_072_4da4:
	inc  bc                                          ; $4da4: $03
	ld   c, $0f                                      ; $4da5: $0e $0f
	nop                                              ; $4da7: $00
	ld   bc, $0280                                   ; $4da8: $01 $80 $02
	add  d                                           ; $4dab: $82
	add  e                                           ; $4dac: $83
	rlca                                             ; $4dad: $07
	ld   h, a                                        ; $4dae: $67
	ld   l, b                                        ; $4daf: $68
	db   $dd                                         ; $4db0: $dd
	db   $d3                                         ; $4db1: $d3
	ld   d, c                                        ; $4db2: $51
	ret  nc                                          ; $4db3: $d0

	ld   e, l                                        ; $4db4: $5d
	db   $dd                                         ; $4db5: $dd

jr_072_4db6:
	add  b                                           ; $4db6: $80
	and  [hl]                                        ; $4db7: $a6
	add  b                                           ; $4db8: $80
	ld   a, e                                        ; $4db9: $7b
	dec  c                                           ; $4dba: $0d
	ld   [hl], b                                     ; $4dbb: $70
	ld   [hl], a                                     ; $4dbc: $77
	ld   [hl], e                                     ; $4dbd: $73
	ld   [hl], a                                     ; $4dbe: $77
	ld   a, [$2806]                                  ; $4dbf: $fa $06 $28
	scf                                              ; $4dc2: $37
	db   $fc                                         ; $4dc3: $fc
	rra                                              ; $4dc4: $1f
	add  e                                           ; $4dc5: $83
	add  a                                           ; $4dc6: $87
	ld   b, b                                        ; $4dc7: $40
	ld   b, a                                        ; $4dc8: $47
	add  b                                           ; $4dc9: $80
	di                                               ; $4dca: $f3
	dec  c                                           ; $4dcb: $0d
	inc  bc                                          ; $4dcc: $03
	ei                                               ; $4dcd: $fb
	push af                                          ; $4dce: $f5

Jump_072_4dcf:
	db   $fd                                         ; $4dcf: $fd
	inc  c                                           ; $4dd0: $0c
	inc  bc                                          ; $4dd1: $03
	ld   sp, hl                                      ; $4dd2: $f9
	cp   $0e                                         ; $4dd3: $fe $0e
	ld   a, $0f                                      ; $4dd5: $3e $0f
	daa                                              ; $4dd7: $27
	ld   h, $c6                                      ; $4dd8: $26 $c6
	add  b                                           ; $4dda: $80
	sub  $80                                         ; $4ddb: $d6 $80
	sbc  $80                                         ; $4ddd: $de $80
	sub  h                                           ; $4ddf: $94
	rlca                                             ; $4de0: $07
	ld   a, [hl]                                     ; $4de1: $7e
	pop  hl                                          ; $4de2: $e1
	xor  l                                           ; $4de3: $ad
	ccf                                              ; $4de4: $3f
	xor  $e7                                         ; $4de5: $ee $e7
	ld   h, h                                        ; $4de7: $64
	ld   h, b                                        ; $4de8: $60
	add  b                                           ; $4de9: $80
	ld   bc, $0080                                   ; $4dea: $01 $80 $00
	add  b                                           ; $4ded: $80
	jr   c, jr_072_4df2                              ; $4dee: $38 $02

	add  $fe                                         ; $4df0: $c6 $fe

jr_072_4df2:
	ld   b, a                                        ; $4df2: $47
	add  b                                           ; $4df3: $80
	ldh  [rSC], a                                    ; $4df4: $e0 $02
	rst  $38                                         ; $4df6: $ff
	ld   b, l                                        ; $4df7: $45
	push bc                                          ; $4df8: $c5
	add  b                                           ; $4df9: $80
	jr   jr_072_4d7c                                 ; $4dfa: $18 $80

	cp   a                                           ; $4dfc: $bf
	add  b                                           ; $4dfd: $80
	ccf                                              ; $4dfe: $3f
	add  d                                           ; $4dff: $82
	nop                                              ; $4e00: $00

Call_072_4e01:
	add  b                                           ; $4e01: $80
	ld   sp, hl                                      ; $4e02: $f9
	add  b                                           ; $4e03: $80
	db   $db                                         ; $4e04: $db
	add  b                                           ; $4e05: $80
	and  a                                           ; $4e06: $a7
	add  b                                           ; $4e07: $80
	ld   b, b                                        ; $4e08: $40
	add  b                                           ; $4e09: $80
	add  b                                           ; $4e0a: $80
	nop                                              ; $4e0b: $00
	nop                                              ; $4e0c: $00
	add  c                                           ; $4e0d: $81
	rlca                                             ; $4e0e: $07
	add  b                                           ; $4e0f: $80
	ld   [bc], a                                     ; $4e10: $02
	ld   bc, $f3f4                                   ; $4e11: $01 $f4 $f3
	add  b                                           ; $4e14: $80

jr_072_4e15:
	rst  $30                                         ; $4e15: $f7
	add  b                                           ; $4e16: $80
	adc  $83                                         ; $4e17: $ce $83
	nop                                              ; $4e19: $00
	add  c                                           ; $4e1a: $81
	rst  $38                                         ; $4e1b: $ff
	add  b                                           ; $4e1c: $80
	xor  d                                           ; $4e1d: $aa
	ld   bc, $02fd                                   ; $4e1e: $01 $fd $02
	add  b                                           ; $4e21: $80
	jr   jr_072_4da4                                 ; $4e22: $18 $80

	ld   bc, $0380                                   ; $4e24: $01 $80 $03
	add  b                                           ; $4e27: $80
	rlca                                             ; $4e28: $07
	ld   bc, $cf0f                                   ; $4e29: $01 $0f $cf
	add  b                                           ; $4e2c: $80
	add  $09                                         ; $4e2d: $c6 $09
	add  b                                           ; $4e2f: $80
	and  b                                           ; $4e30: $a0
	db   $eb                                         ; $4e31: $eb
	dec  bc                                          ; $4e32: $0b
	cp   h                                           ; $4e33: $bc
	cp   a                                           ; $4e34: $bf
	ld   d, e                                        ; $4e35: $53
	ld   e, a                                        ; $4e36: $5f
	and  b                                           ; $4e37: $a0
	xor  a                                           ; $4e38: $af
	add  b                                           ; $4e39: $80
	ld   b, b                                        ; $4e3a: $40
	add  b                                           ; $4e3b: $80
	add  c                                           ; $4e3c: $81
	add  d                                           ; $4e3d: $82
	nop                                              ; $4e3e: $00
	ld   [bc], a                                     ; $4e3f: $02
	ld   [bc], a                                     ; $4e40: $02
	cp   $fc                                         ; $4e41: $fe $fc
	add  b                                           ; $4e43: $80
	ld   hl, sp+$02                                  ; $4e44: $f8 $02
	ldh  [$60], a                                    ; $4e46: $e0 $60
	add  b                                           ; $4e48: $80
	add  h                                           ; $4e49: $84
	nop                                              ; $4e4a: $00
	rra                                              ; $4e4b: $1f
	ld   [$070f], sp                                 ; $4e4c: $08 $0f $07
	rrca                                             ; $4e4f: $0f
	ld   de, $7d1f                                   ; $4e50: $11 $1f $7d
	ld   a, h                                        ; $4e53: $7c
	add  c                                           ; $4e54: $81
	rst  $38                                         ; $4e55: $ff
	ld   e, [hl]                                     ; $4e56: $5e
	ccf                                              ; $4e57: $3f
	inc  b                                           ; $4e58: $04
	inc  e                                           ; $4e59: $1c
	inc  b                                           ; $4e5a: $04
	ld   h, e                                        ; $4e5b: $63
	xor  b                                           ; $4e5c: $a8
	ld   hl, sp+$71                                  ; $4e5d: $f8 $71
	cp   a                                           ; $4e5f: $bf
	push de                                          ; $4e60: $d5
	rst  $38                                         ; $4e61: $ff
	ld   b, l                                        ; $4e62: $45
	rst  $38                                         ; $4e63: $ff
	ld   l, c                                        ; $4e64: $69
	rra                                              ; $4e65: $1f
	ld   e, a                                        ; $4e66: $5f
	rst  ToBoot                                         ; $4e67: $c7
	halt                                             ; $4e68: $76
	ld   [hl], $03                                   ; $4e69: $36 $03
	jp   $0380                                       ; $4e6b: $c3 $80 $03


	add  hl, bc                                      ; $4e6e: $09
	ld   e, l                                        ; $4e6f: $5d
	rst  JumpTable                                         ; $4e70: $df
	pop  hl                                          ; $4e71: $e1
	db   $e3                                         ; $4e72: $e3
	ld   a, d                                        ; $4e73: $7a
	cp   $cc                                         ; $4e74: $fe $cc
	ld   hl, sp+$30                                  ; $4e76: $f8 $30
	nop                                              ; $4e78: $00
	add  b                                           ; $4e79: $80
	ret  nz                                          ; $4e7a: $c0

	add  b                                           ; $4e7b: $80
	add  c                                           ; $4e7c: $81
	add  b                                           ; $4e7d: $80
	ld   bc, $022e                                   ; $4e7e: $01 $2e $02
	add  [hl]                                        ; $4e81: $86
	nop                                              ; $4e82: $00
	nop                                              ; $4e83: $00
	rrca                                             ; $4e84: $0f
	add  c                                           ; $4e85: $81
	nop                                              ; $4e86: $00
	add  b                                           ; $4e87: $80
	ld   [$0080], sp                                 ; $4e88: $08 $80 $00
	nop                                              ; $4e8b: $00
	rrca                                             ; $4e8c: $0f
	add  l                                           ; $4e8d: $85
	nop                                              ; $4e8e: $00
	ld   bc, $3cc3                                   ; $4e8f: $01 $c3 $3c
	add  d                                           ; $4e92: $82
	jr   c, jr_072_4e15                              ; $4e93: $38 $80

	ld   a, [hl-]                                    ; $4e95: $3a
	nop                                              ; $4e96: $00
	rst  $38                                         ; $4e97: $ff
	add  l                                           ; $4e98: $85
	nop                                              ; $4e99: $00
	ld   bc, $718e                                   ; $4e9a: $01 $8e $71
	add  b                                           ; $4e9d: $80
	inc  sp                                          ; $4e9e: $33
	nop                                              ; $4e9f: $00
	ld   d, e                                        ; $4ea0: $53
	add  c                                           ; $4ea1: $81
	ld   [hl], e                                     ; $4ea2: $73
	nop                                              ; $4ea3: $00
	rst  JumpTable                                         ; $4ea4: $df
	add  l                                           ; $4ea5: $85
	nop                                              ; $4ea6: $00
	ld   bc, $e8d7                                   ; $4ea7: $01 $d7 $e8
	add  b                                           ; $4eaa: $80
	ld   [$e880], a                                  ; $4eab: $ea $80 $e8
	add  b                                           ; $4eae: $80
	ld   [$3f00], a                                  ; $4eaf: $ea $00 $3f
	add  l                                           ; $4eb2: $85
	nop                                              ; $4eb3: $00
	ld   bc, $e55a                                   ; $4eb4: $01 $5a $e5
	add  b                                           ; $4eb7: $80
	rst  $20                                         ; $4eb8: $e7
	add  b                                           ; $4eb9: $80
	push hl                                          ; $4eba: $e5
	add  b                                           ; $4ebb: $80
	db   $e3                                         ; $4ebc: $e3
	nop                                              ; $4ebd: $00
	cp   a                                           ; $4ebe: $bf
	add  l                                           ; $4ebf: $85
	nop                                              ; $4ec0: $00
	nop                                              ; $4ec1: $00
	add  hl, de                                      ; $4ec2: $19
	add  e                                           ; $4ec3: $83
	cp   $02                                         ; $4ec4: $fe $02
	db   $e4                                         ; $4ec6: $e4
	db   $fc                                         ; $4ec7: $fc
	rst  $38                                         ; $4ec8: $ff
	add  l                                           ; $4ec9: $85
	nop                                              ; $4eca: $00
	ld   bc, $51ae                                   ; $4ecb: $01 $ae $51
	add  b                                           ; $4ece: $80
	adc  b                                           ; $4ecf: $88
	add  b                                           ; $4ed0: $80
	ld   d, h                                        ; $4ed1: $54
	add  b                                           ; $4ed2: $80
	ld   [$ff00], sp                                 ; $4ed3: $08 $00 $ff
	add  l                                           ; $4ed6: $85
	nop                                              ; $4ed7: $00
	ld   bc, $11ee                                   ; $4ed8: $01 $ee $11
	add  b                                           ; $4edb: $80
	xor  b                                           ; $4edc: $a8
	add  b                                           ; $4edd: $80
	ld   d, h                                        ; $4ede: $54
	add  b                                           ; $4edf: $80
	xor  d                                           ; $4ee0: $aa
	nop                                              ; $4ee1: $00
	rst  $38                                         ; $4ee2: $ff
	add  l                                           ; $4ee3: $85
	nop                                              ; $4ee4: $00
	inc  bc                                          ; $4ee5: $03
	xor  a                                           ; $4ee6: $af
	ld   e, b                                        ; $4ee7: $58
	ld   a, $36                                      ; $4ee8: $3e $36
	add  b                                           ; $4eea: $80
	ld   c, [hl]                                     ; $4eeb: $4e
	ld   [bc], a                                     ; $4eec: $02
	cp   d                                           ; $4eed: $ba
	cp   [hl]                                        ; $4eee: $be
	ei                                               ; $4eef: $fb
	add  l                                           ; $4ef0: $85
	nop                                              ; $4ef1: $00
	ld   [bc], a                                     ; $4ef2: $02
	rrca                                             ; $4ef3: $0f
	ldh  a, [$90]                                    ; $4ef4: $f0 $90
	add  c                                           ; $4ef6: $81
	ldh  a, [rSC]                                    ; $4ef7: $f0 $02
	db   $10                                         ; $4ef9: $10
	ld   [hl], b                                     ; $4efa: $70
	rst  $38                                         ; $4efb: $ff
	add  l                                           ; $4efc: $85
	nop                                              ; $4efd: $00
	ld   [$00ff], sp                                 ; $4efe: $08 $ff $00
	ld   bc, $3c3f                                   ; $4f01: $01 $3f $3c
	ccf                                              ; $4f04: $3f
	jr   c, jr_072_4f46                              ; $4f05: $38 $3f

	push bc                                          ; $4f07: $c5
	add  l                                           ; $4f08: $85
	nop                                              ; $4f09: $00
	ld   bc, $f708                                   ; $4f0a: $01 $08 $f7
	add  b                                           ; $4f0d: $80
	ld   a, e                                        ; $4f0e: $7b
	add  b                                           ; $4f0f: $80
	ld   a, h                                        ; $4f10: $7c
	add  b                                           ; $4f11: $80
	cp   [hl]                                        ; $4f12: $be
	nop                                              ; $4f13: $00
	rst  $38                                         ; $4f14: $ff
	add  l                                           ; $4f15: $85
	nop                                              ; $4f16: $00
	ld   bc, $f50a                                   ; $4f17: $01 $0a $f5
	add  b                                           ; $4f1a: $80
	ld   [$d580], a                                  ; $4f1b: $ea $80 $d5
	add  b                                           ; $4f1e: $80
	ld   a, [bc]                                     ; $4f1f: $0a
	nop                                              ; $4f20: $00
	rst  $38                                         ; $4f21: $ff
	add  l                                           ; $4f22: $85
	nop                                              ; $4f23: $00
	ld   bc, $01fe                                   ; $4f24: $01 $fe $01
	add  b                                           ; $4f27: $80
	and  b                                           ; $4f28: $a0
	add  b                                           ; $4f29: $80
	dec  e                                           ; $4f2a: $1d
	add  b                                           ; $4f2b: $80
	add  e                                           ; $4f2c: $83
	nop                                              ; $4f2d: $00
	rst  $38                                         ; $4f2e: $ff
	add  l                                           ; $4f2f: $85
	nop                                              ; $4f30: $00
	ld   [$f30f], sp                                 ; $4f31: $08 $0f $f3
	ld   [hl-], a                                    ; $4f34: $32
	scf                                              ; $4f35: $37
	ldh  [$ee], a                                    ; $4f36: $e0 $ee
	sub  h                                           ; $4f38: $94
	cp   h                                           ; $4f39: $bc
	rst  JumpTable                                         ; $4f3a: $df
	add  l                                           ; $4f3b: $85
	nop                                              ; $4f3c: $00
	add  hl, bc                                      ; $4f3d: $09
	ccf                                              ; $4f3e: $3f
	ret  nz                                          ; $4f3f: $c0

	add  b                                           ; $4f40: $80
	add  c                                           ; $4f41: $81

jr_072_4f42:
	nop                                              ; $4f42: $00
	inc  bc                                          ; $4f43: $03
	ld   b, $04                                      ; $4f44: $06 $04

jr_072_4f46:
	db   $fc                                         ; $4f46: $fc
	inc  c                                           ; $4f47: $0c
	add  b                                           ; $4f48: $80
	nop                                              ; $4f49: $00
	add  b                                           ; $4f4a: $80
	ld   c, $82                                      ; $4f4b: $0e $82
	nop                                              ; $4f4d: $00
	add  b                                           ; $4f4e: $80
	rrca                                             ; $4f4f: $0f
	dec  b                                           ; $4f50: $05
	rlca                                             ; $4f51: $07
	rrca                                             ; $4f52: $0f
	rlca                                             ; $4f53: $07
	rrca                                             ; $4f54: $0f
	srl  e                                           ; $4f55: $cb $3b
	add  b                                           ; $4f57: $80
	jr   c, @-$7e                                    ; $4f58: $38 $80

	add  hl, sp                                      ; $4f5a: $39
	inc  c                                           ; $4f5b: $0c
	ld   a, [hl-]                                    ; $4f5c: $3a
	dec  sp                                          ; $4f5d: $3b

Jump_072_4f5e:
	inc  de                                          ; $4f5e: $13
	dec  sp                                          ; $4f5f: $3b
	add  c                                           ; $4f60: $81
	cp   b                                           ; $4f61: $b8
	add  b                                           ; $4f62: $80
	cp   b                                           ; $4f63: $b8
	add  b                                           ; $4f64: $80
	cp   h                                           ; $4f65: $bc
	ld   b, a                                        ; $4f66: $47
	ld   [hl], e                                     ; $4f67: $73
	inc  hl                                          ; $4f68: $23
	add  b                                           ; $4f69: $80
	inc  bc                                          ; $4f6a: $03
	add  b                                           ; $4f6b: $80
	jp   $8302                                       ; $4f6c: $c3 $02 $83


	add  b                                           ; $4f6f: $80
	nop                                              ; $4f70: $00
	add  b                                           ; $4f71: $80
	inc  bc                                          ; $4f72: $03
	add  b                                           ; $4f73: $80
	dec  h                                           ; $4f74: $25
	inc  bc                                          ; $4f75: $03
	ld   b, e                                        ; $4f76: $43
	ld   h, e                                        ; $4f77: $63
	ld   [$80e8], sp                                 ; $4f78: $08 $e8 $80
	ld   [$e280], a                                  ; $4f7b: $ea $80 $e2
	ld   bc, $ec20                                   ; $4f7e: $01 $20 $ec
	add  b                                           ; $4f81: $80
	inc  c                                           ; $4f82: $0c
	ld   [bc], a                                     ; $4f83: $02
	call z, $80c0                                    ; $4f84: $cc $c0 $80
	add  c                                           ; $4f87: $81
	or   [hl]                                        ; $4f88: $b6
	nop                                              ; $4f89: $00
	sub  [hl]                                        ; $4f8a: $96
	add  d                                           ; $4f8b: $82
	db   $ec                                         ; $4f8c: $ec
	add  c                                           ; $4f8d: $81
	ldh  [rTIMA], a                                  ; $4f8e: $e0 $05
	ld   b, b                                        ; $4f90: $40
	ld   b, $a6                                      ; $4f91: $06 $a6
	and  $06                                         ; $4f93: $e6 $06
	ld   b, b                                        ; $4f95: $40
	add  b                                           ; $4f96: $80
	jr   @-$7e                                       ; $4f97: $18 $80

	inc  bc                                          ; $4f99: $03
	add  b                                           ; $4f9a: $80
	db   $10                                         ; $4f9b: $10
	rlca                                             ; $4f9c: $07
	inc  b                                           ; $4f9d: $04
	ld   h, h                                        ; $4f9e: $64
	ld   [hl], d                                     ; $4f9f: $72
	jp   nc, $94d4                                   ; $4fa0: $d2 $d4 $94

	and  h                                           ; $4fa3: $a4
	inc  h                                           ; $4fa4: $24
	add  b                                           ; $4fa5: $80
	ld   d, h                                        ; $4fa6: $54
	add  b                                           ; $4fa7: $80
	inc  [hl]                                        ; $4fa8: $34
	add  b                                           ; $4fa9: $80
	inc  b                                           ; $4faa: $04
	add  b                                           ; $4fab: $80
	xor  d                                           ; $4fac: $aa
	add  b                                           ; $4fad: $80
	ld   d, l                                        ; $4fae: $55
	add  b                                           ; $4faf: $80
	and  d                                           ; $4fb0: $a2
	add  b                                           ; $4fb1: $80
	ld   e, e                                        ; $4fb2: $5b
	add  b                                           ; $4fb3: $80
	ld   a, e                                        ; $4fb4: $7b
	add  b                                           ; $4fb5: $80
	ld   a, l                                        ; $4fb6: $7d
	add  b                                           ; $4fb7: $80
	ld   a, [hl]                                     ; $4fb8: $7e
	add  b                                           ; $4fb9: $80
	ld   d, h                                        ; $4fba: $54
	add  b                                           ; $4fbb: $80
	xor  d                                           ; $4fbc: $aa
	add  b                                           ; $4fbd: $80
	ld   d, l                                        ; $4fbe: $55
	add  b                                           ; $4fbf: $80
	jr   z, jr_072_4f42                              ; $4fc0: $28 $80

	cp   e                                           ; $4fc2: $bb
	ld   [$d7d1], sp                                 ; $4fc3: $08 $d1 $d7
	db   $e4                                         ; $4fc6: $e4
	xor  $cc                                         ; $4fc7: $ee $cc
	ret  c                                           ; $4fc9: $d8

	ld   l, d                                        ; $4fca: $6a
	ld   a, [hl]                                     ; $4fcb: $7e

jr_072_4fcc:
	jp   z, $fe81                                    ; $4fcc: $ca $81 $fe

	inc  bc                                          ; $4fcf: $03
	inc  b                                           ; $4fd0: $04
	inc  a                                           ; $4fd1: $3c
	ret  c                                           ; $4fd2: $d8

	reti                                             ; $4fd3: $d9


	add  b                                           ; $4fd4: $80
	ret  nc                                          ; $4fd5: $d0

	add  b                                           ; $4fd6: $80
	nop                                              ; $4fd7: $00
	add  b                                           ; $4fd8: $80
	ld   [bc], a                                     ; $4fd9: $02
	ld   bc, $7051                                   ; $4fda: $01 $51 $70
	add  b                                           ; $4fdd: $80
	ld   h, d                                        ; $4fde: $62
	dec  b                                           ; $4fdf: $05
	dec  h                                           ; $4fe0: $25
	ld   h, l                                        ; $4fe1: $65
	ld   c, d                                        ; $4fe2: $4a
	ld   [$5717], a                                  ; $4fe3: $ea $17 $57
	add  b                                           ; $4fe6: $80
	xor  a                                           ; $4fe7: $af
	add  b                                           ; $4fe8: $80
	sbc  a                                           ; $4fe9: $9f
	add  b                                           ; $4fea: $80

jr_072_4feb:
	xor  a                                           ; $4feb: $af
	dec  b                                           ; $4fec: $05
	adc  e                                           ; $4fed: $8b
	ccf                                              ; $4fee: $3f
	or   e                                           ; $4fef: $b3
	cp   a                                           ; $4ff0: $bf
	ld   l, l                                        ; $4ff1: $6d
	ld   d, l                                        ; $4ff2: $55
	add  b                                           ; $4ff3: $80
	xor  a                                           ; $4ff4: $af
	nop                                              ; $4ff5: $00
	ret  nc                                          ; $4ff6: $d0

	add  b                                           ; $4ff7: $80
	rst  JumpTable                                         ; $4ff8: $df
	ld   b, $dc                                      ; $4ff9: $06 $dc
	sub  l                                           ; $4ffb: $95
	reti                                             ; $4ffc: $d9


	ld   a, [bc]                                     ; $4ffd: $0a
	ld   [$c262], a                                  ; $4ffe: $ea $62 $c2
	add  b                                           ; $5001: $80
	cp   $80                                         ; $5002: $fe $80
	nop                                              ; $5004: $00
	add  b                                           ; $5005: $80
	add  sp, $09                                     ; $5006: $e8 $09
	ccf                                              ; $5008: $3f
	rst  $38                                         ; $5009: $ff
	ld   c, $fe                                      ; $500a: $0e $fe
	ld   d, b                                        ; $500c: $50
	ld   h, e                                        ; $500d: $63
	jp   $7adf                                       ; $500e: $c3 $df $7a


	ld   h, l                                        ; $5011: $65
	add  b                                           ; $5012: $80
	ld   l, d                                        ; $5013: $6a
	add  b                                           ; $5014: $80
	ld   [hl], a                                     ; $5015: $77
	add  b                                           ; $5016: $80
	ld   [hl], $80                                   ; $5017: $36 $80
	db   $10                                         ; $5019: $10
	dec  b                                           ; $501a: $05

jr_072_501b:
	dec  bc                                          ; $501b: $0b

jr_072_501c:
	rrca                                             ; $501c: $0f
	jr   jr_072_501b                                 ; $501d: $18 $fc

	nop                                              ; $501f: $00
	ldh  [$80], a                                    ; $5020: $e0 $80
	ld   bc, $0009                                   ; $5022: $01 $09 $00
	inc  bc                                          ; $5025: $03
	ld   b, b                                        ; $5026: $40
	ld   c, a                                        ; $5027: $4f
	jp   nz, $00fe                                   ; $5028: $c2 $fe $00

	ldh  a, [rLCDC]                                  ; $502b: $f0 $40
	add  b                                           ; $502d: $80
	add  b                                           ; $502e: $80
	nop                                              ; $502f: $00
	add  b                                           ; $5030: $80
	ld   bc, $3003                                   ; $5031: $01 $03 $30
	ldh  a, [rAUD4LEN]                               ; $5034: $f0 $20
	ldh  [$80], a                                    ; $5036: $e0 $80
	add  b                                           ; $5038: $80
	add  b                                           ; $5039: $80
	inc  bc                                          ; $503a: $03
	add  b                                           ; $503b: $80
	nop                                              ; $503c: $00
	add  b                                           ; $503d: $80
	ld   [bc], a                                     ; $503e: $02
	add  c                                           ; $503f: $81
	ld   [hl-], a                                    ; $5040: $32
	ld   [bc], a                                     ; $5041: $02
	ldh  a, [c]                                      ; $5042: $f2
	ret  z                                           ; $5043: $c8

	ld   [$3080], sp                                 ; $5044: $08 $80 $30
	add  b                                           ; $5047: $80
	ret  nc                                          ; $5048: $d0

	add  d                                           ; $5049: $82
	jr   jr_072_4fcc                                 ; $504a: $18 $80

	inc  e                                           ; $504c: $1c
	add  b                                           ; $504d: $80
	db   $10                                         ; $504e: $10
	add  b                                           ; $504f: $80
	nop                                              ; $5050: $00
	dec  d                                           ; $5051: $15
	rst  $30                                         ; $5052: $f7
	rrca                                             ; $5053: $0f
	rlca                                             ; $5054: $07
	rrca                                             ; $5055: $0f
	ld   b, $0e                                      ; $5056: $06 $0e
	ld   [$0700], sp                                 ; $5058: $08 $00 $07
	rrca                                             ; $505b: $0f
	rlca                                             ; $505c: $07
	rrca                                             ; $505d: $0f
	rlca                                             ; $505e: $07
	rrca                                             ; $505f: $0f
	rlca                                             ; $5060: $07
	rrca                                             ; $5061: $0f
	ld   [hl], c                                     ; $5062: $71
	cp   a                                           ; $5063: $bf
	cp   [hl]                                        ; $5064: $be
	cp   a                                           ; $5065: $bf
	ccf                                              ; $5066: $3f
	nop                                              ; $5067: $00
	add  [hl]                                        ; $5068: $86
	jr   nz, jr_072_4feb                             ; $5069: $20 $80

	ccf                                              ; $506b: $3f
	dec  b                                           ; $506c: $05
	adc  b                                           ; $506d: $88
	ret  z                                           ; $506e: $c8

	ld   e, l                                        ; $506f: $5d
	sbc  l                                           ; $5070: $9d
	sbc  h                                           ; $5071: $9c
	inc  e                                           ; $5072: $1c
	add  b                                           ; $5073: $80
	ld   b, c                                        ; $5074: $41
	add  b                                           ; $5075: $80
	ld   b, l                                        ; $5076: $45
	add  b                                           ; $5077: $80
	ld   b, [hl]                                     ; $5078: $46
	add  b                                           ; $5079: $80
	ld   b, b                                        ; $507a: $40
	add  b                                           ; $507b: $80
	ld   a, [hl]                                     ; $507c: $7e
	add  b                                           ; $507d: $80
	ld   b, c                                        ; $507e: $41
	add  b                                           ; $507f: $80
	ld   a, b                                        ; $5080: $78
	ld   b, $74                                      ; $5081: $06 $74
	ld   [hl], a                                     ; $5083: $77
	dec  bc                                          ; $5084: $0b
	adc  [hl]                                        ; $5085: $8e
	add  a                                           ; $5086: $87
	adc  l                                           ; $5087: $8d
	dec  c                                           ; $5088: $0d
	add  c                                           ; $5089: $81
	add  c                                           ; $508a: $81
	add  b                                           ; $508b: $80
	db   $fc                                         ; $508c: $fc
	add  b                                           ; $508d: $80
	jr   c, @-$7e                                    ; $508e: $38 $80

	jr   nc, jr_072_5092                             ; $5090: $30 $00

jr_072_5092:
	ld   [hl-], a                                    ; $5092: $32
	add  c                                           ; $5093: $81
	inc  sp                                          ; $5094: $33
	nop                                              ; $5095: $00
	ld   [hl-], a                                    ; $5096: $32
	add  c                                           ; $5097: $81
	inc  sp                                          ; $5098: $33
	add  d                                           ; $5099: $82
	jr   nc, jr_072_501c                             ; $509a: $30 $80

	ld   [hl], h                                     ; $509c: $74
	add  b                                           ; $509d: $80
	halt                                             ; $509e: $76
	add  b                                           ; $509f: $80
	ld   [hl], a                                     ; $50a0: $77
	add  d                                           ; $50a1: $82
	ld   a, e                                        ; $50a2: $7b
	add  b                                           ; $50a3: $80
	dec  a                                           ; $50a4: $3d
	add  b                                           ; $50a5: $80
	ld   e, b                                        ; $50a6: $58
	add  b                                           ; $50a7: $80
	ld   b, b                                        ; $50a8: $40
	add  h                                           ; $50a9: $84
	ld   a, a                                        ; $50aa: $7f
	add  b                                           ; $50ab: $80
	cp   [hl]                                        ; $50ac: $be
	add  b                                           ; $50ad: $80
	sbc  $01                                         ; $50ae: $de $01

jr_072_50b0:
	db   $ec                                         ; $50b0: $ec
	db   $ed                                         ; $50b1: $ed
	add  b                                           ; $50b2: $80
	push hl                                          ; $50b3: $e5

jr_072_50b4:
	add  b                                           ; $50b4: $80
	dec  b                                           ; $50b5: $05
	inc  b                                           ; $50b6: $04
	ld   bc, $3630                                   ; $50b7: $01 $30 $36
	ld   h, c                                        ; $50ba: $61
	ld   h, a                                        ; $50bb: $67
	add  b                                           ; $50bc: $80
	ld   b, a                                        ; $50bd: $47
	add  b                                           ; $50be: $80
	rst  ToBoot                                         ; $50bf: $c7
	inc  b                                           ; $50c0: $04
	add  a                                           ; $50c1: $87
	add  l                                           ; $50c2: $85
	add  d                                           ; $50c3: $82
	add  l                                           ; $50c4: $85
	dec  b                                           ; $50c5: $05
	add  b                                           ; $50c6: $80
	dec  bc                                          ; $50c7: $0b
	ld   d, $03                                      ; $50c8: $16 $03
	ld   [bc], a                                     ; $50ca: $02
	dec  c                                           ; $50cb: $0d
	db   $fc                                         ; $50cc: $fc
	xor  $ff                                         ; $50cd: $ee $ff
	reti                                             ; $50cf: $d9


	rst  $38                                         ; $50d0: $ff
	and  a                                           ; $50d1: $a7
	rst  $38                                         ; $50d2: $ff
	ld   h, b                                        ; $50d3: $60
	rst  $38                                         ; $50d4: $ff
	db   $f4                                         ; $50d5: $f4
	rst  $38                                         ; $50d6: $ff
	db   $e3                                         ; $50d7: $e3
	rst  $38                                         ; $50d8: $ff
	add  hl, bc                                      ; $50d9: $09
	sbc  a                                           ; $50da: $9f
	inc  b                                           ; $50db: $04
	rst  $38                                         ; $50dc: $ff

jr_072_50dd:
	ld   a, h                                        ; $50dd: $7c
	rst  $38                                         ; $50de: $ff
	db   $fd                                         ; $50df: $fd
	add  c                                           ; $50e0: $81
	rst  $38                                         ; $50e1: $ff
	ld   [bc], a                                     ; $50e2: $02
	ld   [bc], a                                     ; $50e3: $02
	rst  $38                                         ; $50e4: $ff
	ld   b, $81                                      ; $50e5: $06 $81
	rst  $38                                         ; $50e7: $ff
	inc  c                                           ; $50e8: $0c
	ld   e, l                                        ; $50e9: $5d
	ldh  [c], a                                      ; $50ea: $e2
	ld   b, b                                        ; $50eb: $40
	ldh  [$c0], a                                    ; $50ec: $e0 $c0
	ldh  a, [$88]                                    ; $50ee: $f0 $88
	ld   hl, sp+$1e                                  ; $50f0: $f8 $1e
	cp   $15                                         ; $50f2: $fe $15
	rst  $38                                         ; $50f4: $ff
	xor  d                                           ; $50f5: $aa
	add  c                                           ; $50f6: $81
	rst  $38                                         ; $50f7: $ff
	nop                                              ; $50f8: $00
	ld   a, a                                        ; $50f9: $7f
	add  c                                           ; $50fa: $81
	add  b                                           ; $50fb: $80
	add  d                                           ; $50fc: $82
	nop                                              ; $50fd: $00

Call_072_50fe:
	add  b                                           ; $50fe: $80
	rra                                              ; $50ff: $1f
	ld   b, $5f                                      ; $5100: $06 $5f
	rst  $38                                         ; $5102: $ff
	and  l                                           ; $5103: $a5
	rst  $38                                         ; $5104: $ff
	ld   hl, sp-$01                                  ; $5105: $f8 $ff

jr_072_5107:
	db   $fd                                         ; $5107: $fd
	add  e                                           ; $5108: $83
	nop                                              ; $5109: $00
	inc  b                                           ; $510a: $04
	ld   c, b                                        ; $510b: $48
	ld   a, b                                        ; $510c: $78
	jr   c, jr_072_5107                              ; $510d: $38 $f8

	ld   [$f883], sp                                 ; $510f: $08 $83 $f8
	add  b                                           ; $5112: $80
	add  hl, bc                                      ; $5113: $09
	add  b                                           ; $5114: $80
	ld   sp, $3201                                   ; $5115: $31 $01 $32
	inc  sp                                          ; $5118: $33
	add  b                                           ; $5119: $80
	ld   [hl], e                                     ; $511a: $73
	nop                                              ; $511b: $00
	ld   h, h                                        ; $511c: $64
	add  c                                           ; $511d: $81
	ld   h, a                                        ; $511e: $67
	add  b                                           ; $511f: $80
	rst  $20                                         ; $5120: $e7
	add  b                                           ; $5121: $80
	rst  ToBoot                                         ; $5122: $c7
	ld   bc, $f230                                   ; $5123: $01 $30 $f2
	add  b                                           ; $5126: $80
	or   $03                                         ; $5127: $f6 $03
	or   h                                           ; $5129: $b4
	db   $f4                                         ; $512a: $f4
	jr   nc, jr_072_50dd                             ; $512b: $30 $b0

	add  d                                           ; $512d: $82
	jr   nc, jr_072_50b0                             ; $512e: $30 $80

	inc  sp                                          ; $5130: $33
	add  b                                           ; $5131: $80
	jr   nc, jr_072_50b4                             ; $5132: $30 $80

	ld   b, $05                                      ; $5134: $06 $05
	ld   a, [bc]                                     ; $5136: $0a
	ld   c, $16                                      ; $5137: $0e $16
	ld   e, $33                                      ; $5139: $1e $33
	ccf                                              ; $513b: $3f
	add  d                                           ; $513c: $82
	nop                                              ; $513d: $00
	add  b                                           ; $513e: $80
	ld   hl, sp-$80                                  ; $513f: $f8 $80
	nop                                              ; $5141: $00
	ld   b, $f4                                      ; $5142: $06 $f4
	inc  c                                           ; $5144: $0c
	dec  bc                                          ; $5145: $0b
	inc  bc                                          ; $5146: $03
	rlca                                             ; $5147: $07
	rrca                                             ; $5148: $0f
	rlca                                             ; $5149: $07
	add  a                                           ; $514a: $87
	rrca                                             ; $514b: $0f
	nop                                              ; $514c: $00
	ld   d, b                                        ; $514d: $50
	add  e                                           ; $514e: $83
	and  b                                           ; $514f: $a0
	add  b                                           ; $5150: $80
	cp   a                                           ; $5151: $bf
	add  h                                           ; $5152: $84
	and  b                                           ; $5153: $a0
	add  b                                           ; $5154: $80
	add  b                                           ; $5155: $80
	add  h                                           ; $5156: $84
	ld   b, b                                        ; $5157: $40
	add  b                                           ; $5158: $80
	ld   a, [hl]                                     ; $5159: $7e
	add  [hl]                                        ; $515a: $86
	ld   b, b                                        ; $515b: $40
	add  h                                           ; $515c: $84
	add  c                                           ; $515d: $81
	add  b                                           ; $515e: $80
	db   $fd                                         ; $515f: $fd
	add  h                                           ; $5160: $84
	add  c                                           ; $5161: $81
	add  b                                           ; $5162: $80
	add  b                                           ; $5163: $80
	nop                                              ; $5164: $00
	db   $fc                                         ; $5165: $fc
	adc  c                                           ; $5166: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5167: $cf
	nop                                              ; $5168: $00
	ret                                              ; $5169: $c9


	add  b                                           ; $516a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $516b: $cf
	ld   bc, $adff                                   ; $516c: $01 $ff $ad
	add  e                                           ; $516f: $83
	xor  b                                           ; $5170: $a8
	add  d                                           ; $5171: $82
	xor  h                                           ; $5172: $ac
	add  b                                           ; $5173: $80
	xor  [hl]                                        ; $5174: $ae
	add  d                                           ; $5175: $82
	xor  a                                           ; $5176: $af
	add  d                                           ; $5177: $82
	ei                                               ; $5178: $fb
	adc  d                                           ; $5179: $8a
	ld   a, d                                        ; $517a: $7a
	inc  c                                           ; $517b: $0c
	rst  JumpTable                                         ; $517c: $df
	ld   hl, sp-$18                                  ; $517d: $f8 $e8
	rst  $38                                         ; $517f: $ff
	cp   a                                           ; $5180: $bf
	db   $fc                                         ; $5181: $fc
	or   h                                           ; $5182: $b4
	db   $fc                                         ; $5183: $fc
	sbc  h                                           ; $5184: $9c
	db   $fc                                         ; $5185: $fc
	call nz, $ecfc                                   ; $5186: $c4 $fc $ec
	add  c                                           ; $5189: $81
	db   $fc                                         ; $518a: $fc
	ld   [bc], a                                     ; $518b: $02
	add  a                                           ; $518c: $87
	rst  $38                                         ; $518d: $ff
	dec  bc                                          ; $518e: $0b
	add  b                                           ; $518f: $80
	ld   d, b                                        ; $5190: $50
	ld   b, $a8                                      ; $5191: $06 $a8
	ld   a, [$d822]                                  ; $5193: $fa $22 $d8
	ld   d, d                                        ; $5196: $52
	xor  [hl]                                        ; $5197: $ae
	xor  d                                           ; $5198: $aa
	add  b                                           ; $5199: $80
	ld   d, b                                        ; $519a: $50
	inc  b                                           ; $519b: $04
	jp   nc, $89ba                                   ; $519c: $d2 $ba $89

	ldh  [rIE], a                                    ; $519f: $e0 $ff
	add  c                                           ; $51a1: $81
	nop                                              ; $51a2: $00
	add  b                                           ; $51a3: $80
	ld   h, a                                        ; $51a4: $67
	dec  b                                           ; $51a5: $05
	sub  h                                           ; $51a6: $94
	rst  $30                                         ; $51a7: $f7
	di                                               ; $51a8: $f3
	pop  af                                          ; $51a9: $f1
	ld   bc, $8061                                   ; $51aa: $01 $61 $80
	inc  b                                           ; $51ad: $04
	ld   [bc], a                                     ; $51ae: $02
	cp   $00                                         ; $51af: $fe $00
	rst  $38                                         ; $51b1: $ff
	add  c                                           ; $51b2: $81
	nop                                              ; $51b3: $00
	add  b                                           ; $51b4: $80
	ldh  [$03], a                                    ; $51b5: $e0 $03
	ld   h, $e6                                      ; $51b7: $26 $e6
	sub  $96                                         ; $51b9: $d6 $96
	add  b                                           ; $51bb: $80
	and  [hl]                                        ; $51bc: $a6
	add  b                                           ; $51bd: $80
	inc  b                                           ; $51be: $04
	ld   [bc], a                                     ; $51bf: $02
	add  l                                           ; $51c0: $85
	rst  $38                                         ; $51c1: $ff
	ld   a, [$0081]                                  ; $51c2: $fa $81 $00
	add  b                                           ; $51c5: $80
	ret  nz                                          ; $51c6: $c0

	ld   a, [bc]                                     ; $51c7: $0a
	rra                                              ; $51c8: $1f
	rst  $38                                         ; $51c9: $ff
	rst  ToBoot                                         ; $51ca: $c7
	rst  $20                                         ; $51cb: $e7
	ret  nz                                          ; $51cc: $c0

	ret  c                                           ; $51cd: $d8

	jp   c, $26db                                    ; $51ce: $da $db $26

	rlca                                             ; $51d1: $07
	ld   b, $80                                      ; $51d2: $06 $80
	rst  $38                                         ; $51d4: $ff
	add  c                                           ; $51d5: $81
	rst  $28                                         ; $51d6: $ef
	add  hl, bc                                      ; $51d7: $09
	ld   [$696f], a                                  ; $51d8: $ea $6f $69
	ld   l, a                                        ; $51db: $6f
	ld   l, c                                        ; $51dc: $69
	ld   l, a                                        ; $51dd: $6f
	ld   l, c                                        ; $51de: $69
	ld   l, a                                        ; $51df: $6f
	ld   d, l                                        ; $51e0: $55
	rst  ToBoot                                         ; $51e1: $c7
	add  b                                           ; $51e2: $80
	db   $db                                         ; $51e3: $db
	add  b                                           ; $51e4: $80
	add  b                                           ; $51e5: $80
	add  b                                           ; $51e6: $80
	add  e                                           ; $51e7: $83
	add  b                                           ; $51e8: $80
	or   a                                           ; $51e9: $b7
	add  b                                           ; $51ea: $80
	ld   b, $80                                      ; $51eb: $06 $80
	inc  c                                           ; $51ed: $0c
	inc  bc                                          ; $51ee: $03
	ret  c                                           ; $51ef: $d8

	reti                                             ; $51f0: $d9


	ld   d, c                                        ; $51f1: $51
	ld   d, b                                        ; $51f2: $50
	add  b                                           ; $51f3: $80
	ld   d, a                                        ; $51f4: $57
	add  b                                           ; $51f5: $80
	and  b                                           ; $51f6: $a0
	add  b                                           ; $51f7: $80
	add  b                                           ; $51f8: $80
	add  b                                           ; $51f9: $80
	ccf                                              ; $51fa: $3f
	add  b                                           ; $51fb: $80
	nop                                              ; $51fc: $00
	add  b                                           ; $51fd: $80
	ld   bc, $aa03                                   ; $51fe: $01 $03 $aa
	cp   $54                                         ; $5201: $fe $54
	nop                                              ; $5203: $00
	add  b                                           ; $5204: $80
	rst  $30                                         ; $5205: $f7
	add  b                                           ; $5206: $80
	rlca                                             ; $5207: $07
	dec  bc                                          ; $5208: $0b
	dec  bc                                          ; $5209: $0b
	rrca                                             ; $520a: $0f
	push hl                                          ; $520b: $e5
	rst  $28                                         ; $520c: $ef
	inc  bc                                          ; $520d: $03
	ld   a, [de]                                     ; $520e: $1a
	call $caf5                                       ; $520f: $cd $f5 $ca
	ld   a, [$0fe0]                                  ; $5212: $fa $e0 $0f
	add  b                                           ; $5215: $80
	ld   c, $84                                      ; $5216: $0e $84
	dec  c                                           ; $5218: $0d
	add  b                                           ; $5219: $80
	ld   c, $82                                      ; $521a: $0e $82
	rrca                                             ; $521c: $0f
	add  hl, bc                                      ; $521d: $09
	ld   c, a                                        ; $521e: $4f
	cp   a                                           ; $521f: $bf
	jr   nz, jr_072_525a                             ; $5220: $20 $38

	ld   e, l                                        ; $5222: $5d
	rst  ToBoot                                         ; $5223: $c7
	inc  d                                           ; $5224: $14
	rst  $10                                         ; $5225: $d7
	sub  [hl]                                        ; $5226: $96
	rst  $10                                         ; $5227: $d7
	add  b                                           ; $5228: $80
	nop                                              ; $5229: $00
	add  b                                           ; $522a: $80
	jr   jr_072_5234                                 ; $522b: $18 $07

	ld   l, b                                        ; $522d: $68
	ld   a, h                                        ; $522e: $7c
	xor  e                                           ; $522f: $ab
	cp   a                                           ; $5230: $bf
	nop                                              ; $5231: $00
	rst  $38                                         ; $5232: $ff
	di                                               ; $5233: $f3

jr_072_5234:
	inc  c                                           ; $5234: $0c
	add  d                                           ; $5235: $82
	ld   e, $80                                      ; $5236: $1e $80
	inc  c                                           ; $5238: $0c
	add  d                                           ; $5239: $82
	nop                                              ; $523a: $00
	add  b                                           ; $523b: $80
	ld   a, a                                        ; $523c: $7f
	ld   c, $49                                      ; $523d: $0e $49
	rst  $38                                         ; $523f: $ff
	add  b                                           ; $5240: $80
	ld   a, a                                        ; $5241: $7f
	ld   c, c                                        ; $5242: $49
	ld   a, a                                        ; $5243: $7f
	ld   [hl], $7f                                   ; $5244: $36 $7f
	nop                                              ; $5246: $00
	ld   a, a                                        ; $5247: $7f
	ret                                              ; $5248: $c9


	rst  $38                                         ; $5249: $ff
	ld   a, a                                        ; $524a: $7f
	nop                                              ; $524b: $00
	ld   a, [$cf81]                                  ; $524c: $fa $81 $cf
	nop                                              ; $524f: $00
	call z, $cf81                                    ; $5250: $cc $81 $cf
	nop                                              ; $5253: $00
	adc  $83                                         ; $5254: $ce $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5256: $cf
	ld   bc, $ffc8                                   ; $5257: $01 $c8 $ff

jr_072_525a:
	add  [hl]                                        ; $525a: $86
	rst  $10                                         ; $525b: $d7
	add  b                                           ; $525c: $80
	ld   l, e                                        ; $525d: $6b
	add  b                                           ; $525e: $80
	xor  e                                           ; $525f: $ab
	add  b                                           ; $5260: $80
	res  0, b                                        ; $5261: $cb $80
	ldh  a, [$80]                                    ; $5263: $f0 $80
	cp   d                                           ; $5265: $ba
	add  b                                           ; $5266: $80
	jp   c, $e280                                    ; $5267: $da $80 $e2

	add  d                                           ; $526a: $82
	ld   a, [$f280]                                  ; $526b: $fa $80 $f2
	add  b                                           ; $526e: $80
	jp   z, $3a80                                    ; $526f: $ca $80 $3a

	nop                                              ; $5272: $00
	sub  a                                           ; $5273: $97
	add  c                                           ; $5274: $81
	db   $fc                                         ; $5275: $fc
	rrca                                             ; $5276: $0f
	ret  z                                           ; $5277: $c8

	cp   $9e                                         ; $5278: $fe $9e
	rst  $38                                         ; $527a: $ff
	cp   e                                           ; $527b: $bb
	cp   $f6                                         ; $527c: $fe $f6
	db   $fd                                         ; $527e: $fd
	db   $ed                                         ; $527f: $ed
	ld   a, [$f2da]                                  ; $5280: $fa $da $f2
	ld   c, l                                        ; $5283: $4d
	add  d                                           ; $5284: $82
	ret  nz                                          ; $5285: $c0

	ld   b, d                                        ; $5286: $42
	add  b                                           ; $5287: $80
	ld   hl, $0080                                   ; $5288: $21 $80 $00
	dec  bc                                          ; $528b: $0b
	inc  h                                           ; $528c: $24
	ld   a, a                                        ; $528d: $7f
	rra                                              ; $528e: $1f
	rst  $38                                         ; $528f: $ff
	ld   [hl-], a                                    ; $5290: $32
	rst  $38                                         ; $5291: $ff
	ld   a, h                                        ; $5292: $7c
	rst  $38                                         ; $5293: $ff
	cp   [hl]                                        ; $5294: $be
	ld   c, d                                        ; $5295: $4a
	add  h                                           ; $5296: $84
	add  l                                           ; $5297: $85
	add  b                                           ; $5298: $80
	ld   c, d                                        ; $5299: $4a
	add  c                                           ; $529a: $81
	nop                                              ; $529b: $00
	inc  bc                                          ; $529c: $03
	rst  $38                                         ; $529d: $ff
	add  b                                           ; $529e: $80
	rst  $38                                         ; $529f: $ff
	nop                                              ; $52a0: $00
	add  b                                           ; $52a1: $80
	rst  $38                                         ; $52a2: $ff
	ld   b, $80                                      ; $52a3: $06 $80
	cp   [hl]                                        ; $52a5: $be
	ld   a, $26                                      ; $52a6: $3e $26
	cp   [hl]                                        ; $52a8: $be
	dec  h                                           ; $52a9: $25
	dec  a                                           ; $52aa: $3d
	add  c                                           ; $52ab: $81
	nop                                              ; $52ac: $00
	inc  bc                                          ; $52ad: $03
	rst  $38                                         ; $52ae: $ff

jr_072_52af:
	ld   bc, $00ff                                   ; $52af: $01 $ff $00
	add  b                                           ; $52b2: $80
	rst  $38                                         ; $52b3: $ff
	inc  b                                           ; $52b4: $04
	ld   bc, $ca13                                   ; $52b5: $01 $13 $ca
	ld   a, [de]                                     ; $52b8: $1a
	jp   $bd80                                       ; $52b9: $c3 $80 $bd


jr_072_52bc:
	add  b                                           ; $52bc: $80
	nop                                              ; $52bd: $00
	ld   bc, $f827                                   ; $52be: $01 $27 $f8
	add  b                                           ; $52c1: $80
	rst  $38                                         ; $52c2: $ff
	dec  b                                           ; $52c3: $05
	ld   c, a                                        ; $52c4: $4f
	rst  $38                                         ; $52c5: $ff
	ccf                                              ; $52c6: $3f
	rst  $38                                         ; $52c7: $ff
	ld   c, $a1                                      ; $52c8: $0e $a1
	add  b                                           ; $52ca: $80
	add  [hl]                                        ; $52cb: $86
	add  b                                           ; $52cc: $80
	adc  h                                           ; $52cd: $8c
	add  b                                           ; $52ce: $80
	jr   jr_072_52e3                                 ; $52cf: $18 $12

	or   b                                           ; $52d1: $b0
	jr   nc, @-$7a                                   ; $52d2: $30 $84

	call nz, $eece                                   ; $52d4: $c4 $ce $ee
	db   $ec                                         ; $52d7: $ec
	db   $fc                                         ; $52d8: $fc
	ld   b, e                                        ; $52d9: $43
	or   a                                           ; $52da: $b7
	ld   h, b                                        ; $52db: $60
	ld   l, h                                        ; $52dc: $6c
	ld   b, e                                        ; $52dd: $43
	ld   e, e                                        ; $52de: $5b
	ld   b, a                                        ; $52df: $47
	ld   d, a                                        ; $52e0: $57
	rla                                              ; $52e1: $17
	scf                                              ; $52e2: $37

jr_072_52e3:
	ld   c, $80                                      ; $52e3: $0e $80
	ld   l, $1f                                      ; $52e5: $2e $1f
	ld   l, [hl]                                     ; $52e7: $6e
	ld   [de], a                                     ; $52e8: $12
	ld   d, d                                        ; $52e9: $52
	ld   d, h                                        ; $52ea: $54
	ld   d, l                                        ; $52eb: $55
	xor  e                                           ; $52ec: $ab
	xor  d                                           ; $52ed: $aa
	db   $fc                                         ; $52ee: $fc
	db   $fd                                         ; $52ef: $fd
	db   $fc                                         ; $52f0: $fc
	db   $fd                                         ; $52f1: $fd
	jr   nz, jr_072_5315                             ; $52f2: $20 $21

	ret  c                                           ; $52f4: $d8

	sub  c                                           ; $52f5: $91
	ret  c                                           ; $52f6: $d8

	reti                                             ; $52f7: $d9


	ld   c, c                                        ; $52f8: $49
	ret  c                                           ; $52f9: $d8

	add  d                                           ; $52fa: $82
	ld   [hl], l                                     ; $52fb: $75
	add  b                                           ; $52fc: $80
	cp   d                                           ; $52fd: $ba
	jr   nz, @-$3f                                   ; $52fe: $20 $bf

	jr   nc, jr_072_52bc                             ; $5300: $30 $ba

	inc  [hl]                                        ; $5302: $34
	or   h                                           ; $5303: $b4
	jr   z, jr_072_52af                              ; $5304: $28 $a9

	ld   bc, $8380                                   ; $5306: $01 $80 $83
	ld   [bc], a                                     ; $5309: $02
	ld   [hl], c                                     ; $530a: $71
	adc  [hl]                                        ; $530b: $8e
	rrca                                             ; $530c: $0f
	add  b                                           ; $530d: $80
	rlca                                             ; $530e: $07
	add  b                                           ; $530f: $80
	inc  bc                                          ; $5310: $03
	add  b                                           ; $5311: $80
	ld   bc, $0080                                   ; $5312: $01 $80 $00

jr_072_5315:
	add  d                                           ; $5315: $82
	ld   c, $80                                      ; $5316: $0e $80
	nop                                              ; $5318: $00
	ld   de, $74ae                                   ; $5319: $11 $ae $74
	rra                                              ; $531c: $1f
	ld   a, [hl+]                                    ; $531d: $2a
	ldh  a, [$d1]                                    ; $531e: $f0 $d1
	add  hl, bc                                      ; $5320: $09
	add  sp, -$40                                    ; $5321: $e8 $c0
	pop  af                                          ; $5323: $f1
	xor  $ff                                         ; $5324: $ee $ff
	ld   d, l                                        ; $5326: $55
	rst  $38                                         ; $5327: $ff
	nop                                              ; $5328: $00
	rst  $38                                         ; $5329: $ff
	xor  d                                           ; $532a: $aa
	ccf                                              ; $532b: $3f
	add  b                                           ; $532c: $80
	ld   a, a                                        ; $532d: $7f
	ld   b, $bf                                      ; $532e: $06 $bf
	ld   a, a                                        ; $5330: $7f
	dec  d                                           ; $5331: $15
	ccf                                              ; $5332: $3f
	jr   nz, jr_072_5394                             ; $5333: $20 $5f

	push de                                          ; $5335: $d5
	add  e                                           ; $5336: $83
	ld   a, a                                        ; $5337: $7f
	nop                                              ; $5338: $00
	nop                                              ; $5339: $00
	add  e                                           ; $533a: $83
	rst  $38                                         ; $533b: $ff
	inc  b                                           ; $533c: $04
	ld   d, l                                        ; $533d: $55
	rst  $38                                         ; $533e: $ff
	nop                                              ; $533f: $00
	rst  $38                                         ; $5340: $ff
	ld   d, l                                        ; $5341: $55
	add  e                                           ; $5342: $83
	rst  $38                                         ; $5343: $ff
	ld   [bc], a                                     ; $5344: $02
	ld   bc, $fcff                                   ; $5345: $01 $ff $fc
	add  c                                           ; $5348: $81
	cp   $04                                         ; $5349: $fe $04
	ld   d, h                                        ; $534b: $54
	db   $fc                                         ; $534c: $fc
	nop                                              ; $534d: $00
	db   $fc                                         ; $534e: $fc
	ld   d, h                                        ; $534f: $54
	add  e                                           ; $5350: $83
	db   $fc                                         ; $5351: $fc
	nop                                              ; $5352: $00
	adc  d                                           ; $5353: $8a
	add  c                                           ; $5354: $81
	rst  $38                                         ; $5355: $ff
	ld   [$ffb0], sp                                 ; $5356: $08 $b0 $ff
	cp   $ff                                         ; $5359: $fe $ff
	pop  de                                          ; $535b: $d1
	rst  $38                                         ; $535c: $ff
	ret  nz                                          ; $535d: $c0

	rst  $38                                         ; $535e: $ff
	push de                                          ; $535f: $d5
	add  c                                           ; $5360: $81
	rst  $38                                         ; $5361: $ff
	nop                                              ; $5362: $00
	dec  b                                           ; $5363: $05
	add  c                                           ; $5364: $81
	rst  $38                                         ; $5365: $ff
	ld   [$fff2], sp                                 ; $5366: $08 $f2 $ff
	ld   a, a                                        ; $5369: $7f
	rst  $38                                         ; $536a: $ff
	daa                                              ; $536b: $27
	rst  $38                                         ; $536c: $ff
	sub  b                                           ; $536d: $90
	rst  $38                                         ; $536e: $ff
	ccf                                              ; $536f: $3f
	add  b                                           ; $5370: $80
	add  c                                           ; $5371: $81
	ld   bc, $4bb9                                   ; $5372: $01 $b9 $4b
	add  l                                           ; $5375: $85
	dec  c                                           ; $5376: $0d
	add  hl, bc                                      ; $5377: $09
	nop                                              ; $5378: $00
	rlca                                             ; $5379: $07
	db   $10                                         ; $537a: $10
	rra                                              ; $537b: $1f
	db   $e4                                         ; $537c: $e4
	di                                               ; $537d: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $537e: $cf
	rst  $28                                         ; $537f: $ef
	jp   nc, $84ef                                   ; $5380: $d2 $ef $84

	xor  $80                                         ; $5383: $ee $80
	ld   c, $03                                      ; $5385: $0e $03
	inc  c                                           ; $5387: $0c
	ld   c, [hl]                                     ; $5388: $4e
	ld   bc, $80cf                                   ; $5389: $01 $cf $80
	sbc  a                                           ; $538c: $9f
	nop                                              ; $538d: $00
	ld   [hl], c                                     ; $538e: $71
	add  e                                           ; $538f: $83
	rst  $38                                         ; $5390: $ff
	ld   b, $f8                                      ; $5391: $06 $f8
	db   $fc                                         ; $5393: $fc

jr_072_5394:
	db   $e4                                         ; $5394: $e4
	ldh  a, [$d0]                                    ; $5395: $f0 $d0
	ldh  [hScriptOpcodeParams], a                                    ; $5397: $e0 $a0
	add  b                                           ; $5399: $80
	ret  nc                                          ; $539a: $d0

	ld   bc, $97e8                                   ; $539b: $01 $e8 $97
	add  e                                           ; $539e: $83
	rst  $38                                         ; $539f: $ff
	ld   b, $1f                                      ; $53a0: $06 $1f
	ccf                                              ; $53a2: $3f
	daa                                              ; $53a3: $27
	rrca                                             ; $53a4: $0f
	dec  bc                                          ; $53a5: $0b
	rlca                                             ; $53a6: $07
	dec  b                                           ; $53a7: $05
	add  c                                           ; $53a8: $81
	inc  bc                                          ; $53a9: $03
	ld   bc, $efad                                   ; $53aa: $01 $ad $ef
	add  h                                           ; $53ad: $84
	ld   l, a                                        ; $53ae: $6f
	add  b                                           ; $53af: $80
	ld   l, [hl]                                     ; $53b0: $6e
	ld   b, $2c                                      ; $53b1: $06 $2c
	ld   l, l                                        ; $53b3: $6d
	inc  hl                                          ; $53b4: $23
	rst  $28                                         ; $53b5: $ef
	call z, $1ee7                                    ; $53b6: $cc $e7 $1e
	add  d                                           ; $53b9: $82
	ld   hl, sp+$02                                  ; $53ba: $f8 $02
	ld   sp, hl                                      ; $53bc: $f9
	ld   hl, sp-$07                                  ; $53bd: $f8 $f9
	add  b                                           ; $53bf: $80
	jr   jr_072_53ce                                 ; $53c0: $18 $0c

	inc  e                                           ; $53c2: $1c
	db   $fc                                         ; $53c3: $fc
	db   $f4                                         ; $53c4: $f4
	db   $fc                                         ; $53c5: $fc
	ld   a, [de]                                     ; $53c6: $1a
	cp   $4c                                         ; $53c7: $fe $4c
	call z, Call_072_7efe                            ; $53c9: $cc $fe $7e
	inc  sp                                          ; $53cc: $33
	ccf                                              ; $53cd: $3f

jr_072_53ce:
	nop                                              ; $53ce: $00
	add  a                                           ; $53cf: $87
	rra                                              ; $53d0: $1f
	inc  bc                                          ; $53d1: $03
	inc  e                                           ; $53d2: $1c
	db   $db                                         ; $53d3: $db
	rst  $38                                         ; $53d4: $ff
	daa                                              ; $53d5: $27
	add  b                                           ; $53d6: $80
	rst  $38                                         ; $53d7: $ff
	nop                                              ; $53d8: $00
	nop                                              ; $53d9: $00
	add  a                                           ; $53da: $87
	rst  $38                                         ; $53db: $ff
	ld   bc, $56df                                   ; $53dc: $01 $df $56
	add  b                                           ; $53df: $80
	halt                                             ; $53e0: $76
	ld   [bc], a                                     ; $53e1: $02
	cp   $88                                         ; $53e2: $fe $88
	jr   nc, @-$7d                                   ; $53e4: $30 $81

	or   $07                                         ; $53e6: $f6 $07
	add  a                                           ; $53e8: $87
	ld   sp, hl                                      ; $53e9: $f9
	cp   c                                           ; $53ea: $b9
	rst  $38                                         ; $53eb: $ff
	cp   b                                           ; $53ec: $b8
	cp   $46                                         ; $53ed: $fe $46
	ld   c, $84                                      ; $53ef: $0e $84
	nop                                              ; $53f1: $00
	add  b                                           ; $53f2: $80
	ld   bc, $0e00                                   ; $53f3: $01 $00 $0e
	add  e                                           ; $53f6: $83
	rrca                                             ; $53f7: $0f
	nop                                              ; $53f8: $00
	pop  af                                          ; $53f9: $f1
	add  c                                           ; $53fa: $81
	rst  $38                                         ; $53fb: $ff
	inc  b                                           ; $53fc: $04
	db   $fc                                         ; $53fd: $fc
	rst  $38                                         ; $53fe: $ff
	ei                                               ; $53ff: $fb
	db   $fc                                         ; $5400: $fc
	inc  b                                           ; $5401: $04
	add  b                                           ; $5402: $80
	ld   hl, sp-$7d                                  ; $5403: $f8 $83
	adc  b                                           ; $5405: $88
	nop                                              ; $5406: $00
	ld   [$7f81], sp                                 ; $5407: $08 $81 $7f
	add  b                                           ; $540a: $80
	rst  JumpTable                                         ; $540b: $df
	ld   a, [bc]                                     ; $540c: $0a
	xor  c                                           ; $540d: $a9
	cp   a                                           ; $540e: $bf
	ld   d, l                                        ; $540f: $55
	rst  $38                                         ; $5410: $ff
	ld   a, [$b4ff]                                  ; $5411: $fa $ff $b4
	cp   a                                           ; $5414: $bf
	ld   [$fabf], sp                                 ; $5415: $08 $bf $fa
	add  c                                           ; $5418: $81
	rst  $38                                         ; $5419: $ff
	add  b                                           ; $541a: $80
	rst  $30                                         ; $541b: $f7
	ld   [bc], a                                     ; $541c: $02
	xor  d                                           ; $541d: $aa
	rst  $28                                         ; $541e: $ef
	ld   d, l                                        ; $541f: $55
	add  c                                           ; $5420: $81
	rst  $38                                         ; $5421: $ff
	inc  b                                           ; $5422: $04
	xor  d                                           ; $5423: $aa
	rst  $28                                         ; $5424: $ef
	nop                                              ; $5425: $00
	rst  $28                                         ; $5426: $ef
	cp   c                                           ; $5427: $b9
	add  c                                           ; $5428: $81
	db   $fc                                         ; $5429: $fc
	add  b                                           ; $542a: $80
	db   $fd                                         ; $542b: $fd
	ld   [bc], a                                     ; $542c: $02
	xor  d                                           ; $542d: $aa
	cp   $55                                         ; $542e: $fe $55
	add  c                                           ; $5430: $81
	rst  $38                                         ; $5431: $ff
	dec  b                                           ; $5432: $05
	xor  d                                           ; $5433: $aa
	cp   $00                                         ; $5434: $fe $00
	cp   $54                                         ; $5436: $fe $54
	nop                                              ; $5438: $00
	add  b                                           ; $5439: $80
	cp   a                                           ; $543a: $bf
	inc  b                                           ; $543b: $04
	ld   a, a                                        ; $543c: $7f
	ld   a, [hl]                                     ; $543d: $7e
	xor  d                                           ; $543e: $aa
	cp   $51                                         ; $543f: $fe $51
	add  c                                           ; $5441: $81
	cp   $04                                         ; $5442: $fe $04
	and  a                                           ; $5444: $a7
	ld   sp, hl                                      ; $5445: $f9
	dec  bc                                          ; $5446: $0b
	ld   hl, sp+$72                                  ; $5447: $f8 $72
	add  c                                           ; $5449: $81
	cp   l                                           ; $544a: $bd
	inc  b                                           ; $544b: $04
	ld   b, e                                        ; $544c: $43
	db   $eb                                         ; $544d: $eb
	db   $db                                         ; $544e: $db
	dec  de                                          ; $544f: $1b
	ld   h, a                                        ; $5450: $67
	add  c                                           ; $5451: $81
	rst  $30                                         ; $5452: $f7
	nop                                              ; $5453: $00
	ld   c, a                                        ; $5454: $4f
	add  c                                           ; $5455: $81
	rst  $28                                         ; $5456: $ef
	ld   de, $ff00                                   ; $5457: $11 $00 $ff
	cp   a                                           ; $545a: $bf
	rst  $38                                         ; $545b: $ff
	cp   $ff                                         ; $545c: $fe $ff
	ld   a, [hl]                                     ; $545e: $7e
	cp   $fc                                         ; $545f: $fe $fc
	cp   $a8                                         ; $5461: $fe $a8
	db   $fc                                         ; $5463: $fc
	nop                                              ; $5464: $00
	db   $fc                                         ; $5465: $fc
	nop                                              ; $5466: $00
	db   $fc                                         ; $5467: $fc
	ld   a, [hl+]                                    ; $5468: $2a
	sbc  [hl]                                        ; $5469: $9e
	add  b                                           ; $546a: $80
	ld   a, $01                                      ; $546b: $3e $01
	ld   hl, $823d                                   ; $546d: $21 $3d $82
	ld   a, l                                        ; $5470: $7d
	add  b                                           ; $5471: $80
	db   $fc                                         ; $5472: $fc
	add  b                                           ; $5473: $80
	nop                                              ; $5474: $00
	add  b                                           ; $5475: $80
	jr   z, jr_072_5478                              ; $5476: $28 $00

jr_072_5478:
	add  b                                           ; $5478: $80
	add  b                                           ; $5479: $80
	call nc, $ea05                                   ; $547a: $d4 $05 $ea
	ld   a, [hl+]                                    ; $547d: $2a
	db   $fd                                         ; $547e: $fd
	ld   [bc], a                                     ; $547f: $02
	ld   a, a                                        ; $5480: $7f
	ccf                                              ; $5481: $3f

jr_072_5482:
	add  b                                           ; $5482: $80
	nop                                              ; $5483: $00
	add  e                                           ; $5484: $83
	rst  $38                                         ; $5485: $ff
	nop                                              ; $5486: $00
	ld   bc, $0381                                   ; $5487: $01 $81 $03
	inc  b                                           ; $548a: $04
	rlca                                             ; $548b: $07
	ld   b, $f8                                      ; $548c: $06 $f8
	db   $fc                                         ; $548e: $fc
	ld   hl, sp-$80                                  ; $548f: $f8 $80
	nop                                              ; $5491: $00
	add  c                                           ; $5492: $81
	rst  $38                                         ; $5493: $ff
	add  b                                           ; $5494: $80
	ldh  a, [c]                                      ; $5495: $f2
	nop                                              ; $5496: $00
	ld   bc, $7280                                   ; $5497: $01 $80 $72
	ld   [bc], a                                     ; $549a: $02
	jr   c, jr_072_5515                              ; $549b: $38 $78

	ld   b, b                                        ; $549d: $40
	add  b                                           ; $549e: $80
	ld   a, l                                        ; $549f: $7d
	nop                                              ; $54a0: $00
	ld   a, h                                        ; $54a1: $7c
	add  c                                           ; $54a2: $81
	ld   a, l                                        ; $54a3: $7d
	add  c                                           ; $54a4: $81
	ld   bc, $8103                                   ; $54a5: $01 $03 $81
	ld   bc, $fe7f                                   ; $54a8: $01 $7f $fe
	add  e                                           ; $54ab: $83
	rst  $38                                         ; $54ac: $ff
	ld   [de], a                                     ; $54ad: $12

jr_072_54ae:
	ld   d, l                                        ; $54ae: $55
	rst  $38                                         ; $54af: $ff
	nop                                              ; $54b0: $00
	rst  $38                                         ; $54b1: $ff
	nop                                              ; $54b2: $00
	rst  $38                                         ; $54b3: $ff
	nop                                              ; $54b4: $00
	rst  $38                                         ; $54b5: $ff
	xor  d                                           ; $54b6: $aa

jr_072_54b7:
	rra                                              ; $54b7: $1f
	adc  d                                           ; $54b8: $8a
	sbc  a                                           ; $54b9: $9f
	ret  nz                                          ; $54ba: $c0

	rst  JumpTable                                         ; $54bb: $df
	ld   [$8aff], a                                  ; $54bc: $ea $ff $8a
	cp   a                                           ; $54bf: $bf
	or   l                                           ; $54c0: $b5
	add  c                                           ; $54c1: $81
	cp   a                                           ; $54c2: $bf
	inc  c                                           ; $54c3: $0c
	sub  l                                           ; $54c4: $95
	cp   a                                           ; $54c5: $bf
	dec  d                                           ; $54c6: $15
	rst  $38                                         ; $54c7: $ff
	xor  d                                           ; $54c8: $aa
	rst  $38                                         ; $54c9: $ff
	nop                                              ; $54ca: $00
	rst  $38                                         ; $54cb: $ff
	xor  d                                           ; $54cc: $aa
	rst  $38                                         ; $54cd: $ff
	xor  d                                           ; $54ce: $aa
	rst  $38                                         ; $54cf: $ff
	ld   d, l                                        ; $54d0: $55
	add  c                                           ; $54d1: $81
	rst  $38                                         ; $54d2: $ff
	inc  c                                           ; $54d3: $0c
	ld   d, l                                        ; $54d4: $55
	rst  $38                                         ; $54d5: $ff
	ld   l, c                                        ; $54d6: $69

Call_072_54d7:
	db   $fc                                         ; $54d7: $fc
	sub  c                                           ; $54d8: $91
	pop  af                                          ; $54d9: $f1
	dec  bc                                          ; $54da: $0b
	rst  $38                                         ; $54db: $ff
	xor  e                                           ; $54dc: $ab
	rst  $38                                         ; $54dd: $ff
	xor  d                                           ; $54de: $aa
	rst  $38                                         ; $54df: $ff
	ld   d, l                                        ; $54e0: $55
	add  c                                           ; $54e1: $81
	rst  $38                                         ; $54e2: $ff
	dec  b                                           ; $54e3: $05
	ld   d, l                                        ; $54e4: $55
	rst  $38                                         ; $54e5: $ff
	and  l                                           ; $54e6: $a5
	ld   bc, $0e0f                                   ; $54e7: $01 $0f $0e
	add  d                                           ; $54ea: $82
	rrca                                             ; $54eb: $0f
	add  h                                           ; $54ec: $84
	nop                                              ; $54ed: $00
	add  c                                           ; $54ee: $81
	rrca                                             ; $54ef: $0f
	add  d                                           ; $54f0: $82
	ld   hl, sp+$03                                  ; $54f1: $f8 $03
	db   $fc                                         ; $54f3: $fc
	inc  b                                           ; $54f4: $04
	cp   $06                                         ; $54f5: $fe $06
	add  b                                           ; $54f7: $80
	rst  $38                                         ; $54f8: $ff
	add  c                                           ; $54f9: $81
	ld   hl, sp+$02                                  ; $54fa: $f8 $02
	jr   c, @-$06                                    ; $54fc: $38 $f8

	jr   c, jr_072_5482                              ; $54fe: $38 $82

	ld   b, b                                        ; $5500: $40
	add  b                                           ; $5501: $80
	ld   h, b                                        ; $5502: $60
	add  b                                           ; $5503: $80
	ld   [$ff86], a                                  ; $5504: $ea $86 $ff
	add  d                                           ; $5507: $82
	db   $10                                         ; $5508: $10
	add  b                                           ; $5509: $80
	ld   [$ae80], sp                                 ; $550a: $08 $80 $ae
	add  b                                           ; $550d: $80
	rst  $38                                         ; $550e: $ff
	add  c                                           ; $550f: $81
	db   $e3                                         ; $5510: $e3
	ld   [bc], a                                     ; $5511: $02
	ldh  [c], a                                      ; $5512: $e2
	db   $e3                                         ; $5513: $e3
	ldh  [c], a                                      ; $5514: $e2

jr_072_5515:
	add  d                                           ; $5515: $82
	ld   bc, $0080                                   ; $5516: $01 $80 $00
	add  b                                           ; $5519: $80
	xor  d                                           ; $551a: $aa
	add  e                                           ; $551b: $83
	rst  $38                                         ; $551c: $ff
	ld   [bc], a                                     ; $551d: $02
	nop                                              ; $551e: $00
	rst  $38                                         ; $551f: $ff
	dec  c                                           ; $5520: $0d
	add  c                                           ; $5521: $81
	ei                                               ; $5522: $fb
	ld   bc, $f7ed                                   ; $5523: $01 $ed $f7
	add  b                                           ; $5526: $80
	ld   b, a                                        ; $5527: $47
	ld   [bc], a                                     ; $5528: $02
	rrca                                             ; $5529: $0f
	inc  hl                                          ; $552a: $23
	jr   nz, jr_072_54ae                             ; $552b: $20 $81

	rra                                              ; $552d: $1f
	ld   [bc], a                                     ; $552e: $02
	inc  bc                                          ; $552f: $03
	di                                               ; $5530: $f3
	xor  a                                           ; $5531: $af
	add  c                                           ; $5532: $81
	rst  JumpTable                                         ; $5533: $df
	nop                                              ; $5534: $00
	jr   nc, jr_072_54b7                             ; $5535: $30 $80

	cp   a                                           ; $5537: $bf
	nop                                              ; $5538: $00
	or   b                                           ; $5539: $b0
	add  b                                           ; $553a: $80
	halt                                             ; $553b: $76
	add  d                                           ; $553c: $82
	ld   a, d                                        ; $553d: $7a
	add  b                                           ; $553e: $80
	ld   a, [hl+]                                    ; $553f: $2a
	add  hl, bc                                      ; $5540: $09
	xor  b                                           ; $5541: $a8
	db   $fc                                         ; $5542: $fc
	nop                                              ; $5543: $00
	db   $fc                                         ; $5544: $fc
	nop                                              ; $5545: $00
	db   $fc                                         ; $5546: $fc
	nop                                              ; $5547: $00
	db   $fc                                         ; $5548: $fc
	xor  b                                           ; $5549: $a8
	nop                                              ; $554a: $00
	add  b                                           ; $554b: $80
	ld   d, h                                        ; $554c: $54
	add  b                                           ; $554d: $80
	inc  d                                           ; $554e: $14
	add  b                                           ; $554f: $80
	ld   a, [bc]                                     ; $5550: $0a
	ld   bc, $6840                                   ; $5551: $01 $40 $68
	add  b                                           ; $5554: $80
	add  c                                           ; $5555: $81
	add  b                                           ; $5556: $80
	ld   b, c                                        ; $5557: $41
	add  b                                           ; $5558: $80
	add  c                                           ; $5559: $81
	add  b                                           ; $555a: $80
	ld   b, c                                        ; $555b: $41
	add  b                                           ; $555c: $80
	pop  bc                                          ; $555d: $c1
	add  d                                           ; $555e: $82
	ld   b, c                                        ; $555f: $41
	inc  bc                                          ; $5560: $03
	rst  $10                                         ; $5561: $d7
	rst  $38                                         ; $5562: $ff
	add  b                                           ; $5563: $80
	rst  $38                                         ; $5564: $ff
	add  b                                           ; $5565: $80
	jp   $f802                                       ; $5566: $c3 $02 $f8


	rst  $38                                         ; $5569: $ff
	db   $fc                                         ; $556a: $fc
	add  l                                           ; $556b: $85
	rst  $38                                         ; $556c: $ff
	ld   [de], a                                     ; $556d: $12
	adc  c                                           ; $556e: $89
	rst  $38                                         ; $556f: $ff
	dec  c                                           ; $5570: $0d
	ldh  a, [c]                                      ; $5571: $f2
	db   $fd                                         ; $5572: $fd
	ld   sp, hl                                      ; $5573: $f9
	add  hl, bc                                      ; $5574: $09
	ld   sp, hl                                      ; $5575: $f9
	rla                                              ; $5576: $17
	ld   sp, hl                                      ; $5577: $f9
	jp   nz, $81ff                                   ; $5578: $c2 $ff $81

	rst  $38                                         ; $557b: $ff
	ld   [bc], a                                     ; $557c: $02
	rst  $38                                         ; $557d: $ff
	ld   d, a                                        ; $557e: $57
	add  c                                           ; $557f: $81

Jump_072_5580:
	add  b                                           ; $5580: $80
	add  b                                           ; $5581: $80
	ld   a, h                                        ; $5582: $7c
	add  b                                           ; $5583: $80
	db   $fc                                         ; $5584: $fc
	dec  bc                                          ; $5585: $0b
	nop                                              ; $5586: $00
	add  hl, hl                                      ; $5587: $29
	ld   sp, hl                                      ; $5588: $f9
	add  d                                           ; $5589: $82
	ld   a, [$f800]                                  ; $558a: $fa $00 $f8
	ld   bc, $02f9                                   ; $558d: $01 $f9 $02
	rst  $38                                         ; $5590: $ff
	ld   d, l                                        ; $5591: $55
	add  c                                           ; $5592: $81
	nop                                              ; $5593: $00
	add  b                                           ; $5594: $80
	add  b                                           ; $5595: $80
	add  b                                           ; $5596: $80
	jr   nz, jr_072_559a                             ; $5597: $20 $01

	ld   b, b                                        ; $5599: $40

jr_072_559a:
	ld   h, b                                        ; $559a: $60
	add  b                                           ; $559b: $80
	ldh  a, [rSC]                                    ; $559c: $f0 $02
	add  b                                           ; $559e: $80
	ld   hl, sp-$59                                  ; $559f: $f8 $a7
	add  b                                           ; $55a1: $80
	ld   b, b                                        ; $55a2: $40
	add  b                                           ; $55a3: $80
	add  b                                           ; $55a4: $80
	add  b                                           ; $55a5: $80
	nop                                              ; $55a6: $00
	add  b                                           ; $55a7: $80
	ld   a, [hl+]                                    ; $55a8: $2a
	add  [hl]                                        ; $55a9: $86
	rst  ToBoot                                         ; $55aa: $c7
	add  h                                           ; $55ab: $84
	nop                                              ; $55ac: $00
	add  b                                           ; $55ad: $80
	xor  d                                           ; $55ae: $aa
	add  [hl]                                        ; $55af: $86
	rst  $38                                         ; $55b0: $ff
	add  h                                           ; $55b1: $84
	nop                                              ; $55b2: $00
	add  b                                           ; $55b3: $80
	xor  d                                           ; $55b4: $aa
	add  d                                           ; $55b5: $82
	pop  af                                          ; $55b6: $f1
	add  c                                           ; $55b7: $81
	ldh  a, [$ee]                                    ; $55b8: $f0 $ee
	ld   bc, $0086                                   ; $55ba: $01 $86 $00
	add  b                                           ; $55bd: $80
	ld   a, [bc]                                     ; $55be: $0a
	ld   [bc], a                                     ; $55bf: $02
	rlca                                             ; $55c0: $07
	ld   c, $06                                      ; $55c1: $0e $06
	add  b                                           ; $55c3: $80
	ld   c, $01                                      ; $55c4: $0e $01
	ld   bc, $850e                                   ; $55c6: $01 $0e $85
	nop                                              ; $55c9: $00
	ld   [$af7c], sp                                 ; $55ca: $08 $7c $af
	inc  hl                                          ; $55cd: $23
	rra                                              ; $55ce: $1f
	inc  de                                          ; $55cf: $13
	adc  e                                           ; $55d0: $8b
	adc  a                                           ; $55d1: $8f
	ld   d, a                                        ; $55d2: $57
	xor  a                                           ; $55d3: $af
	add  l                                           ; $55d4: $85
	nop                                              ; $55d5: $00
	ld   [$96fd], sp                                 ; $55d6: $08 $fd $96
	db   $dd                                         ; $55d9: $dd
	ld   c, e                                        ; $55da: $4b
	add  l                                           ; $55db: $85
	add  a                                           ; $55dc: $87
	db   $d3                                         ; $55dd: $d3
	jp   $85ef                                       ; $55de: $c3 $ef $85


	nop                                              ; $55e1: $00
	nop                                              ; $55e2: $00
	rst  $38                                         ; $55e3: $ff
	add  b                                           ; $55e4: $80
	ld   d, d                                        ; $55e5: $52
	add  b                                           ; $55e6: $80
	adc  h                                           ; $55e7: $8c
	add  b                                           ; $55e8: $80
	ld   b, b                                        ; $55e9: $40
	ld   bc, $fd02                                   ; $55ea: $01 $02 $fd
	add  [hl]                                        ; $55ed: $86
	nop                                              ; $55ee: $00
	nop                                              ; $55ef: $00
	rst  $38                                         ; $55f0: $ff
	add  b                                           ; $55f1: $80
	cp   a                                           ; $55f2: $bf
	inc  b                                           ; $55f3: $04
	ld   a, a                                        ; $55f4: $7f
	ld   d, l                                        ; $55f5: $55
	ld   h, e                                        ; $55f6: $63
	ld   [$86be], sp                                 ; $55f7: $08 $be $86
	nop                                              ; $55fa: $00
	add  d                                           ; $55fb: $82
	rst  $38                                         ; $55fc: $ff
	add  b                                           ; $55fd: $80
	ld   d, l                                        ; $55fe: $55
	add  b                                           ; $55ff: $80
	xor  d                                           ; $5600: $aa
	add  l                                           ; $5601: $85
	nop                                              ; $5602: $00
	ld   bc, $fe01                                   ; $5603: $01 $01 $fe
	add  c                                           ; $5606: $81
	rst  $38                                         ; $5607: $ff
	add  b                                           ; $5608: $80
	ld   d, l                                        ; $5609: $55
	add  b                                           ; $560a: $80
	xor  d                                           ; $560b: $aa
	add  l                                           ; $560c: $85
	nop                                              ; $560d: $00
	ld   bc, $7f80                                   ; $560e: $01 $80 $7f
	add  b                                           ; $5611: $80
	nop                                              ; $5612: $00
	inc  b                                           ; $5613: $04
	ld   c, a                                        ; $5614: $4f
	nop                                              ; $5615: $00
	ld   c, a                                        ; $5616: $4f
	nop                                              ; $5617: $00
	rst  $38                                         ; $5618: $ff
	add  [hl]                                        ; $5619: $86
	nop                                              ; $561a: $00
	nop                                              ; $561b: $00
	rst  $38                                         ; $561c: $ff
	add  b                                           ; $561d: $80
	nop                                              ; $561e: $00
	inc  b                                           ; $561f: $04
	rst  $38                                         ; $5620: $ff
	nop                                              ; $5621: $00
	rst  $38                                         ; $5622: $ff
	nop                                              ; $5623: $00
	rst  $38                                         ; $5624: $ff
	add  [hl]                                        ; $5625: $86
	nop                                              ; $5626: $00
	nop                                              ; $5627: $00
	rst  $38                                         ; $5628: $ff
	add  b                                           ; $5629: $80
	nop                                              ; $562a: $00
	inc  b                                           ; $562b: $04
	rst  $38                                         ; $562c: $ff
	nop                                              ; $562d: $00
	rst  $38                                         ; $562e: $ff
	nop                                              ; $562f: $00
	rst  $38                                         ; $5630: $ff
	add  [hl]                                        ; $5631: $86
	nop                                              ; $5632: $00
	nop                                              ; $5633: $00
	rst  $38                                         ; $5634: $ff
	add  b                                           ; $5635: $80
	nop                                              ; $5636: $00
	inc  b                                           ; $5637: $04
	rst  $38                                         ; $5638: $ff
	nop                                              ; $5639: $00
	rst  $38                                         ; $563a: $ff
	nop                                              ; $563b: $00
	rst  $38                                         ; $563c: $ff
	add  [hl]                                        ; $563d: $86
	nop                                              ; $563e: $00
	nop                                              ; $563f: $00
	rst  $38                                         ; $5640: $ff
	add  b                                           ; $5641: $80
	nop                                              ; $5642: $00
	inc  b                                           ; $5643: $04
	rst  $38                                         ; $5644: $ff
	nop                                              ; $5645: $00
	rst  $38                                         ; $5646: $ff
	nop                                              ; $5647: $00
	rst  $38                                         ; $5648: $ff
	add  l                                           ; $5649: $85
	nop                                              ; $564a: $00
	ld   bc, $fe01                                   ; $564b: $01 $01 $fe

jr_072_564e:
	add  b                                           ; $564e: $80
	nop                                              ; $564f: $00
	inc  b                                           ; $5650: $04
	ldh  a, [c]                                      ; $5651: $f2
	nop                                              ; $5652: $00
	ldh  a, [c]                                      ; $5653: $f2
	nop                                              ; $5654: $00
	rst  $38                                         ; $5655: $ff
	add  l                                           ; $5656: $85
	nop                                              ; $5657: $00
	ld   bc, $7f80                                   ; $5658: $01 $80 $7f
	add  c                                           ; $565b: $81
	rst  $38                                         ; $565c: $ff
	add  b                                           ; $565d: $80
	ld   d, l                                        ; $565e: $55
	add  b                                           ; $565f: $80
	xor  d                                           ; $5660: $aa
	add  l                                           ; $5661: $85
	nop                                              ; $5662: $00
	ld   bc, $fd02                                   ; $5663: $01 $02 $fd
	add  b                                           ; $5666: $80
	db   $fc                                         ; $5667: $fc
	nop                                              ; $5668: $00
	cp   $80                                         ; $5669: $fe $80
	ld   d, h                                        ; $566b: $54
	ld   bc, $abaa                                   ; $566c: $01 $aa $ab
	add  [hl]                                        ; $566f: $86
	nop                                              ; $5670: $00
	nop                                              ; $5671: $00
	rst  $38                                         ; $5672: $ff
	add  b                                           ; $5673: $80
	db   $fd                                         ; $5674: $fd
	ld   b, $9e                                      ; $5675: $06 $9e
	inc  d                                           ; $5677: $14
	or   l                                           ; $5678: $b5
	ld   a, [hl+]                                    ; $5679: $2a
	push hl                                          ; $567a: $e5
	ld   [bc], a                                     ; $567b: $02
	ld   [$0580], sp                                 ; $567c: $08 $80 $05
	rlca                                             ; $567f: $07
	rlca                                             ; $5680: $07
	ld   [$050f], sp                                 ; $5681: $08 $0f $05
	rrca                                             ; $5684: $0f
	rlca                                             ; $5685: $07
	rrca                                             ; $5686: $0f
	ld   b, $80                                      ; $5687: $06 $80
	rrca                                             ; $5689: $0f
	inc  de                                          ; $568a: $13
	ld   c, $d0                                      ; $568b: $0e $d0
	ld   d, d                                        ; $568d: $52
	ld   a, b                                        ; $568e: $78
	or   l                                           ; $568f: $b5
	db   $e3                                         ; $5690: $e3
	ld   b, e                                        ; $5691: $43
	ld   [hl], a                                     ; $5692: $77
	sub  $7e                                         ; $5693: $d6 $7e
	push de                                          ; $5695: $d5
	ld   [hl], l                                     ; $5696: $75
	ldh  [c], a                                      ; $5697: $e2
	sub  d                                           ; $5698: $92
	ld   d, a                                        ; $5699: $57
	rst  $28                                         ; $569a: $ef
	xor  d                                           ; $569b: $aa
	sbc  [hl]                                        ; $569c: $9e
	add  b                                           ; $569d: $80
	ld   [bc], a                                     ; $569e: $02
	add  c                                           ; $569f: $81
	nop                                              ; $56a0: $00
	add  b                                           ; $56a1: $80
	add  b                                           ; $56a2: $80
	add  b                                           ; $56a3: $80
	ld   b, b                                        ; $56a4: $40
	add  e                                           ; $56a5: $83
	nop                                              ; $56a6: $00
	ld   a, [de]                                     ; $56a7: $1a
	add  b                                           ; $56a8: $80
	sbc  h                                           ; $56a9: $9c
	ld   a, [bc]                                     ; $56aa: $0a
	ld   b, b                                        ; $56ab: $40
	ld   e, h                                        ; $56ac: $5c
	inc  d                                           ; $56ad: $14
	ld   [$8488], sp                                 ; $56ae: $08 $88 $84
	ld   b, h                                        ; $56b1: $44
	ld   d, b                                        ; $56b2: $50
	ld   a, [de]                                     ; $56b3: $1a
	ld   l, d                                        ; $56b4: $6a
	ld   l, b                                        ; $56b5: $68
	db   $fc                                         ; $56b6: $fc
	sub  $7e                                         ; $56b7: $d6 $7e
	inc  d                                           ; $56b9: $14
	xor  $b3                                         ; $56ba: $ee $b3
	sub  $8b                                         ; $56bc: $d6 $8b
	ld   bc, $b7b6                                   ; $56be: $01 $b6 $b7
	or   h                                           ; $56c1: $b4
	nop                                              ; $56c2: $00
	add  b                                           ; $56c3: $80
	ld   [bc], a                                     ; $56c4: $02
	add  b                                           ; $56c5: $80
	inc  bc                                          ; $56c6: $03
	add  b                                           ; $56c7: $80
	ld   [bc], a                                     ; $56c8: $02
	ld   [bc], a                                     ; $56c9: $02
	inc  bc                                          ; $56ca: $03
	add  b                                           ; $56cb: $80
	jr   nz, jr_072_564e                             ; $56cc: $20 $80

	and  b                                           ; $56ce: $a0
	ld   b, $c0                                      ; $56cf: $06 $c0
	ld   h, b                                        ; $56d1: $60
	ldh  [hScriptOpcodeParams], a                                    ; $56d2: $e0 $a0
	add  b                                           ; $56d4: $80
	ld   h, b                                        ; $56d5: $60
	ld   b, b                                        ; $56d6: $40
	add  b                                           ; $56d7: $80
	nop                                              ; $56d8: $00
	ld   [bc], a                                     ; $56d9: $02
	and  b                                           ; $56da: $a0
	jr   nz, @+$63                                   ; $56db: $20 $61

	add  e                                           ; $56dd: $83
	nop                                              ; $56de: $00
	add  b                                           ; $56df: $80
	ld   [bc], a                                     ; $56e0: $02
	dec  bc                                          ; $56e1: $0b
	inc  bc                                          ; $56e2: $03
	ld   bc, $0504                                   ; $56e3: $01 $04 $05
	inc  c                                           ; $56e6: $0c
	dec  bc                                          ; $56e7: $0b
	jr   z, jr_072_5721                              ; $56e8: $28 $37

	dec  h                                           ; $56ea: $25
	nop                                              ; $56eb: $00
	push de                                          ; $56ec: $d5
	dec  d                                           ; $56ed: $15
	add  b                                           ; $56ee: $80
	xor  d                                           ; $56ef: $aa
	add  d                                           ; $56f0: $82
	rst  $38                                         ; $56f1: $ff
	rlca                                             ; $56f2: $07
	xor  d                                           ; $56f3: $aa
	rst  $38                                         ; $56f4: $ff
	nop                                              ; $56f5: $00
	rst  $38                                         ; $56f6: $ff
	nop                                              ; $56f7: $00
	rst  $38                                         ; $56f8: $ff
	ld   d, l                                        ; $56f9: $55
	nop                                              ; $56fa: $00
	add  b                                           ; $56fb: $80
	ld   d, l                                        ; $56fc: $55
	add  b                                           ; $56fd: $80
	xor  d                                           ; $56fe: $aa
	add  d                                           ; $56ff: $82
	rst  $38                                         ; $5700: $ff
	rlca                                             ; $5701: $07
	xor  d                                           ; $5702: $aa
	rst  $38                                         ; $5703: $ff
	nop                                              ; $5704: $00
	rst  $38                                         ; $5705: $ff
	nop                                              ; $5706: $00
	rst  $38                                         ; $5707: $ff
	ld   d, l                                        ; $5708: $55
	nop                                              ; $5709: $00
	add  b                                           ; $570a: $80
	ld   d, l                                        ; $570b: $55
	add  b                                           ; $570c: $80
	xor  d                                           ; $570d: $aa
	add  d                                           ; $570e: $82
	rst  $38                                         ; $570f: $ff
	rlca                                             ; $5710: $07
	xor  d                                           ; $5711: $aa
	rst  $38                                         ; $5712: $ff
	nop                                              ; $5713: $00
	rst  $38                                         ; $5714: $ff
	nop                                              ; $5715: $00
	rst  $38                                         ; $5716: $ff
	ld   d, l                                        ; $5717: $55
	nop                                              ; $5718: $00
	add  b                                           ; $5719: $80
	ld   d, l                                        ; $571a: $55
	add  b                                           ; $571b: $80
	xor  d                                           ; $571c: $aa
	add  d                                           ; $571d: $82
	rst  $38                                         ; $571e: $ff
	rlca                                             ; $571f: $07
	xor  d                                           ; $5720: $aa

jr_072_5721:
	rst  $38                                         ; $5721: $ff

jr_072_5722:
	nop                                              ; $5722: $00
	rst  $38                                         ; $5723: $ff
	nop                                              ; $5724: $00
	rst  $38                                         ; $5725: $ff
	ld   d, l                                        ; $5726: $55
	nop                                              ; $5727: $00
	add  b                                           ; $5728: $80
	ld   d, l                                        ; $5729: $55
	add  b                                           ; $572a: $80
	xor  d                                           ; $572b: $aa
	add  d                                           ; $572c: $82
	rst  $38                                         ; $572d: $ff
	add  hl, bc                                      ; $572e: $09
	xor  d                                           ; $572f: $aa
	rst  $38                                         ; $5730: $ff
	nop                                              ; $5731: $00
	rst  $38                                         ; $5732: $ff
	nop                                              ; $5733: $00
	rst  $38                                         ; $5734: $ff
	ld   d, [hl]                                     ; $5735: $56
	nop                                              ; $5736: $00
	ld   d, e                                        ; $5737: $53
	ld   d, b                                        ; $5738: $50
	add  b                                           ; $5739: $80
	xor  d                                           ; $573a: $aa
	add  d                                           ; $573b: $82
	rst  $38                                         ; $573c: $ff
	ld   b, $aa                                      ; $573d: $06 $aa
	rst  $38                                         ; $573f: $ff
	nop                                              ; $5740: $00
	rst  $38                                         ; $5741: $ff
	nop                                              ; $5742: $00
	rst  $38                                         ; $5743: $ff
	ld   a, [hl+]                                    ; $5744: $2a
	add  e                                           ; $5745: $83
	nop                                              ; $5746: $00
	dec  d                                           ; $5747: $15
	ld   bc, $4200                                   ; $5748: $01 $00 $42
	ld   b, b                                        ; $574b: $40
	jp   $2080                                       ; $574c: $c3 $80 $20


	and  b                                           ; $574f: $a0
	jr   nc, jr_072_5722                             ; $5750: $30 $d0

	and  e                                           ; $5752: $a3
	nop                                              ; $5753: $00
	dec  de                                          ; $5754: $1b
	nop                                              ; $5755: $00
	dec  hl                                          ; $5756: $2b
	nop                                              ; $5757: $00
	cp   a                                           ; $5758: $bf
	nop                                              ; $5759: $00
	cp   h                                           ; $575a: $bc
	nop                                              ; $575b: $00
	ld   [hl], e                                     ; $575c: $73
	inc  bc                                          ; $575d: $03
	add  b                                           ; $575e: $80
	rlca                                             ; $575f: $07
	inc  d                                           ; $5760: $14
	ld   h, a                                        ; $5761: $67
	rlca                                             ; $5762: $07
	and  c                                           ; $5763: $a1
	nop                                              ; $5764: $00
	ld   b, c                                        ; $5765: $41
	nop                                              ; $5766: $00
	add  b                                           ; $5767: $80
	nop                                              ; $5768: $00
	ld   b, b                                        ; $5769: $40
	nop                                              ; $576a: $00
	jr   nz, jr_072_576d                             ; $576b: $20 $00

jr_072_576d:
	sub  b                                           ; $576d: $90
	add  b                                           ; $576e: $80
	ldh  [$c0], a                                    ; $576f: $e0 $c0
	ret  nc                                          ; $5771: $d0

	ret  nz                                          ; $5772: $c0

	ld   c, $01                                      ; $5773: $0e $01
	nop                                              ; $5775: $00
	add  b                                           ; $5776: $80
	ld   [$0f80], sp                                 ; $5777: $08 $80 $0f
	add  b                                           ; $577a: $80
	ld   bc, $0081                                   ; $577b: $01 $81 $00
	ld   a, [bc]                                     ; $577e: $0a
	ld   c, $00                                      ; $577f: $0e $00
	dec  c                                           ; $5781: $0d
	nop                                              ; $5782: $00
	jp   hl                                          ; $5783: $e9


	ld   e, $0e                                      ; $5784: $1e $0e
	dec  bc                                          ; $5786: $0b
	ld   b, $07                                      ; $5787: $06 $07
	nop                                              ; $5789: $00
	add  b                                           ; $578a: $80
	ldh  [rTAC], a                                   ; $578b: $e0 $07
	inc  a                                           ; $578d: $3c
	dec  a                                           ; $578e: $3d
	ld   b, $07                                      ; $578f: $06 $07
	nop                                              ; $5791: $00
	ret  nz                                          ; $5792: $c0

	nop                                              ; $5793: $00
	sbc  $80                                         ; $5794: $de $80
	ld   b, b                                        ; $5796: $40
	ld   [bc], a                                     ; $5797: $02
	add  b                                           ; $5798: $80
	ld   b, b                                        ; $5799: $40
	ret  nz                                          ; $579a: $c0

	add  b                                           ; $579b: $80
	add  b                                           ; $579c: $80
	add  b                                           ; $579d: $80
	nop                                              ; $579e: $00
	ld   de, $009c                                   ; $579f: $11 $9c $00
	ldh  a, [c]                                      ; $57a2: $f2
	add  b                                           ; $57a3: $80
	db   $fc                                         ; $57a4: $fc
	db   $10                                         ; $57a5: $10
	ld   [$96ba], sp                                 ; $57a6: $08 $ba $96
	inc  a                                           ; $57a9: $3c
	sub  h                                           ; $57aa: $94
	sbc  b                                           ; $57ab: $98
	ldh  [$ec], a                                    ; $57ac: $e0 $ec
	add  d                                           ; $57ae: $82
	sub  [hl]                                        ; $57af: $96
	ld   e, d                                        ; $57b0: $5a

jr_072_57b1:
	ld   c, d                                        ; $57b1: $4a
	add  b                                           ; $57b2: $80
	add  [hl]                                        ; $57b3: $86
	inc  b                                           ; $57b4: $04
	ld   a, [bc]                                     ; $57b5: $0a
	ld   [de], a                                     ; $57b6: $12
	sub  $30                                         ; $57b7: $d6 $30
	ld   a, e                                        ; $57b9: $7b
	add  c                                           ; $57ba: $81
	ld   a, b                                        ; $57bb: $78
	ld   bc, $787e                                   ; $57bc: $01 $7e $78
	add  b                                           ; $57bf: $80
	ld   sp, $0d01                                   ; $57c0: $31 $01 $0d
	ld   bc, $0080                                   ; $57c3: $01 $80 $00
	rrca                                             ; $57c6: $0f
	jr   jr_072_57c9                                 ; $57c7: $18 $00

jr_072_57c9:
	jr   nz, jr_072_57cb                             ; $57c9: $20 $00

jr_072_57cb:
	jr   nz, jr_072_57cd                             ; $57cb: $20 $00

jr_072_57cd:
	inc  e                                           ; $57cd: $1c
	nop                                              ; $57ce: $00
	jp   z, $edc0                                    ; $57cf: $ca $c0 $ed

	ldh  [$e4], a                                    ; $57d2: $e0 $e4
	ldh  [$d0], a                                    ; $57d4: $e0 $d0
	ret  nz                                          ; $57d6: $c0

	add  b                                           ; $57d7: $80
	nop                                              ; $57d8: $00
	inc  bc                                          ; $57d9: $03
	and  b                                           ; $57da: $a0
	rst  JumpTable                                         ; $57db: $df
	rra                                              ; $57dc: $1f
	ld   a, a                                        ; $57dd: $7f
	add  b                                           ; $57de: $80
	rst  $38                                         ; $57df: $ff
	add  b                                           ; $57e0: $80
	ld   a, a                                        ; $57e1: $7f
	add  b                                           ; $57e2: $80
	nop                                              ; $57e3: $00
	nop                                              ; $57e4: $00
	rst  $38                                         ; $57e5: $ff
	add  h                                           ; $57e6: $84
	nop                                              ; $57e7: $00
	add  l                                           ; $57e8: $85
	rst  $38                                         ; $57e9: $ff
	add  b                                           ; $57ea: $80
	nop                                              ; $57eb: $00
	nop                                              ; $57ec: $00
	rst  $38                                         ; $57ed: $ff
	add  h                                           ; $57ee: $84
	nop                                              ; $57ef: $00
	add  l                                           ; $57f0: $85
	rst  $38                                         ; $57f1: $ff
	add  b                                           ; $57f2: $80
	nop                                              ; $57f3: $00
	nop                                              ; $57f4: $00
	rst  $38                                         ; $57f5: $ff
	add  h                                           ; $57f6: $84
	nop                                              ; $57f7: $00
	add  l                                           ; $57f8: $85
	rst  $38                                         ; $57f9: $ff
	add  b                                           ; $57fa: $80
	nop                                              ; $57fb: $00
	nop                                              ; $57fc: $00
	rst  $38                                         ; $57fd: $ff

jr_072_57fe:
	add  h                                           ; $57fe: $84
	nop                                              ; $57ff: $00
	add  l                                           ; $5800: $85
	rst  $38                                         ; $5801: $ff
	add  b                                           ; $5802: $80
	nop                                              ; $5803: $00
	nop                                              ; $5804: $00
	rst  $38                                         ; $5805: $ff
	add  h                                           ; $5806: $84
	nop                                              ; $5807: $00
	add  l                                           ; $5808: $85
	rst  $38                                         ; $5809: $ff
	add  b                                           ; $580a: $80
	nop                                              ; $580b: $00
	nop                                              ; $580c: $00
	rst  $38                                         ; $580d: $ff
	add  h                                           ; $580e: $84
	nop                                              ; $580f: $00
	add  l                                           ; $5810: $85
	rst  $38                                         ; $5811: $ff
	add  b                                           ; $5812: $80
	nop                                              ; $5813: $00
	nop                                              ; $5814: $00
	rst  $38                                         ; $5815: $ff
	add  e                                           ; $5816: $83
	nop                                              ; $5817: $00
	ld   bc, $a857                                   ; $5818: $01 $57 $a8
	add  b                                           ; $581b: $80
	push de                                          ; $581c: $d5
	add  b                                           ; $581d: $80
	ld   a, [$fd80]                                  ; $581e: $fa $80 $fd
	add  b                                           ; $5821: $80
	nop                                              ; $5822: $00
	nop                                              ; $5823: $00
	rst  $38                                         ; $5824: $ff
	add  e                                           ; $5825: $83
	nop                                              ; $5826: $00
	ld   b, $d8                                      ; $5827: $06 $d8
	rlca                                             ; $5829: $07
	rla                                              ; $582a: $17
	rlca                                             ; $582b: $07
	inc  hl                                          ; $582c: $23
	inc  bc                                          ; $582d: $03
	jr   jr_072_57b1                                 ; $582e: $18 $81

	nop                                              ; $5830: $00
	nop                                              ; $5831: $00
	db   $f4                                         ; $5832: $f4
	add  c                                           ; $5833: $81
	nop                                              ; $5834: $00
	dec  d                                           ; $5835: $15
	ld   b, $00                                      ; $5836: $06 $00
	ld   [hl-], a                                    ; $5838: $32
	ret  nz                                          ; $5839: $c0

	call nz, $88c0                                   ; $583a: $c4 $c0 $88
	add  b                                           ; $583d: $80
	inc  b                                           ; $583e: $04
	nop                                              ; $583f: $00
	ld   [bc], a                                     ; $5840: $02
	nop                                              ; $5841: $00
	ld   bc, wIsGBC                                   ; $5842: $01 $00 $c2
	nop                                              ; $5845: $00
	ldh  a, [rP1]                                    ; $5846: $f0 $00
	ld   a, $00                                      ; $5848: $3e $00
	rrca                                             ; $584a: $0f
	nop                                              ; $584b: $00
	add  b                                           ; $584c: $80
	rrca                                             ; $584d: $0f
	ld   bc, $0f00                                   ; $584e: $01 $00 $0f
	add  [hl]                                        ; $5851: $86
	nop                                              ; $5852: $00
	inc  bc                                          ; $5853: $03
	ldh  a, [rP1]                                    ; $5854: $f0 $00
	rst  $38                                         ; $5856: $ff
	nop                                              ; $5857: $00
	add  b                                           ; $5858: $80
	rst  $38                                         ; $5859: $ff
	ld   bc, $fe01                                   ; $585a: $01 $01 $fe
	adc  b                                           ; $585d: $88
	nop                                              ; $585e: $00
	inc  b                                           ; $585f: $04
	rst  $38                                         ; $5860: $ff
	nop                                              ; $5861: $00
	ei                                               ; $5862: $fb
	db   $fc                                         ; $5863: $fc
	ld   hl, sp-$79                                  ; $5864: $f8 $87
	nop                                              ; $5866: $00
	rlca                                             ; $5867: $07
	ld   h, d                                        ; $5868: $62
	sub  [hl]                                        ; $5869: $96
	halt                                             ; $586a: $76
	ld   b, [hl]                                     ; $586b: $46
	call nz, $070b                                   ; $586c: $c4 $0b $07
	inc  e                                           ; $586f: $1c
	add  b                                           ; $5870: $80
	rra                                              ; $5871: $1f
	nop                                              ; $5872: $00
	rrca                                             ; $5873: $0f
	add  c                                           ; $5874: $81
	ccf                                              ; $5875: $3f
	inc  b                                           ; $5876: $04
	inc  e                                           ; $5877: $1c
	ld   a, h                                        ; $5878: $7c
	xor  a                                           ; $5879: $af
	nop                                              ; $587a: $00
	jr   nc, jr_072_57fe                             ; $587b: $30 $81

	nop                                              ; $587d: $00
	dec  b                                           ; $587e: $05
	ret  nz                                          ; $587f: $c0

	ldh  [$fe], a                                    ; $5880: $e0 $fe
	ld   e, $fe                                      ; $5882: $1e $fe
	pop  hl                                          ; $5884: $e1
	add  b                                           ; $5885: $80
	ld   hl, sp-$80                                  ; $5886: $f8 $80
	nop                                              ; $5888: $00
	add  hl, bc                                      ; $5889: $09
	ret  c                                           ; $588a: $d8

	nop                                              ; $588b: $00
	inc  b                                           ; $588c: $04
	ld   bc, $0061                                   ; $588d: $01 $61 $00
	ld   bc, $bc00                                   ; $5890: $01 $00 $bc
	nop                                              ; $5893: $00
	add  b                                           ; $5894: $80
	ret  nz                                          ; $5895: $c0

	add  b                                           ; $5896: $80
	nop                                              ; $5897: $00
	ld   [bc], a                                     ; $5898: $02
	dec  a                                           ; $5899: $3d
	nop                                              ; $589a: $00
	inc  a                                           ; $589b: $3c
	add  b                                           ; $589c: $80
	nop                                              ; $589d: $00
	add  b                                           ; $589e: $80
	rst  $38                                         ; $589f: $ff
	ld   [bc], a                                     ; $58a0: $02
	ld   a, a                                        ; $58a1: $7f
	add  c                                           ; $58a2: $81
	ld   bc, $0084                                   ; $58a3: $01 $84 $00
	nop                                              ; $58a6: $00
	rst  $38                                         ; $58a7: $ff
	add  h                                           ; $58a8: $84
	nop                                              ; $58a9: $00
	add  c                                           ; $58aa: $81
	rst  $38                                         ; $58ab: $ff
	add  h                                           ; $58ac: $84
	nop                                              ; $58ad: $00
	nop                                              ; $58ae: $00
	rst  $38                                         ; $58af: $ff
	add  h                                           ; $58b0: $84
	nop                                              ; $58b1: $00
	add  c                                           ; $58b2: $81
	rst  $38                                         ; $58b3: $ff
	add  b                                           ; $58b4: $80
	rra                                              ; $58b5: $1f
	add  b                                           ; $58b6: $80
	nop                                              ; $58b7: $00
	ld   [bc], a                                     ; $58b8: $02
	rlca                                             ; $58b9: $07
	nop                                              ; $58ba: $00
	ld   hl, sp-$7c                                  ; $58bb: $f8 $84
	nop                                              ; $58bd: $00
	add  b                                           ; $58be: $80
	ret  nz                                          ; $58bf: $c0

	add  d                                           ; $58c0: $82
	rst  $38                                         ; $58c1: $ff
	add  b                                           ; $58c2: $80
	ld   a, a                                        ; $58c3: $7f
	add  b                                           ; $58c4: $80
	ld   a, [bc]                                     ; $58c5: $0a
	add  b                                           ; $58c6: $80
	ld   [bc], a                                     ; $58c7: $02
	add  d                                           ; $58c8: $82
	nop                                              ; $58c9: $00
	add  b                                           ; $58ca: $80
	inc  bc                                          ; $58cb: $03
	add  d                                           ; $58cc: $82
	rst  $38                                         ; $58cd: $ff
	add  b                                           ; $58ce: $80
	cp   $80                                         ; $58cf: $fe $80
	xor  b                                           ; $58d1: $a8
	add  b                                           ; $58d2: $80
	and  b                                           ; $58d3: $a0
	add  d                                           ; $58d4: $82
	nop                                              ; $58d5: $00
	add  c                                           ; $58d6: $81
	rst  $38                                         ; $58d7: $ff
	add  b                                           ; $58d8: $80

jr_072_58d9:
	ld   hl, sp-$80                                  ; $58d9: $f8 $80
	nop                                              ; $58db: $00
	ld   [bc], a                                     ; $58dc: $02
	ldh  [rP1], a                                    ; $58dd: $e0 $00
	rra                                              ; $58df: $1f
	add  h                                           ; $58e0: $84
	nop                                              ; $58e1: $00
	add  c                                           ; $58e2: $81
	rst  $38                                         ; $58e3: $ff
	add  h                                           ; $58e4: $84
	nop                                              ; $58e5: $00
	nop                                              ; $58e6: $00
	rst  $38                                         ; $58e7: $ff
	add  d                                           ; $58e8: $82
	nop                                              ; $58e9: $00
	add  b                                           ; $58ea: $80
	rst  $38                                         ; $58eb: $ff
	ld   [bc], a                                     ; $58ec: $02
	cp   $81                                         ; $58ed: $fe $81
	add  b                                           ; $58ef: $80
	add  h                                           ; $58f0: $84
	nop                                              ; $58f1: $00
	inc  b                                           ; $58f2: $04
	rst  $38                                         ; $58f3: $ff
	nop                                              ; $58f4: $00
	dec  e                                           ; $58f5: $1d
	nop                                              ; $58f6: $00
	inc  hl                                          ; $58f7: $23
	add  b                                           ; $58f8: $80
	add  b                                           ; $58f9: $80
	inc  bc                                          ; $58fa: $03
	nop                                              ; $58fb: $00
	add  b                                           ; $58fc: $80
	nop                                              ; $58fd: $00
	ld   a, $83                                      ; $58fe: $3e $83
	nop                                              ; $5900: $00
	ld   [$00be], sp                                 ; $5901: $08 $be $00
	call $0f00                                       ; $5904: $cd $00 $0f
	nop                                              ; $5907: $00
	ld   [bc], a                                     ; $5908: $02
	nop                                              ; $5909: $00
	add  b                                           ; $590a: $80
	add  c                                           ; $590b: $81
	nop                                              ; $590c: $00
	nop                                              ; $590d: $00
	ld   b, b                                        ; $590e: $40
	add  c                                           ; $590f: $81
	nop                                              ; $5910: $00
	inc  b                                           ; $5911: $04
	ldh  [rP1], a                                    ; $5912: $e0 $00
	ld   l, $00                                      ; $5914: $2e $00
	dec  c                                           ; $5916: $0d
	add  a                                           ; $5917: $87
	nop                                              ; $5918: $00
	nop                                              ; $5919: $00
	dec  c                                           ; $591a: $0d
	add  c                                           ; $591b: $81
	nop                                              ; $591c: $00
	inc  bc                                          ; $591d: $03
	ldh  a, [rP1]                                    ; $591e: $f0 $00
	db   $fd                                         ; $5920: $fd
	nop                                              ; $5921: $00
	add  h                                           ; $5922: $84
	ld   [hl], b                                     ; $5923: $70
	add  b                                           ; $5924: $80
	nop                                              ; $5925: $00
	nop                                              ; $5926: $00
	db   $fd                                         ; $5927: $fd
	add  e                                           ; $5928: $83
	nop                                              ; $5929: $00
	ld   bc, $00fc                                   ; $592a: $01 $fc $00
	add  h                                           ; $592d: $84
	ld   [hl], b                                     ; $592e: $70
	add  b                                           ; $592f: $80
	nop                                              ; $5930: $00
	nop                                              ; $5931: $00
	db   $fc                                         ; $5932: $fc
	add  e                                           ; $5933: $83
	nop                                              ; $5934: $00
	ld   bc, $00f7                                   ; $5935: $01 $f7 $00
	add  d                                           ; $5938: $82
	ld   h, d                                        ; $5939: $62
	add  b                                           ; $593a: $80
	ld   h, b                                        ; $593b: $60
	ld   [bc], a                                     ; $593c: $02
	rlca                                             ; $593d: $07
	nop                                              ; $593e: $00
	ldh  a, [$80]                                    ; $593f: $f0 $80
	nop                                              ; $5941: $00
	add  b                                           ; $5942: $80
	ld   b, c                                        ; $5943: $41
	ld   [bc], a                                     ; $5944: $02
	nop                                              ; $5945: $00
	halt                                             ; $5946: $76
	nop                                              ; $5947: $00
	add  b                                           ; $5948: $80
	jr   nz, jr_072_594d                             ; $5949: $20 $02

	ld   b, $00                                      ; $594b: $06 $00

jr_072_594d:
	ld   [hl], b                                     ; $594d: $70
	add  b                                           ; $594e: $80
	nop                                              ; $594f: $00
	add  b                                           ; $5950: $80
	inc  b                                           ; $5951: $04
	add  c                                           ; $5952: $81
	add  h                                           ; $5953: $84
	nop                                              ; $5954: $00
	ldh  [c], a                                      ; $5955: $e2
	add  c                                           ; $5956: $81
	jr   jr_072_58d9                                 ; $5957: $18 $80

	nop                                              ; $5959: $00
	nop                                              ; $595a: $00
	ld   a, [hl]                                     ; $595b: $7e
	adc  b                                           ; $595c: $88
	nop                                              ; $595d: $00
	add  b                                           ; $595e: $80
	ldh  [$80], a                                    ; $595f: $e0 $80
	ret  nz                                          ; $5961: $c0

	add  b                                           ; $5962: $80
	ldh  [$80], a                                    ; $5963: $e0 $80
	ret  nz                                          ; $5965: $c0

	add  b                                           ; $5966: $80
	ldh  [$80], a                                    ; $5967: $e0 $80
	ret  nz                                          ; $5969: $c0

	add  b                                           ; $596a: $80
	ldh  [$80], a                                    ; $596b: $e0 $80
	ret  nz                                          ; $596d: $c0

	dec  b                                           ; $596e: $05
	ld   [hl], b                                     ; $596f: $70
	ld   [hl], c                                     ; $5970: $71
	ld   h, b                                        ; $5971: $60
	ld   h, c                                        ; $5972: $61
	ld   [hl], c                                     ; $5973: $71
	ld   [hl], b                                     ; $5974: $70
	add  b                                           ; $5975: $80
	ld   h, b                                        ; $5976: $60
	ld   bc, $7170                                   ; $5977: $01 $70 $71
	add  b                                           ; $597a: $80
	ld   h, b                                        ; $597b: $60
	add  b                                           ; $597c: $80
	ld   [hl], b                                     ; $597d: $70
	add  b                                           ; $597e: $80
	ld   h, b                                        ; $597f: $60
	ld   [bc], a                                     ; $5980: $02
	inc  bc                                          ; $5981: $03
	sub  a                                           ; $5982: $97
	dec  bc                                          ; $5983: $0b
	add  b                                           ; $5984: $80
	sbc  a                                           ; $5985: $9f
	add  d                                           ; $5986: $82
	dec  bc                                          ; $5987: $0b
	nop                                              ; $5988: $00
	sbc  a                                           ; $5989: $9f
	add  h                                           ; $598a: $84
	inc  bc                                          ; $598b: $03
	dec  b                                           ; $598c: $05
	nop                                              ; $598d: $00
	dec  b                                           ; $598e: $05
	add  b                                           ; $598f: $80
	add  l                                           ; $5990: $85
	rlca                                             ; $5991: $07
	ld   [bc], a                                     ; $5992: $02
	add  b                                           ; $5993: $80
	add  d                                           ; $5994: $82
	ld   bc, $0702                                   ; $5995: $01 $02 $07
	add  b                                           ; $5998: $80
	add  b                                           ; $5999: $80
	add  b                                           ; $599a: $80
	nop                                              ; $599b: $00
	add  b                                           ; $599c: $80
	add  b                                           ; $599d: $80
	dec  b                                           ; $599e: $05
	nop                                              ; $599f: $00
	ld   b, b                                        ; $59a0: $40
	ld   bc, $e041                                   ; $59a1: $01 $41 $e0
	ld   b, b                                        ; $59a4: $40
	add  b                                           ; $59a5: $80
	ld   b, c                                        ; $59a6: $41
	ld   bc, $e040                                   ; $59a7: $01 $40 $e0
	add  b                                           ; $59aa: $80
	ld   bc, $0080                                   ; $59ab: $01 $80 $00
	add  b                                           ; $59ae: $80
	ld   bc, $c002                                   ; $59af: $01 $02 $c0
	jp   hl                                          ; $59b2: $e9


	ret  nc                                          ; $59b3: $d0

	add  b                                           ; $59b4: $80
	ld   sp, hl                                      ; $59b5: $f9
	add  d                                           ; $59b6: $82
	ret  nc                                          ; $59b7: $d0

	nop                                              ; $59b8: $00
	ld   sp, hl                                      ; $59b9: $f9
	add  b                                           ; $59ba: $80
	ret  nz                                          ; $59bb: $c0

	add  d                                           ; $59bc: $82
	add  b                                           ; $59bd: $80
	dec  b                                           ; $59be: $05
	ld   c, $8e                                      ; $59bf: $0e $8e
	ld   b, $86                                      ; $59c1: $06 $86
	adc  [hl]                                        ; $59c3: $8e
	ld   c, $80                                      ; $59c4: $0e $80
	ld   b, $01                                      ; $59c6: $06 $01
	ld   c, $8e                                      ; $59c8: $0e $8e
	add  b                                           ; $59ca: $80
	ld   b, $80                                      ; $59cb: $06 $80
	ld   c, $80                                      ; $59cd: $0e $80
	ld   b, $80                                      ; $59cf: $06 $80
	rlca                                             ; $59d1: $07
	add  b                                           ; $59d2: $80
	inc  bc                                          ; $59d3: $03
	add  b                                           ; $59d4: $80
	rlca                                             ; $59d5: $07
	add  b                                           ; $59d6: $80
	inc  bc                                          ; $59d7: $03
	add  b                                           ; $59d8: $80
	rlca                                             ; $59d9: $07
	add  b                                           ; $59da: $80
	inc  bc                                          ; $59db: $03
	add  b                                           ; $59dc: $80
	rlca                                             ; $59dd: $07
	ld   bc, $6503                                   ; $59de: $01 $03 $65
	add  c                                           ; $59e1: $81
	jr   @-$7e                                       ; $59e2: $18 $80

	nop                                              ; $59e4: $00
	nop                                              ; $59e5: $00
	ld   a, [hl]                                     ; $59e6: $7e
	add  a                                           ; $59e7: $87
	nop                                              ; $59e8: $00
	inc  bc                                          ; $59e9: $03
	sbc  $00                                         ; $59ea: $de $00
	ld   de, $8020                                   ; $59ec: $11 $20 $80
	nop                                              ; $59ef: $00
	nop                                              ; $59f0: $00
	add  sp, -$7f                                    ; $59f1: $e8 $81
	nop                                              ; $59f3: $00
	nop                                              ; $59f4: $00
	inc  b                                           ; $59f5: $04
	add  c                                           ; $59f6: $81
	nop                                              ; $59f7: $00
	ld   [bc], a                                     ; $59f8: $02
	ld   [bc], a                                     ; $59f9: $02
	nop                                              ; $59fa: $00
	pop  af                                          ; $59fb: $f1
	add  a                                           ; $59fc: $87
	nop                                              ; $59fd: $00
	nop                                              ; $59fe: $00
	inc  b                                           ; $59ff: $04
	add  c                                           ; $5a00: $81
	nop                                              ; $5a01: $00
	ld   [bc], a                                     ; $5a02: $02
	inc  b                                           ; $5a03: $04
	nop                                              ; $5a04: $00
	ldh  a, [$80]                                    ; $5a05: $f0 $80
	ld   e, $80                                      ; $5a07: $1e $80
	ld   c, $80                                      ; $5a09: $0e $80
	ld   e, $80                                      ; $5a0b: $1e $80
	ld   c, $80                                      ; $5a0d: $0e $80
	ld   e, $80                                      ; $5a0f: $1e $80
	ld   c, $80                                      ; $5a11: $0e $80
	ld   e, $80                                      ; $5a13: $1e $80
	ld   c, $80                                      ; $5a15: $0e $80
	ld   bc, $0080                                   ; $5a17: $01 $80 $00
	add  b                                           ; $5a1a: $80
	ld   bc, $0081                                   ; $5a1b: $01 $81 $00
	nop                                              ; $5a1e: $00
	inc  bc                                          ; $5a1f: $03
	add  c                                           ; $5a20: $81
	nop                                              ; $5a21: $00
	nop                                              ; $5a22: $00
	inc  bc                                          ; $5a23: $03
	add  b                                           ; $5a24: $80
	nop                                              ; $5a25: $00
	add  b                                           ; $5a26: $80
	ret  nz                                          ; $5a27: $c0

	dec  c                                           ; $5a28: $0d
	pop  bc                                          ; $5a29: $c1
	ret                                              ; $5a2a: $c9


	ret  nz                                          ; $5a2b: $c0

	ld   b, b                                        ; $5a2c: $40
	ld   b, c                                        ; $5a2d: $41
	add  hl, bc                                      ; $5a2e: $09
	nop                                              ; $5a2f: $00
	call nz, $0901                                   ; $5a30: $c4 $01 $09
	nop                                              ; $5a33: $00
	ld   [de], a                                     ; $5a34: $12
	nop                                              ; $5a35: $00
	ld   e, $81                                      ; $5a36: $1e $81
	add  h                                           ; $5a38: $84
	nop                                              ; $5a39: $00
	add  a                                           ; $5a3a: $87
	add  a                                           ; $5a3b: $87
	add  h                                           ; $5a3c: $84
	ld   a, [bc]                                     ; $5a3d: $0a
	sbc  h                                           ; $5a3e: $9c
	add  h                                           ; $5a3f: $84
	sbc  a                                           ; $5a40: $9f
	inc  bc                                          ; $5a41: $03
	nop                                              ; $5a42: $00
	inc  bc                                          ; $5a43: $03
	ldh  a, [rIF]                                    ; $5a44: $f0 $0f
	nop                                              ; $5a46: $00
	ccf                                              ; $5a47: $3f
	ret  nz                                          ; $5a48: $c0

jr_072_5a49:
	add  b                                           ; $5a49: $80
	cp   $01                                         ; $5a4a: $fe $01
	nop                                              ; $5a4c: $00
	cp   $81                                         ; $5a4d: $fe $81
	nop                                              ; $5a4f: $00
	ld   [$fffe], sp                                 ; $5a50: $08 $fe $ff
	nop                                              ; $5a53: $00
	rst  $38                                         ; $5a54: $ff
	nop                                              ; $5a55: $00
	rst  $38                                         ; $5a56: $ff
	ld   b, b                                        ; $5a57: $40
	cp   a                                           ; $5a58: $bf
	nop                                              ; $5a59: $00
	add  b                                           ; $5a5a: $80
	cp   a                                           ; $5a5b: $bf
	ld   bc, $af00                                   ; $5a5c: $01 $00 $af

Call_072_5a5f:
	add  c                                           ; $5a5f: $81
	nop                                              ; $5a60: $00
	ld   [$7faf], sp                                 ; $5a61: $08 $af $7f
	nop                                              ; $5a64: $00
	ld   a, a                                        ; $5a65: $7f
	nop                                              ; $5a66: $00
	ld   a, a                                        ; $5a67: $7f
	add  b                                           ; $5a68: $80
	rst  $38                                         ; $5a69: $ff
	nop                                              ; $5a6a: $00
	add  b                                           ; $5a6b: $80
	rst  $38                                         ; $5a6c: $ff
	ld   [bc], a                                     ; $5a6d: $02
	nop                                              ; $5a6e: $00
	db   $fc                                         ; $5a6f: $fc
	inc  bc                                          ; $5a70: $03
	add  b                                           ; $5a71: $80
	inc  c                                           ; $5a72: $0c
	jr   @+$01                                       ; $5a73: $18 $ff

	db   $eb                                         ; $5a75: $eb
	nop                                              ; $5a76: $00
	db   $eb                                         ; $5a77: $eb
	nop                                              ; $5a78: $00
	db   $eb                                         ; $5a79: $eb
	inc  d                                           ; $5a7a: $14
	rst  $38                                         ; $5a7b: $ff
	nop                                              ; $5a7c: $00
	di                                               ; $5a7d: $f3
	rst  $30                                         ; $5a7e: $f7
	nop                                              ; $5a7f: $00
	di                                               ; $5a80: $f3
	nop                                              ; $5a81: $00
	jr   jr_072_5a90                                 ; $5a82: $18 $0c

	db   $e3                                         ; $5a84: $e3
	rst  $38                                         ; $5a85: $ff
	nop                                              ; $5a86: $00
	rst  $38                                         ; $5a87: $ff
	nop                                              ; $5a88: $00
	rst  $38                                         ; $5a89: $ff
	nop                                              ; $5a8a: $00
	rst  $38                                         ; $5a8b: $ff
	nop                                              ; $5a8c: $00
	add  b                                           ; $5a8d: $80
	rst  $38                                         ; $5a8e: $ff
	dec  c                                           ; $5a8f: $0d

jr_072_5a90:
	nop                                              ; $5a90: $00
	db   $e3                                         ; $5a91: $e3
	nop                                              ; $5a92: $00
	ld   [$eb00], sp                                 ; $5a93: $08 $00 $eb
	ld   a, a                                        ; $5a96: $7f
	nop                                              ; $5a97: $00
	ld   a, a                                        ; $5a98: $7f
	nop                                              ; $5a99: $00
	rst  $38                                         ; $5a9a: $ff
	nop                                              ; $5a9b: $00
	rst  $38                                         ; $5a9c: $ff
	nop                                              ; $5a9d: $00
	add  b                                           ; $5a9e: $80
	rst  $30                                         ; $5a9f: $f7
	ld   bc, $f700                                   ; $5aa0: $01 $00 $f7
	add  c                                           ; $5aa3: $81
	nop                                              ; $5aa4: $00
	ld   [$bdf7], sp                                 ; $5aa5: $08 $f7 $bd
	ld   c, b                                        ; $5aa8: $48
	push af                                          ; $5aa9: $f5
	nop                                              ; $5aaa: $00
	push af                                          ; $5aab: $f5
	ld   a, [bc]                                     ; $5aac: $0a
	rst  $38                                         ; $5aad: $ff
	nop                                              ; $5aae: $00
	add  b                                           ; $5aaf: $80
	rst  $38                                         ; $5ab0: $ff
	ld   bc, $c900                                   ; $5ab1: $01 $00 $c9
	add  c                                           ; $5ab4: $81
	nop                                              ; $5ab5: $00
	ld   [$ffc9], sp                                 ; $5ab6: $08 $c9 $ff
	nop                                              ; $5ab9: $00
	rst  $38                                         ; $5aba: $ff
	nop                                              ; $5abb: $00
	rst  $38                                         ; $5abc: $ff
	nop                                              ; $5abd: $00
	rst  $38                                         ; $5abe: $ff
	nop                                              ; $5abf: $00
	add  b                                           ; $5ac0: $80
	rst  $38                                         ; $5ac1: $ff
	ld   [bc], a                                     ; $5ac2: $02
	nop                                              ; $5ac3: $00
	ccf                                              ; $5ac4: $3f
	ret  nz                                          ; $5ac5: $c0

	add  b                                           ; $5ac6: $80
	jr   nc, jr_072_5a49                             ; $5ac7: $30 $80

	rst  $38                                         ; $5ac9: $ff
	ld   b, $00                                      ; $5aca: $06 $00
	rst  $38                                         ; $5acc: $ff
	nop                                              ; $5acd: $00

jr_072_5ace:
	rst  $38                                         ; $5ace: $ff
	nop                                              ; $5acf: $00
	rst  $38                                         ; $5ad0: $ff
	nop                                              ; $5ad1: $00
	add  b                                           ; $5ad2: $80
	rst  $38                                         ; $5ad3: $ff
	ld   bc, $c300                                   ; $5ad4: $01 $00 $c3
	add  c                                           ; $5ad7: $81
	nop                                              ; $5ad8: $00
	ld   [$c0c3], sp                                 ; $5ad9: $08 $c3 $c0
	jr   nc, jr_072_5ace                             ; $5adc: $30 $f0

	inc  bc                                          ; $5ade: $03
	db   $fc                                         ; $5adf: $fc
	nop                                              ; $5ae0: $00
	rst  $38                                         ; $5ae1: $ff
	nop                                              ; $5ae2: $00
	add  b                                           ; $5ae3: $80
	rst  $38                                         ; $5ae4: $ff
	ld   bc, $ff00                                   ; $5ae5: $01 $00 $ff
	add  c                                           ; $5ae8: $81
	nop                                              ; $5ae9: $00
	inc  b                                           ; $5aea: $04
	cp   $00                                         ; $5aeb: $fe $00
	ld   bc, $ff00                                   ; $5aed: $01 $00 $ff
	add  c                                           ; $5af0: $81
	nop                                              ; $5af1: $00
	nop                                              ; $5af2: $00
	call nz, $c080                                   ; $5af3: $c4 $80 $c0
	ld   bc, $d000                                   ; $5af6: $01 $00 $d0
	add  c                                           ; $5af9: $81
	nop                                              ; $5afa: $00
	nop                                              ; $5afb: $00
	dec  de                                          ; $5afc: $1b
	add  b                                           ; $5afd: $80
	inc  b                                           ; $5afe: $04
	add  c                                           ; $5aff: $81
	ld   b, $01                                      ; $5b00: $06 $01
	ld   c, $0f                                      ; $5b02: $0e $0f
	add  d                                           ; $5b04: $82
	rlca                                             ; $5b05: $07
	inc  b                                           ; $5b06: $04
	rrca                                             ; $5b07: $0f
	dec  bc                                          ; $5b08: $0b
	rrca                                             ; $5b09: $0f
	inc  c                                           ; $5b0a: $0c
	ldh  a, [$80]                                    ; $5b0b: $f0 $80
	ld   e, $80                                      ; $5b0d: $1e $80
	ld   c, $07                                      ; $5b0f: $0e $07
	ld   e, $df                                      ; $5b11: $1e $df
	ld   c, $cf                                      ; $5b13: $0e $cf
	nop                                              ; $5b15: $00
	rst  $38                                         ; $5b16: $ff
	nop                                              ; $5b17: $00
	rst  $38                                         ; $5b18: $ff
	add  d                                           ; $5b19: $82
	nop                                              ; $5b1a: $00
	add  b                                           ; $5b1b: $80
	ld   bc, $030a                                   ; $5b1c: $01 $0a $03
	dec  bc                                          ; $5b1f: $0b
	inc  bc                                          ; $5b20: $03
	ei                                               ; $5b21: $fb
	nop                                              ; $5b22: $00
	rst  $38                                         ; $5b23: $ff
	rlca                                             ; $5b24: $07
	ld   hl, sp+$00                                  ; $5b25: $f8 $00
	pop  af                                          ; $5b27: $f1
	inc  bc                                          ; $5b28: $03
	add  b                                           ; $5b29: $80
	dec  de                                          ; $5b2a: $1b
	ld   bc, $8018                                   ; $5b2b: $01 $18 $80
	add  b                                           ; $5b2e: $80
	ret  nz                                          ; $5b2f: $c0

	db   $10                                         ; $5b30: $10
	xor  h                                           ; $5b31: $ac
	ld   h, b                                        ; $5b32: $60
	ld   [hl], b                                     ; $5b33: $70
	ldh  [$f8], a                                    ; $5b34: $e0 $f8
	ldh  a, [$e0]                                    ; $5b36: $f0 $e0
	ldh  a, [$fe]                                    ; $5b38: $f0 $fe
	ldh  a, [$ed]                                    ; $5b3a: $f0 $ed
	db   $fd                                         ; $5b3c: $fd
	dec  sp                                          ; $5b3d: $3b
	inc  e                                           ; $5b3e: $1c
	inc  b                                           ; $5b3f: $04
	db   $fc                                         ; $5b40: $fc
	inc  e                                           ; $5b41: $1c
	add  e                                           ; $5b42: $83
	db   $fc                                         ; $5b43: $fc
	ld   b, $e0                                      ; $5b44: $06 $e0
	ld   hl, sp-$80                                  ; $5b46: $f8 $80
	ld   hl, sp+$15                                  ; $5b48: $f8 $15
	push af                                          ; $5b4a: $f5
	add  b                                           ; $5b4b: $80
	adc  d                                           ; $5b4c: $8a
	nop                                              ; $5b4d: $00
	dec  b                                           ; $5b4e: $05
	inc  bc                                          ; $5b4f: $03
	nop                                              ; $5b50: $00
	rrca                                             ; $5b51: $0f
	inc  e                                           ; $5b52: $1c
	nop                                              ; $5b53: $00
	db   $10                                         ; $5b54: $10
	add  b                                           ; $5b55: $80
	nop                                              ; $5b56: $00
	add  b                                           ; $5b57: $80
	inc  bc                                          ; $5b58: $03
	add  hl, bc                                      ; $5b59: $09
	inc  c                                           ; $5b5a: $0c
	add  hl, bc                                      ; $5b5b: $09
	dec  [hl]                                        ; $5b5c: $35
	ld   a, [bc]                                     ; $5b5d: $0a
	ld   a, [$ff0f]                                  ; $5b5e: $fa $0f $ff
	adc  l                                           ; $5b61: $8d
	rst  $38                                         ; $5b62: $ff
	ld   b, d                                        ; $5b63: $42
	add  b                                           ; $5b64: $80
	jr   nc, @-$7e                                   ; $5b65: $30 $80

	ret  nz                                          ; $5b67: $c0

	nop                                              ; $5b68: $00
	nop                                              ; $5b69: $00
	add  b                                           ; $5b6a: $80
	add  b                                           ; $5b6b: $80
	add  b                                           ; $5b6c: $80
	ld   d, b                                        ; $5b6d: $50
	add  b                                           ; $5b6e: $80
	xor  d                                           ; $5b6f: $aa
	dec  b                                           ; $5b70: $05
	inc  e                                           ; $5b71: $1c
	dec  e                                           ; $5b72: $1d
	xor  [hl]                                        ; $5b73: $ae
	xor  a                                           ; $5b74: $af
	jr   nc, jr_072_5b85                             ; $5b75: $30 $0e

	add  b                                           ; $5b77: $80
	db   $10                                         ; $5b78: $10
	add  d                                           ; $5b79: $82
	ld   a, [de]                                     ; $5b7a: $1a
	add  b                                           ; $5b7b: $80
	nop                                              ; $5b7c: $00
	ld   bc, $b898                                   ; $5b7d: $01 $98 $b8
	add  b                                           ; $5b80: $80
	ld   e, c                                        ; $5b81: $59
	add  b                                           ; $5b82: $80
	ldh  [$0c], a                                    ; $5b83: $e0 $0c

jr_072_5b85:
	ld   e, $00                                      ; $5b85: $1e $00
	inc  e                                           ; $5b87: $1c
	jr   jr_072_5bc4                                 ; $5b88: $18 $3a

	inc  a                                           ; $5b8a: $3c
	db   $fc                                         ; $5b8b: $fc

jr_072_5b8c:
	inc  b                                           ; $5b8c: $04
	ld   b, l                                        ; $5b8d: $45
	dec  b                                           ; $5b8e: $05
	inc  b                                           ; $5b8f: $04
	inc  e                                           ; $5b90: $1c
	ld   e, l                                        ; $5b91: $5d
	add  b                                           ; $5b92: $80
	add  hl, de                                      ; $5b93: $19
	ld   bc, $e41b                                   ; $5b94: $01 $1b $e4
	add  e                                           ; $5b97: $83
	nop                                              ; $5b98: $00
	add  b                                           ; $5b99: $80
	and  d                                           ; $5b9a: $a2
	add  b                                           ; $5b9b: $80
	ld   de, $aa80                                   ; $5b9c: $11 $80 $aa
	ld   bc, $f575                                   ; $5b9f: $01 $75 $f5
	add  b                                           ; $5ba2: $80
	rst  $38                                         ; $5ba3: $ff
	nop                                              ; $5ba4: $00
	or   [hl]                                        ; $5ba5: $b6
	add  e                                           ; $5ba6: $83
	nop                                              ; $5ba7: $00
	ld   bc, $88be                                   ; $5ba8: $01 $be $88
	add  b                                           ; $5bab: $80
	dec  b                                           ; $5bac: $05
	add  b                                           ; $5bad: $80
	xor  [hl]                                        ; $5bae: $ae
	add  b                                           ; $5baf: $80
	ld   b, l                                        ; $5bb0: $45
	add  b                                           ; $5bb1: $80
	xor  a                                           ; $5bb2: $af
	nop                                              ; $5bb3: $00
	nop                                              ; $5bb4: $00
	add  b                                           ; $5bb5: $80
	inc  c                                           ; $5bb6: $0c
	ld   [bc], a                                     ; $5bb7: $02
	inc  bc                                          ; $5bb8: $03
	ld   b, $05                                      ; $5bb9: $06 $05
	add  b                                           ; $5bbb: $80
	ld   l, $80                                      ; $5bbc: $2e $80
	dec  d                                           ; $5bbe: $15
	add  b                                           ; $5bbf: $80
	xor  e                                           ; $5bc0: $ab
	rrca                                             ; $5bc1: $0f
	ld   c, a                                        ; $5bc2: $4f
	ld   e, a                                        ; $5bc3: $5f

jr_072_5bc4:
	rst  $20                                         ; $5bc4: $e7
	cp   $35                                         ; $5bc5: $fe $35
	nop                                              ; $5bc7: $00
	inc  h                                           ; $5bc8: $24
	nop                                              ; $5bc9: $00
	jr   jr_072_5b8c                                 ; $5bca: $18 $c0

	db   $10                                         ; $5bcc: $10
	add  sp, -$56                                    ; $5bcd: $e8 $aa
	db   $ec                                         ; $5bcf: $ec
	ld   h, a                                        ; $5bd0: $67
	and  $80                                         ; $5bd1: $e6 $80
	rst  $20                                         ; $5bd3: $e7
	add  b                                           ; $5bd4: $80
	nop                                              ; $5bd5: $00
	nop                                              ; $5bd6: $00
	rst  $38                                         ; $5bd7: $ff
	adc  c                                           ; $5bd8: $89
	nop                                              ; $5bd9: $00
	ld   b, $80                                      ; $5bda: $06 $80
	ld   b, b                                        ; $5bdc: $40
	nop                                              ; $5bdd: $00
	ld   [hl], b                                     ; $5bde: $70
	and  h                                           ; $5bdf: $a4
	nop                                              ; $5be0: $00
	inc  d                                           ; $5be1: $14
	add  e                                           ; $5be2: $83
	nop                                              ; $5be3: $00
	ld   [bc], a                                     ; $5be4: $02
	rlca                                             ; $5be5: $07
	nop                                              ; $5be6: $00
	rlca                                             ; $5be7: $07
	add  e                                           ; $5be8: $83
	nop                                              ; $5be9: $00
	ld   bc, $0c03                                   ; $5bea: $01 $03 $0c
	add  b                                           ; $5bed: $80
	dec  c                                           ; $5bee: $0d
	ld   bc, $0d0c                                   ; $5bef: $01 $0c $0d
	add  c                                           ; $5bf2: $81
	ld   bc, $0d81                                   ; $5bf3: $01 $81 $0d
	add  hl, bc                                      ; $5bf6: $09
	inc  c                                           ; $5bf7: $0c
	dec  c                                           ; $5bf8: $0d
	inc  c                                           ; $5bf9: $0c
	dec  c                                           ; $5bfa: $0d
	rst  $30                                         ; $5bfb: $f7
	ld   a, [bc]                                     ; $5bfc: $0a
	ldh  [$ea], a                                    ; $5bfd: $e0 $ea
	ld   l, d                                        ; $5bff: $6a
	ldh  [$80], a                                    ; $5c00: $e0 $80
	ld   [$e000], a                                  ; $5c02: $ea $00 $e0
	add  c                                           ; $5c05: $81
	ld   [$0a1c], a                                  ; $5c06: $ea $1c $0a
	adc  e                                           ; $5c09: $8b
	dec  bc                                          ; $5c0a: $0b
	ld   a, [$fb1b]                                  ; $5c0b: $fa $1b $fb
	sbc  e                                           ; $5c0e: $9b
	ei                                               ; $5c0f: $fb
	ld   a, [$e3fb]                                  ; $5c10: $fa $fb $e3
	ei                                               ; $5c13: $fb
	add  e                                           ; $5c14: $83
	ei                                               ; $5c15: $fb
	dec  de                                          ; $5c16: $1b
	ld   h, e                                        ; $5c17: $63
	ld   a, e                                        ; $5c18: $7b
	sbc  b                                           ; $5c19: $98
	rst  $38                                         ; $5c1a: $ff
	ld   a, l                                        ; $5c1b: $7d
	cpl                                              ; $5c1c: $2f
	db   $fd                                         ; $5c1d: $fd
	db   $ed                                         ; $5c1e: $ed
	db   $fd                                         ; $5c1f: $fd
	ld   l, l                                        ; $5c20: $6d
	db   $fd                                         ; $5c21: $fd
	ld   hl, $fff1                                   ; $5c22: $21 $f1 $ff
	add  b                                           ; $5c25: $80
	db   $e3                                         ; $5c26: $e3
	add  b                                           ; $5c27: $80
	rst  $38                                         ; $5c28: $ff
	ld   d, l                                        ; $5c29: $55
	ld   a, a                                        ; $5c2a: $7f
	db   $fc                                         ; $5c2b: $fc
	ld   a, a                                        ; $5c2c: $7f
	ld   h, $fa                                      ; $5c2d: $26 $fa
	rrca                                             ; $5c2f: $0f
	rst  $38                                         ; $5c30: $ff
	inc  b                                           ; $5c31: $04
	rst  $38                                         ; $5c32: $ff
	ld   [$5cff], sp                                 ; $5c33: $08 $ff $5c
	rst  $38                                         ; $5c36: $ff
	rst  JumpTable                                         ; $5c37: $df
	rst  $38                                         ; $5c38: $ff
	ld   c, $ff                                      ; $5c39: $0e $ff
	reti                                             ; $5c3b: $d9


	rst  $38                                         ; $5c3c: $ff
	add  [hl]                                        ; $5c3d: $86
	cp   a                                           ; $5c3e: $bf
	ld   [$31ff], sp                                 ; $5c3f: $08 $ff $31
	rst  $38                                         ; $5c42: $ff
	rst  ToBoot                                         ; $5c43: $c7
	rst  $38                                         ; $5c44: $ff
	rrca                                             ; $5c45: $0f
	rst  $38                                         ; $5c46: $ff
	cp   [hl]                                        ; $5c47: $be
	rst  $38                                         ; $5c48: $ff
	ld   a, h                                        ; $5c49: $7c
	rst  $38                                         ; $5c4a: $ff
	ld   sp, hl                                      ; $5c4b: $f9
	rst  $38                                         ; $5c4c: $ff
	rlca                                             ; $5c4d: $07
	rst  $38                                         ; $5c4e: $ff
	cp   e                                           ; $5c4f: $bb
	cp   $16                                         ; $5c50: $fe $16
	db   $fc                                         ; $5c52: $fc
	call $60fe                                       ; $5c53: $cd $fe $60
	cp   $bf                                         ; $5c56: $fe $bf
	cp   $1c                                         ; $5c58: $fe $1c
	db   $fc                                         ; $5c5a: $fc
	adc  b                                           ; $5c5b: $88
	ld   hl, sp-$12                                  ; $5c5c: $f8 $ee
	rst  $38                                         ; $5c5e: $ff
	pop  bc                                          ; $5c5f: $c1
	ccf                                              ; $5c60: $3f
	dec  sp                                          ; $5c61: $3b
	ccf                                              ; $5c62: $3f
	or   e                                           ; $5c63: $b3
	ccf                                              ; $5c64: $3f
	jr   z, jr_072_5ca6                              ; $5c65: $28 $3f

	xor  [hl]                                        ; $5c67: $ae
	rrca                                             ; $5c68: $0f
	add  h                                           ; $5c69: $84
	rlca                                             ; $5c6a: $07
	add  e                                           ; $5c6b: $83
	inc  de                                          ; $5c6c: $13
	rrca                                             ; $5c6d: $0f
	db   $fd                                         ; $5c6e: $fd
	db   $dd                                         ; $5c6f: $dd
	db   $fd                                         ; $5c70: $fd
	ldh  [$e1], a                                    ; $5c71: $e0 $e1
	sub  l                                           ; $5c73: $95
	db   $eb                                         ; $5c74: $eb
	ld   l, [hl]                                     ; $5c75: $6e
	jp   hl                                          ; $5c76: $e9


	sub  a                                           ; $5c77: $97
	rst  $28                                         ; $5c78: $ef
	push bc                                          ; $5c79: $c5
	rst  $38                                         ; $5c7a: $ff
	ld   a, h                                        ; $5c7b: $7c
	rst  $38                                         ; $5c7c: $ff
	ld   a, [hl-]                                    ; $5c7d: $3a
	dec  de                                          ; $5c7e: $1b
	ret  c                                           ; $5c7f: $d8

	add  b                                           ; $5c80: $80
	dec  de                                          ; $5c81: $1b
	inc  a                                           ; $5c82: $3c
	inc  bc                                          ; $5c83: $03
	dec  de                                          ; $5c84: $1b
	daa                                              ; $5c85: $27
	rst  JumpTable                                         ; $5c86: $df
	daa                                              ; $5c87: $27
	ei                                               ; $5c88: $fb
	ccf                                              ; $5c89: $3f
	db   $d3                                         ; $5c8a: $d3
	rst  $38                                         ; $5c8b: $ff
	adc  a                                           ; $5c8c: $8f
	rst  $38                                         ; $5c8d: $ff
	ret  nc                                          ; $5c8e: $d0

	rst  $38                                         ; $5c8f: $ff
	cp   $ff                                         ; $5c90: $fe $ff
	db   $fc                                         ; $5c92: $fc
	rst  $38                                         ; $5c93: $ff
	ld   a, [$8bff]                                  ; $5c94: $fa $ff $8b
	rst  $38                                         ; $5c97: $ff
	cp   a                                           ; $5c98: $bf
	rst  $38                                         ; $5c99: $ff
	sub  a                                           ; $5c9a: $97
	rst  $38                                         ; $5c9b: $ff
	and  a                                           ; $5c9c: $a7
	rst  $38                                         ; $5c9d: $ff
	db   $f4                                         ; $5c9e: $f4
	rst  $38                                         ; $5c9f: $ff
	db   $fd                                         ; $5ca0: $fd
	rst  $38                                         ; $5ca1: $ff
	ld   a, [hl-]                                    ; $5ca2: $3a
	rst  $38                                         ; $5ca3: $ff
	db   $fd                                         ; $5ca4: $fd
	rst  $38                                         ; $5ca5: $ff

jr_072_5ca6:
	jp   $b4ff                                       ; $5ca6: $c3 $ff $b4


	rst  $38                                         ; $5ca9: $ff
	db   $e3                                         ; $5caa: $e3
	rst  $38                                         ; $5cab: $ff
	and  $ff                                         ; $5cac: $e6 $ff
	ld   a, [bc]                                     ; $5cae: $0a
	rst  $38                                         ; $5caf: $ff
	ld   e, c                                        ; $5cb0: $59
	cp   $be                                         ; $5cb1: $fe $be
	cp   $ce                                         ; $5cb3: $fe $ce
	cp   $e2                                         ; $5cb5: $fe $e2
	cp   $fa                                         ; $5cb7: $fe $fa
	cp   $f2                                         ; $5cb9: $fe $f2
	cp   $7c                                         ; $5cbb: $fe $7c
	rst  $38                                         ; $5cbd: $ff
	ld   a, d                                        ; $5cbe: $7a
	rst  $20                                         ; $5cbf: $e7
	add  b                                           ; $5cc0: $80
	inc  h                                           ; $5cc1: $24
	inc  b                                           ; $5cc2: $04
	ld   e, d                                        ; $5cc3: $5a
	nop                                              ; $5cc4: $00
	add  c                                           ; $5cc5: $81
	nop                                              ; $5cc6: $00
	add  c                                           ; $5cc7: $81
	add  c                                           ; $5cc8: $81
	nop                                              ; $5cc9: $00
	nop                                              ; $5cca: $00
	cp   l                                           ; $5ccb: $bd
	add  b                                           ; $5ccc: $80
	pop  bc                                          ; $5ccd: $c1
	ld   de, $d2dd                                   ; $5cce: $11 $dd $d2
	ld   a, h                                        ; $5cd1: $7c
	ldh  a, [$3f]                                    ; $5cd2: $f0 $3f
	inc  a                                           ; $5cd4: $3c
	ccf                                              ; $5cd5: $3f
	rra                                              ; $5cd6: $1f
	ccf                                              ; $5cd7: $3f
	nop                                              ; $5cd8: $00
	ccf                                              ; $5cd9: $3f
	daa                                              ; $5cda: $27
	ccf                                              ; $5cdb: $3f
	add  hl, sp                                      ; $5cdc: $39
	ccf                                              ; $5cdd: $3f
	cp   $7f                                         ; $5cde: $fe $7f
	ret  nz                                          ; $5ce0: $c0

	add  d                                           ; $5ce1: $82
	nop                                              ; $5ce2: $00
	ld   a, [bc]                                     ; $5ce3: $0a
	ret  nz                                          ; $5ce4: $c0

	nop                                              ; $5ce5: $00
	ldh  a, [$30]                                    ; $5ce6: $f0 $30
	db   $fc                                         ; $5ce8: $fc
	call nc, $88ff                                   ; $5ce9: $d4 $ff $88
	rst  $38                                         ; $5cec: $ff
	sbc  a                                           ; $5ced: $9f
	rst  $38                                         ; $5cee: $ff
	add  c                                           ; $5cef: $81
	ld   [bc], a                                     ; $5cf0: $02
	add  [hl]                                        ; $5cf1: $86
	nop                                              ; $5cf2: $00
	add  b                                           ; $5cf3: $80
	dec  bc                                          ; $5cf4: $0b
	add  h                                           ; $5cf5: $84
	ld   a, [bc]                                     ; $5cf6: $0a
	add  [hl]                                        ; $5cf7: $86
	nop                                              ; $5cf8: $00
	dec  b                                           ; $5cf9: $05
	db   $fc                                         ; $5cfa: $fc
	di                                               ; $5cfb: $f3
	ldh  a, [$fc]                                    ; $5cfc: $f0 $fc
	cp   h                                           ; $5cfe: $bc
	cp   a                                           ; $5cff: $bf
	add  b                                           ; $5d00: $80
	xor  a                                           ; $5d01: $af
	add  [hl]                                        ; $5d02: $86
	nop                                              ; $5d03: $00
	ld   bc, $15ea                                   ; $5d04: $01 $ea $15
	add  b                                           ; $5d07: $80
	jp   z, $3180                                    ; $5d08: $ca $80 $31

	ld   [bc], a                                     ; $5d0b: $02
	inc  c                                           ; $5d0c: $0c
	call z, $853f                                    ; $5d0d: $cc $3f $85
	nop                                              ; $5d10: $00
	ld   bc, $55aa                                   ; $5d11: $01 $aa $55
	add  b                                           ; $5d14: $80
	xor  d                                           ; $5d15: $aa
	add  b                                           ; $5d16: $80
	ld   d, l                                        ; $5d17: $55
	add  b                                           ; $5d18: $80
	xor  d                                           ; $5d19: $aa
	ld   [$a0ff], sp                                 ; $5d1a: $08 $ff $a0
	jr   nz, jr_072_5d6f                             ; $5d1d: $20 $50

	or   b                                           ; $5d1f: $b0
	add  b                                           ; $5d20: $80
	ldh  a, [rLCDC]                                  ; $5d21: $f0 $40
	ld   d, b                                        ; $5d23: $50
	add  b                                           ; $5d24: $80
	and  b                                           ; $5d25: $a0
	inc  bc                                          ; $5d26: $03
	ld   d, b                                        ; $5d27: $50
	and  b                                           ; $5d28: $a0
	nop                                              ; $5d29: $00
	ldh  a, [$80]                                    ; $5d2a: $f0 $80
	ld   d, b                                        ; $5d2c: $50
	add  l                                           ; $5d2d: $85
	nop                                              ; $5d2e: $00
	ld   bc, $57a8                                   ; $5d2f: $01 $a8 $57
	add  b                                           ; $5d32: $80
	xor  d                                           ; $5d33: $aa
	add  b                                           ; $5d34: $80
	ld   d, l                                        ; $5d35: $55
	add  b                                           ; $5d36: $80
	xor  d                                           ; $5d37: $aa
	nop                                              ; $5d38: $00
	rst  $38                                         ; $5d39: $ff
	add  [hl]                                        ; $5d3a: $86
	nop                                              ; $5d3b: $00
	add  b                                           ; $5d3c: $80
	dec  bc                                          ; $5d3d: $0b
	add  b                                           ; $5d3e: $80
	dec  b                                           ; $5d3f: $05
	add  b                                           ; $5d40: $80
	dec  bc                                          ; $5d41: $0b
	add  b                                           ; $5d42: $80
	dec  b                                           ; $5d43: $05
	add  l                                           ; $5d44: $85
	nop                                              ; $5d45: $00
	ld   bc, $f708                                   ; $5d46: $01 $08 $f7
	add  b                                           ; $5d49: $80
	ldh  a, [c]                                      ; $5d4a: $f2
	add  b                                           ; $5d4b: $80
	push af                                          ; $5d4c: $f5
	add  b                                           ; $5d4d: $80
	ldh  a, [c]                                      ; $5d4e: $f2
	nop                                              ; $5d4f: $00
	rst  $38                                         ; $5d50: $ff
	add  l                                           ; $5d51: $85
	nop                                              ; $5d52: $00
	ld   bc, $dd22                                   ; $5d53: $01 $22 $dd
	add  b                                           ; $5d56: $80
	ld   [$5580], a                                  ; $5d57: $ea $80 $55
	add  b                                           ; $5d5a: $80
	xor  d                                           ; $5d5b: $aa
	nop                                              ; $5d5c: $00
	rst  $38                                         ; $5d5d: $ff
	add  l                                           ; $5d5e: $85
	nop                                              ; $5d5f: $00
	ld   [$1502], sp                                 ; $5d60: $08 $02 $15
	ld   [de], a                                     ; $5d63: $12
	nop                                              ; $5d64: $00
	add  a                                           ; $5d65: $87
	add  hl, bc                                      ; $5d66: $09
	ld   c, [hl]                                     ; $5d67: $4e
	ld   [bc], a                                     ; $5d68: $02
	rst  ToBoot                                         ; $5d69: $c7
	add  l                                           ; $5d6a: $85
	nop                                              ; $5d6b: $00
	ld   [$7f80], sp                                 ; $5d6c: $08 $80 $7f

jr_072_5d6f:
	cp   [hl]                                        ; $5d6f: $be
	add  b                                           ; $5d70: $80
	ld   h, e                                        ; $5d71: $63
	ld   b, c                                        ; $5d72: $41
	or   [hl]                                        ; $5d73: $b6
	xor  d                                           ; $5d74: $aa
	rst  $38                                         ; $5d75: $ff
	add  l                                           ; $5d76: $85
	nop                                              ; $5d77: $00
	ld   [$51a0], sp                                 ; $5d78: $08 $a0 $51
	and  c                                           ; $5d7b: $a1
	and  e                                           ; $5d7c: $a3
	ld   e, e                                        ; $5d7d: $5b
	ld   d, b                                        ; $5d7e: $50
	xor  h                                           ; $5d7f: $ac
	xor  b                                           ; $5d80: $a8
	db   $fc                                         ; $5d81: $fc
	add  l                                           ; $5d82: $85
	nop                                              ; $5d83: $00
	inc  bc                                          ; $5d84: $03
	ld   a, [bc]                                     ; $5d85: $0a
	ld   d, l                                        ; $5d86: $55
	ld   c, d                                        ; $5d87: $4a
	xor  d                                           ; $5d88: $aa
	add  b                                           ; $5d89: $80
	sub  l                                           ; $5d8a: $95
	ld   [bc], a                                     ; $5d8b: $02
	ld   [$7f2a], a                                  ; $5d8c: $ea $2a $7f
	add  l                                           ; $5d8f: $85
	nop                                              ; $5d90: $00
	ld   bc, $55aa                                   ; $5d91: $01 $aa $55
	add  b                                           ; $5d94: $80
	xor  d                                           ; $5d95: $aa
	add  b                                           ; $5d96: $80
	ld   d, l                                        ; $5d97: $55
	add  b                                           ; $5d98: $80
	ld   a, [hl+]                                    ; $5d99: $2a
	nop                                              ; $5d9a: $00
	rst  $38                                         ; $5d9b: $ff
	add  [hl]                                        ; $5d9c: $86
	nop                                              ; $5d9d: $00
	add  b                                           ; $5d9e: $80
	cpl                                              ; $5d9f: $2f
	add  b                                           ; $5da0: $80
	rla                                              ; $5da1: $17
	add  b                                           ; $5da2: $80
	cpl                                              ; $5da3: $2f
	add  b                                           ; $5da4: $80
	rla                                              ; $5da5: $17
	add  l                                           ; $5da6: $85
	nop                                              ; $5da7: $00
	ld   bc, $f50a                                   ; $5da8: $01 $0a $f5
	add  b                                           ; $5dab: $80
	ldh  a, [c]                                      ; $5dac: $f2
	add  b                                           ; $5dad: $80
	push af                                          ; $5dae: $f5
	add  b                                           ; $5daf: $80
	ldh  a, [c]                                      ; $5db0: $f2
	nop                                              ; $5db1: $00
	push af                                          ; $5db2: $f5
	adc  c                                           ; $5db3: $89
	ld   a, [bc]                                     ; $5db4: $0a
	add  b                                           ; $5db5: $80
	ld   c, $80                                      ; $5db6: $0e $80
	rrca                                             ; $5db8: $0f
	add  b                                           ; $5db9: $80
	xor  e                                           ; $5dba: $ab
	adc  h                                           ; $5dbb: $8c
	xor  d                                           ; $5dbc: $aa
	ld   bc, $f3cc                                   ; $5dbd: $01 $cc $f3
	add  b                                           ; $5dc0: $80
	ld   hl, sp-$7e                                  ; $5dc1: $f8 $82
	rst  $38                                         ; $5dc3: $ff
	add  b                                           ; $5dc4: $80
	rst  $20                                         ; $5dc5: $e7
	add  b                                           ; $5dc6: $80
	ld   sp, hl                                      ; $5dc7: $f9
	add  b                                           ; $5dc8: $80
	ld   a, [$fb80]                                  ; $5dc9: $fa $80 $fb
	ld   bc, $15d5                                   ; $5dcc: $01 $d5 $15
	add  b                                           ; $5dcf: $80
	jp   z, $3180                                    ; $5dd0: $ca $80 $31

	rlca                                             ; $5dd3: $07
	adc  h                                           ; $5dd4: $8c
	call z, $f2c2                                    ; $5dd5: $cc $c2 $f2
	ldh  a, [$fc]                                    ; $5dd8: $f0 $fc
	call c, $80df                                    ; $5dda: $dc $df $80
	rst  $10                                         ; $5ddd: $d7
	ld   bc, $552a                                   ; $5dde: $01 $2a $55
	add  b                                           ; $5de1: $80
	xor  d                                           ; $5de2: $aa
	add  b                                           ; $5de3: $80
	ld   d, l                                        ; $5de4: $55
	add  b                                           ; $5de5: $80
	xor  d                                           ; $5de6: $aa
	add  b                                           ; $5de7: $80
	dec  d                                           ; $5de8: $15
	add  b                                           ; $5de9: $80
	adc  d                                           ; $5dea: $8a
	add  b                                           ; $5deb: $80
	ld   hl, $0803                                   ; $5dec: $21 $03 $08
	ret  z                                           ; $5def: $c8

	sub  l                                           ; $5df0: $95
	ld   d, l                                        ; $5df1: $55
	add  b                                           ; $5df2: $80
	xor  d                                           ; $5df3: $aa
	add  b                                           ; $5df4: $80
	ld   d, l                                        ; $5df5: $55
	add  b                                           ; $5df6: $80
	xor  d                                           ; $5df7: $aa
	add  b                                           ; $5df8: $80
	ld   d, l                                        ; $5df9: $55
	add  b                                           ; $5dfa: $80
	xor  d                                           ; $5dfb: $aa
	add  b                                           ; $5dfc: $80
	ld   d, l                                        ; $5dfd: $55
	add  b                                           ; $5dfe: $80
	xor  d                                           ; $5dff: $aa
	nop                                              ; $5e00: $00
	rst  $38                                         ; $5e01: $ff
	add  b                                           ; $5e02: $80
	dec  bc                                          ; $5e03: $0b
	add  b                                           ; $5e04: $80
	dec  b                                           ; $5e05: $05
	add  b                                           ; $5e06: $80
	dec  bc                                          ; $5e07: $0b
	add  b                                           ; $5e08: $80
	dec  b                                           ; $5e09: $05
	add  b                                           ; $5e0a: $80
	dec  bc                                          ; $5e0b: $0b
	add  b                                           ; $5e0c: $80
	dec  b                                           ; $5e0d: $05
	add  b                                           ; $5e0e: $80
	dec  bc                                          ; $5e0f: $0b
	ld   [bc], a                                     ; $5e10: $02
	dec  b                                           ; $5e11: $05
	rrca                                             ; $5e12: $0f
	push af                                          ; $5e13: $f5
	add  b                                           ; $5e14: $80
	ldh  a, [c]                                      ; $5e15: $f2
	add  b                                           ; $5e16: $80
	push af                                          ; $5e17: $f5
	add  b                                           ; $5e18: $80
	ldh  a, [c]                                      ; $5e19: $f2
	add  b                                           ; $5e1a: $80
	push af                                          ; $5e1b: $f5
	add  b                                           ; $5e1c: $80
	ldh  a, [c]                                      ; $5e1d: $f2
	add  b                                           ; $5e1e: $80
	push af                                          ; $5e1f: $f5
	add  b                                           ; $5e20: $80
	ldh  a, [c]                                      ; $5e21: $f2
	add  b                                           ; $5e22: $80
	ld   e, a                                        ; $5e23: $5f
	add  b                                           ; $5e24: $80
	or   d                                           ; $5e25: $b2
	add  b                                           ; $5e26: $80
	ld   l, a                                        ; $5e27: $6f
	add  b                                           ; $5e28: $80
	cp   a                                           ; $5e29: $bf
	inc  bc                                          ; $5e2a: $03
	ld   e, a                                        ; $5e2b: $5f
	ld   c, a                                        ; $5e2c: $4f
	xor  a                                           ; $5e2d: $af
	and  a                                           ; $5e2e: $a7
	add  b                                           ; $5e2f: $80
	ld   b, a                                        ; $5e30: $47
	inc  bc                                          ; $5e31: $03
	and  a                                           ; $5e32: $a7
	and  e                                           ; $5e33: $a3
	ld   sp, hl                                      ; $5e34: $f9
	push hl                                          ; $5e35: $e5
	add  b                                           ; $5e36: $80
	ld   a, [hl+]                                    ; $5e37: $2a
	add  b                                           ; $5e38: $80
	push de                                          ; $5e39: $d5
	add  b                                           ; $5e3a: $80
	jp   z, $c580                                    ; $5e3b: $ca $80 $c5

	add  b                                           ; $5e3e: $80
	jp   z, $d580                                    ; $5e3f: $ca $80 $d5

	add  b                                           ; $5e42: $80
	jp   z, Jump_072_5580                            ; $5e43: $ca $80 $55

	add  b                                           ; $5e46: $80
	and  d                                           ; $5e47: $a2
	add  b                                           ; $5e48: $80
	ld   d, l                                        ; $5e49: $55
	add  b                                           ; $5e4a: $80
	and  d                                           ; $5e4b: $a2
	add  b                                           ; $5e4c: $80
	ld   d, l                                        ; $5e4d: $55
	add  b                                           ; $5e4e: $80
	and  d                                           ; $5e4f: $a2
	add  b                                           ; $5e50: $80
	ld   b, c                                        ; $5e51: $41
	add  b                                           ; $5e52: $80
	inc  d                                           ; $5e53: $14
	add  b                                           ; $5e54: $80
	ld   d, l                                        ; $5e55: $55
	add  b                                           ; $5e56: $80
	xor  d                                           ; $5e57: $aa
	add  b                                           ; $5e58: $80
	ld   d, l                                        ; $5e59: $55
	add  b                                           ; $5e5a: $80
	xor  d                                           ; $5e5b: $aa
	add  b                                           ; $5e5c: $80
	ld   d, l                                        ; $5e5d: $55
	add  b                                           ; $5e5e: $80
	xor  d                                           ; $5e5f: $aa
	add  b                                           ; $5e60: $80
	ld   d, l                                        ; $5e61: $55
	add  b                                           ; $5e62: $80
	ld   a, [hl+]                                    ; $5e63: $2a
	add  b                                           ; $5e64: $80
	ccf                                              ; $5e65: $3f
	add  b                                           ; $5e66: $80
	db   $e4                                         ; $5e67: $e4
	add  b                                           ; $5e68: $80
	ld   e, a                                        ; $5e69: $5f
	add  b                                           ; $5e6a: $80
	cp   a                                           ; $5e6b: $bf
	inc  bc                                          ; $5e6c: $03
	ld   a, a                                        ; $5e6d: $7f
	ld   e, a                                        ; $5e6e: $5f
	sbc  a                                           ; $5e6f: $9f
	adc  a                                           ; $5e70: $8f
	add  b                                           ; $5e71: $80
	ld   c, a                                        ; $5e72: $4f
	add  b                                           ; $5e73: $80
	adc  a                                           ; $5e74: $8f
	ld   bc, $d5e5                                   ; $5e75: $01 $e5 $d5
	add  b                                           ; $5e78: $80
	ld   l, d                                        ; $5e79: $6a
	add  b                                           ; $5e7a: $80
	sub  l                                           ; $5e7b: $95
	add  b                                           ; $5e7c: $80
	adc  d                                           ; $5e7d: $8a
	add  b                                           ; $5e7e: $80
	sub  l                                           ; $5e7f: $95
	add  b                                           ; $5e80: $80
	xor  d                                           ; $5e81: $aa
	add  b                                           ; $5e82: $80
	sub  l                                           ; $5e83: $95
	add  b                                           ; $5e84: $80
	xor  d                                           ; $5e85: $aa
	nop                                              ; $5e86: $00
	rst  $38                                         ; $5e87: $ff
	add  b                                           ; $5e88: $80
	cpl                                              ; $5e89: $2f
	add  b                                           ; $5e8a: $80
	rla                                              ; $5e8b: $17
	add  b                                           ; $5e8c: $80
	cpl                                              ; $5e8d: $2f
	add  b                                           ; $5e8e: $80
	rla                                              ; $5e8f: $17
	add  b                                           ; $5e90: $80
	cpl                                              ; $5e91: $2f
	add  b                                           ; $5e92: $80
	rla                                              ; $5e93: $17
	add  b                                           ; $5e94: $80
	cpl                                              ; $5e95: $2f
	ld   [bc], a                                     ; $5e96: $02
	rla                                              ; $5e97: $17
	dec  e                                           ; $5e98: $1d
	push af                                          ; $5e99: $f5
	add  b                                           ; $5e9a: $80
	ldh  a, [c]                                      ; $5e9b: $f2
	add  b                                           ; $5e9c: $80
	push af                                          ; $5e9d: $f5
	add  b                                           ; $5e9e: $80
	ldh  a, [c]                                      ; $5e9f: $f2
	add  b                                           ; $5ea0: $80
	push af                                          ; $5ea1: $f5
	add  b                                           ; $5ea2: $80
	ldh  a, [c]                                      ; $5ea3: $f2
	add  b                                           ; $5ea4: $80
	push af                                          ; $5ea5: $f5
	add  b                                           ; $5ea6: $80
	ldh  a, [c]                                      ; $5ea7: $f2
	nop                                              ; $5ea8: $00
	ldh  a, [$81]                                    ; $5ea9: $f0 $81
	rrca                                             ; $5eab: $0f
	add  b                                           ; $5eac: $80
	add  hl, bc                                      ; $5ead: $09
	adc  b                                           ; $5eae: $88
	ld   [$ea03], sp                                 ; $5eaf: $08 $03 $ea
	ld   a, [$feee]                                  ; $5eb2: $fa $ee $fe
	add  b                                           ; $5eb5: $80
	rst  $38                                         ; $5eb6: $ff
	inc  b                                           ; $5eb7: $04
	ccf                                              ; $5eb8: $3f
	ld   a, a                                        ; $5eb9: $7f
	ld   h, e                                        ; $5eba: $63
	ld   h, a                                        ; $5ebb: $67
	ld   h, h                                        ; $5ebc: $64
	add  e                                           ; $5ebd: $83
	ld   h, c                                        ; $5ebe: $61
	ld   bc, $ff81                                   ; $5ebf: $01 $81 $ff
	add  b                                           ; $5ec2: $80
	rst  $28                                         ; $5ec3: $ef
	add  b                                           ; $5ec4: $80
	di                                               ; $5ec5: $f3
	add  b                                           ; $5ec6: $80
	db   $fc                                         ; $5ec7: $fc
	add  h                                           ; $5ec8: $84
	rst  $38                                         ; $5ec9: $ff
	add  b                                           ; $5eca: $80
	di                                               ; $5ecb: $f3
	nop                                              ; $5ecc: $00
	ld   l, d                                        ; $5ecd: $6a
	add  a                                           ; $5ece: $87
	push de                                          ; $5ecf: $d5
	add  b                                           ; $5ed0: $80
	push af                                          ; $5ed1: $f5
	dec  b                                           ; $5ed2: $05
	db   $fd                                         ; $5ed3: $fd
	rst  $38                                         ; $5ed4: $ff
	db   $fd                                         ; $5ed5: $fd
	rst  $38                                         ; $5ed6: $ff
	ld   c, l                                        ; $5ed7: $4d
	ldh  a, [c]                                      ; $5ed8: $f2
	add  b                                           ; $5ed9: $80
	ld   a, h                                        ; $5eda: $7c
	ld   bc, $7f7e                                   ; $5edb: $01 $7e $7f
	add  b                                           ; $5ede: $80

Jump_072_5edf:
	ld   h, a                                        ; $5edf: $67
	add  h                                           ; $5ee0: $84
	ld   a, e                                        ; $5ee1: $7b
	add  b                                           ; $5ee2: $80
	db   $e3                                         ; $5ee3: $e3
	ld   bc, $5594                                   ; $5ee4: $01 $94 $55
	add  b                                           ; $5ee7: $80
	adc  d                                           ; $5ee8: $8a
	add  b                                           ; $5ee9: $80
	dec  h                                           ; $5eea: $25
	inc  bc                                          ; $5eeb: $03
	ld   [$c2c8], sp                                 ; $5eec: $08 $c8 $c2
	ldh  a, [c]                                      ; $5eef: $f2
	add  b                                           ; $5ef0: $80
	ld   a, h                                        ; $5ef1: $7c
	add  b                                           ; $5ef2: $80
	ld   e, a                                        ; $5ef3: $5f
	add  b                                           ; $5ef4: $80
	ld   d, b                                        ; $5ef5: $50
	inc  b                                           ; $5ef6: $04
	add  hl, bc                                      ; $5ef7: $09
	nop                                              ; $5ef8: $00
	rlca                                             ; $5ef9: $07
	nop                                              ; $5efa: $00
	ld   bc, $0085                                   ; $5efb: $01 $85 $00
	dec  b                                           ; $5efe: $05
	rst  $38                                         ; $5eff: $ff
	nop                                              ; $5f00: $00
	rst  $38                                         ; $5f01: $ff
	nop                                              ; $5f02: $00
	ld   a, [bc]                                     ; $5f03: $0a
	push af                                          ; $5f04: $f5
	add  b                                           ; $5f05: $80
	ldh  a, [c]                                      ; $5f06: $f2

jr_072_5f07:
	add  b                                           ; $5f07: $80
	push af                                          ; $5f08: $f5
	add  b                                           ; $5f09: $80
	ldh  a, [c]                                      ; $5f0a: $f2
	add  b                                           ; $5f0b: $80
	push af                                          ; $5f0c: $f5
	nop                                              ; $5f0d: $00
	rst  $30                                         ; $5f0e: $f7
	add  b                                           ; $5f0f: $80
	ldh  a, [rP1]                                    ; $5f10: $f0 $00
	rst  $30                                         ; $5f12: $f7
	add  b                                           ; $5f13: $80
	pop  hl                                          ; $5f14: $e1
	ld   a, [bc]                                     ; $5f15: $0a
	ld   e, a                                        ; $5f16: $5f
	ld   b, c                                        ; $5f17: $41
	and  c                                           ; $5f18: $a1
	and  e                                           ; $5f19: $a3
	ld   b, e                                        ; $5f1a: $43
	ld   b, c                                        ; $5f1b: $41
	and  c                                           ; $5f1c: $a1
	and  e                                           ; $5f1d: $a3
	ld   b, e                                        ; $5f1e: $43
	ld   b, c                                        ; $5f1f: $41
	pop  hl                                          ; $5f20: $e1
	add  b                                           ; $5f21: $80
	inc  hl                                          ; $5f22: $23
	add  b                                           ; $5f23: $80
	pop  hl                                          ; $5f24: $e1
	ld   [bc], a                                     ; $5f25: $02
	db   $e3                                         ; $5f26: $e3
	ret                                              ; $5f27: $c9


	push de                                          ; $5f28: $d5
	add  b                                           ; $5f29: $80
	ret                                              ; $5f2a: $c9


	ld   bc, $d1df                                   ; $5f2b: $01 $df $d1
	add  b                                           ; $5f2e: $80
	pop  bc                                          ; $5f2f: $c1
	ld   [bc], a                                     ; $5f30: $02
	reti                                             ; $5f31: $d9


	pop  de                                          ; $5f32: $d1
	ld   sp, hl                                      ; $5f33: $f9
	add  b                                           ; $5f34: $80
	ldh  [$81], a                                    ; $5f35: $e0 $81
	rst  $38                                         ; $5f37: $ff
	add  b                                           ; $5f38: $80
	sub  h                                           ; $5f39: $94
	add  b                                           ; $5f3a: $80
	pop  hl                                          ; $5f3b: $e1
	add  b                                           ; $5f3c: $80
	di                                               ; $5f3d: $f3
	nop                                              ; $5f3e: $00
	rst  $38                                         ; $5f3f: $ff
	add  d                                           ; $5f40: $82
	db   $e3                                         ; $5f41: $e3
	add  b                                           ; $5f42: $80
	nop                                              ; $5f43: $00
	add  c                                           ; $5f44: $81
	rst  $38                                         ; $5f45: $ff
	add  b                                           ; $5f46: $80
	push de                                          ; $5f47: $d5
	add  b                                           ; $5f48: $80
	jp   z, $fd01                                    ; $5f49: $ca $01 $fd

	push bc                                          ; $5f4c: $c5
	add  b                                           ; $5f4d: $80
	jp   nz, $cd02                                   ; $5f4e: $c2 $02 $cd

	push bc                                          ; $5f51: $c5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f52: $cf
	add  b                                           ; $5f53: $80
	nop                                              ; $5f54: $00
	add  c                                           ; $5f55: $81
	rst  $38                                         ; $5f56: $ff
	ld   a, [bc]                                     ; $5f57: $0a
	ld   a, a                                        ; $5f58: $7f
	ld   b, a                                        ; $5f59: $47
	add  a                                           ; $5f5a: $87
	adc  a                                           ; $5f5b: $8f
	ld   c, a                                        ; $5f5c: $4f
	ld   b, a                                        ; $5f5d: $47
	add  a                                           ; $5f5e: $87
	adc  a                                           ; $5f5f: $8f
	ld   c, a                                        ; $5f60: $4f
	ld   b, a                                        ; $5f61: $47
	rst  ToBoot                                         ; $5f62: $c7
	add  b                                           ; $5f63: $80
	ld   c, a                                        ; $5f64: $4f
	add  b                                           ; $5f65: $80
	rst  ToBoot                                         ; $5f66: $c7
	ld   [bc], a                                     ; $5f67: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f68: $cf
	and  l                                           ; $5f69: $a5
	sub  l                                           ; $5f6a: $95
	add  b                                           ; $5f6b: $80
	xor  d                                           ; $5f6c: $aa
	add  b                                           ; $5f6d: $80
	sub  l                                           ; $5f6e: $95
	add  b                                           ; $5f6f: $80
	xor  d                                           ; $5f70: $aa
	add  b                                           ; $5f71: $80
	sub  l                                           ; $5f72: $95
	nop                                              ; $5f73: $00
	rst  $38                                         ; $5f74: $ff
	add  b                                           ; $5f75: $80
	add  c                                           ; $5f76: $81
	nop                                              ; $5f77: $00
	rst  $38                                         ; $5f78: $ff
	add  b                                           ; $5f79: $80
	ld   sp, hl                                      ; $5f7a: $f9
	nop                                              ; $5f7b: $00
	rst  $38                                         ; $5f7c: $ff
	add  c                                           ; $5f7d: $81
	nop                                              ; $5f7e: $00
	inc  b                                           ; $5f7f: $04
	add  b                                           ; $5f80: $80
	nop                                              ; $5f81: $00
	ld   b, b                                        ; $5f82: $40
	nop                                              ; $5f83: $00
	jr   nz, jr_072_5f07                             ; $5f84: $20 $81

	nop                                              ; $5f86: $00
	dec  b                                           ; $5f87: $05
	rra                                              ; $5f88: $1f
	nop                                              ; $5f89: $00
	rra                                              ; $5f8a: $1f
	nop                                              ; $5f8b: $00
	ld   [$80f5], a                                  ; $5f8c: $ea $f5 $80
	ldh  a, [c]                                      ; $5f8f: $f2
	add  b                                           ; $5f90: $80
	push af                                          ; $5f91: $f5
	add  b                                           ; $5f92: $80
	ldh  a, [c]                                      ; $5f93: $f2
	add  b                                           ; $5f94: $80
	pop  af                                          ; $5f95: $f1
	nop                                              ; $5f96: $00
	rst  $30                                         ; $5f97: $f7
	add  b                                           ; $5f98: $80
	ldh  a, [rP1]                                    ; $5f99: $f0 $00
	rst  $30                                         ; $5f9b: $f7
	add  c                                           ; $5f9c: $81
	ldh  a, [rSB]                                    ; $5f9d: $f0 $01
	rrca                                             ; $5f9f: $0f
	ld   [$0980], sp                                 ; $5fa0: $08 $80 $09
	add  l                                           ; $5fa3: $85
	ld   [$0f80], sp                                 ; $5fa4: $08 $80 $0f
	add  b                                           ; $5fa7: $80
	ld   [$2006], sp                                 ; $5fa8: $08 $06 $20
	pop  hl                                          ; $5fab: $e1
	add  hl, sp                                      ; $5fac: $39
	db   $fd                                         ; $5fad: $fd
	ld   [hl+], a                                    ; $5fae: $22
	ld   l, a                                        ; $5faf: $6f
	ld   l, b                                        ; $5fb0: $68
	add  e                                           ; $5fb1: $83
	ld   h, c                                        ; $5fb2: $61
	dec  b                                           ; $5fb3: $05
	and  c                                           ; $5fb4: $a1
	pop  hl                                          ; $5fb5: $e1
	ccf                                              ; $5fb6: $3f
	rst  $38                                         ; $5fb7: $ff
	ld   b, $f8                                      ; $5fb8: $06 $f8
	add  b                                           ; $5fba: $80
	ei                                               ; $5fbb: $fb
	add  b                                           ; $5fbc: $80
	rst  $38                                         ; $5fbd: $ff
	add  b                                           ; $5fbe: $80
	ei                                               ; $5fbf: $fb
	add  b                                           ; $5fc0: $80
	db   $e3                                         ; $5fc1: $e3
	add  b                                           ; $5fc2: $80
	ld   hl, sp-$7e                                  ; $5fc3: $f8 $82
	rst  $38                                         ; $5fc5: $ff
	inc  bc                                          ; $5fc6: $03
	ld   [hl], b                                     ; $5fc7: $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fc8: $cf
	ld   b, h                                        ; $5fc9: $44
	ld   c, l                                        ; $5fca: $4d
	add  d                                           ; $5fcb: $82
	call $f505                                       ; $5fcc: $cd $05 $f5
	db   $fd                                         ; $5fcf: $fd
	add  $cf                                         ; $5fd0: $c6 $cf
	ld   c, h                                        ; $5fd2: $4c
	ld   c, l                                        ; $5fd3: $4d
	add  b                                           ; $5fd4: $80
	call Call_072_4e01                               ; $5fd5: $cd $01 $4e
	ld   sp, hl                                      ; $5fd8: $f9
	add  d                                           ; $5fd9: $82
	rst  $38                                         ; $5fda: $ff
	add  b                                           ; $5fdb: $80
	rst  $30                                         ; $5fdc: $f7
	add  b                                           ; $5fdd: $80
	ld   sp, hl                                      ; $5fde: $f9
	add  d                                           ; $5fdf: $82
	ei                                               ; $5fe0: $fb
	add  b                                           ; $5fe1: $80
	db   $eb                                         ; $5fe2: $eb
	dec  c                                           ; $5fe3: $0d
	ld   l, l                                        ; $5fe4: $6d
	ld   e, h                                        ; $5fe5: $5c
	ld   d, e                                        ; $5fe6: $53
	ld   b, e                                        ; $5fe7: $43
	jp   $dce3                                       ; $5fe8: $c3 $e3 $dc


	ldh  [rSTAT], a                                  ; $5feb: $e0 $41
	ld   h, c                                        ; $5fed: $61
	ld   [hl], e                                     ; $5fee: $73
	ld   d, a                                        ; $5fef: $57
	ld   d, b                                        ; $5ff0: $50
	ld   e, b                                        ; $5ff1: $58
	add  b                                           ; $5ff2: $80
	rst  $38                                         ; $5ff3: $ff
	nop                                              ; $5ff4: $00
	rrca                                             ; $5ff5: $0f
	add  b                                           ; $5ff6: $80
	adc  e                                           ; $5ff7: $8b
	add  b                                           ; $5ff8: $80
	add  l                                           ; $5ff9: $85
	add  b                                           ; $5ffa: $80
	res  0, b                                        ; $5ffb: $cb $80
	push hl                                          ; $5ffd: $e5
	add  b                                           ; $5ffe: $80
	ld   a, e                                        ; $5fff: $7b
	add  b                                           ; $6000: $80
	dec  [hl]                                        ; $6001: $35
	add  b                                           ; $6002: $80
	dec  de                                          ; $6003: $1b
	ld   [bc], a                                     ; $6004: $02
	dec  b                                           ; $6005: $05
	rra                                              ; $6006: $1f
	push hl                                          ; $6007: $e5
	add  b                                           ; $6008: $80
	db   $e4                                         ; $6009: $e4
	add  b                                           ; $600a: $80
	ldh  [rSB], a                                    ; $600b: $e0 $01
	di                                               ; $600d: $f3
	ldh  a, [c]                                      ; $600e: $f2
	add  b                                           ; $600f: $80
	or   $00                                         ; $6010: $f6 $00
	ldh  a, [$81]                                    ; $6012: $f0 $81
	pop  af                                          ; $6014: $f1
	add  b                                           ; $6015: $80
	di                                               ; $6016: $f3
	ld   b, $9f                                      ; $6017: $06 $9f
	add  c                                           ; $6019: $81
	ld   hl, $6323                                   ; $601a: $21 $23 $63
	ld   h, c                                        ; $601d: $61
	pop  hl                                          ; $601e: $e1
	add  b                                           ; $601f: $80
	inc  hl                                          ; $6020: $23
	ld   [$4121], sp                                 ; $6021: $08 $21 $41
	inc  bc                                          ; $6024: $03
	db   $e3                                         ; $6025: $e3
	ld   h, c                                        ; $6026: $61
	ld   bc, $db03                                   ; $6027: $01 $03 $db
	rst  ToBoot                                         ; $602a: $c7

jr_072_602b:
	add  b                                           ; $602b: $80
	pop  bc                                          ; $602c: $c1
	add  b                                           ; $602d: $80
	ret  z                                           ; $602e: $c8

	add  b                                           ; $602f: $80
	pop  de                                          ; $6030: $d1
	add  b                                           ; $6031: $80
	jp   $c080                                       ; $6032: $c3 $80 $c0


	add  b                                           ; $6035: $80
	jp   $d380                                       ; $6036: $c3 $80 $d3


	nop                                              ; $6039: $00
	rst  $38                                         ; $603a: $ff
	add  b                                           ; $603b: $80
	ccf                                              ; $603c: $3f
	ld   b, $03                                      ; $603d: $06 $03
	add  e                                           ; $603f: $83
	nop                                              ; $6040: $00
	ld   b, b                                        ; $6041: $40
	nop                                              ; $6042: $00
	ldh  [$c0], a                                    ; $6043: $e0 $c0
	add  b                                           ; $6045: $80
	nop                                              ; $6046: $00
	add  b                                           ; $6047: $80
	add  b                                           ; $6048: $80
	add  b                                           ; $6049: $80
	nop                                              ; $604a: $00
	nop                                              ; $604b: $00
	ldh  [$82], a                                    ; $604c: $e0 $82
	rst  $38                                         ; $604e: $ff
	add  b                                           ; $604f: $80
	ccf                                              ; $6050: $3f
	add  b                                           ; $6051: $80
	inc  bc                                          ; $6052: $03
	add  e                                           ; $6053: $83
	nop                                              ; $6054: $00
	ld   [bc], a                                     ; $6055: $02
	ld   bc, $0100                                   ; $6056: $01 $00 $01
	add  b                                           ; $6059: $80
	rst  ToBoot                                         ; $605a: $c7
	add  b                                           ; $605b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $605c: $cf
	add  b                                           ; $605d: $80
	rst  ToBoot                                         ; $605e: $c7
	add  b                                           ; $605f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6060: $cf
	add  b                                           ; $6061: $80
	rlca                                             ; $6062: $07
	add  b                                           ; $6063: $80
	rrca                                             ; $6064: $0f
	inc  b                                           ; $6065: $04
	rlca                                             ; $6066: $07
	add  a                                           ; $6067: $87
	rrca                                             ; $6068: $0f
	adc  d                                           ; $6069: $8a
	ld   a, [$e782]                                  ; $606a: $fa $82 $e7
	nop                                              ; $606d: $00
	rst  $38                                         ; $606e: $ff
	add  d                                           ; $606f: $82
	rst  ToBoot                                         ; $6070: $c7
	add  b                                           ; $6071: $80
	rst  $28                                         ; $6072: $ef
	dec  b                                           ; $6073: $05
	cp   a                                           ; $6074: $bf
	rst  JumpTable                                         ; $6075: $df
	add  a                                           ; $6076: $87
	and  a                                           ; $6077: $a7
	cpl                                              ; $6078: $2f
	xor  a                                           ; $6079: $af
	add  b                                           ; $607a: $80
	scf                                              ; $607b: $37
	inc  bc                                          ; $607c: $03
	ccf                                              ; $607d: $3f
	cp   a                                           ; $607e: $bf
	ccf                                              ; $607f: $3f
	ld   a, a                                        ; $6080: $7f
	add  b                                           ; $6081: $80
	ccf                                              ; $6082: $3f
	add  b                                           ; $6083: $80
	rra                                              ; $6084: $1f
	add  b                                           ; $6085: $80
	cpl                                              ; $6086: $2f
	ld   [bc], a                                     ; $6087: $02
	rla                                              ; $6088: $17
	dec  e                                           ; $6089: $1d
	push af                                          ; $608a: $f5
	add  d                                           ; $608b: $82
	or   $00                                         ; $608c: $f6 $00
	rst  $30                                         ; $608e: $f7
	add  d                                           ; $608f: $82
	or   $00                                         ; $6090: $f6 $00
	rst  $30                                         ; $6092: $f7
	add  b                                           ; $6093: $80
	cp   $80                                         ; $6094: $fe $80
	or   $00                                         ; $6096: $f6 $00
	rst  $30                                         ; $6098: $f7
	add  l                                           ; $6099: $85
	ld   [$0f80], sp                                 ; $609a: $08 $80 $0f
	add  h                                           ; $609d: $84
	ld   [rROMB0], sp                                 ; $609e: $08 $00 $20
	add  l                                           ; $60a1: $85
	ld   h, c                                        ; $60a2: $61
	ld   [bc], a                                     ; $60a3: $02
	cp   [hl]                                        ; $60a4: $be
	rst  $38                                         ; $60a5: $ff
	jr   nz, jr_072_602b                             ; $60a6: $20 $83

	ld   h, c                                        ; $60a8: $61
	ld   bc, $ff81                                   ; $60a9: $01 $81 $ff
	add  b                                           ; $60ac: $80
	rst  ToBoot                                         ; $60ad: $c7
	add  b                                           ; $60ae: $80
	ld   hl, sp-$7a                                  ; $60af: $f8 $86
	ei                                               ; $60b1: $fb
	add  b                                           ; $60b2: $80
	ldh  [rDIV], a                                   ; $60b3: $e0 $04
	ld   a, e                                        ; $60b5: $7b
	call $fff6                                       ; $60b6: $cd $f6 $ff
	call nz, $cd83                                   ; $60b9: $c4 $83 $cd
	ld   [bc], a                                     ; $60bc: $02
	or   $ff                                         ; $60bd: $f6 $ff
	call nz, $cd81                                   ; $60bf: $c4 $81 $cd
	ld   bc, $f146                                   ; $60c2: $01 $46 $f1
	add  d                                           ; $60c5: $82
	rst  $38                                         ; $60c6: $ff
	add  b                                           ; $60c7: $80
	rst  $20                                         ; $60c8: $e7
	add  h                                           ; $60c9: $84
	ei                                               ; $60ca: $fb
	inc  bc                                          ; $60cb: $03
	db   $e3                                         ; $60cc: $e3
	ldh  [c], a                                      ; $60cd: $e2
	ld   l, a                                        ; $60ce: $6f
	ld   e, a                                        ; $60cf: $5f
	add  b                                           ; $60d0: $80
	ld   d, b                                        ; $60d1: $50
	add  b                                           ; $60d2: $80
	push de                                          ; $60d3: $d5
	add  b                                           ; $60d4: $80
	ld   [hl], a                                     ; $60d5: $77
	add  b                                           ; $60d6: $80
	ld   d, b                                        ; $60d7: $50
	add  b                                           ; $60d8: $80
	ld   e, a                                        ; $60d9: $5f
	add  b                                           ; $60da: $80
	rst  $38                                         ; $60db: $ff
	inc  bc                                          ; $60dc: $03
	ld   e, a                                        ; $60dd: $5f
	rra                                              ; $60de: $1f
	rst  $28                                         ; $60df: $ef
	ld   d, b                                        ; $60e0: $50
	add  b                                           ; $60e1: $80
	and  b                                           ; $60e2: $a0
	add  b                                           ; $60e3: $80
	ld   d, b                                        ; $60e4: $50
	add  b                                           ; $60e5: $80
	and  b                                           ; $60e6: $a0
	add  b                                           ; $60e7: $80
	ld   d, b                                        ; $60e8: $50
	add  b                                           ; $60e9: $80
	and  b                                           ; $60ea: $a0
	add  b                                           ; $60eb: $80
	ld   d, b                                        ; $60ec: $50
	add  b                                           ; $60ed: $80
	and  b                                           ; $60ee: $a0
	ld   bc, $f7f8                                   ; $60ef: $01 $f8 $f7
	add  b                                           ; $60f2: $80
	cp   $80                                         ; $60f3: $fe $80
	db   $fc                                         ; $60f5: $fc
	add  b                                           ; $60f6: $80
	ld   sp, hl                                      ; $60f7: $f9
	add  b                                           ; $60f8: $80
	ld   a, [$fc80]                                  ; $60f9: $fa $80 $fc
	add  b                                           ; $60fc: $80
	ld   hl, sp+$04                                  ; $60fd: $f8 $04
	rst  $38                                         ; $60ff: $ff
	ld   hl, sp+$38                                  ; $6100: $f8 $38
	ld   sp, $80f1                                   ; $6102: $31 $f1 $80
	dec  sp                                          ; $6105: $3b
	dec  b                                           ; $6106: $05
	add  hl, hl                                      ; $6107: $29
	xor  c                                           ; $6108: $a9
	ld   h, e                                        ; $6109: $63
	ld   b, e                                        ; $610a: $43
	ld   b, c                                        ; $610b: $41
	ld   bc, $0380                                   ; $610c: $01 $80 $03
	ld   b, $01                                      ; $610f: $06 $01
	pop  hl                                          ; $6111: $e1
	inc  bc                                          ; $6112: $03
	ld   l, $d2                                      ; $6113: $2e $d2
	sbc  h                                           ; $6115: $9c
	sub  b                                           ; $6116: $90
	add  b                                           ; $6117: $80
	sub  c                                           ; $6118: $91
	ld   bc, $d3df                                   ; $6119: $01 $df $d3
	add  b                                           ; $611c: $80
	jp   nz, $c082                                   ; $611d: $c2 $82 $c0

	inc  bc                                          ; $6120: $03
	rst  $38                                         ; $6121: $ff
	ret  nz                                          ; $6122: $c0

	ld   h, b                                        ; $6123: $60
	ld   c, a                                        ; $6124: $4f
	add  b                                           ; $6125: $80
	adc  $80                                         ; $6126: $ce $80
	adc  e                                           ; $6128: $8b
	add  b                                           ; $6129: $80
	rrca                                             ; $612a: $0f
	add  b                                           ; $612b: $80
	ld   a, [bc]                                     ; $612c: $0a
	add  b                                           ; $612d: $80
	rrca                                             ; $612e: $0f
	ld   b, $1f                                      ; $612f: $06 $1f
	nop                                              ; $6131: $00
	ldh  a, [rP1]                                    ; $6132: $f0 $00
	inc  bc                                          ; $6134: $03
	nop                                              ; $6135: $00
	inc  bc                                          ; $6136: $03
	add  b                                           ; $6137: $80
	nop                                              ; $6138: $00
	inc  b                                           ; $6139: $04
	ld   l, h                                        ; $613a: $6c
	ld   c, h                                        ; $613b: $4c
	ld   c, a                                        ; $613c: $4f
	ld   l, e                                        ; $613d: $6b
	ld   l, c                                        ; $613e: $69
	add  b                                           ; $613f: $80
	ld   c, l                                        ; $6140: $4d
	nop                                              ; $6141: $00
	ld   l, l                                        ; $6142: $6d
	add  c                                           ; $6143: $81
	nop                                              ; $6144: $00
	ld   [bc], a                                     ; $6145: $02
	ld   b, b                                        ; $6146: $40
	rlca                                             ; $6147: $07
	ld   h, a                                        ; $6148: $67
	add  c                                           ; $6149: $81
	sbc  a                                           ; $614a: $9f
	nop                                              ; $614b: $00
	cp   a                                           ; $614c: $bf
	add  b                                           ; $614d: $80
	adc  a                                           ; $614e: $8f
	inc  bc                                          ; $614f: $03
	add  a                                           ; $6150: $87
	rlca                                             ; $6151: $07
	rrca                                             ; $6152: $0f
	adc  a                                           ; $6153: $8f
	add  b                                           ; $6154: $80
	rlca                                             ; $6155: $07
	inc  bc                                          ; $6156: $03
	rrca                                             ; $6157: $0f
	ccf                                              ; $6158: $3f
	add  b                                           ; $6159: $80
	or   b                                           ; $615a: $b0
	add  d                                           ; $615b: $82
	adc  b                                           ; $615c: $88
	add  b                                           ; $615d: $80
	or   b                                           ; $615e: $b0
	add  [hl]                                        ; $615f: $86
	add  b                                           ; $6160: $80
	add  b                                           ; $6161: $80
	rst  $28                                         ; $6162: $ef
	add  b                                           ; $6163: $80
	scf                                              ; $6164: $37
	add  b                                           ; $6165: $80
	xor  a                                           ; $6166: $af
	add  b                                           ; $6167: $80
	or   a                                           ; $6168: $b7
	add  b                                           ; $6169: $80
	xor  a                                           ; $616a: $af
	add  b                                           ; $616b: $80
	or   a                                           ; $616c: $b7
	add  b                                           ; $616d: $80
	xor  a                                           ; $616e: $af
	ld   [bc], a                                     ; $616f: $02
	or   a                                           ; $6170: $b7
	or   [hl]                                        ; $6171: $b6
	cp   $80                                         ; $6172: $fe $80
	or   $81                                         ; $6174: $f6 $81
	cp   $87                                         ; $6176: $fe $87
	ld   hl, sp+$01                                  ; $6178: $f8 $01
	pop  af                                          ; $617a: $f1
	ld   [$0f84], sp                                 ; $617b: $08 $84 $0f
	nop                                              ; $617e: $00
	ld   [bc], a                                     ; $617f: $02
	add  c                                           ; $6180: $81
	dec  c                                           ; $6181: $0d
	add  b                                           ; $6182: $80
	nop                                              ; $6183: $00
	add  b                                           ; $6184: $80
	rrca                                             ; $6185: $0f
	ld   [bc], a                                     ; $6186: $02
	cpl                                              ; $6187: $2f
	ld   h, c                                        ; $6188: $61
	cp   [hl]                                        ; $6189: $be
	add  e                                           ; $618a: $83
	rst  $38                                         ; $618b: $ff
	ld   bc, $ff00                                   ; $618c: $01 $00 $ff
	add  b                                           ; $618f: $80
	ret  nz                                          ; $6190: $c0

	add  d                                           ; $6191: $82
	rst  $28                                         ; $6192: $ef
	ld   [bc], a                                     ; $6193: $02
	ccf                                              ; $6194: $3f
	rst  $38                                         ; $6195: $ff
	rst  JumpTable                                         ; $6196: $df
	add  e                                           ; $6197: $83
	rst  $38                                         ; $6198: $ff
	ld   bc, $7f9f                                   ; $6199: $01 $9f $7f
	add  b                                           ; $619c: $80
	inc  bc                                          ; $619d: $03
	add  b                                           ; $619e: $80
	rst  $38                                         ; $619f: $ff
	add  b                                           ; $61a0: $80
	ei                                               ; $61a1: $fb
	ld   [bc], a                                     ; $61a2: $02
	cp   e                                           ; $61a3: $bb
	call $8176                                       ; $61a4: $cd $76 $81
	rst  $38                                         ; $61a7: $ff
	ld   bc, $df20                                   ; $61a8: $01 $20 $df
	add  b                                           ; $61ab: $80
	ld   [$fd84], sp                                 ; $61ac: $08 $84 $fd
	add  b                                           ; $61af: $80
	ld   a, $80                                      ; $61b0: $3e $80
	inc  e                                           ; $61b2: $1c

jr_072_61b3:
	add  b                                           ; $61b3: $80
	rra                                              ; $61b4: $1f

jr_072_61b5:
	add  b                                           ; $61b5: $80
	cp   b                                           ; $61b6: $b8
	add  b                                           ; $61b7: $80
	inc  de                                          ; $61b8: $13
	add  b                                           ; $61b9: $80
	ei                                               ; $61ba: $fb
	add  b                                           ; $61bb: $80
	rst  $38                                         ; $61bc: $ff
	inc  bc                                          ; $61bd: $03
	ldh  a, [$f3]                                    ; $61be: $f0 $f3
	inc  bc                                          ; $61c0: $03
	nop                                              ; $61c1: $00
	add  b                                           ; $61c2: $80
	dec  b                                           ; $61c3: $05
	add  b                                           ; $61c4: $80
	ld   a, a                                        ; $61c5: $7f
	add  b                                           ; $61c6: $80
	inc  b                                           ; $61c7: $04
	add  b                                           ; $61c8: $80
	rst  $28                                         ; $61c9: $ef
	ld   b, $ee                                      ; $61ca: $06 $ee
	rst  $28                                         ; $61cc: $ef
	pop  bc                                          ; $61cd: $c1
	ret  nz                                          ; $61ce: $c0

	nop                                              ; $61cf: $00
	rst  $38                                         ; $61d0: $ff
	nop                                              ; $61d1: $00
	add  b                                           ; $61d2: $80
	dec  bc                                          ; $61d3: $0b
	add  b                                           ; $61d4: $80
	dec  b                                           ; $61d5: $05
	add  b                                           ; $61d6: $80
	dec  bc                                          ; $61d7: $0b
	add  b                                           ; $61d8: $80
	dec  b                                           ; $61d9: $05
	add  b                                           ; $61da: $80
	dec  bc                                          ; $61db: $0b
	add  b                                           ; $61dc: $80
	dec  b                                           ; $61dd: $05
	inc  bc                                          ; $61de: $03
	dec  bc                                          ; $61df: $0b
	adc  e                                           ; $61e0: $8b
	dec  b                                           ; $61e1: $05

Jump_072_61e2:
	add  d                                           ; $61e2: $82
	add  h                                           ; $61e3: $84
	ld   hl, sp-$7c                                  ; $61e4: $f8 $84
	rst  $38                                         ; $61e6: $ff
	nop                                              ; $61e7: $00
	ld   hl, sp-$80                                  ; $61e8: $f8 $80
	ldh  a, [$03]                                    ; $61ea: $f0 $03
	rra                                              ; $61ec: $1f
	ld   bc, $1c02                                   ; $61ed: $01 $02 $1c
	add  b                                           ; $61f0: $80
	ld   e, $01                                      ; $61f1: $1e $01
	inc  e                                           ; $61f3: $1c
	db   $fc                                         ; $61f4: $fc
	add  b                                           ; $61f5: $80
	cp   $01                                         ; $61f6: $fe $01
	db   $fc                                         ; $61f8: $fc
	inc  e                                           ; $61f9: $1c
	add  b                                           ; $61fa: $80
	ld   e, $80                                      ; $61fb: $1e $80
	inc  e                                           ; $61fd: $1c
	ld   [bc], a                                     ; $61fe: $02
	ret  nz                                          ; $61ff: $c0

	nop                                              ; $6200: $00
	ret  nz                                          ; $6201: $c0

	add  d                                           ; $6202: $82
	nop                                              ; $6203: $00
	add  c                                           ; $6204: $81
	ld   [bc], a                                     ; $6205: $02
	inc  bc                                          ; $6206: $03
	inc  bc                                          ; $6207: $03
	inc  de                                          ; $6208: $13
	ld   de, $8013                                   ; $6209: $11 $13 $80
	rra                                              ; $620c: $1f
	nop                                              ; $620d: $00
	db   $10                                         ; $620e: $10
	add  e                                           ; $620f: $83
	nop                                              ; $6210: $00
	dec  b                                           ; $6211: $05
	inc  b                                           ; $6212: $04
	ld   a, a                                        ; $6213: $7f
	add  a                                           ; $6214: $87
	rst  $38                                         ; $6215: $ff
	db   $fc                                         ; $6216: $fc
	rst  $38                                         ; $6217: $ff
	add  b                                           ; $6218: $80
	nop                                              ; $6219: $00
	ld   [bc], a                                     ; $621a: $02
	db   $e4                                         ; $621b: $e4
	rst  $38                                         ; $621c: $ff
	dec  de                                          ; $621d: $1b
	add  d                                           ; $621e: $82
	nop                                              ; $621f: $00
	add  b                                           ; $6220: $80
	db   $10                                         ; $6221: $10
	inc  c                                           ; $6222: $0c
	ret  nc                                          ; $6223: $d0

	ret  nz                                          ; $6224: $c0

	ldh  a, [c]                                      ; $6225: $f2
	ld   [hl+], a                                    ; $6226: $22
	ldh  a, [c]                                      ; $6227: $f2
	ld   [hl-], a                                    ; $6228: $32
	ld   a, [bc]                                     ; $6229: $0a
	ld   [$c3fe], sp                                 ; $622a: $08 $fe $c3
	rlca                                             ; $622d: $07
	ld   [$8030], sp                                 ; $622e: $08 $30 $80
	jr   nz, jr_072_61b3                             ; $6231: $20 $80

	jr   nc, jr_072_61b5                             ; $6233: $30 $80

	jr   nz, @+$03                                   ; $6235: $20 $01

	jr   nc, @-$4e                                   ; $6237: $30 $b0

	add  b                                           ; $6239: $80
	and  b                                           ; $623a: $a0
	add  b                                           ; $623b: $80
	or   b                                           ; $623c: $b0
	add  b                                           ; $623d: $80
	nop                                              ; $623e: $00
	nop                                              ; $623f: $00
	add  b                                           ; $6240: $80
	add  d                                           ; $6241: $82
	nop                                              ; $6242: $00
	ld   b, $78                                      ; $6243: $06 $78
	ld   a, c                                        ; $6245: $79
	ld   a, [hl]                                     ; $6246: $7e
	rra                                              ; $6247: $1f
	ld   a, a                                        ; $6248: $7f
	ld   l, a                                        ; $6249: $6f
	ld   [hl], b                                     ; $624a: $70
	add  b                                           ; $624b: $80
	ld   a, a                                        ; $624c: $7f
	nop                                              ; $624d: $00
	rst  $38                                         ; $624e: $ff
	add  b                                           ; $624f: $80
	xor  a                                           ; $6250: $af
	add  b                                           ; $6251: $80
	or   a                                           ; $6252: $b7
	add  b                                           ; $6253: $80
	cpl                                              ; $6254: $2f
	add  b                                           ; $6255: $80
	rst  $30                                         ; $6256: $f7
	add  b                                           ; $6257: $80
	cpl                                              ; $6258: $2f
	add  b                                           ; $6259: $80
	rla                                              ; $625a: $17
	add  b                                           ; $625b: $80
	cpl                                              ; $625c: $2f
	ld   bc, $9097                                   ; $625d: $01 $97 $90
	adc  e                                           ; $6260: $8b
	ld   hl, sp+$02                                  ; $6261: $f8 $02
	ldh  a, [$f7]                                    ; $6263: $f0 $f7
	ld   hl, sp-$7b                                  ; $6265: $f8 $85
	rrca                                             ; $6267: $0f
	add  b                                           ; $6268: $80
	ld   [$0f80], sp                                 ; $6269: $08 $80 $0f
	nop                                              ; $626c: $00
	nop                                              ; $626d: $00
	add  c                                           ; $626e: $81
	rrca                                             ; $626f: $0f
	nop                                              ; $6270: $00
	db   $10                                         ; $6271: $10
	add  e                                           ; $6272: $83
	rst  $28                                         ; $6273: $ef
	add  b                                           ; $6274: $80
	pop  bc                                          ; $6275: $c1
	ld   [bc], a                                     ; $6276: $02
	ld   a, b                                        ; $6277: $78
	ld   a, a                                        ; $6278: $7f
	rlca                                             ; $6279: $07
	add  e                                           ; $627a: $83
	rst  $38                                         ; $627b: $ff
	nop                                              ; $627c: $00
	inc  b                                           ; $627d: $04
	add  c                                           ; $627e: $81
	ei                                               ; $627f: $fb
	nop                                              ; $6280: $00
	ret  nz                                          ; $6281: $c0

	add  b                                           ; $6282: $80
	pop  bc                                          ; $6283: $c1
	ld   bc, $3fff                                   ; $6284: $01 $ff $3f
	add  b                                           ; $6287: $80
	ret  nz                                          ; $6288: $c0

	add  e                                           ; $6289: $83
	rst  $38                                         ; $628a: $ff
	ld   [bc], a                                     ; $628b: $02
	inc  bc                                          ; $628c: $03
	db   $fc                                         ; $628d: $fc
	nop                                              ; $628e: $00
	add  b                                           ; $628f: $80
	rrca                                             ; $6290: $0f
	add  d                                           ; $6291: $82
	rst  $38                                         ; $6292: $ff
	add  b                                           ; $6293: $80
	nop                                              ; $6294: $00
	add  b                                           ; $6295: $80
	rst  $38                                         ; $6296: $ff
	add  b                                           ; $6297: $80
	pop  af                                          ; $6298: $f1
	add  b                                           ; $6299: $80
	ldh  [$80], a                                    ; $629a: $e0 $80
	ld   a, a                                        ; $629c: $7f
	add  e                                           ; $629d: $83
	rst  $38                                         ; $629e: $ff
	nop                                              ; $629f: $00
	cp   $80                                         ; $62a0: $fe $80
	ld   bc, $f105                                   ; $62a2: $01 $05 $f1
	adc  c                                           ; $62a5: $89
	ld   sp, hl                                      ; $62a6: $f9
	ld   a, b                                        ; $62a7: $78
	ld   hl, sp+$00                                  ; $62a8: $f8 $00
	add  c                                           ; $62aa: $81
	rst  $38                                         ; $62ab: $ff
	inc  b                                           ; $62ac: $04
	db   $fc                                         ; $62ad: $fc
	rst  $38                                         ; $62ae: $ff
	db   $e3                                         ; $62af: $e3
	rst  $38                                         ; $62b0: $ff
	rra                                              ; $62b1: $1f
	add  e                                           ; $62b2: $83
	rst  $38                                         ; $62b3: $ff
	add  b                                           ; $62b4: $80
	ld   hl, sp+$11                                  ; $62b5: $f8 $11
	ret  nc                                          ; $62b7: $d0

	nop                                              ; $62b8: $00
	jr   c, jr_072_62bb                              ; $62b9: $38 $00

jr_072_62bb:
	jr   c, jr_072_62bd                              ; $62bb: $38 $00

jr_072_62bd:
	jr   c, jr_072_62bf                              ; $62bd: $38 $00

jr_072_62bf:
	jr   c, jr_072_62c1                              ; $62bf: $38 $00

jr_072_62c1:
	jr   c, jr_072_62c3                              ; $62c1: $38 $00

jr_072_62c3:
	jr   c, jr_072_62c5                              ; $62c3: $38 $00

jr_072_62c5:
	jr   c, jr_072_62c7                              ; $62c5: $38 $00

jr_072_62c7:
	rst  $28                                         ; $62c7: $ef
	rlca                                             ; $62c8: $07
	add  b                                           ; $62c9: $80
	ld   b, $82                                      ; $62ca: $06 $82
	nop                                              ; $62cc: $00
	dec  de                                          ; $62cd: $1b
	ld   bc, $0700                                   ; $62ce: $01 $00 $07

Call_072_62d1:
	nop                                              ; $62d1: $00
	rlca                                             ; $62d2: $07
	nop                                              ; $62d3: $00
	ld   a, $1c                                      ; $62d4: $3e $1c
	and  d                                           ; $62d6: $a2
	add  c                                           ; $62d7: $81
	ld   de, $2b03                                   ; $62d8: $11 $03 $2b
	inc  bc                                          ; $62db: $03
	db   $e3                                         ; $62dc: $e3
	inc  bc                                          ; $62dd: $03
	ld   e, b                                        ; $62de: $58
	ld   [bc], a                                     ; $62df: $02
	db   $fc                                         ; $62e0: $fc
	rlca                                             ; $62e1: $07
	add  e                                           ; $62e2: $83
	rrca                                             ; $62e3: $0f
	rlca                                             ; $62e4: $07
	ccf                                              ; $62e5: $3f
	ld   d, b                                        ; $62e6: $50
	sbc  a                                           ; $62e7: $9f
	ret  nz                                          ; $62e8: $c0

	cp   a                                           ; $62e9: $bf
	add  b                                           ; $62ea: $80
	rst  $38                                         ; $62eb: $ff
	ld   b, $87                                      ; $62ec: $06 $87
	rst  $38                                         ; $62ee: $ff
	rlca                                             ; $62ef: $07
	nop                                              ; $62f0: $00
	rra                                              ; $62f1: $1f
	rst  $38                                         ; $62f2: $ff
	ldh  [$81], a                                    ; $62f3: $e0 $81
	rst  $38                                         ; $62f5: $ff
	ld   [bc], a                                     ; $62f6: $02
	dec  sp                                          ; $62f7: $3b
	rst  $38                                         ; $62f8: $ff
	ccf                                              ; $62f9: $3f
	add  e                                           ; $62fa: $83
	rst  $38                                         ; $62fb: $ff
	ld   [bc], a                                     ; $62fc: $02
	ei                                               ; $62fd: $fb
	nop                                              ; $62fe: $00
	inc  b                                           ; $62ff: $04
	add  e                                           ; $6300: $83
	rst  $38                                         ; $6301: $ff
	nop                                              ; $6302: $00
	ei                                               ; $6303: $fb
	add  b                                           ; $6304: $80
	cp   $84                                         ; $6305: $fe $84
	rst  $38                                         ; $6307: $ff
	add  b                                           ; $6308: $80
	nop                                              ; $6309: $00
	add  e                                           ; $630a: $83
	rst  $38                                         ; $630b: $ff
	ld   a, [bc]                                     ; $630c: $0a
	ld   e, a                                        ; $630d: $5f
	add  b                                           ; $630e: $80
	nop                                              ; $630f: $00
	add  b                                           ; $6310: $80
	cp   a                                           ; $6311: $bf
	ret  nz                                          ; $6312: $c0

	ret  nc                                          ; $6313: $d0

	ldh  [$df], a                                    ; $6314: $e0 $df
	jr   nc, jr_072_6318                             ; $6316: $30 $00

jr_072_6318:
	add  b                                           ; $6318: $80
	ld   hl, sp-$80                                  ; $6319: $f8 $80
	db   $fc                                         ; $631b: $fc
	ld   hl, $c1fe                                   ; $631c: $21 $fe $c1
	ccf                                              ; $631f: $3f
	add  a                                           ; $6320: $87
	rlca                                             ; $6321: $07
	ld   d, c                                        ; $6322: $51
	ld   bc, $0074                                   ; $6323: $01 $74 $00
	cp   l                                           ; $6326: $bd
	ld   h, b                                        ; $6327: $60
	rst  $30                                         ; $6328: $f7
	ld   h, b                                        ; $6329: $60
	pop  hl                                          ; $632a: $e1
	ld   h, b                                        ; $632b: $60
	ld   c, a                                        ; $632c: $4f
	ld   h, b                                        ; $632d: $60
	sub  b                                           ; $632e: $90
	nop                                              ; $632f: $00
	jr   c, jr_072_6332                              ; $6330: $38 $00

jr_072_6332:
	jr   c, jr_072_6334                              ; $6332: $38 $00

jr_072_6334:
	jr   c, jr_072_6336                              ; $6334: $38 $00

jr_072_6336:
	jr   c, jr_072_6338                              ; $6336: $38 $00

jr_072_6338:
	jr   c, jr_072_633a                              ; $6338: $38 $00

jr_072_633a:
	jr   c, jr_072_633c                              ; $633a: $38 $00

jr_072_633c:
	jr   c, jr_072_633e                              ; $633c: $38 $00

jr_072_633e:
	add  sp, -$7d                                    ; $633e: $e8 $83
	rlca                                             ; $6340: $07
	nop                                              ; $6341: $00
	nop                                              ; $6342: $00
	add  a                                           ; $6343: $87
	rlca                                             ; $6344: $07
	nop                                              ; $6345: $00
	ldh  a, [$8a]                                    ; $6346: $f0 $8a
	rrca                                             ; $6348: $0f
	add  b                                           ; $6349: $80
	ld   c, $01                                      ; $634a: $0e $01
	ld   b, $f6                                      ; $634c: $06 $f6
	add  l                                           ; $634e: $85
	rst  $38                                         ; $634f: $ff
	dec  b                                           ; $6350: $05
	pop  af                                          ; $6351: $f1
	rst  $38                                         ; $6352: $ff
	adc  l                                           ; $6353: $8d
	db   $fd                                         ; $6354: $fd
	ld   a, l                                        ; $6355: $7d
	db   $fd                                         ; $6356: $fd
	add  b                                           ; $6357: $80
	db   $ed                                         ; $6358: $ed
	inc  b                                           ; $6359: $04
	ld   bc, $c2c3                                   ; $635a: $01 $c3 $c2
	add  e                                           ; $635d: $83
	add  c                                           ; $635e: $81
	add  a                                           ; $635f: $87
	inc  bc                                          ; $6360: $03
	add  c                                           ; $6361: $81
	nop                                              ; $6362: $00
	ld   [bc], a                                     ; $6363: $02
	ldh  [rAUD4LEN], a                               ; $6364: $e0 $20
	ldh  [$84], a                                    ; $6366: $e0 $84
	and  b                                           ; $6368: $a0
	add  b                                           ; $6369: $80
	ldh  [$80], a                                    ; $636a: $e0 $80
	and  b                                           ; $636c: $a0
	add  b                                           ; $636d: $80
	jr   nz, jr_072_6370                             ; $636e: $20 $00

jr_072_6370:
	call c, $fc81                                    ; $6370: $dc $81 $fc
	add  b                                           ; $6373: $80
	ld   hl, sp-$80                                  ; $6374: $f8 $80
	ret  nz                                          ; $6376: $c0

	add  [hl]                                        ; $6377: $86
	nop                                              ; $6378: $00
	add  b                                           ; $6379: $80
	ret  nz                                          ; $637a: $c0

	add  h                                           ; $637b: $84
	nop                                              ; $637c: $00
	ld   hl, $0001                                   ; $637d: $21 $01 $00
	ld   bc, $0e00                                   ; $6380: $01 $00 $0e
	nop                                              ; $6383: $00
	jr   nc, jr_072_6386                             ; $6384: $30 $00

jr_072_6386:
	xor  $00                                         ; $6386: $ee $00
	jr   c, jr_072_638a                              ; $6388: $38 $00

jr_072_638a:
	jr   c, jr_072_638c                              ; $638a: $38 $00

jr_072_638c:
	jr   c, jr_072_638e                              ; $638c: $38 $00

jr_072_638e:
	jr   c, jr_072_6390                              ; $638e: $38 $00

jr_072_6390:
	ld   hl, sp+$00                                  ; $6390: $f8 $00

jr_072_6392:
	xor  b                                           ; $6392: $a8
	nop                                              ; $6393: $00
	ld   l, [hl]                                     ; $6394: $6e
	nop                                              ; $6395: $00
	sub  c                                           ; $6396: $91
	inc  a                                           ; $6397: $3c
	cp   h                                           ; $6398: $bc
	ld   a, h                                        ; $6399: $7c
	db   $fc                                         ; $639a: $fc
	db   $fd                                         ; $639b: $fd
	db   $fc                                         ; $639c: $fc
	rst  $38                                         ; $639d: $ff
	ld   a, [$80fb]                                  ; $639e: $fa $fb $80
	rst  $20                                         ; $63a1: $e7
	add  b                                           ; $63a2: $80
	rst  JumpTable                                         ; $63a3: $df
	add  b                                           ; $63a4: $80
	cp   a                                           ; $63a5: $bf
	dec  b                                           ; $63a6: $05
	ld   b, b                                        ; $63a7: $40
	ld   a, a                                        ; $63a8: $7f
	ccf                                              ; $63a9: $3f
	rst  $38                                         ; $63aa: $ff
	ld   a, a                                        ; $63ab: $7f
	db   $fc                                         ; $63ac: $fc
	add  b                                           ; $63ad: $80
	cp   $04                                         ; $63ae: $fe $04
	ld   a, [hl-]                                    ; $63b0: $3a
	ld   hl, sp-$40                                  ; $63b1: $f8 $c0
	ld   hl, sp-$06                                  ; $63b3: $f8 $fa
	add  b                                           ; $63b5: $80
	db   $fc                                         ; $63b6: $fc
	ld   c, $ff                                      ; $63b7: $0e $ff
	inc  bc                                          ; $63b9: $03
	rst  $38                                         ; $63ba: $ff
	di                                               ; $63bb: $f3
	ldh  a, [c]                                      ; $63bc: $f2
	xor  $70                                         ; $63bd: $ee $70
	daa                                              ; $63bf: $27
	rst  $38                                         ; $63c0: $ff
	ld   a, b                                        ; $63c1: $78
	ccf                                              ; $63c2: $3f
	rrca                                             ; $63c3: $0f
	ccf                                              ; $63c4: $3f
	or   a                                           ; $63c5: $b7
	ld   a, a                                        ; $63c6: $7f
	add  b                                           ; $63c7: $80
	rst  $38                                         ; $63c8: $ff
	nop                                              ; $63c9: $00
	inc  bc                                          ; $63ca: $03
	add  c                                           ; $63cb: $81
	rst  $38                                         ; $63cc: $ff
	nop                                              ; $63cd: $00
	rra                                              ; $63ce: $1f
	add  c                                           ; $63cf: $81
	rst  $38                                         ; $63d0: $ff
	nop                                              ; $63d1: $00
	rra                                              ; $63d2: $1f
	add  l                                           ; $63d3: $85
	rst  $38                                         ; $63d4: $ff
	nop                                              ; $63d5: $00
	ei                                               ; $63d6: $fb
	add  c                                           ; $63d7: $81
	rst  $38                                         ; $63d8: $ff
	add  b                                           ; $63d9: $80
	db   $fc                                         ; $63da: $fc
	inc  b                                           ; $63db: $04
	ei                                               ; $63dc: $fb
	db   $fc                                         ; $63dd: $fc
	ld   sp, hl                                      ; $63de: $f9
	rst  $38                                         ; $63df: $ff
	cp   $88                                         ; $63e0: $fe $88
	rst  $38                                         ; $63e2: $ff
	ld   [bc], a                                     ; $63e3: $02
	cp   a                                           ; $63e4: $bf
	add  e                                           ; $63e5: $83
	ccf                                              ; $63e6: $3f
	add  b                                           ; $63e7: $80
	rst  $38                                         ; $63e8: $ff
	nop                                              ; $63e9: $00
	inc  bc                                          ; $63ea: $03
	add  e                                           ; $63eb: $83
	rst  $38                                         ; $63ec: $ff
	ld   b, $90                                      ; $63ed: $06 $90
	ld   h, b                                        ; $63ef: $60
	jr   z, jr_072_6392                              ; $63f0: $28 $a0

	add  h                                           ; $63f2: $84
	ret  nz                                          ; $63f3: $c0

	jp   $e080                                       ; $63f4: $c3 $80 $e0


	add  b                                           ; $63f7: $80
	ldh  a, [$80]                                    ; $63f8: $f0 $80
	db   $fc                                         ; $63fa: $fc
	add  b                                           ; $63fb: $80
	cp   $12                                         ; $63fc: $fe $12
	rst  $38                                         ; $63fe: $ff
	cpl                                              ; $63ff: $2f
	nop                                              ; $6400: $00
	jr   c, jr_072_6403                              ; $6401: $38 $00

jr_072_6403:
	jr   c, jr_072_6405                              ; $6403: $38 $00

jr_072_6405:
	ld   a, $00                                      ; $6405: $3e $00
	ccf                                              ; $6407: $3f
	ld   c, $bf                                      ; $6408: $0e $bf
	rrca                                             ; $640a: $0f
	rst  $28                                         ; $640b: $ef
	rrca                                             ; $640c: $0f
	ld   a, [hl]                                     ; $640d: $7e
	rrca                                             ; $640e: $0f
	rst  $38                                         ; $640f: $ff
	ld   bc, $0080                                   ; $6410: $01 $80 $00
	dec  bc                                          ; $6413: $0b
	inc  b                                           ; $6414: $04
	nop                                              ; $6415: $00
	inc  bc                                          ; $6416: $03
	nop                                              ; $6417: $00
	ld   b, $00                                      ; $6418: $06 $00
	add  c                                           ; $641a: $81
	nop                                              ; $641b: $00
	adc  e                                           ; $641c: $8b
	nop                                              ; $641d: $00
	jr   nc, jr_072_6420                             ; $641e: $30 $00

jr_072_6420:
	ld   e, a                                        ; $6420: $5f
	ld   [bc], a                                     ; $6421: $02
	add  [hl]                                        ; $6422: $86
	nop                                              ; $6423: $00
	ld   bc, $000f                                   ; $6424: $01 $0f $00
	add  b                                           ; $6427: $80
	dec  bc                                          ; $6428: $0b
	add  e                                           ; $6429: $83
	rrca                                             ; $642a: $0f
	add  l                                           ; $642b: $85
	nop                                              ; $642c: $00
	ld   bc, $2bd4                                   ; $642d: $01 $d4 $2b
	add  b                                           ; $6430: $80
	add  l                                           ; $6431: $85
	add  b                                           ; $6432: $80
	jp   $f580                                       ; $6433: $c3 $80 $f5


	nop                                              ; $6436: $00
	rst  $38                                         ; $6437: $ff
	add  l                                           ; $6438: $85
	nop                                              ; $6439: $00
	ld   bc, $c738                                   ; $643a: $01 $38 $c7
	add  b                                           ; $643d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $643e: $cf
	add  b                                           ; $643f: $80
	rst  JumpTable                                         ; $6440: $df
	add  b                                           ; $6441: $80
	ld   h, a                                        ; $6442: $67
	nop                                              ; $6443: $00
	rst  $38                                         ; $6444: $ff
	add  l                                           ; $6445: $85
	nop                                              ; $6446: $00
	ld   bc, $9f60                                   ; $6447: $01 $60 $9f
	add  b                                           ; $644a: $80
	rra                                              ; $644b: $1f
	add  e                                           ; $644c: $83
	rst  $38                                         ; $644d: $ff
	add  l                                           ; $644e: $85
	nop                                              ; $644f: $00
	add  b                                           ; $6450: $80
	rst  $38                                         ; $6451: $ff
	ld   [bc], a                                     ; $6452: $02
	ld   a, a                                        ; $6453: $7f
	rst  $38                                         ; $6454: $ff
	ld   a, a                                        ; $6455: $7f
	add  c                                           ; $6456: $81
	rst  $38                                         ; $6457: $ff
	add  [hl]                                        ; $6458: $86
	nop                                              ; $6459: $00
	nop                                              ; $645a: $00
	rst  $38                                         ; $645b: $ff
	add  d                                           ; $645c: $82
	db   $fc                                         ; $645d: $fc
	add  c                                           ; $645e: $81
	ld   sp, hl                                      ; $645f: $f9
	nop                                              ; $6460: $00
	ld   b, $85                                      ; $6461: $06 $85
	nop                                              ; $6463: $00
	ld   bc, $cab5                                   ; $6464: $01 $b5 $ca
	add  b                                           ; $6467: $80
	jp   nc, $1500                                   ; $6468: $d2 $00 $15

	add  c                                           ; $646b: $81
	sub  l                                           ; $646c: $95
	nop                                              ; $646d: $00
	rst  $38                                         ; $646e: $ff
	add  l                                           ; $646f: $85
	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	ld   d, l                                        ; $6472: $55
	add  c                                           ; $6473: $81
	xor  d                                           ; $6474: $aa
	add  b                                           ; $6475: $80
	ld   a, [hl+]                                    ; $6476: $2a
	add  b                                           ; $6477: $80
	ld   c, d                                        ; $6478: $4a
	nop                                              ; $6479: $00
	rst  $38                                         ; $647a: $ff
	add  l                                           ; $647b: $85
	nop                                              ; $647c: $00
	ld   bc, $956a                                   ; $647d: $01 $6a $95
	add  b                                           ; $6480: $80
	and  l                                           ; $6481: $a5
	add  b                                           ; $6482: $80
	xor  c                                           ; $6483: $a9
	add  b                                           ; $6484: $80
	xor  d                                           ; $6485: $aa
	nop                                              ; $6486: $00
	rst  $38                                         ; $6487: $ff
	add  l                                           ; $6488: $85
	nop                                              ; $6489: $00
	nop                                              ; $648a: $00
	xor  d                                           ; $648b: $aa
	add  l                                           ; $648c: $85
	ld   d, l                                        ; $648d: $55
	nop                                              ; $648e: $00
	rst  $38                                         ; $648f: $ff
	add  l                                           ; $6490: $85
	nop                                              ; $6491: $00
	nop                                              ; $6492: $00
	xor  d                                           ; $6493: $aa
	add  e                                           ; $6494: $83
	ld   d, l                                        ; $6495: $55
	add  b                                           ; $6496: $80
	ld   d, h                                        ; $6497: $54
	nop                                              ; $6498: $00
	rst  $38                                         ; $6499: $ff
	add  l                                           ; $649a: $85
	nop                                              ; $649b: $00
	ld   bc, $52ad                                   ; $649c: $01 $ad $52
	add  b                                           ; $649f: $80
	ld   c, d                                        ; $64a0: $4a
	add  b                                           ; $64a1: $80
	ld   a, [hl+]                                    ; $64a2: $2a
	add  b                                           ; $64a3: $80
	xor  d                                           ; $64a4: $aa
	nop                                              ; $64a5: $00
	rst  $38                                         ; $64a6: $ff
	add  l                                           ; $64a7: $85
	nop                                              ; $64a8: $00
	nop                                              ; $64a9: $00
	ld   d, l                                        ; $64aa: $55
	add  c                                           ; $64ab: $81
	xor  d                                           ; $64ac: $aa
	add  b                                           ; $64ad: $80
	xor  c                                           ; $64ae: $a9
	add  b                                           ; $64af: $80
	and  l                                           ; $64b0: $a5
	nop                                              ; $64b1: $00
	rst  $38                                         ; $64b2: $ff
	add  l                                           ; $64b3: $85
	nop                                              ; $64b4: $00
	ld   bc, $a35e                                   ; $64b5: $01 $5e $a3
	add  b                                           ; $64b8: $80
	sub  e                                           ; $64b9: $93
	nop                                              ; $64ba: $00
	ld   d, d                                        ; $64bb: $52
	add  c                                           ; $64bc: $81
	ld   d, c                                        ; $64bd: $51
	nop                                              ; $64be: $00
	cp   $85                                         ; $64bf: $fe $85
	nop                                              ; $64c1: $00
	nop                                              ; $64c2: $00
	rst  $38                                         ; $64c3: $ff
	add  c                                           ; $64c4: $81
	ccf                                              ; $64c5: $3f
	nop                                              ; $64c6: $00
	cp   a                                           ; $64c7: $bf
	add  c                                           ; $64c8: $81
	sbc  a                                           ; $64c9: $9f
	nop                                              ; $64ca: $00
	ldh  [$85], a                                    ; $64cb: $e0 $85
	nop                                              ; $64cd: $00
	nop                                              ; $64ce: $00
	rst  $38                                         ; $64cf: $ff
	add  b                                           ; $64d0: $80
	db   $fc                                         ; $64d1: $fc
	add  b                                           ; $64d2: $80
	cp   $04                                         ; $64d3: $fe $04
	db   $fc                                         ; $64d5: $fc
	rst  $20                                         ; $64d6: $e7
	rst  $38                                         ; $64d7: $ff
	inc  de                                          ; $64d8: $13
	rlca                                             ; $64d9: $07
	add  b                                           ; $64da: $80
	dec  bc                                          ; $64db: $0b
	add  b                                           ; $64dc: $80
	dec  b                                           ; $64dd: $05
	add  b                                           ; $64de: $80
	nop                                              ; $64df: $00
	add  b                                           ; $64e0: $80
	dec  b                                           ; $64e1: $05
	add  b                                           ; $64e2: $80
	nop                                              ; $64e3: $00
	add  b                                           ; $64e4: $80
	ld   bc, $0080                                   ; $64e5: $01 $80 $00
	ld   bc, $c232                                   ; $64e8: $01 $32 $c2
	add  b                                           ; $64eb: $80
	push af                                          ; $64ec: $f5
	add  b                                           ; $64ed: $80
	ld   [hl], b                                     ; $64ee: $70
	add  b                                           ; $64ef: $80
	or   c                                           ; $64f0: $b1
	add  b                                           ; $64f1: $80
	ld   c, b                                        ; $64f2: $48
	add  b                                           ; $64f3: $80
	and  c                                           ; $64f4: $a1
	add  b                                           ; $64f5: $80
	ld   b, d                                        ; $64f6: $42
	add  b                                           ; $64f7: $80
	nop                                              ; $64f8: $00
	add  b                                           ; $64f9: $80
	rst  $38                                         ; $64fa: $ff
	add  b                                           ; $64fb: $80
	ld   l, a                                        ; $64fc: $6f
	add  b                                           ; $64fd: $80
	and  a                                           ; $64fe: $a7
	add  b                                           ; $64ff: $80
	dec  bc                                          ; $6500: $0b

jr_072_6501:
	add  b                                           ; $6501: $80
	add  l                                           ; $6502: $85
	add  b                                           ; $6503: $80
	ld   a, [bc]                                     ; $6504: $0a
	add  b                                           ; $6505: $80
	dec  b                                           ; $6506: $05
	add  b                                           ; $6507: $80
	ld   [bc], a                                     ; $6508: $02
	add  b                                           ; $6509: $80
	push af                                          ; $650a: $f5
	add  b                                           ; $650b: $80
	ld   [$f703], a                                  ; $650c: $ea $03 $f7
	db   $f4                                         ; $650f: $f4
	cp   c                                           ; $6510: $b9
	cp   d                                           ; $6511: $ba
	add  b                                           ; $6512: $80
	rra                                              ; $6513: $1f
	add  b                                           ; $6514: $80
	adc  a                                           ; $6515: $8f
	add  b                                           ; $6516: $80
	ld   e, a                                        ; $6517: $5f
	add  b                                           ; $6518: $80
	ld   a, [bc]                                     ; $6519: $0a
	ld   bc, $ff80                                   ; $651a: $01 $80 $ff
	add  b                                           ; $651d: $80
	xor  d                                           ; $651e: $aa
	inc  b                                           ; $651f: $04
	push de                                          ; $6520: $d5
	ld   d, l                                        ; $6521: $55
	ld   a, [hl+]                                    ; $6522: $2a
	xor  d                                           ; $6523: $aa
	add  b                                           ; $6524: $80
	add  d                                           ; $6525: $82
	ldh  a, [rDIV]                                   ; $6526: $f0 $04
	ldh  [$60], a                                    ; $6528: $e0 $60
	ld   [hl], b                                     ; $652a: $70
	ld   c, $f3                                      ; $652b: $0e $f3
	add  b                                           ; $652d: $80
	and  e                                           ; $652e: $a3
	ld   bc, $4650                                   ; $652f: $01 $50 $46
	add  b                                           ; $6532: $80
	and  [hl]                                        ; $6533: $a6
	ld   bc, $0c20                                   ; $6534: $01 $20 $0c
	add  b                                           ; $6537: $80
	inc  b                                           ; $6538: $04
	dec  b                                           ; $6539: $05
	ld   c, b                                        ; $653a: $48
	nop                                              ; $653b: $00
	db   $10                                         ; $653c: $10
	ld   [$25bd], sp                                 ; $653d: $08 $bd $25
	add  b                                           ; $6540: $80
	add  hl, hl                                      ; $6541: $29
	add  b                                           ; $6542: $80
	ld   a, [hl+]                                    ; $6543: $2a
	add  d                                           ; $6544: $82
	ld   c, d                                        ; $6545: $4a
	add  b                                           ; $6546: $80
	ld   d, d                                        ; $6547: $52
	add  b                                           ; $6548: $80
	sub  h                                           ; $6549: $94
	add  b                                           ; $654a: $80
	sub  l                                           ; $654b: $95
	add  b                                           ; $654c: $80
	ld   d, d                                        ; $654d: $52
	add  b                                           ; $654e: $80
	ld   d, h                                        ; $654f: $54
	add  b                                           ; $6550: $80
	ld   d, l                                        ; $6551: $55
	add  b                                           ; $6552: $80
	sub  l                                           ; $6553: $95
	add  b                                           ; $6554: $80
	and  l                                           ; $6555: $a5
	add  d                                           ; $6556: $82
	xor  c                                           ; $6557: $a9
	add  b                                           ; $6558: $80
	ld   a, [hl+]                                    ; $6559: $2a
	add  d                                           ; $655a: $82
	xor  d                                           ; $655b: $aa
	adc  d                                           ; $655c: $8a
	ld   a, [hl+]                                    ; $655d: $2a
	add  b                                           ; $655e: $80
	sub  l                                           ; $655f: $95
	add  b                                           ; $6560: $80
	and  l                                           ; $6561: $a5
	adc  d                                           ; $6562: $8a
	xor  d                                           ; $6563: $aa
	add  b                                           ; $6564: $80
	ld   d, d                                        ; $6565: $52
	add  b                                           ; $6566: $80
	ld   c, d                                        ; $6567: $4a
	adc  [hl]                                        ; $6568: $8e
	xor  d                                           ; $6569: $aa
	adc  b                                           ; $656a: $88
	xor  c                                           ; $656b: $a9
	add  b                                           ; $656c: $80
	xor  b                                           ; $656d: $a8
	add  b                                           ; $656e: $80
	sub  l                                           ; $656f: $95
	add  b                                           ; $6570: $80
	ld   d, l                                        ; $6571: $55
	add  b                                           ; $6572: $80
	ld   d, h                                        ; $6573: $54
	add  b                                           ; $6574: $80
	ld   d, d                                        ; $6575: $52
	add  b                                           ; $6576: $80
	ld   c, d                                        ; $6577: $4a
	add  d                                           ; $6578: $82
	ld   a, [hl+]                                    ; $6579: $2a
	add  b                                           ; $657a: $80
	xor  c                                           ; $657b: $a9
	add  b                                           ; $657c: $80
	ld   c, b                                        ; $657d: $48
	add  b                                           ; $657e: $80
	jr   z, jr_072_6501                              ; $657f: $28 $80

	xor  b                                           ; $6581: $a8
	add  d                                           ; $6582: $82
	and  h                                           ; $6583: $a4
	add  b                                           ; $6584: $80
	sub  h                                           ; $6585: $94
	add  d                                           ; $6586: $82
	ld   d, d                                        ; $6587: $52
	ld   bc, $cf40                                   ; $6588: $01 $40 $cf
	add  b                                           ; $658b: $80
	push bc                                          ; $658c: $c5
	ld   bc, $62aa                                   ; $658d: $01 $aa $62
	add  b                                           ; $6590: $80
	ld   h, l                                        ; $6591: $65
	nop                                              ; $6592: $00
	ld   d, h                                        ; $6593: $54
	add  c                                           ; $6594: $81
	jr   nc, @+$06                                   ; $6595: $30 $04

	ld   [hl+], a                                    ; $6597: $22
	nop                                              ; $6598: $00
	db   $10                                         ; $6599: $10
	ld   [$81e6], sp                                 ; $659a: $08 $e6 $81
	rst  $38                                         ; $659d: $ff
	ld   bc, $7dfd                                   ; $659e: $01 $fd $7d
	add  b                                           ; $65a1: $80
	ld   l, b                                        ; $65a2: $68
	ld   bc, $d050                                   ; $65a3: $01 $50 $d0
	add  b                                           ; $65a6: $80
	and  b                                           ; $65a7: $a0
	nop                                              ; $65a8: $00
	ret  nz                                          ; $65a9: $c0

	add  c                                           ; $65aa: $81
	nop                                              ; $65ab: $00
	nop                                              ; $65ac: $00
	jr   nc, @-$7c                                   ; $65ad: $30 $82

	nop                                              ; $65af: $00
	add  b                                           ; $65b0: $80
	ld   [$0680], sp                                 ; $65b1: $08 $80 $06
	inc  bc                                          ; $65b4: $03
	ld   bc, $0003                                   ; $65b5: $01 $03 $00
	ld   bc, $0481                                   ; $65b8: $01 $81 $04
	ld   bc, $44b3                                   ; $65bb: $01 $b3 $44
	add  b                                           ; $65be: $80
	xor  [hl]                                        ; $65bf: $ae
	add  b                                           ; $65c0: $80
	ld   e, a                                        ; $65c1: $5f
	add  b                                           ; $65c2: $80
	dec  hl                                          ; $65c3: $2b
	ld   [bc], a                                     ; $65c4: $02
	dec  b                                           ; $65c5: $05
	add  l                                           ; $65c6: $85
	add  b                                           ; $65c7: $80
	add  b                                           ; $65c8: $80
	ld   h, b                                        ; $65c9: $60
	inc  b                                           ; $65ca: $04
	jr   jr_072_6605                                 ; $65cb: $18 $38

	ld   b, $23                                      ; $65cd: $06 $23
	dec  b                                           ; $65cf: $05
	add  b                                           ; $65d0: $80
	cpl                                              ; $65d1: $2f
	add  b                                           ; $65d2: $80
	sbc  a                                           ; $65d3: $9f
	add  b                                           ; $65d4: $80
	jp   z, $8580                                    ; $65d5: $ca $80 $85

	add  b                                           ; $65d8: $80
	jp   $0580                                       ; $65d9: $c3 $80 $05


	inc  bc                                          ; $65dc: $03
	ld   [$8088], sp                                 ; $65dd: $08 $88 $80
	nop                                              ; $65e0: $00
	add  b                                           ; $65e1: $80
	and  b                                           ; $65e2: $a0
	add  d                                           ; $65e3: $82
	ldh  a, [$80]                                    ; $65e4: $f0 $80
	ld   a, [hl]                                     ; $65e6: $7e
	add  b                                           ; $65e7: $80
	cp   a                                           ; $65e8: $bf
	add  b                                           ; $65e9: $80
	dec  hl                                          ; $65ea: $2b
	add  b                                           ; $65eb: $80
	add  e                                           ; $65ec: $83
	ld   [de], a                                     ; $65ed: $12
	rrca                                             ; $65ee: $0f
	nop                                              ; $65ef: $00
	ld   de, $2600                                   ; $65f0: $11 $00 $26
	ld   bc, $06d9                                   ; $65f3: $01 $d9 $06
	or   $08                                         ; $65f6: $f6 $08
	ld   a, l                                        ; $65f8: $7d
	dec  b                                           ; $65f9: $05
	ld   a, c                                        ; $65fa: $79
	add  hl, de                                      ; $65fb: $19
	nop                                              ; $65fc: $00
	ld   [hl+], a                                    ; $65fd: $22
	ld   e, $1c                                      ; $65fe: $1e $1c
	add  hl, hl                                      ; $6600: $29
	add  b                                           ; $6601: $80
	add  hl, bc                                      ; $6602: $09
	ld   [bc], a                                     ; $6603: $02
	adc  c                                           ; $6604: $89

jr_072_6605:
	sub  d                                           ; $6605: $92
	ld   [de], a                                     ; $6606: $12
	add  b                                           ; $6607: $80
	sub  d                                           ; $6608: $92
	add  d                                           ; $6609: $82
	inc  h                                           ; $660a: $24
	inc  bc                                          ; $660b: $03
	nop                                              ; $660c: $00
	ld   c, c                                        ; $660d: $49
	db   $ec                                         ; $660e: $ec
	and  l                                           ; $660f: $a5
	add  b                                           ; $6610: $80
	dec  h                                           ; $6611: $25
	add  b                                           ; $6612: $80
	add  hl, hl                                      ; $6613: $29
	add  d                                           ; $6614: $82
	ld   c, d                                        ; $6615: $4a
	add  b                                           ; $6616: $80
	sub  d                                           ; $6617: $92
	add  b                                           ; $6618: $80
	and  l                                           ; $6619: $a5
	ld   [bc], a                                     ; $661a: $02
	nop                                              ; $661b: $00
	dec  h                                           ; $661c: $25
	ld   l, a                                        ; $661d: $6f
	add  c                                           ; $661e: $81
	ld   c, d                                        ; $661f: $4a
	add  b                                           ; $6620: $80
	ld   d, d                                        ; $6621: $52
	add  h                                           ; $6622: $84
	sub  d                                           ; $6623: $92
	add  b                                           ; $6624: $80
	inc  h                                           ; $6625: $24
	ld   [bc], a                                     ; $6626: $02
	nop                                              ; $6627: $00
	inc  h                                           ; $6628: $24
	ld   l, [hl]                                     ; $6629: $6e
	add  e                                           ; $662a: $83
	ld   c, d                                        ; $662b: $4a
	add  h                                           ; $662c: $84
	ld   d, d                                        ; $662d: $52
	add  b                                           ; $662e: $80
	sub  d                                           ; $662f: $92
	ld   [bc], a                                     ; $6630: $02
	nop                                              ; $6631: $00
	and  l                                           ; $6632: $a5
	rrca                                             ; $6633: $0f
	adc  e                                           ; $6634: $8b
	xor  d                                           ; $6635: $aa
	ld   [bc], a                                     ; $6636: $02
	nop                                              ; $6637: $00
	ld   a, [hl+]                                    ; $6638: $2a
	add  b                                           ; $6639: $80
	adc  e                                           ; $663a: $8b
	xor  d                                           ; $663b: $aa
	ld   [bc], a                                     ; $663c: $02
	nop                                              ; $663d: $00
	xor  c                                           ; $663e: $a9
	dec  c                                           ; $663f: $0d
	add  e                                           ; $6640: $83
	and  h                                           ; $6641: $a4
	add  h                                           ; $6642: $84
	sub  h                                           ; $6643: $94
	add  b                                           ; $6644: $80
	sub  d                                           ; $6645: $92
	ld   [bc], a                                     ; $6646: $02
	nop                                              ; $6647: $00
	ld   c, d                                        ; $6648: $4a
	rst  $28                                         ; $6649: $ef
	add  c                                           ; $664a: $81
	and  l                                           ; $664b: $a5
	add  b                                           ; $664c: $80
	sub  l                                           ; $664d: $95
	add  h                                           ; $664e: $84
	sub  d                                           ; $664f: $92
	add  b                                           ; $6650: $80
	ld   c, c                                        ; $6651: $49
	inc  bc                                          ; $6652: $03
	nop                                              ; $6653: $00
	ld   c, c                                        ; $6654: $49
	inc  bc                                          ; $6655: $03
	ld   c, d                                        ; $6656: $4a
	add  b                                           ; $6657: $80
	ld   c, c                                        ; $6658: $49
	add  b                                           ; $6659: $80
	add  hl, hl                                      ; $665a: $29
	add  d                                           ; $665b: $82
	and  h                                           ; $665c: $a4
	add  b                                           ; $665d: $80
	sub  d                                           ; $665e: $92
	add  b                                           ; $665f: $80
	ld   c, d                                        ; $6660: $4a
	inc  b                                           ; $6661: $04
	nop                                              ; $6662: $00
	ld   c, c                                        ; $6663: $49
	ld   d, l                                        ; $6664: $55
	inc  a                                           ; $6665: $3c
	nop                                              ; $6666: $00
	add  b                                           ; $6667: $80
	jr   nz, @+$04                                   ; $6668: $20 $02

	ld   hl, $9091                                   ; $666a: $21 $91 $90
	add  b                                           ; $666d: $80
	sub  d                                           ; $666e: $92
	add  d                                           ; $666f: $82
	ld   c, c                                        ; $6670: $49
	dec  bc                                          ; $6671: $0b
	nop                                              ; $6672: $00
	inc  h                                           ; $6673: $24
	call nz, $9900                                   ; $6674: $c4 $00 $99
	nop                                              ; $6677: $00
	ld   h, [hl]                                     ; $6678: $66
	add  c                                           ; $6679: $81
	sbc  c                                           ; $667a: $99
	ld   h, a                                        ; $667b: $67
	ld   l, [hl]                                     ; $667c: $6e
	ld   c, $80                                      ; $667d: $0e $80
	daa                                              ; $667f: $27
	add  b                                           ; $6680: $80
	ld   e, $04                                      ; $6681: $1e $04
	dec  c                                           ; $6683: $0d
	adc  l                                           ; $6684: $8d
	ld   [hl], e                                     ; $6685: $73
	nop                                              ; $6686: $00
	inc  bc                                          ; $6687: $03
	add  b                                           ; $6688: $80
	ld   [$0e13], sp                                 ; $6689: $08 $13 $0e
	ld   b, $0f                                      ; $668c: $06 $0f
	rlca                                             ; $668e: $07
	rrca                                             ; $668f: $0f
	add  hl, bc                                      ; $6690: $09

jr_072_6691:
	rrca                                             ; $6691: $0f
	add  hl, bc                                      ; $6692: $09
	rrca                                             ; $6693: $0f
	ld   c, $0f                                      ; $6694: $0e $0f
	jp   z, Jump_072_4741                            ; $6696: $ca $41 $47

	ld   b, h                                        ; $6699: $44
	ld   d, h                                        ; $669a: $54
	inc  b                                           ; $669b: $04
	inc  h                                           ; $669c: $24
	call nz, $80c6                                   ; $669d: $c4 $c6 $80
	ldh  a, [rTIMA]                                  ; $66a0: $f0 $05
	cp   $e6                                         ; $66a2: $fe $e6
	rst  $38                                         ; $66a4: $ff
	ld   h, a                                        ; $66a5: $67
	rst  $38                                         ; $66a6: $ff
	ld   a, a                                        ; $66a7: $7f
	add  b                                           ; $66a8: $80
	add  h                                           ; $66a9: $84

jr_072_66aa:
	add  b                                           ; $66aa: $80
	ldh  [c], a                                      ; $66ab: $e2
	ld   bc, $8898                                   ; $66ac: $01 $98 $88
	add  b                                           ; $66af: $80
	and  [hl]                                        ; $66b0: $a6
	inc  bc                                          ; $66b1: $03
	and  c                                           ; $66b2: $a1
	and  e                                           ; $66b3: $a3
	and  h                                           ; $66b4: $a4
	or   h                                           ; $66b5: $b4
	add  b                                           ; $66b6: $80
	add  h                                           ; $66b7: $84
	ld   [bc], a                                     ; $66b8: $02

jr_072_66b9:
	ldh  [hScriptOpcodeParams+4], a                                    ; $66b9: $e0 $a4
	ld   b, [hl]                                     ; $66bb: $46
	add  b                                           ; $66bc: $80

jr_072_66bd:
	and  c                                           ; $66bd: $a1
	add  b                                           ; $66be: $80
	ld   b, d                                        ; $66bf: $42
	add  b                                           ; $66c0: $80
	ld   de, $0000                                   ; $66c1: $11 $00 $00
	add  b                                           ; $66c4: $80
	add  b                                           ; $66c5: $80
	ld   bc, $2060                                   ; $66c6: $01 $60 $20
	add  b                                           ; $66c9: $80
	sbc  b                                           ; $66ca: $98
	ld   [bc], a                                     ; $66cb: $02
	sub  [hl]                                        ; $66cc: $96
	add  hl, hl                                      ; $66cd: $29
	rst  $38                                         ; $66ce: $ff
	add  b                                           ; $66cf: $80
	ret  nz                                          ; $66d0: $c0

	add  b                                           ; $66d1: $80
	rst  $38                                         ; $66d2: $ff
	add  b                                           ; $66d3: $80
	ld   d, b                                        ; $66d4: $50
	add  b                                           ; $66d5: $80
	adc  b                                           ; $66d6: $88
	add  b                                           ; $66d7: $80
	inc  b                                           ; $66d8: $04
	add  b                                           ; $66d9: $80
	add  hl, bc                                      ; $66da: $09
	inc  bc                                          ; $66db: $03
	nop                                              ; $66dc: $00
	ld   b, b                                        ; $66dd: $40
	cp   a                                           ; $66de: $bf
	rst  $38                                         ; $66df: $ff
	add  b                                           ; $66e0: $80
	nop                                              ; $66e1: $00
	add  b                                           ; $66e2: $80
	rst  $38                                         ; $66e3: $ff
	add  b                                           ; $66e4: $80
	nop                                              ; $66e5: $00
	add  d                                           ; $66e6: $82
	ld   bc, $ff80                                   ; $66e7: $01 $80 $ff
	add  b                                           ; $66ea: $80
	ld   bc, $ff80                                   ; $66eb: $01 $80 $ff
	add  b                                           ; $66ee: $80
	nop                                              ; $66ef: $00
	add  b                                           ; $66f0: $80
	rst  $38                                         ; $66f1: $ff
	add  b                                           ; $66f2: $80
	nop                                              ; $66f3: $00
	add  d                                           ; $66f4: $82
	add  b                                           ; $66f5: $80
	add  b                                           ; $66f6: $80
	cp   a                                           ; $66f7: $bf
	add  b                                           ; $66f8: $80
	add  b                                           ; $66f9: $80
	add  b                                           ; $66fa: $80
	rst  $38                                         ; $66fb: $ff
	add  b                                           ; $66fc: $80
	nop                                              ; $66fd: $00
	add  b                                           ; $66fe: $80
	rst  $38                                         ; $66ff: $ff
	add  h                                           ; $6700: $84
	nop                                              ; $6701: $00
	add  b                                           ; $6702: $80
	rst  $38                                         ; $6703: $ff
	add  b                                           ; $6704: $80
	inc  c                                           ; $6705: $0c
	add  b                                           ; $6706: $80
	rst  $38                                         ; $6707: $ff
	add  b                                           ; $6708: $80
	nop                                              ; $6709: $00
	add  b                                           ; $670a: $80
	rst  $38                                         ; $670b: $ff
	add  b                                           ; $670c: $80
	nop                                              ; $670d: $00
	add  d                                           ; $670e: $82
	jr   jr_072_6691                                 ; $670f: $18 $80

	ei                                               ; $6711: $fb
	add  b                                           ; $6712: $80
	jr   @-$7e                                       ; $6713: $18 $80

	rst  $38                                         ; $6715: $ff
	add  b                                           ; $6716: $80
	nop                                              ; $6717: $00
	add  b                                           ; $6718: $80
	rst  $38                                         ; $6719: $ff
	add  h                                           ; $671a: $84
	nop                                              ; $671b: $00
	add  b                                           ; $671c: $80
	rst  $38                                         ; $671d: $ff
	add  b                                           ; $671e: $80
	nop                                              ; $671f: $00
	nop                                              ; $6720: $00
	ccf                                              ; $6721: $3f
	add  e                                           ; $6722: $83
	or   b                                           ; $6723: $b0
	ld   bc, $0080                                   ; $6724: $01 $80 $00
	add  b                                           ; $6727: $80
	jr   nc, jr_072_66aa                             ; $6728: $30 $80

	ld   b, b                                        ; $672a: $40
	add  d                                           ; $672b: $82
	ld   [hl], b                                     ; $672c: $70
	ld   bc, $fff0                                   ; $672d: $01 $f0 $ff
	add  b                                           ; $6730: $80
	nop                                              ; $6731: $00
	add  b                                           ; $6732: $80
	rst  $38                                         ; $6733: $ff
	add  b                                           ; $6734: $80
	nop                                              ; $6735: $00
	add  d                                           ; $6736: $82
	jr   jr_072_66b9                                 ; $6737: $18 $80

jr_072_6739:
	ei                                               ; $6739: $fb
	add  b                                           ; $673a: $80
	jr   jr_072_66bd                                 ; $673b: $18 $80

	rst  $38                                         ; $673d: $ff
	add  b                                           ; $673e: $80
	nop                                              ; $673f: $00
	add  b                                           ; $6740: $80
	rst  $38                                         ; $6741: $ff
	add  h                                           ; $6742: $84
	nop                                              ; $6743: $00
	add  b                                           ; $6744: $80
	rst  $38                                         ; $6745: $ff
	add  b                                           ; $6746: $80
	ld   h, b                                        ; $6747: $60
	add  b                                           ; $6748: $80
	rst  $38                                         ; $6749: $ff
	add  b                                           ; $674a: $80
	nop                                              ; $674b: $00
	add  b                                           ; $674c: $80
	rst  $38                                         ; $674d: $ff
	add  b                                           ; $674e: $80
	nop                                              ; $674f: $00
	add  d                                           ; $6750: $82
	inc  bc                                          ; $6751: $03
	add  b                                           ; $6752: $80
	rst  $38                                         ; $6753: $ff
	add  b                                           ; $6754: $80
	inc  bc                                          ; $6755: $03
	add  b                                           ; $6756: $80
	rst  $38                                         ; $6757: $ff
	add  b                                           ; $6758: $80
	inc  bc                                          ; $6759: $03
	add  b                                           ; $675a: $80
	rst  $38                                         ; $675b: $ff
	add  b                                           ; $675c: $80
	inc  e                                           ; $675d: $1c
	add  b                                           ; $675e: $80
	inc  c                                           ; $675f: $0c
	add  b                                           ; $6760: $80
	nop                                              ; $6761: $00
	add  b                                           ; $6762: $80
	ld   a, b                                        ; $6763: $78
	add  b                                           ; $6764: $80
	nop                                              ; $6765: $00
	add  b                                           ; $6766: $80
	cp   h                                           ; $6767: $bc
	add  b                                           ; $6768: $80
	add  [hl]                                        ; $6769: $86
	add  b                                           ; $676a: $80
	ret  nz                                          ; $676b: $c0

	add  b                                           ; $676c: $80
	nop                                              ; $676d: $00
	add  b                                           ; $676e: $80
	ld   [$1580], sp                                 ; $676f: $08 $80 $15
	add  b                                           ; $6772: $80
	add  [hl]                                        ; $6773: $86
	add  b                                           ; $6774: $80
	ld   c, a                                        ; $6775: $4f
	inc  bc                                          ; $6776: $03
	rst  $30                                         ; $6777: $f7
	nop                                              ; $6778: $00
	rrca                                             ; $6779: $0f
	ld   [$0f81], sp                                 ; $677a: $08 $81 $0f
	add  b                                           ; $677d: $80
	rlca                                             ; $677e: $07
	add  d                                           ; $677f: $82
	rrca                                             ; $6780: $0f
	add  b                                           ; $6781: $80
	ld   b, $01                                      ; $6782: $06 $01
	dec  b                                           ; $6784: $05
	inc  b                                           ; $6785: $04
	add  c                                           ; $6786: $81
	nop                                              ; $6787: $00

jr_072_6788:
	ld   b, $e0                                      ; $6788: $06 $e0
	nop                                              ; $678a: $00
	db   $fc                                         ; $678b: $fc
	ret  nz                                          ; $678c: $c0

	sbc  $1c                                         ; $678d: $de $1c
	rra                                              ; $678f: $1f
	add  b                                           ; $6790: $80
	push bc                                          ; $6791: $c5
	add  b                                           ; $6792: $80
	or   [hl]                                        ; $6793: $b6
	dec  d                                           ; $6794: $15
	cp   a                                           ; $6795: $bf
	add  b                                           ; $6796: $80
	inc  a                                           ; $6797: $3c
	adc  h                                           ; $6798: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6799: $cf
	jp   hl                                          ; $679a: $e9


	rst  $38                                         ; $679b: $ff
	ld   sp, hl                                      ; $679c: $f9
	rst  $38                                         ; $679d: $ff
	cp   $ff                                         ; $679e: $fe $ff
	cp   $7f                                         ; $67a0: $fe $7f
	ld   h, a                                        ; $67a2: $67
	ld   a, c                                        ; $67a3: $79
	rra                                              ; $67a4: $1f
	ld   a, [hl]                                     ; $67a5: $7e
	jr   jr_072_6739                                 ; $67a6: $18 $91

	ret  nc                                          ; $67a8: $d0

	ld   [de], a                                     ; $67a9: $12
	ld   a, [de]                                     ; $67aa: $1a
	add  b                                           ; $67ab: $80
	ldh  [c], a                                      ; $67ac: $e2
	add  hl, bc                                      ; $67ad: $09
	ld   hl, sp+$61                                  ; $67ae: $f8 $61

jr_072_67b0:
	cp   $66                                         ; $67b0: $fe $66
	rst  $38                                         ; $67b2: $ff
	adc  $ff                                         ; $67b3: $ce $ff
	jp   nz, $333f                                   ; $67b5: $c2 $3f $33

	add  b                                           ; $67b8: $80
	ret  nz                                          ; $67b9: $c0

	inc  bc                                          ; $67ba: $03
	ld   h, c                                        ; $67bb: $61
	ld   h, b                                        ; $67bc: $60
	ld   e, c                                        ; $67bd: $59
	ld   c, b                                        ; $67be: $48
	add  b                                           ; $67bf: $80
	ld   b, b                                        ; $67c0: $40
	rlca                                             ; $67c1: $07
	ld   b, c                                        ; $67c2: $41
	ld   c, a                                        ; $67c3: $4f
	adc  e                                           ; $67c4: $8b
	adc  d                                           ; $67c5: $8a
	ei                                               ; $67c6: $fb
	ldh  [$f8], a                                    ; $67c7: $e0 $f8
	db   $fd                                         ; $67c9: $fd
	add  c                                           ; $67ca: $81
	rst  $38                                         ; $67cb: $ff
	ld   bc, $ff01                                   ; $67cc: $01 $01 $ff
	add  b                                           ; $67cf: $80
	inc  bc                                          ; $67d0: $03
	nop                                              ; $67d1: $00
	ld   bc, $fd80                                   ; $67d2: $01 $80 $fd
	ld   [bc], a                                     ; $67d5: $02
	rst  $38                                         ; $67d6: $ff
	ld   bc, $80ff                                   ; $67d7: $01 $ff $80
	ld   bc, $c000                                   ; $67da: $01 $00 $c0
	add  c                                           ; $67dd: $81
	rst  $38                                         ; $67de: $ff
	nop                                              ; $67df: $00
	ret  nz                                          ; $67e0: $c0

	add  c                                           ; $67e1: $81
	rst  $38                                         ; $67e2: $ff
	add  b                                           ; $67e3: $80
	nop                                              ; $67e4: $00
	inc  bc                                          ; $67e5: $03
	add  b                                           ; $67e6: $80
	cp   a                                           ; $67e7: $bf
	add  b                                           ; $67e8: $80
	cp   a                                           ; $67e9: $bf
	add  b                                           ; $67ea: $80
	add  b                                           ; $67eb: $80
	nop                                              ; $67ec: $00
	inc  c                                           ; $67ed: $0c
	add  c                                           ; $67ee: $81
	db   $fd                                         ; $67ef: $fd
	nop                                              ; $67f0: $00
	ld   c, $81                                      ; $67f1: $0e $81
	rst  $38                                         ; $67f3: $ff
	add  b                                           ; $67f4: $80
	nop                                              ; $67f5: $00
	inc  bc                                          ; $67f6: $03
	inc  c                                           ; $67f7: $0c
	db   $fc                                         ; $67f8: $fc
	inc  c                                           ; $67f9: $0c
	db   $fc                                         ; $67fa: $fc
	add  b                                           ; $67fb: $80
	inc  c                                           ; $67fc: $0c
	inc  b                                           ; $67fd: $04
	inc  e                                           ; $67fe: $1c
	rst  $38                                         ; $67ff: $ff
	rst  $28                                         ; $6800: $ef
	rst  $38                                         ; $6801: $ff
	inc  e                                           ; $6802: $1c
	add  c                                           ; $6803: $81
	rst  $38                                         ; $6804: $ff
	add  d                                           ; $6805: $82
	jr   jr_072_6788                                 ; $6806: $18 $80

	ret  c                                           ; $6808: $d8

	ld   [bc], a                                     ; $6809: $02
	ld   e, b                                        ; $680a: $58
	ret  c                                           ; $680b: $d8

	sub  b                                           ; $680c: $90
	add  c                                           ; $680d: $81
	rst  $38                                         ; $680e: $ff
	nop                                              ; $680f: $00
	nop                                              ; $6810: $00
	add  c                                           ; $6811: $81
	rst  $38                                         ; $6812: $ff
	add  d                                           ; $6813: $82
	nop                                              ; $6814: $00
	add  b                                           ; $6815: $80
	rlca                                             ; $6816: $07
	ld   [bc], a                                     ; $6817: $02
	inc  b                                           ; $6818: $04
	rlca                                             ; $6819: $07
	inc  bc                                          ; $681a: $03
	add  c                                           ; $681b: $81
	rst  $38                                         ; $681c: $ff
	nop                                              ; $681d: $00
	nop                                              ; $681e: $00
	add  c                                           ; $681f: $81
	rst  $38                                         ; $6820: $ff
	add  d                                           ; $6821: $82
	nop                                              ; $6822: $00
	add  d                                           ; $6823: $82
	ldh  [rDIV], a                                   ; $6824: $e0 $04
	inc  e                                           ; $6826: $1c
	rst  $38                                         ; $6827: $ff
	rst  $28                                         ; $6828: $ef
	rst  $38                                         ; $6829: $ff
	inc  e                                           ; $682a: $1c
	add  c                                           ; $682b: $81
	rst  $38                                         ; $682c: $ff
	add  d                                           ; $682d: $82
	jr   jr_072_67b0                                 ; $682e: $18 $80

	dec  de                                          ; $6830: $1b
	ld   [bc], a                                     ; $6831: $02
	add  hl, de                                      ; $6832: $19
	dec  de                                          ; $6833: $1b
	ld   [hl], d                                     ; $6834: $72
	add  c                                           ; $6835: $81
	rst  $28                                         ; $6836: $ef
	inc  c                                           ; $6837: $0c
	ld   [hl], b                                     ; $6838: $70
	cp   $ff                                         ; $6839: $fe $ff
	cp   $01                                         ; $683b: $fe $01
	nop                                              ; $683d: $00
	ld   h, d                                        ; $683e: $62
	ld   l, h                                        ; $683f: $6c
	ld   h, b                                        ; $6840: $60
	ld   l, b                                        ; $6841: $68
	ld   h, b                                        ; $6842: $60
	ld   h, a                                        ; $6843: $67
	inc  bc                                          ; $6844: $03
	add  c                                           ; $6845: $81
	rst  $38                                         ; $6846: $ff
	dec  c                                           ; $6847: $0d
	inc  bc                                          ; $6848: $03
	ld   a, a                                        ; $6849: $7f
	rst  $38                                         ; $684a: $ff
	ld   a, a                                        ; $684b: $7f
	add  e                                           ; $684c: $83
	inc  bc                                          ; $684d: $03
	ld   b, e                                        ; $684e: $43
	ccf                                              ; $684f: $3f
	inc  bc                                          ; $6850: $03
	rra                                              ; $6851: $1f
	inc  bc                                          ; $6852: $03
	db   $e3                                         ; $6853: $e3
	add  b                                           ; $6854: $80
	db   $fc                                         ; $6855: $fc
	add  b                                           ; $6856: $80
	db   $fd                                         ; $6857: $fd
	ld   bc, $fe82                                   ; $6858: $01 $82 $fe
	add  b                                           ; $685b: $80
	ret  nz                                          ; $685c: $c0

	nop                                              ; $685d: $00
	nop                                              ; $685e: $00
	add  b                                           ; $685f: $80
	jr   nc, @+$0d                                   ; $6860: $30 $0b

	ld   [hl], b                                     ; $6862: $70
	db   $10                                         ; $6863: $10
	ld   h, e                                        ; $6864: $63
	inc  bc                                          ; $6865: $03
	ld   [bc], a                                     ; $6866: $02
	ld   [hl], $34                                   ; $6867: $36 $34
	ld   l, b                                        ; $6869: $68
	ld   l, c                                        ; $686a: $69
	ld   hl, $0323                                   ; $686b: $21 $23 $03
	add  b                                           ; $686e: $80
	dec  c                                           ; $686f: $0d
	ld   bc, $3931                                   ; $6870: $01 $31 $39
	add  b                                           ; $6873: $80
	push bc                                          ; $6874: $c5
	dec  b                                           ; $6875: $05
	dec  b                                           ; $6876: $05
	ld   b, l                                        ; $6877: $45
	inc  h                                           ; $6878: $24
	sub  e                                           ; $6879: $93
	inc  bc                                          ; $687a: $03
	inc  c                                           ; $687b: $0c
	adc  e                                           ; $687c: $8b
	nop                                              ; $687d: $00
	nop                                              ; $687e: $00
	rrca                                             ; $687f: $0f
	add  b                                           ; $6880: $80
	ld   b, e                                        ; $6881: $43
	nop                                              ; $6882: $00
	rst  $38                                         ; $6883: $ff
	add  b                                           ; $6884: $80
	rlca                                             ; $6885: $07
	add  d                                           ; $6886: $82
	nop                                              ; $6887: $00
	add  b                                           ; $6888: $80
	inc  c                                           ; $6889: $0c
	inc  b                                           ; $688a: $04
	ld   b, $04                                      ; $688b: $06 $04
	nop                                              ; $688d: $00
	ld   [bc], a                                     ; $688e: $02
	ld   l, $84                                      ; $688f: $2e $84
	ld   a, h                                        ; $6891: $7c
	nop                                              ; $6892: $00
	ld   a, [hl]                                     ; $6893: $7e
	add  c                                           ; $6894: $81
	ld   a, b                                        ; $6895: $78
	ld   bc, $5c58                                   ; $6896: $01 $58 $5c
	add  c                                           ; $6899: $81
	inc  d                                           ; $689a: $14
	nop                                              ; $689b: $00
	ld   hl, sp-$80                                  ; $689c: $f8 $80
	rst  ToBoot                                         ; $689e: $c7
	add  h                                           ; $689f: $84
	add  b                                           ; $68a0: $80
	nop                                              ; $68a1: $00
	ret  nz                                          ; $68a2: $c0

	add  c                                           ; $68a3: $81
	ld   bc, $0300                                   ; $68a4: $01 $00 $03
	add  b                                           ; $68a7: $80
	rlca                                             ; $68a8: $07
	ld   de, $ffda                                   ; $68a9: $11 $da $ff
	daa                                              ; $68ac: $27

jr_072_68ad:
	rst  $38                                         ; $68ad: $ff
	ld   sp, hl                                      ; $68ae: $f9
	rra                                              ; $68af: $1f
	ld   a, c                                        ; $68b0: $79
	ld   h, e                                        ; $68b1: $63
	ld   e, a                                        ; $68b2: $5f
	db   $fc                                         ; $68b3: $fc
	push af                                          ; $68b4: $f5
	db   $fd                                         ; $68b5: $fd
	db   $dd                                         ; $68b6: $dd
	db   $fd                                         ; $68b7: $fd
	push de                                          ; $68b8: $d5
	db   $fd                                         ; $68b9: $fd
	pop  bc                                          ; $68ba: $c1
	rst  $38                                         ; $68bb: $ff
	add  b                                           ; $68bc: $80
	ld   h, c                                        ; $68bd: $61
	add  b                                           ; $68be: $80
	pop  hl                                          ; $68bf: $e1
	nop                                              ; $68c0: $00
	and  c                                           ; $68c1: $a1
	add  b                                           ; $68c2: $80
	pop  hl                                          ; $68c3: $e1
	inc  bc                                          ; $68c4: $03
	ld   hl, $f1e1                                   ; $68c5: $21 $e1 $f1
	or   $81                                         ; $68c8: $f6 $81
	ei                                               ; $68ca: $fb
	ld   bc, $bf83                                   ; $68cb: $01 $83 $bf
	adc  b                                           ; $68ce: $88
	add  b                                           ; $68cf: $80
	nop                                              ; $68d0: $00
	nop                                              ; $68d1: $00
	add  b                                           ; $68d2: $80
	add  b                                           ; $68d3: $80
	ld   [bc], a                                     ; $68d4: $02
	cp   a                                           ; $68d5: $bf
	adc  h                                           ; $68d6: $8c
	db   $fc                                         ; $68d7: $fc
	adc  c                                           ; $68d8: $89
	inc  c                                           ; $68d9: $0c
	inc  bc                                          ; $68da: $03
	ld   l, h                                        ; $68db: $6c
	ld   e, l                                        ; $68dc: $5d
	call z, $8749                                    ; $68dd: $cc $49 $87
	ret  c                                           ; $68e0: $d8

	add  hl, bc                                      ; $68e1: $09
	ld   a, b                                        ; $68e2: $78
	jr   z, jr_072_68ad                              ; $68e3: $28 $c8

	ld   [$f070], sp                                 ; $68e5: $08 $70 $f0
	add  h                                           ; $68e8: $84
	rlca                                             ; $68e9: $07
	inc  b                                           ; $68ea: $04
	rlca                                             ; $68eb: $07
	add  b                                           ; $68ec: $80
	inc  bc                                          ; $68ed: $03
	adc  b                                           ; $68ee: $88
	nop                                              ; $68ef: $00
	add  d                                           ; $68f0: $82
	ldh  [$80], a                                    ; $68f1: $e0 $80
	ret  nz                                          ; $68f3: $c0

	adc  b                                           ; $68f4: $88
	nop                                              ; $68f5: $00
	nop                                              ; $68f6: $00
	add  hl, bc                                      ; $68f7: $09
	adc  c                                           ; $68f8: $89
	dec  de                                          ; $68f9: $1b
	nop                                              ; $68fa: $00
	ld   a, [de]                                     ; $68fb: $1a
	add  c                                           ; $68fc: $81
	jr   jr_072_6902                                 ; $68fd: $18 $03

	ld   [hl], h                                     ; $68ff: $74
	ld   l, a                                        ; $6900: $6f
	ld   h, h                                        ; $6901: $64

jr_072_6902:
	ld   h, l                                        ; $6902: $65
	add  h                                           ; $6903: $84
	ld   h, b                                        ; $6904: $60
	nop                                              ; $6905: $00
	ld   h, a                                        ; $6906: $67
	add  b                                           ; $6907: $80
	ld   h, c                                        ; $6908: $61
	ld   b, $65                                      ; $6909: $06 $65
	ld   h, a                                        ; $690b: $67
	ld   l, [hl]                                     ; $690c: $6e
	ld   [hl+], a                                    ; $690d: $22
	rst  $38                                         ; $690e: $ff
	inc  hl                                          ; $690f: $23
	and  e                                           ; $6910: $a3
	add  h                                           ; $6911: $84
	inc  hl                                          ; $6912: $23
	nop                                              ; $6913: $00
	and  e                                           ; $6914: $a3
	add  d                                           ; $6915: $82
	jp   Jump_072_7f02                               ; $6916: $c3 $02 $7f


	add  c                                           ; $6919: $81
	ld   h, d                                        ; $691a: $62
	add  b                                           ; $691b: $80
	ld   [bc], a                                     ; $691c: $02
	nop                                              ; $691d: $00
	inc  de                                          ; $691e: $13
	add  c                                           ; $691f: $81
	ld   [bc], a                                     ; $6920: $02
	rrca                                             ; $6921: $0f
	ld   c, $00                                      ; $6922: $0e $00
	dec  a                                           ; $6924: $3d
	inc  bc                                          ; $6925: $03
	call nc, Call_072_5a5f                           ; $6926: $d4 $5f $5a
	ld   e, a                                        ; $6929: $5f
	adc  h                                           ; $692a: $8c
	jr   nz, jr_072_69a5                             ; $692b: $20 $78

	jr   jr_072_699f                                 ; $692d: $18 $70

	ld   [hl], d                                     ; $692f: $72
	jp   nz, $80ce                                   ; $6930: $c2 $ce $80

	ld   a, $00                                      ; $6933: $3e $00
	sbc  [hl]                                        ; $6935: $9e
	add  b                                           ; $6936: $80
	cp   $03                                         ; $6937: $fe $03
	db   $fc                                         ; $6939: $fc
	adc  b                                           ; $693a: $88
	ld   hl, sp-$14                                  ; $693b: $f8 $ec
	add  l                                           ; $693d: $85
	nop                                              ; $693e: $00
	add  b                                           ; $693f: $80
	ld   bc, $0380                                   ; $6940: $01 $80 $03
	add  b                                           ; $6943: $80
	rlca                                             ; $6944: $07
	add  b                                           ; $6945: $80
	rrca                                             ; $6946: $0f
	inc  bc                                          ; $6947: $03
	ldh  [rP1], a                                    ; $6948: $e0 $00
	jr   z, jr_072_694c                              ; $694a: $28 $00

jr_072_694c:
	add  b                                           ; $694c: $80
	ld   b, b                                        ; $694d: $40
	dec  c                                           ; $694e: $0d
	call nz, $d6e6                                   ; $694f: $c4 $e6 $d6
	add  a                                           ; $6952: $87
	db   $db                                         ; $6953: $db
	ld   b, a                                        ; $6954: $47
	rst  $20                                         ; $6955: $e7
	add  a                                           ; $6956: $87
	add  [hl]                                        ; $6957: $86
	add  a                                           ; $6958: $87
	sbc  d                                           ; $6959: $9a
	inc  d                                           ; $695a: $14
	inc  h                                           ; $695b: $24
	dec  [hl]                                        ; $695c: $35
	add  h                                           ; $695d: $84
	dec  a                                           ; $695e: $3d
	ld   d, $bd                                      ; $695f: $16 $bd
	dec  a                                           ; $6961: $3d
	ld   a, e                                        ; $6962: $7b
	cp   a                                           ; $6963: $bf
	ld   h, [hl]                                     ; $6964: $66
	sbc  $d0                                         ; $6965: $de $d0
	rrca                                             ; $6967: $0f
	sbc  a                                           ; $6968: $9f
	rra                                              ; $6969: $1f
	dec  [hl]                                        ; $696a: $35
	ccf                                              ; $696b: $3f
	ld   d, c                                        ; $696c: $51
	ld   [hl], c                                     ; $696d: $71

jr_072_696e:
	ld   [hl], e                                     ; $696e: $73
	ld   [hl], c                                     ; $696f: $71
	ld   [hl], l                                     ; $6970: $75
	ld   [hl], c                                     ; $6971: $71

jr_072_6972:
	sbc  e                                           ; $6972: $9b
	ei                                               ; $6973: $fb
	xor  d                                           ; $6974: $aa
	xor  h                                           ; $6975: $ac
	sub  h                                           ; $6976: $94

jr_072_6977:
	add  c                                           ; $6977: $81
	db   $fc                                         ; $6978: $fc
	ld   c, $24                                      ; $6979: $0e $24
	add  h                                           ; $697b: $84
	inc  b                                           ; $697c: $04
	add  h                                           ; $697d: $84
	db   $ec                                         ; $697e: $ec
	add  h                                           ; $697f: $84
	add  b                                           ; $6980: $80
	call nz, $ce68                                   ; $6981: $c4 $68 $ce
	call z, $78ce                                    ; $6984: $cc $ce $78
	ld   a, e                                        ; $6987: $7b
	inc  bc                                          ; $6988: $03
	add  b                                           ; $6989: $80
	dec  bc                                          ; $698a: $0b
	ld   bc, $1c1d                                   ; $698b: $01 $1d $1c
	add  b                                           ; $698e: $80
	ld   a, h                                        ; $698f: $7c
	rlca                                             ; $6990: $07
	sbc  h                                           ; $6991: $9c
	cp   l                                           ; $6992: $bd
	ld   bc, $0149                           ; $6993: $01 $49 $01
	dec  h                                           ; $6996: $25
	ld   b, c                                        ; $6997: $41
	ld   [hl-], a                                    ; $6998: $32
	add  b                                           ; $6999: $80
	add  b                                           ; $699a: $80
	add  b                                           ; $699b: $80
	cp   a                                           ; $699c: $bf
	inc  b                                           ; $699d: $04
	ret  nz                                          ; $699e: $c0

jr_072_699f:
	ld   c, h                                        ; $699f: $4c
	ld   [hl], e                                     ; $69a0: $73
	ld   a, e                                        ; $69a1: $7b
	ld   [hl], e                                     ; $69a2: $73
	add  b                                           ; $69a3: $80
	ret  nz                                          ; $69a4: $c0

jr_072_69a5:
	ld   bc, $f3fb                                   ; $69a5: $01 $fb $f3
	add  c                                           ; $69a8: $81
	ret  nz                                          ; $69a9: $c0

	add  c                                           ; $69aa: $81
	nop                                              ; $69ab: $00
	ld   [bc], a                                     ; $69ac: $02
	add  b                                           ; $69ad: $80
	nop                                              ; $69ae: $00
	ld   [$8080], sp                                 ; $69af: $08 $80 $80
	rlca                                             ; $69b2: $07
	add  c                                           ; $69b3: $81
	add  hl, sp                                      ; $69b4: $39
	ld   bc, $7849                                   ; $69b5: $01 $49 $78
	cp   $7e                                         ; $69b8: $fe $7e
	ld   h, b                                        ; $69ba: $60
	add  b                                           ; $69bb: $80
	ld   [$000d], sp                                 ; $69bc: $08 $0d $00
	and  b                                           ; $69bf: $a0
	db   $10                                         ; $69c0: $10
	ld   e, e                                        ; $69c1: $5b
	or   e                                           ; $69c2: $b3
	cp   l                                           ; $69c3: $bd
	cp   c                                           ; $69c4: $b9
	cp   h                                           ; $69c5: $bc
	inc  l                                           ; $69c6: $2c
	ld   l, h                                        ; $69c7: $6c
	ld   l, [hl]                                     ; $69c8: $6e
	xor  $e6                                         ; $69c9: $ee $e6
	ld   h, $83                                      ; $69cb: $26 $83
	nop                                              ; $69cd: $00
	add  b                                           ; $69ce: $80
	cp   $80                                         ; $69cf: $fe $80
	jr   jr_072_69d4                                 ; $69d1: $18 $01

	ld   a, [hl-]                                    ; $69d3: $3a

jr_072_69d4:
	ld   a, [de]                                     ; $69d4: $1a
	add  b                                           ; $69d5: $80
	jr   jr_072_69ea                                 ; $69d6: $18 $12

	inc  a                                           ; $69d8: $3c
	db   $fc                                         ; $69d9: $fc
	ret  nc                                          ; $69da: $d0

	jr   nc, jr_072_6a59                             ; $69db: $30 $7c

	ld   l, h                                        ; $69dd: $6c
	ld   [hl], h                                     ; $69de: $74
	ld   b, h                                        ; $69df: $44
	daa                                              ; $69e0: $27
	inc  bc                                          ; $69e1: $03
	ld   [$0400], sp                                 ; $69e2: $08 $00 $04
	jr   nc, @+$22                                   ; $69e5: $30 $20

	ld   a, b                                        ; $69e7: $78
	ld   e, h                                        ; $69e8: $5c
	ld   a, h                                        ; $69e9: $7c

jr_072_69ea:
	ld   c, b                                        ; $69ea: $48
	add  b                                           ; $69eb: $80
	jr   jr_072_696e                                 ; $69ec: $18 $80

	add  hl, de                                      ; $69ee: $19
	nop                                              ; $69ef: $00
	jr   jr_072_6972                                 ; $69f0: $18 $80

	ei                                               ; $69f2: $fb
	add  c                                           ; $69f3: $81
	jr   jr_072_6977                                 ; $69f4: $18 $81

	add  hl, de                                      ; $69f6: $19
	dec  bc                                          ; $69f7: $0b
	jr   jr_072_6a15                                 ; $69f8: $18 $1b

	dec  a                                           ; $69fa: $3d
	and  $c4                                         ; $69fb: $e6 $c4
	dec  l                                           ; $69fd: $2d
	rrca                                             ; $69fe: $0f
	ld   h, $36                                      ; $69ff: $26 $36
	cp   $02                                         ; $6a01: $fe $02
	jp   nz, $e480                                   ; $6a03: $c2 $80 $e4

	ld   bc, $f0f1                                   ; $6a06: $01 $f1 $f0
	add  b                                           ; $6a09: $80
	add  sp, $11                                     ; $6a0a: $e8 $11
	db   $fd                                         ; $6a0c: $fd
	inc  bc                                          ; $6a0d: $03
	ld   bc, $fdff                                   ; $6a0e: $01 $ff $fd
	inc  bc                                          ; $6a11: $03
	ld   h, d                                        ; $6a12: $62
	inc  e                                           ; $6a13: $1c
	ld   c, c                                        ; $6a14: $49

jr_072_6a15:
	adc  b                                           ; $6a15: $88
	add  d                                           ; $6a16: $82
	add  b                                           ; $6a17: $80
	sbc  $1d                                         ; $6a18: $de $1d
	ld   bc, $1e03                                   ; $6a1a: $01 $03 $1e
	ld   e, h                                        ; $6a1d: $5c
	add  b                                           ; $6a1e: $80
	ld   b, b                                        ; $6a1f: $40
	ld   b, $48                                      ; $6a20: $06 $48
	ld   [$8eee], sp                                 ; $6a22: $08 $ee $8e
	adc  b                                           ; $6a25: $88
	ld   [$8162], sp                                 ; $6a26: $08 $62 $81
	nop                                              ; $6a29: $00
	inc  bc                                          ; $6a2a: $03
	add  b                                           ; $6a2b: $80
	adc  [hl]                                        ; $6a2c: $8e
	ld   [$8018], sp                                 ; $6a2d: $08 $18 $80
	add  hl, bc                                      ; $6a30: $09
	add  d                                           ; $6a31: $82
	nop                                              ; $6a32: $00
	nop                                              ; $6a33: $00
	dec  d                                           ; $6a34: $15
	add  b                                           ; $6a35: $80
	inc  d                                           ; $6a36: $14
	ld   bc, $9f15                                   ; $6a37: $01 $15 $9f
	add  c                                           ; $6a3a: $81
	sbc  e                                           ; $6a3b: $9b
	inc  c                                           ; $6a3c: $0c
	rst  $20                                         ; $6a3d: $e7
	rrca                                             ; $6a3e: $0f
	ld   [$080f], sp                                 ; $6a3f: $08 $0f $08
	rrca                                             ; $6a42: $0f
	nop                                              ; $6a43: $00
	rrca                                             ; $6a44: $0f
	nop                                              ; $6a45: $00
	rrca                                             ; $6a46: $0f
	nop                                              ; $6a47: $00
	rrca                                             ; $6a48: $0f
	nop                                              ; $6a49: $00
	add  b                                           ; $6a4a: $80
	rrca                                             ; $6a4b: $0f
	ld   [$ce00], sp                                 ; $6a4c: $08 $00 $ce
	add  a                                           ; $6a4f: $87
	sub  a                                           ; $6a50: $97
	adc  a                                           ; $6a51: $8f
	adc  $0e                                         ; $6a52: $ce $0e
	inc  c                                           ; $6a54: $0c
	ld   c, $80                                      ; $6a55: $0e $80
	inc  c                                           ; $6a57: $0c
	add  b                                           ; $6a58: $80

jr_072_6a59:
	ld   c, $04                                      ; $6a59: $0e $04
	ld   l, h                                        ; $6a5b: $6c
	dec  c                                           ; $6a5c: $0d
	inc  c                                           ; $6a5d: $0c
	add  hl, bc                                      ; $6a5e: $09
	inc  bc                                          ; $6a5f: $03
	add  b                                           ; $6a60: $80
	sbc  $81                                         ; $6a61: $de $81
	xor  $0c                                         ; $6a63: $ee $0c
	ld   l, a                                        ; $6a65: $6f
	rst  $28                                         ; $6a66: $ef
	xor  [hl]                                        ; $6a67: $ae
	rst  $28                                         ; $6a68: $ef
	cpl                                              ; $6a69: $2f
	xor  $ec                                         ; $6a6a: $ee $ec
	rst  JumpTable                                         ; $6a6c: $df
	ld   e, a                                        ; $6a6d: $5f
	sbc  a                                           ; $6a6e: $9f
	sub  $18                                         ; $6a6f: $d6 $18
	ld   e, b                                        ; $6a71: $58
	add  c                                           ; $6a72: $81
	jr   z, jr_072_6a79                              ; $6a73: $28 $04

	cpl                                              ; $6a75: $2f
	or   b                                           ; $6a76: $b0
	inc  a                                           ; $6a77: $3c
	ld   h, b                                        ; $6a78: $60

jr_072_6a79:
	di                                               ; $6a79: $f3
	add  d                                           ; $6a7a: $82
	add  e                                           ; $6a7b: $83
	ld   bc, $13c0                                   ; $6a7c: $01 $c0 $13
	add  e                                           ; $6a7f: $83
	ld   c, e                                        ; $6a80: $4b
	inc  bc                                          ; $6a81: $03
	rst  $30                                         ; $6a82: $f7
	ld   [hl], a                                     ; $6a83: $77
	ei                                               ; $6a84: $fb
	inc  hl                                          ; $6a85: $23
	add  b                                           ; $6a86: $80
	ld   [bc], a                                     ; $6a87: $02
	ld   bc, $0c14                                   ; $6a88: $01 $14 $0c
	add  b                                           ; $6a8b: $80
	ld   c, $02                                      ; $6a8c: $0e $02
	ld   hl, $7a6b                                   ; $6a8e: $21 $6b $7a
	add  b                                           ; $6a91: $80
	halt                                             ; $6a92: $76
	inc  b                                           ; $6a93: $04
	ld   [hl], a                                     ; $6a94: $77
	ld   [hl], l                                     ; $6a95: $75
	ld   [hl], e                                     ; $6a96: $73
	ld   [hl], c                                     ; $6a97: $71
	ld   [hl], a                                     ; $6a98: $77
	add  e                                           ; $6a99: $83
	ld   h, a                                        ; $6a9a: $67
	ld   b, $63                                      ; $6a9b: $06 $63
	inc  de                                          ; $6a9d: $13
	ldh  a, [$e1]                                    ; $6a9e: $f0 $e1
	ldh  [$60], a                                    ; $6aa0: $e0 $60
	pop  hl                                          ; $6aa2: $e1
	add  b                                           ; $6aa3: $80
	ld   h, c                                        ; $6aa4: $61
	add  b                                           ; $6aa5: $80
	ld   h, b                                        ; $6aa6: $60
	ld   [bc], a                                     ; $6aa7: $02
	ld   h, h                                        ; $6aa8: $64
	ld   h, b                                        ; $6aa9: $60
	ld   l, d                                        ; $6aaa: $6a
	add  c                                           ; $6aab: $81
	ld   a, [hl]                                     ; $6aac: $7e
	ld   bc, $fe8e                                   ; $6aad: $01 $8e $fe
	add  b                                           ; $6ab0: $80
	db   $fd                                         ; $6ab1: $fd
	add  b                                           ; $6ab2: $80

jr_072_6ab3:
	ei                                               ; $6ab3: $fb
	add  [hl]                                        ; $6ab4: $86
	inc  bc                                          ; $6ab5: $03
	add  b                                           ; $6ab6: $80
	ld   bc, $c000                                   ; $6ab7: $01 $00 $c0
	add  c                                           ; $6aba: $81
	rst  $28                                         ; $6abb: $ef
	nop                                              ; $6abc: $00
	ld   l, a                                        ; $6abd: $6f
	add  b                                           ; $6abe: $80
	ld   e, a                                        ; $6abf: $5f
	ld   bc, $1e5e                                   ; $6ac0: $01 $5e $1e
	add  b                                           ; $6ac3: $80

jr_072_6ac4:
	cp   [hl]                                        ; $6ac4: $be
	ld   bc, $bf9e                                   ; $6ac5: $01 $9e $bf
	add  b                                           ; $6ac8: $80
	add  l                                           ; $6ac9: $85
	inc  bc                                          ; $6aca: $03
	add  c                                           ; $6acb: $81
	or   a                                           ; $6acc: $b7
	ld   [hl], b                                     ; $6acd: $70
	ld   l, b                                        ; $6ace: $68
	add  b                                           ; $6acf: $80
	ld   h, e                                        ; $6ad0: $63
	ld   [bc], a                                     ; $6ad1: $02
	ld   h, a                                        ; $6ad2: $67
	ld   [hl], $46                                   ; $6ad3: $36 $46
	add  b                                           ; $6ad5: $80
	ld   b, b                                        ; $6ad6: $40
	ld   [$c7c8], sp                                 ; $6ad7: $08 $c8 $c7
	jr   c, jr_072_6ac4                              ; $6ada: $38 $e8

	ld   hl, sp-$18                                  ; $6adc: $f8 $e8
	db   $eb                                         ; $6ade: $eb
	db   $fc                                         ; $6adf: $fc
	cp   d                                           ; $6ae0: $ba
	add  b                                           ; $6ae1: $80
	ld   a, [$f808]                                  ; $6ae2: $fa $08 $f8
	rst  $20                                         ; $6ae5: $e7
	db   $e3                                         ; $6ae6: $e3
	and  $e7                                         ; $6ae7: $e6 $e7
	push hl                                          ; $6ae9: $e5
	rst  $20                                         ; $6aea: $e7
	ld   h, d                                        ; $6aeb: $62
	rst  $20                                         ; $6aec: $e7
	add  b                                           ; $6aed: $80
	and  e                                           ; $6aee: $a3
	dec  c                                           ; $6aef: $0d
	add  hl, bc                                      ; $6af0: $09
	dec  de                                          ; $6af1: $1b
	add  hl, de                                      ; $6af2: $19
	dec  de                                          ; $6af3: $1b
	dec  bc                                          ; $6af4: $0b
	dec  de                                          ; $6af5: $1b
	inc  de                                          ; $6af6: $13
	dec  hl                                          ; $6af7: $2b
	ld   a, e                                        ; $6af8: $7b
	add  e                                           ; $6af9: $83
	ld   h, c                                        ; $6afa: $61
	ld   e, l                                        ; $6afb: $5d
	pop  hl                                          ; $6afc: $e1
	db   $e3                                         ; $6afd: $e3
	add  b                                           ; $6afe: $80
	sbc  a                                           ; $6aff: $9f
	add  hl, bc                                      ; $6b00: $09
	ld   d, $e8                                      ; $6b01: $16 $e8
	db   $ed                                         ; $6b03: $ed
	rst  $28                                         ; $6b04: $ef
	ld   [$c7ef], a                                  ; $6b05: $ea $ef $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b08: $cf
	db   $ed                                         ; $6b09: $ed
	add  sp, -$80                                    ; $6b0a: $e8 $80
	ret  z                                           ; $6b0c: $c8

	ld   [$a8aa], sp                                 ; $6b0d: $08 $aa $a8
	ret  z                                           ; $6b10: $c8

	rst  ToBoot                                         ; $6b11: $c7
	dec  b                                           ; $6b12: $05
	rlca                                             ; $6b13: $07
	inc  b                                           ; $6b14: $04
	inc  c                                           ; $6b15: $0c
	dec  c                                           ; $6b16: $0d
	add  c                                           ; $6b17: $81
	ld   c, $04                                      ; $6b18: $0e $04
	adc  [hl]                                        ; $6b1a: $8e
	ld   b, $6e                                      ; $6b1b: $06 $6e
	ld   h, b                                        ; $6b1d: $60
	ldh  [$80], a                                    ; $6b1e: $e0 $80
	ld   h, [hl]                                     ; $6b20: $66
	ld   b, $60                                      ; $6b21: $06 $60
	jr   jr_072_6ab3                                 ; $6b23: $18 $8e

	ld   e, $1d                                      ; $6b25: $1e $1d
	cp   l                                           ; $6b27: $bd
	dec  de                                          ; $6b28: $1b
	add  b                                           ; $6b29: $80
	dec  sp                                          ; $6b2a: $3b
	ld   bc, $bb39                                   ; $6b2b: $01 $39 $bb
	add  b                                           ; $6b2e: $80
	cp   l                                           ; $6b2f: $bd
	dec  b                                           ; $6b30: $05
	cp   h                                           ; $6b31: $bc
	cp   l                                           ; $6b32: $bd
	cp   b                                           ; $6b33: $b8
	inc  a                                           ; $6b34: $3c
	cp   e                                           ; $6b35: $bb
	or   a                                           ; $6b36: $b7
	add  b                                           ; $6b37: $80
	or   l                                           ; $6b38: $b5
	add  b                                           ; $6b39: $80
	or   [hl]                                        ; $6b3a: $b6
	add  b                                           ; $6b3b: $80
	or   a                                           ; $6b3c: $b7
	ld   bc, $76b6                                   ; $6b3d: $01 $b6 $76
	add  b                                           ; $6b40: $80
	ld   a, b                                        ; $6b41: $78
	inc  bc                                          ; $6b42: $03
	inc  a                                           ; $6b43: $3c
	ld   a, h                                        ; $6b44: $7c
	inc  a                                           ; $6b45: $3c
	db   $fc                                         ; $6b46: $fc
	ld   b, b                                        ; $6b47: $40
	ld   [bc], a                                     ; $6b48: $02
	add  [hl]                                        ; $6b49: $86
	nop                                              ; $6b4a: $00
	add  [hl]                                        ; $6b4b: $86
	ld   bc, $0086                                   ; $6b4c: $01 $86 $00
	add  b                                           ; $6b4f: $80
	ld   b, b                                        ; $6b50: $40
	add  b                                           ; $6b51: $80
	add  e                                           ; $6b52: $83
	add  b                                           ; $6b53: $80
	adc  a                                           ; $6b54: $8f
	add  b                                           ; $6b55: $80
	sbc  a                                           ; $6b56: $9f
	adc  b                                           ; $6b57: $88
	nop                                              ; $6b58: $00
	add  b                                           ; $6b59: $80
	ld   [$0603], sp                                 ; $6b5a: $08 $03 $06
	ld   c, $f6                                      ; $6b5d: $0e $f6
	cp   $86                                         ; $6b5f: $fe $86
	nop                                              ; $6b61: $00
	add  b                                           ; $6b62: $80
	ccf                                              ; $6b63: $3f
	inc  b                                           ; $6b64: $04
	ld   d, $1f                                      ; $6b65: $16 $1f
	jr   z, jr_072_6ba0                              ; $6b67: $28 $37

	ld   d, $80                                      ; $6b69: $16 $80
	ld   bc, $0085                                   ; $6b6b: $01 $85 $00
	add  b                                           ; $6b6e: $80
	ret  nc                                          ; $6b6f: $d0

	ld   b, $50                                      ; $6b70: $06 $50
	ret  nc                                          ; $6b72: $d0

	ret  nz                                          ; $6b73: $c0

	ld   d, b                                        ; $6b74: $50
	inc  de                                          ; $6b75: $13
	ld   d, e                                        ; $6b76: $53
	ld   d, b                                        ; $6b77: $50
	adc  e                                           ; $6b78: $8b
	nop                                              ; $6b79: $00
	add  b                                           ; $6b7a: $80
	ret  nz                                          ; $6b7b: $c0

	sub  [hl]                                        ; $6b7c: $96
	nop                                              ; $6b7d: $00
	add  b                                           ; $6b7e: $80
	rlca                                             ; $6b7f: $07
	add  b                                           ; $6b80: $80
	cp   a                                           ; $6b81: $bf
	add  b                                           ; $6b82: $80
	rra                                              ; $6b83: $1f
	add  b                                           ; $6b84: $80
	rst  $38                                         ; $6b85: $ff
	add  [hl]                                        ; $6b86: $86
	nop                                              ; $6b87: $00
	add  b                                           ; $6b88: $80
	cp   $80                                         ; $6b89: $fe $80
	db   $fc                                         ; $6b8b: $fc
	add  d                                           ; $6b8c: $82
	rst  $38                                         ; $6b8d: $ff
	add  [hl]                                        ; $6b8e: $86
	nop                                              ; $6b8f: $00
	add  b                                           ; $6b90: $80
	ld   bc, $0b80                                   ; $6b91: $01 $80 $0b
	add  b                                           ; $6b94: $80
	rra                                              ; $6b95: $1f
	add  b                                           ; $6b96: $80
	sbc  a                                           ; $6b97: $9f
	add  [hl]                                        ; $6b98: $86
	nop                                              ; $6b99: $00
	add  b                                           ; $6b9a: $80
	add  c                                           ; $6b9b: $81
	add  b                                           ; $6b9c: $80
	pop  bc                                          ; $6b9d: $c1
	add  b                                           ; $6b9e: $80
	pop  hl                                          ; $6b9f: $e1

jr_072_6ba0:
	ld   [bc], a                                     ; $6ba0: $02
	ldh  [$e3], a                                    ; $6ba1: $e0 $e3
	inc  bc                                          ; $6ba3: $03
	add  l                                           ; $6ba4: $85
	nop                                              ; $6ba5: $00
	add  b                                           ; $6ba6: $80
	jp   z, $9e80                                    ; $6ba7: $ca $80 $9e

	add  b                                           ; $6baa: $80
	rst  $38                                         ; $6bab: $ff
	ld   [bc], a                                     ; $6bac: $02
	ccf                                              ; $6bad: $3f
	rst  $38                                         ; $6bae: $ff
	ret  nz                                          ; $6baf: $c0

	adc  c                                           ; $6bb0: $89
	nop                                              ; $6bb1: $00
	add  b                                           ; $6bb2: $80
	and  b                                           ; $6bb3: $a0
	add  b                                           ; $6bb4: $80
	ret  nz                                          ; $6bb5: $c0

	adc  [hl]                                        ; $6bb6: $8e
	nop                                              ; $6bb7: $00
	add  b                                           ; $6bb8: $80
	ld   b, b                                        ; $6bb9: $40
	add  b                                           ; $6bba: $80
	xor  b                                           ; $6bbb: $a8
	add  b                                           ; $6bbc: $80
	ld   d, l                                        ; $6bbd: $55
	add  b                                           ; $6bbe: $80
	xor  $86                                         ; $6bbf: $ee $86
	rst  $38                                         ; $6bc1: $ff
	add  a                                           ; $6bc2: $87
	nop                                              ; $6bc3: $00
	inc  bc                                          ; $6bc4: $03
	ccf                                              ; $6bc5: $3f
	cpl                                              ; $6bc6: $2f
	dec  e                                           ; $6bc7: $1d
	dec  c                                           ; $6bc8: $0d
	add  b                                           ; $6bc9: $80
	nop                                              ; $6bca: $00
	add  b                                           ; $6bcb: $80
	dec  bc                                          ; $6bcc: $0b
	add  a                                           ; $6bcd: $87
	nop                                              ; $6bce: $00
	add  b                                           ; $6bcf: $80
	inc  b                                           ; $6bd0: $04
	add  b                                           ; $6bd1: $80
	ld   a, [bc]                                     ; $6bd2: $0a
	add  b                                           ; $6bd3: $80
	rrca                                             ; $6bd4: $0f
	add  b                                           ; $6bd5: $80
	cp   a                                           ; $6bd6: $bf
	ld   [bc], a                                     ; $6bd7: $02
	sbc  [hl]                                        ; $6bd8: $9e
	sbc  a                                           ; $6bd9: $9f
	sbc  [hl]                                        ; $6bda: $9e
	add  c                                           ; $6bdb: $81
	sbc  a                                           ; $6bdc: $9f
	dec  b                                           ; $6bdd: $05
	xor  l                                           ; $6bde: $ad
	xor  a                                           ; $6bdf: $af
	db   $dd                                         ; $6be0: $dd
	rst  JumpTable                                         ; $6be1: $df
	db   $dd                                         ; $6be2: $dd
	rst  JumpTable                                         ; $6be3: $df
	add  b                                           ; $6be4: $80
	push bc                                          ; $6be5: $c5
	add  b                                           ; $6be6: $80
	cp   $0e                                         ; $6be7: $fe $0e
	ld   a, [$edfe]                                  ; $6be9: $fa $fe $ed
	rst  $38                                         ; $6bec: $ff
	db   $eb                                         ; $6bed: $eb
	rst  $38                                         ; $6bee: $ff
	ld   a, [hl]                                     ; $6bef: $7e
	rst  $38                                         ; $6bf0: $ff
	ld   a, d                                        ; $6bf1: $7a
	rst  $38                                         ; $6bf2: $ff
	or   h                                           ; $6bf3: $b4
	rst  $38                                         ; $6bf4: $ff
	rlca                                             ; $6bf5: $07
	cp   $b6                                         ; $6bf6: $fe $b6
	add  c                                           ; $6bf8: $81
	ld   bc, $8180                                   ; $6bf9: $01 $80 $81
	ld   [bc], a                                     ; $6bfc: $02
	ret  nz                                          ; $6bfd: $c0

	pop  bc                                          ; $6bfe: $c1
	ld   b, b                                        ; $6bff: $40
	add  e                                           ; $6c00: $83
	ret  nz                                          ; $6c01: $c0

	dec  c                                           ; $6c02: $0d
	nop                                              ; $6c03: $00
	add  b                                           ; $6c04: $80
	rlca                                             ; $6c05: $07
	ld   d, a                                        ; $6c06: $57
	ld   e, l                                        ; $6c07: $5d
	ld   e, a                                        ; $6c08: $5f
	pop  de                                          ; $6c09: $d1
	rst  $10                                         ; $6c0a: $d7
	inc  d                                           ; $6c0b: $14
	pop  de                                          ; $6c0c: $d1
	sub  c                                           ; $6c0d: $91
	sbc  d                                           ; $6c0e: $9a
	jr   jr_072_6c1f                                 ; $6c0f: $18 $0e

	add  b                                           ; $6c11: $80
	inc  c                                           ; $6c12: $0c
	add  b                                           ; $6c13: $80
	inc  b                                           ; $6c14: $04
	ld   [$e02c], sp                                 ; $6c15: $08 $2c $e0
	ld   b, b                                        ; $6c18: $40
	ldh  [$c7], a                                    ; $6c19: $e0 $c7
	rst  $20                                         ; $6c1b: $e7
	call nz, $0704                                   ; $6c1c: $c4 $04 $07

jr_072_6c1f:
	add  b                                           ; $6c1f: $80
	inc  b                                           ; $6c20: $04
	nop                                              ; $6c21: $00
	rlca                                             ; $6c22: $07
	add  b                                           ; $6c23: $80
	ld   b, $80                                      ; $6c24: $06 $80
	rrca                                             ; $6c26: $0f
	add  d                                           ; $6c27: $82
	rlca                                             ; $6c28: $07
	add  b                                           ; $6c29: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c2a: $cf
	add  b                                           ; $6c2b: $80
	ld   a, a                                        ; $6c2c: $7f
	dec  b                                           ; $6c2d: $05
	add  b                                           ; $6c2e: $80
	nop                                              ; $6c2f: $00
	ld   a, a                                        ; $6c30: $7f
	add  b                                           ; $6c31: $80
	nop                                              ; $6c32: $00
	ld   a, a                                        ; $6c33: $7f
	add  b                                           ; $6c34: $80
	nop                                              ; $6c35: $00
	add  b                                           ; $6c36: $80
	rst  JumpTable                                         ; $6c37: $df
	add  h                                           ; $6c38: $84
	rst  $38                                         ; $6c39: $ff
	add  b                                           ; $6c3a: $80
	nop                                              ; $6c3b: $00
	nop                                              ; $6c3c: $00
	rst  $38                                         ; $6c3d: $ff
	add  b                                           ; $6c3e: $80
	nop                                              ; $6c3f: $00
	nop                                              ; $6c40: $00
	rst  $38                                         ; $6c41: $ff
	add  b                                           ; $6c42: $80
	nop                                              ; $6c43: $00
	add  [hl]                                        ; $6c44: $86
	rst  $38                                         ; $6c45: $ff
	add  b                                           ; $6c46: $80
	nop                                              ; $6c47: $00
	nop                                              ; $6c48: $00
	rst  $38                                         ; $6c49: $ff
	add  b                                           ; $6c4a: $80
	nop                                              ; $6c4b: $00
	nop                                              ; $6c4c: $00
	rst  $38                                         ; $6c4d: $ff
	add  b                                           ; $6c4e: $80
	nop                                              ; $6c4f: $00
	add  b                                           ; $6c50: $80
	ld   [hl], l                                     ; $6c51: $75
	add  b                                           ; $6c52: $80
	ld   [$f780], a                                  ; $6c53: $ea $80 $f7
	adc  b                                           ; $6c56: $88
	rst  $38                                         ; $6c57: $ff
	inc  bc                                          ; $6c58: $03
	db   $e3                                         ; $6c59: $e3
	ldh  [$f2], a                                    ; $6c5a: $e0 $f2
	pop  af                                          ; $6c5c: $f1
	add  b                                           ; $6c5d: $80
	ld   sp, hl                                      ; $6c5e: $f9
	inc  b                                           ; $6c5f: $04
	ld   hl, sp-$07                                  ; $6c60: $f8 $f9
	ld   bc, $ff00                                   ; $6c62: $01 $00 $ff
	add  b                                           ; $6c65: $80
	nop                                              ; $6c66: $00
	nop                                              ; $6c67: $00
	rst  $38                                         ; $6c68: $ff
	add  b                                           ; $6c69: $80
	nop                                              ; $6c6a: $00
	ld   bc, $ff40                                   ; $6c6b: $01 $40 $ff
	add  b                                           ; $6c6e: $80
	ret  nz                                          ; $6c6f: $c0

	add  b                                           ; $6c70: $80
	ei                                               ; $6c71: $fb
	inc  b                                           ; $6c72: $04
	ld   c, b                                        ; $6c73: $48
	adc  b                                           ; $6c74: $88
	ld   a, a                                        ; $6c75: $7f
	nop                                              ; $6c76: $00
	rst  $38                                         ; $6c77: $ff
	add  b                                           ; $6c78: $80
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	rst  $38                                         ; $6c7b: $ff
	add  c                                           ; $6c7c: $81
	nop                                              ; $6c7d: $00
	nop                                              ; $6c7e: $00
	rst  $38                                         ; $6c7f: $ff
	add  b                                           ; $6c80: $80
	nop                                              ; $6c81: $00
	add  b                                           ; $6c82: $80
	cp   e                                           ; $6c83: $bb
	add  b                                           ; $6c84: $80
	adc  b                                           ; $6c85: $88
	ld   [bc], a                                     ; $6c86: $02
	rst  $38                                         ; $6c87: $ff
	nop                                              ; $6c88: $00
	rst  $38                                         ; $6c89: $ff
	add  b                                           ; $6c8a: $80
	nop                                              ; $6c8b: $00
	nop                                              ; $6c8c: $00
	rst  $38                                         ; $6c8d: $ff
	add  c                                           ; $6c8e: $81
	nop                                              ; $6c8f: $00
	nop                                              ; $6c90: $00
	rst  $38                                         ; $6c91: $ff
	add  b                                           ; $6c92: $80
	nop                                              ; $6c93: $00
	add  b                                           ; $6c94: $80
	cp   e                                           ; $6c95: $bb
	add  b                                           ; $6c96: $80
	adc  b                                           ; $6c97: $88
	ld   [bc], a                                     ; $6c98: $02
	rst  $38                                         ; $6c99: $ff
	nop                                              ; $6c9a: $00
	rst  $38                                         ; $6c9b: $ff
	add  b                                           ; $6c9c: $80
	nop                                              ; $6c9d: $00
	nop                                              ; $6c9e: $00
	rst  $38                                         ; $6c9f: $ff
	add  c                                           ; $6ca0: $81
	nop                                              ; $6ca1: $00
	nop                                              ; $6ca2: $00
	rst  $38                                         ; $6ca3: $ff
	add  b                                           ; $6ca4: $80
	nop                                              ; $6ca5: $00
	add  b                                           ; $6ca6: $80
	cp   e                                           ; $6ca7: $bb
	dec  d                                           ; $6ca8: $15
	sbc  h                                           ; $6ca9: $9c
	add  b                                           ; $6caa: $80
	rst  $38                                         ; $6cab: $ff
	inc  bc                                          ; $6cac: $03
	ldh  [rAUD3LEVEL], a                             ; $6cad: $e0 $1c
	rlca                                             ; $6caf: $07
	rst  $20                                         ; $6cb0: $e7
	inc  c                                           ; $6cb1: $0c
	ld   [$fc0c], sp                                 ; $6cb2: $08 $0c $fc
	rrca                                             ; $6cb5: $0f
	inc  c                                           ; $6cb6: $0c
	cp   h                                           ; $6cb7: $bc
	cp   [hl]                                        ; $6cb8: $be
	add  d                                           ; $6cb9: $82
	adc  [hl]                                        ; $6cba: $8e
	cp   [hl]                                        ; $6cbb: $be
	cp   a                                           ; $6cbc: $bf
	ld   b, l                                        ; $6cbd: $45
	ld   b, e                                        ; $6cbe: $43
	add  b                                           ; $6cbf: $80
	rst  JumpTable                                         ; $6cc0: $df
	ld   [bc], a                                     ; $6cc1: $02
	ld   [hl+], a                                    ; $6cc2: $22
	ld   hl, $81f1                                   ; $6cc3: $21 $f1 $81
	rrca                                             ; $6cc6: $0f
	add  b                                           ; $6cc7: $80
	ld   a, [bc]                                     ; $6cc8: $0a
	add  b                                           ; $6cc9: $80
	add  hl, bc                                      ; $6cca: $09
	add  b                                           ; $6ccb: $80
	rlca                                             ; $6ccc: $07
	add  b                                           ; $6ccd: $80
	rrca                                             ; $6cce: $0f
	ld   b, $0a                                      ; $6ccf: $06 $0a
	rrca                                             ; $6cd1: $0f
	nop                                              ; $6cd2: $00
	rrca                                             ; $6cd3: $0f

jr_072_6cd4:
	db   $ed                                         ; $6cd4: $ed
	push hl                                          ; $6cd5: $e5
	db   $e3                                         ; $6cd6: $e3
	add  c                                           ; $6cd7: $81
	ldh  [$80], a                                    ; $6cd8: $e0 $80
	and  b                                           ; $6cda: $a0
	add  b                                           ; $6cdb: $80
	cp   l                                           ; $6cdc: $bd
	inc  c                                           ; $6cdd: $0c
	cp   $ff                                         ; $6cde: $fe $ff
	cp   e                                           ; $6ce0: $bb
	rst  $38                                         ; $6ce1: $ff
	add  c                                           ; $6ce2: $81
	rst  $38                                         ; $6ce3: $ff
	ld   a, [hl-]                                    ; $6ce4: $3a
	ld   hl, sp-$28                                  ; $6ce5: $f8 $d8
	nop                                              ; $6ce7: $00
	ldh  [$80], a                                    ; $6ce8: $e0 $80
	ret  nz                                          ; $6cea: $c0

	add  c                                           ; $6ceb: $81
	nop                                              ; $6cec: $00
	add  b                                           ; $6ced: $80
	ld   [hl], b                                     ; $6cee: $70
	inc  b                                           ; $6cef: $04
	ld   a, b                                        ; $6cf0: $78
	ld   hl, sp+$58                                  ; $6cf1: $f8 $58
	ld   hl, sp-$60                                  ; $6cf3: $f8 $a0
	add  a                                           ; $6cf5: $87
	nop                                              ; $6cf6: $00
	add  b                                           ; $6cf7: $80
	ld   bc, $0f81                                   ; $6cf8: $01 $81 $0f
	ld   bc, $890e                                   ; $6cfb: $01 $0e $89
	add  c                                           ; $6cfe: $81
	nop                                              ; $6cff: $00
	add  b                                           ; $6d00: $80
	ld   bc, $0080                                   ; $6d01: $01 $80 $00
	add  d                                           ; $6d04: $82
	rlca                                             ; $6d05: $07
	add  c                                           ; $6d06: $81
	ld   [hl], a                                     ; $6d07: $77
	ld   [bc], a                                     ; $6d08: $02
	rst  $30                                         ; $6d09: $f7
	rlca                                             ; $6d0a: $07
	rrca                                             ; $6d0b: $0f
	add  b                                           ; $6d0c: $80
	rra                                              ; $6d0d: $1f
	add  d                                           ; $6d0e: $82
	rst  $38                                         ; $6d0f: $ff
	add  b                                           ; $6d10: $80
	ld   a, a                                        ; $6d11: $7f
	add  b                                           ; $6d12: $80
	rst  $38                                         ; $6d13: $ff
	add  b                                           ; $6d14: $80
	db   $fd                                         ; $6d15: $fd
	add  b                                           ; $6d16: $80
	rst  $38                                         ; $6d17: $ff
	inc  bc                                          ; $6d18: $03
	ccf                                              ; $6d19: $3f
	ret  nz                                          ; $6d1a: $c0

	jr   nz, @-$1f                                   ; $6d1b: $20 $df

jr_072_6d1d:
	add  b                                           ; $6d1d: $80
	ret  nz                                          ; $6d1e: $c0

	inc  bc                                          ; $6d1f: $03
	rst  $38                                         ; $6d20: $ff
	ret  nz                                          ; $6d21: $c0

	add  c                                           ; $6d22: $81
	cp   [hl]                                        ; $6d23: $be
	add  b                                           ; $6d24: $80
	db   $fc                                         ; $6d25: $fc
	add  b                                           ; $6d26: $80
	ld   h, b                                        ; $6d27: $60
	ld   [bc], a                                     ; $6d28: $02
	ld   h, e                                        ; $6d29: $63
	db   $eb                                         ; $6d2a: $eb
	ld   [hl], a                                     ; $6d2b: $77
	add  b                                           ; $6d2c: $80
	nop                                              ; $6d2d: $00
	nop                                              ; $6d2e: $00
	rst  $38                                         ; $6d2f: $ff
	add  b                                           ; $6d30: $80
	nop                                              ; $6d31: $00
	dec  b                                           ; $6d32: $05
	rst  $38                                         ; $6d33: $ff
	nop                                              ; $6d34: $00
	ld   sp, hl                                      ; $6d35: $f9
	rlca                                             ; $6d36: $07
	nop                                              ; $6d37: $00
	ld   bc, $8180                                   ; $6d38: $01 $80 $81
	add  b                                           ; $6d3b: $80
	and  c                                           ; $6d3c: $a1
	nop                                              ; $6d3d: $00
	rst  $38                                         ; $6d3e: $ff
	add  b                                           ; $6d3f: $80
	nop                                              ; $6d40: $00
	nop                                              ; $6d41: $00
	rst  $38                                         ; $6d42: $ff
	add  b                                           ; $6d43: $80
	nop                                              ; $6d44: $00
	nop                                              ; $6d45: $00
	rst  $38                                         ; $6d46: $ff
	add  b                                           ; $6d47: $80
	nop                                              ; $6d48: $00
	nop                                              ; $6d49: $00
	ccf                                              ; $6d4a: $3f
	add  b                                           ; $6d4b: $80
	cp   l                                           ; $6d4c: $bd
	add  b                                           ; $6d4d: $80
	cp   b                                           ; $6d4e: $b8
	ld   [bc], a                                     ; $6d4f: $02
	or   a                                           ; $6d50: $b7
	or   b                                           ; $6d51: $b0
	jr   c, jr_072_6cd4                              ; $6d52: $38 $80

	nop                                              ; $6d54: $00
	nop                                              ; $6d55: $00
	rst  $38                                         ; $6d56: $ff
	add  b                                           ; $6d57: $80
	nop                                              ; $6d58: $00
	ld   a, [bc]                                     ; $6d59: $0a
	rst  $38                                         ; $6d5a: $ff
	nop                                              ; $6d5b: $00
	rlca                                             ; $6d5c: $07
	cp   $e0                                         ; $6d5d: $fe $e0
	cp   $a6                                         ; $6d5f: $fe $a6
	ret  nz                                          ; $6d61: $c0

	ret  z                                           ; $6d62: $c8

	ld   c, b                                        ; $6d63: $48
	ld   bc, $0080                                   ; $6d64: $01 $80 $00
	nop                                              ; $6d67: $00
	rst  $38                                         ; $6d68: $ff
	add  b                                           ; $6d69: $80
	nop                                              ; $6d6a: $00
	ld   b, $ff                                      ; $6d6b: $06 $ff
	nop                                              ; $6d6d: $00
	ld   sp, hl                                      ; $6d6e: $f9
	ld   bc, $03f3                                   ; $6d6f: $01 $f3 $03
	ld   [hl], b                                     ; $6d72: $70
	add  c                                           ; $6d73: $81
	nop                                              ; $6d74: $00
	nop                                              ; $6d75: $00
	ld   a, b                                        ; $6d76: $78
	add  b                                           ; $6d77: $80
	nop                                              ; $6d78: $00
	nop                                              ; $6d79: $00
	rst  $38                                         ; $6d7a: $ff
	add  b                                           ; $6d7b: $80
	nop                                              ; $6d7c: $00
	ld   bc, $00ff                                   ; $6d7d: $01 $ff $00
	add  b                                           ; $6d80: $80
	rst  $30                                         ; $6d81: $f7
	inc  bc                                          ; $6d82: $03
	sbc  $ff                                         ; $6d83: $de $ff
	ld   hl, $8000                                   ; $6d85: $21 $00 $80
	sub  d                                           ; $6d88: $92
	add  c                                           ; $6d89: $81
	nop                                              ; $6d8a: $00
	nop                                              ; $6d8b: $00
	rst  $38                                         ; $6d8c: $ff
	add  b                                           ; $6d8d: $80
	nop                                              ; $6d8e: $00
	dec  b                                           ; $6d8f: $05
	rst  $38                                         ; $6d90: $ff
	nop                                              ; $6d91: $00
	ld   c, c                                        ; $6d92: $49
	ld   a, c                                        ; $6d93: $79
	push bc                                          ; $6d94: $c5
	call $0c80                                       ; $6d95: $cd $80 $0c
	add  b                                           ; $6d98: $80
	ld   c, l                                        ; $6d99: $4d
	nop                                              ; $6d9a: $00
	jr   c, jr_072_6d1d                              ; $6d9b: $38 $80

	nop                                              ; $6d9d: $00
	nop                                              ; $6d9e: $00
	rst  $38                                         ; $6d9f: $ff
	add  b                                           ; $6da0: $80
	nop                                              ; $6da1: $00
	ld   bc, $00ff                                   ; $6da2: $01 $ff $00
	add  b                                           ; $6da5: $80
	cp   l                                           ; $6da6: $bd
	inc  bc                                          ; $6da7: $03
	ld   a, e                                        ; $6da8: $7b
	rst  $38                                         ; $6da9: $ff
	add  h                                           ; $6daa: $84
	nop                                              ; $6dab: $00
	add  b                                           ; $6dac: $80
	inc  h                                           ; $6dad: $24
	add  b                                           ; $6dae: $80
	dec  e                                           ; $6daf: $1d
	ld   bc, wIsDoubleSpeed                                   ; $6db0: $01 $02 $c2
	add  b                                           ; $6db3: $80
	ld   l, $01                                      ; $6db4: $2e $01
	pop  hl                                          ; $6db6: $e1
	ld   hl, $ef80                                   ; $6db7: $21 $80 $ef
	inc  bc                                          ; $6dba: $03
	rst  JumpTable                                         ; $6dbb: $df
	rst  $38                                         ; $6dbc: $ff
	jr   nz, jr_072_6dbf                             ; $6dbd: $20 $00

jr_072_6dbf:
	add  b                                           ; $6dbf: $80
	sub  d                                           ; $6dc0: $92
	add  b                                           ; $6dc1: $80
	rst  $28                                         ; $6dc2: $ef
	add  b                                           ; $6dc3: $80
	db   $10                                         ; $6dc4: $10
	add  b                                           ; $6dc5: $80
	ei                                               ; $6dc6: $fb
	add  b                                           ; $6dc7: $80
	inc  b                                           ; $6dc8: $04
	add  c                                           ; $6dc9: $81
	cp   [hl]                                        ; $6dca: $be
	ld   [bc], a                                     ; $6dcb: $02
	rst  $38                                         ; $6dcc: $ff
	ld   b, c                                        ; $6dcd: $41
	nop                                              ; $6dce: $00
	add  b                                           ; $6dcf: $80
	ld   b, h                                        ; $6dd0: $44
	nop                                              ; $6dd1: $00
	rst  $38                                         ; $6dd2: $ff
	adc  c                                           ; $6dd3: $89
	rrca                                             ; $6dd4: $0f
	ld   b, $07                                      ; $6dd5: $06 $07
	rrca                                             ; $6dd7: $0f
	inc  c                                           ; $6dd8: $0c
	rrca                                             ; $6dd9: $0f
	ld   c, $ff                                      ; $6dda: $0e $ff
	push af                                          ; $6ddc: $f5
	add  l                                           ; $6ddd: $85
	rst  $38                                         ; $6dde: $ff
	ld   d, $ef                                      ; $6ddf: $16 $ef
	rst  $38                                         ; $6de1: $ff
	ld   l, l                                        ; $6de2: $6d
	rst  $38                                         ; $6de3: $ff
	ld   d, h                                        ; $6de4: $54
	rst  $38                                         ; $6de5: $ff
	ld   a, b                                        ; $6de6: $78
	cp   $54                                         ; $6de7: $fe $54
	db   $fd                                         ; $6de9: $fd
	add  sp, -$01                                    ; $6dea: $e8 $ff
	rst  $28                                         ; $6dec: $ef
	rst  $38                                         ; $6ded: $ff
	db   $fc                                         ; $6dee: $fc
	rst  $38                                         ; $6def: $ff
	db   $fd                                         ; $6df0: $fd
	rst  $38                                         ; $6df1: $ff
	cp   a                                           ; $6df2: $bf
	cp   $9d                                         ; $6df3: $fe $9d
	rst  $38                                         ; $6df5: $ff
	db   $e3                                         ; $6df6: $e3
	add  c                                           ; $6df7: $81
	ld   a, $80                                      ; $6df8: $3e $80
	dec  hl                                          ; $6dfa: $2b
	inc  bc                                          ; $6dfb: $03
	ld   d, $97                                      ; $6dfc: $16 $97
	adc  c                                           ; $6dfe: $89
	add  hl, bc                                      ; $6dff: $09
	add  b                                           ; $6e00: $80
	ld   e, [hl]                                     ; $6e01: $5e
	dec  b                                           ; $6e02: $05
	ld   a, d                                        ; $6e03: $7a
	cp   $75                                         ; $6e04: $fe $75
	rst  $38                                         ; $6e06: $ff
	pop  af                                          ; $6e07: $f1
	rst  $30                                         ; $6e08: $f7
	add  b                                           ; $6e09: $80
	rst  $20                                         ; $6e0a: $e7
	add  b                                           ; $6e0b: $80
	rst  $30                                         ; $6e0c: $f7
	add  b                                           ; $6e0d: $80
	and  e                                           ; $6e0e: $a3
	add  b                                           ; $6e0f: $80
	ld   [hl], a                                     ; $6e10: $77
	add  b                                           ; $6e11: $80
	push af                                          ; $6e12: $f5
	dec  h                                           ; $6e13: $25
	ld   [hl], d                                     ; $6e14: $72
	ld   a, e                                        ; $6e15: $7b
	cp   h                                           ; $6e16: $bc
	cp   a                                           ; $6e17: $bf
	and  h                                           ; $6e18: $a4
	rst  $38                                         ; $6e19: $ff
	adc  c                                           ; $6e1a: $89
	rst  $38                                         ; $6e1b: $ff
	adc  a                                           ; $6e1c: $8f
	rst  $38                                         ; $6e1d: $ff
	ld   a, [de]                                     ; $6e1e: $1a
	rst  $38                                         ; $6e1f: $ff
	db   $10                                         ; $6e20: $10
	rst  $38                                         ; $6e21: $ff
	ld   [hl], b                                     ; $6e22: $70
	ccf                                              ; $6e23: $3f
	and  b                                           ; $6e24: $a0
	rst  $38                                         ; $6e25: $ff
	ld   d, c                                        ; $6e26: $51
	db   $fd                                         ; $6e27: $fd
	ld   b, d                                        ; $6e28: $42
	rst  $38                                         ; $6e29: $ff
	ld   b, c                                        ; $6e2a: $41
	rst  $38                                         ; $6e2b: $ff
	and  d                                           ; $6e2c: $a2
	ld   hl, sp-$41                                  ; $6e2d: $f8 $bf
	ld   hl, sp-$25                                  ; $6e2f: $f8 $db
	db   $fc                                         ; $6e31: $fc
	rst  $28                                         ; $6e32: $ef
	db   $fc                                         ; $6e33: $fc
	ld   h, e                                        ; $6e34: $63
	and  b                                           ; $6e35: $a0
	ld   d, b                                        ; $6e36: $50
	ret  nc                                          ; $6e37: $d0

	ld   [hl], c                                     ; $6e38: $71
	pop  af                                          ; $6e39: $f1
	add  b                                           ; $6e3a: $80
	pop  hl                                          ; $6e3b: $e1
	add  b                                           ; $6e3c: $80
	ld   bc, $f906                                   ; $6e3d: $01 $06 $f9
	ld   bc, $01f9                                   ; $6e40: $01 $f9 $01
	ld   sp, hl                                      ; $6e43: $f9
	ld   bc, $81f9                                   ; $6e44: $01 $f9 $81
	ld   bc, $5103                                   ; $6e47: $01 $03 $51
	sub  b                                           ; $6e4a: $90
	cp   [hl]                                        ; $6e4b: $be
	cp   a                                           ; $6e4c: $bf
	add  b                                           ; $6e4d: $80
	add  b                                           ; $6e4e: $80
	rlca                                             ; $6e4f: $07
	cp   a                                           ; $6e50: $bf
	add  b                                           ; $6e51: $80
	cp   a                                           ; $6e52: $bf
	add  b                                           ; $6e53: $80
	cp   a                                           ; $6e54: $bf
	add  b                                           ; $6e55: $80
	cp   c                                           ; $6e56: $b9
	adc  [hl]                                        ; $6e57: $8e
	add  b                                           ; $6e58: $80
	sbc  [hl]                                        ; $6e59: $9e
	nop                                              ; $6e5a: $00
	ld   [hl], $81                                   ; $6e5b: $36 $81
	nop                                              ; $6e5d: $00
	rla                                              ; $6e5e: $17
	cp   $00                                         ; $6e5f: $fe $00
	rst  $38                                         ; $6e61: $ff
	nop                                              ; $6e62: $00
	rst  $38                                         ; $6e63: $ff
	nop                                              ; $6e64: $00
	rst  $38                                         ; $6e65: $ff
	nop                                              ; $6e66: $00
	db   $fc                                         ; $6e67: $fc
	add  b                                           ; $6e68: $80
	add  d                                           ; $6e69: $82
	add  b                                           ; $6e6a: $80
	ld   b, $00                                      ; $6e6b: $06 $00
	inc  bc                                          ; $6e6d: $03
	ld   bc, $0085                                   ; $6e6e: $01 $85 $00
	rst  $38                                         ; $6e71: $ff
	nop                                              ; $6e72: $00
	rst  $38                                         ; $6e73: $ff
	nop                                              ; $6e74: $00
	rst  $38                                         ; $6e75: $ff
	nop                                              ; $6e76: $00
	add  c                                           ; $6e77: $81
	rst  $38                                         ; $6e78: $ff
	inc  bc                                          ; $6e79: $03
	add  h                                           ; $6e7a: $84
	ld   a, e                                        ; $6e7b: $7b
	nop                                              ; $6e7c: $00
	rst  $38                                         ; $6e7d: $ff
	add  b                                           ; $6e7e: $80
	inc  b                                           ; $6e7f: $04
	ld   b, $00                                      ; $6e80: $06 $00
	rst  $38                                         ; $6e82: $ff
	nop                                              ; $6e83: $00
	rst  $38                                         ; $6e84: $ff
	nop                                              ; $6e85: $00
	rst  $38                                         ; $6e86: $ff
	nop                                              ; $6e87: $00
	add  c                                           ; $6e88: $81
	rst  $38                                         ; $6e89: $ff
	inc  bc                                          ; $6e8a: $03
	ld   hl, $0cea                                   ; $6e8b: $21 $ea $0c
	call $0c81                                       ; $6e8e: $cd $81 $0c
	dec  b                                           ; $6e91: $05
	call $cd0c                                       ; $6e92: $cd $0c $cd
	inc  c                                           ; $6e95: $0c
	call $810c                                       ; $6e96: $cd $0c $81
	call $0c03                                       ; $6e99: $cd $03 $0c
	ld   sp, hl                                      ; $6e9c: $f9
	nop                                              ; $6e9d: $00
	rst  $38                                         ; $6e9e: $ff
	add  b                                           ; $6e9f: $80
	ld   b, c                                        ; $6ea0: $41
	ld   b, $01                                      ; $6ea1: $06 $01
	rst  $38                                         ; $6ea3: $ff
	ld   bc, $00fc                                   ; $6ea4: $01 $fc $00
	db   $fc                                         ; $6ea7: $fc
	nop                                              ; $6ea8: $00
	add  c                                           ; $6ea9: $81
	rst  $38                                         ; $6eaa: $ff
	inc  bc                                          ; $6eab: $03
	ld   b, d                                        ; $6eac: $42
	cp   l                                           ; $6ead: $bd
	nop                                              ; $6eae: $00
	rst  $38                                         ; $6eaf: $ff
	add  b                                           ; $6eb0: $80
	inc  b                                           ; $6eb1: $04
	add  b                                           ; $6eb2: $80
	rst  $38                                         ; $6eb3: $ff
	ld   bc, $fb04                                   ; $6eb4: $01 $04 $fb
	add  c                                           ; $6eb7: $81
	nop                                              ; $6eb8: $00
	add  c                                           ; $6eb9: $81
	rst  $38                                         ; $6eba: $ff
	ld   [de], a                                     ; $6ebb: $12
	ld   de, $07ee                                   ; $6ebc: $11 $ee $07
	ldh  a, [c]                                      ; $6ebf: $f2
	rrca                                             ; $6ec0: $0f
	jr   @+$01                                       ; $6ec1: $18 $ff

	jp   c, $ee3f                                    ; $6ec3: $da $3f $ee

	ccf                                              ; $6ec6: $3f
	ld   h, $7f                                      ; $6ec7: $26 $7f
	ld   b, a                                        ; $6ec9: $47
	rst  $38                                         ; $6eca: $ff
	ld   h, e                                        ; $6ecb: $63
	rst  $38                                         ; $6ecc: $ff
	xor  a                                           ; $6ecd: $af
	dec  bc                                          ; $6ece: $0b
	add  b                                           ; $6ecf: $80
	nop                                              ; $6ed0: $00
	add  d                                           ; $6ed1: $82
	dec  bc                                          ; $6ed2: $0b
	add  b                                           ; $6ed3: $80
	add  hl, bc                                      ; $6ed4: $09
	add  d                                           ; $6ed5: $82
	ld   b, $80                                      ; $6ed6: $06 $80
	ld   [bc], a                                     ; $6ed8: $02
	ld   bc, $6d9d                                   ; $6ed9: $01 $9d $6d
	add  b                                           ; $6edc: $80
	nop                                              ; $6edd: $00
	add  d                                           ; $6ede: $82
	ld   l, l                                        ; $6edf: $6d
	add  b                                           ; $6ee0: $80
	inc  h                                           ; $6ee1: $24
	add  d                                           ; $6ee2: $82
	db   $db                                         ; $6ee3: $db
	add  b                                           ; $6ee4: $80
	ld   c, c                                        ; $6ee5: $49
	add  hl, de                                      ; $6ee6: $19
	ld   a, [$fcff]                                  ; $6ee7: $fa $ff $fc
	rst  $38                                         ; $6eea: $ff
	db   $e3                                         ; $6eeb: $e3
	rst  $38                                         ; $6eec: $ff
	push de                                          ; $6eed: $d5
	rst  $38                                         ; $6eee: $ff
	ld   l, $7e                                      ; $6eef: $2e $7e
	ld   a, [hl-]                                    ; $6ef1: $3a
	ld   a, d                                        ; $6ef2: $7a
	db   $dd                                         ; $6ef3: $dd
	db   $fd                                         ; $6ef4: $fd
	ld   a, [$b6da]                                  ; $6ef5: $fa $da $b6
	rst  $38                                         ; $6ef8: $ff
	and  [hl]                                        ; $6ef9: $a6
	rst  $38                                         ; $6efa: $ff
	adc  l                                           ; $6efb: $8d
	db   $fd                                         ; $6efc: $fd
	jr   c, @-$06                                    ; $6efd: $38 $f8

	ld   h, b                                        ; $6eff: $60
	ldh  [$80], a                                    ; $6f00: $e0 $80
	ret  nc                                          ; $6f02: $d0

	add  b                                           ; $6f03: $80
	and  b                                           ; $6f04: $a0
	add  b                                           ; $6f05: $80
	ret  nz                                          ; $6f06: $c0

	dec  c                                           ; $6f07: $0d
	xor  l                                           ; $6f08: $ad
	rst  $10                                         ; $6f09: $d7
	add  sp, -$11                                    ; $6f0a: $e8 $ef
	ld   a, [hl-]                                    ; $6f0c: $3a
	ld   a, a                                        ; $6f0d: $7f
	ld   d, e                                        ; $6f0e: $53
	ld   a, a                                        ; $6f0f: $7f
	jp   hl                                          ; $6f10: $e9


	db   $fd                                         ; $6f11: $fd
	halt                                             ; $6f12: $76
	ld   a, [hl]                                     ; $6f13: $7e
	db   $dd                                         ; $6f14: $dd
	push de                                          ; $6f15: $d5
	add  b                                           ; $6f16: $80
	and  b                                           ; $6f17: $a0
	add  hl, bc                                      ; $6f18: $09
	or   $fb                                         ; $6f19: $f6 $fb
	and  [hl]                                        ; $6f1b: $a6
	xor  a                                           ; $6f1c: $af
	ld   d, [hl]                                     ; $6f1d: $56
	ld   d, a                                        ; $6f1e: $57
	xor  l                                           ; $6f1f: $ad
	xor  e                                           ; $6f20: $ab
	add  d                                           ; $6f21: $82
	add  c                                           ; $6f22: $81
	add  b                                           ; $6f23: $80
	ld   b, c                                        ; $6f24: $41
	add  d                                           ; $6f25: $82
	nop                                              ; $6f26: $00
	rlca                                             ; $6f27: $07
	xor  d                                           ; $6f28: $aa
	db   $fd                                         ; $6f29: $fd
	ld   b, $d4                                      ; $6f2a: $06 $d4
	rst  $38                                         ; $6f2c: $ff
	ld   a, [$f474]                                  ; $6f2d: $fa $74 $f4
	add  b                                           ; $6f30: $80
	ret  z                                           ; $6f31: $c8

	add  b                                           ; $6f32: $80
	ret  nz                                          ; $6f33: $c0

	add  b                                           ; $6f34: $80
	ld   b, b                                        ; $6f35: $40
	add  b                                           ; $6f36: $80
	add  b                                           ; $6f37: $80
	ld   bc, $01fe                                   ; $6f38: $01 $fe $01
	add  b                                           ; $6f3b: $80
	and  c                                           ; $6f3c: $a1
	add  b                                           ; $6f3d: $80
	pop  de                                          ; $6f3e: $d1
	add  c                                           ; $6f3f: $81
	ld   sp, hl                                      ; $6f40: $f9
	add  d                                           ; $6f41: $82
	ld   a, c                                        ; $6f42: $79
	add  b                                           ; $6f43: $80
	ld   sp, hl                                      ; $6f44: $f9
	ld   [bc], a                                     ; $6f45: $02
	ld   a, c                                        ; $6f46: $79
	sub  $9e                                         ; $6f47: $d6 $9e
	add  b                                           ; $6f49: $80
	cp   a                                           ; $6f4a: $bf
	ld   [bc], a                                     ; $6f4b: $02
	sbc  a                                           ; $6f4c: $9f
	cp   a                                           ; $6f4d: $bf
	sbc  a                                           ; $6f4e: $9f
	add  c                                           ; $6f4f: $81
	cp   a                                           ; $6f50: $bf
	rlca                                             ; $6f51: $07
	cp   d                                           ; $6f52: $ba
	cp   a                                           ; $6f53: $bf
	xor  l                                           ; $6f54: $ad
	cp   a                                           ; $6f55: $bf
	sbc  a                                           ; $6f56: $9f
	cp   a                                           ; $6f57: $bf
	ret  nz                                          ; $6f58: $c0

	cp   a                                           ; $6f59: $bf
	add  h                                           ; $6f5a: $84
	rst  $38                                         ; $6f5b: $ff
	rlca                                             ; $6f5c: $07
	sub  [hl]                                        ; $6f5d: $96
	rst  $38                                         ; $6f5e: $ff
	call nz, $c0fe                                   ; $6f5f: $c4 $fe $c0
	cp   $e2                                         ; $6f62: $fe $e2
	ldh  a, [$80]                                    ; $6f64: $f0 $80
	rst  $38                                         ; $6f66: $ff
	ld   bc, $8000                                   ; $6f67: $01 $00 $80
	add  b                                           ; $6f6a: $80
	db   $db                                         ; $6f6b: $db
	ld   bc, $9111                                   ; $6f6c: $01 $11 $91
	add  b                                           ; $6f6f: $80
	ld   [hl], a                                     ; $6f70: $77
	add  b                                           ; $6f71: $80
	xor  $00                                         ; $6f72: $ee $00
	nop                                              ; $6f74: $00
	add  b                                           ; $6f75: $80
	ld   [hl+], a                                    ; $6f76: $22
	nop                                              ; $6f77: $00
	nop                                              ; $6f78: $00
	add  b                                           ; $6f79: $80
	rst  $38                                         ; $6f7a: $ff
	add  b                                           ; $6f7b: $80
	nop                                              ; $6f7c: $00
	add  b                                           ; $6f7d: $80
	cp   e                                           ; $6f7e: $bb
	add  b                                           ; $6f7f: $80
	add  hl, de                                      ; $6f80: $19
	add  b                                           ; $6f81: $80
	ld   [hl], a                                     ; $6f82: $77
	add  b                                           ; $6f83: $80
	xor  $00                                         ; $6f84: $ee $00
	nop                                              ; $6f86: $00
	add  b                                           ; $6f87: $80
	ld   [hl+], a                                    ; $6f88: $22
	ld   [bc], a                                     ; $6f89: $02
	nop                                              ; $6f8a: $00
	push af                                          ; $6f8b: $f5
	call $0c80                                       ; $6f8c: $cd $80 $0c
	add  b                                           ; $6f8f: $80
	adc  l                                           ; $6f90: $8d
	add  b                                           ; $6f91: $80
	adc  h                                           ; $6f92: $8c
	add  b                                           ; $6f93: $80
	ld   c, l                                        ; $6f94: $4d
	add  b                                           ; $6f95: $80
	call $0c82                                       ; $6f96: $cd $82 $0c
	ld   bc, $ffc7                                   ; $6f99: $01 $c7 $ff
	add  b                                           ; $6f9c: $80
	nop                                              ; $6f9d: $00
	add  b                                           ; $6f9e: $80
	cp   e                                           ; $6f9f: $bb
	add  b                                           ; $6fa0: $80
	adc  b                                           ; $6fa1: $88
	add  b                                           ; $6fa2: $80
	cp   e                                           ; $6fa3: $bb
	add  b                                           ; $6fa4: $80
	db   $dd                                         ; $6fa5: $dd
	nop                                              ; $6fa6: $00
	nop                                              ; $6fa7: $00
	add  b                                           ; $6fa8: $80
	ld   b, h                                        ; $6fa9: $44
	nop                                              ; $6faa: $00
	nop                                              ; $6fab: $00
	add  b                                           ; $6fac: $80
	rst  $38                                         ; $6fad: $ff
	add  b                                           ; $6fae: $80
	nop                                              ; $6faf: $00
	ld   bc, $bbba                                   ; $6fb0: $01 $ba $bb
	add  b                                           ; $6fb3: $80
	adc  c                                           ; $6fb4: $89
	add  b                                           ; $6fb5: $80
	cp   e                                           ; $6fb6: $bb
	ld   [bc], a                                     ; $6fb7: $02
	call c, $00dd                                    ; $6fb8: $dc $dd $00
	add  b                                           ; $6fbb: $80
	ld   b, h                                        ; $6fbc: $44
	ld   b, $00                                      ; $6fbd: $06 $00
	ld   e, a                                        ; $6fbf: $5f
	rst  $38                                         ; $6fc0: $ff
	adc  [hl]                                        ; $6fc1: $8e
	cp   $a5                                         ; $6fc2: $fe $a5
	push af                                          ; $6fc4: $f5
	add  b                                           ; $6fc5: $80
	ldh  a, [$0d]                                    ; $6fc6: $f0 $0d
	and  b                                           ; $6fc8: $a0
	ldh  [$c9], a                                    ; $6fc9: $e0 $c9
	adc  b                                           ; $6fcb: $88
	inc  bc                                          ; $6fcc: $03
	add  b                                           ; $6fcd: $80
	ld   b, d                                        ; $6fce: $42
	ld   b, b                                        ; $6fcf: $40
	ldh  a, [rIF]                                    ; $6fd0: $f0 $0f
	dec  c                                           ; $6fd2: $0d
	dec  bc                                          ; $6fd3: $0b
	rrca                                             ; $6fd4: $0f
	ld   b, $80                                      ; $6fd5: $06 $80
	ld   [bc], a                                     ; $6fd7: $02
	inc  bc                                          ; $6fd8: $03
	add  hl, bc                                      ; $6fd9: $09
	dec  c                                           ; $6fda: $0d
	add  hl, bc                                      ; $6fdb: $09
	dec  c                                           ; $6fdc: $0d
	add  b                                           ; $6fdd: $80
	nop                                              ; $6fde: $00
	jr   jr_072_6fe6                                 ; $6fdf: $18 $05

	nop                                              ; $6fe1: $00
	push af                                          ; $6fe2: $f5
	rst  $38                                         ; $6fe3: $ff
	or   [hl]                                        ; $6fe4: $b6
	ld   l, l                                        ; $6fe5: $6d

jr_072_6fe6:
	rst  $38                                         ; $6fe6: $ff
	jp   c, Jump_072_484b                            ; $6fe7: $da $4b $48

	ld   h, $b0                                      ; $6fea: $26 $b0
	inc  l                                           ; $6fec: $2c
	or   b                                           ; $6fed: $b0
	ld   [$5400], sp                                 ; $6fee: $08 $00 $54
	nop                                              ; $6ff1: $00
	inc  [hl]                                        ; $6ff2: $34
	sbc  a                                           ; $6ff3: $9f
	ld   a, h                                        ; $6ff4: $7c
	dec  bc                                          ; $6ff5: $0b
	adc  c                                           ; $6ff6: $89
	dec  b                                           ; $6ff7: $05
	inc  b                                           ; $6ff8: $04
	add  b                                           ; $6ff9: $80
	ld   [bc], a                                     ; $6ffa: $02
	add  b                                           ; $6ffb: $80
	ld   bc, $0084                                   ; $6ffc: $01 $84 $00
	inc  c                                           ; $6fff: $0c
	rst  $38                                         ; $7000: $ff
	sbc  l                                           ; $7001: $9d
	ld   l, e                                        ; $7002: $6b
	cp   a                                           ; $7003: $bf
	or   [hl]                                        ; $7004: $b6
	ld   [bc], a                                     ; $7005: $02
	ld   c, d                                        ; $7006: $4a
	daa                                              ; $7007: $27
	ld   l, a                                        ; $7008: $6f
	dec  [hl]                                        ; $7009: $35
	or   l                                           ; $700a: $b5
	add  b                                           ; $700b: $80
	nop                                              ; $700c: $00
	add  b                                           ; $700d: $80
	ld   [bc], a                                     ; $700e: $02
	dec  b                                           ; $700f: $05
	nop                                              ; $7010: $00
	rst  $38                                         ; $7011: $ff
	or   [hl]                                        ; $7012: $b6
	ld   l, l                                        ; $7013: $6d
	rst  $38                                         ; $7014: $ff
	db   $db                                         ; $7015: $db
	add  b                                           ; $7016: $80
	ld   c, c                                        ; $7017: $49
	inc  bc                                          ; $7018: $03
	inc  h                                           ; $7019: $24
	or   [hl]                                        ; $701a: $b6
	inc  h                                           ; $701b: $24
	or   [hl]                                        ; $701c: $b6
	add  b                                           ; $701d: $80
	nop                                              ; $701e: $00
	add  b                                           ; $701f: $80
	xor  d                                           ; $7020: $aa
	dec  b                                           ; $7021: $05
	nop                                              ; $7022: $00
	ld   hl, sp-$24                                  ; $7023: $f8 $dc
	or   h                                           ; $7025: $b4
	ldh  a, [c]                                      ; $7026: $f2
	ld   h, d                                        ; $7027: $62
	add  b                                           ; $7028: $80
	ld   [hl+], a                                    ; $7029: $22
	inc  bc                                          ; $702a: $03
	add  c                                           ; $702b: $81
	pop  bc                                          ; $702c: $c1
	add  b                                           ; $702d: $80
	ret  nz                                          ; $702e: $c0

	add  b                                           ; $702f: $80
	ld   [bc], a                                     ; $7030: $02
	add  b                                           ; $7031: $80
	xor  d                                           ; $7032: $aa
	adc  b                                           ; $7033: $88
	nop                                              ; $7034: $00
	add  b                                           ; $7035: $80
	adc  b                                           ; $7036: $88
	add  b                                           ; $7037: $80
	and  d                                           ; $7038: $a2
	add  b                                           ; $7039: $80
	ld   [$5e00], sp                                 ; $703a: $08 $00 $5e
	add  c                                           ; $703d: $81
	ld   e, c                                        ; $703e: $59
	add  b                                           ; $703f: $80
	add  hl, sp                                      ; $7040: $39
	add  b                                           ; $7041: $80
	ld   sp, $0180                                   ; $7042: $31 $80 $01
	nop                                              ; $7045: $00
	xor  c                                           ; $7046: $a9
	add  e                                           ; $7047: $83
	add  c                                           ; $7048: $81
	nop                                              ; $7049: $00
	add  d                                           ; $704a: $82
	add  c                                           ; $704b: $81
	xor  l                                           ; $704c: $ad
	add  d                                           ; $704d: $82
	sbc  e                                           ; $704e: $9b
	add  b                                           ; $704f: $80
	add  b                                           ; $7050: $80
	nop                                              ; $7051: $00
	cp   a                                           ; $7052: $bf
	add  e                                           ; $7053: $83
	add  b                                           ; $7054: $80
	nop                                              ; $7055: $00
	adc  c                                           ; $7056: $89
	add  c                                           ; $7057: $81
	or   [hl]                                        ; $7058: $b6
	add  d                                           ; $7059: $82
	ld   l, l                                        ; $705a: $6d
	add  b                                           ; $705b: $80
	nop                                              ; $705c: $00
	nop                                              ; $705d: $00
	rst  $38                                         ; $705e: $ff
	add  e                                           ; $705f: $83
	ld   b, b                                        ; $7060: $40
	ld   bc, $1fb6                                   ; $7061: $01 $b6 $1f
	add  l                                           ; $7064: $85
	ret                                              ; $7065: $c9


	ld   [$cedf], sp                                 ; $7066: $08 $df $ce
	jp   c, $ceca                                    ; $7069: $da $ca $ce

	ret  nz                                          ; $706c: $c0

	ret                                              ; $706d: $c9


	ld   e, $c4                                      ; $706e: $1e $c4
	add  d                                           ; $7070: $82
	inc  [hl]                                        ; $7071: $34
	nop                                              ; $7072: $00
	ld   [hl], $80                                   ; $7073: $36 $80
	inc  [hl]                                        ; $7075: $34

jr_072_7076:
	ld   [bc], a                                     ; $7076: $02
	db   $f4                                         ; $7077: $f4

jr_072_7078:
	inc  [hl]                                        ; $7078: $34
	db   $f4                                         ; $7079: $f4
	add  d                                           ; $707a: $82
	inc  [hl]                                        ; $707b: $34
	nop                                              ; $707c: $00
	push af                                          ; $707d: $f5
	add  e                                           ; $707e: $83
	call $8c80                                       ; $707f: $cd $80 $8c
	inc  bc                                          ; $7082: $03
	adc  l                                           ; $7083: $8d
	adc  h                                           ; $7084: $8c
	adc  l                                           ; $7085: $8d
	adc  h                                           ; $7086: $8c
	add  b                                           ; $7087: $80
	adc  l                                           ; $7088: $8d
	add  b                                           ; $7089: $80
	adc  h                                           ; $708a: $8c
	nop                                              ; $708b: $00
	ld   sp, hl                                      ; $708c: $f9
	add  e                                           ; $708d: $83
	rst  $38                                         ; $708e: $ff
	add  b                                           ; $708f: $80

jr_072_7090:
	ld   b, $03                                      ; $7090: $06 $03
	rst  $38                                         ; $7092: $ff
	nop                                              ; $7093: $00
	ld   d, b                                        ; $7094: $50
	dec  b                                           ; $7095: $05
	add  b                                           ; $7096: $80
	ld   d, l                                        ; $7097: $55
	add  b                                           ; $7098: $80
	dec  b                                           ; $7099: $05
	ld   bc, $8f51                                   ; $709a: $01 $51 $8f
	add  b                                           ; $709d: $80
	rst  $28                                         ; $709e: $ef
	add  b                                           ; $709f: $80
	db   $e4                                         ; $70a0: $e4
	add  b                                           ; $70a1: $80
	ld   h, h                                        ; $70a2: $64
	ld   [bc], a                                     ; $70a3: $02
	adc  e                                           ; $70a4: $8b
	nop                                              ; $70a5: $00
	ld   b, b                                        ; $70a6: $40
	add  e                                           ; $70a7: $83
	ld   b, l                                        ; $70a8: $45
	dec  b                                           ; $70a9: $05
	dec  b                                           ; $70aa: $05
	rst  $38                                         ; $70ab: $ff
	jp   c, $a5b7                                    ; $70ac: $da $b7 $a5

	or   a                                           ; $70af: $b7
	add  b                                           ; $70b0: $80
	sub  e                                           ; $70b1: $93
	inc  c                                           ; $70b2: $0c
	and  h                                           ; $70b3: $a4
	or   [hl]                                        ; $70b4: $b6
	and  h                                           ; $70b5: $a4
	cp   [hl]                                        ; $70b6: $be
	ld   [$5594], sp                                 ; $70b7: $08 $94 $55
	dec  hl                                          ; $70ba: $2b
	sbc  a                                           ; $70bb: $9f
	nop                                              ; $70bc: $00
	dec  b                                           ; $70bd: $05
	nop                                              ; $70be: $00
	dec  b                                           ; $70bf: $05
	adc  c                                           ; $70c0: $89
	nop                                              ; $70c1: $00
	inc  b                                           ; $70c2: $04
	and  c                                           ; $70c3: $a1
	nop                                              ; $70c4: $00
	ld   d, h                                        ; $70c5: $54
	nop                                              ; $70c6: $00
	ld   d, h                                        ; $70c7: $54
	add  c                                           ; $70c8: $81
	ld   bc, $0086                                   ; $70c9: $01 $86 $00
	inc  bc                                          ; $70cc: $03
	ld   a, a                                        ; $70cd: $7f
	ld   a, [hl+]                                    ; $70ce: $2a
	nop                                              ; $70cf: $00
	add  b                                           ; $70d0: $80
	add  b                                           ; $70d1: $80
	xor  d                                           ; $70d2: $aa
	adc  b                                           ; $70d3: $88
	ld   a, [hl+]                                    ; $70d4: $2a
	dec  b                                           ; $70d5: $05
	jr   nz, jr_072_7078                             ; $70d6: $20 $a0

	nop                                              ; $70d8: $00
	ld   [$baaa], sp                                 ; $70d9: $08 $aa $ba
	add  b                                           ; $70dc: $80
	or   b                                           ; $70dd: $b0
	add  b                                           ; $70de: $80
	add  d                                           ; $70df: $82
	add  b                                           ; $70e0: $80
	and  b                                           ; $70e1: $a0
	add  b                                           ; $70e2: $80
	add  b                                           ; $70e3: $80
	add  b                                           ; $70e4: $80
	ld   [bc], a                                     ; $70e5: $02
	ld   bc, $aab2                                   ; $70e6: $01 $b2 $aa
	add  b                                           ; $70e9: $80
	nop                                              ; $70ea: $00
	add  d                                           ; $70eb: $82
	ld   a, [hl+]                                    ; $70ec: $2a
	add  b                                           ; $70ed: $80
	xor  d                                           ; $70ee: $aa
	add  b                                           ; $70ef: $80
	ld   a, [hl+]                                    ; $70f0: $2a
	add  b                                           ; $70f1: $80
	xor  d                                           ; $70f2: $aa
	add  b                                           ; $70f3: $80
	jr   z, jr_072_7076                              ; $70f4: $28 $80

	ld   [bc], a                                     ; $70f6: $02
	add  b                                           ; $70f7: $80
	nop                                              ; $70f8: $00
	add  b                                           ; $70f9: $80
	adc  d                                           ; $70fa: $8a
	add  b                                           ; $70fb: $80
	ld   [hl+], a                                    ; $70fc: $22
	add  b                                           ; $70fd: $80
	add  d                                           ; $70fe: $82
	add  b                                           ; $70ff: $80
	ld   [hl+], a                                    ; $7100: $22
	add  b                                           ; $7101: $80
	nop                                              ; $7102: $00
	add  b                                           ; $7103: $80
	ld   [$a880], sp                                 ; $7104: $08 $80 $a8
	add  b                                           ; $7107: $80
	nop                                              ; $7108: $00
	add  b                                           ; $7109: $80
	adc  b                                           ; $710a: $88
	add  b                                           ; $710b: $80
	and  b                                           ; $710c: $a0
	add  b                                           ; $710d: $80
	jr   nz, jr_072_7090                             ; $710e: $20 $80

	xor  b                                           ; $7110: $a8
	add  b                                           ; $7111: $80
	and  b                                           ; $7112: $a0
	add  b                                           ; $7113: $80
	add  b                                           ; $7114: $80
	ld   bc, $a9ae                                   ; $7115: $01 $ae $a9
	add  b                                           ; $7118: $80
	ld   bc, $a900                                   ; $7119: $01 $00 $a9
	add  h                                           ; $711c: $84
	add  c                                           ; $711d: $81
	add  b                                           ; $711e: $80
	xor  c                                           ; $711f: $a9
	add  c                                           ; $7120: $81
	ld   bc, $1000                                   ; $7121: $01 $00 $10
	add  b                                           ; $7124: $80
	cp   a                                           ; $7125: $bf
	add  [hl]                                        ; $7126: $86
	add  b                                           ; $7127: $80
	add  b                                           ; $7128: $80
	cp   a                                           ; $7129: $bf
	add  c                                           ; $712a: $81
	add  b                                           ; $712b: $80
	nop                                              ; $712c: $00
	ret  nz                                          ; $712d: $c0

	add  b                                           ; $712e: $80
	rst  $38                                         ; $712f: $ff
	add  [hl]                                        ; $7130: $86
	ld   b, b                                        ; $7131: $40
	add  b                                           ; $7132: $80
	rst  $38                                         ; $7133: $ff
	inc  bc                                          ; $7134: $03
	ld   b, b                                        ; $7135: $40
	ld   e, a                                        ; $7136: $5f
	ld   b, b                                        ; $7137: $40
	ld   a, a                                        ; $7138: $7f
	add  b                                           ; $7139: $80
	ret  nz                                          ; $713a: $c0

	add  d                                           ; $713b: $82
	rst  JumpTable                                         ; $713c: $df
	add  c                                           ; $713d: $81
	jp   z, $ea00                                    ; $713e: $ca $00 $ea

	add  b                                           ; $7141: $80
	rra                                              ; $7142: $1f
	dec  b                                           ; $7143: $05
	nop                                              ; $7144: $00
	rst  $38                                         ; $7145: $ff
	nop                                              ; $7146: $00
	or   l                                           ; $7147: $b5
	ld   [hl], h                                     ; $7148: $74
	inc  [hl]                                        ; $7149: $34
	add  d                                           ; $714a: $82
	db   $f4                                         ; $714b: $f4
	add  c                                           ; $714c: $81
	or   h                                           ; $714d: $b4
	dec  bc                                          ; $714e: $0b
	cp   l                                           ; $714f: $bd
	call nz, $00c7                                   ; $7150: $c4 $c7 $00
	rst  $38                                         ; $7153: $ff
	nop                                              ; $7154: $00
	ld   [hl], h                                     ; $7155: $74
	adc  l                                           ; $7156: $8d
	call $cdcc                                       ; $7157: $cd $cc $cd
	call z, $0c80                                    ; $715a: $cc $80 $0c
	add  b                                           ; $715d: $80
	dec  c                                           ; $715e: $0d
	ld   b, $cc                                      ; $715f: $06 $cc
	dec  c                                           ; $7161: $0d
	call z, $cd0d                                    ; $7162: $cc $0d $cd
	inc  c                                           ; $7165: $0c
	jr   c, @-$7e                                    ; $7166: $38 $80

	ld   d, l                                        ; $7168: $55
	ld   bc, $5000                                   ; $7169: $01 $00 $50
	add  c                                           ; $716c: $81
	dec  b                                           ; $716d: $05
	add  b                                           ; $716e: $80
	ld   d, l                                        ; $716f: $55
	ld   [bc], a                                     ; $7170: $02
	nop                                              ; $7171: $00
	ld   d, l                                        ; $7172: $55
	nop                                              ; $7173: $00
	add  b                                           ; $7174: $80
	ld   d, l                                        ; $7175: $55
	inc  b                                           ; $7176: $04
	nop                                              ; $7177: $00
	ld   b, b                                        ; $7178: $40
	ld   b, l                                        ; $7179: $45
	dec  b                                           ; $717a: $05
	nop                                              ; $717b: $00
	add  c                                           ; $717c: $81
	ld   b, l                                        ; $717d: $45
	add  d                                           ; $717e: $82
	ld   b, b                                        ; $717f: $40
	dec  b                                           ; $7180: $05
	ld   b, l                                        ; $7181: $45
	ld   d, l                                        ; $7182: $55
	nop                                              ; $7183: $00
	ld   d, b                                        ; $7184: $50
	nop                                              ; $7185: $00
	dec  d                                           ; $7186: $15
	add  b                                           ; $7187: $80
	ld   c, l                                        ; $7188: $4d
	dec  b                                           ; $7189: $05
	inc  c                                           ; $718a: $0c
	ld   b, c                                        ; $718b: $41
	ld   bc, $011d                                   ; $718c: $01 $1d $01
	dec  b                                           ; $718f: $05
	add  b                                           ; $7190: $80
	dec  c                                           ; $7191: $0d
	add  b                                           ; $7192: $80
	ld   c, l                                        ; $7193: $4d
	add  c                                           ; $7194: $81
	dec  c                                           ; $7195: $0d
	ld   [bc], a                                     ; $7196: $02
	cp   b                                           ; $7197: $b8
	nop                                              ; $7198: $00
	dec  b                                           ; $7199: $05
	adc  c                                           ; $719a: $89
	nop                                              ; $719b: $00
	inc  b                                           ; $719c: $04
	dec  b                                           ; $719d: $05
	nop                                              ; $719e: $00
	pop  af                                          ; $719f: $f1
	nop                                              ; $71a0: $00
	ld   d, h                                        ; $71a1: $54
	adc  c                                           ; $71a2: $89
	nop                                              ; $71a3: $00
	rlca                                             ; $71a4: $07
	ld   d, h                                        ; $71a5: $54
	nop                                              ; $71a6: $00
	add  c                                           ; $71a7: $81
	nop                                              ; $71a8: $00
	ld   [$2028], sp                                 ; $71a9: $08 $28 $20
	ld   a, [hl+]                                    ; $71ac: $2a
	add  b                                           ; $71ad: $80
	ld   a, [bc]                                     ; $71ae: $0a
	add  h                                           ; $71af: $84
	nop                                              ; $71b0: $00
	inc  bc                                          ; $71b1: $03
	ld   a, [hl+]                                    ; $71b2: $2a
	nop                                              ; $71b3: $00
	sbc  b                                           ; $71b4: $98
	nop                                              ; $71b5: $00
	add  b                                           ; $71b6: $80
	jr   nz, jr_072_71b9                             ; $71b7: $20 $00

jr_072_71b9:
	nop                                              ; $71b9: $00
	add  c                                           ; $71ba: $81
	and  d                                           ; $71bb: $a2
	add  h                                           ; $71bc: $84
	nop                                              ; $71bd: $00
	rlca                                             ; $71be: $07
	and  d                                           ; $71bf: $a2
	nop                                              ; $71c0: $00
	jr   jr_072_71c3                                 ; $71c1: $18 $00

jr_072_71c3:
	ld   [$2028], sp                                 ; $71c3: $08 $28 $20
	xor  d                                           ; $71c6: $aa
	add  b                                           ; $71c7: $80
	adc  d                                           ; $71c8: $8a
	add  h                                           ; $71c9: $84
	nop                                              ; $71ca: $00
	nop                                              ; $71cb: $00
	xor  d                                           ; $71cc: $aa
	add  c                                           ; $71cd: $81
	nop                                              ; $71ce: $00
	add  b                                           ; $71cf: $80
	ld   [bc], a                                     ; $71d0: $02
	nop                                              ; $71d1: $00
	nop                                              ; $71d2: $00
	add  c                                           ; $71d3: $81
	xor  d                                           ; $71d4: $aa
	add  h                                           ; $71d5: $84
	nop                                              ; $71d6: $00
	nop                                              ; $71d7: $00
	xor  d                                           ; $71d8: $aa
	add  d                                           ; $71d9: $82
	nop                                              ; $71da: $00
	add  c                                           ; $71db: $81
	xor  d                                           ; $71dc: $aa
	add  [hl]                                        ; $71dd: $86
	nop                                              ; $71de: $00
	inc  b                                           ; $71df: $04
	xor  d                                           ; $71e0: $aa
	nop                                              ; $71e1: $00
	ld   b, $01                                      ; $71e2: $06 $01
	xor  c                                           ; $71e4: $a9
	add  b                                           ; $71e5: $80
	add  c                                           ; $71e6: $81
	add  e                                           ; $71e7: $83
	ld   bc, $0605                                   ; $71e8: $01 $05 $06
	rrca                                             ; $71eb: $0f
	add  hl, bc                                      ; $71ec: $09
	nop                                              ; $71ed: $00
	xor  a                                           ; $71ee: $af
	nop                                              ; $71ef: $00
	add  c                                           ; $71f0: $81
	cp   a                                           ; $71f1: $bf
	add  c                                           ; $71f2: $81
	add  b                                           ; $71f3: $80
	ld   a, [bc]                                     ; $71f4: $0a
	and  b                                           ; $71f5: $a0
	cp   a                                           ; $71f6: $bf
	sbc  e                                           ; $71f7: $9b
	add  a                                           ; $71f8: $87
	inc  bc                                          ; $71f9: $03
	inc  a                                           ; $71fa: $3c
	call c, $df1f                                    ; $71fb: $dc $1f $df
	nop                                              ; $71fe: $00
	ldh  [$80], a                                    ; $71ff: $e0 $80
	nop                                              ; $7201: $00
	add  b                                           ; $7202: $80
	rst  $38                                         ; $7203: $ff
	add  b                                           ; $7204: $80
	nop                                              ; $7205: $00
	dec  b                                           ; $7206: $05
	rst  $38                                         ; $7207: $ff
	adc  h                                           ; $7208: $8c
	rst  $38                                         ; $7209: $ff
	call z, $3070                                    ; $720a: $cc $70 $30
	add  b                                           ; $720d: $80
	rst  $38                                         ; $720e: $ff
	add  d                                           ; $720f: $82
	nop                                              ; $7210: $00
	add  b                                           ; $7211: $80
	rst  $38                                         ; $7212: $ff
	add  b                                           ; $7213: $80
	nop                                              ; $7214: $00
	ld   [bc], a                                     ; $7215: $02
	rst  $38                                         ; $7216: $ff
	nop                                              ; $7217: $00
	rst  $38                                         ; $7218: $ff
	add  b                                           ; $7219: $80
	stop                                             ; $721a: $10 $00
	nop                                              ; $721c: $00
	add  b                                           ; $721d: $80
	rst  $38                                         ; $721e: $ff
	add  c                                           ; $721f: $81
	nop                                              ; $7220: $00
	rlca                                             ; $7221: $07
	rra                                              ; $7222: $1f
	ldh  [rIE], a                                    ; $7223: $e0 $ff
	nop                                              ; $7225: $00
	ld   a, a                                        ; $7226: $7f
	add  b                                           ; $7227: $80
	nop                                              ; $7228: $00
	rst  $38                                         ; $7229: $ff
	add  c                                           ; $722a: $81
	nop                                              ; $722b: $00
	add  b                                           ; $722c: $80
	rst  $38                                         ; $722d: $ff
	rlca                                             ; $722e: $07
	nop                                              ; $722f: $00
	dec  bc                                          ; $7230: $0b
	inc  c                                           ; $7231: $0c
	call $cc0d                                       ; $7232: $cd $0d $cc
	dec  c                                           ; $7235: $0d
	call z, $0d80                                    ; $7236: $cc $80 $0d
	ld   [$31cd], sp                                 ; $7239: $08 $cd $31
	add  hl, sp                                      ; $723c: $39
	rrca                                             ; $723d: $0f
	pop  bc                                          ; $723e: $c1
	cp   [hl]                                        ; $723f: $be
	nop                                              ; $7240: $00
	add  b                                           ; $7241: $80
	nop                                              ; $7242: $00
	add  b                                           ; $7243: $80
	ld   d, l                                        ; $7244: $55
	ld   b, $00                                      ; $7245: $06 $00
	ld   d, l                                        ; $7247: $55
	ld   bc, $5155                                   ; $7248: $01 $55 $51
	ld   d, l                                        ; $724b: $55
	dec  b                                           ; $724c: $05
	add  d                                           ; $724d: $82
	ld   d, l                                        ; $724e: $55
	add  c                                           ; $724f: $81
	nop                                              ; $7250: $00
	nop                                              ; $7251: $00
	ld   d, l                                        ; $7252: $55
	add  b                                           ; $7253: $80
	ld   bc, $0087                                   ; $7254: $01 $87 $00
	nop                                              ; $7257: $00
	ld   d, l                                        ; $7258: $55
	add  b                                           ; $7259: $80
	nop                                              ; $725a: $00
	nop                                              ; $725b: $00
	ld   [$4880], sp                                 ; $725c: $08 $80 $48
	nop                                              ; $725f: $00
	ld   c, l                                        ; $7260: $4d
	add  b                                           ; $7261: $80
	dec  c                                           ; $7262: $0d
	add  l                                           ; $7263: $85
	ld   [$4d01], sp                                 ; $7264: $08 $01 $4d
	ld   [$0209], sp                                 ; $7267: $08 $09 $02
	add  [hl]                                        ; $726a: $86
	nop                                              ; $726b: $00
	add  [hl]                                        ; $726c: $86
	rrca                                             ; $726d: $0f
	add  [hl]                                        ; $726e: $86
	nop                                              ; $726f: $00
	nop                                              ; $7270: $00
	rst  $38                                         ; $7271: $ff
	add  b                                           ; $7272: $80
	cp   $05                                         ; $7273: $fe $05
	db   $fd                                         ; $7275: $fd
	db   $fc                                         ; $7276: $fc
	di                                               ; $7277: $f3
	ldh  a, [$ef]                                    ; $7278: $f0 $ef
	ld   [de], a                                     ; $727a: $12
	add  l                                           ; $727b: $85
	nop                                              ; $727c: $00
	ld   [$7fff], sp                                 ; $727d: $08 $ff $7f
	cpl                                              ; $7280: $2f
	sbc  $06                                         ; $7281: $de $06
	cp   c                                           ; $7283: $b9
	ld   sp, $8877                                   ; $7284: $31 $77 $88
	add  l                                           ; $7287: $85
	nop                                              ; $7288: $00
	nop                                              ; $7289: $00
	rst  $38                                         ; $728a: $ff
	add  b                                           ; $728b: $80
	ccf                                              ; $728c: $3f
	add  c                                           ; $728d: $81
	rst  $38                                         ; $728e: $ff
	ld   [bc], a                                     ; $728f: $02
	cp   $ff                                         ; $7290: $fe $ff
	ld   bc, $0085                                   ; $7292: $01 $85 $00
	ld   [$f0cf], sp                                 ; $7295: $08 $cf $f0
	and  b                                           ; $7298: $a0
	ldh  [rLCDC], a                                  ; $7299: $e0 $40
	jp   $0f01                                       ; $729b: $c3 $01 $0f


	ldh  a, [c]                                      ; $729e: $f2
	add  l                                           ; $729f: $85
	nop                                              ; $72a0: $00
	ld   [$3ef7], sp                                 ; $72a1: $08 $f7 $3e
	ld   [de], a                                     ; $72a4: $12

jr_072_72a5:
	cp   $45                                         ; $72a5: $fe $45
	rst  $38                                         ; $72a7: $ff
	inc  b                                           ; $72a8: $04
	or   $6d                                         ; $72a9: $f6 $6d
	add  l                                           ; $72ab: $85
	nop                                              ; $72ac: $00
	ld   [$f51f], sp                                 ; $72ad: $08 $1f $f5
	inc  b                                           ; $72b0: $04
	rst  JumpTable                                         ; $72b1: $df
	ret  z                                           ; $72b2: $c8

	rra                                              ; $72b3: $1f
	ld   bc, $987f                                   ; $72b4: $01 $7f $98
	add  l                                           ; $72b7: $85
	nop                                              ; $72b8: $00
	ld   [$ffc7], sp                                 ; $72b9: $08 $c7 $ff
	daa                                              ; $72bc: $27
	rst  $38                                         ; $72bd: $ff
	ccf                                              ; $72be: $3f
	cp   $df                                         ; $72bf: $fe $df
	pop  bc                                          ; $72c1: $c1
	ccf                                              ; $72c2: $3f
	add  l                                           ; $72c3: $85
	nop                                              ; $72c4: $00
	ld   [$ffbe], sp                                 ; $72c5: $08 $be $ff
	cp   $f8                                         ; $72c8: $fe $f8
	cp   h                                           ; $72ca: $bc
	inc  b                                           ; $72cb: $04
	call nz, $e4df                                   ; $72cc: $c4 $df $e4
	add  l                                           ; $72cf: $85
	nop                                              ; $72d0: $00
	add  c                                           ; $72d1: $81
	rst  $38                                         ; $72d2: $ff
	dec  b                                           ; $72d3: $05
	nop                                              ; $72d4: $00
	xor  l                                           ; $72d5: $ad
	cp   a                                           ; $72d6: $bf
	add  b                                           ; $72d7: $80
	rst  $38                                         ; $72d8: $ff
	sub  d                                           ; $72d9: $92
	add  l                                           ; $72da: $85
	nop                                              ; $72db: $00
	ld   [$ff7f], sp                                 ; $72dc: $08 $7f $ff
	ld   a, a                                        ; $72df: $7f
	nop                                              ; $72e0: $00
	or   l                                           ; $72e1: $b5
	db   $fd                                         ; $72e2: $fd
	ld   bc, $49ff                                   ; $72e3: $01 $ff $49
	add  l                                           ; $72e6: $85
	nop                                              ; $72e7: $00
	ld   [$ff7d], sp                                 ; $72e8: $08 $7d $ff
	ld   a, a                                        ; $72eb: $7f
	rra                                              ; $72ec: $1f
	dec  a                                           ; $72ed: $3d
	jr   nz, jr_072_72f1                             ; $72ee: $20 $01

	db   $db                                         ; $72f0: $db

jr_072_72f1:
	dec  h                                           ; $72f1: $25
	add  l                                           ; $72f2: $85
	nop                                              ; $72f3: $00
	ld   [$ffe3], sp                                 ; $72f4: $08 $e3 $ff
	db   $e4                                         ; $72f7: $e4
	rst  $38                                         ; $72f8: $ff
	db   $fc                                         ; $72f9: $fc
	ld   a, a                                        ; $72fa: $7f
	ld   a, e                                        ; $72fb: $7b
	inc  bc                                          ; $72fc: $03
	db   $fc                                         ; $72fd: $fc
	add  l                                           ; $72fe: $85
	nop                                              ; $72ff: $00
	ld   [$bfe8], sp                                 ; $7300: $08 $e8 $bf
	inc  h                                           ; $7303: $24
	rst  $38                                         ; $7304: $ff
	inc  d                                           ; $7305: $14
	rst  $38                                         ; $7306: $ff
	add  c                                           ; $7307: $81
	rst  $38                                         ; $7308: $ff
	add  hl, de                                      ; $7309: $19
	add  l                                           ; $730a: $85
	nop                                              ; $730b: $00
	add  hl, bc                                      ; $730c: $09
	rst  $28                                         ; $730d: $ef
	ld   a, h                                        ; $730e: $7c
	ld   c, b                                        ; $730f: $48
	ld   a, a                                        ; $7310: $7f
	and  d                                           ; $7311: $a2
	rst  $38                                         ; $7312: $ff
	nop                                              ; $7313: $00
	ld   e, a                                        ; $7314: $5f
	ld   d, c                                        ; $7315: $51
	ld   [$0080], sp                                 ; $7316: $08 $80 $00
	ld   [bc], a                                     ; $7319: $02
	dec  bc                                          ; $731a: $0b
	rst  $38                                         ; $731b: $ff
	db   $f4                                         ; $731c: $f4
	add  c                                           ; $731d: $81
	nop                                              ; $731e: $00
	inc  bc                                          ; $731f: $03
	ldh  [$e3], a                                    ; $7320: $e0 $e3
	inc  hl                                          ; $7322: $23
	jr   nz, jr_072_72a5                             ; $7323: $20 $80

	nop                                              ; $7325: $00
	nop                                              ; $7326: $00
	ldh  a, [$81]                                    ; $7327: $f0 $81
	rrca                                             ; $7329: $0f
	ld   [$0f0b], sp                                 ; $732a: $08 $0b $0f
	inc  bc                                          ; $732d: $03
	ld   c, $02                                      ; $732e: $0e $02
	dec  c                                           ; $7330: $0d
	dec  b                                           ; $7331: $05
	dec  c                                           ; $7332: $0d
	ld   [$0b81], sp                                 ; $7333: $08 $81 $0b
	dec  l                                           ; $7336: $2d
	rst  $38                                         ; $7337: $ff
	rst  JumpTable                                         ; $7338: $df
	jp   nz, $8abb                                   ; $7339: $c2 $bb $8a

	ld   a, e                                        ; $733c: $7b
	ld   a, [de]                                     ; $733d: $1a
	rst  $20                                         ; $733e: $e7
	cpl                                              ; $733f: $2f
	sbc  $d2                                         ; $7340: $de $d2
	sbc  $4a                                         ; $7342: $de $4a
	cp   l                                           ; $7344: $bd
	add  c                                           ; $7345: $81
	cp   l                                           ; $7346: $bd
	pop  de                                          ; $7347: $d1
	rst  $28                                         ; $7348: $ef
	xor  a                                           ; $7349: $af
	rst  JumpTable                                         ; $734a: $df
	ld   e, a                                        ; $734b: $5f
	cp   a                                           ; $734c: $bf
	ccf                                              ; $734d: $3f
	ld   a, a                                        ; $734e: $7f
	ld   a, [hl+]                                    ; $734f: $2a
	rst  $38                                         ; $7350: $ff
	add  b                                           ; $7351: $80
	rst  $38                                         ; $7352: $ff
	add  b                                           ; $7353: $80
	rst  $38                                         ; $7354: $ff
	ld   d, l                                        ; $7355: $55
	rst  $38                                         ; $7356: $ff
	ld   b, $fe                                      ; $7357: $06 $fe
	db   $f4                                         ; $7359: $f4
	db   $fc                                         ; $735a: $fc
	add  sp, -$08                                    ; $735b: $e8 $f8
	ret  nc                                          ; $735d: $d0

	ldh  a, [hScriptOpcodeParams]                                    ; $735e: $f0 $a0
	pop  hl                                          ; $7360: $e1
	pop  bc                                          ; $7361: $c1
	jp   nz, $c542                                   ; $7362: $c2 $42 $c5

	add  b                                           ; $7365: $80
	add  l                                           ; $7366: $85
	jr   jr_072_7371                                 ; $7367: $18 $08

	rra                                              ; $7369: $1f
	nop                                              ; $736a: $00
	ccf                                              ; $736b: $3f
	dec  bc                                          ; $736c: $0b
	halt                                             ; $736d: $76
	ld   e, h                                        ; $736e: $5c
	xor  a                                           ; $736f: $af
	and  e                                           ; $7370: $a3

jr_072_7371:
	ld   d, [hl]                                     ; $7371: $56
	halt                                             ; $7372: $76
	or   a                                           ; $7373: $b7
	sub  a                                           ; $7374: $97
	ld   b, b                                        ; $7375: $40
	ld   b, h                                        ; $7376: $44
	ld   d, l                                        ; $7377: $55
	sub  c                                           ; $7378: $91
	ei                                               ; $7379: $fb
	ld   a, [hl-]                                    ; $737a: $3a
	sub  e                                           ; $737b: $93
	sub  d                                           ; $737c: $92
	dec  h                                           ; $737d: $25
	inc  h                                           ; $737e: $24
	xor  e                                           ; $737f: $ab
	xor  d                                           ; $7380: $aa
	add  b                                           ; $7381: $80
	sub  a                                           ; $7382: $97
	add  b                                           ; $7383: $80
	ld   l, $7f                                      ; $7384: $2e $7f
	ld   e, h                                        ; $7386: $5c
	ld   b, l                                        ; $7387: $45
	reti                                             ; $7388: $d9


	xor  b                                           ; $7389: $a8
	rst  $38                                         ; $738a: $ff
	rla                                              ; $738b: $17
	ld   hl, sp+$7b                                  ; $738c: $f8 $7b
	db   $e3                                         ; $738e: $e3
	push hl                                          ; $738f: $e5
	push bc                                          ; $7390: $c5
	ret  c                                           ; $7391: $d8

	dec  de                                          ; $7392: $1b
	ld   [hl+], a                                    ; $7393: $22

jr_072_7394:
	dec  h                                           ; $7394: $25
	call nc, $2adb                                   ; $7395: $d4 $db $2a
	dec  h                                           ; $7398: $25
	ld   l, $2b                                      ; $7399: $2e $2b
	adc  b                                           ; $739b: $88
	sbc  a                                           ; $739c: $9f
	nop                                              ; $739d: $00
	ld   a, a                                        ; $739e: $7f
	nop                                              ; $739f: $00
	rst  $38                                         ; $73a0: $ff
	nop                                              ; $73a1: $00
	rst  $38                                         ; $73a2: $ff
	nop                                              ; $73a3: $00
	rst  $38                                         ; $73a4: $ff
	nop                                              ; $73a5: $00
	rst  $38                                         ; $73a6: $ff
	nop                                              ; $73a7: $00
	rst  $38                                         ; $73a8: $ff
	ld   c, l                                        ; $73a9: $4d
	rst  $38                                         ; $73aa: $ff
	nop                                              ; $73ab: $00
	rst  $38                                         ; $73ac: $ff
	nop                                              ; $73ad: $00
	rst  $38                                         ; $73ae: $ff
	jr   nz, @+$01                                   ; $73af: $20 $ff

	jr   nz, @+$01                                   ; $73b1: $20 $ff

	nop                                              ; $73b3: $00
	rst  $38                                         ; $73b4: $ff
	nop                                              ; $73b5: $00
	rst  $38                                         ; $73b6: $ff
	nop                                              ; $73b7: $00
	rst  $38                                         ; $73b8: $ff
	or   d                                           ; $73b9: $b2
	db   $fd                                         ; $73ba: $fd
	inc  b                                           ; $73bb: $04
	db   $fc                                         ; $73bc: $fc
	inc  c                                           ; $73bd: $0c
	db   $fc                                         ; $73be: $fc
	ld   e, $c3                                      ; $73bf: $1e $c3
	dec  h                                           ; $73c1: $25
	db   $fd                                         ; $73c2: $fd
	ld   de, $34d8                                   ; $73c3: $11 $d8 $34
	rst  $20                                         ; $73c6: $e7
	rlca                                             ; $73c7: $07
	sbc  h                                           ; $73c8: $9c
	adc  [hl]                                        ; $73c9: $8e
	rst  JumpTable                                         ; $73ca: $df
	ld   b, b                                        ; $73cb: $40
	ld   e, a                                        ; $73cc: $5f
	ld   d, b                                        ; $73cd: $50
	ld   l, a                                        ; $73ce: $6f
	jr   z, jr_072_7394                              ; $73cf: $28 $c3

	xor  h                                           ; $73d1: $ac
	cp   a                                           ; $73d2: $bf
	sub  b                                           ; $73d3: $90
	dec  de                                          ; $73d4: $1b
	inc  a                                           ; $73d5: $3c
	rst  $20                                         ; $73d6: $e7
	ldh  [$39], a                                    ; $73d7: $e0 $39
	jp   $00ff                                       ; $73d9: $c3 $ff $00


	rst  $38                                         ; $73dc: $ff
	nop                                              ; $73dd: $00
	rst  $38                                         ; $73de: $ff
	nop                                              ; $73df: $00
	rst  $38                                         ; $73e0: $ff
	nop                                              ; $73e1: $00
	rst  $38                                         ; $73e2: $ff
	nop                                              ; $73e3: $00
	rst  $38                                         ; $73e4: $ff
	nop                                              ; $73e5: $00
	rst  $38                                         ; $73e6: $ff
	nop                                              ; $73e7: $00
	rst  $38                                         ; $73e8: $ff
	adc  a                                           ; $73e9: $8f
	call nc, $f911                                   ; $73ea: $d4 $11 $f9
	nop                                              ; $73ed: $00
	cp   $00                                         ; $73ee: $fe $00
	rst  $38                                         ; $73f0: $ff
	nop                                              ; $73f1: $00
	rst  $38                                         ; $73f2: $ff
	nop                                              ; $73f3: $00
	rst  $38                                         ; $73f4: $ff
	nop                                              ; $73f5: $00
	rst  $38                                         ; $73f6: $ff
	nop                                              ; $73f7: $00
	rst  $38                                         ; $73f8: $ff
	ld   a, a                                        ; $73f9: $7f
	rst  $38                                         ; $73fa: $ff
	add  sp, $1f                                     ; $73fb: $e8 $1f
	sbc  [hl]                                        ; $73fd: $9e
	add  a                                           ; $73fe: $87
	and  a                                           ; $73ff: $a7
	and  e                                           ; $7400: $a3
	dec  de                                          ; $7401: $1b
	ret  c                                           ; $7402: $d8

	inc  b                                           ; $7403: $04
	db   $e4                                         ; $7404: $e4
	dec  sp                                          ; $7405: $3b
	inc  d                                           ; $7406: $14
	db   $db                                         ; $7407: $db
	ld   b, h                                        ; $7408: $44
	and  h                                           ; $7409: $a4
	inc  hl                                          ; $740a: $23
	rst  JumpTable                                         ; $740b: $df
	ld   a, b                                        ; $740c: $78
	db   $ed                                         ; $740d: $ed
	add  hl, de                                      ; $740e: $19
	db   $f4                                         ; $740f: $f4
	inc  b                                           ; $7410: $04
	push af                                          ; $7411: $f5
	ld   b, c                                        ; $7412: $41
	db   $fd                                         ; $7413: $fd
	db   $e3                                         ; $7414: $e3
	ld   a, [hl]                                     ; $7415: $7e
	ld   [hl], c                                     ; $7416: $71
	ccf                                              ; $7417: $3f
	and  [hl]                                        ; $7418: $a6
	sbc  a                                           ; $7419: $9f
	ld   [bc], a                                     ; $741a: $02
	ld   bc, $0080                                   ; $741b: $01 $80 $00
	inc  bc                                          ; $741e: $03
	ret  nz                                          ; $741f: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7420: $cf
	ld   c, a                                        ; $7421: $4f
	ld   b, b                                        ; $7422: $40
	add  b                                           ; $7423: $80
	nop                                              ; $7424: $00
	ld   [bc], a                                     ; $7425: $02
	rrca                                             ; $7426: $0f
	rst  $38                                         ; $7427: $ff
	ldh  a, [$81]                                    ; $7428: $f0 $81
	nop                                              ; $742a: $00
	nop                                              ; $742b: $00
	ldh  a, [$80]                                    ; $742c: $f0 $80
	rrca                                             ; $742e: $0f
	add  b                                           ; $742f: $80
	ld   [bc], a                                     ; $7430: $02
	add  b                                           ; $7431: $80
	rrca                                             ; $7432: $0f
	add  b                                           ; $7433: $80
	ld   [bc], a                                     ; $7434: $02
	ld   bc, $030b                                   ; $7435: $01 $0b $03
	add  c                                           ; $7438: $81
	ld   a, [bc]                                     ; $7439: $0a
	ld   [bc], a                                     ; $743a: $02
	ld   [bc], a                                     ; $743b: $02
	ld   a, [bc]                                     ; $743c: $0a
	ld   a, [$ff80]                                  ; $743d: $fa $80 $ff
	add  b                                           ; $7440: $80
	inc  bc                                          ; $7441: $03
	add  b                                           ; $7442: $80
	cp   $80                                         ; $7443: $fe $80
	inc  bc                                          ; $7445: $03
	add  b                                           ; $7446: $80
	ld   a, [$fb07]                                  ; $7447: $fa $07 $fb
	ld   a, [$fa8b]                                  ; $744a: $fa $8b $fa
	ei                                               ; $744d: $fb
	ld   [hl], h                                     ; $744e: $74
	rst  $38                                         ; $744f: $ff
	nop                                              ; $7450: $00
	add  b                                           ; $7451: $80
	rst  $38                                         ; $7452: $ff
	add  b                                           ; $7453: $80
	nop                                              ; $7454: $00
	add  b                                           ; $7455: $80
	rst  $38                                         ; $7456: $ff
	add  hl, bc                                      ; $7457: $09
	nop                                              ; $7458: $00
	inc  h                                           ; $7459: $24
	rst  $38                                         ; $745a: $ff
	inc  h                                           ; $745b: $24
	rst  $38                                         ; $745c: $ff
	sub  d                                           ; $745d: $92
	rst  $38                                         ; $745e: $ff
	db   $ed                                         ; $745f: $ed
	adc  d                                           ; $7460: $8a
	ld   a, [bc]                                     ; $7461: $0a
	add  b                                           ; $7462: $80
	adc  d                                           ; $7463: $8a
	rrca                                             ; $7464: $0f
	dec  bc                                          ; $7465: $0b
	inc  bc                                          ; $7466: $03
	adc  b                                           ; $7467: $88
	add  h                                           ; $7468: $84
	dec  e                                           ; $7469: $1d
	sbc  c                                           ; $746a: $99
	add  b                                           ; $746b: $80
	add  d                                           ; $746c: $82
	adc  a                                           ; $746d: $8f
	adc  d                                           ; $746e: $8a
	adc  a                                           ; $746f: $8f
	adc  b                                           ; $7470: $88
	db   $ec                                         ; $7471: $ec
	db   $fd                                         ; $7472: $fd
	sub  c                                           ; $7473: $91
	nop                                              ; $7474: $00
	add  b                                           ; $7475: $80
	rst  $38                                         ; $7476: $ff
	add  b                                           ; $7477: $80
	nop                                              ; $7478: $00
	add  b                                           ; $7479: $80
	rst  $38                                         ; $747a: $ff
	inc  e                                           ; $747b: $1c
	nop                                              ; $747c: $00
	ld   c, c                                        ; $747d: $49
	rst  $38                                         ; $747e: $ff
	ld   c, c                                        ; $747f: $49
	rst  $38                                         ; $7480: $ff
	ld   [$bcbf], sp                                 ; $7481: $08 $bf $bc
	cp   a                                           ; $7484: $bf
	cp   h                                           ; $7485: $bc
	cp   a                                           ; $7486: $bf
	adc  b                                           ; $7487: $88
	ccf                                              ; $7488: $3f
	ld   b, b                                        ; $7489: $40
	ret  nz                                          ; $748a: $c0

	jp   nz, Jump_072_4972                           ; $748b: $c2 $72 $49

	ld   sp, hl                                      ; $748e: $f9
	ld   h, e                                        ; $748f: $63
	di                                               ; $7490: $f3
	db   $10                                         ; $7491: $10
	rst  $38                                         ; $7492: $ff
	nop                                              ; $7493: $00
	rst  $38                                         ; $7494: $ff
	nop                                              ; $7495: $00
	rst  $38                                         ; $7496: $ff
	nop                                              ; $7497: $00
	rst  $38                                         ; $7498: $ff
	add  b                                           ; $7499: $80
	nop                                              ; $749a: $00
	add  b                                           ; $749b: $80
	xor  d                                           ; $749c: $aa
	add  b                                           ; $749d: $80
	ld   d, l                                        ; $749e: $55
	add  b                                           ; $749f: $80
	ld   a, [$0007]                                  ; $74a0: $fa $07 $00
	rst  $38                                         ; $74a3: $ff
	nop                                              ; $74a4: $00
	rst  $38                                         ; $74a5: $ff
	nop                                              ; $74a6: $00
	rst  $38                                         ; $74a7: $ff
	nop                                              ; $74a8: $00
	rst  $38                                         ; $74a9: $ff
	add  b                                           ; $74aa: $80
	nop                                              ; $74ab: $00
	add  b                                           ; $74ac: $80
	add  b                                           ; $74ad: $80
	add  b                                           ; $74ae: $80
	ld   a, [hl+]                                    ; $74af: $2a
	add  b                                           ; $74b0: $80
	sub  l                                           ; $74b1: $95
	rlca                                             ; $74b2: $07
	nop                                              ; $74b3: $00
	rst  $38                                         ; $74b4: $ff
	nop                                              ; $74b5: $00
	rst  $38                                         ; $74b6: $ff
	nop                                              ; $74b7: $00
	rst  $38                                         ; $74b8: $ff
	nop                                              ; $74b9: $00
	rst  $38                                         ; $74ba: $ff
	add  b                                           ; $74bb: $80
	nop                                              ; $74bc: $00
	add  b                                           ; $74bd: $80
	ld   [bc], a                                     ; $74be: $02
	add  b                                           ; $74bf: $80
	add  e                                           ; $74c0: $83
	add  b                                           ; $74c1: $80
	ld   b, c                                        ; $74c2: $41
	add  hl, bc                                      ; $74c3: $09
	dec  bc                                          ; $74c4: $0b
	rst  $38                                         ; $74c5: $ff
	ld   [hl], $fb                                   ; $74c6: $36 $fb
	dec  sp                                          ; $74c8: $3b
	and  $2b                                         ; $74c9: $e6 $2b
	rst  $38                                         ; $74cb: $ff
	jr   nc, jr_072_74ce                             ; $74cc: $30 $00

jr_072_74ce:
	add  b                                           ; $74ce: $80
	ld   d, b                                        ; $74cf: $50
	add  b                                           ; $74d0: $80
	xor  l                                           ; $74d1: $ad
	add  b                                           ; $74d2: $80
	rst  $38                                         ; $74d3: $ff
	add  hl, bc                                      ; $74d4: $09
	ret  nc                                          ; $74d5: $d0

	rst  $38                                         ; $74d6: $ff
	ld   l, h                                        ; $74d7: $6c
	rst  JumpTable                                         ; $74d8: $df
	call c, $d467                                    ; $74d9: $dc $67 $d4
	rst  $38                                         ; $74dc: $ff
	inc  c                                           ; $74dd: $0c
	nop                                              ; $74de: $00
	add  b                                           ; $74df: $80
	ld   a, [bc]                                     ; $74e0: $0a
	add  b                                           ; $74e1: $80
	or   h                                           ; $74e2: $b4
	add  b                                           ; $74e3: $80
	db   $fd                                         ; $74e4: $fd
	rlca                                             ; $74e5: $07
	nop                                              ; $74e6: $00
	rst  $38                                         ; $74e7: $ff
	nop                                              ; $74e8: $00
	rst  $38                                         ; $74e9: $ff
	nop                                              ; $74ea: $00
	rst  $38                                         ; $74eb: $ff
	nop                                              ; $74ec: $00
	rst  $38                                         ; $74ed: $ff
	add  b                                           ; $74ee: $80
	nop                                              ; $74ef: $00
	add  b                                           ; $74f0: $80
	ld   b, b                                        ; $74f1: $40
	add  b                                           ; $74f2: $80
	pop  bc                                          ; $74f3: $c1
	add  b                                           ; $74f4: $80
	add  d                                           ; $74f5: $82
	rlca                                             ; $74f6: $07
	nop                                              ; $74f7: $00
	rst  $38                                         ; $74f8: $ff
	nop                                              ; $74f9: $00
	rst  $38                                         ; $74fa: $ff
	nop                                              ; $74fb: $00
	rst  $38                                         ; $74fc: $ff
	nop                                              ; $74fd: $00
	rst  $38                                         ; $74fe: $ff
	add  b                                           ; $74ff: $80
	nop                                              ; $7500: $00
	add  b                                           ; $7501: $80
	ld   bc, $5480                                   ; $7502: $01 $80 $54
	add  b                                           ; $7505: $80
	xor  c                                           ; $7506: $a9
	rlca                                             ; $7507: $07
	nop                                              ; $7508: $00
	rst  $38                                         ; $7509: $ff
	nop                                              ; $750a: $00
	rst  $38                                         ; $750b: $ff
	nop                                              ; $750c: $00
	rst  $38                                         ; $750d: $ff
	nop                                              ; $750e: $00
	rst  $38                                         ; $750f: $ff
	add  b                                           ; $7510: $80
	nop                                              ; $7511: $00
	add  b                                           ; $7512: $80
	ld   d, l                                        ; $7513: $55
	add  b                                           ; $7514: $80
	xor  d                                           ; $7515: $aa
	add  b                                           ; $7516: $80
	ld   e, a                                        ; $7517: $5f
	db   $10                                         ; $7518: $10
	ld   [de], a                                     ; $7519: $12
	rst  $38                                         ; $751a: $ff
	ccf                                              ; $751b: $3f
	rst  $38                                         ; $751c: $ff
	ccf                                              ; $751d: $3f
	rst  $38                                         ; $751e: $ff
	ld   [de], a                                     ; $751f: $12
	rst  $38                                         ; $7520: $ff
	ld   [bc], a                                     ; $7521: $02
	inc  bc                                          ; $7522: $03
	ld   b, e                                        ; $7523: $43
	ld   c, [hl]                                     ; $7524: $4e
	sub  d                                           ; $7525: $92
	sbc  a                                           ; $7526: $9f
	add  $cf                                         ; $7527: $c6 $cf
	ld   [$0081], sp                                 ; $7529: $08 $81 $00
	ld   [bc], a                                     ; $752c: $02
	ccf                                              ; $752d: $3f
	rst  $38                                         ; $752e: $ff
	pop  bc                                          ; $752f: $c1
	add  c                                           ; $7530: $81
	ld   bc, $e180                                   ; $7531: $01 $80 $e1
	add  d                                           ; $7534: $82
	inc  h                                           ; $7535: $24
	nop                                              ; $7536: $00
	ldh  a, [$89]                                    ; $7537: $f0 $89
	ld   a, [bc]                                     ; $7539: $0a
	add  b                                           ; $753a: $80
	dec  bc                                          ; $753b: $0b
	add  b                                           ; $753c: $80
	rrca                                             ; $753d: $0f
	ld   d, b                                        ; $753e: $50
	db   $eb                                         ; $753f: $eb
	db   $db                                         ; $7540: $db
	sbc  d                                           ; $7541: $9a
	ei                                               ; $7542: $fb
	ld   a, [$bafb]                                  ; $7543: $fa $fb $ba
	ei                                               ; $7546: $fb
	cp   e                                           ; $7547: $bb
	ei                                               ; $7548: $fb
	sbc  e                                           ; $7549: $9b
	ei                                               ; $754a: $fb
	db   $db                                         ; $754b: $db
	ei                                               ; $754c: $fb
	rst  $28                                         ; $754d: $ef
	rst  $38                                         ; $754e: $ff
	inc  b                                           ; $754f: $04
	rst  $38                                         ; $7550: $ff
	inc  h                                           ; $7551: $24
	rst  $38                                         ; $7552: $ff
	add  h                                           ; $7553: $84
	rst  $38                                         ; $7554: $ff
	ld   [hl-], a                                    ; $7555: $32
	rst  $38                                         ; $7556: $ff
	ld   b, h                                        ; $7557: $44
	rst  $38                                         ; $7558: $ff
	jp   nc, $f9ff                                   ; $7559: $d2 $ff $f9

	rst  $38                                         ; $755c: $ff
	db   $fd                                         ; $755d: $fd
	rst  $38                                         ; $755e: $ff
	ld   a, e                                        ; $755f: $7b
	adc  a                                           ; $7560: $8f
	adc  h                                           ; $7561: $8c
	adc  a                                           ; $7562: $8f
	adc  d                                           ; $7563: $8a
	adc  a                                           ; $7564: $8f
	ret  z                                           ; $7565: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7566: $cf
	jp   z, Jump_072_4dcf                            ; $7567: $ca $cf $4d

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $756a: $cf
	ld   c, l                                        ; $756b: $4d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $756c: $cf
	ld   c, a                                        ; $756d: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $756e: $cf
	dec  e                                           ; $756f: $1d
	rst  $38                                         ; $7570: $ff
	sub  d                                           ; $7571: $92
	rst  $38                                         ; $7572: $ff
	ld   c, c                                        ; $7573: $49
	rst  $38                                         ; $7574: $ff
	ld   c, c                                        ; $7575: $49
	rst  $38                                         ; $7576: $ff
	ld   [de], a                                     ; $7577: $12
	rst  $38                                         ; $7578: $ff
	ld   [bc], a                                     ; $7579: $02
	rst  $38                                         ; $757a: $ff
	ld   b, c                                        ; $757b: $41
	rst  $38                                         ; $757c: $ff
	xor  e                                           ; $757d: $ab
	rst  $38                                         ; $757e: $ff
	sbc  e                                           ; $757f: $9b
	pop  af                                          ; $7580: $f1
	ld   [hl], e                                     ; $7581: $73
	di                                               ; $7582: $f3
	inc  sp                                          ; $7583: $33
	di                                               ; $7584: $f3
	inc  sp                                          ; $7585: $33
	di                                               ; $7586: $f3
	ld   [hl], e                                     ; $7587: $73
	di                                               ; $7588: $f3
	ld   [hl], e                                     ; $7589: $73
	di                                               ; $758a: $f3
	inc  sp                                          ; $758b: $33
	di                                               ; $758c: $f3
	inc  sp                                          ; $758d: $33
	di                                               ; $758e: $f3
	db   $10                                         ; $758f: $10
	add  [hl]                                        ; $7590: $86
	sbc  $86                                         ; $7591: $de $86
	cp   [hl]                                        ; $7593: $be
	add  b                                           ; $7594: $80
	sbc  $80                                         ; $7595: $de $80
	pop  hl                                          ; $7597: $e1
	add  b                                           ; $7598: $80
	rst  $38                                         ; $7599: $ff
	add  b                                           ; $759a: $80
	ld   a, [hl]                                     ; $759b: $7e
	add  b                                           ; $759c: $80
	ld   l, h                                        ; $759d: $6c
	add  b                                           ; $759e: $80
	ld   [hl], c                                     ; $759f: $71
	add  d                                           ; $75a0: $82
	cp   a                                           ; $75a1: $bf
	add  b                                           ; $75a2: $80
	adc  [hl]                                        ; $75a3: $8e
	add  b                                           ; $75a4: $80
	and  a                                           ; $75a5: $a7
	add  b                                           ; $75a6: $80
	daa                                              ; $75a7: $27
	add  b                                           ; $75a8: $80
	ld   h, e                                        ; $75a9: $63
	add  b                                           ; $75aa: $80
	db   $e3                                         ; $75ab: $e3
	add  b                                           ; $75ac: $80
	jp   hl                                          ; $75ad: $e9


	add  b                                           ; $75ae: $80
	jp   z, $e280                                    ; $75af: $ca $80 $e2

	add  b                                           ; $75b2: $80
	ld   a, a                                        ; $75b3: $7f
	add  b                                           ; $75b4: $80
	adc  a                                           ; $75b5: $8f
	add  b                                           ; $75b6: $80
	ldh  a, [$80]                                    ; $75b7: $f0 $80
	rst  $38                                         ; $75b9: $ff
	add  b                                           ; $75ba: $80
	sbc  a                                           ; $75bb: $9f
	add  b                                           ; $75bc: $80
	rst  $20                                         ; $75bd: $e7
	add  b                                           ; $75be: $80
	ld   hl, sp-$80                                  ; $75bf: $f8 $80
	ccf                                              ; $75c1: $3f
	add  b                                           ; $75c2: $80
	ei                                               ; $75c3: $fb
	add  b                                           ; $75c4: $80
	rst  ToBoot                                         ; $75c5: $c7
	add  b                                           ; $75c6: $80
	ld   a, $80                                      ; $75c7: $3e $80
	db   $fc                                         ; $75c9: $fc
	add  b                                           ; $75ca: $80
	di                                               ; $75cb: $f3
	add  b                                           ; $75cc: $80
	rst  ToBoot                                         ; $75cd: $c7
	add  b                                           ; $75ce: $80
	ld   a, $80                                      ; $75cf: $3e $80
	db   $fc                                         ; $75d1: $fc
	add  b                                           ; $75d2: $80
	adc  a                                           ; $75d3: $8f
	add  b                                           ; $75d4: $80
	dec  hl                                          ; $75d5: $2b
	add  b                                           ; $75d6: $80
	ld   l, l                                        ; $75d7: $6d
	add  b                                           ; $75d8: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75d9: $cf
	add  b                                           ; $75da: $80
	adc  a                                           ; $75db: $8f
	add  d                                           ; $75dc: $82
	daa                                              ; $75dd: $27
	add  b                                           ; $75de: $80
	adc  e                                           ; $75df: $8b
	add  b                                           ; $75e0: $80
	ld   sp, hl                                      ; $75e1: $f9
	add  b                                           ; $75e2: $80
	pop  af                                          ; $75e3: $f1
	add  b                                           ; $75e4: $80
	pop  hl                                          ; $75e5: $e1
	add  b                                           ; $75e6: $80
	add  hl, de                                      ; $75e7: $19
	add  b                                           ; $75e8: $80
	push af                                          ; $75e9: $f5
	add  b                                           ; $75ea: $80
	adc  l                                           ; $75eb: $8d
	add  b                                           ; $75ec: $80
	db   $fd                                         ; $75ed: $fd
	add  b                                           ; $75ee: $80
	ld   sp, hl                                      ; $75ef: $f9
	add  b                                           ; $75f0: $80
	rst  $38                                         ; $75f1: $ff
	adc  b                                           ; $75f2: $88
	cp   a                                           ; $75f3: $bf
	add  c                                           ; $75f4: $81
	rst  JumpTable                                         ; $75f5: $df
	ld   d, $59                                      ; $75f6: $16 $59

jr_072_75f8:
	adc  a                                           ; $75f8: $8f
	adc  $cf                                         ; $75f9: $ce $cf
	call z, $cccf                                    ; $75fb: $cc $cf $cc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75fe: $cf
	adc  $cf                                         ; $75ff: $ce $cf
	adc  $cf                                         ; $7601: $ce $cf
	call z, $cdcf                                    ; $7603: $cc $cf $cd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7606: $cf
	dec  e                                           ; $7607: $1d

jr_072_7608:
	dec  d                                           ; $7608: $15
	add  hl, de                                      ; $7609: $19
	inc  e                                           ; $760a: $1c
	inc  d                                           ; $760b: $14

jr_072_760c:
	inc  e                                           ; $760c: $1c
	ld   c, h                                        ; $760d: $4c
	add  b                                           ; $760e: $80
	ld   b, l                                        ; $760f: $45
	inc  bc                                          ; $7610: $03
	ld   b, h                                        ; $7611: $44
	add  h                                           ; $7612: $84
	ldh  [$60], a                                    ; $7613: $e0 $60
	add  b                                           ; $7615: $80
	rst  $20                                         ; $7616: $e7
	inc  bc                                          ; $7617: $03
	ld   h, b                                        ; $7618: $60
	sub  h                                           ; $7619: $94
	rrca                                             ; $761a: $0f
	add  hl, bc                                      ; $761b: $09
	add  e                                           ; $761c: $83
	rrca                                             ; $761d: $0f
	add  [hl]                                        ; $761e: $86
	dec  c                                           ; $761f: $0d
	db   $10                                         ; $7620: $10
	ld   a, c                                        ; $7621: $79
	rst  $38                                         ; $7622: $ff
	pop  af                                          ; $7623: $f1
	rst  $38                                         ; $7624: $ff
	rst  $28                                         ; $7625: $ef
	rst  $38                                         ; $7626: $ff
	ld   l, l                                        ; $7627: $6d
	ld   a, l                                        ; $7628: $7d
	ld   e, l                                        ; $7629: $5d
	ld   a, l                                        ; $762a: $7d
	ld   e, l                                        ; $762b: $5d
	ld   a, l                                        ; $762c: $7d
	ld   l, l                                        ; $762d: $6d
	ld   e, l                                        ; $762e: $5d
	ld   l, l                                        ; $762f: $6d
	ld   a, l                                        ; $7630: $7d
	ld   d, l                                        ; $7631: $55
	adc  [hl]                                        ; $7632: $8e
	rst  $38                                         ; $7633: $ff
	add  a                                           ; $7634: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7635: $cf
	ld   bc, $cfc7                                   ; $7636: $01 $c7 $cf
	add  d                                           ; $7639: $82
	rst  $28                                         ; $763a: $ef
	ld   [bc], a                                     ; $763b: $02
	push bc                                          ; $763c: $c5
	rst  $38                                         ; $763d: $ff
	db   $fd                                         ; $763e: $fd
	adc  e                                           ; $763f: $8b
	rst  $38                                         ; $7640: $ff
	inc  b                                           ; $7641: $04
	call c, $b3f3                                    ; $7642: $dc $f3 $b3
	di                                               ; $7645: $f3
	or   e                                           ; $7646: $b3
	add  e                                           ; $7647: $83
	di                                               ; $7648: $f3
	add  d                                           ; $7649: $82
	ldh  a, [c]                                      ; $764a: $f2
	add  b                                           ; $764b: $80
	ldh  a, [rP1]                                    ; $764c: $f0 $00
	ret  nc                                          ; $764e: $d0

	add  b                                           ; $764f: $80
	cp   [hl]                                        ; $7650: $be
	add  b                                           ; $7651: $80
	halt                                             ; $7652: $76
	add  d                                           ; $7653: $82
	ld   [hl], l                                     ; $7654: $75
	add  b                                           ; $7655: $80
	ld   l, h                                        ; $7656: $6c
	add  b                                           ; $7657: $80
	ld   [$da80], a                                  ; $7658: $ea $80 $da
	add  b                                           ; $765b: $80
	ret  nc                                          ; $765c: $d0

	add  b                                           ; $765d: $80
	rra                                              ; $765e: $1f
	add  b                                           ; $765f: $80
	ld   c, a                                        ; $7660: $4f
	add  b                                           ; $7661: $80
	ld   b, b                                        ; $7662: $40
	add  d                                           ; $7663: $82
	dec  d                                           ; $7664: $15
	add  c                                           ; $7665: $81
	nop                                              ; $7666: $00
	add  b                                           ; $7667: $80
	ld   [rRAMG], sp                                 ; $7668: $08 $00 $00
	add  b                                           ; $766b: $80
	and  b                                           ; $766c: $a0
	add  b                                           ; $766d: $80
	nop                                              ; $766e: $00
	nop                                              ; $766f: $00
	ld   b, b                                        ; $7670: $40
	add  b                                           ; $7671: $80
	ld   d, b                                        ; $7672: $50
	nop                                              ; $7673: $00
	ld   a, b                                        ; $7674: $78
	add  c                                           ; $7675: $81
	jr   c, jr_072_75f8                              ; $7676: $38 $80

	ld   a, d                                        ; $7678: $7a
	add  b                                           ; $7679: $80
	ld   a, b                                        ; $767a: $78
	nop                                              ; $767b: $00
	nop                                              ; $767c: $00
	add  b                                           ; $767d: $80
	adc  a                                           ; $767e: $8f
	add  b                                           ; $767f: $80
	and  b                                           ; $7680: $a0
	add  b                                           ; $7681: $80
	ld   a, [hl+]                                    ; $7682: $2a
	ld   [bc], a                                     ; $7683: $02
	ld   a, [bc]                                     ; $7684: $0a
	ld   a, [hl-]                                    ; $7685: $3a
	jr   nc, jr_072_7608                             ; $7686: $30 $80

	jr   c, jr_072_760c                              ; $7688: $38 $82

	ccf                                              ; $768a: $3f
	nop                                              ; $768b: $00
	nop                                              ; $768c: $00
	add  b                                           ; $768d: $80
	ldh  a, [c]                                      ; $768e: $f2
	add  b                                           ; $768f: $80
	ld   [bc], a                                     ; $7690: $02
	add  c                                           ; $7691: $81
	ld   c, b                                        ; $7692: $48
	ld   bc, $044c                                   ; $7693: $01 $4c $04
	add  b                                           ; $7696: $80
	ld   b, $82                                      ; $7697: $06 $82
	and  $00                                         ; $7699: $e6 $00
	nop                                              ; $769b: $00
	add  b                                           ; $769c: $80
	adc  c                                           ; $769d: $89
	add  d                                           ; $769e: $82
	ld   [bc], a                                     ; $769f: $02
	nop                                              ; $76a0: $00
	nop                                              ; $76a1: $00
	add  b                                           ; $76a2: $80
	db   $10                                         ; $76a3: $10
	add  b                                           ; $76a4: $80
	add  hl, de                                      ; $76a5: $19
	add  b                                           ; $76a6: $80
	sbc  c                                           ; $76a7: $99
	add  b                                           ; $76a8: $80
	ld   e, c                                        ; $76a9: $59
	nop                                              ; $76aa: $00
	nop                                              ; $76ab: $00
	add  b                                           ; $76ac: $80
	push af                                          ; $76ad: $f5
	add  b                                           ; $76ae: $80
	db   $e4                                         ; $76af: $e4
	add  b                                           ; $76b0: $80
	ld   [$aa80], sp                                 ; $76b1: $08 $80 $aa
	add  b                                           ; $76b4: $80
	and  d                                           ; $76b5: $a2
	ld   [bc], a                                     ; $76b6: $02
	nop                                              ; $76b7: $00
	ld   b, b                                        ; $76b8: $40
	ld   b, c                                        ; $76b9: $41
	add  b                                           ; $76ba: $80
	ld   [hl], c                                     ; $76bb: $71
	nop                                              ; $76bc: $00
	ld   bc, $df82                                   ; $76bd: $01 $82 $df
	add  h                                           ; $76c0: $84
	rst  $28                                         ; $76c1: $ef
	add  b                                           ; $76c2: $80
	ld   [hl], a                                     ; $76c3: $77
	add  b                                           ; $76c4: $80
	ld   d, a                                        ; $76c5: $57
	ld   bc, $9f5b                                   ; $76c6: $01 $5b $9f
	add  a                                           ; $76c9: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76ca: $cf
	add  d                                           ; $76cb: $82
	ld   c, a                                        ; $76cc: $4f
	add  b                                           ; $76cd: $80
	rrca                                             ; $76ce: $0f
	nop                                              ; $76cf: $00
	dec  bc                                          ; $76d0: $0b
	add  b                                           ; $76d1: $80
	cp   a                                           ; $76d2: $bf
	add  b                                           ; $76d3: $80
	add  b                                           ; $76d4: $80
	add  b                                           ; $76d5: $80
	nop                                              ; $76d6: $00
	add  b                                           ; $76d7: $80
	rst  $38                                         ; $76d8: $ff
	add  d                                           ; $76d9: $82
	nop                                              ; $76da: $00
	add  b                                           ; $76db: $80
	rst  $38                                         ; $76dc: $ff
	ld   bc, $f000                                   ; $76dd: $01 $00 $f0
	adc  c                                           ; $76e0: $89
	dec  c                                           ; $76e1: $0d
	add  d                                           ; $76e2: $82
	rrca                                             ; $76e3: $0f
	nop                                              ; $76e4: $00
	push de                                          ; $76e5: $d5
	add  c                                           ; $76e6: $81
	ld   a, l                                        ; $76e7: $7d
	dec  b                                           ; $76e8: $05
	ld   c, l                                        ; $76e9: $4d
	ld   e, l                                        ; $76ea: $5d
	ld   l, l                                        ; $76eb: $6d
	ld   a, l                                        ; $76ec: $7d
	ld   e, l                                        ; $76ed: $5d
	ld   a, l                                        ; $76ee: $7d
	add  b                                           ; $76ef: $80
	rst  $38                                         ; $76f0: $ff
	inc  b                                           ; $76f1: $04

jr_072_76f2:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76f2: $cf
	rst  JumpTable                                         ; $76f3: $df
	ld   [$b6db], sp                                 ; $76f4: $08 $db $b6
	add  d                                           ; $76f7: $82
	nop                                              ; $76f8: $00
	add  b                                           ; $76f9: $80
	rst  $38                                         ; $76fa: $ff
	add  h                                           ; $76fb: $84
	nop                                              ; $76fc: $00
	add  b                                           ; $76fd: $80
	rst  $38                                         ; $76fe: $ff
	ld   [bc], a                                     ; $76ff: $02
	nop                                              ; $7700: $00
	jr   z, jr_072_76f2                              ; $7701: $28 $ef

	adc  h                                           ; $7703: $8c
	rst  $20                                         ; $7704: $e7
	nop                                              ; $7705: $00
	rst  ToBoot                                         ; $7706: $c7
	add  b                                           ; $7707: $80
	ld   b, b                                        ; $7708: $40
	add  b                                           ; $7709: $80
	nop                                              ; $770a: $00
	add  b                                           ; $770b: $80
	ccf                                              ; $770c: $3f
	add  h                                           ; $770d: $84
	nop                                              ; $770e: $00
	add  b                                           ; $770f: $80
	rst  $38                                         ; $7710: $ff
	ld   bc, $2000                                   ; $7711: $01 $00 $20
	add  a                                           ; $7714: $87
	ldh  a, [$80]                                    ; $7715: $f0 $80
	pop  af                                          ; $7717: $f1
	add  b                                           ; $7718: $80
	ldh  a, [$80]                                    ; $7719: $f0 $80
	rst  $30                                         ; $771b: $f7
	ld   bc, $a0d8                                   ; $771c: $01 $d8 $a0
	add  b                                           ; $771f: $80
	and  c                                           ; $7720: $a1
	ld   [bc], a                                     ; $7721: $02
	xor  c                                           ; $7722: $a9
	ld   b, c                                        ; $7723: $41
	ld   d, e                                        ; $7724: $53
	add  b                                           ; $7725: $80
	jp   $8301                                       ; $7726: $c3 $01 $83


	rst  $10                                         ; $7729: $d7
	add  c                                           ; $772a: $81
	rlca                                             ; $772b: $07
	ld   bc, $2f6f                                   ; $772c: $01 $6f $2f
	add  b                                           ; $772f: $80
	ld   [$1884], sp                                 ; $7730: $08 $84 $18
	add  [hl]                                        ; $7733: $86
	add  hl, de                                      ; $7734: $19
	add  b                                           ; $7735: $80
	ld   a, d                                        ; $7736: $7a
	add  b                                           ; $7737: $80
	ld   a, b                                        ; $7738: $78
	add  b                                           ; $7739: $80
	ld   a, d                                        ; $773a: $7a
	add  b                                           ; $773b: $80
	ld   a, b                                        ; $773c: $78
	add  b                                           ; $773d: $80
	ld   a, d                                        ; $773e: $7a
	add  b                                           ; $773f: $80
	ld   a, b                                        ; $7740: $78
	add  b                                           ; $7741: $80
	ld   a, d                                        ; $7742: $7a
	add  b                                           ; $7743: $80
	ld   a, b                                        ; $7744: $78
	add  b                                           ; $7745: $80
	ccf                                              ; $7746: $3f
	add  d                                           ; $7747: $82
	ld   a, $80                                      ; $7748: $3e $80
	ld   a, [hl-]                                    ; $774a: $3a
	add  b                                           ; $774b: $80
	inc  [hl]                                        ; $774c: $34
	add  b                                           ; $774d: $80
	ld   a, [hl-]                                    ; $774e: $3a
	add  b                                           ; $774f: $80
	inc  [hl]                                        ; $7750: $34
	add  b                                           ; $7751: $80
	ld   a, [hl-]                                    ; $7752: $3a
	adc  [hl]                                        ; $7753: $8e
	and  $80                                         ; $7754: $e6 $80
	sbc  c                                           ; $7756: $99
	add  b                                           ; $7757: $80
	ld   e, c                                        ; $7758: $59
	add  b                                           ; $7759: $80
	sbc  c                                           ; $775a: $99
	add  b                                           ; $775b: $80
	ld   e, c                                        ; $775c: $59
	add  b                                           ; $775d: $80
	sbc  c                                           ; $775e: $99
	add  b                                           ; $775f: $80
	ld   e, c                                        ; $7760: $59
	add  b                                           ; $7761: $80
	sbc  c                                           ; $7762: $99
	add  b                                           ; $7763: $80
	ld   e, c                                        ; $7764: $59
	add  [hl]                                        ; $7765: $86
	ld   a, b                                        ; $7766: $78
	add  [hl]                                        ; $7767: $86
	ld   a, c                                        ; $7768: $79
	ld   [bc], a                                     ; $7769: $02
	nop                                              ; $776a: $00
	dec  l                                           ; $776b: $2d
	xor  l                                           ; $776c: $ad
	add  b                                           ; $776d: $80
	ld   h, $01                                      ; $776e: $26 $01
	ld   [de], a                                     ; $7770: $12
	or   d                                           ; $7771: $b2
	add  b                                           ; $7772: $80
	add  hl, bc                                      ; $7773: $09
	rlca                                             ; $7774: $07
	inc  b                                           ; $7775: $04
	inc  l                                           ; $7776: $2c
	ld   [bc], a                                     ; $7777: $02
	add  d                                           ; $7778: $82
	add  b                                           ; $7779: $80
	adc  d                                           ; $777a: $8a
	add  b                                           ; $777b: $80
	ld   b, $87                                      ; $777c: $06 $87
	rrca                                             ; $777e: $0f
	add  b                                           ; $777f: $80
	adc  a                                           ; $7780: $8f
	add  b                                           ; $7781: $80
	rrca                                             ; $7782: $0f
	add  b                                           ; $7783: $80
	rst  $28                                         ; $7784: $ef
	ld   bc, $00fb                                   ; $7785: $01 $fb $00
	add  b                                           ; $7788: $80
	rrca                                             ; $7789: $0f
	adc  d                                           ; $778a: $8a
	nop                                              ; $778b: $00
	nop                                              ; $778c: $00
	ld   bc, $0f81                                   ; $778d: $01 $81 $0f
	add  b                                           ; $7790: $80
	ld   a, [bc]                                     ; $7791: $0a
	add  b                                           ; $7792: $80
	ld   c, $80                                      ; $7793: $0e $80
	ld   [bc], a                                     ; $7795: $02
	add  b                                           ; $7796: $80
	ld   c, $80                                      ; $7797: $0e $80
	ld   a, [bc]                                     ; $7799: $0a
	add  b                                           ; $779a: $80
	ld   c, $03                                      ; $779b: $0e $03
	rla                                              ; $779d: $17
	ld   e, a                                        ; $779e: $5f
	ld   [de], a                                     ; $779f: $12
	ld   e, $82                                      ; $77a0: $1e $82
	inc  e                                           ; $77a2: $1c
	ld   [$1c14], sp                                 ; $77a3: $08 $14 $1c
	inc  c                                           ; $77a6: $0c
	inc  d                                           ; $77a7: $14
	inc  b                                           ; $77a8: $04
	inc  d                                           ; $77a9: $14
	ld   b, h                                        ; $77aa: $44
	ld   d, h                                        ; $77ab: $54
	xor  d                                           ; $77ac: $aa
	add  b                                           ; $77ad: $80
	rst  $38                                         ; $77ae: $ff
	ld   bc, $f9fd                                   ; $77af: $01 $fd $f9
	add  e                                           ; $77b2: $83
	db   $ed                                         ; $77b3: $ed
	add  b                                           ; $77b4: $80
	xor  l                                           ; $77b5: $ad
	add  b                                           ; $77b6: $80
	ld   c, l                                        ; $77b7: $4d
	add  b                                           ; $77b8: $80
	dec  b                                           ; $77b9: $05
	nop                                              ; $77ba: $00
	ret                                              ; $77bb: $c9


	add  e                                           ; $77bc: $83
	rst  $20                                         ; $77bd: $e7
	nop                                              ; $77be: $00
	and  $83                                         ; $77bf: $e6 $83
	rst  $20                                         ; $77c1: $e7
	inc  b                                           ; $77c2: $04
	and  $e7                                         ; $77c3: $e6 $e7
	ret  nz                                          ; $77c5: $c0

	rst  ToBoot                                         ; $77c6: $c7

jr_072_77c7:
	ret  nz                                          ; $77c7: $c0

	add  e                                           ; $77c8: $83
	rst  $38                                         ; $77c9: $ff
	ld   [bc], a                                     ; $77ca: $02
	nop                                              ; $77cb: $00
	rst  $38                                         ; $77cc: $ff
	inc  h                                           ; $77cd: $24
	add  c                                           ; $77ce: $81
	rst  $38                                         ; $77cf: $ff
	dec  b                                           ; $77d0: $05
	db   $db                                         ; $77d1: $db
	rst  $38                                         ; $77d2: $ff
	nop                                              ; $77d3: $00
	rst  $38                                         ; $77d4: $ff
	jr   nz, jr_072_77c7                             ; $77d5: $20 $f0

	add  d                                           ; $77d7: $82
	pop  af                                          ; $77d8: $f1
	inc  bc                                          ; $77d9: $03
	ld   sp, $b0f1                                   ; $77da: $31 $f1 $b0
	ldh  a, [$80]                                    ; $77dd: $f0 $80
	rst  $30                                         ; $77df: $f7
	inc  bc                                          ; $77e0: $03
	halt                                             ; $77e1: $76
	or   $26                                         ; $77e2: $f6 $26
	or   $84                                         ; $77e4: $f6 $84
	cpl                                              ; $77e6: $2f
	dec  b                                           ; $77e7: $05
	ld   c, b                                        ; $77e8: $48
	add  b                                           ; $77e9: $80
	or   a                                           ; $77ea: $b7
	nop                                              ; $77eb: $00
	add  b                                           ; $77ec: $80
	rst  $38                                         ; $77ed: $ff
	add  b                                           ; $77ee: $80
	nop                                              ; $77ef: $00
	add  b                                           ; $77f0: $80
	rst  $38                                         ; $77f1: $ff
	add  h                                           ; $77f2: $84
	add  hl, de                                      ; $77f3: $19
	ld   [bc], a                                     ; $77f4: $02
	ld   b, e                                        ; $77f5: $43
	nop                                              ; $77f6: $00
	cp   h                                           ; $77f7: $bc
	add  b                                           ; $77f8: $80
	nop                                              ; $77f9: $00
	nop                                              ; $77fa: $00
	rst  $38                                         ; $77fb: $ff
	add  b                                           ; $77fc: $80
	nop                                              ; $77fd: $00
	add  b                                           ; $77fe: $80
	rst  $38                                         ; $77ff: $ff
	add  b                                           ; $7800: $80
	ld   a, d                                        ; $7801: $7a
	add  d                                           ; $7802: $82
	ld   a, b                                        ; $7803: $78
	ld   [bc], a                                     ; $7804: $02
	rlca                                             ; $7805: $07
	nop                                              ; $7806: $00
	ld   hl, sp-$80                                  ; $7807: $f8 $80
	nop                                              ; $7809: $00
	nop                                              ; $780a: $00
	rst  $38                                         ; $780b: $ff
	add  b                                           ; $780c: $80
	nop                                              ; $780d: $00
	add  b                                           ; $780e: $80
	rst  $38                                         ; $780f: $ff
	add  b                                           ; $7810: $80
	inc  [hl]                                        ; $7811: $34
	add  b                                           ; $7812: $80
	ld   a, [hl-]                                    ; $7813: $3a
	add  b                                           ; $7814: $80
	inc  a                                           ; $7815: $3c
	ld   [bc], a                                     ; $7816: $02
	ret  nz                                          ; $7817: $c0

	nop                                              ; $7818: $00
	ccf                                              ; $7819: $3f
	add  b                                           ; $781a: $80
	nop                                              ; $781b: $00
	nop                                              ; $781c: $00
	rst  $38                                         ; $781d: $ff
	add  b                                           ; $781e: $80
	nop                                              ; $781f: $00
	add  b                                           ; $7820: $80
	rst  $38                                         ; $7821: $ff
	add  h                                           ; $7822: $84
	and  $02                                         ; $7823: $e6 $02
	add  hl, de                                      ; $7825: $19
	nop                                              ; $7826: $00
	and  $80                                         ; $7827: $e6 $80
	nop                                              ; $7829: $00
	nop                                              ; $782a: $00
	rst  $38                                         ; $782b: $ff
	add  b                                           ; $782c: $80
	nop                                              ; $782d: $00
	add  b                                           ; $782e: $80
	rst  $38                                         ; $782f: $ff
	add  b                                           ; $7830: $80
	sbc  c                                           ; $7831: $99
	add  b                                           ; $7832: $80
	ld   e, c                                        ; $7833: $59
	add  b                                           ; $7834: $80
	add  hl, de                                      ; $7835: $19
	ld   [bc], a                                     ; $7836: $02
	and  $00                                         ; $7837: $e6 $00
	add  hl, de                                      ; $7839: $19
	add  b                                           ; $783a: $80
	nop                                              ; $783b: $00
	nop                                              ; $783c: $00
	rst  $38                                         ; $783d: $ff
	add  b                                           ; $783e: $80
	nop                                              ; $783f: $00
	add  b                                           ; $7840: $80
	rst  $38                                         ; $7841: $ff
	add  d                                           ; $7842: $82
	ld   a, c                                        ; $7843: $79
	add  b                                           ; $7844: $80
	ld   a, b                                        ; $7845: $78
	ld   [bc], a                                     ; $7846: $02
	rlca                                             ; $7847: $07
	nop                                              ; $7848: $00
	ld   hl, sp-$80                                  ; $7849: $f8 $80
	nop                                              ; $784b: $00
	nop                                              ; $784c: $00
	rst  $38                                         ; $784d: $ff
	add  b                                           ; $784e: $80
	nop                                              ; $784f: $00
	add  b                                           ; $7850: $80
	rst  $38                                         ; $7851: $ff
	inc  bc                                          ; $7852: $03
	add  d                                           ; $7853: $82
	add  b                                           ; $7854: $80
	add  d                                           ; $7855: $82
	add  b                                           ; $7856: $80
	add  b                                           ; $7857: $80
	nop                                              ; $7858: $00
	ld   [bc], a                                     ; $7859: $02
	pop  hl                                          ; $785a: $e1
	nop                                              ; $785b: $00
	ld   e, $80                                      ; $785c: $1e $80
	nop                                              ; $785e: $00
	nop                                              ; $785f: $00
	rst  $38                                         ; $7860: $ff
	add  b                                           ; $7861: $80
	nop                                              ; $7862: $00
	add  b                                           ; $7863: $80
	rst  $38                                         ; $7864: $ff
	ld   bc, $0f04                                   ; $7865: $01 $04 $0f
	add  d                                           ; $7868: $82
	ld   c, a                                        ; $7869: $4f
	inc  bc                                          ; $786a: $03
	call z, $0dcf                                    ; $786b: $cc $cf $0d
	rrca                                             ; $786e: $0f
	add  b                                           ; $786f: $80
	rst  $28                                         ; $7870: $ef
	inc  bc                                          ; $7871: $03
	ld   l, $2f                                      ; $7872: $2e $2f
	and  h                                           ; $7874: $a4
	xor  a                                           ; $7875: $af
	add  b                                           ; $7876: $80
	nop                                              ; $7877: $00
	inc  bc                                          ; $7878: $03
	ldh  [$e1], a                                    ; $7879: $e0 $e1
	ld   hl, $8820                                   ; $787b: $21 $20 $88
	nop                                              ; $787e: $00
	nop                                              ; $787f: $00
	cp   $81                                         ; $7880: $fe $81
	nop                                              ; $7882: $00
	ld   bc, $0f01                                   ; $7883: $01 $01 $0f
	add  c                                           ; $7886: $81
	nop                                              ; $7887: $00
	add  b                                           ; $7888: $80
	ld   c, $80                                      ; $7889: $0e $80
	ld   [bc], a                                     ; $788b: $02
	add  b                                           ; $788c: $80
	nop                                              ; $788d: $00
	ld   b, $0d                                      ; $788e: $06 $0d
	ld   e, a                                        ; $7890: $5f
	nop                                              ; $7891: $00
	ld   [$5500], sp                                 ; $7892: $08 $00 $55
	rst  $38                                         ; $7895: $ff
	add  c                                           ; $7896: $81
	nop                                              ; $7897: $00
	add  b                                           ; $7898: $80
	cp   $80                                         ; $7899: $fe $80
	ld   [bc], a                                     ; $789b: $02
	add  b                                           ; $789c: $80
	nop                                              ; $789d: $00
	ld   b, $fd                                      ; $789e: $06 $fd
	db   $10                                         ; $78a0: $10
	dec  b                                           ; $78a1: $05
	inc  b                                           ; $78a2: $04
	dec  b                                           ; $78a3: $05
	ld   d, $ff                                      ; $78a4: $16 $ff
	add  c                                           ; $78a6: $81
	nop                                              ; $78a7: $00
	add  b                                           ; $78a8: $80
	cp   $81                                         ; $78a9: $fe $81
	ld   [bc], a                                     ; $78ab: $02
	ld   [bc], a                                     ; $78ac: $02
	ld   e, [hl]                                     ; $78ad: $5e
	db   $fc                                         ; $78ae: $fc
	and  b                                           ; $78af: $a0
	add  b                                           ; $78b0: $80
	db   $fc                                         ; $78b1: $fc
	ld   [bc], a                                     ; $78b2: $02
	rst  JumpTable                                         ; $78b3: $df
	jr   nz, @+$01                                   ; $78b4: $20 $ff

	add  c                                           ; $78b6: $81
	nop                                              ; $78b7: $00
	add  b                                           ; $78b8: $80
	cp   $80                                         ; $78b9: $fe $80
	ld   [bc], a                                     ; $78bb: $02
	inc  bc                                          ; $78bc: $03
	nop                                              ; $78bd: $00
	ld   [bc], a                                     ; $78be: $02
	rst  $38                                         ; $78bf: $ff
	db   $fd                                         ; $78c0: $fd
	add  b                                           ; $78c1: $80
	nop                                              ; $78c2: $00
	ld   [bc], a                                     ; $78c3: $02
	ld   a, $c1                                      ; $78c4: $3e $c1
	rst  $38                                         ; $78c6: $ff
	add  b                                           ; $78c7: $80
	nop                                              ; $78c8: $00
	inc  bc                                          ; $78c9: $03
	ld   b, $fe                                      ; $78ca: $06 $fe
	ld   a, [$8002]                                  ; $78cc: $fa $02 $80
	nop                                              ; $78cf: $00
	ld   [bc], a                                     ; $78d0: $02
	ret  nz                                          ; $78d1: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78d2: $cf
	rrca                                             ; $78d3: $0f
	add  b                                           ; $78d4: $80
	nop                                              ; $78d5: $00
	ld   [bc], a                                     ; $78d6: $02
	ld   a, h                                        ; $78d7: $7c
	add  e                                           ; $78d8: $83
	rst  $38                                         ; $78d9: $ff
	add  b                                           ; $78da: $80
	nop                                              ; $78db: $00
	inc  bc                                          ; $78dc: $03
	ld   d, $fe                                      ; $78dd: $16 $fe
	ld   [$8002], a                                  ; $78df: $ea $02 $80
	nop                                              ; $78e2: $00
	ld   [bc], a                                     ; $78e3: $02
	cp   b                                           ; $78e4: $b8
	ld   sp, hl                                      ; $78e5: $f9
	ld   b, c                                        ; $78e6: $41
	add  b                                           ; $78e7: $80
	nop                                              ; $78e8: $00
	ld   [bc], a                                     ; $78e9: $02
	ld   sp, hl                                      ; $78ea: $f9
	ld   b, $ff                                      ; $78eb: $06 $ff
	add  b                                           ; $78ed: $80
	nop                                              ; $78ee: $00
	inc  bc                                          ; $78ef: $03
	ld   d, $fe                                      ; $78f0: $16 $fe
	ld   [$8002], a                                  ; $78f2: $ea $02 $80
	nop                                              ; $78f5: $00
	ld   [bc], a                                     ; $78f6: $02
	dec  bc                                          ; $78f7: $0b
	rst  $38                                         ; $78f8: $ff
	db   $f4                                         ; $78f9: $f4
	add  b                                           ; $78fa: $80
	nop                                              ; $78fb: $00
	ld   [bc], a                                     ; $78fc: $02
	di                                               ; $78fd: $f3
	inc  c                                           ; $78fe: $0c
	rst  $38                                         ; $78ff: $ff
	add  b                                           ; $7900: $80
	nop                                              ; $7901: $00
	inc  bc                                          ; $7902: $03
	ld   d, $fe                                      ; $7903: $16 $fe
	ld   [$8002], a                                  ; $7905: $ea $02 $80
	nop                                              ; $7908: $00
	ld   [bc], a                                     ; $7909: $02
	ld   bc, $3e3f                                   ; $790a: $01 $3f $3e
	add  b                                           ; $790d: $80
	nop                                              ; $790e: $00
	ld   [bc], a                                     ; $790f: $02
	rst  $20                                         ; $7910: $e7
	jr   @+$01                                       ; $7911: $18 $ff

	add  b                                           ; $7913: $80
	nop                                              ; $7914: $00
	inc  bc                                          ; $7915: $03
	ld   d, $fe                                      ; $7916: $16 $fe
	ld   [$8002], a                                  ; $7918: $ea $02 $80
	inc  bc                                          ; $791b: $03
	ld   [bc], a                                     ; $791c: $02
	ld   [hl], b                                     ; $791d: $70
	pop  af                                          ; $791e: $f1
	add  c                                           ; $791f: $81
	add  b                                           ; $7920: $80
	rrca                                             ; $7921: $0f
	ld   [bc], a                                     ; $7922: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7923: $cf
	jr   nc, @+$01                                   ; $7924: $30 $ff

	add  d                                           ; $7926: $82
	nop                                              ; $7927: $00
	add  b                                           ; $7928: $80
	add  b                                           ; $7929: $80
	nop                                              ; $792a: $00
	nop                                              ; $792b: $00
	add  c                                           ; $792c: $81
	add  b                                           ; $792d: $80
	nop                                              ; $792e: $00
	ld   [hl], b                                     ; $792f: $70
	add  b                                           ; $7930: $80
	inc  b                                           ; $7931: $04
	inc  b                                           ; $7932: $04
	nop                                              ; $7933: $00
	rlca                                             ; $7934: $07
	rrca                                             ; $7935: $0f
	add  hl, bc                                      ; $7936: $09
	ld   bc, $0080                                   ; $7937: $01 $80 $00
	add  b                                           ; $793a: $80
	rrca                                             ; $793b: $0f
	add  d                                           ; $793c: $82
	nop                                              ; $793d: $00
	nop                                              ; $793e: $00
	ldh  a, [$80]                                    ; $793f: $f0 $80
	inc  b                                           ; $7941: $04
	add  b                                           ; $7942: $80
	nop                                              ; $7943: $00
	add  b                                           ; $7944: $80
	rra                                              ; $7945: $1f
	add  c                                           ; $7946: $81
	nop                                              ; $7947: $00
	inc  bc                                          ; $7948: $03
	ret  nz                                          ; $7949: $c0

	rst  ToBoot                                         ; $794a: $c7
	ld   b, a                                        ; $794b: $47
	ld   b, b                                        ; $794c: $40
	add  b                                           ; $794d: $80
	nop                                              ; $794e: $00
	add  b                                           ; $794f: $80
	inc  b                                           ; $7950: $04
	add  b                                           ; $7951: $80
	nop                                              ; $7952: $00
	inc  bc                                          ; $7953: $03
	ld   l, $fe                                      ; $7954: $2e $fe
	jp   nc, $8002                                   ; $7956: $d2 $02 $80

	nop                                              ; $7959: $00
	ld   [bc], a                                     ; $795a: $02
	rra                                              ; $795b: $1f
	rst  $38                                         ; $795c: $ff
	ldh  [$85], a                                    ; $795d: $e0 $85
	nop                                              ; $795f: $00
	ld   [bc], a                                     ; $7960: $02
	ld   bc, $3e3f                                   ; $7961: $01 $3f $3e
	add  c                                           ; $7964: $81
	nop                                              ; $7965: $00
	inc  bc                                          ; $7966: $03
	ret  nz                                          ; $7967: $c0

	rst  ToBoot                                         ; $7968: $c7
	ld   b, a                                        ; $7969: $47
	ld   b, b                                        ; $796a: $40
	add  b                                           ; $796b: $80
	nop                                              ; $796c: $00
	add  b                                           ; $796d: $80
	ld   b, b                                        ; $796e: $40
	add  b                                           ; $796f: $80
	nop                                              ; $7970: $00
	inc  bc                                          ; $7971: $03
	ld   a, b                                        ; $7972: $78
	ld   sp, hl                                      ; $7973: $f9
	adc  c                                           ; $7974: $89
	ld   [$0080], sp                                 ; $7975: $08 $80 $00
	ld   [bc], a                                     ; $7978: $02
	rra                                              ; $7979: $1f
	rst  $38                                         ; $797a: $ff
	ldh  [$83], a                                    ; $797b: $e0 $83
	nop                                              ; $797d: $00
	ld   [bc], a                                     ; $797e: $02
	inc  bc                                          ; $797f: $03
	rst  $38                                         ; $7980: $ff
	db   $fc                                         ; $7981: $fc
	adc  c                                           ; $7982: $89
	nop                                              ; $7983: $00
	ret  nc                                          ; $7984: $d0

	ld   bc, $0086                                   ; $7985: $01 $86 $00
	ld   [$ff0f], sp                                 ; $7988: $08 $0f $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $798b: $cf
	cp   $3f                                         ; $798c: $fe $3f
	ld   sp, hl                                      ; $798e: $f9
	rst  $38                                         ; $798f: $ff
	push hl                                          ; $7990: $e5
	dec  e                                           ; $7991: $1d
	add  l                                           ; $7992: $85
	nop                                              ; $7993: $00
	inc  b                                           ; $7994: $04
	ldh  a, [$ca]                                    ; $7995: $f0 $ca
	ld   a, [$f535]                                  ; $7997: $fa $35 $f5
	add  b                                           ; $799a: $80
	xor  d                                           ; $799b: $aa
	add  b                                           ; $799c: $80
	ld   d, l                                        ; $799d: $55
	add  [hl]                                        ; $799e: $86
	nop                                              ; $799f: $00
	add  b                                           ; $79a0: $80
	xor  d                                           ; $79a1: $aa
	add  b                                           ; $79a2: $80
	ld   d, h                                        ; $79a3: $54
	add  b                                           ; $79a4: $80
	xor  b                                           ; $79a5: $a8
	ld   [bc], a                                     ; $79a6: $02
	ld   d, b                                        ; $79a7: $50
	cp   d                                           ; $79a8: $ba
	or   l                                           ; $79a9: $b5
	add  b                                           ; $79aa: $80
	xor  d                                           ; $79ab: $aa
	add  b                                           ; $79ac: $80
	or   l                                           ; $79ad: $b5
	add  b                                           ; $79ae: $80
	xor  d                                           ; $79af: $aa
	add  b                                           ; $79b0: $80
	or   l                                           ; $79b1: $b5
	add  b                                           ; $79b2: $80
	xor  d                                           ; $79b3: $aa
	add  b                                           ; $79b4: $80
	or   l                                           ; $79b5: $b5
	add  b                                           ; $79b6: $80
	xor  d                                           ; $79b7: $aa
	ld   bc, $2faf                                   ; $79b8: $01 $af $2f
	add  c                                           ; $79bb: $81
	daa                                              ; $79bc: $27
	dec  bc                                          ; $79bd: $0b
	rra                                              ; $79be: $1f
	inc  de                                          ; $79bf: $13
	rra                                              ; $79c0: $1f
	inc  de                                          ; $79c1: $13
	rra                                              ; $79c2: $1f
	ld   [de], a                                     ; $79c3: $12
	rra                                              ; $79c4: $1f
	ld   de, $111f                                   ; $79c5: $11 $1f $11
	rra                                              ; $79c8: $1f
	ld   l, d                                        ; $79c9: $6a
	add  e                                           ; $79ca: $83
	ld   a, a                                        ; $79cb: $7f
	add  b                                           ; $79cc: $80
	ccf                                              ; $79cd: $3f
	add  b                                           ; $79ce: $80
	ld   e, a                                        ; $79cf: $5f
	add  b                                           ; $79d0: $80
	dec  hl                                          ; $79d1: $2b
	add  b                                           ; $79d2: $80
	ld   d, l                                        ; $79d3: $55
	add  b                                           ; $79d4: $80
	ld   a, [hl+]                                    ; $79d5: $2a
	nop                                              ; $79d6: $00
	rst  $38                                         ; $79d7: $ff
	adc  c                                           ; $79d8: $89
	ldh  a, [$80]                                    ; $79d9: $f0 $80
	ld   [hl], b                                     ; $79db: $70
	add  b                                           ; $79dc: $80
	and  b                                           ; $79dd: $a0
	inc  b                                           ; $79de: $04
	add  hl, bc                                      ; $79df: $09
	rrca                                             ; $79e0: $0f
	ld   a, [bc]                                     ; $79e1: $0a
	ld   h, a                                        ; $79e2: $67
	ld   h, h                                        ; $79e3: $64
	add  b                                           ; $79e4: $80
	ld   [hl], c                                     ; $79e5: $71
	add  b                                           ; $79e6: $80
	ld   a, b                                        ; $79e7: $78
	add  l                                           ; $79e8: $85
	nop                                              ; $79e9: $00
	inc  c                                           ; $79ea: $0c
	call z, Call_072_50fe                            ; $79eb: $cc $fe $50
	ei                                               ; $79ee: $fb
	add  hl, bc                                      ; $79ef: $09
	db   $dd                                         ; $79f0: $dd
	dec  b                                           ; $79f1: $05
	and  $84                                         ; $79f2: $e6 $84
	ld   [hl], c                                     ; $79f4: $71
	ld   e, d                                        ; $79f5: $5a
	inc  e                                           ; $79f6: $1c
	dec  e                                           ; $79f7: $1d
	add  b                                           ; $79f8: $80
	ld   c, $07                                      ; $79f9: $0e $07
	nop                                              ; $79fb: $00
	add  b                                           ; $79fc: $80
	rrc  e                                           ; $79fd: $cb $0b
	ld   [hl], $66                                   ; $79ff: $36 $66
	adc  c                                           ; $7a01: $89
	sbc  c                                           ; $7a02: $99
	add  b                                           ; $7a03: $80
	ld   l, [hl]                                     ; $7a04: $6e
	add  hl, bc                                      ; $7a05: $09
	or   e                                           ; $7a06: $b3
	and  e                                           ; $7a07: $a3
	call z, Call_072_62d1                            ; $7a08: $cc $d1 $62
	ld   l, a                                        ; $7a0b: $6f
	nop                                              ; $7a0c: $00
	rra                                              ; $7a0d: $1f
	sub  b                                           ; $7a0e: $90
	add  b                                           ; $7a0f: $80
	add  b                                           ; $7a10: $80
	ldh  [$80], a                                    ; $7a11: $e0 $80
	or   b                                           ; $7a13: $b0
	add  b                                           ; $7a14: $80
	ld   h, b                                        ; $7a15: $60
	add  b                                           ; $7a16: $80
	sub  b                                           ; $7a17: $90
	add  b                                           ; $7a18: $80
	ldh  [$80], a                                    ; $7a19: $e0 $80
	jr   nc, jr_072_7a1e                             ; $7a1b: $30 $01

	nop                                              ; $7a1d: $00

jr_072_7a1e:
	db   $10                                         ; $7a1e: $10
	add  d                                           ; $7a1f: $82
	and  b                                           ; $7a20: $a0
	add  b                                           ; $7a21: $80
	cp   [hl]                                        ; $7a22: $be
	add  c                                           ; $7a23: $81
	cp   a                                           ; $7a24: $bf
	add  b                                           ; $7a25: $80
	xor  a                                           ; $7a26: $af
	add  b                                           ; $7a27: $80
	or   a                                           ; $7a28: $b7
	add  b                                           ; $7a29: $80
	xor  e                                           ; $7a2a: $ab
	nop                                              ; $7a2b: $00
	xor  a                                           ; $7a2c: $af
	add  c                                           ; $7a2d: $81
	rra                                              ; $7a2e: $1f
	inc  c                                           ; $7a2f: $0c
	rlca                                             ; $7a30: $07
	rra                                              ; $7a31: $1f
	rrca                                             ; $7a32: $0f
	daa                                              ; $7a33: $27
	rlca                                             ; $7a34: $07
	cpl                                              ; $7a35: $2f
	daa                                              ; $7a36: $27
	cpl                                              ; $7a37: $2f
	daa                                              ; $7a38: $27
	cpl                                              ; $7a39: $2f
	rlca                                             ; $7a3a: $07
	cpl                                              ; $7a3b: $2f
	ld   e, a                                        ; $7a3c: $5f
	add  [hl]                                        ; $7a3d: $86
	nop                                              ; $7a3e: $00
	add  b                                           ; $7a3f: $80
	ld   a, b                                        ; $7a40: $78
	add  e                                           ; $7a41: $83
	ld   a, a                                        ; $7a42: $7f
	nop                                              ; $7a43: $00
	rst  $38                                         ; $7a44: $ff
	adc  b                                           ; $7a45: $88
	nop                                              ; $7a46: $00
	add  h                                           ; $7a47: $84
	ldh  a, [$82]                                    ; $7a48: $f0 $82
	rst  $38                                         ; $7a4a: $ff
	add  b                                           ; $7a4b: $80
	xor  d                                           ; $7a4c: $aa
	dec  bc                                          ; $7a4d: $0b
	ld   d, l                                        ; $7a4e: $55
	ld   d, h                                        ; $7a4f: $54
	xor  d                                           ; $7a50: $aa
	xor  h                                           ; $7a51: $ac
	ld   d, b                                        ; $7a52: $50
	ld   c, b                                        ; $7a53: $48
	and  b                                           ; $7a54: $a0
	ld   b, d                                        ; $7a55: $42
	jp   nz, PlaySoundEffect                                   ; $7a56: $c2 $df $1a

	ld   a, [$f580]                                  ; $7a59: $fa $80 $f5
	add  b                                           ; $7a5c: $80
	ld   [$d580], a                                  ; $7a5d: $ea $80 $d5
	add  b                                           ; $7a60: $80
	xor  d                                           ; $7a61: $aa
	add  b                                           ; $7a62: $80
	ld   d, l                                        ; $7a63: $55
	add  b                                           ; $7a64: $80
	xor  d                                           ; $7a65: $aa
	add  b                                           ; $7a66: $80
	ld   d, h                                        ; $7a67: $54
	add  b                                           ; $7a68: $80
	xor  d                                           ; $7a69: $aa
	add  b                                           ; $7a6a: $80
	ld   d, h                                        ; $7a6b: $54
	add  b                                           ; $7a6c: $80
	xor  d                                           ; $7a6d: $aa
	add  b                                           ; $7a6e: $80
	ld   d, b                                        ; $7a6f: $50
	add  b                                           ; $7a70: $80

jr_072_7a71:
	xor  b                                           ; $7a71: $a8
	add  b                                           ; $7a72: $80

jr_072_7a73:
	nop                                              ; $7a73: $00
	add  b                                           ; $7a74: $80
	and  b                                           ; $7a75: $a0
	add  b                                           ; $7a76: $80
	nop                                              ; $7a77: $00
	add  b                                           ; $7a78: $80
	and  b                                           ; $7a79: $a0
	add  b                                           ; $7a7a: $80
	ld   b, b                                        ; $7a7b: $40
	add  b                                           ; $7a7c: $80
	add  b                                           ; $7a7d: $80
	add  a                                           ; $7a7e: $87
	nop                                              ; $7a7f: $00
	nop                                              ; $7a80: $00
	ld   e, a                                        ; $7a81: $5f
	add  b                                           ; $7a82: $80
	dec  d                                           ; $7a83: $15
	add  b                                           ; $7a84: $80
	ld   a, [bc]                                     ; $7a85: $0a
	inc  e                                           ; $7a86: $1c
	dec  d                                           ; $7a87: $15
	rra                                              ; $7a88: $1f
	nop                                              ; $7a89: $00
	ld   [hl], c                                     ; $7a8a: $71
	rst  $38                                         ; $7a8b: $ff
	ld   e, e                                        ; $7a8c: $5b
	rst  $38                                         ; $7a8d: $ff
	dec  de                                          ; $7a8e: $1b
	cp   a                                           ; $7a8f: $bf
	add  hl, hl                                      ; $7a90: $29
	rra                                              ; $7a91: $1f
	ld   d, $1f                                      ; $7a92: $16 $1f
	ld   de, $111f                                   ; $7a94: $11 $1f $11
	rra                                              ; $7a97: $1f
	add  hl, de                                      ; $7a98: $19
	rra                                              ; $7a99: $1f
	ld   [hl], b                                     ; $7a9a: $70
	rst  $38                                         ; $7a9b: $ff
	ld   l, h                                        ; $7a9c: $6c
	rst  $38                                         ; $7a9d: $ff
	cp   $ff                                         ; $7a9e: $fe $ff
	or   e                                           ; $7aa0: $b3
	rst  $38                                         ; $7aa1: $ff
	add  hl, de                                      ; $7aa2: $19
	ld   d, l                                        ; $7aa3: $55
	add  b                                           ; $7aa4: $80
	ld   a, [hl+]                                    ; $7aa5: $2a
	add  b                                           ; $7aa6: $80
	ld   d, l                                        ; $7aa7: $55
	add  b                                           ; $7aa8: $80
	ld   a, [hl+]                                    ; $7aa9: $2a
	add  hl, bc                                      ; $7aaa: $09
	dec  d                                           ; $7aab: $15
	push de                                          ; $7aac: $d5
	jp   nz, Jump_072_61e2                           ; $7aad: $c2 $e2 $61

	jp   hl                                          ; $7ab0: $e9


	ld   [$c9f6], sp                                 ; $7ab1: $08 $f6 $c9
	ld   d, b                                        ; $7ab4: $50
	add  b                                           ; $7ab5: $80
	and  b                                           ; $7ab6: $a0
	add  b                                           ; $7ab7: $80
	ld   d, b                                        ; $7ab8: $50
	add  b                                           ; $7ab9: $80
	and  b                                           ; $7aba: $a0
	add  b                                           ; $7abb: $80
	ld   d, b                                        ; $7abc: $50
	add  b                                           ; $7abd: $80
	and  b                                           ; $7abe: $a0
	add  b                                           ; $7abf: $80
	ld   d, b                                        ; $7ac0: $50
	add  b                                           ; $7ac1: $80
	jr   nz, jr_072_7ac4                             ; $7ac2: $20 $00

jr_072_7ac4:
	rrca                                             ; $7ac4: $0f
	add  d                                           ; $7ac5: $82
	nop                                              ; $7ac6: $00
	add  b                                           ; $7ac7: $80
	inc  b                                           ; $7ac8: $04
	add  b                                           ; $7ac9: $80
	ld   [bc], a                                     ; $7aca: $02
	add  b                                           ; $7acb: $80
	ld   bc, $0083                                   ; $7acc: $01 $83 $00
	ld   [bc], a                                     ; $7acf: $02
	dec  d                                           ; $7ad0: $15
	dec  de                                          ; $7ad1: $1b
	ld   l, $80                                      ; $7ad2: $2e $80
	jr   nc, @-$7a                                   ; $7ad4: $30 $84

	jr   nz, @-$7e                                   ; $7ad6: $20 $80

	and  b                                           ; $7ad8: $a0
	dec  d                                           ; $7ad9: $15
	ld   h, b                                        ; $7ada: $60
	ld   b, b                                        ; $7adb: $40
	jr   nz, @-$46                                   ; $7adc: $20 $b8

	call c, $e447                                    ; $7ade: $dc $47 $e4
	and  $70                                         ; $7ae1: $e6 $70
	ld   [hl], l                                     ; $7ae3: $75
	jr   c, jr_072_7b14                              ; $7ae4: $38 $2e

	inc  c                                           ; $7ae6: $0c
	add  hl, de                                      ; $7ae7: $19
	nop                                              ; $7ae8: $00
	inc  b                                           ; $7ae9: $04
	nop                                              ; $7aea: $00
	ld   [bc], a                                     ; $7aeb: $02
	nop                                              ; $7aec: $00
	adc  $e0                                         ; $7aed: $ce $e0
	jr   nz, jr_072_7a71                             ; $7aef: $20 $80

	jr   nc, jr_072_7a73                             ; $7af1: $30 $80

	add  b                                           ; $7af3: $80
	add  b                                           ; $7af4: $80
	ldh  [$80], a                                    ; $7af5: $e0 $80
	ld   [hl], b                                     ; $7af7: $70
	add  b                                           ; $7af8: $80
	sub  b                                           ; $7af9: $90
	add  b                                           ; $7afa: $80
	ret  nz                                          ; $7afb: $c0

	ld   bc, $10e0                                   ; $7afc: $01 $e0 $10
	add  b                                           ; $7aff: $80
	xor  d                                           ; $7b00: $aa
	add  b                                           ; $7b01: $80
	ld   d, b                                        ; $7b02: $50
	add  b                                           ; $7b03: $80
	xor  d                                           ; $7b04: $aa
	add  b                                           ; $7b05: $80
	ld   b, b                                        ; $7b06: $40
	add  b                                           ; $7b07: $80
	xor  b                                           ; $7b08: $a8
	add  c                                           ; $7b09: $81
	nop                                              ; $7b0a: $00
	add  b                                           ; $7b0b: $80
	ldh  [rDIV], a                                   ; $7b0c: $e0 $04
	rlca                                             ; $7b0e: $07
	nop                                              ; $7b0f: $00
	jr   c, jr_072_7b12                              ; $7b10: $38 $00

jr_072_7b12:
	ret  nz                                          ; $7b12: $c0

	add  b                                           ; $7b13: $80

jr_072_7b14:
	nop                                              ; $7b14: $00
	add  b                                           ; $7b15: $80
	rlca                                             ; $7b16: $07
	rlca                                             ; $7b17: $07
	rra                                              ; $7b18: $1f
	inc  e                                           ; $7b19: $1c
	rra                                              ; $7b1a: $1f
	dec  de                                          ; $7b1b: $1b
	rra                                              ; $7b1c: $1f
	rla                                              ; $7b1d: $17
	rra                                              ; $7b1e: $1f
	ld   l, a                                        ; $7b1f: $6f
	adc  l                                           ; $7b20: $8d
	nop                                              ; $7b21: $00
	nop                                              ; $7b22: $00
	add  b                                           ; $7b23: $80
	add  d                                           ; $7b24: $82
	rst  $38                                         ; $7b25: $ff
	add  b                                           ; $7b26: $80
	xor  d                                           ; $7b27: $aa
	add  hl, bc                                      ; $7b28: $09
	ld   d, l                                        ; $7b29: $55
	ld   e, l                                        ; $7b2a: $5d
	and  d                                           ; $7b2b: $a2
	sub  d                                           ; $7b2c: $92
	ld   b, l                                        ; $7b2d: $45
	add  l                                           ; $7b2e: $85
	ld   [bc], a                                     ; $7b2f: $02
	dec  d                                           ; $7b30: $15
	rla                                              ; $7b31: $17
	ld   hl, sp-$7e                                  ; $7b32: $f8 $82
	rst  $38                                         ; $7b34: $ff
	add  b                                           ; $7b35: $80
	xor  d                                           ; $7b36: $aa
	add  b                                           ; $7b37: $80
	ld   d, l                                        ; $7b38: $55
	rlca                                             ; $7b39: $07
	xor  d                                           ; $7b3a: $aa
	xor  e                                           ; $7b3b: $ab
	ld   d, h                                        ; $7b3c: $54
	ld   d, d                                        ; $7b3d: $52
	xor  b                                           ; $7b3e: $a8
	ld   d, b                                        ; $7b3f: $50
	ldh  [rP1], a                                    ; $7b40: $e0 $00
	add  b                                           ; $7b42: $80
	xor  b                                           ; $7b43: $a8
	ld   bc, $4b48                                   ; $7b44: $01 $48 $4b
	add  b                                           ; $7b47: $80
	xor  e                                           ; $7b48: $ab
	dec  b                                           ; $7b49: $05
	ld   c, e                                        ; $7b4a: $4b
	ld   c, b                                        ; $7b4b: $48
	xor  b                                           ; $7b4c: $a8
	xor  e                                           ; $7b4d: $ab
	ld   c, e                                        ; $7b4e: $4b
	ld   c, b                                        ; $7b4f: $48
	add  b                                           ; $7b50: $80
	xor  b                                           ; $7b51: $a8
	ld   [bc], a                                     ; $7b52: $02
	ld   c, b                                        ; $7b53: $48
	xor  b                                           ; $7b54: $a8
	nop                                              ; $7b55: $00
	add  b                                           ; $7b56: $80
	ld   [bc], a                                     ; $7b57: $02
	add  b                                           ; $7b58: $80
	jp   $3d05                                       ; $7b59: $c3 $05 $3d


	dec  c                                           ; $7b5c: $0d
	inc  c                                           ; $7b5d: $0c
	inc  e                                           ; $7b5e: $1c
	and  b                                           ; $7b5f: $a0
	add  b                                           ; $7b60: $80
	add  d                                           ; $7b61: $82
	nop                                              ; $7b62: $00
	ld   [bc], a                                     ; $7b63: $02
	ld   c, $4e                                      ; $7b64: $0e $4e
	ld   a, [hl]                                     ; $7b66: $7e
	add  d                                           ; $7b67: $82
	ld   a, h                                        ; $7b68: $7c
	add  d                                           ; $7b69: $82
	ld   a, b                                        ; $7b6a: $78
	add  b                                           ; $7b6b: $80
	ld   [hl], b                                     ; $7b6c: $70
	add  c                                           ; $7b6d: $81
	ld   [hl], d                                     ; $7b6e: $72
	ld   d, $0c                                      ; $7b6f: $16 $0c
	nop                                              ; $7b71: $00
	ld   b, b                                        ; $7b72: $40
	add  b                                           ; $7b73: $80
	cpl                                              ; $7b74: $2f
	nop                                              ; $7b75: $00
	xor  a                                           ; $7b76: $af
	add  b                                           ; $7b77: $80
	jr   nz, jr_072_7baa                             ; $7b78: $20 $30

	and  b                                           ; $7b7a: $a0
	or   e                                           ; $7b7b: $b3
	inc  sp                                          ; $7b7c: $33
	scf                                              ; $7b7d: $37
	sub  a                                           ; $7b7e: $97
	cp   e                                           ; $7b7f: $bb
	xor  e                                           ; $7b80: $ab
	nop                                              ; $7b81: $00
	inc  b                                           ; $7b82: $04
	ld   bc, $01d8                                   ; $7b83: $01 $d8 $01
	ld   sp, hl                                      ; $7b86: $f9
	add  c                                           ; $7b87: $81
	ld   sp, $1100                                   ; $7b88: $31 $00 $11
	add  b                                           ; $7b8b: $80
	ld   sp, $1181                                   ; $7b8c: $31 $81 $11
	ld   [bc], a                                     ; $7b8f: $02
	inc  h                                           ; $7b90: $24
	ld   h, b                                        ; $7b91: $60
	and  b                                           ; $7b92: $a0
	add  b                                           ; $7b93: $80
	sub  a                                           ; $7b94: $97
	add  b                                           ; $7b95: $80
	scf                                              ; $7b96: $37
	add  b                                           ; $7b97: $80
	ld   d, a                                        ; $7b98: $57
	add  b                                           ; $7b99: $80

jr_072_7b9a:
	or   a                                           ; $7b9a: $b7
	add  b                                           ; $7b9b: $80

jr_072_7b9c:
	rst  $30                                         ; $7b9c: $f7
	add  b                                           ; $7b9d: $80
	rst  $10                                         ; $7b9e: $d7
	dec  c                                           ; $7b9f: $0d
	sub  a                                           ; $7ba0: $97
	ld   h, e                                        ; $7ba1: $63
	nop                                              ; $7ba2: $00
	rlca                                             ; $7ba3: $07
	ld   hl, sp+$70                                  ; $7ba4: $f8 $70
	ld   h, b                                        ; $7ba6: $60
	db   $eb                                         ; $7ba7: $eb
	add  sp, $42                                     ; $7ba8: $e8 $42

jr_072_7baa:
	ld   b, c                                        ; $7baa: $41
	ei                                               ; $7bab: $fb
	jr   z, jr_072_7bde                              ; $7bac: $28 $30

	add  b                                           ; $7bae: $80
	or   b                                           ; $7baf: $b0

jr_072_7bb0:
	ld   b, $31                                      ; $7bb0: $06 $31
	add  hl, sp                                      ; $7bb2: $39
	nop                                              ; $7bb3: $00
	db   $fc                                         ; $7bb4: $fc
	inc  e                                           ; $7bb5: $1c
	jr   jr_072_7bb0                                 ; $7bb6: $18 $f8

	add  c                                           ; $7bb8: $81
	nop                                              ; $7bb9: $00
	add  b                                           ; $7bba: $80
	rst  $38                                         ; $7bbb: $ff
	add  b                                           ; $7bbc: $80
	nop                                              ; $7bbd: $00
	add  b                                           ; $7bbe: $80
	inc  b                                           ; $7bbf: $04
	inc  bc                                          ; $7bc0: $03
	sub  d                                           ; $7bc1: $92
	sub  h                                           ; $7bc2: $94
	ld   b, [hl]                                     ; $7bc3: $46
	ld   e, [hl]                                     ; $7bc4: $5e
	add  b                                           ; $7bc5: $80
	ld   e, h                                        ; $7bc6: $5c
	add  b                                           ; $7bc7: $80
	ld   a, d                                        ; $7bc8: $7a
	add  b                                           ; $7bc9: $80
	ld   a, h                                        ; $7bca: $7c
	add  b                                           ; $7bcb: $80
	ld   a, b                                        ; $7bcc: $78
	add  b                                           ; $7bcd: $80
	ld   [hl], h                                     ; $7bce: $74
	add  b                                           ; $7bcf: $80
	ld   a, b                                        ; $7bd0: $78
	ld   bc, $6a74                                   ; $7bd1: $01 $74 $6a
	add  b                                           ; $7bd4: $80
	nop                                              ; $7bd5: $00
	nop                                              ; $7bd6: $00
	add  b                                           ; $7bd7: $80
	add  b                                           ; $7bd8: $80
	nop                                              ; $7bd9: $00
	add  b                                           ; $7bda: $80
	add  b                                           ; $7bdb: $80
	add  b                                           ; $7bdc: $80
	nop                                              ; $7bdd: $00

jr_072_7bde:
	add  b                                           ; $7bde: $80
	add  b                                           ; $7bdf: $80
	add  b                                           ; $7be0: $80
	nop                                              ; $7be1: $00
	add  c                                           ; $7be2: $81
	add  b                                           ; $7be3: $80
	ld   bc, $0500                                   ; $7be4: $01 $00 $05
	adc  e                                           ; $7be7: $8b
	nop                                              ; $7be8: $00
	nop                                              ; $7be9: $00
	dec  b                                           ; $7bea: $05
	add  b                                           ; $7beb: $80
	ld   [hl], b                                     ; $7bec: $70
	adc  e                                           ; $7bed: $8b
	rst  $30                                         ; $7bee: $f7
	db   $10                                         ; $7bef: $10
	di                                               ; $7bf0: $f3
	nop                                              ; $7bf1: $00
	ld   d, h                                        ; $7bf2: $54
	xor  b                                           ; $7bf3: $a8
	ld   d, c                                        ; $7bf4: $51
	ld   b, c                                        ; $7bf5: $41
	xor  b                                           ; $7bf6: $a8
	xor  c                                           ; $7bf7: $a9
	ld   b, c                                        ; $7bf8: $41
	ld   b, b                                        ; $7bf9: $40
	db   $fc                                         ; $7bfa: $fc
	dec  hl                                          ; $7bfb: $2b
	rla                                              ; $7bfc: $17
	sub  b                                           ; $7bfd: $90
	and  h                                           ; $7bfe: $a4
	inc  hl                                          ; $7bff: $23
	ccf                                              ; $7c00: $3f
	add  c                                           ; $7c01: $81
	nop                                              ; $7c02: $00
	ld   [de], a                                     ; $7c03: $12
	ldh  a, [$f8]                                    ; $7c04: $f0 $f8
	inc  e                                           ; $7c06: $1c
	db   $ec                                         ; $7c07: $ec
	xor  d                                           ; $7c08: $aa
	ld   l, $7d                                      ; $7c09: $2e $7d
	cp   $ff                                         ; $7c0b: $fe $ff
	nop                                              ; $7c0d: $00
	ld   bc, $fffe                                   ; $7c0e: $01 $fe $ff
	ld   e, $18                                      ; $7c11: $1e $18
	ld   a, $26                                      ; $7c13: $3e $26
	inc  a                                           ; $7c15: $3c
	inc  e                                           ; $7c16: $1c
	add  b                                           ; $7c17: $80
	jr   c, jr_072_7b9a                              ; $7c18: $38 $80

	jr   nc, jr_072_7b9c                             ; $7c1a: $30 $80

	ld   [hl+], a                                    ; $7c1c: $22
	add  b                                           ; $7c1d: $80
	inc  b                                           ; $7c1e: $04
	ld   bc, $c908                                   ; $7c1f: $01 $08 $c9
	add  d                                           ; $7c22: $82
	rst  $38                                         ; $7c23: $ff
	add  b                                           ; $7c24: $80
	xor  d                                           ; $7c25: $aa
	dec  bc                                          ; $7c26: $0b
	ld   d, l                                        ; $7c27: $55
	ld   e, l                                        ; $7c28: $5d
	and  d                                           ; $7c29: $a2
	sub  d                                           ; $7c2a: $92
	ld   b, l                                        ; $7c2b: $45
	add  l                                           ; $7c2c: $85
	ld   [bc], a                                     ; $7c2d: $02
	dec  b                                           ; $7c2e: $05
	rla                                              ; $7c2f: $17
	db   $f4                                         ; $7c30: $f4
	xor  e                                           ; $7c31: $ab
	xor  b                                           ; $7c32: $a8
	add  b                                           ; $7c33: $80
	ld   c, b                                        ; $7c34: $48
	adc  c                                           ; $7c35: $89
	ld   [$1703], sp                                 ; $7c36: $08 $03 $17
	adc  a                                           ; $7c39: $8f
	ld   [hl], c                                     ; $7c3a: $71
	ld   bc, $0280                                   ; $7c3b: $01 $80 $02
	dec  b                                           ; $7c3e: $05
	rlca                                             ; $7c3f: $07
	ld   bc, FarGetAddrBank                                   ; $7c40: $01 $09 $0b
	add  hl, bc                                      ; $7c43: $09
	dec  c                                           ; $7c44: $0d
	add  b                                           ; $7c45: $80
	ld   c, $80                                      ; $7c46: $0e $80
	dec  c                                           ; $7c48: $0d
	inc  b                                           ; $7c49: $04
	ld   a, $76                                      ; $7c4a: $3e $76
	ld   [hl], b                                     ; $7c4c: $70
	ld   a, [hl]                                     ; $7c4d: $7e
	ld   b, [hl]                                     ; $7c4e: $46
	add  h                                           ; $7c4f: $84
	ld   a, [hl]                                     ; $7c50: $7e
	add  b                                           ; $7c51: $80
	ld   l, d                                        ; $7c52: $6a
	add  b                                           ; $7c53: $80
	ld   d, h                                        ; $7c54: $54
	ld   bc, $7068                                   ; $7c55: $01 $68 $70
	add  b                                           ; $7c58: $80
	sbc  e                                           ; $7c59: $9b
	db   $10                                         ; $7c5a: $10
	sbc  d                                           ; $7c5b: $9a
	adc  d                                           ; $7c5c: $8a
	sbc  l                                           ; $7c5d: $9d
	sbc  c                                           ; $7c5e: $99
	sbc  h                                           ; $7c5f: $9c
	inc  e                                           ; $7c60: $1c
	ld   e, $96                                      ; $7c61: $1e $96
	adc  [hl]                                        ; $7c63: $8e
	ld   a, [bc]                                     ; $7c64: $0a
	inc  c                                           ; $7c65: $0c
	adc  h                                           ; $7c66: $8c
	add  b                                           ; $7c67: $80
	add  l                                           ; $7c68: $85
	ld   sp, $3110                                   ; $7c69: $31 $10 $31
	add  [hl]                                        ; $7c6c: $86
	jr   nc, jr_072_7c6f                             ; $7c6d: $30 $00

jr_072_7c6f:
	db   $10                                         ; $7c6f: $10
	add  b                                           ; $7c70: $80
	jr   nc, jr_072_7c74                             ; $7c71: $30 $01

	nop                                              ; $7c73: $00

jr_072_7c74:
	push af                                          ; $7c74: $f5
	add  b                                           ; $7c75: $80

jr_072_7c76:
	scf                                              ; $7c76: $37
	ld   bc, $07f7                                   ; $7c77: $01 $f7 $07
	add  h                                           ; $7c7a: $84
	rst  $30                                         ; $7c7b: $f7
	add  b                                           ; $7c7c: $80
	rst  $20                                         ; $7c7d: $e7
	add  b                                           ; $7c7e: $80
	rst  $10                                         ; $7c7f: $d7

jr_072_7c80:
	ld   [bc], a                                     ; $7c80: $02
	rst  $20                                         ; $7c81: $e7
	rst  $28                                         ; $7c82: $ef
	pop  af                                          ; $7c83: $f1
	add  b                                           ; $7c84: $80
	jp   hl                                          ; $7c85: $e9


	add  b                                           ; $7c86: $80
	pop  de                                          ; $7c87: $d1
	inc  bc                                          ; $7c88: $03
	ld   sp, hl                                      ; $7c89: $f9
	ld   hl, sp+$50                                  ; $7c8a: $f8 $50
	ld   d, c                                        ; $7c8c: $51
	add  b                                           ; $7c8d: $80
	xor  c                                           ; $7c8e: $a9
	add  b                                           ; $7c8f: $80
	ld   d, c                                        ; $7c90: $51
	add  b                                           ; $7c91: $80
	xor  c                                           ; $7c92: $a9
	ld   [bc], a                                     ; $7c93: $02
	ld   sp, hl                                      ; $7c94: $f9
	sbc  d                                           ; $7c95: $9a
	ld   a, [de]                                     ; $7c96: $1a
	add  b                                           ; $7c97: $80
	db   $dd                                         ; $7c98: $dd
	ld   bc, $4dcd                                   ; $7c99: $01 $cd $4d
	add  b                                           ; $7c9c: $80
	or   l                                           ; $7c9d: $b5
	rlca                                             ; $7c9e: $07
	nop                                              ; $7c9f: $00
	or   b                                           ; $7ca0: $b0
	add  hl, bc                                      ; $7ca1: $09
	add  hl, de                                      ; $7ca2: $19
	ld   [de], a                                     ; $7ca3: $12
	ld   [hl+], a                                    ; $7ca4: $22
	add  hl, hl                                      ; $7ca5: $29
	and  a                                           ; $7ca6: $a7
	add  b                                           ; $7ca7: $80
	ld   a, b                                        ; $7ca8: $78
	adc  e                                           ; $7ca9: $8b
	ld   [hl], b                                     ; $7caa: $70
	db   $10                                         ; $7cab: $10
	ld   c, h                                        ; $7cac: $4c
	or   [hl]                                        ; $7cad: $b6
	sbc  b                                           ; $7cae: $98
	cp   [hl]                                        ; $7caf: $be
	or   [hl]                                        ; $7cb0: $b6
	cp   [hl]                                        ; $7cb1: $be
	sbc  b                                           ; $7cb2: $98
	sbc  h                                           ; $7cb3: $9c
	ld   l, $0c                                      ; $7cb4: $2e $0c
	sub  [hl]                                        ; $7cb6: $96
	or   l                                           ; $7cb7: $b5
	ld   b, $37                                      ; $7cb8: $06 $37
	or   b                                           ; $7cba: $b0
	or   c                                           ; $7cbb: $b1
	adc  d                                           ; $7cbc: $8a
	add  b                                           ; $7cbd: $80
	nop                                              ; $7cbe: $00
	dec  c                                           ; $7cbf: $0d
	jr   z, jr_072_7cc2                              ; $7cc0: $28 $00

jr_072_7cc2:
	jr   z, jr_072_7cc4                              ; $7cc2: $28 $00

jr_072_7cc4:
	jr   c, @+$22                                    ; $7cc4: $38 $20

	jr   nc, jr_072_7c80                             ; $7cc6: $30 $b8

	add  sp, $50                                     ; $7cc8: $e8 $50
	ret  nc                                          ; $7cca: $d0

	jr   c, jr_072_7ce5                              ; $7ccb: $38 $18

	db   $dd                                         ; $7ccd: $dd
	adc  b                                           ; $7cce: $88
	rst  $30                                         ; $7ccf: $f7

jr_072_7cd0:
	add  b                                           ; $7cd0: $80
	rst  $20                                         ; $7cd1: $e7
	add  b                                           ; $7cd2: $80
	rst  $10                                         ; $7cd3: $d7
	ld   [bc], a                                     ; $7cd4: $02
	rst  $20                                         ; $7cd5: $e7
	ld   c, a                                        ; $7cd6: $4f
	ld   d, b                                        ; $7cd7: $50
	add  b                                           ; $7cd8: $80
	add  b                                           ; $7cd9: $80
	add  c                                           ; $7cda: $81
	nop                                              ; $7cdb: $00
	nop                                              ; $7cdc: $00
	inc  bc                                          ; $7cdd: $03
	add  c                                           ; $7cde: $81
	nop                                              ; $7cdf: $00
	ld   bc, $0003                                   ; $7ce0: $01 $03 $00
	add  c                                           ; $7ce3: $81
	inc  bc                                          ; $7ce4: $03

jr_072_7ce5:
	ld   b, $fb                                      ; $7ce5: $06 $fb
	ld   b, $08                                      ; $7ce7: $06 $08
	ld   c, $1e                                      ; $7ce9: $0e $1e
	ld   a, [de]                                     ; $7ceb: $1a
	sbc  d                                           ; $7cec: $9a
	add  b                                           ; $7ced: $80
	ld   a, [de]                                     ; $7cee: $1a
	ld   bc, $da9a                                   ; $7cef: $01 $9a $da
	add  b                                           ; $7cf2: $80
	jr   jr_072_7c76                                 ; $7cf3: $18 $81

	ret  c                                           ; $7cf5: $d8

	inc  b                                           ; $7cf6: $04
	jr   c, jr_072_7d0b                              ; $7cf7: $38 $12

	db   $10                                         ; $7cf9: $10
	ld   h, $1a                                      ; $7cfa: $26 $1a
	add  h                                           ; $7cfc: $84
	ld   a, $83                                      ; $7cfd: $3e $83
	cp   [hl]                                        ; $7cff: $be
	nop                                              ; $7d00: $00
	ld   b, c                                        ; $7d01: $41
	add  d                                           ; $7d02: $82
	rst  $38                                         ; $7d03: $ff
	add  b                                           ; $7d04: $80
	cp   a                                           ; $7d05: $bf
	add  hl, bc                                      ; $7d06: $09
	ld   d, l                                        ; $7d07: $55
	ld   d, h                                        ; $7d08: $54
	xor  d                                           ; $7d09: $aa
	xor  h                                           ; $7d0a: $ac

jr_072_7d0b:
	ld   d, b                                        ; $7d0b: $50
	ld   c, b                                        ; $7d0c: $48
	and  [hl]                                        ; $7d0d: $a6
	ld   b, [hl]                                     ; $7d0e: $46
	sbc  $3e                                         ; $7d0f: $de $3e
	add  b                                           ; $7d11: $80
	ld   [$e883], sp                                 ; $7d12: $08 $83 $e8
	add  [hl]                                        ; $7d15: $86
	jp   hl                                          ; $7d16: $e9


	ld   bc, $0e06                                   ; $7d17: $01 $06 $0e
	add  b                                           ; $7d1a: $80
	dec  c                                           ; $7d1b: $0d
	add  b                                           ; $7d1c: $80
	ld   c, $80                                      ; $7d1d: $0e $80
	dec  c                                           ; $7d1f: $0d
	inc  bc                                          ; $7d20: $03
	ld   l, [hl]                                     ; $7d21: $6e
	ld   l, $2d                                      ; $7d22: $2e $2d
	ld   l, l                                        ; $7d24: $6d
	add  b                                           ; $7d25: $80
	dec  bc                                          ; $7d26: $0b
	add  b                                           ; $7d27: $80
	db   $eb                                         ; $7d28: $eb
	nop                                              ; $7d29: $00
	nop                                              ; $7d2a: $00
	add  b                                           ; $7d2b: $80
	ld   d, b                                        ; $7d2c: $50
	add  b                                           ; $7d2d: $80
	ld   l, b                                        ; $7d2e: $68
	add  b                                           ; $7d2f: $80
	ld   d, b                                        ; $7d30: $50
	add  b                                           ; $7d31: $80
	ld   h, b                                        ; $7d32: $60
	add  l                                           ; $7d33: $85
	ld   b, b                                        ; $7d34: $40
	db   $10                                         ; $7d35: $10
	ldh  a, [$30]                                    ; $7d36: $f0 $30
	add  b                                           ; $7d38: $80

jr_072_7d39:
	or   b                                           ; $7d39: $b0
	jr   nc, jr_072_7d5d                             ; $7d3a: $30 $21

	and  c                                           ; $7d3c: $a1
	or   c                                           ; $7d3d: $b1
	ld   de, $b010                                   ; $7d3e: $11 $10 $b0
	sbc  d                                           ; $7d41: $9a
	ld   e, $09                                      ; $7d42: $1e $09
	dec  b                                           ; $7d44: $05
	inc  b                                           ; $7d45: $04
	adc  c                                           ; $7d46: $89
	add  c                                           ; $7d47: $81
	nop                                              ; $7d48: $00
	ld   [$b090], sp                                 ; $7d49: $08 $90 $b0
	jr   nz, @-$4e                                   ; $7d4c: $20 $b0

	jr   nc, jr_072_7cd0                             ; $7d4e: $30 $80

	pop  af                                          ; $7d50: $f1
	ldh  a, [$60]                                    ; $7d51: $f0 $60
	add  b                                           ; $7d53: $80
	ldh  [$09], a                                    ; $7d54: $e0 $09
	ldh  a, [rSCX]                                   ; $7d56: $f0 $43
	nop                                              ; $7d58: $00
	ld   [hl], b                                     ; $7d59: $70
	nop                                              ; $7d5a: $00
	ldh  [rP1], a                                    ; $7d5b: $e0 $00

jr_072_7d5d:
	ret  nz                                          ; $7d5d: $c0

	nop                                              ; $7d5e: $00
	add  b                                           ; $7d5f: $80
	add  l                                           ; $7d60: $85
	nop                                              ; $7d61: $00
	ld   bc, $51af                                   ; $7d62: $01 $af $51
	add  b                                           ; $7d65: $80
	add  c                                           ; $7d66: $81
	add  b                                           ; $7d67: $80
	ld   b, c                                        ; $7d68: $41
	add  b                                           ; $7d69: $80
	add  c                                           ; $7d6a: $81
	add  h                                           ; $7d6b: $84
	ld   bc, $0080                                   ; $7d6c: $01 $80 $00
	db   $10                                         ; $7d6f: $10
	ld   d, c                                        ; $7d70: $51
	ld   [de], a                                     ; $7d71: $12
	ld   [hl+], a                                    ; $7d72: $22
	ld   hl, $0a09                                   ; $7d73: $21 $09 $0a
	ld   a, [de]                                     ; $7d76: $1a
	add  hl, de                                      ; $7d77: $19
	ld   sp, $2e32                                   ; $7d78: $31 $32 $2e
	ld   hl, $243d                                   ; $7d7b: $21 $3d $24
	inc  [hl]                                        ; $7d7e: $34
	dec  h                                           ; $7d7f: $25
	and  e                                           ; $7d80: $a3
	add  h                                           ; $7d81: $84
	ld   [hl], b                                     ; $7d82: $70
	add  b                                           ; $7d83: $80
	ld   a, b                                        ; $7d84: $78
	add  b                                           ; $7d85: $80
	ld   [hl], h                                     ; $7d86: $74
	ld   [bc], a                                     ; $7d87: $02
	ld   a, d                                        ; $7d88: $7a
	ld   [hl], b                                     ; $7d89: $70
	ld   d, h                                        ; $7d8a: $54
	add  b                                           ; $7d8b: $80
	ld   b, b                                        ; $7d8c: $40
	dec  bc                                          ; $7d8d: $0b
	nop                                              ; $7d8e: $00
	cp   a                                           ; $7d8f: $bf
	rst  $38                                         ; $7d90: $ff
	add  b                                           ; $7d91: $80
	jr   jr_072_7dfb                                 ; $7d92: $18 $67

	rst  $38                                         ; $7d94: $ff
	sbc  b                                           ; $7d95: $98
	jr   jr_072_7db4                                 ; $7d96: $18 $1c

	add  h                                           ; $7d98: $84
	cp   h                                           ; $7d99: $bc
	add  c                                           ; $7d9a: $81
	inc  a                                           ; $7d9b: $3c
	rlca                                             ; $7d9c: $07
	inc  e                                           ; $7d9d: $1c
	cp   c                                           ; $7d9e: $b9
	ret  nz                                          ; $7d9f: $c0

	ld   sp, hl                                      ; $7da0: $f9
	ld   bc, $b141                                   ; $7da1: $01 $41 $b1
	pop  af                                          ; $7da4: $f1
	add  b                                           ; $7da5: $80
	ld   b, c                                        ; $7da6: $41
	ld   [$a1e1], sp                                 ; $7da7: $08 $e1 $a1
	pop  hl                                          ; $7daa: $e1
	pop  bc                                          ; $7dab: $c1
	pop  af                                          ; $7dac: $f1
	ld   [hl], c                                     ; $7dad: $71

jr_072_7dae:
	ld   [hl], b                                     ; $7dae: $70
	add  e                                           ; $7daf: $83
	ldh  [$81], a                                    ; $7db0: $e0 $81
	jr   nc, jr_072_7d39                             ; $7db2: $30 $85

jr_072_7db4:
	ld   [hl], b                                     ; $7db4: $70
	inc  b                                           ; $7db5: $04
	ldh  a, [$b0]                                    ; $7db6: $f0 $b0
	ldh  a, [$e0]                                    ; $7db8: $f0 $e0
	rra                                              ; $7dba: $1f
	adc  l                                           ; $7dbb: $8d
	nop                                              ; $7dbc: $00
	nop                                              ; $7dbd: $00
	and  $88                                         ; $7dbe: $e6 $88
	jr   @-$7d                                       ; $7dc0: $18 $81

	ld   a, [de]                                     ; $7dc2: $1a
	add  b                                           ; $7dc3: $80
	ld   a, [bc]                                     ; $7dc4: $0a
	nop                                              ; $7dc5: $00
	inc  b                                           ; $7dc6: $04
	adc  l                                           ; $7dc7: $8d
	cp   [hl]                                        ; $7dc8: $be
	dec  b                                           ; $7dc9: $05
	cp   a                                           ; $7dca: $bf
	ld   c, c                                        ; $7dcb: $49
	ld   c, b                                        ; $7dcc: $48
	adc  b                                           ; $7dcd: $88
	adc  c                                           ; $7dce: $89
	ret                                              ; $7dcf: $c9


	add  c                                           ; $7dd0: $81
	ret  z                                           ; $7dd1: $c8

	add  b                                           ; $7dd2: $80
	ld   [$c883], sp                                 ; $7dd3: $08 $83 $c8
	ld   bc, $4c84                                   ; $7dd6: $01 $84 $4c
	add  b                                           ; $7dd9: $80
	xor  l                                           ; $7dda: $ad

jr_072_7ddb:
	add  b                                           ; $7ddb: $80
	ld   c, [hl]                                     ; $7ddc: $4e
	add  b                                           ; $7ddd: $80
	inc  e                                           ; $7dde: $1c
	add  b                                           ; $7ddf: $80
	ld   a, [de]                                     ; $7de0: $1a
	add  b                                           ; $7de1: $80
	inc  d                                           ; $7de2: $14
	add  b                                           ; $7de3: $80
	ld   a, [de]                                     ; $7de4: $1a
	add  b                                           ; $7de5: $80
	inc  a                                           ; $7de6: $3c
	nop                                              ; $7de7: $00
	nop                                              ; $7de8: $00
	adc  l                                           ; $7de9: $8d
	ld   b, b                                        ; $7dea: $40
	rlca                                             ; $7deb: $07
	ret  nz                                          ; $7dec: $c0

	ld   b, $07                                      ; $7ded: $06 $07

jr_072_7def:
	ld   [bc], a                                     ; $7def: $02
	dec  b                                           ; $7df0: $05
	add  hl, sp                                      ; $7df1: $39
	ccf                                              ; $7df2: $3f
	ld   bc, $0080                                   ; $7df3: $01 $80 $00
	nop                                              ; $7df6: $00
	ld   bc, $3d80                                   ; $7df7: $01 $80 $3d
	add  b                                           ; $7dfa: $80

jr_072_7dfb:
	inc  a                                           ; $7dfb: $3c
	rlca                                             ; $7dfc: $07
	ld   a, $1a                                      ; $7dfd: $3e $1a
	nop                                              ; $7dff: $00
	and  b                                           ; $7e00: $a0
	nop                                              ; $7e01: $00
	ldh  a, [rP1]                                    ; $7e02: $f0 $00
	ldh  a, [$84]                                    ; $7e04: $f0 $84
	add  b                                           ; $7e06: $80
	inc  bc                                          ; $7e07: $03
	nop                                              ; $7e08: $00
	ldh  a, [rP1]                                    ; $7e09: $f0 $00
	di                                               ; $7e0b: $f3
	add  e                                           ; $7e0c: $83
	nop                                              ; $7e0d: $00
	ld   a, [bc]                                     ; $7e0e: $0a
	dec  b                                           ; $7e0f: $05
	nop                                              ; $7e10: $00
	rlca                                             ; $7e11: $07
	nop                                              ; $7e12: $00
	rlca                                             ; $7e13: $07
	nop                                              ; $7e14: $00
	rlca                                             ; $7e15: $07
	nop                                              ; $7e16: $00
	ld   b, $00                                      ; $7e17: $06 $00
	ei                                               ; $7e19: $fb
	add  c                                           ; $7e1a: $81
	ld   bc, $0080                                   ; $7e1b: $01 $80 $00
	add  b                                           ; $7e1e: $80
	ld   bc, $0080                                   ; $7e1f: $01 $80 $00
	ld   [$0050], sp                                 ; $7e22: $08 $50 $00
	ld   hl, sp+$00                                  ; $7e25: $f8 $00
	add  sp, $00                                     ; $7e27: $e8 $00
	dec  hl                                          ; $7e29: $2b
	inc  l                                           ; $7e2a: $2c
	jr   z, jr_072_7dae                              ; $7e2b: $28 $81

	inc  l                                           ; $7e2d: $2c
	add  b                                           ; $7e2e: $80
	ld   l, $00                                      ; $7e2f: $2e $00
	inc  l                                           ; $7e31: $2c
	add  c                                           ; $7e32: $81
	ld   l, $04                                      ; $7e33: $2e $04
	daa                                              ; $7e35: $27
	ld   l, $2c                                      ; $7e36: $2e $2c
	ld   l, $b1                                      ; $7e38: $2e $b1
	add  c                                           ; $7e3a: $81
	ld   a, h                                        ; $7e3b: $7c
	nop                                              ; $7e3c: $00
	ld   a, $80                                      ; $7e3d: $3e $80
	nop                                              ; $7e3f: $00
	add  a                                           ; $7e40: $87
	add  b                                           ; $7e41: $80
	ld   bc, $8cd8                                   ; $7e42: $01 $d8 $8c
	add  b                                           ; $7e45: $80
	xor  h                                           ; $7e46: $ac
	ld   de, $9ca0                                   ; $7e47: $11 $a0 $9c
	sub  d                                           ; $7e4a: $92
	sbc  e                                           ; $7e4b: $9b
	sub  h                                           ; $7e4c: $94
	cp   l                                           ; $7e4d: $bd
	or   c                                           ; $7e4e: $b1
	sbc  c                                           ; $7e4f: $99
	sub  l                                           ; $7e50: $95
	cp   l                                           ; $7e51: $bd
	or   c                                           ; $7e52: $b1
	cp   c                                           ; $7e53: $b9
	db   $e4                                         ; $7e54: $e4
	sub  b                                           ; $7e55: $90
	ld   d, b                                        ; $7e56: $50
	ld   [hl], b                                     ; $7e57: $70
	nop                                              ; $7e58: $00
	jr   nc, jr_072_7ddb                             ; $7e59: $30 $80

	or   b                                           ; $7e5b: $b0
	ld   [bc], a                                     ; $7e5c: $02
	jr   jr_072_7def                                 ; $7e5d: $18 $90

	add  b                                           ; $7e5f: $80
	add  e                                           ; $7e60: $83
	sbc  b                                           ; $7e61: $98
	nop                                              ; $7e62: $00
	ld   [hl], e                                     ; $7e63: $73
	add  b                                           ; $7e64: $80
	ld   b, b                                        ; $7e65: $40
	add  c                                           ; $7e66: $81
	nop                                              ; $7e67: $00
	dec  de                                          ; $7e68: $1b
	dec  b                                           ; $7e69: $05
	nop                                              ; $7e6a: $00
	rlca                                             ; $7e6b: $07
	nop                                              ; $7e6c: $00
	rlca                                             ; $7e6d: $07
	nop                                              ; $7e6e: $00
	rlca                                             ; $7e6f: $07
	nop                                              ; $7e70: $00
	ld   b, $00                                      ; $7e71: $06 $00
	ei                                               ; $7e73: $fb
	nop                                              ; $7e74: $00
	ld   d, b                                        ; $7e75: $50
	inc  bc                                          ; $7e76: $03
	ldh  a, [c]                                      ; $7e77: $f2
	inc  bc                                          ; $7e78: $03
	ldh  a, [rSB]                                    ; $7e79: $f0 $01
	di                                               ; $7e7b: $f3
	inc  bc                                          ; $7e7c: $03
	di                                               ; $7e7d: $f3
	inc  bc                                          ; $7e7e: $03
	ld   a, [$e803]                                  ; $7e7f: $fa $03 $e8
	inc  bc                                          ; $7e82: $03
	xor  l                                           ; $7e83: $ad
	inc  d                                           ; $7e84: $14
	add  b                                           ; $7e85: $80
	adc  [hl]                                        ; $7e86: $8e
	inc  bc                                          ; $7e87: $03
	sub  [hl]                                        ; $7e88: $96
	sub  d                                           ; $7e89: $92
	ld   c, $0a                                      ; $7e8a: $0e $0a
	add  b                                           ; $7e8c: $80
	add  h                                           ; $7e8d: $84
	add  d                                           ; $7e8e: $82
	add  b                                           ; $7e8f: $80
	add  b                                           ; $7e90: $80
	ret  nz                                          ; $7e91: $c0

	nop                                              ; $7e92: $00
	nop                                              ; $7e93: $00
	add  [hl]                                        ; $7e94: $86
	cp   [hl]                                        ; $7e95: $be
	add  b                                           ; $7e96: $80
	cp   d                                           ; $7e97: $ba
	add  b                                           ; $7e98: $80
	xor  [hl]                                        ; $7e99: $ae
	add  b                                           ; $7e9a: $80
	or   h                                           ; $7e9b: $b4
	add  b                                           ; $7e9c: $80
	xor  d                                           ; $7e9d: $aa
	add  d                                           ; $7e9e: $82
	ret  z                                           ; $7e9f: $c8

	add  b                                           ; $7ea0: $80
	ld   c, b                                        ; $7ea1: $48
	add  b                                           ; $7ea2: $80
	adc  b                                           ; $7ea3: $88
	add  b                                           ; $7ea4: $80
	ld   c, b                                        ; $7ea5: $48
	add  b                                           ; $7ea6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ea7: $cf
	add  c                                           ; $7ea8: $81
	nop                                              ; $7ea9: $00
	add  b                                           ; $7eaa: $80
	ld   a, [hl-]                                    ; $7eab: $3a
	add  b                                           ; $7eac: $80
	inc  [hl]                                        ; $7ead: $34
	add  b                                           ; $7eae: $80
	ld   a, [hl-]                                    ; $7eaf: $3a
	add  b                                           ; $7eb0: $80
	halt                                             ; $7eb1: $76
	add  b                                           ; $7eb2: $80
	ld   l, d                                        ; $7eb3: $6a
	nop                                              ; $7eb4: $00
	nop                                              ; $7eb5: $00
	add  b                                           ; $7eb6: $80
	rst  $38                                         ; $7eb7: $ff
	add  b                                           ; $7eb8: $80
	nop                                              ; $7eb9: $00
	add  b                                           ; $7eba: $80
	ld   a, a                                        ; $7ebb: $7f
	adc  b                                           ; $7ebc: $88
	ld   b, b                                        ; $7ebd: $40
	add  b                                           ; $7ebe: $80
	ret  nz                                          ; $7ebf: $c0

	add  b                                           ; $7ec0: $80
	nop                                              ; $7ec1: $00
	ld   [bc], a                                     ; $7ec2: $02
	ld   hl, sp+$46                                  ; $7ec3: $f8 $46
	nop                                              ; $7ec5: $00
	add  b                                           ; $7ec6: $80
	ld   a, $80                                      ; $7ec7: $3e $80
	nop                                              ; $7ec9: $00
	add  c                                           ; $7eca: $81
	ld   a, $0b                                      ; $7ecb: $3e $0b
	nop                                              ; $7ecd: $00
	ld   a, a                                        ; $7ece: $7f
	nop                                              ; $7ecf: $00
	rst  $38                                         ; $7ed0: $ff
	nop                                              ; $7ed1: $00
	rst  $38                                         ; $7ed2: $ff
	nop                                              ; $7ed3: $00
	dec  bc                                          ; $7ed4: $0b
	nop                                              ; $7ed5: $00
	ldh  a, [rP1]                                    ; $7ed6: $f0 $00
	ldh  a, [$81]                                    ; $7ed8: $f0 $81
	nop                                              ; $7eda: $00
	ld   a, [bc]                                     ; $7edb: $0a
	ldh  a, [rP1]                                    ; $7edc: $f0 $00
	ld   hl, sp+$00                                  ; $7ede: $f8 $00
	db   $fc                                         ; $7ee0: $fc
	nop                                              ; $7ee1: $00
	add  b                                           ; $7ee2: $80
	nop                                              ; $7ee3: $00
	add  [hl]                                        ; $7ee4: $86
	nop                                              ; $7ee5: $00
	inc  b                                           ; $7ee6: $04
	add  c                                           ; $7ee7: $81
	nop                                              ; $7ee8: $00
	ld   hl, $0001                                   ; $7ee9: $21 $01 $00
	inc  bc                                          ; $7eec: $03
	nop                                              ; $7eed: $00
	rlca                                             ; $7eee: $07
	nop                                              ; $7eef: $00
	rlca                                             ; $7ef0: $07
	nop                                              ; $7ef1: $00
	ld   bc, $6800                                   ; $7ef2: $01 $00 $68
	nop                                              ; $7ef5: $00
	ret  nz                                          ; $7ef6: $c0

	nop                                              ; $7ef7: $00
	add  c                                           ; $7ef8: $81
	nop                                              ; $7ef9: $00
	ld   de, $3000                                   ; $7efa: $11 $00 $30
	nop                                              ; $7efd: $00

Call_072_7efe:
	ldh  a, [rP1]                                    ; $7efe: $f0 $00
	ld   hl, sp+$00                                  ; $7f00: $f8 $00

Jump_072_7f02:
	add  c                                           ; $7f02: $81
	nop                                              ; $7f03: $00
	dec  a                                           ; $7f04: $3d
	ld   a, [bc]                                     ; $7f05: $0a
	ld   [bc], a                                     ; $7f06: $02
	ld   a, [bc]                                     ; $7f07: $0a
	rra                                              ; $7f08: $1f
	ld   b, b                                        ; $7f09: $40
	rst  $30                                         ; $7f0a: $f7
	add  sp, -$80                                    ; $7f0b: $e8 $80
	sub  $80                                         ; $7f0d: $d6 $80
	cp   $80                                         ; $7f0f: $fe $80
	nop                                              ; $7f11: $00
	ld   [bc], a                                     ; $7f12: $02
	rst  $38                                         ; $7f13: $ff
	nop                                              ; $7f14: $00
	ld   b, b                                        ; $7f15: $40
	add  d                                           ; $7f16: $82
	nop                                              ; $7f17: $00

jr_072_7f18:
	add  l                                           ; $7f18: $85
	add  b                                           ; $7f19: $80
	ld   b, $30                                      ; $7f1a: $06 $30
	nop                                              ; $7f1c: $00
	cp   $00                                         ; $7f1d: $fe $00
	inc  sp                                          ; $7f1f: $33
	call $80f0                                       ; $7f20: $cd $f0 $80
	add  b                                           ; $7f23: $80
	add  d                                           ; $7f24: $82
	ld   hl, sp-$7e                                  ; $7f25: $f8 $82
	rst  $38                                         ; $7f27: $ff
	add  b                                           ; $7f28: $80
	nop                                              ; $7f29: $00
	inc  bc                                          ; $7f2a: $03
	rst  $38                                         ; $7f2b: $ff
	ld   l, e                                        ; $7f2c: $6b
	ldh  a, [$60]                                    ; $7f2d: $f0 $60
	add  b                                           ; $7f2f: $80
	nop                                              ; $7f30: $00
	nop                                              ; $7f31: $00
	ld   a, b                                        ; $7f32: $78
	add  b                                           ; $7f33: $80
	ld   [hl], b                                     ; $7f34: $70
	ld   bc, $68e8                                   ; $7f35: $01 $e8 $68
	add  b                                           ; $7f38: $80
	ld   d, b                                        ; $7f39: $50
	ld   b, $fc                                      ; $7f3a: $06 $fc
	nop                                              ; $7f3c: $00
	add  b                                           ; $7f3d: $80
	nop                                              ; $7f3e: $00
	add  [hl]                                        ; $7f3f: $86
	nop                                              ; $7f40: $00
	inc  b                                           ; $7f41: $04
	add  c                                           ; $7f42: $81
	nop                                              ; $7f43: $00

jr_072_7f44:
	ld   h, $01                                      ; $7f44: $26 $01
	nop                                              ; $7f46: $00
	inc  bc                                          ; $7f47: $03
	nop                                              ; $7f48: $00
	rlca                                             ; $7f49: $07
	nop                                              ; $7f4a: $00
	rlca                                             ; $7f4b: $07
	nop                                              ; $7f4c: $00
	ld   bc, $6b00                                   ; $7f4d: $01 $00 $6b
	ld   bc, $02c2                                   ; $7f50: $01 $c2 $02
	add  e                                           ; $7f53: $83
	inc  bc                                          ; $7f54: $03
	ld   de, $2301                                   ; $7f55: $11 $01 $23
	ld   bc, $00e2                                   ; $7f58: $01 $e2 $00
	ei                                               ; $7f5b: $fb
	nop                                              ; $7f5c: $00
	db   $fc                                         ; $7f5d: $fc
	nop                                              ; $7f5e: $00
	inc  e                                           ; $7f5f: $1c
	ld   b, b                                        ; $7f60: $40
	ldh  a, [hScriptOpcodeParams]                                    ; $7f61: $f0 $a0
	db   $f4                                         ; $7f63: $f4
	ld   hl, sp-$58                                  ; $7f64: $f8 $a8
	cp   $57                                         ; $7f66: $fe $57
	cp   $fc                                         ; $7f68: $fe $fc
	nop                                              ; $7f6a: $00
	rst  $38                                         ; $7f6b: $ff
	add  d                                           ; $7f6c: $82
	nop                                              ; $7f6d: $00
	add  b                                           ; $7f6e: $80
	or   h                                           ; $7f6f: $b4
	add  b                                           ; $7f70: $80
	xor  d                                           ; $7f71: $aa
	add  b                                           ; $7f72: $80
	sub  h                                           ; $7f73: $94
	add  b                                           ; $7f74: $80
	xor  d                                           ; $7f75: $aa
	add  b                                           ; $7f76: $80
	add  b                                           ; $7f77: $80
	add  b                                           ; $7f78: $80
	cp   [hl]                                        ; $7f79: $be
	add  b                                           ; $7f7a: $80
	nop                                              ; $7f7b: $00
	ld   bc, $e718                                   ; $7f7c: $01 $18 $e7
	xor  [hl]                                        ; $7f7f: $ae
	nop                                              ; $7f80: $00
	add  b                                           ; $7f81: $80
	xor  a                                           ; $7f82: $af
	ld   b, $57                                      ; $7f83: $06 $57
	rst  $10                                         ; $7f85: $d7
	dec  hl                                          ; $7f86: $2b
	ld   e, e                                        ; $7f87: $5b
	rlca                                             ; $7f88: $07
	dec  bc                                          ; $7f89: $0b
	inc  bc                                          ; $7f8a: $03
	add  d                                           ; $7f8b: $82
	nop                                              ; $7f8c: $00
	add  d                                           ; $7f8d: $82
	ld   hl, sp-$7e                                  ; $7f8e: $f8 $82
	ld   [$8880], sp                                 ; $7f90: $08 $80 $88
	add  b                                           ; $7f93: $80
	ld   c, b                                        ; $7f94: $48
	add  b                                           ; $7f95: $80
	jr   z, jr_072_7f18                              ; $7f96: $28 $80

	adc  b                                           ; $7f98: $88
	add  b                                           ; $7f99: $80
	ld   [$f8a4], sp                                 ; $7f9a: $08 $a4 $f8
	ld   c, $78                                      ; $7f9d: $0e $78
	ld   hl, sp+$28                                  ; $7f9f: $f8 $28
	ld   hl, sp+$00                                  ; $7fa1: $f8 $00
	ld   hl, sp+$00                                  ; $7fa3: $f8 $00
	ld   hl, sp+$00                                  ; $7fa5: $f8 $00
	ld   hl, sp+$00                                  ; $7fa7: $f8 $00
	ld   hl, sp+$00                                  ; $7fa9: $f8 $00
	ld   hl, sp-$58                                  ; $7fab: $f8 $a8
	add  b                                           ; $7fad: $80
	ld   hl, sp-$80                                  ; $7fae: $f8 $80
	nop                                              ; $7fb0: $00
	add  b                                           ; $7fb1: $80
	inc  b                                           ; $7fb2: $04
	add  b                                           ; $7fb3: $80
	jr   @-$7e                                       ; $7fb4: $18 $80

	ld   h, a                                        ; $7fb6: $67
	ld   b, $9f                                      ; $7fb7: $06 $9f
	ld   h, a                                        ; $7fb9: $67
	nop                                              ; $7fba: $00
	jr   c, jr_072_7fbd                              ; $7fbb: $38 $00

jr_072_7fbd:
	ret  nz                                          ; $7fbd: $c0

	nop                                              ; $7fbe: $00
	add  b                                           ; $7fbf: $80
	inc  c                                           ; $7fc0: $0c
	add  c                                           ; $7fc1: $81
	jr   nc, jr_072_7f44                             ; $7fc2: $30 $80

	jr   c, jr_072_7fc6                              ; $7fc4: $38 $00

jr_072_7fc6:
	inc  a                                           ; $7fc6: $3c
	add  b                                           ; $7fc7: $80
	ld   a, $00                                      ; $7fc8: $3e $00
	ccf                                              ; $7fca: $3f
	adc  a                                           ; $7fcb: $8f
	scf                                              ; $7fcc: $37
	ld   [bc], a                                     ; $7fcd: $02
	daa                                              ; $7fce: $27
	dec  hl                                          ; $7fcf: $2b
	add  hl, hl                                      ; $7fd0: $29
	add  c                                           ; $7fd1: $81
	dec  l                                           ; $7fd2: $2d
	add  c                                           ; $7fd3: $81
	dec  c                                           ; $7fd4: $0d
	add  b                                           ; $7fd5: $80
	dec  b                                           ; $7fd6: $05
	add  b                                           ; $7fd7: $80
	ld   bc, $0500                                   ; $7fd8: $01 $00 $05
	adc  b                                           ; $7fdb: $88
	rlca                                             ; $7fdc: $07
	ld   d, $06                                      ; $7fdd: $16 $06
	rlca                                             ; $7fdf: $07
	dec  b                                           ; $7fe0: $05
	rlca                                             ; $7fe1: $07
	dec  b                                           ; $7fe2: $05
	rlca                                             ; $7fe3: $07
	dec  b                                           ; $7fe4: $05
	rlca                                             ; $7fe5: $07
	dec  b                                           ; $7fe6: $05
	rlca                                             ; $7fe7: $07
	dec  b                                           ; $7fe8: $05
	rlca                                             ; $7fe9: $07
	dec  b                                           ; $7fea: $05
	rlca                                             ; $7feb: $07
	ld   l, b                                        ; $7fec: $68
	rst  $38                                         ; $7fed: $ff
	ld   l, h                                        ; $7fee: $6c
	rst  $38                                         ; $7fef: $ff
	cp   $ff                                         ; $7ff0: $fe $ff
	or   e                                           ; $7ff2: $b3
	rst  $38                                         ; $7ff3: $ff
	or   e                                           ; $7ff4: $b3
	call $0000                                      ; $7ff5: $cd $00 $00
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
