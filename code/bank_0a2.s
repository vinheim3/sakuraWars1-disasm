; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0a2", ROMX[$4000], BANK[$a2]

	sub  c                                           ; $4000: $91
	nop                                              ; $4001: $00
	nop                                              ; $4002: $00
	nop                                              ; $4003: $00
	adc  h                                           ; $4004: $8c
	rst  $38                                         ; $4005: $ff
	ld   [bc], a                                     ; $4006: $02
	ld   a, a                                        ; $4007: $7f
	ld   a, b                                        ; $4008: $78
	ld   hl, sp-$7c                                  ; $4009: $f8 $84
	db   $fc                                         ; $400b: $fc
	add  d                                           ; $400c: $82
	db   $fd                                         ; $400d: $fd
	add  b                                           ; $400e: $80
	rst  $38                                         ; $400f: $ff
	add  b                                           ; $4010: $80
	rst  $20                                         ; $4011: $e7
	nop                                              ; $4012: $00
	rst  $38                                         ; $4013: $ff
	add  b                                           ; $4014: $80
	sbc  h                                           ; $4015: $9c
	inc  c                                           ; $4016: $0c
	ld   b, e                                        ; $4017: $43
	inc  bc                                          ; $4018: $03
	and  a                                           ; $4019: $a7
	ld   h, h                                        ; $401a: $64
	ld   l, h                                        ; $401b: $6c
	ld   [$d7d8], a                                  ; $401c: $ea $d8 $d7
	pop  af                                          ; $401f: $f1
	or   $fa                                         ; $4020: $f6 $fa
	add  sp, -$20                                    ; $4022: $e8 $e0
	add  b                                           ; $4024: $80
	rst  $20                                         ; $4025: $e7
	add  b                                           ; $4026: $80
	call nz, Call_0a2_4080                           ; $4027: $c4 $80 $40
	ld   c, $8c                                      ; $402a: $0e $8c
	sub  d                                           ; $402c: $92
	add  b                                           ; $402d: $80
	and  c                                           ; $402e: $a1
	ld   bc, $0141                                   ; $402f: $01 $41 $01
	add  c                                           ; $4032: $81
	db   $fd                                         ; $4033: $fd
	dec  c                                           ; $4034: $0d
	or   $d9                                         ; $4035: $f6 $d9
	call c, Call_0a2_6664                            ; $4037: $dc $64 $66
	add  b                                           ; $403a: $80
	or   d                                           ; $403b: $b2
	ld   bc, $41c0                                   ; $403c: $01 $c0 $41
	add  b                                           ; $403f: $80
	ld   c, c                                        ; $4040: $49
	add  b                                           ; $4041: $80
	ld   l, l                                        ; $4042: $6d
	add  b                                           ; $4043: $80
	ld   l, [hl]                                     ; $4044: $6e
	ld   bc, $c97e                                   ; $4045: $01 $7e $c9
	add  b                                           ; $4048: $80
	call z, $d907                                    ; $4049: $cc $07 $d9
	and  c                                           ; $404c: $a1
	adc  l                                           ; $404d: $8d
	ld   b, c                                        ; $404e: $41
	ld   bc, $0103                                   ; $404f: $01 $03 $01
	nop                                              ; $4052: $00
	add  c                                           ; $4053: $81
	add  b                                           ; $4054: $80
	add  b                                           ; $4055: $80
	nop                                              ; $4056: $00
	add  hl, bc                                      ; $4057: $09
	sbc  a                                           ; $4058: $9f
	sub  b                                           ; $4059: $90
	ld   c, $01                                      ; $405a: $0e $01
	rlca                                             ; $405c: $07
	inc  b                                           ; $405d: $04
	inc  c                                           ; $405e: $0c
	inc  bc                                          ; $405f: $03
	inc  d                                           ; $4060: $14
	db   $18, $84                                    ; $4061: $18 $84
	nop                                              ; $4063: $00
	ld   bc, $7788                                   ; $4064: $01 $88 $77
	add  c                                           ; $4067: $81
	scf                                              ; $4068: $37
	inc  b                                           ; $4069: $04
	or   a                                           ; $406a: $b7
	cp   e                                           ; $406b: $bb
	dec  sp                                          ; $406c: $3b
	dec  de                                          ; $406d: $1b
	db   $db                                         ; $406e: $db
	add  b                                           ; $406f: $80
	ld   e, c                                        ; $4070: $59
	add  b                                           ; $4071: $80
	ld   e, l                                        ; $4072: $5d
	add  b                                           ; $4073: $80
	ld   c, h                                        ; $4074: $4c
	nop                                              ; $4075: $00
	ccf                                              ; $4076: $3f
	add  l                                           ; $4077: $85
	nop                                              ; $4078: $00
	add  c                                           ; $4079: $81
	add  b                                           ; $407a: $80
	nop                                              ; $407b: $00
	nop                                              ; $407c: $00
	add  c                                           ; $407d: $81
	ld   b, b                                        ; $407e: $40
	ld   [bc], a                                     ; $407f: $02

Call_0a2_4080:
	add  b                                           ; $4080: $80
	ld   b, b                                        ; $4081: $40
	nop                                              ; $4082: $00
	add  b                                           ; $4083: $80
	add  b                                           ; $4084: $80
	ld   bc, $c040                                   ; $4085: $01 $40 $c0
	add  b                                           ; $4088: $80
	ld   b, b                                        ; $4089: $40
	ld   bc, $8000                                   ; $408a: $01 $00 $80
	add  b                                           ; $408d: $80
	nop                                              ; $408e: $00
	add  c                                           ; $408f: $81
	ld   bc, $0009                                   ; $4090: $01 $09 $00
	pop  hl                                          ; $4093: $e1
	ret  nz                                          ; $4094: $c0

	ret  nc                                          ; $4095: $d0

	ldh  [$e8], a                                    ; $4096: $e0 $e8
	ldh  a, [$f4]                                    ; $4098: $f0 $f4
	ld   hl, sp-$05                                  ; $409a: $f8 $fb
	add  b                                           ; $409c: $80
	db   $fc                                         ; $409d: $fc
	ld   [bc], a                                     ; $409e: $02
	rst  $38                                         ; $409f: $ff
	ld   a, a                                        ; $40a0: $7f
	ld   l, a                                        ; $40a1: $6f
	add  b                                           ; $40a2: $80
	cpl                                              ; $40a3: $2f
	ld   [$0013], sp                                 ; $40a4: $08 $13 $00
	inc  c                                           ; $40a7: $0c
	ld   [$2138], sp                                 ; $40a8: $08 $38 $21
	ld   h, c                                        ; $40ab: $61
	add  hl, de                                      ; $40ac: $19
	sbc  c                                           ; $40ad: $99
	add  b                                           ; $40ae: $80
	ld   a, c                                        ; $40af: $79
	ld   [de], a                                     ; $40b0: $12
	ld   sp, hl                                      ; $40b1: $f9
	pop  af                                          ; $40b2: $f1
	ld   a, [$f5f2]                                  ; $40b3: $fa $f2 $f5
	dec  d                                           ; $40b6: $15
	jr   @-$03                                       ; $40b7: $18 $fb

	nop                                              ; $40b9: $00
	ccf                                              ; $40ba: $3f
	nop                                              ; $40bb: $00
	cp   l                                           ; $40bc: $bd
	nop                                              ; $40bd: $00
	or   e                                           ; $40be: $b3
	ld   b, h                                        ; $40bf: $44
	rlca                                             ; $40c0: $07
	adc  b                                           ; $40c1: $88
	jr   jr_0a2_40de                                 ; $40c2: $18 $1a

	add  b                                           ; $40c4: $80
	ld   hl, sp+$0b                                  ; $40c5: $f8 $0b
	ei                                               ; $40c7: $fb
	nop                                              ; $40c8: $00
	rst  JumpTable                                         ; $40c9: $df
	nop                                              ; $40ca: $00
	ret  c                                           ; $40cb: $d8

	nop                                              ; $40cc: $00
	ld   sp, hl                                      ; $40cd: $f9
	nop                                              ; $40ce: $00
	xor  $28                                         ; $40cf: $ee $28
	db   $db                                         ; $40d1: $db

jr_0a2_40d2:
	inc  b                                           ; $40d2: $04
	add  b                                           ; $40d3: $80
	ld   h, e                                        ; $40d4: $63
	ld   [bc], a                                     ; $40d5: $02
	rst  $28                                         ; $40d6: $ef
	ld   b, a                                        ; $40d7: $47
	xor  a                                           ; $40d8: $af
	add  b                                           ; $40d9: $80
	rrca                                             ; $40da: $0f
	nop                                              ; $40db: $00
	rla                                              ; $40dc: $17
	add  b                                           ; $40dd: $80

jr_0a2_40de:
	rlca                                             ; $40de: $07
	rlca                                             ; $40df: $07
	rrca                                             ; $40e0: $0f
	inc  bc                                          ; $40e1: $03
	rlca                                             ; $40e2: $07
	ld   bc, $70f3                                   ; $40e3: $01 $f3 $70
	ld   a, [hl]                                     ; $40e6: $7e
	ld   a, a                                        ; $40e7: $7f
	add  b                                           ; $40e8: $80
	ld   bc, $7f00                                   ; $40e9: $01 $00 $7f
	add  b                                           ; $40ec: $80
	or   $84                                         ; $40ed: $f6 $84
	rst  $28                                         ; $40ef: $ef
	add  b                                           ; $40f0: $80
	rst  $30                                         ; $40f1: $f7
	add  b                                           ; $40f2: $80
	rst  $38                                         ; $40f3: $ff
	add  b                                           ; $40f4: $80
	ccf                                              ; $40f5: $3f
	rlca                                             ; $40f6: $07
	reti                                             ; $40f7: $d9


	db   $db                                         ; $40f8: $db
	push af                                          ; $40f9: $f5
	di                                               ; $40fa: $f3
	ld   l, e                                        ; $40fb: $6b
	ld   h, a                                        ; $40fc: $67
	rla                                              ; $40fd: $17
	sbc  a                                           ; $40fe: $9f
	add  b                                           ; $40ff: $80
	ld   a, $80                                      ; $4100: $3e $80
	dec  e                                           ; $4102: $1d
	add  e                                           ; $4103: $83
	nop                                              ; $4104: $00
	nop                                              ; $4105: $00
	add  b                                           ; $4106: $80
	add  b                                           ; $4107: $80
	sbc  h                                           ; $4108: $9c
	add  b                                           ; $4109: $80
	cp   [hl]                                        ; $410a: $be
	add  b                                           ; $410b: $80
	ld   a, [hl]                                     ; $410c: $7e
	add  d                                           ; $410d: $82
	db   $fd                                         ; $410e: $fd
	add  b                                           ; $410f: $80
	ei                                               ; $4110: $fb
	add  b                                           ; $4111: $80
	ld   [hl], $04                                   ; $4112: $36 $04
	add  b                                           ; $4114: $80
	ld   h, b                                        ; $4115: $60
	rla                                              ; $4116: $17
	ld   c, $06                                      ; $4117: $0e $06
	adc  b                                           ; $4119: $88
	nop                                              ; $411a: $00
	add  b                                           ; $411b: $80
	rlca                                             ; $411c: $07
	ld   [bc], a                                     ; $411d: $02
	rra                                              ; $411e: $1f
	dec  c                                           ; $411f: $0d
	dec  e                                           ; $4120: $1d
	add  c                                           ; $4121: $81
	ld   b, $00                                      ; $4122: $06 $00
	ld   c, $81                                      ; $4124: $0e $81
	inc  bc                                          ; $4126: $03
	nop                                              ; $4127: $00
	rlca                                             ; $4128: $07
	add  d                                           ; $4129: $82
	ld   bc, $0007                                   ; $412a: $01 $07 $00
	db   $fc                                         ; $412d: $fc
	rst  $38                                         ; $412e: $ff
	ccf                                              ; $412f: $3f
	rst  $38                                         ; $4130: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4131: $cf
	rst  $38                                         ; $4132: $ff
	ld   [hl], e                                     ; $4133: $73
	add  c                                           ; $4134: $81
	ld   a, a                                        ; $4135: $7f
	rlca                                             ; $4136: $07
	ld   a, [hl-]                                    ; $4137: $3a
	cp   a                                           ; $4138: $bf
	reti                                             ; $4139: $d9


	rst  JumpTable                                         ; $413a: $df
	add  b                                           ; $413b: $80
	db   $e3                                         ; $413c: $e3
	ei                                               ; $413d: $fb
	sbc  b                                           ; $413e: $98
	add  d                                           ; $413f: $82
	xor  b                                           ; $4140: $a8
	add  d                                           ; $4141: $82
	xor  h                                           ; $4142: $ac
	add  d                                           ; $4143: $82
	xor  [hl]                                        ; $4144: $ae
	add  b                                           ; $4145: $80
	xor  a                                           ; $4146: $af
	ld   bc, $a027                                   ; $4147: $01 $27 $a0
	add  [hl]                                        ; $414a: $86
	or   b                                           ; $414b: $b0
	ld   [bc], a                                     ; $414c: $02
	cp   h                                           ; $414d: $bc
	cp   b                                           ; $414e: $b8
	jr   c, jr_0a2_40d2                              ; $414f: $38 $81

	ld   a, b                                        ; $4151: $78
	add  hl, bc                                      ; $4152: $09
	cp   a                                           ; $4153: $bf
	inc  bc                                          ; $4154: $03
	pop  bc                                          ; $4155: $c1
	nop                                              ; $4156: $00
	pop  af                                          ; $4157: $f1
	ret  nz                                          ; $4158: $c0

	db   $fc                                         ; $4159: $fc
	ldh  a, [rIE]                                    ; $415a: $f0 $ff
	db   $fc                                         ; $415c: $fc
	add  d                                           ; $415d: $82
	rst  $38                                         ; $415e: $ff
	add  b                                           ; $415f: $80
	ld   a, a                                        ; $4160: $7f
	ld   bc, $c13d                                   ; $4161: $01 $3d $c1
	add  b                                           ; $4164: $80
	pop  hl                                          ; $4165: $e1
	dec  b                                           ; $4166: $05
	push af                                          ; $4167: $f5
	ld   [hl], c                                     ; $4168: $71
	ei                                               ; $4169: $fb
	dec  sp                                          ; $416a: $3b
	cp   a                                           ; $416b: $bf
	rlca                                             ; $416c: $07
	add  h                                           ; $416d: $84
	rst  $38                                         ; $416e: $ff
	ld   [bc], a                                     ; $416f: $02
	rrca                                             ; $4170: $0f
	rst  $38                                         ; $4171: $ff
	ldh  a, [$89]                                    ; $4172: $f0 $89
	rst  $38                                         ; $4174: $ff
	ld   [bc], a                                     ; $4175: $02
	ld   a, a                                        ; $4176: $7f
	rst  $38                                         ; $4177: $ff
	ld   h, h                                        ; $4178: $64
	add  c                                           ; $4179: $81
	ld   a, b                                        ; $417a: $78
	inc  d                                           ; $417b: $14
	ld   l, b                                        ; $417c: $68
	ld   a, b                                        ; $417d: $78
	ld   l, b                                        ; $417e: $68
	ld   a, b                                        ; $417f: $78
	ld   l, b                                        ; $4180: $68
	ld   a, b                                        ; $4181: $78
	ld   l, b                                        ; $4182: $68
	ld   a, b                                        ; $4183: $78
	ld   l, b                                        ; $4184: $68
	ld   a, b                                        ; $4185: $78
	ld   l, b                                        ; $4186: $68
	ld   a, b                                        ; $4187: $78
	ld   l, l                                        ; $4188: $6d
	ld   e, a                                        ; $4189: $5f
	ld   e, l                                        ; $418a: $5d
	ld   l, a                                        ; $418b: $6f
	ld   c, a                                        ; $418c: $4f
	ld   l, a                                        ; $418d: $6f
	di                                               ; $418e: $f3
	scf                                              ; $418f: $37
	rlca                                             ; $4190: $07
	add  b                                           ; $4191: $80
	scf                                              ; $4192: $37
	add  c                                           ; $4193: $81
	dec  sp                                          ; $4194: $3b
	ld   [de], a                                     ; $4195: $12
	dec  de                                          ; $4196: $1b
	dec  a                                           ; $4197: $3d
	sbc  l                                           ; $4198: $9d
	rst  $38                                         ; $4199: $ff
	ccf                                              ; $419a: $3f
	rst  $38                                         ; $419b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $419c: $cf
	rst  $38                                         ; $419d: $ff
	pop  af                                          ; $419e: $f1
	rst  $38                                         ; $419f: $ff
	sbc  c                                           ; $41a0: $99
	sbc  a                                           ; $41a1: $9f
	ld   [hl], a                                     ; $41a2: $77
	ld   a, a                                        ; $41a3: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41a4: $cf
	rst  $38                                         ; $41a5: $ff
	cp   a                                           ; $41a6: $bf
	rst  $38                                         ; $41a7: $ff
	ld   [hl], h                                     ; $41a8: $74
	add  b                                           ; $41a9: $80
	ld   a, b                                        ; $41aa: $78
	add  c                                           ; $41ab: $81
	ld   hl, sp-$79                                  ; $41ac: $f8 $87
	db   $fc                                         ; $41ae: $fc
	dec  c                                           ; $41af: $0d
	ld   a, h                                        ; $41b0: $7c
	jp   nz, $363f                                   ; $41b1: $c2 $3f $36

	ccf                                              ; $41b4: $3f
	scf                                              ; $41b5: $37
	ccf                                              ; $41b6: $3f
	ld   l, $3f                                      ; $41b7: $2e $3f
	dec  a                                           ; $41b9: $3d
	ccf                                              ; $41ba: $3f
	dec  sp                                          ; $41bb: $3b
	ccf                                              ; $41bc: $3f
	scf                                              ; $41bd: $37
	add  c                                           ; $41be: $81
	ccf                                              ; $41bf: $3f
	rlca                                             ; $41c0: $07
	db   $10                                         ; $41c1: $10
	rst  $38                                         ; $41c2: $ff
	rra                                              ; $41c3: $1f
	rst  $38                                         ; $41c4: $ff
	ret  nc                                          ; $41c5: $d0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41c6: $cf
	ld   [hl], e                                     ; $41c7: $73
	di                                               ; $41c8: $f3
	add  b                                           ; $41c9: $80
	db   $fc                                         ; $41ca: $fc
	add  b                                           ; $41cb: $80
	rst  $38                                         ; $41cc: $ff
	add  b                                           ; $41cd: $80
	cp   a                                           ; $41ce: $bf
	add  b                                           ; $41cf: $80
	rst  JumpTable                                         ; $41d0: $df
	nop                                              ; $41d1: $00
	nop                                              ; $41d2: $00
	add  c                                           ; $41d3: $81
	cp   $05                                         ; $41d4: $fe $05
	ld   a, [hl]                                     ; $41d6: $7e
	db   $fd                                         ; $41d7: $fd
	sbc  l                                           ; $41d8: $9d
	db   $fd                                         ; $41d9: $fd
	pop  hl                                          ; $41da: $e1
	db   $fd                                         ; $41db: $fd
	add  b                                           ; $41dc: $80
	dec  a                                           ; $41dd: $3d
	ld   bc, $cbc9                                   ; $41de: $01 $c9 $cb
	add  b                                           ; $41e1: $80
	di                                               ; $41e2: $f3
	nop                                              ; $41e3: $00
	inc  bc                                          ; $41e4: $03
	add  a                                           ; $41e5: $87
	rst  $38                                         ; $41e6: $ff
	nop                                              ; $41e7: $00
	cp   $81                                         ; $41e8: $fe $81
	rst  $38                                         ; $41ea: $ff
	ld   [bc], a                                     ; $41eb: $02
	db   $fd                                         ; $41ec: $fd
	rst  $38                                         ; $41ed: $ff
	inc  bc                                          ; $41ee: $03
	rst  $38                                         ; $41ef: $ff
	nop                                              ; $41f0: $00
	rst  $38                                         ; $41f1: $ff
	nop                                              ; $41f2: $00
	rst  $38                                         ; $41f3: $ff
	nop                                              ; $41f4: $00
	rst  $38                                         ; $41f5: $ff
	nop                                              ; $41f6: $00
	rst  $38                                         ; $41f7: $ff
	nop                                              ; $41f8: $00
	rst  $38                                         ; $41f9: $ff
	nop                                              ; $41fa: $00
	rst  $38                                         ; $41fb: $ff
	nop                                              ; $41fc: $00
	rst  $38                                         ; $41fd: $ff
	nop                                              ; $41fe: $00
	rst  $38                                         ; $41ff: $ff
	nop                                              ; $4200: $00
	rst  $38                                         ; $4201: $ff
	nop                                              ; $4202: $00
	rst  $38                                         ; $4203: $ff
	nop                                              ; $4204: $00
	jp   nc, $ae00                                   ; $4205: $d2 $00 $ae

	nop                                              ; $4208: $00
	nop                                              ; $4209: $00
	nop                                              ; $420a: $00
	add  b                                           ; $420b: $80
	ld   bc, $0380                                   ; $420c: $01 $80 $03
	add  d                                           ; $420f: $82
	rlca                                             ; $4210: $07
	add  b                                           ; $4211: $80
	dec  bc                                          ; $4212: $0b
	add  b                                           ; $4213: $80
	rla                                              ; $4214: $17
	add  b                                           ; $4215: $80
	inc  de                                          ; $4216: $13
	add  b                                           ; $4217: $80
	scf                                              ; $4218: $37
	add  [hl]                                        ; $4219: $86
	rlca                                             ; $421a: $07
	add  b                                           ; $421b: $80
	inc  bc                                          ; $421c: $03
	add  e                                           ; $421d: $83
	nop                                              ; $421e: $00
	ld   bc, $efe7                                   ; $421f: $01 $e7 $ef
	add  b                                           ; $4222: $80
	cp   $80                                         ; $4223: $fe $80
	xor  $80                                         ; $4225: $ee $80
	cp   $05                                         ; $4227: $fe $05
	ld   [$b8ec], sp                                 ; $4229: $08 $ec $b8
	ld   d, h                                        ; $422c: $54
	db   $e4                                         ; $422d: $e4
	db   $ec                                         ; $422e: $ec
	add  b                                           ; $422f: $80
	ld   hl, sp-$80                                  ; $4230: $f8 $80
	add  sp, -$80                                    ; $4232: $e8 $80
	ld   hl, sp-$80                                  ; $4234: $f8 $80
	add  sp, $05                                     ; $4236: $e8 $05
	jr   @-$0e                                       ; $4238: $18 $f0

	and  b                                           ; $423a: $a0
	ld   c, b                                        ; $423b: $48
	ld   hl, sp-$10                                  ; $423c: $f8 $f0
	add  h                                           ; $423e: $84
	ldh  [$80], a                                    ; $423f: $e0 $80
	ret  nz                                          ; $4241: $c0

	nop                                              ; $4242: $00
	nop                                              ; $4243: $00
	add  b                                           ; $4244: $80
	add  b                                           ; $4245: $80
	and  c                                           ; $4246: $a1
	nop                                              ; $4247: $00
	ld   [bc], a                                     ; $4248: $02
	ret  nz                                          ; $4249: $c0

	nop                                              ; $424a: $00
	ret  nz                                          ; $424b: $c0

	add  b                                           ; $424c: $80
	ldh  a, [$80]                                    ; $424d: $f0 $80
	db   $fc                                         ; $424f: $fc
	adc  l                                           ; $4250: $8d
	nop                                              ; $4251: $00
	ld   bc, $efe7                                   ; $4252: $01 $e7 $ef
	add  b                                           ; $4255: $80
	rst  $38                                         ; $4256: $ff
	add  b                                           ; $4257: $80
	rst  $28                                         ; $4258: $ef
	add  b                                           ; $4259: $80
	db   $eb                                         ; $425a: $eb
	dec  b                                           ; $425b: $05
	ret                                              ; $425c: $c9


	pop  bc                                          ; $425d: $c1
	nop                                              ; $425e: $00
	pop  bc                                          ; $425f: $c1
	ret  nz                                          ; $4260: $c0

	ld   bc, $8380                                   ; $4261: $01 $80 $83
	add  [hl]                                        ; $4264: $86
	inc  bc                                          ; $4265: $03
	nop                                              ; $4266: $00

jr_0a2_4267:
	nop                                              ; $4267: $00
	add  b                                           ; $4268: $80
	ld   bc, $008b                                   ; $4269: $01 $8b $00
	add  b                                           ; $426c: $80
	ld   bc, $0781                                   ; $426d: $01 $81 $07
	nop                                              ; $4270: $00
	rrca                                             ; $4271: $0f
	add  b                                           ; $4272: $80
	rra                                              ; $4273: $1f
	add  b                                           ; $4274: $80
	cpl                                              ; $4275: $2f
	add  b                                           ; $4276: $80
	ld   a, a                                        ; $4277: $7f
	nop                                              ; $4278: $00
	ld   [$7f80], sp                                 ; $4279: $08 $80 $7f
	add  b                                           ; $427c: $80
	nop                                              ; $427d: $00
	ld   a, [bc]                                     ; $427e: $0a

jr_0a2_427f:
	add  b                                           ; $427f: $80
	nop                                              ; $4280: $00
	ret  nz                                          ; $4281: $c0

	nop                                              ; $4282: $00
	ld   h, b                                        ; $4283: $60
	jr   nz, @+$01                                   ; $4284: $20 $ff

	jr   nc, jr_0a2_4267                             ; $4286: $30 $df

	rst  $38                                         ; $4288: $ff
	rst  $28                                         ; $4289: $ef
	add  b                                           ; $428a: $80
	rst  ToBoot                                         ; $428b: $c7
	add  b                                           ; $428c: $80

jr_0a2_428d:
	add  a                                           ; $428d: $87
	inc  b                                           ; $428e: $04
	nop                                              ; $428f: $00
	add  a                                           ; $4290: $87
	add  d                                           ; $4291: $82
	dec  b                                           ; $4292: $05
	rrca                                             ; $4293: $0f
	add  e                                           ; $4294: $83
	rra                                              ; $4295: $1f
	add  b                                           ; $4296: $80
	ccf                                              ; $4297: $3f
	dec  b                                           ; $4298: $05
	db   $10                                         ; $4299: $10
	ld   e, a                                        ; $429a: $5f
	ld   a, d                                        ; $429b: $7a
	dec  h                                           ; $429c: $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $429d: $cf
	rst  JumpTable                                         ; $429e: $df
	add  b                                           ; $429f: $80
	rst  $38                                         ; $42a0: $ff
	add  b                                           ; $42a1: $80
	rst  JumpTable                                         ; $42a2: $df
	add  b                                           ; $42a3: $80
	rst  $38                                         ; $42a4: $ff
	add  b                                           ; $42a5: $80
	rst  JumpTable                                         ; $42a6: $df
	add  b                                           ; $42a7: $80
	cp   $00                                         ; $42a8: $fe $00
	db   $10                                         ; $42aa: $10
	add  b                                           ; $42ab: $80
	db   $fc                                         ; $42ac: $fc
	add  [hl]                                        ; $42ad: $86
	nop                                              ; $42ae: $00
	ld   [bc], a                                     ; $42af: $02
	ld   hl, sp+$50                                  ; $42b0: $f8 $50
	xor  b                                           ; $42b2: $a8
	add  b                                           ; $42b3: $80
	ld   d, b                                        ; $42b4: $50
	add  b                                           ; $42b5: $80
	and  b                                           ; $42b6: $a0
	add  b                                           ; $42b7: $80
	ld   b, b                                        ; $42b8: $40
	add  b                                           ; $42b9: $80
	and  b                                           ; $42ba: $a0
	add  b                                           ; $42bb: $80
	ld   d, b                                        ; $42bc: $50
	sub  d                                           ; $42bd: $92
	nop                                              ; $42be: $00
	ld   bc, $bf9f                                   ; $42bf: $01 $9f $bf
	add  b                                           ; $42c2: $80
	cp   $07                                         ; $42c3: $fe $07
	jr   nz, jr_0a2_427f                             ; $42c5: $20 $b8

	add  sp, $50                                     ; $42c7: $e8 $50
	add  b                                           ; $42c9: $80
	and  b                                           ; $42ca: $a0
	ldh  [$c0], a                                    ; $42cb: $e0 $c0
	add  d                                           ; $42cd: $82
	add  b                                           ; $42ce: $80
	inc  c                                           ; $42cf: $0c
	ccf                                              ; $42d0: $3f
	ld   a, a                                        ; $42d1: $7f
	ld   b, e                                        ; $42d2: $43
	inc  bc                                          ; $42d3: $03
	db   $fc                                         ; $42d4: $fc
	ld   bc, $00c7                                   ; $42d5: $01 $c7 $00
	ld   a, $00                                      ; $42d8: $3e $00
	inc  b                                           ; $42da: $04
	nop                                              ; $42db: $00
	ld   b, b                                        ; $42dc: $40
	add  c                                           ; $42dd: $81
	nop                                              ; $42de: $00
	nop                                              ; $42df: $00
	ld   b, b                                        ; $42e0: $40
	adc  e                                           ; $42e1: $8b
	nop                                              ; $42e2: $00
	inc  d                                           ; $42e3: $14
	add  b                                           ; $42e4: $80
	nop                                              ; $42e5: $00
	cp   [hl]                                        ; $42e6: $be
	ld   a, [hl]                                     ; $42e7: $7e
	ld   c, a                                        ; $42e8: $4f
	rrca                                             ; $42e9: $0f
	ldh  a, [rTMA]                                   ; $42ea: $f0 $06
	ld   c, $00                                      ; $42ec: $0e $00
	ld   [hl], h                                     ; $42ee: $74
	nop                                              ; $42ef: $00
	sbc  [hl]                                        ; $42f0: $9e
	nop                                              ; $42f1: $00
	add  hl, de                                      ; $42f2: $19
	nop                                              ; $42f3: $00
	ld   e, $00                                      ; $42f4: $1e $00
	rra                                              ; $42f6: $1f
	nop                                              ; $42f7: $00
	ld   a, [bc]                                     ; $42f8: $0a
	adc  e                                           ; $42f9: $8b
	nop                                              ; $42fa: $00
	add  d                                           ; $42fb: $82
	inc  bc                                          ; $42fc: $03
	ld   [$0343], sp                                 ; $42fd: $08 $43 $03
	ld   h, c                                        ; $4300: $61
	ld   bc, $0020                                   ; $4301: $01 $20 $00
	jr   nz, jr_0a2_4306                             ; $4304: $20 $00

jr_0a2_4306:
	jr   nz, jr_0a2_428d                             ; $4306: $20 $85

	nop                                              ; $4308: $00
	ld   [bc], a                                     ; $4309: $02
	ld   bc, $0100                                   ; $430a: $01 $00 $01
	add  a                                           ; $430d: $87
	nop                                              ; $430e: $00
	add  b                                           ; $430f: $80
	add  b                                           ; $4310: $80
	add  b                                           ; $4311: $80
	ret  nz                                          ; $4312: $c0

	ld   [de], a                                     ; $4313: $12
	pop  bc                                          ; $4314: $c1
	ret  nz                                          ; $4315: $c0

	jp   $02c0                                       ; $4316: $c3 $c0 $02


	nop                                              ; $4319: $00
	ld   [bc], a                                     ; $431a: $02
	nop                                              ; $431b: $00
	rlca                                             ; $431c: $07
	nop                                              ; $431d: $00
	rrca                                             ; $431e: $0f
	nop                                              ; $431f: $00
	rra                                              ; $4320: $1f
	nop                                              ; $4321: $00
	ccf                                              ; $4322: $3f
	nop                                              ; $4323: $00
	ld   l, [hl]                                     ; $4324: $6e
	nop                                              ; $4325: $00
	ld   b, h                                        ; $4326: $44
	add  a                                           ; $4327: $87
	nop                                              ; $4328: $00
	dec  b                                           ; $4329: $05
	ld   e, h                                        ; $432a: $5c
	ld   e, l                                        ; $432b: $5d
	ld   bc, $547f                                   ; $432c: $01 $7f $54
	dec  hl                                          ; $432f: $2b
	add  b                                           ; $4330: $80
	ld   d, l                                        ; $4331: $55
	add  b                                           ; $4332: $80
	xor  d                                           ; $4333: $aa
	add  b                                           ; $4334: $80
	dec  d                                           ; $4335: $15
	nop                                              ; $4336: $00
	nop                                              ; $4337: $00
	add  b                                           ; $4338: $80
	rra                                              ; $4339: $1f
	add  b                                           ; $433a: $80
	rlca                                             ; $433b: $07
	sub  d                                           ; $433c: $92
	nop                                              ; $433d: $00
	add  b                                           ; $433e: $80
	ld   bc, $0780                                   ; $433f: $01 $80 $07
	add  b                                           ; $4342: $80
	ld   e, $05                                      ; $4343: $1e $05
	ld   a, a                                        ; $4345: $7f
	ld   a, d                                        ; $4346: $7a
	ld   h, a                                        ; $4347: $67
	ld   b, [hl]                                     ; $4348: $46
	push hl                                          ; $4349: $e5
	pop  bc                                          ; $434a: $c1
	adc  l                                           ; $434b: $8d
	nop                                              ; $434c: $00
	ld   [bc], a                                     ; $434d: $02
	di                                               ; $434e: $f3
	rst  $30                                         ; $434f: $f7
	inc  b                                           ; $4350: $04
	add  b                                           ; $4351: $80
	rst  $38                                         ; $4352: $ff
	add  [hl]                                        ; $4353: $86
	nop                                              ; $4354: $00
	inc  bc                                          ; $4355: $03
	add  b                                           ; $4356: $80
	pop  bc                                          ; $4357: $c1
	ld   h, b                                        ; $4358: $60
	ld   hl, $008d                                   ; $4359: $21 $8d $00
	ld   bc, $efe7                                   ; $435c: $01 $e7 $ef
	add  b                                           ; $435f: $80
	rst  $38                                         ; $4360: $ff
	dec  b                                           ; $4361: $05
	ld   [$baee], sp                                 ; $4362: $08 $ee $ba
	ld   d, h                                        ; $4365: $54
	db   $e4                                         ; $4366: $e4
	db   $ec                                         ; $4367: $ec
	add  b                                           ; $4368: $80
	db   $fc                                         ; $4369: $fc
	add  b                                           ; $436a: $80
	add  sp, -$80                                    ; $436b: $e8 $80

jr_0a2_436d:
	ld   hl, sp+$02                                  ; $436d: $f8 $02

jr_0a2_436f:
	add  sp, -$20                                    ; $436f: $e8 $e0
	nop                                              ; $4371: $00
	add  b                                           ; $4372: $80
	ldh  a, [$91]                                    ; $4373: $f0 $91
	nop                                              ; $4375: $00
	add  b                                           ; $4376: $80
	adc  h                                           ; $4377: $8c
	inc  bc                                          ; $4378: $03
	nop                                              ; $4379: $00
	add  h                                           ; $437a: $84
	add  b                                           ; $437b: $80
	inc  b                                           ; $437c: $04
	adc  d                                           ; $437d: $8a
	add  b                                           ; $437e: $80
	inc  bc                                          ; $437f: $03
	nop                                              ; $4380: $00
	add  b                                           ; $4381: $80
	ret  nz                                          ; $4382: $c0

	ld   b, b                                        ; $4383: $40
	add  d                                           ; $4384: $82
	ret  nz                                          ; $4385: $c0

	add  b                                           ; $4386: $80
	ldh  [$80], a                                    ; $4387: $e0 $80
	ret  nz                                          ; $4389: $c0

	inc  bc                                          ; $438a: $03
	jr   nz, jr_0a2_436d                             ; $438b: $20 $e0

	ld   b, b                                        ; $438d: $40
	add  b                                           ; $438e: $80
	add  b                                           ; $438f: $80
	ret  nz                                          ; $4390: $c0

	add  d                                           ; $4391: $82
	add  b                                           ; $4392: $80
	adc  [hl]                                        ; $4393: $8e
	nop                                              ; $4394: $00
	add  d                                           ; $4395: $82
	ld   bc, $0380                                   ; $4396: $01 $80 $03
	inc  bc                                          ; $4399: $03
	nop                                              ; $439a: $00
	inc  bc                                          ; $439b: $03
	ld   b, $05                                      ; $439c: $06 $05
	add  b                                           ; $439e: $80
	ld   [bc], a                                     ; $439f: $02
	ld   [bc], a                                     ; $43a0: $02
	ld   bc, $0e0f                                   ; $43a1: $01 $0f $0e
	add  b                                           ; $43a4: $80
	nop                                              ; $43a5: $00
	ld   [bc], a                                     ; $43a6: $02
	rra                                              ; $43a7: $1f
	dec  d                                           ; $43a8: $15
	ld   a, [bc]                                     ; $43a9: $0a
	add  b                                           ; $43aa: $80
	dec  d                                           ; $43ab: $15
	add  b                                           ; $43ac: $80
	ld   a, [hl+]                                    ; $43ad: $2a
	add  b                                           ; $43ae: $80
	ld   d, l                                        ; $43af: $55
	ld   [bc], a                                     ; $43b0: $02
	ld   a, [hl+]                                    ; $43b1: $2a
	ld   l, d                                        ; $43b2: $6a
	ld   b, b                                        ; $43b3: $40
	adc  c                                           ; $43b4: $89
	nop                                              ; $43b5: $00
	add  b                                           ; $43b6: $80
	ld   bc, $0003                                   ; $43b7: $01 $03 $00
	ld   b, d                                        ; $43ba: $42
	ld   b, [hl]                                     ; $43bb: $46
	inc  b                                           ; $43bc: $04
	add  b                                           ; $43bd: $80
	ld   [$1080], sp                                 ; $43be: $08 $80 $10
	add  b                                           ; $43c1: $80
	ld   bc, $0280                                   ; $43c2: $01 $80 $02
	add  h                                           ; $43c5: $84
	nop                                              ; $43c6: $00
	add  b                                           ; $43c7: $80
	ld   bc, $0382                                   ; $43c8: $01 $82 $03
	add  d                                           ; $43cb: $82
	rlca                                             ; $43cc: $07
	inc  b                                           ; $43cd: $04
	nop                                              ; $43ce: $00
	rrca                                             ; $43cf: $0f
	dec  b                                           ; $43d0: $05
	ld   a, [bc]                                     ; $43d1: $0a
	rra                                              ; $43d2: $1f
	add  c                                           ; $43d3: $81
	ccf                                              ; $43d4: $3f
	add  b                                           ; $43d5: $80
	ld   a, a                                        ; $43d6: $7f
	nop                                              ; $43d7: $00
	jr   nz, jr_0a2_436f                             ; $43d8: $20 $95

	nop                                              ; $43da: $00
	add  b                                           ; $43db: $80
	ld   a, [hl]                                     ; $43dc: $7e
	dec  b                                           ; $43dd: $05
	ld   bc, $2a3f                                   ; $43de: $01 $3f $2a
	inc  d                                           ; $43e1: $14
	ccf                                              ; $43e2: $3f
	ld   a, a                                        ; $43e3: $7f
	add  b                                           ; $43e4: $80
	ld   a, [hl]                                     ; $43e5: $7e
	ld   bc, $1f5f                                   ; $43e6: $01 $5f $1f
	add  b                                           ; $43e9: $80
	ld   e, $80                                      ; $43ea: $1e $80
	ccf                                              ; $43ec: $3f
	add  b                                           ; $43ed: $80
	ld   a, [hl]                                     ; $43ee: $7e
	ld   b, $01                                      ; $43ef: $06 $01
	rst  $38                                         ; $43f1: $ff
	xor  d                                           ; $43f2: $aa
	ld   d, h                                        ; $43f3: $54
	ld   a, a                                        ; $43f4: $7f
	rst  $38                                         ; $43f5: $ff
	add  b                                           ; $43f6: $80
	rst  $38                                         ; $43f7: $ff
	nop                                              ; $43f8: $00
	rst  $38                                         ; $43f9: $ff
	nop                                              ; $43fa: $00
	rst  $38                                         ; $43fb: $ff
	nop                                              ; $43fc: $00
	rst  $38                                         ; $43fd: $ff
	nop                                              ; $43fe: $00
	rst  $38                                         ; $43ff: $ff
	nop                                              ; $4400: $00
	rst  $38                                         ; $4401: $ff
	nop                                              ; $4402: $00
	rst  $38                                         ; $4403: $ff
	nop                                              ; $4404: $00
	rst  $38                                         ; $4405: $ff
	nop                                              ; $4406: $00
	rst  $38                                         ; $4407: $ff
	nop                                              ; $4408: $00
	rst  $38                                         ; $4409: $ff
	nop                                              ; $440a: $00
	sub  e                                           ; $440b: $93
	nop                                              ; $440c: $00
	cp   c                                           ; $440d: $b9
	nop                                              ; $440e: $00
	add  b                                           ; $440f: $80
	nop                                              ; $4410: $00
	add  b                                           ; $4411: $80
	ld   bc, $0382                                   ; $4412: $01 $82 $03
	nop                                              ; $4415: $00
	rlca                                             ; $4416: $07
	add  c                                           ; $4417: $81
	ld   b, $00                                      ; $4418: $06 $00
	rlca                                             ; $441a: $07
	add  c                                           ; $441b: $81
	dec  b                                           ; $441c: $05
	inc  bc                                          ; $441d: $03
	db   $fc                                         ; $441e: $fc
	ret  nz                                          ; $441f: $c0

	rst  ToBoot                                         ; $4420: $c7
	add  a                                           ; $4421: $87
	add  b                                           ; $4422: $80
	sbc  a                                           ; $4423: $9f
	dec  bc                                          ; $4424: $0b
	rst  $38                                         ; $4425: $ff
	ld   a, a                                        ; $4426: $7f
	rst  $38                                         ; $4427: $ff
	rst  JumpTable                                         ; $4428: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4429: $cf
	and  l                                           ; $442a: $a5
	push de                                          ; $442b: $d5
	add  e                                           ; $442c: $83
	inc  hl                                          ; $442d: $23
	ld   d, $2e                                      ; $442e: $16 $2e
	rlca                                             ; $4430: $07
	add  b                                           ; $4431: $80
	rst  $38                                         ; $4432: $ff
	add  b                                           ; $4433: $80
	db   $fc                                         ; $4434: $fc
	add  b                                           ; $4435: $80
	di                                               ; $4436: $f3
	add  b                                           ; $4437: $80
	rst  $28                                         ; $4438: $ef
	ld   b, $de                                      ; $4439: $06 $de
	sub  $d5                                         ; $443b: $d6 $d5
	call $a8a9                                       ; $443d: $cd $a9 $a8
	pop  af                                          ; $4440: $f1
	add  c                                           ; $4441: $81
	rst  $28                                         ; $4442: $ef
	add  b                                           ; $4443: $80
	ld   l, a                                        ; $4444: $6f
	ld   bc, $f7ff                                   ; $4445: $01 $ff $f7
	add  b                                           ; $4448: $80
	ld   [hl], a                                     ; $4449: $77
	add  h                                           ; $444a: $84
	rst  $30                                         ; $444b: $f7
	ld   bc, $02fb                                   ; $444c: $01 $fb $02
	add  h                                           ; $444f: $84
	add  b                                           ; $4450: $80
	nop                                              ; $4451: $00
	ret  nz                                          ; $4452: $c0

	add  c                                           ; $4453: $81
	pop  bc                                          ; $4454: $c1
	add  b                                           ; $4455: $80
	ret  nz                                          ; $4456: $c0

	add  b                                           ; $4457: $80
	ldh  [rP1], a                                    ; $4458: $e0 $00
	rlca                                             ; $445a: $07
	add  c                                           ; $445b: $81
	inc  b                                           ; $445c: $04
	add  b                                           ; $445d: $80
	dec  b                                           ; $445e: $05
	nop                                              ; $445f: $00
	rlca                                             ; $4460: $07
	add  c                                           ; $4461: $81
	inc  bc                                          ; $4462: $03
	ld   bc, $070f                                   ; $4463: $01 $0f $07
	add  b                                           ; $4466: $80
	add  [hl]                                        ; $4467: $86
	dec  b                                           ; $4468: $05
	sbc  h                                           ; $4469: $9c
	adc  h                                           ; $446a: $8c
	sbc  a                                           ; $446b: $9f
	ld   a, l                                        ; $446c: $7d
	push af                                          ; $446d: $f5
	rst  $30                                         ; $446e: $f7
	add  b                                           ; $446f: $80
	xor  $80                                         ; $4470: $ee $80
	call c, $b809                                    ; $4472: $dc $09 $b8
	cp   c                                           ; $4475: $b9
	ld   [hl], c                                     ; $4476: $71
	ld   [hl], e                                     ; $4477: $73
	ld   h, a                                        ; $4478: $67
	ld   h, h                                        ; $4479: $64
	pop  hl                                          ; $447a: $e1
	and  $b4                                         ; $447b: $e6 $b4
	sub  c                                           ; $447d: $91
	add  c                                           ; $447e: $81
	ld   d, c                                        ; $447f: $51
	nop                                              ; $4480: $00
	ld   [hl], e                                     ; $4481: $73
	add  b                                           ; $4482: $80
	ld   h, e                                        ; $4483: $63
	add  b                                           ; $4484: $80
	ld   h, d                                        ; $4485: $62
	ld   b, $60                                      ; $4486: $06 $60
	ld   l, c                                        ; $4488: $69
	dec  l                                           ; $4489: $2d
	xor  c                                           ; $448a: $a9
	add  hl, hl                                      ; $448b: $29
	jr   z, jr_0a2_44ca                              ; $448c: $28 $3c

	add  c                                           ; $448e: $81
	or   a                                           ; $448f: $b7
	add  c                                           ; $4490: $81
	rla                                              ; $4491: $17
	ld   bc, $4757                                   ; $4492: $01 $57 $47
	add  b                                           ; $4495: $80
	rst  ToBoot                                         ; $4496: $c7
	dec  b                                           ; $4497: $05
	rlca                                             ; $4498: $07
	rst  ToBoot                                         ; $4499: $c7
	daa                                              ; $449a: $27
	rst  $20                                         ; $449b: $e7
	rlca                                             ; $449c: $07
	ld   [$f08d], sp                                 ; $449d: $08 $8d $f0
	ld   bc, $8c93                                   ; $44a0: $01 $93 $8c
	add  b                                           ; $44a3: $80
	adc  b                                           ; $44a4: $88
	ld   [bc], a                                     ; $44a5: $02
	cp   b                                           ; $44a6: $b8
	sbc  b                                           ; $44a7: $98
	sub  b                                           ; $44a8: $90
	add  c                                           ; $44a9: $81
	sub  d                                           ; $44aa: $92
	ld   b, $96                                      ; $44ab: $06 $96
	sub  d                                           ; $44ad: $92
	and  d                                           ; $44ae: $a2
	add  d                                           ; $44af: $82
	jp   z, $e1c2                                    ; $44b0: $ca $c2 $e1

	add  c                                           ; $44b3: $81
	ldh  a, [$8a]                                    ; $44b4: $f0 $8a
	ld   hl, sp+$00                                  ; $44b6: $f8 $00
	db   $d3                                         ; $44b8: $d3
	add  e                                           ; $44b9: $83
	jp   $db01                                       ; $44ba: $c3 $01 $db


	jp   $e380                                       ; $44bd: $c3 $80 $e3


	nop                                              ; $44c0: $00
	db   $eb                                         ; $44c1: $eb
	add  e                                           ; $44c2: $83
	db   $e3                                         ; $44c3: $e3
	inc  bc                                          ; $44c4: $03
	cp   $82                                         ; $44c5: $fe $82
	sub  h                                           ; $44c7: $94
	adc  b                                           ; $44c8: $88
	add  c                                           ; $44c9: $81

jr_0a2_44ca:
	add  b                                           ; $44ca: $80

jr_0a2_44cb:
	nop                                              ; $44cb: $00
	ret  nz                                          ; $44cc: $c0

	add  e                                           ; $44cd: $83
	ret  nc                                          ; $44ce: $d0

	nop                                              ; $44cf: $00
	ldh  [$80], a                                    ; $44d0: $e0 $80
	add  sp, $02                                     ; $44d2: $e8 $02
	inc  de                                          ; $44d4: $13
	nop                                              ; $44d5: $00
	inc  bc                                          ; $44d6: $03
	adc  e                                           ; $44d7: $8b

jr_0a2_44d8:
	nop                                              ; $44d8: $00
	adc  d                                           ; $44d9: $8a
	ld   hl, sp+$00                                  ; $44da: $f8 $00
	db   $fd                                         ; $44dc: $fd
	add  c                                           ; $44dd: $81
	db   $fc                                         ; $44de: $fc
	nop                                              ; $44df: $00
	add  hl, hl                                      ; $44e0: $29
	add  c                                           ; $44e1: $81
	stop                                             ; $44e2: $10 $00
	ld   [hl], h                                     ; $44e4: $74
	add  c                                           ; $44e5: $81
	jr   nc, @+$0a                                   ; $44e6: $30 $08

	ld   [hl+], a                                    ; $44e8: $22
	jr   nz, jr_0a2_44cb                             ; $44e9: $20 $e0

	ld   l, b                                        ; $44eb: $68
	ld   l, c                                        ; $44ec: $69
	ld   l, b                                        ; $44ed: $68
	ret  z                                           ; $44ee: $c8

	call nc, $85eb                                   ; $44ef: $d4 $eb $85
	nop                                              ; $44f2: $00
	add  b                                           ; $44f3: $80
	ld   bc, $7f80                                   ; $44f4: $01 $80 $7f
	add  c                                           ; $44f7: $81
	rst  $38                                         ; $44f8: $ff
	ld   bc, $ec1c                                   ; $44f9: $01 $1c $ec
	add  c                                           ; $44fc: $81
	dec  c                                           ; $44fd: $0d
	add  b                                           ; $44fe: $80
	dec  e                                           ; $44ff: $1d
	ld   bc, $797d                                   ; $4500: $01 $7d $79

Call_0a2_4503:
	add  c                                           ; $4503: $81
	ld   sp, hl                                      ; $4504: $f9
	add  d                                           ; $4505: $82
	pop  af                                          ; $4506: $f1
	inc  de                                          ; $4507: $13
	nop                                              ; $4508: $00
	ld   bc, $fffd                                   ; $4509: $01 $fd $ff
	ei                                               ; $450c: $fb
	rst  $38                                         ; $450d: $ff
	rst  $30                                         ; $450e: $f7
	cp   $ee                                         ; $450f: $fe $ee
	db   $fc                                         ; $4511: $fc
	db   $dd                                         ; $4512: $dd
	ld   sp, hl                                      ; $4513: $f9
	cp   e                                           ; $4514: $bb
	di                                               ; $4515: $f3
	ld   [hl], e                                     ; $4516: $73
	db   $e3                                         ; $4517: $e3
	db   $eb                                         ; $4518: $eb
	set  2, h                                        ; $4519: $cb $d4
	sub  h                                           ; $451b: $94
	add  c                                           ; $451c: $81
	cp   b                                           ; $451d: $b8
	nop                                              ; $451e: $00
	jr   c, @-$7e                                    ; $451f: $38 $80

	ld   a, b                                        ; $4521: $78
	add  c                                           ; $4522: $81
	db   $fc                                         ; $4523: $fc
	add  b                                           ; $4524: $80
	db   $fd                                         ; $4525: $fd
	add  b                                           ; $4526: $80
	db   $fc                                         ; $4527: $fc
	ld   b, $e7                                      ; $4528: $06 $e7
	inc  bc                                          ; $452a: $03
	adc  [hl]                                        ; $452b: $8e
	add  [hl]                                        ; $452c: $86
	inc  b                                           ; $452d: $04
	dec  b                                           ; $452e: $05
	sbc  c                                           ; $452f: $99
	add  c                                           ; $4530: $81
	adc  e                                           ; $4531: $8b
	rlca                                             ; $4532: $07
	sub  e                                           ; $4533: $93
	sub  h                                           ; $4534: $94
	inc  [hl]                                        ; $4535: $34
	jr   nc, jr_0a2_44d8                             ; $4536: $30 $a0

	and  c                                           ; $4538: $a1
	ldh  [c], a                                      ; $4539: $e2
	db   $e3                                         ; $453a: $e3
	add  b                                           ; $453b: $80
	rrca                                             ; $453c: $0f
	add  b                                           ; $453d: $80
	inc  c                                           ; $453e: $0c
	nop                                              ; $453f: $00
	nop                                              ; $4540: $00
	add  b                                           ; $4541: $80
	add  e                                           ; $4542: $83
	add  b                                           ; $4543: $80
	rrca                                             ; $4544: $0f
	add  b                                           ; $4545: $80
	rlca                                             ; $4546: $07
	add  b                                           ; $4547: $80
	daa                                              ; $4548: $27
	inc  bc                                          ; $4549: $03
	rst  ToBoot                                         ; $454a: $c7
	rlca                                             ; $454b: $07
	db   $db                                         ; $454c: $db
	dec  de                                          ; $454d: $1b
	add  b                                           ; $454e: $80
	dec  a                                           ; $454f: $3d
	adc  d                                           ; $4550: $8a
	db   $fd                                         ; $4551: $fd
	ld   bc, $edec                                   ; $4552: $01 $ec $ed
	add  b                                           ; $4555: $80
	dec  e                                           ; $4556: $1d
	dec  b                                           ; $4557: $05
	ld   sp, $0e3e                                   ; $4558: $31 $3e $0e
	ld   [hl], b                                     ; $455b: $70
	ld   [hl], c                                     ; $455c: $71
	add  c                                           ; $455d: $81
	add  b                                           ; $455e: $80
	adc  a                                           ; $455f: $8f
	nop                                              ; $4560: $00
	cp   a                                           ; $4561: $bf
	add  b                                           ; $4562: $80
	ccf                                              ; $4563: $3f
	ld   bc, $83bf                                   ; $4564: $01 $bf $83
	add  d                                           ; $4567: $82
	ld   e, e                                        ; $4568: $5b
	add  b                                           ; $4569: $80
	dec  de                                          ; $456a: $1b
	nop                                              ; $456b: $00
	inc  bc                                          ; $456c: $03
	add  b                                           ; $456d: $80
	rst  $20                                         ; $456e: $e7
	nop                                              ; $456f: $00
	rst  $38                                         ; $4570: $ff
	add  b                                           ; $4571: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4572: $cf
	add  b                                           ; $4573: $80
	add  a                                           ; $4574: $87
	nop                                              ; $4575: $00
	rst  $38                                         ; $4576: $ff
	add  h                                           ; $4577: $84
	di                                               ; $4578: $f3
	add  d                                           ; $4579: $82
	push af                                          ; $457a: $f5
	add  d                                           ; $457b: $82
	ldh  a, [c]                                      ; $457c: $f2
	add  b                                           ; $457d: $80
	pop  af                                          ; $457e: $f1
	adc  h                                           ; $457f: $8c
	db   $fd                                         ; $4580: $fd
	rlca                                             ; $4581: $07
	ld   a, l                                        ; $4582: $7d
	dec  a                                           ; $4583: $3d
	ld   e, a                                        ; $4584: $5f
	rst  JumpTable                                         ; $4585: $df
	ld   e, a                                        ; $4586: $5f
	sbc  a                                           ; $4587: $9f
	ccf                                              ; $4588: $3f
	rst  $38                                         ; $4589: $ff
	add  c                                           ; $458a: $81
	ccf                                              ; $458b: $3f
	add  b                                           ; $458c: $80
	ld   a, a                                        ; $458d: $7f
	add  c                                           ; $458e: $81
	rst  $38                                         ; $458f: $ff
	ld   bc, $00f8                                   ; $4590: $01 $f8 $00
	add  e                                           ; $4593: $83
	rlca                                             ; $4594: $07
	add  b                                           ; $4595: $80
	adc  a                                           ; $4596: $8f
	add  l                                           ; $4597: $85
	rst  $38                                         ; $4598: $ff
	add  b                                           ; $4599: $80
	ld   a, a                                        ; $459a: $7f
	add  b                                           ; $459b: $80
	ldh  a, [$80]                                    ; $459c: $f0 $80
	ld   hl, sp-$80                                  ; $459e: $f8 $80
	ld   a, [$fb80]                                  ; $45a0: $fa $80 $fb
	add  b                                           ; $45a3: $80
	ld   sp, hl                                      ; $45a4: $f9
	add  d                                           ; $45a5: $82
	db   $fd                                         ; $45a6: $fd
	add  b                                           ; $45a7: $80
	rst  $38                                         ; $45a8: $ff
	add  d                                           ; $45a9: $82
	db   $fd                                         ; $45aa: $fd
	add  b                                           ; $45ab: $80
	ei                                               ; $45ac: $fb
	add  b                                           ; $45ad: $80
	ld   a, e                                        ; $45ae: $7b
	add  b                                           ; $45af: $80
	ei                                               ; $45b0: $fb
	add  b                                           ; $45b1: $80
	rst  $30                                         ; $45b2: $f7
	add  c                                           ; $45b3: $81
	or   $03                                         ; $45b4: $f6 $03
	and  $07                                         ; $45b6: $e6 $07
	rla                                              ; $45b8: $17
	rlca                                             ; $45b9: $07
	add  b                                           ; $45ba: $80
	ld   b, a                                        ; $45bb: $47
	add  b                                           ; $45bc: $80
	or   a                                           ; $45bd: $b7
	add  b                                           ; $45be: $80
	rst  ToBoot                                         ; $45bf: $c7
	ld   bc, $7377                                   ; $45c0: $01 $77 $73
	add  b                                           ; $45c3: $80
	add  e                                           ; $45c4: $83
	add  b                                           ; $45c5: $80
	ld   [hl], e                                     ; $45c6: $73
	nop                                              ; $45c7: $00
	inc  bc                                          ; $45c8: $03
	add  b                                           ; $45c9: $80
	ldh  a, [$80]                                    ; $45ca: $f0 $80
	ret  nz                                          ; $45cc: $c0

	add  b                                           ; $45cd: $80
	add  a                                           ; $45ce: $87
	adc  b                                           ; $45cf: $88
	rst  $38                                         ; $45d0: $ff
	add  b                                           ; $45d1: $80
	inc  bc                                          ; $45d2: $03
	add  b                                           ; $45d3: $80
	rrca                                             ; $45d4: $0f
	sbc  c                                           ; $45d5: $99
	rst  $38                                         ; $45d6: $ff
	ld   [bc], a                                     ; $45d7: $02
	ld   a, a                                        ; $45d8: $7f
	ld   bc, $8111                                   ; $45d9: $01 $11 $81
	ld   bc, $b104                                   ; $45dc: $01 $04 $b1
	ld   bc, $0009                                   ; $45df: $01 $09 $00
	ld   b, b                                        ; $45e2: $40
	add  e                                           ; $45e3: $83
	nop                                              ; $45e4: $00
	nop                                              ; $45e5: $00
	ld   l, b                                        ; $45e6: $68
	xor  h                                           ; $45e7: $ac
	rst  $38                                         ; $45e8: $ff
	inc  c                                           ; $45e9: $0c
	cp   $c3                                         ; $45ea: $fe $c3
	inc  a                                           ; $45ec: $3c
	rra                                              ; $45ed: $1f
	inc  c                                           ; $45ee: $0c
	dec  c                                           ; $45ef: $0d
	add  hl, bc                                      ; $45f0: $09
	dec  c                                           ; $45f1: $0d
	ld   [de], a                                     ; $45f2: $12
	nop                                              ; $45f3: $00
	ld   bc, $8981                                   ; $45f4: $01 $81 $89
	add  b                                           ; $45f7: $80
	adc  h                                           ; $45f8: $8c
	add  b                                           ; $45f9: $80
	call nz, $ff00                                   ; $45fa: $c4 $00 $ff
	rst  $38                                         ; $45fd: $ff
	nop                                              ; $45fe: $00
	rst  $38                                         ; $45ff: $ff
	nop                                              ; $4600: $00
	rst  $38                                         ; $4601: $ff
	nop                                              ; $4602: $00
	rst  $38                                         ; $4603: $ff
	nop                                              ; $4604: $00
	rst  $38                                         ; $4605: $ff
	nop                                              ; $4606: $00
	rst  $38                                         ; $4607: $ff
	nop                                              ; $4608: $00
	rst  $38                                         ; $4609: $ff
	nop                                              ; $460a: $00
	rst  $38                                         ; $460b: $ff
	nop                                              ; $460c: $00
	rst  $38                                         ; $460d: $ff
	nop                                              ; $460e: $00
	rst  $38                                         ; $460f: $ff
	nop                                              ; $4610: $00
	db   $e3                                         ; $4611: $e3
	nop                                              ; $4612: $00


Data_a2_4613::
	rst  $38                                         ; $4613: $ff
	ld   a, a                                        ; $4614: $7f
	ld   e, d                                        ; $4615: $5a
	ld   c, $10                                      ; $4616: $0e $10
	ld   e, b                                        ; $4618: $58
	nop                                              ; $4619: $00
	nop                                              ; $461a: $00
	rst  $38                                         ; $461b: $ff
	ld   a, a                                        ; $461c: $7f
	rst  $38                                         ; $461d: $ff
	ld   a, a                                        ; $461e: $7f
	rst  $38                                         ; $461f: $ff
	ld   a, a                                        ; $4620: $7f
	rst  $38                                         ; $4621: $ff
	ld   a, a                                        ; $4622: $7f
	rst  $38                                         ; $4623: $ff
	ld   a, a                                        ; $4624: $7f
	rst  JumpTable                                         ; $4625: $df
	ld   e, l                                        ; $4626: $5d
	dec  b                                           ; $4627: $05
	add  hl, hl                                      ; $4628: $29
	nop                                              ; $4629: $00
	nop                                              ; $462a: $00
	rst  $38                                         ; $462b: $ff
	ld   a, a                                        ; $462c: $7f
	ld   e, a                                        ; $462d: $5f
	ld   c, $05                                      ; $462e: $0e $05
	add  hl, hl                                      ; $4630: $29
	nop                                              ; $4631: $00
	nop                                              ; $4632: $00
	rst  $38                                         ; $4633: $ff
	ld   a, a                                        ; $4634: $7f
	pop  de                                          ; $4635: $d1
	ld   [hl], d                                     ; $4636: $72
	dec  b                                           ; $4637: $05
	add  hl, hl                                      ; $4638: $29
	nop                                              ; $4639: $00
	nop                                              ; $463a: $00
	rst  $38                                         ; $463b: $ff
	ld   a, a                                        ; $463c: $7f
	ld   e, a                                        ; $463d: $5f
	ld   c, $05                                      ; $463e: $0e $05
	add  hl, hl                                      ; $4640: $29
	nop                                              ; $4641: $00
	nop                                              ; $4642: $00
	rst  $38                                         ; $4643: $ff
	ld   a, a                                        ; $4644: $7f
	ld   l, a                                        ; $4645: $6f
	halt                                             ; $4646: $76
	db   $ed                                         ; $4647: $ed
	stop                                             ; $4648: $10 $00
	nop                                              ; $464a: $00
	rst  $38                                         ; $464b: $ff
	ld   a, a                                        ; $464c: $7f
	ld   e, a                                        ; $464d: $5f
	ld   c, $ed                                      ; $464e: $0e $ed
	stop                                             ; $4650: $10 $00
	nop                                              ; $4652: $00
	rst  $38                                         ; $4653: $ff
	ld   a, a                                        ; $4654: $7f
	ld   l, a                                        ; $4655: $6f
	halt                                             ; $4656: $76
	dec  bc                                          ; $4657: $0b
	ld   c, h                                        ; $4658: $4c
	nop                                              ; $4659: $00
	nop                                              ; $465a: $00
	rst  $38                                         ; $465b: $ff
	ld   a, a                                        ; $465c: $7f
	ld   e, a                                        ; $465d: $5f
	ld   c, $ed                                      ; $465e: $0e $ed
	stop                                             ; $4660: $10 $00
	nop                                              ; $4662: $00
	rst  $38                                         ; $4663: $ff
	ld   a, a                                        ; $4664: $7f
	pop  af                                          ; $4665: $f1
	dec  [hl]                                        ; $4666: $35
	ld   c, h                                        ; $4667: $4c
	ld   hl, $0000                                   ; $4668: $21 $00 $00
	rst  $38                                         ; $466b: $ff
	ld   a, a                                        ; $466c: $7f
	ld   e, a                                        ; $466d: $5f
	ld   c, $ff                                      ; $466e: $0e $ff
	inc  sp                                          ; $4670: $33
	nop                                              ; $4671: $00
	nop                                              ; $4672: $00
	rst  $38                                         ; $4673: $ff
	ld   a, a                                        ; $4674: $7f
	ld   l, a                                        ; $4675: $6f
	halt                                             ; $4676: $76
	dec  hl                                          ; $4677: $2b
	add  hl, hl                                      ; $4678: $29
	nop                                              ; $4679: $00
	nop                                              ; $467a: $00
	rst  $38                                         ; $467b: $ff
	ld   a, a                                        ; $467c: $7f
	ld   e, a                                        ; $467d: $5f
	ld   c, $ff                                      ; $467e: $0e $ff
	inc  sp                                          ; $4680: $33
	nop                                              ; $4681: $00
	nop                                              ; $4682: $00
	rst  $38                                         ; $4683: $ff
	ld   a, a                                        ; $4684: $7f
	db   $eb                                         ; $4685: $eb
	inc  bc                                          ; $4686: $03
	or   $10                                         ; $4687: $f6 $10
	nop                                              ; $4689: $00
	nop                                              ; $468a: $00
	rst  $38                                         ; $468b: $ff
	ld   a, a                                        ; $468c: $7f
	ld   e, a                                        ; $468d: $5f
	ld   c, $7f                                      ; $468e: $0e $7f
	rrca                                             ; $4690: $0f
	nop                                              ; $4691: $00
	nop                                              ; $4692: $00
	rst  $38                                         ; $4693: $ff
	ld   a, a                                        ; $4694: $7f
	db   $dd                                         ; $4695: $dd
	add  hl, sp                                      ; $4696: $39
	add  [hl]                                        ; $4697: $86
	ld   l, l                                        ; $4698: $6d
	nop                                              ; $4699: $00
	nop                                              ; $469a: $00
	rst  $38                                         ; $469b: $ff
	ld   a, a                                        ; $469c: $7f
	ld   e, a                                        ; $469d: $5f
	ld   c, $7f                                      ; $469e: $0e $7f
	rrca                                             ; $46a0: $0f
	nop                                              ; $46a1: $00
	nop                                              ; $46a2: $00
	rst  $38                                         ; $46a3: $ff
	ld   a, a                                        ; $46a4: $7f
	ld   e, a                                        ; $46a5: $5f
	ld   c, $bd                                      ; $46a6: $0e $bd
	ld   bc, $0000                                   ; $46a8: $01 $00 $00
	rst  $38                                         ; $46ab: $ff
	ld   a, a                                        ; $46ac: $7f
	ld   e, a                                        ; $46ad: $5f
	ld   c, $7f                                      ; $46ae: $0e $7f
	rrca                                             ; $46b0: $0f
	nop                                              ; $46b1: $00
	nop                                              ; $46b2: $00
	rst  $38                                         ; $46b3: $ff
	ld   a, a                                        ; $46b4: $7f
	ld   e, a                                        ; $46b5: $5f
	ld   c, $d3                                      ; $46b6: $0e $d3
	halt                                             ; $46b8: $76
	nop                                              ; $46b9: $00
	nop                                              ; $46ba: $00
	rst  $38                                         ; $46bb: $ff
	ld   a, a                                        ; $46bc: $7f
	ld   e, a                                        ; $46bd: $5f
	ld   c, $7f                                      ; $46be: $0e $7f
	rrca                                             ; $46c0: $0f
	nop                                              ; $46c1: $00
	nop                                              ; $46c2: $00
	rst  $38                                         ; $46c3: $ff
	ld   a, a                                        ; $46c4: $7f
	ld   l, a                                        ; $46c5: $6f
	halt                                             ; $46c6: $76
	ld   a, a                                        ; $46c7: $7f
	rrca                                             ; $46c8: $0f
	nop                                              ; $46c9: $00
	nop                                              ; $46ca: $00
	rst  $38                                         ; $46cb: $ff
	ld   a, a                                        ; $46cc: $7f
	ld   e, a                                        ; $46cd: $5f
	ld   c, $7f                                      ; $46ce: $0e $7f
	rrca                                             ; $46d0: $0f
	nop                                              ; $46d1: $00
	nop                                              ; $46d2: $00
	rst  $38                                         ; $46d3: $ff
	ld   a, a                                        ; $46d4: $7f
	ld   e, a                                        ; $46d5: $5f
	nop                                              ; $46d6: $00
	rst  $38                                         ; $46d7: $ff
	inc  bc                                          ; $46d8: $03
	nop                                              ; $46d9: $00
	nop                                              ; $46da: $00
	rst  $38                                         ; $46db: $ff
	ld   a, a                                        ; $46dc: $7f
	ld   e, a                                        ; $46dd: $5f
	ld   c, $0b                                      ; $46de: $0e $0b
	dec  l                                           ; $46e0: $2d
	nop                                              ; $46e1: $00
	nop                                              ; $46e2: $00
	rst  $38                                         ; $46e3: $ff
	ld   a, a                                        ; $46e4: $7f
	ld   l, a                                        ; $46e5: $6f
	halt                                             ; $46e6: $76
	ld   b, b                                        ; $46e7: $40
	ld   de, $0000                                   ; $46e8: $11 $00 $00
	rst  $38                                         ; $46eb: $ff
	ld   a, a                                        ; $46ec: $7f
	ld   e, a                                        ; $46ed: $5f
	ld   c, $0b                                      ; $46ee: $0e $0b
	dec  l                                           ; $46f0: $2d
	nop                                              ; $46f1: $00
	nop                                              ; $46f2: $00
	rst  $38                                         ; $46f3: $ff
	ld   a, a                                        ; $46f4: $7f
	ld   e, a                                        ; $46f5: $5f
	ld   c, $f7                                      ; $46f6: $0e $f7
	ld   h, $00                                      ; $46f8: $26 $00
	nop                                              ; $46fa: $00
	rst  $38                                         ; $46fb: $ff
	ld   a, a                                        ; $46fc: $7f
	ld   e, a                                        ; $46fd: $5f
	ld   c, $79                                      ; $46fe: $0e $79
	inc  b                                           ; $4700: $04
	nop                                              ; $4701: $00
	nop                                              ; $4702: $00
	rst  $38                                         ; $4703: $ff
	ld   a, a                                        ; $4704: $7f
	ld   l, a                                        ; $4705: $6f
	halt                                             ; $4706: $76
	ld   d, l                                        ; $4707: $55
	nop                                              ; $4708: $00
	nop                                              ; $4709: $00
	nop                                              ; $470a: $00
	rst  $38                                         ; $470b: $ff
	ld   a, a                                        ; $470c: $7f
	ld   e, a                                        ; $470d: $5f
	ld   c, $79                                      ; $470e: $0e $79
	inc  b                                           ; $4710: $04
	nop                                              ; $4711: $00
	nop                                              ; $4712: $00
	rst  $38                                         ; $4713: $ff
	ld   a, a                                        ; $4714: $7f
	ld   a, [de]                                     ; $4715: $1a
	ld   e, $29                                      ; $4716: $1e $29
	ld   hl, $0000                                   ; $4718: $21 $00 $00
	rst  $38                                         ; $471b: $ff
	ld   a, a                                        ; $471c: $7f
	ld   a, [de]                                     ; $471d: $1a
	ld   e, $1f                                      ; $471e: $1e $1f
	dec  sp                                          ; $4720: $3b
	add  l                                           ; $4721: $85
	inc  b                                           ; $4722: $04
	rst  $38                                         ; $4723: $ff
	ld   a, a                                        ; $4724: $7f
	rst  $38                                         ; $4725: $ff
	inc  bc                                          ; $4726: $03
	ld   d, d                                        ; $4727: $52
	nop                                              ; $4728: $00
	ld   b, e                                        ; $4729: $43
	db   $10                                         ; $472a: $10
	rst  $38                                         ; $472b: $ff
	ld   a, a                                        ; $472c: $7f
	ld   e, a                                        ; $472d: $5f
	ld   c, $51                                      ; $472e: $0e $51
	ld   d, [hl]                                     ; $4730: $56
	nop                                              ; $4731: $00
	nop                                              ; $4732: $00
	rst  $38                                         ; $4733: $ff
	ld   a, a                                        ; $4734: $7f
	ld   h, b                                        ; $4735: $60
	add  hl, bc                                      ; $4736: $09
	ldh  a, [$59]                                    ; $4737: $f0 $59
	nop                                              ; $4739: $00
	nop                                              ; $473a: $00
	rst  $38                                         ; $473b: $ff
	ld   a, a                                        ; $473c: $7f
	ld   e, a                                        ; $473d: $5f
	ld   c, $4c                                      ; $473e: $0e $4c
	ld   de, $0000                                   ; $4740: $11 $00 $00
	rst  $38                                         ; $4743: $ff
	ld   a, a                                        ; $4744: $7f
	rst  $38                                         ; $4745: $ff
	inc  bc                                          ; $4746: $03
	ld   h, b                                        ; $4747: $60
	ld   d, b                                        ; $4748: $50
	nop                                              ; $4749: $00
	nop                                              ; $474a: $00
	rst  $38                                         ; $474b: $ff
	ld   a, a                                        ; $474c: $7f
	ld   e, a                                        ; $474d: $5f
	ld   c, $4c                                      ; $474e: $0e $4c
	ld   de, $0000                                   ; $4750: $11 $00 $00
	rst  $38                                         ; $4753: $ff
	ld   a, a                                        ; $4754: $7f
	xor  [hl]                                        ; $4755: $ae
	dec  h                                           ; $4756: $25
	nop                                              ; $4757: $00
	ld   [bc], a                                     ; $4758: $02
	nop                                              ; $4759: $00
	nop                                              ; $475a: $00
	rst  $38                                         ; $475b: $ff
	ld   a, a                                        ; $475c: $7f
	ld   e, a                                        ; $475d: $5f
	ld   c, $6e                                      ; $475e: $0e $6e
	ld   bc, $0000                                   ; $4760: $01 $00 $00
	rst  $38                                         ; $4763: $ff
	ld   a, a                                        ; $4764: $7f
	rst  ToBoot                                         ; $4765: $c7
	dec  c                                           ; $4766: $0d
	rra                                              ; $4767: $1f
	nop                                              ; $4768: $00
	nop                                              ; $4769: $00
	nop                                              ; $476a: $00
	rst  $38                                         ; $476b: $ff
	ld   a, a                                        ; $476c: $7f
	ld   e, a                                        ; $476d: $5f
	ld   c, $6e                                      ; $476e: $0e $6e
	ld   bc, $0000                                   ; $4770: $01 $00 $00
	rst  $38                                         ; $4773: $ff
	ld   a, a                                        ; $4774: $7f
	rst  ToBoot                                         ; $4775: $c7
	dec  c                                           ; $4776: $0d
	rra                                              ; $4777: $1f
	nop                                              ; $4778: $00
	nop                                              ; $4779: $00
	nop                                              ; $477a: $00
	rst  $38                                         ; $477b: $ff
	ld   a, a                                        ; $477c: $7f
	ld   e, a                                        ; $477d: $5f
	ld   c, $b5                                      ; $477e: $0e $b5
	stop                                             ; $4780: $10 $00
	nop                                              ; $4782: $00
	rst  $38                                         ; $4783: $ff
	ld   a, a                                        ; $4784: $7f
	rst  $20                                         ; $4785: $e7
	ld   b, b                                        ; $4786: $40
	rst  ToBoot                                         ; $4787: $c7
	dec  c                                           ; $4788: $0d
	nop                                              ; $4789: $00
	nop                                              ; $478a: $00
	rst  $38                                         ; $478b: $ff
	ld   a, a                                        ; $478c: $7f
	ld   e, a                                        ; $478d: $5f
	ld   c, $b5                                      ; $478e: $0e $b5
	stop                                             ; $4790: $10 $00
	nop                                              ; $4792: $00
	rst  $38                                         ; $4793: $ff
	ld   a, a                                        ; $4794: $7f
	adc  e                                           ; $4795: $8b
	ld   bc, $40f3                                   ; $4796: $01 $f3 $40
	nop                                              ; $4799: $00
	nop                                              ; $479a: $00
	rst  $38                                         ; $479b: $ff
	ld   a, a                                        ; $479c: $7f
	ld   e, a                                        ; $479d: $5f
	ld   c, $8b                                      ; $479e: $0e $8b
	ld   bc, $0000                                   ; $47a0: $01 $00 $00
	rst  $38                                         ; $47a3: $ff
	ld   a, a                                        ; $47a4: $7f
	ld   e, a                                        ; $47a5: $5f
	ld   c, $00                                      ; $47a6: $0e $00
	rla                                              ; $47a8: $17
	add  l                                           ; $47a9: $85
	inc  b                                           ; $47aa: $04
	rst  $38                                         ; $47ab: $ff
	ld   a, a                                        ; $47ac: $7f
	ld   e, a                                        ; $47ad: $5f
	ld   c, $4f                                      ; $47ae: $0e $4f
	dec  c                                           ; $47b0: $0d
	add  l                                           ; $47b1: $85
	inc  b                                           ; $47b2: $04
	rst  $38                                         ; $47b3: $ff
	ld   a, a                                        ; $47b4: $7f
	ld   e, a                                        ; $47b5: $5f
	ld   c, $ff                                      ; $47b6: $0e $ff
	inc  bc                                          ; $47b8: $03
	add  l                                           ; $47b9: $85
	inc  b                                           ; $47ba: $04
	rst  $38                                         ; $47bb: $ff
	ld   a, a                                        ; $47bc: $7f
	ld   e, a                                        ; $47bd: $5f
	ld   c, $ab                                      ; $47be: $0e $ab
	nop                                              ; $47c0: $00
	add  l                                           ; $47c1: $85
	inc  b                                           ; $47c2: $04
	rst  $38                                         ; $47c3: $ff
	ld   a, a                                        ; $47c4: $7f
	ldh  a, [$59]                                    ; $47c5: $f0 $59
	ld   [hl], e                                     ; $47c7: $73
	ld   [rRAMG], sp                                 ; $47c8: $08 $00 $00
	rst  $38                                         ; $47cb: $ff
	ld   a, a                                        ; $47cc: $7f
	ld   e, a                                        ; $47cd: $5f
	ld   c, $4c                                      ; $47ce: $0e $4c
	ld   de, $0000                                   ; $47d0: $11 $00 $00
	rst  $38                                         ; $47d3: $ff
	ld   a, a                                        ; $47d4: $7f
	rrca                                             ; $47d5: $0f
	nop                                              ; $47d6: $00
	rst  $20                                         ; $47d7: $e7
	jr   jr_0a2_47da                                 ; $47d8: $18 $00

jr_0a2_47da:
	nop                                              ; $47da: $00
	rst  $38                                         ; $47db: $ff
	ld   a, a                                        ; $47dc: $7f
	ld   e, a                                        ; $47dd: $5f
	ld   c, $e9                                      ; $47de: $0e $e9
	inc  c                                           ; $47e0: $0c
	nop                                              ; $47e1: $00
	nop                                              ; $47e2: $00
	rst  $38                                         ; $47e3: $ff
	ld   a, a                                        ; $47e4: $7f
	ld   e, a                                        ; $47e5: $5f
	ld   c, $50                                      ; $47e6: $0e $50
	ld   sp, $0000                                   ; $47e8: $31 $00 $00
	rst  $38                                         ; $47eb: $ff
	ld   a, a                                        ; $47ec: $7f
	ld   e, a                                        ; $47ed: $5f
	ld   c, $28                                      ; $47ee: $0e $28
	dec  h                                           ; $47f0: $25
	nop                                              ; $47f1: $00
	nop                                              ; $47f2: $00
	ld   sp, $2f46                                   ; $47f3: $31 $46 $2f
	ld   bc, $2679                                   ; $47f6: $01 $79 $26
	nop                                              ; $47f9: $00
	nop                                              ; $47fa: $00
	rst  $38                                         ; $47fb: $ff
	ld   a, a                                        ; $47fc: $7f
	cpl                                              ; $47fd: $2f
	ld   bc, $2679                                   ; $47fe: $01 $79 $26
	nop                                              ; $4801: $00
	nop                                              ; $4802: $00
	ld   sp, $b446                                   ; $4803: $31 $46 $b4
	inc  b                                           ; $4806: $04
	sbc  a                                           ; $4807: $9f
	ld   bc, $0000                                   ; $4808: $01 $00 $00
	rst  $38                                         ; $480b: $ff
	ld   a, a                                        ; $480c: $7f
	or   h                                           ; $480d: $b4
	inc  b                                           ; $480e: $04
	sbc  a                                           ; $480f: $9f
	ld   bc, $0000                                   ; $4810: $01 $00 $00


TileDatas_Player::
	rst  $38                                         ; $4813: $ff
	nop                                              ; $4814: $00
	rst  $38                                         ; $4815: $ff
	nop                                              ; $4816: $00
	rst  $38                                         ; $4817: $ff
	nop                                              ; $4818: $00
	rst  $38                                         ; $4819: $ff
	nop                                              ; $481a: $00
	cp   $00                                         ; $481b: $fe $00
	cp   $00                                         ; $481d: $fe $00
	rst  $38                                         ; $481f: $ff
	nop                                              ; $4820: $00
	rst  $38                                         ; $4821: $ff
	nop                                              ; $4822: $00
	ldh  [rP1], a                                    ; $4823: $e0 $00
	ret  nz                                          ; $4825: $c0

jr_0a2_4826:
	rra                                              ; $4826: $1f
	ret  nz                                          ; $4827: $c0

	rra                                              ; $4828: $1f
	nop                                              ; $4829: $00
	nop                                              ; $482a: $00
	nop                                              ; $482b: $00
	rst  $38                                         ; $482c: $ff
	nop                                              ; $482d: $00
	rst  $38                                         ; $482e: $ff
	nop                                              ; $482f: $00
	jr   c, jr_0a2_4832                              ; $4830: $38 $00

jr_0a2_4832:
	rra                                              ; $4832: $1f
	rra                                              ; $4833: $1f
	nop                                              ; $4834: $00
	rrca                                             ; $4835: $0f
	ldh  [rIF], a                                    ; $4836: $e0 $0f
	ldh  [$03], a                                    ; $4838: $e0 $03
	nop                                              ; $483a: $00
	ld   bc, $01fc                                   ; $483b: $01 $fc $01
	db   $fc                                         ; $483e: $fc
	inc  bc                                          ; $483f: $03
	ld   [hl], b                                     ; $4840: $70
	inc  bc                                          ; $4841: $03
	ldh  [$fe], a                                    ; $4842: $e0 $fe
	ld   [bc], a                                     ; $4844: $02
	cp   $02                                         ; $4845: $fe $02
	cp   $02                                         ; $4847: $fe $02
	cp   $02                                         ; $4849: $fe $02
	cp   $02                                         ; $484b: $fe $02
	cp   $02                                         ; $484d: $fe $02
	cp   $02                                         ; $484f: $fe $02
	cp   $02                                         ; $4851: $fe $02
	cp   $00                                         ; $4853: $fe $00
	cp   $00                                         ; $4855: $fe $00
	cp   $02                                         ; $4857: $fe $02
	db   $fc                                         ; $4859: $fc
	inc  b                                           ; $485a: $04
	ld   hl, sp+$08                                  ; $485b: $f8 $08
	ldh  a, [rAUD1SWEEP]                             ; $485d: $f0 $10
	ldh  [c], a                                      ; $485f: $e2
	jr   nz, jr_0a2_4826                             ; $4860: $20 $c4

	ld   b, c                                        ; $4862: $41
	nop                                              ; $4863: $00
	rst  ToBoot                                         ; $4864: $c7
	nop                                              ; $4865: $00
	db   $e3                                         ; $4866: $e3
	nop                                              ; $4867: $00
	rst  $38                                         ; $4868: $ff
	nop                                              ; $4869: $00
	rst  $38                                         ; $486a: $ff
	nop                                              ; $486b: $00
	jp   $cf20                                       ; $486c: $c3 $20 $cf


	nop                                              ; $486f: $00
	rst  JumpTable                                         ; $4870: $df
	nop                                              ; $4871: $00
	db   $db                                         ; $4872: $db
	ld   bc, $018c                                   ; $4873: $01 $8c $01
	inc  e                                           ; $4876: $1c
	ld   bc, $00fd                                   ; $4877: $01 $fd $00
	db   $fc                                         ; $487a: $fc
	nop                                              ; $487b: $00
	inc  c                                           ; $487c: $0c
	db   $10                                         ; $487d: $10
	call z, $ec01                                    ; $487e: $cc $01 $ec
	nop                                              ; $4881: $00
	ld   l, [hl]                                     ; $4882: $6e
	cp   $02                                         ; $4883: $fe $02
	cp   $02                                         ; $4885: $fe $02
	cp   $02                                         ; $4887: $fe $02
	cp   $82                                         ; $4889: $fe $82
	ld   a, [hl]                                     ; $488b: $7e
	ld   b, d                                        ; $488c: $42
	ld   a, $22                                      ; $488d: $3e $22
	ld   e, $12                                      ; $488f: $1e $12
	adc  [hl]                                        ; $4891: $8e
	ld   a, [bc]                                     ; $4892: $0a
	call z, $9841                                    ; $4893: $cc $41 $98
	add  e                                           ; $4896: $83
	jr   @+$05                                       ; $4897: $18 $03

	inc  a                                           ; $4899: $3c
	nop                                              ; $489a: $00
	jr   c, jr_0a2_489d                              ; $489b: $38 $00

jr_0a2_489d:
	jr   nc, jr_0a2_489f                             ; $489d: $30 $00

jr_0a2_489f:
	ld   h, b                                        ; $489f: $60
	nop                                              ; $48a0: $00
	ld   h, e                                        ; $48a1: $63
	nop                                              ; $48a2: $00
	nop                                              ; $48a3: $00
	cp   e                                           ; $48a4: $bb
	nop                                              ; $48a5: $00
	or   e                                           ; $48a6: $b3
	nop                                              ; $48a7: $00
	inc  sp                                          ; $48a8: $33
	ld   c, h                                        ; $48a9: $4c
	nop                                              ; $48aa: $00
	ccf                                              ; $48ab: $3f
	nop                                              ; $48ac: $00
	rra                                              ; $48ad: $1f
	nop                                              ; $48ae: $00
	rlca                                             ; $48af: $07
	nop                                              ; $48b0: $00
	ldh  [rP1], a                                    ; $48b1: $e0 $00
	nop                                              ; $48b3: $00
	halt                                             ; $48b4: $76
	nop                                              ; $48b5: $00
	scf                                              ; $48b6: $37
	nop                                              ; $48b7: $00
	inc  sp                                          ; $48b8: $33
	ret  nz                                          ; $48b9: $c0

	nop                                              ; $48ba: $00
	ldh  a, [rP1]                                    ; $48bb: $f0 $00
	ldh  [rP1], a                                    ; $48bd: $e0 $00
	ret  nz                                          ; $48bf: $c0

	nop                                              ; $48c0: $00
	rra                                              ; $48c1: $1f
	nop                                              ; $48c2: $00
	adc  $0a                                         ; $48c3: $ce $0a
	ld   b, [hl]                                     ; $48c5: $46
	ld   b, $62                                      ; $48c6: $06 $62
	ld   [bc], a                                     ; $48c8: $02
	ldh  a, [c]                                      ; $48c9: $f2
	ld   [bc], a                                     ; $48ca: $02
	ldh  a, [c]                                      ; $48cb: $f2
	ld   [bc], a                                     ; $48cc: $02
	ldh  a, [c]                                      ; $48cd: $f2
	ld   [bc], a                                     ; $48ce: $02
	ld   a, [$fa02]                                  ; $48cf: $fa $02 $fa
	ld   [bc], a                                     ; $48d2: $02
	ld   b, a                                        ; $48d3: $47
	nop                                              ; $48d4: $00
	ld   c, a                                        ; $48d5: $4f
	nop                                              ; $48d6: $00
	ld   e, a                                        ; $48d7: $5f
	nop                                              ; $48d8: $00
	ld   e, a                                        ; $48d9: $5f
	nop                                              ; $48da: $00
	rra                                              ; $48db: $1f
	nop                                              ; $48dc: $00
	inc  e                                           ; $48dd: $1c
	nop                                              ; $48de: $00
	jr   @+$05                                       ; $48df: $18 $03

	inc  e                                           ; $48e1: $1c
	ld   bc, $00f0                                   ; $48e2: $01 $f0 $00
	ld   hl, sp+$00                                  ; $48e5: $f8 $00
	db   $fc                                         ; $48e7: $fc
	nop                                              ; $48e8: $00
	db   $fc                                         ; $48e9: $fc
	nop                                              ; $48ea: $00
	sbc  h                                           ; $48eb: $9c
	nop                                              ; $48ec: $00
	nop                                              ; $48ed: $00
	ld   h, e                                        ; $48ee: $63
	nop                                              ; $48ef: $00
	db   $fd                                         ; $48f0: $fd
	ld   [bc], a                                     ; $48f1: $02
	ld   hl, sp+$7f                                  ; $48f2: $f8 $7f
	nop                                              ; $48f4: $00
	ld   a, a                                        ; $48f5: $7f
	nop                                              ; $48f6: $00
	rst  $38                                         ; $48f7: $ff
	nop                                              ; $48f8: $00
	rst  $38                                         ; $48f9: $ff
	nop                                              ; $48fa: $00
	inc  bc                                          ; $48fb: $03
	nop                                              ; $48fc: $00
	ld   bc, $00fc                                   ; $48fd: $01 $fc $00
	cp   $10                                         ; $4900: $fe $10
	add  $fa                                         ; $4902: $c6 $fa
	ld   [bc], a                                     ; $4904: $02
	ld   a, [$fa02]                                  ; $4905: $fa $02 $fa
	ld   [bc], a                                     ; $4908: $02
	ld   a, [$f202]                                  ; $4909: $fa $02 $f2
	ld   [bc], a                                     ; $490c: $02
	ldh  a, [c]                                      ; $490d: $f2
	ld   [bc], a                                     ; $490e: $02
	ldh  a, [c]                                      ; $490f: $f2
	ld   [bc], a                                     ; $4910: $02
	ldh  [c], a                                      ; $4911: $e2
	ld   [bc], a                                     ; $4912: $02
	adc  b                                           ; $4913: $88
	add  e                                           ; $4914: $83
	ret  z                                           ; $4915: $c8

	ld   b, e                                        ; $4916: $43
	ret  nz                                          ; $4917: $c0

	ld   b, e                                        ; $4918: $43
	ldh  [rAUD4GO], a                                ; $4919: $e0 $23
	ldh  a, [rAUD1LEN]                               ; $491b: $f0 $11
	ld   hl, sp+$0b                                  ; $491d: $f8 $0b
	ld   hl, sp+$03                                  ; $491f: $f8 $03
	db   $fc                                         ; $4921: $fc
	nop                                              ; $4922: $00
	ld   [bc], a                                     ; $4923: $02
	db   $fc                                         ; $4924: $fc
	nop                                              ; $4925: $00
	ld   l, h                                        ; $4926: $6c
	nop                                              ; $4927: $00
	db   $fd                                         ; $4928: $fd
	nop                                              ; $4929: $00
	ld   l, l                                        ; $492a: $6d
	ld   [bc], a                                     ; $492b: $02
	ld   sp, hl                                      ; $492c: $f9
	nop                                              ; $492d: $00
	db   $fc                                         ; $492e: $fc
	nop                                              ; $492f: $00
	db   $fd                                         ; $4930: $fd
	nop                                              ; $4931: $00
	db   $e3                                         ; $4932: $e3
	nop                                              ; $4933: $00
	adc  $00                                         ; $4934: $ce $00
	call z, $8f20                                    ; $4936: $cc $20 $8f
	nop                                              ; $4939: $00
	add  [hl]                                        ; $493a: $86
	nop                                              ; $493b: $00
	cp   $00                                         ; $493c: $fe $00
	rlca                                             ; $493e: $07
	nop                                              ; $493f: $00
	rst  $38                                         ; $4940: $ff
	nop                                              ; $4941: $00
	inc  bc                                          ; $4942: $03
	add  $06                                         ; $4943: $c6 $06
	adc  $0a                                         ; $4945: $ce $0a
	ld   c, $0a                                      ; $4947: $0e $0a
	ld   e, $12                                      ; $4949: $1e $12
	ld   a, $22                                      ; $494b: $3e $22
	ld   a, [hl]                                     ; $494d: $7e
	ld   b, d                                        ; $494e: $42
	ld   a, [hl]                                     ; $494f: $7e
	ld   [bc], a                                     ; $4950: $02
	ld   a, [hl]                                     ; $4951: $7e
	ld   [bc], a                                     ; $4952: $02
	db   $fc                                         ; $4953: $fc
	ld   bc, $01fc                                   ; $4954: $01 $fc $01
	cp   $00                                         ; $4957: $fe $00
	db   $fc                                         ; $4959: $fc
	ld   bc, $01fc                                   ; $495a: $01 $fc $01
	cp   $00                                         ; $495d: $fe $00
	rst  $38                                         ; $495f: $ff
	nop                                              ; $4960: $00
	rst  $38                                         ; $4961: $ff
	nop                                              ; $4962: $00
	nop                                              ; $4963: $00
	ld   h, a                                        ; $4964: $67
	nop                                              ; $4965: $00
	rst  $38                                         ; $4966: $ff
	nop                                              ; $4967: $00
	ld   a, a                                        ; $4968: $7f
	nop                                              ; $4969: $00
	add  [hl]                                        ; $496a: $86
	nop                                              ; $496b: $00
	rst  $38                                         ; $496c: $ff
	nop                                              ; $496d: $00
	rst  $38                                         ; $496e: $ff
	nop                                              ; $496f: $00
	ld   b, $f9                                      ; $4970: $06 $f9
	nop                                              ; $4972: $00
	nop                                              ; $4973: $00
	ld   a, a                                        ; $4974: $7f
	nop                                              ; $4975: $00
	rst  $38                                         ; $4976: $ff
	nop                                              ; $4977: $00
	rst  ToBoot                                         ; $4978: $c7
	nop                                              ; $4979: $00
	ld   b, $00                                      ; $497a: $06 $00
	or   $00                                         ; $497c: $f6 $00
	rst  $30                                         ; $497e: $f7
	ld   [$fc03], sp                                 ; $497f: $08 $03 $fc
	nop                                              ; $4982: $00
	ld   a, [hl]                                     ; $4983: $7e
	ld   [bc], a                                     ; $4984: $02
	ld   a, [hl]                                     ; $4985: $7e
	ld   [bc], a                                     ; $4986: $02
	ld   a, [hl]                                     ; $4987: $7e
	ld   [bc], a                                     ; $4988: $02
	cp   $02                                         ; $4989: $fe $02
	cp   $02                                         ; $498b: $fe $02
	ld   a, [hl]                                     ; $498d: $7e
	ld   [bc], a                                     ; $498e: $02
	ld   a, [hl]                                     ; $498f: $7e
	ld   [bc], a                                     ; $4990: $02
	cp   $02                                         ; $4991: $fe $02
	nop                                              ; $4993: $00
	nop                                              ; $4994: $00
	nop                                              ; $4995: $00
	nop                                              ; $4996: $00
	nop                                              ; $4997: $00
	nop                                              ; $4998: $00
	nop                                              ; $4999: $00
	nop                                              ; $499a: $00
	nop                                              ; $499b: $00
	nop                                              ; $499c: $00
	nop                                              ; $499d: $00
	nop                                              ; $499e: $00
	nop                                              ; $499f: $00
	nop                                              ; $49a0: $00
	nop                                              ; $49a1: $00
	nop                                              ; $49a2: $00
	nop                                              ; $49a3: $00
	nop                                              ; $49a4: $00
	nop                                              ; $49a5: $00
	nop                                              ; $49a6: $00
	nop                                              ; $49a7: $00
	nop                                              ; $49a8: $00
	nop                                              ; $49a9: $00
	nop                                              ; $49aa: $00
	nop                                              ; $49ab: $00
	nop                                              ; $49ac: $00
	nop                                              ; $49ad: $00
	nop                                              ; $49ae: $00
	nop                                              ; $49af: $00
	nop                                              ; $49b0: $00
	nop                                              ; $49b1: $00
	nop                                              ; $49b2: $00
	nop                                              ; $49b3: $00
	nop                                              ; $49b4: $00
	nop                                              ; $49b5: $00
	nop                                              ; $49b6: $00
	nop                                              ; $49b7: $00
	nop                                              ; $49b8: $00
	nop                                              ; $49b9: $00
	nop                                              ; $49ba: $00
	nop                                              ; $49bb: $00
	nop                                              ; $49bc: $00
	nop                                              ; $49bd: $00
	nop                                              ; $49be: $00
	nop                                              ; $49bf: $00
	nop                                              ; $49c0: $00
	nop                                              ; $49c1: $00
	nop                                              ; $49c2: $00
	nop                                              ; $49c3: $00
	nop                                              ; $49c4: $00
	nop                                              ; $49c5: $00
	nop                                              ; $49c6: $00
	nop                                              ; $49c7: $00
	nop                                              ; $49c8: $00
	nop                                              ; $49c9: $00
	nop                                              ; $49ca: $00
	nop                                              ; $49cb: $00
	nop                                              ; $49cc: $00
	nop                                              ; $49cd: $00
	nop                                              ; $49ce: $00
	nop                                              ; $49cf: $00
	nop                                              ; $49d0: $00
	nop                                              ; $49d1: $00
	nop                                              ; $49d2: $00
	nop                                              ; $49d3: $00
	nop                                              ; $49d4: $00
	nop                                              ; $49d5: $00
	nop                                              ; $49d6: $00
	nop                                              ; $49d7: $00
	nop                                              ; $49d8: $00
	nop                                              ; $49d9: $00
	nop                                              ; $49da: $00
	nop                                              ; $49db: $00
	nop                                              ; $49dc: $00
	nop                                              ; $49dd: $00
	nop                                              ; $49de: $00
	nop                                              ; $49df: $00
	nop                                              ; $49e0: $00
	nop                                              ; $49e1: $00
	nop                                              ; $49e2: $00
	nop                                              ; $49e3: $00
	nop                                              ; $49e4: $00
	nop                                              ; $49e5: $00
	nop                                              ; $49e6: $00
	nop                                              ; $49e7: $00
	nop                                              ; $49e8: $00
	nop                                              ; $49e9: $00
	nop                                              ; $49ea: $00
	nop                                              ; $49eb: $00
	nop                                              ; $49ec: $00
	nop                                              ; $49ed: $00
	nop                                              ; $49ee: $00
	nop                                              ; $49ef: $00
	nop                                              ; $49f0: $00
	nop                                              ; $49f1: $00
	nop                                              ; $49f2: $00
	nop                                              ; $49f3: $00
	nop                                              ; $49f4: $00
	nop                                              ; $49f5: $00
	nop                                              ; $49f6: $00
	nop                                              ; $49f7: $00
	nop                                              ; $49f8: $00
	nop                                              ; $49f9: $00
	nop                                              ; $49fa: $00
	nop                                              ; $49fb: $00
	nop                                              ; $49fc: $00
	nop                                              ; $49fd: $00
	nop                                              ; $49fe: $00
	nop                                              ; $49ff: $00
	nop                                              ; $4a00: $00
	nop                                              ; $4a01: $00
	nop                                              ; $4a02: $00
	nop                                              ; $4a03: $00
	nop                                              ; $4a04: $00
	nop                                              ; $4a05: $00
	nop                                              ; $4a06: $00
	nop                                              ; $4a07: $00
	nop                                              ; $4a08: $00
	nop                                              ; $4a09: $00
	nop                                              ; $4a0a: $00
	nop                                              ; $4a0b: $00
	nop                                              ; $4a0c: $00
	nop                                              ; $4a0d: $00
	nop                                              ; $4a0e: $00
	nop                                              ; $4a0f: $00
	nop                                              ; $4a10: $00
	nop                                              ; $4a11: $00
	nop                                              ; $4a12: $00
	ld   bc, $0201                                   ; $4a13: $01 $01 $02
	inc  bc                                          ; $4a16: $03
	dec  b                                           ; $4a17: $05
	rlca                                             ; $4a18: $07
	ld   a, c                                        ; $4a19: $79
	ld   a, a                                        ; $4a1a: $7f
	add  l                                           ; $4a1b: $85
	rst  $38                                         ; $4a1c: $ff
	sub  e                                           ; $4a1d: $93
	rst  $38                                         ; $4a1e: $ff
	adc  l                                           ; $4a1f: $8d
	rst  $38                                         ; $4a20: $ff
	ld   c, a                                        ; $4a21: $4f
	ld   a, a                                        ; $4a22: $7f
	call $9bff                                       ; $4a23: $cd $ff $9b
	rst  $38                                         ; $4a26: $ff
	ld   [hl], $fe                                   ; $4a27: $36 $fe
	inc  l                                           ; $4a29: $2c
	xor  l                                           ; $4a2a: $ad
	ld   e, c                                        ; $4a2b: $59
	ld   e, e                                        ; $4a2c: $5b
	ld   e, c                                        ; $4a2d: $59
	ld   e, e                                        ; $4a2e: $5b
	ld   d, e                                        ; $4a2f: $53
	rst  $38                                         ; $4a30: $ff
	ld   [hl], a                                     ; $4a31: $77
	rst  $38                                         ; $4a32: $ff
	add  a                                           ; $4a33: $87
	rst  $38                                         ; $4a34: $ff
	rra                                              ; $4a35: $1f
	rst  $38                                         ; $4a36: $ff
	ld   a, h                                        ; $4a37: $7c
	rst  $38                                         ; $4a38: $ff
	ldh  a, [$f9]                                    ; $4a39: $f0 $f9
	jp   $c6e7                                       ; $4a3b: $c3 $e7 $c6


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a3e: $cf
	adc  h                                           ; $4a3f: $8c
	rst  JumpTable                                         ; $4a40: $df
	dec  sp                                          ; $4a41: $3b
	rst  $38                                         ; $4a42: $ff
	cp   $fe                                         ; $4a43: $fe $fe
	ld   [bc], a                                     ; $4a45: $02
	cp   $0e                                         ; $4a46: $fe $0e
	cp   $fa                                         ; $4a48: $fe $fa
	cp   $f2                                         ; $4a4a: $fe $f2
	cp   $0a                                         ; $4a4c: $fe $0a
	cp   $e6                                         ; $4a4e: $fe $e6
	cp   $f6                                         ; $4a50: $fe $f6
	cp   $4f                                         ; $4a52: $fe $4f
	ld   l, [hl]                                     ; $4a54: $6e
	ld   c, a                                        ; $4a55: $4f
	ld   l, [hl]                                     ; $4a56: $6e
	ld   c, a                                        ; $4a57: $4f
	ld   c, h                                        ; $4a58: $4c
	ld   c, a                                        ; $4a59: $4f
	ld   c, h                                        ; $4a5a: $4c
	ld   e, a                                        ; $4a5b: $5f
	ld   e, h                                        ; $4a5c: $5c
	ld   e, a                                        ; $4a5d: $5f
	ld   e, h                                        ; $4a5e: $5c
	ld   e, a                                        ; $4a5f: $5f
	ld   a, h                                        ; $4a60: $7c
	ld   e, a                                        ; $4a61: $5f
	ld   a, b                                        ; $4a62: $78
	rst  $38                                         ; $4a63: $ff
	rst  $38                                         ; $4a64: $ff
	rst  $38                                         ; $4a65: $ff
	ld   a, a                                        ; $4a66: $7f
	rst  $38                                         ; $4a67: $ff
	ccf                                              ; $4a68: $3f
	rst  $38                                         ; $4a69: $ff
	dec  c                                           ; $4a6a: $0d
	dec  e                                           ; $4a6b: $1d
	ldh  [c], a                                      ; $4a6c: $e2
	nop                                              ; $4a6d: $00
	rst  $38                                         ; $4a6e: $ff
	nop                                              ; $4a6f: $00
	rst  $38                                         ; $4a70: $ff
	nop                                              ; $4a71: $00
	rst  $38                                         ; $4a72: $ff
	rst  $38                                         ; $4a73: $ff
	rst  $38                                         ; $4a74: $ff
	rst  $38                                         ; $4a75: $ff
	rst  $38                                         ; $4a76: $ff
	rst  $38                                         ; $4a77: $ff
	ret  nz                                          ; $4a78: $c0

	rst  $38                                         ; $4a79: $ff
	nop                                              ; $4a7a: $00
	add  e                                           ; $4a7b: $83
	ld   a, h                                        ; $4a7c: $7c
	ld   bc, $00fe                                   ; $4a7d: $01 $fe $00
	rst  $38                                         ; $4a80: $ff
	nop                                              ; $4a81: $00
	rst  $38                                         ; $4a82: $ff
	or   $fe                                         ; $4a83: $f6 $fe
	and  $fe                                         ; $4a85: $e6 $fe
	ld   [$ee7e], a                                  ; $4a87: $ea $7e $ee
	ld   a, $ee                                      ; $4a8a: $3e $ee
	ld   a, $ee                                      ; $4a8c: $3e $ee
	ld   a, $ca                                      ; $4a8e: $3e $ca
	ld   e, [hl]                                     ; $4a90: $5e
	adc  $5e                                         ; $4a91: $ce $5e
	ld   a, [hl]                                     ; $4a93: $7e
	ld   a, c                                        ; $4a94: $79
	ld   a, [hl]                                     ; $4a95: $7e
	ld   a, c                                        ; $4a96: $79
	ld   a, [hl]                                     ; $4a97: $7e
	ld   a, a                                        ; $4a98: $7f
	rst  $38                                         ; $4a99: $ff
	ld   sp, hl                                      ; $4a9a: $f9
	rst  $28                                         ; $4a9b: $ef
	rst  $28                                         ; $4a9c: $ef
	add  $c6                                         ; $4a9d: $c6 $c6
	rst  ToBoot                                         ; $4a9f: $c7
	push bc                                          ; $4aa0: $c5
	rst  ToBoot                                         ; $4aa1: $c7
	add  $00                                         ; $4aa2: $c6 $00
	rst  $38                                         ; $4aa4: $ff
	nop                                              ; $4aa5: $00
	rst  $38                                         ; $4aa6: $ff
	nop                                              ; $4aa7: $00
	rst  $38                                         ; $4aa8: $ff
	add  b                                           ; $4aa9: $80
	rst  $38                                         ; $4aaa: $ff
	ret  nz                                          ; $4aab: $c0

	ld   a, a                                        ; $4aac: $7f
	pop  bc                                          ; $4aad: $c1
	cp   [hl]                                        ; $4aae: $be
	db   $e3                                         ; $4aaf: $e3
	ld   e, l                                        ; $4ab0: $5d
	ld   hl, $00de                                   ; $4ab1: $21 $de $00
	rst  $38                                         ; $4ab4: $ff
	nop                                              ; $4ab5: $00
	rst  $38                                         ; $4ab6: $ff
	ld   bc, $01ff                                   ; $4ab7: $01 $ff $01
	rst  $38                                         ; $4aba: $ff
	ld   a, a                                        ; $4abb: $7f
	cp   a                                           ; $4abc: $bf
	rst  $38                                         ; $4abd: $ff
	pop  bc                                          ; $4abe: $c1
	cp   a                                           ; $4abf: $bf
	cp   l                                           ; $4ac0: $bd
	di                                               ; $4ac1: $f3
	db   $d3                                         ; $4ac2: $d3
	sbc  [hl]                                        ; $4ac3: $9e
	cp   [hl]                                        ; $4ac4: $be
	sbc  d                                           ; $4ac5: $9a
	cp   [hl]                                        ; $4ac6: $be
	ld   a, $7e                                      ; $4ac7: $3e $7e
	ld   a, $7e                                      ; $4ac9: $3e $7e
	ld   a, [hl-]                                    ; $4acb: $3a
	ld   a, [hl]                                     ; $4acc: $7e
	ld   a, $7e                                      ; $4acd: $3e $7e
	ld   a, $7e                                      ; $4acf: $3e $7e
	ld   e, $7a                                      ; $4ad1: $1e $7a
	add  h                                           ; $4ad3: $84
	add  a                                           ; $4ad4: $87
	add  h                                           ; $4ad5: $84
	add  a                                           ; $4ad6: $87
	add  h                                           ; $4ad7: $84
	add  a                                           ; $4ad8: $87
	inc  b                                           ; $4ad9: $04
	rlca                                             ; $4ada: $07
	ld   b, $05                                      ; $4adb: $06 $05
	ld   [bc], a                                     ; $4add: $02
	inc  bc                                          ; $4ade: $03
	inc  bc                                          ; $4adf: $03

jr_0a2_4ae0:
	ld   [bc], a                                     ; $4ae0: $02
	ld   bc, $0001                                   ; $4ae1: $01 $01 $00
	rst  $38                                         ; $4ae4: $ff
	nop                                              ; $4ae5: $00
	rst  $38                                         ; $4ae6: $ff
	nop                                              ; $4ae7: $00
	db   $fc                                         ; $4ae8: $fc
	ld   [hl], b                                     ; $4ae9: $70
	call $cf70                                       ; $4aea: $cd $70 $cf
	ld   h, b                                        ; $4aed: $60
	sbc  a                                           ; $4aee: $9f
	jr   nc, jr_0a2_4ae0                             ; $4aef: $30 $ef

	inc  c                                           ; $4af1: $0c
	rst  $30                                         ; $4af2: $f7
	ld   [hl], e                                     ; $4af3: $73
	ld   sp, hl                                      ; $4af4: $f9
	dec  e                                           ; $4af5: $1d
	ldh  [c], a                                      ; $4af6: $e2
	ld   bc, $03fe                                   ; $4af7: $01 $fe $03
	db   $fc                                         ; $4afa: $fc
	inc  bc                                          ; $4afb: $03
	db   $fc                                         ; $4afc: $fc
	inc  bc                                          ; $4afd: $03
	db   $fc                                         ; $4afe: $fc
	rlca                                             ; $4aff: $07
	ld   hl, sp+$07                                  ; $4b00: $f8 $07
	ld   sp, hl                                      ; $4b02: $f9
	ld   e, $76                                      ; $4b03: $1e $76
	sbc  [hl]                                        ; $4b05: $9e
	cp   d                                           ; $4b06: $ba
	sbc  [hl]                                        ; $4b07: $9e
	or   [hl]                                        ; $4b08: $b6
	sbc  [hl]                                        ; $4b09: $9e
	or   [hl]                                        ; $4b0a: $b6
	cp   $7a                                         ; $4b0b: $fe $7a
	xor  $7a                                         ; $4b0d: $ee $7a
	xor  $fe                                         ; $4b0f: $ee $fe
	ld   l, [hl]                                     ; $4b11: $6e
	ld   a, [hl]                                     ; $4b12: $7e
	inc  c                                           ; $4b13: $0c
	inc  c                                           ; $4b14: $0c
	ld   e, $1e                                      ; $4b15: $1e $1e
	inc  hl                                          ; $4b17: $23
	inc  hl                                          ; $4b18: $23
	ld   bc, $0101                                   ; $4b19: $01 $01 $01
	ld   bc, $8181                                   ; $4b1c: $01 $81 $81
	jp   $3fc3                                       ; $4b1f: $c3 $c3 $3f


	rst  $38                                         ; $4b22: $ff
	sub  b                                           ; $4b23: $90
	rst  $28                                         ; $4b24: $ef
	ld   h, b                                        ; $4b25: $60
	ld   e, a                                        ; $4b26: $5f
	jr   nc, @+$31                                   ; $4b27: $30 $2f

	sbc  b                                           ; $4b29: $98
	sub  a                                           ; $4b2a: $97
	adc  a                                           ; $4b2b: $8f
	adc  c                                           ; $4b2c: $89
	add  a                                           ; $4b2d: $87
	add  [hl]                                        ; $4b2e: $86
	inc  bc                                          ; $4b2f: $03
	ld   [bc], a                                     ; $4b30: $02
	rrca                                             ; $4b31: $0f
	ld   c, $0f                                      ; $4b32: $0e $0f
	ldh  a, [$1f]                                    ; $4b34: $f0 $1f
	ldh  [$3f], a                                    ; $4b36: $e0 $3f
	ret  nz                                          ; $4b38: $c0

	rst  $38                                         ; $4b39: $ff
	jr   nz, @+$01                                   ; $4b3a: $20 $ff

	sbc  h                                           ; $4b3c: $9c
	rst  $38                                         ; $4b3d: $ff
	ld   a, $fb                                      ; $4b3e: $3e $fb
	ld   h, l                                        ; $4b40: $65
	di                                               ; $4b41: $f3
	ld   c, l                                        ; $4b42: $4d
	xor  [hl]                                        ; $4b43: $ae
	cp   [hl]                                        ; $4b44: $be
	and  $7e                                         ; $4b45: $e6 $7e
	and  $7e                                         ; $4b47: $e6 $7e
	and  $7e                                         ; $4b49: $e6 $7e
	and  $7e                                         ; $4b4b: $e6 $7e
	and  $7e                                         ; $4b4d: $e6 $7e
	and  $7e                                         ; $4b4f: $e6 $7e
	ld   [$ff3a], a                                  ; $4b51: $ea $3a $ff
	cp   $fe                                         ; $4b54: $fe $fe
	db   $fd                                         ; $4b56: $fd
	ld   hl, sp+$77                                  ; $4b57: $f8 $77
	ldh  [$1f], a                                    ; $4b59: $e0 $1f
	nop                                              ; $4b5b: $00
	rst  $38                                         ; $4b5c: $ff
	nop                                              ; $4b5d: $00
	rst  $38                                         ; $4b5e: $ff
	nop                                              ; $4b5f: $00
	rst  $38                                         ; $4b60: $ff
	nop                                              ; $4b61: $00
	rst  $38                                         ; $4b62: $ff
	jp   nc, Jump_0a2_76d7                           ; $4b63: $d2 $d7 $76

	cp   a                                           ; $4b66: $bf
	add  hl, de                                      ; $4b67: $19
	db   $eb                                         ; $4b68: $eb
	ld   a, [de]                                     ; $4b69: $1a
	xor  $0e                                         ; $4b6a: $ee $0e
	rst  $30                                         ; $4b6c: $f7
	rst  $38                                         ; $4b6d: $ff
	inc  bc                                          ; $4b6e: $03
	ld   a, a                                        ; $4b6f: $7f
	and  d                                           ; $4b70: $a2
	ccf                                              ; $4b71: $3f
	ret  nc                                          ; $4b72: $d0

	rst  ToBoot                                         ; $4b73: $c7
	ld   a, b                                        ; $4b74: $78
	ld   b, a                                        ; $4b75: $47
	ld   hl, sp-$11                                  ; $4b76: $f8 $ef
	rst  $30                                         ; $4b78: $f7
	ld   a, c                                        ; $4b79: $79
	ei                                               ; $4b7a: $fb
	rst  JumpTable                                         ; $4b7b: $df
	ld   e, a                                        ; $4b7c: $5f
	rst  JumpTable                                         ; $4b7d: $df

jr_0a2_4b7e:
	rst  $28                                         ; $4b7e: $ef
	rst  $38                                         ; $4b7f: $ff
	jr   nc, jr_0a2_4b7e                             ; $4b80: $30 $fc

	inc  bc                                          ; $4b82: $03
	cp   $3e                                         ; $4b83: $fe $3e
	cp   $f6                                         ; $4b85: $fe $f6
	ld   a, [hl]                                     ; $4b87: $7e
	cp   $fa                                         ; $4b88: $fe $fa
	ld   a, [$e6fe]                                  ; $4b8a: $fa $fe $e6
	sbc  $a2                                         ; $4b8d: $de $a2
	sbc  [hl]                                        ; $4b8f: $9e
	ld   h, d                                        ; $4b90: $62
	ld   e, $e2                                      ; $4b91: $1e $e2
	ld   a, [hl]                                     ; $4b93: $7e
	ld   a, c                                        ; $4b94: $79
	ld   a, [hl]                                     ; $4b95: $7e
	ld   a, c                                        ; $4b96: $79
	ld   a, [hl]                                     ; $4b97: $7e
	ld   a, l                                        ; $4b98: $7d
	rst  $38                                         ; $4b99: $ff
	ei                                               ; $4b9a: $fb
	rst  $28                                         ; $4b9b: $ef
	rst  $28                                         ; $4b9c: $ef
	add  $c6                                         ; $4b9d: $c6 $c6
	rst  ToBoot                                         ; $4b9f: $c7
	push bc                                          ; $4ba0: $c5
	rst  ToBoot                                         ; $4ba1: $c7
	add  $00                                         ; $4ba2: $c6 $00
	rst  $38                                         ; $4ba4: $ff
	nop                                              ; $4ba5: $00
	rst  $38                                         ; $4ba6: $ff
	nop                                              ; $4ba7: $00
	rst  $38                                         ; $4ba8: $ff
	nop                                              ; $4ba9: $00
	rst  $38                                         ; $4baa: $ff
	add  b                                           ; $4bab: $80
	rst  $38                                         ; $4bac: $ff
	call nz, $e7fb                                   ; $4bad: $c4 $fb $e7
	ld   e, e                                        ; $4bb0: $5b
	inc  hl                                          ; $4bb1: $23
	call c, $ff00                                    ; $4bb2: $dc $00 $ff
	nop                                              ; $4bb5: $00
	rst  $38                                         ; $4bb6: $ff
	ld   bc, $01ff                                   ; $4bb7: $01 $ff $01
	rst  $38                                         ; $4bba: $ff
	rrca                                             ; $4bbb: $0f
	rst  $30                                         ; $4bbc: $f7
	rst  $38                                         ; $4bbd: $ff
	ld   a, c                                        ; $4bbe: $79
	cp   a                                           ; $4bbf: $bf
	cp   a                                           ; $4bc0: $bf
	di                                               ; $4bc1: $f3
	db   $d3                                         ; $4bc2: $d3
	nop                                              ; $4bc3: $00
	rst  $38                                         ; $4bc4: $ff
	nop                                              ; $4bc5: $00
	rst  $38                                         ; $4bc6: $ff
	nop                                              ; $4bc7: $00
	db   $fc                                         ; $4bc8: $fc
	ld   [hl], b                                     ; $4bc9: $70
	call $cf70                                       ; $4bca: $cd $70 $cf
	ld   h, b                                        ; $4bcd: $60
	sbc  a                                           ; $4bce: $9f
	jr   c, @-$17                                    ; $4bcf: $38 $e7

	inc  b                                           ; $4bd1: $04
	rst  $38                                         ; $4bd2: $ff
	nop                                              ; $4bd3: $00
	nop                                              ; $4bd4: $00
	nop                                              ; $4bd5: $00
	nop                                              ; $4bd6: $00
	nop                                              ; $4bd7: $00
	nop                                              ; $4bd8: $00
	nop                                              ; $4bd9: $00
	nop                                              ; $4bda: $00
	nop                                              ; $4bdb: $00
	nop                                              ; $4bdc: $00
	nop                                              ; $4bdd: $00
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00
	nop                                              ; $4be0: $00
	nop                                              ; $4be1: $00
	nop                                              ; $4be2: $00
	nop                                              ; $4be3: $00
	nop                                              ; $4be4: $00
	nop                                              ; $4be5: $00
	nop                                              ; $4be6: $00
	nop                                              ; $4be7: $00
	nop                                              ; $4be8: $00
	nop                                              ; $4be9: $00
	nop                                              ; $4bea: $00
	nop                                              ; $4beb: $00
	nop                                              ; $4bec: $00
	nop                                              ; $4bed: $00
	nop                                              ; $4bee: $00
	nop                                              ; $4bef: $00
	nop                                              ; $4bf0: $00
	nop                                              ; $4bf1: $00
	nop                                              ; $4bf2: $00
	nop                                              ; $4bf3: $00

jr_0a2_4bf4:
	nop                                              ; $4bf4: $00
	nop                                              ; $4bf5: $00
	nop                                              ; $4bf6: $00
	nop                                              ; $4bf7: $00
	nop                                              ; $4bf8: $00
	nop                                              ; $4bf9: $00
	nop                                              ; $4bfa: $00
	nop                                              ; $4bfb: $00
	nop                                              ; $4bfc: $00
	nop                                              ; $4bfd: $00
	nop                                              ; $4bfe: $00
	nop                                              ; $4bff: $00
	nop                                              ; $4c00: $00
	nop                                              ; $4c01: $00
	nop                                              ; $4c02: $00
	nop                                              ; $4c03: $00
	nop                                              ; $4c04: $00
	nop                                              ; $4c05: $00
	nop                                              ; $4c06: $00
	nop                                              ; $4c07: $00
	nop                                              ; $4c08: $00
	nop                                              ; $4c09: $00
	nop                                              ; $4c0a: $00
	nop                                              ; $4c0b: $00
	nop                                              ; $4c0c: $00
	nop                                              ; $4c0d: $00
	nop                                              ; $4c0e: $00
	nop                                              ; $4c0f: $00
	nop                                              ; $4c10: $00
	nop                                              ; $4c11: $00
	nop                                              ; $4c12: $00
	sub  l                                           ; $4c13: $95
	nop                                              ; $4c14: $00
	ld   bc, $ca31                                   ; $4c15: $01 $31 $ca
	add  b                                           ; $4c18: $80
	ld   [$eb00], a                                  ; $4c19: $ea $00 $eb
	add  c                                           ; $4c1c: $81
	db   $ed                                         ; $4c1d: $ed
	nop                                              ; $4c1e: $00
	push hl                                          ; $4c1f: $e5
	add  b                                           ; $4c20: $80
	pop  hl                                          ; $4c21: $e1
	add  c                                           ; $4c22: $81
	jp   nz, $d000                                   ; $4c23: $c2 $00 $d0

	add  b                                           ; $4c26: $80
	call nz, Call_0a2_4503                           ; $4c27: $c4 $03 $45
	ld   b, d                                        ; $4c2a: $42
	ld   [bc], a                                     ; $4c2b: $02
	add  d                                           ; $4c2c: $82
	add  d                                           ; $4c2d: $82
	ld   [hl+], a                                    ; $4c2e: $22
	ld   [bc], a                                     ; $4c2f: $02
	ld   h, d                                        ; $4c30: $62
	ld   l, d                                        ; $4c31: $6a
	ld   a, d                                        ; $4c32: $7a
	add  b                                           ; $4c33: $80
	ld   a, e                                        ; $4c34: $7b
	add  b                                           ; $4c35: $80
	ld   a, c                                        ; $4c36: $79
	ld   [bc], a                                     ; $4c37: $02
	ret  nz                                          ; $4c38: $c0

	add  c                                           ; $4c39: $81
	sub  c                                           ; $4c3a: $91
	add  b                                           ; $4c3b: $80
	sub  b                                           ; $4c3c: $90
	ld   bc, $5010                                   ; $4c3d: $01 $10 $50
	add  c                                           ; $4c40: $81
	db   $10                                         ; $4c41: $10
	jr   nz, @+$15                                   ; $4c42: $20 $13

	sub  b                                           ; $4c44: $90
	add  l                                           ; $4c45: $85
	add  c                                           ; $4c46: $81
	jp   $f9c2                                       ; $4c47: $c3 $c2 $f9


	nop                                              ; $4c4a: $00
	cp   h                                           ; $4c4b: $bc
	add  b                                           ; $4c4c: $80
	rst  $38                                         ; $4c4d: $ff
	nop                                              ; $4c4e: $00
	ccf                                              ; $4c4f: $3f
	nop                                              ; $4c50: $00
	ldh  [c], a                                      ; $4c51: $e2
	inc  e                                           ; $4c52: $1c
	db   $fc                                         ; $4c53: $fc
	add  b                                           ; $4c54: $80
	ldh  a, [c]                                      ; $4c55: $f2
	ld   [$40fe], sp                                 ; $4c56: $08 $fe $40
	inc  [hl]                                        ; $4c59: $34
	dec  c                                           ; $4c5a: $0d
	ld   a, [bc]                                     ; $4c5b: $0a
	rrca                                             ; $4c5c: $0f
	ld   de, $931b                                   ; $4c5d: $11 $1b $93
	rla                                              ; $4c60: $17
	scf                                              ; $4c61: $37
	cpl                                              ; $4c62: $2f
	rst  $28                                         ; $4c63: $ef
	add  b                                           ; $4c64: $80
	rra                                              ; $4c65: $1f
	ld   a, [bc]                                     ; $4c66: $0a
	ld   a, $3f                                      ; $4c67: $3e $3f
	nop                                              ; $4c69: $00
	ld   c, c                                        ; $4c6a: $49
	push bc                                          ; $4c6b: $c5
	ld   b, l                                        ; $4c6c: $45
	ld   b, d                                        ; $4c6d: $42
	ld   h, a                                        ; $4c6e: $67
	ld   h, b                                        ; $4c6f: $60
	ld   [hl+], a                                    ; $4c70: $22
	jr   nz, jr_0a2_4bf4                             ; $4c71: $20 $81

	adc  b                                           ; $4c73: $88
	ld   [bc], a                                     ; $4c74: $02
	xor  b                                           ; $4c75: $a8
	jr   z, jr_0a2_4ca8                              ; $4c76: $28 $30

	add  b                                           ; $4c78: $80
	inc  [hl]                                        ; $4c79: $34
	dec  e                                           ; $4c7a: $1d
	ld   c, $00                                      ; $4c7b: $0e $00
	db   $fd                                         ; $4c7d: $fd
	jr   c, @-$02                                    ; $4c7e: $38 $fc

	ret  nz                                          ; $4c80: $c0

	cp   $00                                         ; $4c81: $fe $00
	call c, $3c1c                                    ; $4c83: $dc $1c $3c
	ld   hl, $212f                                   ; $4c86: $21 $2f $21
	inc  hl                                          ; $4c89: $23
	jr   nz, jr_0a2_4cdc                             ; $4c8a: $20 $50

	nop                                              ; $4c8c: $00
	ld   [bc], a                                     ; $4c8d: $02
	nop                                              ; $4c8e: $00
	dec  a                                           ; $4c8f: $3d
	ld   bc, $3905                                   ; $4c90: $01 $05 $39
	inc  [hl]                                        ; $4c93: $34
	jr   nc, @-$0f                                   ; $4c94: $30 $ef

	nop                                              ; $4c96: $00
	ld   [$8000], sp                                 ; $4c97: $08 $00 $80
	inc  bc                                          ; $4c9a: $03
	ld   [bc], a                                     ; $4c9b: $02
	ld   hl, $7f7e                                   ; $4c9c: $21 $7e $7f
	add  b                                           ; $4c9f: $80
	ld   bc, $4e04                                   ; $4ca0: $01 $04 $4e
	ld   c, $1f                                      ; $4ca3: $0e $1f
	ld   hl, $8001                                   ; $4ca5: $21 $01 $80

jr_0a2_4ca8:
	cp   $00                                         ; $4ca8: $fe $00
	rst  $38                                         ; $4caa: $ff
	add  b                                           ; $4cab: $80
	rrca                                             ; $4cac: $0f
	inc  c                                           ; $4cad: $0c
	rst  $38                                         ; $4cae: $ff
	inc  bc                                          ; $4caf: $03
	inc  d                                           ; $4cb0: $14
	sub  h                                           ; $4cb1: $94
	adc  b                                           ; $4cb2: $88
	ld   [$7262], a                                  ; $4cb3: $ea $62 $72
	sub  d                                           ; $4cb6: $92
	sbc  d                                           ; $4cb7: $9a
	add  sp, $6d                                     ; $4cb8: $e8 $6d
	ld   a, l                                        ; $4cba: $7d
	add  b                                           ; $4cbb: $80
	sbc  l                                           ; $4cbc: $9d
	inc  b                                           ; $4cbd: $04
	rst  $28                                         ; $4cbe: $ef
	xor  $ef                                         ; $4cbf: $ee $ef
	nop                                              ; $4cc1: $00
	ld   [$1083], sp                                 ; $4cc2: $08 $83 $10
	ld   [bc], a                                     ; $4cc5: $02
	ld   de, $0410                                   ; $4cc6: $11 $10 $04
	add  e                                           ; $4cc9: $83
	ld   [$2a06], sp                                 ; $4cca: $08 $06 $2a
	rrca                                             ; $4ccd: $0f
	rra                                              ; $4cce: $1f
	db   $10                                         ; $4ccf: $10
	rra                                              ; $4cd0: $1f
	nop                                              ; $4cd1: $00
	db   $10                                         ; $4cd2: $10
	add  l                                           ; $4cd3: $85
	nop                                              ; $4cd4: $00
	rla                                              ; $4cd5: $17
	inc  bc                                          ; $4cd6: $03
	ld   [bc], a                                     ; $4cd7: $02
	pop  bc                                          ; $4cd8: $c1
	ldh  [$f8], a                                    ; $4cd9: $e0 $f8
	nop                                              ; $4cdb: $00

jr_0a2_4cdc:
	ld   hl, sp+$00                                  ; $4cdc: $f8 $00
	inc  bc                                          ; $4cde: $03
	nop                                              ; $4cdf: $00
	inc  c                                           ; $4ce0: $0c
	nop                                              ; $4ce1: $00
	ld   [hl], c                                     ; $4ce2: $71
	ld   bc, $0e8f                                   ; $4ce3: $01 $8f $0e
	ld   a, [hl]                                     ; $4ce6: $7e
	ld   [hl], c                                     ; $4ce7: $71
	or   $00                                         ; $4ce8: $f6 $00
	jr   jr_0a2_4cec                                 ; $4cea: $18 $00

jr_0a2_4cec:
	ldh  [rP1], a                                    ; $4cec: $e0 $00
	add  b                                           ; $4cee: $80
	rlca                                             ; $4cef: $07
	ld   [bc], a                                     ; $4cf0: $02
	ccf                                              ; $4cf1: $3f
	jr   c, jr_0a2_4cec                              ; $4cf2: $38 $f8

	add  b                                           ; $4cf4: $80
	rst  ToBoot                                         ; $4cf5: $c7
	add  b                                           ; $4cf6: $80
	ccf                                              ; $4cf7: $3f
	nop                                              ; $4cf8: $00
	rst  $38                                         ; $4cf9: $ff
	add  b                                           ; $4cfa: $80
	db   $fc                                         ; $4cfb: $fc
	add  b                                           ; $4cfc: $80
	ld   bc, $070d                                   ; $4cfd: $01 $0d $07
	ld   b, $0e                                      ; $4d00: $06 $0e
	ld   [$2738], sp                                 ; $4d02: $08 $38 $27
	ld   h, a                                        ; $4d05: $67
	ld   e, a                                        ; $4d06: $5f
	ret  c                                           ; $4d07: $d8

	cp   b                                           ; $4d08: $b8
	and  b                                           ; $4d09: $a0
	ld   h, b                                        ; $4d0a: $60
	or   [hl]                                        ; $4d0b: $b6
	ld   [hl], $80                                   ; $4d0c: $36 $80
	jp   c, $ec07                                    ; $4d0e: $da $07 $ec

	dec  l                                           ; $4d11: $2d
	inc  [hl]                                        ; $4d12: $34
	inc  d                                           ; $4d13: $14
	jr   @-$16                                       ; $4d14: $18 $e8

	ld   [$80f8], a                                  ; $4d16: $ea $f8 $80
	ld   a, b                                        ; $4d19: $78
	inc  bc                                          ; $4d1a: $03
	db   $f4                                         ; $4d1b: $f4
	ldh  a, [$f5]                                    ; $4d1c: $f0 $f5
	ld   [$1880], sp                                 ; $4d1e: $08 $80 $18
	ld   [bc], a                                     ; $4d21: $02
	ld   a, [hl-]                                    ; $4d22: $3a
	jr   c, @+$7a                                    ; $4d23: $38 $78

	add  b                                           ; $4d25: $80
	ld   [hl], h                                     ; $4d26: $74
	add  d                                           ; $4d27: $82
	ld   a, h                                        ; $4d28: $7c
	nop                                              ; $4d29: $00
	ld   a, b                                        ; $4d2a: $78
	add  b                                           ; $4d2b: $80
	ld   a, [$2905]                                  ; $4d2c: $fa $05 $29
	add  hl, bc                                      ; $4d2f: $09
	dec  de                                          ; $4d30: $1b
	inc  de                                          ; $4d31: $13
	rla                                              ; $4d32: $17
	rlca                                             ; $4d33: $07
	add  b                                           ; $4d34: $80
	rrca                                             ; $4d35: $0f
	add  [hl]                                        ; $4d36: $86
	rra                                              ; $4d37: $1f
	nop                                              ; $4d38: $00
	ccf                                              ; $4d39: $3f
	add  b                                           ; $4d3a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d3b: $cf
	add  b                                           ; $4d3c: $80
	cp   a                                           ; $4d3d: $bf
	nop                                              ; $4d3e: $00
	rst  $38                                         ; $4d3f: $ff
	add  b                                           ; $4d40: $80
	db   $fc                                         ; $4d41: $fc
	add  b                                           ; $4d42: $80
	ldh  a, [$80]                                    ; $4d43: $f0 $80
	ret  nz                                          ; $4d45: $c0

	add  b                                           ; $4d46: $80
	or   b                                           ; $4d47: $b0
	add  b                                           ; $4d48: $80
	ld   [hl], c                                     ; $4d49: $71
	add  d                                           ; $4d4a: $82
	rst  $38                                         ; $4d4b: $ff
	add  b                                           ; $4d4c: $80
	ldh  a, [$80]                                    ; $4d4d: $f0 $80
	rrca                                             ; $4d4f: $0f
	add  b                                           ; $4d50: $80
	ld   a, a                                        ; $4d51: $7f
	add  e                                           ; $4d52: $83
	rst  $38                                         ; $4d53: $ff
	inc  b                                           ; $4d54: $04
	cp   $f6                                         ; $4d55: $fe $f6
	ldh  a, [$c8]                                    ; $4d57: $f0 $c8
	ret  nz                                          ; $4d59: $c0

	add  b                                           ; $4d5a: $80
	jr   nz, jr_0a2_4d5f                             ; $4d5b: $20 $02

	pop  de                                          ; $4d5d: $d1
	pop  bc                                          ; $4d5e: $c1

jr_0a2_4d5f:
	and  c                                           ; $4d5f: $a1
	add  b                                           ; $4d60: $80
	ld   bc, $8100                                   ; $4d61: $01 $00 $81
	add  b                                           ; $4d64: $80
	add  e                                           ; $4d65: $83
	ld   [bc], a                                     ; $4d66: $02
	db   $e3                                         ; $4d67: $e3
	jp   $801d                                       ; $4d68: $c3 $1d $80


	ld   a, [$f200]                                  ; $4d6b: $fa $00 $f2
	add  b                                           ; $4d6e: $80
	db   $f4                                         ; $4d6f: $f4
	add  b                                           ; $4d70: $80
	or   $00                                         ; $4d71: $f6 $00
	cp   $81                                         ; $4d73: $fe $81
	xor  $81                                         ; $4d75: $ee $81
	ldh  [rP1], a                                    ; $4d77: $e0 $00
	ret  nz                                          ; $4d79: $c0

	add  b                                           ; $4d7a: $80
	ld   e, $80                                      ; $4d7b: $1e $80
	dec  e                                           ; $4d7d: $1d
	add  b                                           ; $4d7e: $80
	dec  de                                          ; $4d7f: $1b
	dec  b                                           ; $4d80: $05
	ld   b, a                                        ; $4d81: $47
	rlca                                             ; $4d82: $07
	rra                                              ; $4d83: $1f
	ld   e, $be                                      ; $4d84: $1e $be
	ccf                                              ; $4d86: $3f
	add  b                                           ; $4d87: $80
	rra                                              ; $4d88: $1f
	add  b                                           ; $4d89: $80
	inc  bc                                          ; $4d8a: $03
	add  d                                           ; $4d8b: $82
	ld   sp, hl                                      ; $4d8c: $f9
	nop                                              ; $4d8d: $00
	ei                                               ; $4d8e: $fb
	add  b                                           ; $4d8f: $80
	db   $eb                                         ; $4d90: $eb
	add  d                                           ; $4d91: $82
	dec  bc                                          ; $4d92: $0b
	ld   [bc], a                                     ; $4d93: $02
	sbc  e                                           ; $4d94: $9b
	sbc  c                                           ; $4d95: $99
	ld   sp, hl                                      ; $4d96: $f9
	add  b                                           ; $4d97: $80
	pop  bc                                          ; $4d98: $c1
	add  d                                           ; $4d99: $82
	rst  $38                                         ; $4d9a: $ff
	add  b                                           ; $4d9b: $80
	ld   hl, sp-$80                                  ; $4d9c: $f8 $80

jr_0a2_4d9e:
	db   $fc                                         ; $4d9e: $fc
	ld   [bc], a                                     ; $4d9f: $02
	cp   $f6                                         ; $4da0: $fe $f6
	rst  $30                                         ; $4da2: $f7
	add  b                                           ; $4da3: $80
	ei                                               ; $4da4: $fb
	add  b                                           ; $4da5: $80
	db   $fd                                         ; $4da6: $fd
	ld   bc, $d9fe                                   ; $4da7: $01 $fe $d9
	add  e                                           ; $4daa: $83
	ld   b, a                                        ; $4dab: $47
	add  b                                           ; $4dac: $80
	ld   c, a                                        ; $4dad: $4f
	nop                                              ; $4dae: $00
	ld   a, a                                        ; $4daf: $7f
	add  d                                           ; $4db0: $82
	xor  a                                           ; $4db1: $af
	inc  bc                                          ; $4db2: $03
	rst  $28                                         ; $4db3: $ef

jr_0a2_4db4:
	rst  $38                                         ; $4db4: $ff
	rst  $30                                         ; $4db5: $f7
	rlca                                             ; $4db6: $07
	add  c                                           ; $4db7: $81
	ret  nz                                          ; $4db8: $c0

	inc  b                                           ; $4db9: $04
	rst  $30                                         ; $4dba: $f7
	add  b                                           ; $4dbb: $80
	sub  a                                           ; $4dbc: $97
	add  b                                           ; $4dbd: $80
	and  b                                           ; $4dbe: $a0
	add  b                                           ; $4dbf: $80
	sbc  a                                           ; $4dc0: $9f
	ld   [bc], a                                     ; $4dc1: $02
	cp   a                                           ; $4dc2: $bf
	and  b                                           ; $4dc3: $a0
	ld   h, b                                        ; $4dc4: $60
	add  b                                           ; $4dc5: $80
	ld   b, b                                        ; $4dc6: $40
	nop                                              ; $4dc7: $00
	ld   a, a                                        ; $4dc8: $7f
	add  c                                           ; $4dc9: $81
	nop                                              ; $4dca: $00
	dec  c                                           ; $4dcb: $0d
	ld   hl, sp+$00                                  ; $4dcc: $f8 $00
	rlca                                             ; $4dce: $07
	nop                                              ; $4dcf: $00
	ldh  [rP1], a                                    ; $4dd0: $e0 $00
	jr   jr_0a2_4db4                                 ; $4dd2: $18 $e0

	and  $f8                                         ; $4dd4: $e6 $f8
	add  hl, de                                      ; $4dd6: $19
	ld   e, $ff                                      ; $4dd7: $1e $ff
	ld   bc, $0380                                   ; $4dd9: $01 $80 $03
	add  b                                           ; $4ddc: $80
	rlca                                             ; $4ddd: $07
	ld   bc, $1f9f                                   ; $4dde: $01 $9f $1f
	add  b                                           ; $4de1: $80
	ccf                                              ; $4de2: $3f
	add  d                                           ; $4de3: $82
	cpl                                              ; $4de4: $2f
	ld   bc, $1f9f                                   ; $4de5: $01 $9f $1f
	add  h                                           ; $4de8: $84
	rst  $38                                         ; $4de9: $ff
	add  b                                           ; $4dea: $80
	ld   hl, sp-$80                                  ; $4deb: $f8 $80
	ldh  [$80], a                                    ; $4ded: $e0 $80
	nop                                              ; $4def: $00
	add  b                                           ; $4df0: $80
	ret  nz                                          ; $4df1: $c0

	add  b                                           ; $4df2: $80
	ldh  [rP1], a                                    ; $4df3: $e0 $00
	rst  $38                                         ; $4df5: $ff
	rst  $38                                         ; $4df6: $ff
	nop                                              ; $4df7: $00
	rst  $38                                         ; $4df8: $ff
	nop                                              ; $4df9: $00
	rst  $38                                         ; $4dfa: $ff
	nop                                              ; $4dfb: $00
	rst  $38                                         ; $4dfc: $ff
	nop                                              ; $4dfd: $00
	rst  $38                                         ; $4dfe: $ff
	nop                                              ; $4dff: $00
	rst  $38                                         ; $4e00: $ff
	nop                                              ; $4e01: $00
	rst  $38                                         ; $4e02: $ff
	nop                                              ; $4e03: $00

Call_0a2_4e04:
	rst  $38                                         ; $4e04: $ff
	nop                                              ; $4e05: $00
	rst  $38                                         ; $4e06: $ff
	nop                                              ; $4e07: $00
	rst  $38                                         ; $4e08: $ff
	nop                                              ; $4e09: $00
	rst  $38                                         ; $4e0a: $ff
	nop                                              ; $4e0b: $00
	rst  $38                                         ; $4e0c: $ff
	nop                                              ; $4e0d: $00
	sub  c                                           ; $4e0e: $91
	nop                                              ; $4e0f: $00
	and  l                                           ; $4e10: $a5
	nop                                              ; $4e11: $00
	dec  b                                           ; $4e12: $05
	nop                                              ; $4e13: $00
	cp   $ee                                         ; $4e14: $fe $ee
	db   $ed                                         ; $4e16: $ed
	db   $dd                                         ; $4e17: $dd
	ret  c                                           ; $4e18: $d8

	add  b                                           ; $4e19: $80
	sbc  b                                           ; $4e1a: $98
	nop                                              ; $4e1b: $00
	jr   c, jr_0a2_4d9e                              ; $4e1c: $38 $80

	ld   [hl-], a                                    ; $4e1e: $32
	ld   bc, $7636                                   ; $4e1f: $01 $36 $76
	add  b                                           ; $4e22: $80

jr_0a2_4e23:
	ld   a, [hl]                                     ; $4e23: $7e
	nop                                              ; $4e24: $00
	ld   a, a                                        ; $4e25: $7f
	add  b                                           ; $4e26: $80
	rst  $28                                         ; $4e27: $ef
	add  b                                           ; $4e28: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e29: $cf
	add  b                                           ; $4e2a: $80
	adc  $80                                         ; $4e2b: $ce $80
	sbc  [hl]                                        ; $4e2d: $9e
	ld   bc, $9d9c                                   ; $4e2e: $01 $9c $9d
	add  b                                           ; $4e31: $80
	dec  e                                           ; $4e32: $1d
	add  d                                           ; $4e33: $82
	add  hl, de                                      ; $4e34: $19
	nop                                              ; $4e35: $00
	cp   $81                                         ; $4e36: $fe $81
	nop                                              ; $4e38: $00
	add  c                                           ; $4e39: $81
	add  b                                           ; $4e3a: $80
	nop                                              ; $4e3b: $00
	nop                                              ; $4e3c: $00

jr_0a2_4e3d:
	add  c                                           ; $4e3d: $81
	ld   b, b                                        ; $4e3e: $40
	nop                                              ; $4e3f: $00
	nop                                              ; $4e40: $00

jr_0a2_4e41:
	add  b                                           ; $4e41: $80
	jr   nz, jr_0a2_4e53                             ; $4e42: $20 $0f

	jr   nc, jr_0a2_4e56                             ; $4e44: $30 $10

	jr   @+$2a                                       ; $4e46: $18 $28

	xor  h                                           ; $4e48: $ac
	jr   nc, jr_0a2_4e7d                             ; $4e49: $30 $32

	jr   c, jr_0a2_4e66                              ; $4e4b: $38 $19

	ld   e, $0e                                      ; $4e4d: $1e $0e
	rrca                                             ; $4e4f: $0f
	add  a                                           ; $4e50: $87
	ld   b, a                                        ; $4e51: $47
	add  e                                           ; $4e52: $83

jr_0a2_4e53:
	inc  bc                                          ; $4e53: $03
	add  b                                           ; $4e54: $80
	nop                                              ; $4e55: $00

jr_0a2_4e56:
	ld   bc, $05c7                                   ; $4e56: $01 $c7 $05
	add  b                                           ; $4e59: $80
	dec  h                                           ; $4e5a: $25
	add  c                                           ; $4e5b: $81
	dec  a                                           ; $4e5c: $3d
	add  b                                           ; $4e5d: $80
	cp   h                                           ; $4e5e: $bc
	add  b                                           ; $4e5f: $80
	ld   bc, $3e80                                   ; $4e60: $01 $80 $3e
	nop                                              ; $4e63: $00
	rst  $38                                         ; $4e64: $ff
	add  b                                           ; $4e65: $80

jr_0a2_4e66:
	nop                                              ; $4e66: $00
	ld   bc, $e7ef                                   ; $4e67: $01 $ef $e7
	add  b                                           ; $4e6a: $80
	rlca                                             ; $4e6b: $07
	inc  b                                           ; $4e6c: $04
	db   $e4                                         ; $4e6d: $e4
	nop                                              ; $4e6e: $00
	ldh  a, [rP1]                                    ; $4e6f: $f0 $00
	db   $e3                                         ; $4e71: $e3
	add  b                                           ; $4e72: $80
	db   $10                                         ; $4e73: $10
	inc  b                                           ; $4e74: $04
	rst  $28                                         ; $4e75: $ef
	db   $ec                                         ; $4e76: $ec
	inc  e                                           ; $4e77: $1c
	sbc  b                                           ; $4e78: $98
	ld   a, b                                        ; $4e79: $78
	add  b                                           ; $4e7a: $80
	add  b                                           ; $4e7b: $80
	add  b                                           ; $4e7c: $80

jr_0a2_4e7d:
	ldh  a, [rDIV]                                   ; $4e7d: $f0 $04
	db   $fc                                         ; $4e7f: $fc
	inc  b                                           ; $4e80: $04
	cp   $04                                         ; $4e81: $fe $04
	db   $fd                                         ; $4e83: $fd
	add  b                                           ; $4e84: $80
	nop                                              ; $4e85: $00
	dec  b                                           ; $4e86: $05
	cp   a                                           ; $4e87: $bf
	and  b                                           ; $4e88: $a0
	ldh  [$60], a                                    ; $4e89: $e0 $60
	jr   nz, jr_0a2_4f0c                             ; $4e8b: $20 $7f

	add  c                                           ; $4e8d: $81
	cpl                                              ; $4e8e: $2f
	nop                                              ; $4e8f: $00
	ld   l, a                                        ; $4e90: $6f
	add  b                                           ; $4e91: $80
	ld   e, a                                        ; $4e92: $5f
	inc  bc                                          ; $4e93: $03
	ld   b, c                                        ; $4e94: $41
	add  $b8                                         ; $4e95: $c6 $b8
	ret  nz                                          ; $4e97: $c0

	add  e                                           ; $4e98: $83
	nop                                              ; $4e99: $00
	nop                                              ; $4e9a: $00
	ld   h, h                                        ; $4e9b: $64
	add  e                                           ; $4e9c: $83
	ret  c                                           ; $4e9d: $d8

	add  b                                           ; $4e9e: $80
	sbc  b                                           ; $4e9f: $98
	add  b                                           ; $4ea0: $80
	jr   jr_0a2_4e23                                 ; $4ea1: $18 $80

	inc  e                                           ; $4ea3: $1c
	add  d                                           ; $4ea4: $82
	jr   jr_0a2_4ea7                                 ; $4ea5: $18 $00

jr_0a2_4ea7:
	jp   $0080                                       ; $4ea7: $c3 $80 $00


	adc  e                                           ; $4eaa: $8b
	cp   a                                           ; $4eab: $bf
	nop                                              ; $4eac: $00
	ld   b, b                                        ; $4ead: $40
	adc  e                                           ; $4eae: $8b
	nop                                              ; $4eaf: $00
	ld   [bc], a                                     ; $4eb0: $02
	rst  $38                                         ; $4eb1: $ff
	nop                                              ; $4eb2: $00
	rst  $38                                         ; $4eb3: $ff
	adc  e                                           ; $4eb4: $8b
	nop                                              ; $4eb5: $00
	inc  b                                           ; $4eb6: $04
	rst  $38                                         ; $4eb7: $ff
	nop                                              ; $4eb8: $00
	sbc  a                                           ; $4eb9: $9f
	ld   h, b                                        ; $4eba: $60
	jr   nz, jr_0a2_4e3d                             ; $4ebb: $20 $80

	nop                                              ; $4ebd: $00
	add  b                                           ; $4ebe: $80
	jr   nz, jr_0a2_4e41                             ; $4ebf: $20 $80

	nop                                              ; $4ec1: $00
	ld   bc, $3020                                   ; $4ec2: $01 $20 $30
	add  b                                           ; $4ec5: $80
	db   $10                                         ; $4ec6: $10
	inc  b                                           ; $4ec7: $04
	jr   nc, @+$01                                   ; $4ec8: $30 $ff

	nop                                              ; $4eca: $00
	ccf                                              ; $4ecb: $3f
	add  b                                           ; $4ecc: $80
	add  h                                           ; $4ecd: $84
	nop                                              ; $4ece: $00
	ld   bc, $4020                                   ; $4ecf: $01 $20 $40
	add  d                                           ; $4ed2: $82
	nop                                              ; $4ed3: $00
	ld   [bc], a                                     ; $4ed4: $02
	ret  nc                                          ; $4ed5: $d0

	db   $10                                         ; $4ed6: $10
	call nz, $1883                                   ; $4ed7: $c4 $83 $18
	add  b                                           ; $4eda: $80
	ld   e, h                                        ; $4edb: $5c
	nop                                              ; $4edc: $00
	ld   a, b                                        ; $4edd: $78
	add  e                                           ; $4ede: $83
	jr   c, jr_0a2_4ee3                              ; $4edf: $38 $02

	ld   hl, sp+$78                                  ; $4ee1: $f8 $78

jr_0a2_4ee3:
	inc  bc                                          ; $4ee3: $03
	add  b                                           ; $4ee4: $80
	cp   a                                           ; $4ee5: $bf
	ld   bc, $a7af                                   ; $4ee6: $01 $af $a7
	add  c                                           ; $4ee9: $81
	xor  a                                           ; $4eea: $af
	nop                                              ; $4eeb: $00
	xor  b                                           ; $4eec: $a8
	add  e                                           ; $4eed: $83
	xor  a                                           ; $4eee: $af
	add  b                                           ; $4eef: $80
	and  b                                           ; $4ef0: $a0
	ld   bc, $7ede                                   ; $4ef1: $01 $de $7e
	add  b                                           ; $4ef4: $80

jr_0a2_4ef5:
	sbc  l                                           ; $4ef5: $9d
	add  b                                           ; $4ef6: $80
	db   $e3                                         ; $4ef7: $e3
	add  b                                           ; $4ef8: $80
	or   $80                                         ; $4ef9: $f6 $80
	call $f380                                       ; $4efb: $cd $80 $f3
	add  b                                           ; $4efe: $80
	ld   a, a                                        ; $4eff: $7f
	add  b                                           ; $4f00: $80
	rlca                                             ; $4f01: $07
	ld   bc, $3734                                   ; $4f02: $01 $34 $37
	add  d                                           ; $4f05: $82
	ld   a, e                                        ; $4f06: $7b
	ld   [bc], a                                     ; $4f07: $02
	ei                                               ; $4f08: $fb
	db   $fd                                         ; $4f09: $fd
	push af                                          ; $4f0a: $f5
	add  d                                           ; $4f0b: $82

jr_0a2_4f0c:
	db   $fd                                         ; $4f0c: $fd
	add  c                                           ; $4f0d: $81
	cp   $07                                         ; $4f0e: $fe $07
	and  c                                           ; $4f10: $a1
	jr   nz, jr_0a2_4f6b                             ; $4f11: $20 $58

	db   $10                                         ; $4f13: $10
	ld   e, $18                                      ; $4f14: $1e $18
	cpl                                              ; $4f16: $2f
	ld   c, $80                                      ; $4f17: $0e $80
	rrca                                             ; $4f19: $0f
	nop                                              ; $4f1a: $00
	rla                                              ; $4f1b: $17
	add  c                                           ; $4f1c: $81
	rlca                                             ; $4f1d: $07
	add  hl, bc                                      ; $4f1e: $09
	dec  bc                                          ; $4f1f: $0b
	inc  bc                                          ; $4f20: $03
	ld   a, $39                                      ; $4f21: $3e $39
	rra                                              ; $4f23: $1f
	ld   c, $2f                                      ; $4f24: $0e $2f
	add  hl, hl                                      ; $4f26: $29
	rst  $28                                         ; $4f27: $ef
	rlca                                             ; $4f28: $07
	add  d                                           ; $4f29: $82
	rst  $38                                         ; $4f2a: $ff
	add  b                                           ; $4f2b: $80
	di                                               ; $4f2c: $f3
	add  b                                           ; $4f2d: $80
	ret  nz                                          ; $4f2e: $c0

	ld   bc, $7077                                   ; $4f2f: $01 $77 $70
	add  d                                           ; $4f32: $82
	ldh  a, [rP1]                                    ; $4f33: $f0 $00
	add  sp, -$7f                                    ; $4f35: $e8 $81
	ldh  [$0e], a                                    ; $4f37: $e0 $0e
	ret  nc                                          ; $4f39: $d0

	ret  nz                                          ; $4f3a: $c0

	pop  bc                                          ; $4f3b: $c1
	ret  nz                                          ; $4f3c: $c0

	and  b                                           ; $4f3d: $a0
	add  b                                           ; $4f3e: $80
	adc  $ff                                         ; $4f3f: $ce $ff
	rst  $30                                         ; $4f41: $f7
	rst  $38                                         ; $4f42: $ff
	ei                                               ; $4f43: $fb
	rst  $38                                         ; $4f44: $ff
	db   $fd                                         ; $4f45: $fd
	rst  $38                                         ; $4f46: $ff
	ld   a, [hl]                                     ; $4f47: $7e
	add  l                                           ; $4f48: $85
	ld   a, a                                        ; $4f49: $7f
	db   $10                                         ; $4f4a: $10
	ld   a, h                                        ; $4f4b: $7c
	nop                                              ; $4f4c: $00
	inc  bc                                          ; $4f4d: $03
	nop                                              ; $4f4e: $00
	ret  nz                                          ; $4f4f: $c0

	nop                                              ; $4f50: $00
	ld   h, b                                        ; $4f51: $60
	nop                                              ; $4f52: $00
	jr   c, jr_0a2_4f55                              ; $4f53: $38 $00

jr_0a2_4f55:
	inc  e                                           ; $4f55: $1c
	nop                                              ; $4f56: $00
	rlca                                             ; $4f57: $07
	nop                                              ; $4f58: $00
	inc  bc                                          ; $4f59: $03
	nop                                              ; $4f5a: $00
	rst  $38                                         ; $4f5b: $ff
	add  d                                           ; $4f5c: $82
	nop                                              ; $4f5d: $00
	add  b                                           ; $4f5e: $80

jr_0a2_4f5f:
	ret  nz                                          ; $4f5f: $c0

	add  b                                           ; $4f60: $80
	pop  hl                                          ; $4f61: $e1
	add  b                                           ; $4f62: $80
	ld   sp, hl                                      ; $4f63: $f9
	add  b                                           ; $4f64: $80
	ei                                               ; $4f65: $fb
	add  b                                           ; $4f66: $80
	rst  $30                                         ; $4f67: $f7
	add  hl, bc                                      ; $4f68: $09
	ld   l, a                                        ; $4f69: $6f
	ld   [de], a                                     ; $4f6a: $12

jr_0a2_4f6b:
	nop                                              ; $4f6b: $00
	ld   b, $00                                      ; $4f6c: $06 $00
	add  b                                           ; $4f6e: $80
	nop                                              ; $4f6f: $00
	inc  c                                           ; $4f70: $0c
	nop                                              ; $4f71: $00
	jr   jr_0a2_4ef5                                 ; $4f72: $18 $81

	nop                                              ; $4f74: $00
	ld   [$0030], sp                                 ; $4f75: $08 $30 $00
	ld   h, b                                        ; $4f78: $60
	nop                                              ; $4f79: $00
	ld   b, b                                        ; $4f7a: $40
	rst  $38                                         ; $4f7b: $ff
	cp   $ff                                         ; $4f7c: $fe $ff
	db   $fd                                         ; $4f7e: $fd
	add  b                                           ; $4f7f: $80
	cp   $02                                         ; $4f80: $fe $02
	db   $fd                                         ; $4f82: $fd
	ld   a, [$80fb]                                  ; $4f83: $fa $fb $80
	rst  $30                                         ; $4f86: $f7
	add  b                                           ; $4f87: $80
	rst  $28                                         ; $4f88: $ef
	add  b                                           ; $4f89: $80
	rst  ToBoot                                         ; $4f8a: $c7
	nop                                              ; $4f8b: $00
	ld   bc, $9f80                                   ; $4f8c: $01 $80 $9f
	inc  b                                           ; $4f8f: $04
	ld   a, a                                        ; $4f90: $7f
	ld   a, l                                        ; $4f91: $7d
	rst  $38                                         ; $4f92: $ff
	ldh  a, [c]                                      ; $4f93: $f2
	cp   $80                                         ; $4f94: $fe $80
	ld   sp, hl                                      ; $4f96: $f9
	ld   bc, $f606                                   ; $4f97: $01 $06 $f6
	add  b                                           ; $4f9a: $80
	db   $ed                                         ; $4f9b: $ed
	add  b                                           ; $4f9c: $80
	ret  c                                           ; $4f9d: $d8

	add  b                                           ; $4f9e: $80
	nop                                              ; $4f9f: $00

jr_0a2_4fa0:
	ld   b, $03                                      ; $4fa0: $06 $03
	nop                                              ; $4fa2: $00
	ld   [bc], a                                     ; $4fa3: $02
	nop                                              ; $4fa4: $00
	inc  b                                           ; $4fa5: $04
	nop                                              ; $4fa6: $00
	dec  bc                                          ; $4fa7: $0b
	add  c                                           ; $4fa8: $81
	nop                                              ; $4fa9: $00
	nop                                              ; $4faa: $00
	ret  nc                                          ; $4fab: $d0

	add  c                                           ; $4fac: $81
	ret  nz                                          ; $4fad: $c0

	ld   [bc], a                                     ; $4fae: $02
	ld   e, $00                                      ; $4faf: $1e $00
	ldh  a, [$81]                                    ; $4fb1: $f0 $81
	nop                                              ; $4fb3: $00
	nop                                              ; $4fb4: $00
	jr   @-$7d                                       ; $4fb5: $18 $81

	nop                                              ; $4fb7: $00
	ld   b, $34                                      ; $4fb8: $06 $34
	nop                                              ; $4fba: $00
	pop  bc                                          ; $4fbb: $c1
	ld   bc, $8092                                   ; $4fbc: $01 $92 $80
	ld   c, $82                                      ; $4fbf: $0e $82
	rst  $38                                         ; $4fc1: $ff
	inc  bc                                          ; $4fc2: $03
	cp   $e1                                         ; $4fc3: $fe $e1
	rst  $38                                         ; $4fc5: $ff
	rra                                              ; $4fc6: $1f
	add  c                                           ; $4fc7: $81
	rst  $38                                         ; $4fc8: $ff
	add  b                                           ; $4fc9: $80
	cp   $08                                         ; $4fca: $fe $08
	ld   hl, sp-$07                                  ; $4fcc: $f8 $f9
	and  $00                                         ; $4fce: $e6 $00
	ld   hl, sp+$00                                  ; $4fd0: $f8 $00
	ld   h, b                                        ; $4fd2: $60
	nop                                              ; $4fd3: $00
	add  b                                           ; $4fd4: $80
	add  e                                           ; $4fd5: $83
	nop                                              ; $4fd6: $00
	inc  b                                           ; $4fd7: $04
	add  b                                           ; $4fd8: $80
	nop                                              ; $4fd9: $00
	ld   b, b                                        ; $4fda: $40
	add  b                                           ; $4fdb: $80
	jr   nz, jr_0a2_4f5f                             ; $4fdc: $20 $81

	ld   b, b                                        ; $4fde: $40
	nop                                              ; $4fdf: $00
	ret  nc                                          ; $4fe0: $d0

	add  e                                           ; $4fe1: $83
	ldh  [rP1], a                                    ; $4fe2: $e0 $00
	add  sp, -$80                                    ; $4fe4: $e8 $80
	ldh  a, [$03]                                    ; $4fe6: $f0 $03
	ret  nz                                          ; $4fe8: $c0

	ret  nc                                          ; $4fe9: $d0

	nop                                              ; $4fea: $00
	add  sp, -$01                                    ; $4feb: $e8 $ff
	nop                                              ; $4fed: $00
	rst  $38                                         ; $4fee: $ff
	nop                                              ; $4fef: $00
	rst  $38                                         ; $4ff0: $ff
	nop                                              ; $4ff1: $00
	rst  $38                                         ; $4ff2: $ff
	nop                                              ; $4ff3: $00
	rst  $38                                         ; $4ff4: $ff
	nop                                              ; $4ff5: $00
	rst  $38                                         ; $4ff6: $ff
	nop                                              ; $4ff7: $00
	rst  $38                                         ; $4ff8: $ff
	nop                                              ; $4ff9: $00
	rst  $38                                         ; $4ffa: $ff
	nop                                              ; $4ffb: $00
	rst  $38                                         ; $4ffc: $ff
	nop                                              ; $4ffd: $00
	rst  $38                                         ; $4ffe: $ff
	nop                                              ; $4fff: $00
	rst  $38                                         ; $5000: $ff
	nop                                              ; $5001: $00
	ldh  a, [c]                                      ; $5002: $f2
	nop                                              ; $5003: $00
	add  h                                           ; $5004: $84
	nop                                              ; $5005: $00
	add  [hl]                                        ; $5006: $86
	nop                                              ; $5007: $00
	ld   b, $01                                      ; $5008: $06 $01
	nop                                              ; $500a: $00
	inc  bc                                          ; $500b: $03
	ld   bc, $0307                                   ; $500c: $01 $07 $03
	rrca                                             ; $500f: $0f
	add  c                                           ; $5010: $81
	rlca                                             ; $5011: $07
	nop                                              ; $5012: $00
	rra                                              ; $5013: $1f
	add  c                                           ; $5014: $81
	rrca                                             ; $5015: $0f
	ld   b, $3f                                      ; $5016: $06 $3f
	rra                                              ; $5018: $1f
	inc  e                                           ; $5019: $1c
	rra                                              ; $501a: $1f
	jr   @+$1e                                       ; $501b: $18 $1c

	jr   z, jr_0a2_4fa0                              ; $501d: $28 $81

	nop                                              ; $501f: $00
	ld   [bc], a                                     ; $5020: $02
	jr   jr_0a2_502a                                 ; $5021: $18 $07

	rra                                              ; $5023: $1f
	add  c                                           ; $5024: $81
	rrca                                             ; $5025: $0f
	nop                                              ; $5026: $00
	ccf                                              ; $5027: $3f
	add  b                                           ; $5028: $80
	rra                                              ; $5029: $1f

jr_0a2_502a:
	inc  bc                                          ; $502a: $03
	inc  e                                           ; $502b: $1c
	rra                                              ; $502c: $1f
	dec  de                                          ; $502d: $1b
	daa                                              ; $502e: $27
	add  c                                           ; $502f: $81
	rrca                                             ; $5030: $0f
	ld   [$061f], sp                                 ; $5031: $08 $1f $06
	ld   c, $01                                      ; $5034: $0e $01
	dec  b                                           ; $5036: $05
	ld   bc, $0003                                   ; $5037: $01 $03 $00
	ld   bc, $0087                                   ; $503a: $01 $87 $00
	rlca                                             ; $503d: $07
	ld   bc, $0300                                   ; $503e: $01 $00 $03
	ld   bc, $0307                                   ; $5041: $01 $07 $03
	rrca                                             ; $5044: $0f
	rlca                                             ; $5045: $07
	add  b                                           ; $5046: $80
	nop                                              ; $5047: $00
	add  b                                           ; $5048: $80
	rlca                                             ; $5049: $07
	ld   [bc], a                                     ; $504a: $02
	add  hl, de                                      ; $504b: $19
	add  hl, bc                                      ; $504c: $09
	nop                                              ; $504d: $00
	add  b                                           ; $504e: $80
	inc  b                                           ; $504f: $04
	ld   bc, $2b0b                                   ; $5050: $01 $0b $2b
	add  b                                           ; $5053: $80
	ld   d, $80                                      ; $5054: $16 $80
	dec  b                                           ; $5056: $05
	dec  b                                           ; $5057: $05
	ld   [bc], a                                     ; $5058: $02
	inc  hl                                          ; $5059: $23
	nop                                              ; $505a: $00
	ld   [de], a                                     ; $505b: $12
	nop                                              ; $505c: $00
	inc  c                                           ; $505d: $0c
	adc  a                                           ; $505e: $8f
	nop                                              ; $505f: $00

jr_0a2_5060:
	inc  c                                           ; $5060: $0c
	rrca                                             ; $5061: $0f
	nop                                              ; $5062: $00
	ccf                                              ; $5063: $3f
	rrca                                             ; $5064: $0f
	ld   a, l                                        ; $5065: $7d
	ccf                                              ; $5066: $3f
	rst  $38                                         ; $5067: $ff
	ld   a, a                                        ; $5068: $7f
	ei                                               ; $5069: $fb
	rst  $38                                         ; $506a: $ff
	db   $fc                                         ; $506b: $fc
	rst  $38                                         ; $506c: $ff
	ldh  a, [c]                                      ; $506d: $f2
	add  c                                           ; $506e: $81
	rst  $38                                         ; $506f: $ff
	nop                                              ; $5070: $00
	ld   [$7c80], sp                                 ; $5071: $08 $80 $7c
	add  d                                           ; $5074: $82
	ld   hl, sp-$80                                  ; $5075: $f8 $80
	db   $fc                                         ; $5077: $fc
	inc  c                                           ; $5078: $0c
	ld   a, [hl]                                     ; $5079: $7e
	cp   $3f                                         ; $507a: $fe $3f
	ld   a, a                                        ; $507c: $7f
	rra                                              ; $507d: $1f
	ccf                                              ; $507e: $3f
	rrca                                             ; $507f: $0f
	rra                                              ; $5080: $1f
	rlca                                             ; $5081: $07
	rrca                                             ; $5082: $0f
	inc  bc                                          ; $5083: $03
	rlca                                             ; $5084: $07
	nop                                              ; $5085: $00
	add  b                                           ; $5086: $80
	ld   bc, $0d08                                   ; $5087: $01 $08 $0d
	ld   bc, LoadSpriteFromMainTable                                   ; $508a: $01 $16 $0e
	cpl                                              ; $508d: $2f
	ld   e, $5e                                      ; $508e: $1e $5e
	dec  a                                           ; $5090: $3d
	ld   b, l                                        ; $5091: $45
	sbc  c                                           ; $5092: $99
	nop                                              ; $5093: $00
	add  b                                           ; $5094: $80
	ld   bc, $0280                                   ; $5095: $01 $80 $02
	ld   a, [de]                                     ; $5098: $1a
	ldh  a, [$7b]                                    ; $5099: $f0 $7b
	db   $eb                                         ; $509b: $eb
	rst  $38                                         ; $509c: $ff
	sub  [hl]                                        ; $509d: $96
	rst  $28                                         ; $509e: $ef
	pop  af                                          ; $509f: $f1
	cp   $ce                                         ; $50a0: $fe $ce
	db   $fc                                         ; $50a2: $fc
	sub  a                                           ; $50a3: $97
	ld   a, e                                        ; $50a4: $7b
	adc  b                                           ; $50a5: $88
	ld   [hl], b                                     ; $50a6: $70
	cp   a                                           ; $50a7: $bf
	xor  a                                           ; $50a8: $af
	inc  hl                                          ; $50a9: $23
	jp   Jump_0a2_5cdc                               ; $50aa: $c3 $dc $5c


	ld   b, e                                        ; $50ad: $43
	ld   b, b                                        ; $50ae: $40
	ld   a, e                                        ; $50af: $7b
	jr   nz, jr_0a2_50ca                             ; $50b0: $20 $18

	inc  bc                                          ; $50b2: $03
	add  e                                           ; $50b3: $83
	add  e                                           ; $50b4: $83
	dec  sp                                          ; $50b5: $3b
	ld   bc, $0440                                   ; $50b6: $01 $40 $04
	add  b                                           ; $50b9: $80
	nop                                              ; $50ba: $00
	add  b                                           ; $50bb: $80
	db   $10                                         ; $50bc: $10
	add  d                                           ; $50bd: $82
	nop                                              ; $50be: $00
	add  b                                           ; $50bf: $80
	add  b                                           ; $50c0: $80
	add  [hl]                                        ; $50c1: $86
	nop                                              ; $50c2: $00
	add  b                                           ; $50c3: $80
	inc  bc                                          ; $50c4: $03
	add  b                                           ; $50c5: $80
	jr   jr_0a2_5060                                 ; $50c6: $18 $98

	nop                                              ; $50c8: $00
	add  hl, bc                                      ; $50c9: $09

jr_0a2_50ca:
	ret  nz                                          ; $50ca: $c0

	nop                                              ; $50cb: $00
	pop  hl                                          ; $50cc: $e1
	ret  nz                                          ; $50cd: $c0

	or   e                                           ; $50ce: $b3
	and  c                                           ; $50cf: $a1
	cp   c                                           ; $50d0: $b9
	or   c                                           ; $50d1: $b1
	cp   h                                           ; $50d2: $bc
	cp   b                                           ; $50d3: $b8
	add  b                                           ; $50d4: $80
	ld   a, l                                        ; $50d5: $7d
	ld   de, $7b3b                                   ; $50d6: $11 $3b $7b
	cp   a                                           ; $50d9: $bf
	nop                                              ; $50da: $00
	ldh  [rP1], a                                    ; $50db: $e0 $00
	di                                               ; $50dd: $f3
	ldh  [rIE], a                                    ; $50de: $e0 $ff
	di                                               ; $50e0: $f3
	or   a                                           ; $50e1: $b7
	rst  $30                                         ; $50e2: $f7
	halt                                             ; $50e3: $76
	scf                                              ; $50e4: $37
	ld   de, $6e50                                   ; $50e5: $11 $50 $6e
	ld   l, a                                        ; $50e8: $6f
	add  d                                           ; $50e9: $82
	rst  $28                                         ; $50ea: $ef
	rlca                                             ; $50eb: $07
	ld   h, c                                        ; $50ec: $61
	ld   h, b                                        ; $50ed: $60
	ld   e, l                                        ; $50ee: $5d
	sbc  a                                           ; $50ef: $9f
	sbc  $dc                                         ; $50f0: $de $dc
	add  e                                           ; $50f2: $83
	inc  bc                                          ; $50f3: $03

jr_0a2_50f4:
	add  b                                           ; $50f4: $80
	ei                                               ; $50f5: $fb
	add  b                                           ; $50f6: $80
	adc  e                                           ; $50f7: $8b
	nop                                              ; $50f8: $00
	rst  $38                                         ; $50f9: $ff
	sub  c                                           ; $50fa: $91
	nop                                              ; $50fb: $00
	inc  c                                           ; $50fc: $0c
	add  b                                           ; $50fd: $80
	nop                                              ; $50fe: $00
	ret  nz                                          ; $50ff: $c0

	add  b                                           ; $5100: $80
	pop  hl                                          ; $5101: $e1
	ret  nz                                          ; $5102: $c0

	ldh  a, [c]                                      ; $5103: $f2
	pop  hl                                          ; $5104: $e1
	cp   c                                           ; $5105: $b9
	or   c                                           ; $5106: $b1
	dec  l                                           ; $5107: $2d
	dec  hl                                          ; $5108: $2b
	db   $fc                                         ; $5109: $fc
	add  a                                           ; $510a: $87
	nop                                              ; $510b: $00
	nop                                              ; $510c: $00
	add  b                                           ; $510d: $80
	add  e                                           ; $510e: $83
	nop                                              ; $510f: $00
	inc  bc                                          ; $5110: $03
	adc  a                                           ; $5111: $8f
	nop                                              ; $5112: $00
	rst  $38                                         ; $5113: $ff
	rrca                                             ; $5114: $0f
	add  b                                           ; $5115: $80
	ld   h, c                                        ; $5116: $61
	add  b                                           ; $5117: $80
	adc  [hl]                                        ; $5118: $8e
	ld   [$e5f5], sp                                 ; $5119: $08 $f5 $e5
	jp   hl                                          ; $511c: $e9


	pop  af                                          ; $511d: $f1
	or   $fa                                         ; $511e: $f6 $fa
	ld   e, e                                        ; $5120: $5b
	reti                                             ; $5121: $d9


	ld   a, c                                        ; $5122: $79
	sub  l                                           ; $5123: $95
	nop                                              ; $5124: $00
	add  b                                           ; $5125: $80
	db   $10                                         ; $5126: $10
	add  b                                           ; $5127: $80
	ld   [$0480], sp                                 ; $5128: $08 $80 $04
	add  b                                           ; $512b: $80
	ld   b, $8e                                      ; $512c: $06 $8e
	nop                                              ; $512e: $00
	db   $10                                         ; $512f: $10
	ret  nz                                          ; $5130: $c0

	nop                                              ; $5131: $00
	ldh  a, [$c0]                                    ; $5132: $f0 $c0
	db   $fc                                         ; $5134: $fc
	ldh  a, [$7e]                                    ; $5135: $f0 $7e
	ld   a, h                                        ; $5137: $7c
	cp   a                                           ; $5138: $bf
	ld   a, $5e                                      ; $5139: $3e $5e
	sbc  d                                           ; $513b: $9a
	ld   e, e                                        ; $513c: $5b
	rla                                              ; $513d: $17
	ld   h, l                                        ; $513e: $65
	ld   c, a                                        ; $513f: $4f
	db   $dd                                         ; $5140: $dd
	sub  l                                           ; $5141: $95
	nop                                              ; $5142: $00
	add  b                                           ; $5143: $80
	add  b                                           ; $5144: $80
	add  b                                           ; $5145: $80
	ld   b, h                                        ; $5146: $44
	add  b                                           ; $5147: $80
	ld   [$2080], sp                                 ; $5148: $08 $80 $20
	ld   a, [bc]                                     ; $514b: $0a
	ld   l, e                                        ; $514c: $6b
	or   a                                           ; $514d: $b7
	xor  [hl]                                        ; $514e: $ae
	sbc  a                                           ; $514f: $9f
	dec  d                                           ; $5150: $15
	ld   l, a                                        ; $5151: $6f
	ld   l, b                                        ; $5152: $68
	rlca                                             ; $5153: $07
	ld   [hl], a                                     ; $5154: $77

jr_0a2_5155:
	ld   [hl], e                                     ; $5155: $73
	ld   h, e                                        ; $5156: $63
	add  b                                           ; $5157: $80
	pop  hl                                          ; $5158: $e1
	nop                                              ; $5159: $00
	ldh  [$80], a                                    ; $515a: $e0 $80
	add  sp, $10                                     ; $515c: $e8 $10
	add  l                                           ; $515e: $85
	inc  c                                           ; $515f: $0c
	ld   a, e                                        ; $5160: $7b
	jp   nc, $ecdc                                   ; $5161: $d2 $dc $ec

	xor  [hl]                                        ; $5164: $ae
	or   $d0                                         ; $5165: $f6 $d0
	ld   a, b                                        ; $5167: $78
	ldh  [$37], a                                    ; $5168: $e0 $37
	rst  $30                                         ; $516a: $f7
	inc  c                                           ; $516b: $0c

jr_0a2_516c:
	ld   c, h                                        ; $516c: $4c
	sbc  b                                           ; $516d: $98
	ld   h, a                                        ; $516e: $67
	adc  a                                           ; $516f: $8f
	nop                                              ; $5170: $00

jr_0a2_5171:
	add  b                                           ; $5171: $80
	jr   nz, jr_0a2_50f4                             ; $5172: $20 $80

	db   $10                                         ; $5174: $10
	add  b                                           ; $5175: $80
	ld   [$0080], sp                                 ; $5176: $08 $80 $00
	add  b                                           ; $5179: $80
	add  b                                           ; $517a: $80
	add  b                                           ; $517b: $80
	ld   b, b                                        ; $517c: $40
	adc  h                                           ; $517d: $8c
	nop                                              ; $517e: $00
	nop                                              ; $517f: $00
	add  b                                           ; $5180: $80
	add  c                                           ; $5181: $81
	nop                                              ; $5182: $00
	nop                                              ; $5183: $00
	ret  nz                                          ; $5184: $c0

	add  c                                           ; $5185: $81
	add  b                                           ; $5186: $80
	inc  bc                                          ; $5187: $03
	inc  a                                           ; $5188: $3c
	nop                                              ; $5189: $00
	cp   a                                           ; $518a: $bf
	cp   h                                           ; $518b: $bc
	add  b                                           ; $518c: $80
	rla                                              ; $518d: $17
	add  b                                           ; $518e: $80
	ei                                               ; $518f: $fb
	ld   [$fdc1], sp                                 ; $5190: $08 $c1 $fd
	pop  bc                                          ; $5193: $c1
	db   $fd                                         ; $5194: $fd
	add  b                                           ; $5195: $80
	cp   b                                           ; $5196: $b8
	ld   hl, sp-$62                                  ; $5197: $f8 $9e
	cp   [hl]                                        ; $5199: $be
	add  b                                           ; $519a: $80
	ld   l, $01                                      ; $519b: $2e $01
	call $802d                                       ; $519d: $cd $2d $80
	db   $dd                                         ; $51a0: $dd
	add  b                                           ; $51a1: $80
	cp   a                                           ; $51a2: $bf
	inc  bc                                          ; $51a3: $03
	ld   h, b                                        ; $51a4: $60
	ld   a, a                                        ; $51a5: $7f
	nop                                              ; $51a6: $00
	ldh  [$83], a                                    ; $51a7: $e0 $83
	nop                                              ; $51a9: $00
	dec  bc                                          ; $51aa: $0b
	add  b                                           ; $51ab: $80
	nop                                              ; $51ac: $00
	ld   b, b                                        ; $51ad: $40
	nop                                              ; $51ae: $00
	jr   nz, jr_0a2_5171                             ; $51af: $20 $c0

	ret  nc                                          ; $51b1: $d0

	ld   h, b                                        ; $51b2: $60
	jr   z, jr_0a2_5215                              ; $51b3: $28 $60

	ret  c                                           ; $51b5: $d8

	nop                                              ; $51b6: $00
	add  b                                           ; $51b7: $80
	ld   b, b                                        ; $51b8: $40
	add  b                                           ; $51b9: $80
	ret  nz                                          ; $51ba: $c0

	add  b                                           ; $51bb: $80
	jr   nz, jr_0a2_516c                             ; $51bc: $20 $ae

	nop                                              ; $51be: $00
	inc  b                                           ; $51bf: $04
	add  b                                           ; $51c0: $80
	nop                                              ; $51c1: $00
	ret  nz                                          ; $51c2: $c0

	add  b                                           ; $51c3: $80
	ldh  [$81], a                                    ; $51c4: $e0 $81
	ret  nz                                          ; $51c6: $c0

	nop                                              ; $51c7: $00
	ldh  a, [$81]                                    ; $51c8: $f0 $81
	ldh  [rP1], a                                    ; $51ca: $e0 $00
	jr   jr_0a2_5155                                 ; $51cc: $18 $87

	ld   [hl], b                                     ; $51ce: $70
	nop                                              ; $51cf: $00
	ld   l, b                                        ; $51d0: $68
	add  b                                           ; $51d1: $80
	nop                                              ; $51d2: $00
	add  c                                           ; $51d3: $81
	ldh  [rP1], a                                    ; $51d4: $e0 $00
	ldh  a, [$83]                                    ; $51d6: $f0 $83
	ret  nz                                          ; $51d8: $c0

	inc  b                                           ; $51d9: $04
	ldh  [$80], a                                    ; $51da: $e0 $80
	ret  nz                                          ; $51dc: $c0

	nop                                              ; $51dd: $00
	add  b                                           ; $51de: $80
	rst  $38                                         ; $51df: $ff
	nop                                              ; $51e0: $00
	rst  $38                                         ; $51e1: $ff
	nop                                              ; $51e2: $00
	rst  $38                                         ; $51e3: $ff
	nop                                              ; $51e4: $00
	rst  $38                                         ; $51e5: $ff
	nop                                              ; $51e6: $00
	rst  $38                                         ; $51e7: $ff
	nop                                              ; $51e8: $00
	rst  $38                                         ; $51e9: $ff
	nop                                              ; $51ea: $00
	rst  $38                                         ; $51eb: $ff
	nop                                              ; $51ec: $00
	rst  $38                                         ; $51ed: $ff
	nop                                              ; $51ee: $00
	rst  $38                                         ; $51ef: $ff
	nop                                              ; $51f0: $00
	rst  $38                                         ; $51f1: $ff
	nop                                              ; $51f2: $00
	or   l                                           ; $51f3: $b5
	nop                                              ; $51f4: $00
	and  c                                           ; $51f5: $a1
	nop                                              ; $51f6: $00
	nop                                              ; $51f7: $00
	rst  $38                                         ; $51f8: $ff
	add  b                                           ; $51f9: $80
	rrca                                             ; $51fa: $0f
	add  b                                           ; $51fb: $80
	rst  $38                                         ; $51fc: $ff
	rlca                                             ; $51fd: $07
	rst  $20                                         ; $51fe: $e7
	ld   h, a                                        ; $51ff: $67
	sbc  b                                           ; $5200: $98
	ld   a, b                                        ; $5201: $78
	ld   h, a                                        ; $5202: $67
	add  a                                           ; $5203: $87
	sbc  a                                           ; $5204: $9f
	rra                                              ; $5205: $1f
	add  b                                           ; $5206: $80
	ld   a, a                                        ; $5207: $7f
	add  b                                           ; $5208: $80
	rst  $38                                         ; $5209: $ff
	add  b                                           ; $520a: $80
	ld   l, a                                        ; $520b: $6f
	dec  c                                           ; $520c: $0d
	db   $db                                         ; $520d: $db
	ei                                               ; $520e: $fb
	or   a                                           ; $520f: $b7
	rst  $30                                         ; $5210: $f7
	ld   l, a                                        ; $5211: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5212: $cf
	rst  JumpTable                                         ; $5213: $df
	adc  a                                           ; $5214: $8f

jr_0a2_5215:
	cp   [hl]                                        ; $5215: $be
	ld   e, $3d                                      ; $5216: $1e $3d
	dec  [hl]                                        ; $5218: $35
	ld   a, l                                        ; $5219: $7d
	ld   b, l                                        ; $521a: $45
	add  b                                           ; $521b: $80
	db   $fd                                         ; $521c: $fd
	add  d                                           ; $521d: $82

jr_0a2_521e:
	db   $fc                                         ; $521e: $fc
	add  b                                           ; $521f: $80
	ei                                               ; $5220: $fb
	add  b                                           ; $5221: $80

jr_0a2_5222:
	ld   [hl], l                                     ; $5222: $75
	add  b                                           ; $5223: $80
	push hl                                          ; $5224: $e5
	inc  bc                                          ; $5225: $03
	and  b                                           ; $5226: $a0
	xor  a                                           ; $5227: $af
	jr   nz, jr_0a2_5259                             ; $5228: $20 $2f

	add  b                                           ; $522a: $80
	rst  $38                                         ; $522b: $ff
	add  d                                           ; $522c: $82
	rst  $30                                         ; $522d: $f7
	add  d                                           ; $522e: $82
	ld   a, e                                        ; $522f: $7b
	add  d                                           ; $5230: $82
	ld   a, l                                        ; $5231: $7d
	add  b                                           ; $5232: $80
	ld   a, [hl]                                     ; $5233: $7e
	add  b                                           ; $5234: $80
	db   $fd                                         ; $5235: $fd
	add  b                                           ; $5236: $80
	cp   $00                                         ; $5237: $fe $00
	cp   [hl]                                        ; $5239: $be
	add  b                                           ; $523a: $80
	cp   a                                           ; $523b: $bf
	ld   [de], a                                     ; $523c: $12
	cp   [hl]                                        ; $523d: $be
	rst  JumpTable                                         ; $523e: $df
	sbc  $ef                                         ; $523f: $de $ef
	add  sp, -$11                                    ; $5241: $e8 $ef
	jp   z, $acf7                                    ; $5243: $ca $f7 $ac

	ld   a, [$f6f4]                                  ; $5246: $fa $f4 $f6
	call nc, $adf5                                   ; $5249: $d4 $f5 $ad
	db   $ed                                         ; $524c: $ed
	jp   hl                                          ; $524d: $e9


	ld   [$81e2], a                                  ; $524e: $ea $e2 $81
	jp   c, $db02                                    ; $5251: $da $02 $db

	or   h                                           ; $5254: $b4
	xor  d                                           ; $5255: $aa
	add  l                                           ; $5256: $85
	ld   b, b                                        ; $5257: $40
	nop                                              ; $5258: $00

jr_0a2_5259:
	ret  nz                                          ; $5259: $c0

	add  c                                           ; $525a: $81
	nop                                              ; $525b: $00
	nop                                              ; $525c: $00
	ld   b, b                                        ; $525d: $40
	add  c                                           ; $525e: $81
	nop                                              ; $525f: $00
	nop                                              ; $5260: $00
	ld   d, l                                        ; $5261: $55
	add  b                                           ; $5262: $80
	ld   a, $09                                      ; $5263: $3e $09
	ccf                                              ; $5265: $3f
	ld   [hl-], a                                    ; $5266: $32
	ccf                                              ; $5267: $3f
	ld   a, a                                        ; $5268: $7f
	rla                                              ; $5269: $17
	inc  de                                          ; $526a: $13
	rla                                              ; $526b: $17
	dec  [hl]                                        ; $526c: $35
	dec  bc                                          ; $526d: $0b
	ld   [$0b81], sp                                 ; $526e: $08 $81 $0b
	ld   [$fbd8], sp                                 ; $5271: $08 $d8 $fb
	cp   b                                           ; $5274: $b8
	ld   a, e                                        ; $5275: $7b
	jr   nc, @+$7f                                   ; $5276: $30 $7d

	ld   d, l                                        ; $5278: $55
	cp   l                                           ; $5279: $bd
	xor  h                                           ; $527a: $ac
	add  b                                           ; $527b: $80
	cp   [hl]                                        ; $527c: $be
	ld   bc, $cede                                   ; $527d: $01 $de $ce
	add  c                                           ; $5280: $81
	rst  JumpTable                                         ; $5281: $df
	nop                                              ; $5282: $00
	ld   a, $8d                                      ; $5283: $3e $8d
	dec  b                                           ; $5285: $05
	nop                                              ; $5286: $00
	db   $fc                                         ; $5287: $fc
	adc  c                                           ; $5288: $89
	rst  $28                                         ; $5289: $ef
	nop                                              ; $528a: $00
	rst  $30                                         ; $528b: $f7
	add  c                                           ; $528c: $81
	rst  $10                                         ; $528d: $d7
	nop                                              ; $528e: $00
	dec  h                                           ; $528f: $25
	add  c                                           ; $5290: $81
	dec  bc                                          ; $5291: $0b
	ld   b, $2d                                      ; $5292: $06 $2d
	ld   b, $23                                      ; $5294: $06 $23
	nop                                              ; $5296: $00
	ld   b, $00                                      ; $5297: $06 $00
	jr   jr_0a2_521e                                 ; $5299: $18 $83

	nop                                              ; $529b: $00
	ld   bc, $18e4                                   ; $529c: $01 $e4 $18
	add  b                                           ; $529f: $80
	jr   nz, jr_0a2_5222                             ; $52a0: $20 $80

	jr   c, jr_0a2_52a8                              ; $52a2: $38 $04

	dec  de                                          ; $52a4: $1b
	inc  e                                           ; $52a5: $1c
	jr   jr_0a2_52c7                                 ; $52a6: $18 $1f

jr_0a2_52a8:
	inc  c                                           ; $52a8: $0c
	add  c                                           ; $52a9: $81
	rrca                                             ; $52aa: $0f
	add  b                                           ; $52ab: $80
	rlca                                             ; $52ac: $07
	ld   de, $007f                                   ; $52ad: $11 $7f $00
	ret  nz                                          ; $52b0: $c0

	nop                                              ; $52b1: $00
	ld   h, b                                        ; $52b2: $60
	nop                                              ; $52b3: $00
	jr   c, jr_0a2_52b6                              ; $52b4: $38 $00

jr_0a2_52b6:
	call nc, $3f00                                   ; $52b6: $d4 $00 $3f
	ret  nz                                          ; $52b9: $c0

	rrca                                             ; $52ba: $0f
	ldh  a, [$c3]                                    ; $52bb: $f0 $c3
	db   $fc                                         ; $52bd: $fc
	dec  bc                                          ; $52be: $0b
	rlca                                             ; $52bf: $07

jr_0a2_52c0:
	add  b                                           ; $52c0: $80
	inc  bc                                          ; $52c1: $03
	add  b                                           ; $52c2: $80
	ld   bc, $0082                                   ; $52c3: $01 $82 $00
	add  b                                           ; $52c6: $80

jr_0a2_52c7:
	add  b                                           ; $52c7: $80
	add  b                                           ; $52c8: $80
	ldh  [$80], a                                    ; $52c9: $e0 $80
	ld   hl, sp+$02                                  ; $52cb: $f8 $02
	db   $fc                                         ; $52cd: $fc
	rst  $38                                         ; $52ce: $ff
	db   $fc                                         ; $52cf: $fc
	add  e                                           ; $52d0: $83
	rst  $38                                         ; $52d1: $ff
	add  b                                           ; $52d2: $80
	ld   a, a                                        ; $52d3: $7f
	add  b                                           ; $52d4: $80
	ccf                                              ; $52d5: $3f
	add  b                                           ; $52d6: $80
	rra                                              ; $52d7: $1f
	add  b                                           ; $52d8: $80
	ld   c, $07                                      ; $52d9: $0e $07
	jr   jr_0a2_52dd                                 ; $52db: $18 $00

jr_0a2_52dd:
	jr   jr_0a2_52c0                                 ; $52dd: $18 $e1

	ld   l, b                                        ; $52df: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52e0: $cf
	ld   sp, hl                                      ; $52e1: $f9
	cp   a                                           ; $52e2: $bf
	add  h                                           ; $52e3: $84
	ld   a, a                                        ; $52e4: $7f
	add  b                                           ; $52e5: $80
	rst  $38                                         ; $52e6: $ff
	add  b                                           ; $52e7: $80
	ld   [hl], b                                     ; $52e8: $70
	add  [hl]                                        ; $52e9: $86
	nop                                              ; $52ea: $00
	add  d                                           ; $52eb: $82
	inc  bc                                          ; $52ec: $03
	add  b                                           ; $52ed: $80
	ret  nz                                          ; $52ee: $c0

	add  b                                           ; $52ef: $80
	ld   [$1805], sp                                 ; $52f0: $08 $05 $18
	dec  de                                          ; $52f3: $1b
	jr   c, jr_0a2_5331                              ; $52f4: $38 $3b

	ld   [hl], c                                     ; $52f6: $71
	ld   [hl], l                                     ; $52f7: $75
	add  b                                           ; $52f8: $80
	db   $e4                                         ; $52f9: $e4
	add  b                                           ; $52fa: $80
	call nz, $1405                                   ; $52fb: $c4 $05 $14
	dec  d                                           ; $52fe: $15
	sub  c                                           ; $52ff: $91
	sub  a                                           ; $5300: $97
	db   $fc                                         ; $5301: $fc
	rst  $38                                         ; $5302: $ff
	add  b                                           ; $5303: $80
	ld   a, a                                        ; $5304: $7f
	dec  c                                           ; $5305: $0d
	rra                                              ; $5306: $1f
	sbc  a                                           ; $5307: $9f
	rrca                                             ; $5308: $0f
	rst  $28                                         ; $5309: $ef
	add  a                                           ; $530a: $87
	rst  $30                                         ; $530b: $f7
	ld   h, e                                        ; $530c: $63
	ld   a, e                                        ; $530d: $7b
	ld   sp, $183d                                   ; $530e: $31 $3d $18
	ld   e, $fc                                      ; $5311: $1e $fc
	cp   $8c                                         ; $5313: $fe $8c
	rst  $38                                         ; $5315: $ff
	add  b                                           ; $5316: $80
	ld   c, $84                                      ; $5317: $0e $84
	db   $fd                                         ; $5319: $fd
	add  d                                           ; $531a: $82
	ei                                               ; $531b: $fb
	ld   bc, $f3f0                                   ; $531c: $01 $f0 $f3
	add  b                                           ; $531f: $80
	rst  $20                                         ; $5320: $e7
	nop                                              ; $5321: $00
	db   $fc                                         ; $5322: $fc
	adc  c                                           ; $5323: $89
	rst  $38                                         ; $5324: $ff
	ld   b, $3d                                      ; $5325: $06 $3d
	rst  $38                                         ; $5327: $ff
	pop  bc                                          ; $5328: $c1
	rst  $38                                         ; $5329: $ff
	inc  sp                                          ; $532a: $33
	rst  $28                                         ; $532b: $ef
	rst  JumpTable                                         ; $532c: $df
	adc  e                                           ; $532d: $8b
	rst  $38                                         ; $532e: $ff
	add  b                                           ; $532f: $80
	pop  af                                          ; $5330: $f1

jr_0a2_5331:
	add  b                                           ; $5331: $80
	db   $fc                                         ; $5332: $fc
	adc  d                                           ; $5333: $8a
	rst  $38                                         ; $5334: $ff
	ld   bc, $9794                                   ; $5335: $01 $94 $97
	add  b                                           ; $5338: $80
	adc  a                                           ; $5339: $8f
	add  b                                           ; $533a: $80
	rrca                                             ; $533b: $0f
	ld   bc, $e0e3                                   ; $533c: $01 $e3 $e0
	add  [hl]                                        ; $533f: $86
	rst  $38                                         ; $5340: $ff
	ld   [bc], a                                     ; $5341: $02
	ld   [$020a], sp                                 ; $5342: $08 $0a $02
	add  b                                           ; $5345: $80

jr_0a2_5346:
	inc  bc                                          ; $5346: $03
	add  b                                           ; $5347: $80
	rlca                                             ; $5348: $07
	ld   bc, $f30f                                   ; $5349: $01 $0f $f3
	add  b                                           ; $534c: $80
	rst  $38                                         ; $534d: $ff
	add  c                                           ; $534e: $81
	cp   $01                                         ; $534f: $fe $01
	db   $fc                                         ; $5351: $fc
	cp   $80                                         ; $5352: $fe $80
	rst  $38                                         ; $5354: $ff
	add  b                                           ; $5355: $80
	ld   a, [hl]                                     ; $5356: $7e
	add  b                                           ; $5357: $80
	ld   a, c                                        ; $5358: $79
	add  b                                           ; $5359: $80
	ld   h, a                                        ; $535a: $67
	add  d                                           ; $535b: $82
	ld   l, a                                        ; $535c: $6f
	add  b                                           ; $535d: $80
	ld   [hl], a                                     ; $535e: $77
	add  b                                           ; $535f: $80
	scf                                              ; $5360: $37
	add  b                                           ; $5361: $80
	sbc  a                                           ; $5362: $9f
	add  b                                           ; $5363: $80
	ld   a, a                                        ; $5364: $7f
	or   d                                           ; $5365: $b2
	rst  $38                                         ; $5366: $ff

jr_0a2_5367:
	add  d                                           ; $5367: $82
	rst  JumpTable                                         ; $5368: $df
	add  b                                           ; $5369: $80
	cp   a                                           ; $536a: $bf
	add  b                                           ; $536b: $80
	sbc  a                                           ; $536c: $9f
	adc  h                                           ; $536d: $8c
	rst  $38                                         ; $536e: $ff
	add  b                                           ; $536f: $80
	ccf                                              ; $5370: $3f
	adc  [hl]                                        ; $5371: $8e
	rst  $38                                         ; $5372: $ff
	add  b                                           ; $5373: $80
	cp   $84                                         ; $5374: $fe $84
	db   $fd                                         ; $5376: $fd
	add  h                                           ; $5377: $84
	ei                                               ; $5378: $fb
	add  b                                           ; $5379: $80

jr_0a2_537a:
	rst  $30                                         ; $537a: $f7
	add  b                                           ; $537b: $80
	dec  de                                          ; $537c: $1b
	add  b                                           ; $537d: $80
	sbc  l                                           ; $537e: $9d
	add  b                                           ; $537f: $80
	db   $dd                                         ; $5380: $dd
	add  b                                           ; $5381: $80
	sbc  $80                                         ; $5382: $de $80
	sub  [hl]                                        ; $5384: $96
	add  b                                           ; $5385: $80
	sub  a                                           ; $5386: $97
	inc  b                                           ; $5387: $04
	ld   d, $17                                      ; $5388: $16 $17
	dec  h                                           ; $538a: $25
	daa                                              ; $538b: $27
	db   $fc                                         ; $538c: $fc
	add  a                                           ; $538d: $87
	rst  $38                                         ; $538e: $ff
	add  b                                           ; $538f: $80
	ld   a, a                                        ; $5390: $7f
	inc  b                                           ; $5391: $04
	inc  bc                                          ; $5392: $03
	ld   a, a                                        ; $5393: $7f
	ld   a, h                                        ; $5394: $7c
	cp   a                                           ; $5395: $bf
	ld   b, b                                        ; $5396: $40
	adc  e                                           ; $5397: $8b
	rst  $38                                         ; $5398: $ff
	ld   [bc], a                                     ; $5399: $02
	ccf                                              ; $539a: $3f
	rst  $38                                         ; $539b: $ff
	ccf                                              ; $539c: $3f
	adc  e                                           ; $539d: $8b
	rst  $38                                         ; $539e: $ff
	inc  bc                                          ; $539f: $03
	cp   $ff                                         ; $53a0: $fe $ff
	sbc  $df                                         ; $53a2: $de $df
	add  b                                           ; $53a4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53a5: $cf
	add  b                                           ; $53a6: $80
	rst  $28                                         ; $53a7: $ef
	nop                                              ; $53a8: $00
	rst  $20                                         ; $53a9: $e7
	add  c                                           ; $53aa: $81
	rst  $30                                         ; $53ab: $f7
	ld   b, $d3                                      ; $53ac: $06 $d3
	ei                                               ; $53ae: $fb
	dec  sp                                          ; $53af: $3b
	ei                                               ; $53b0: $fb
	ld   sp, hl                                      ; $53b1: $f9
	db   $fd                                         ; $53b2: $fd
	inc  bc                                          ; $53b3: $03
	adc  l                                           ; $53b4: $8d
	nop                                              ; $53b5: $00
	inc  c                                           ; $53b6: $0c
	ld   a, [hl]                                     ; $53b7: $7e
	or   h                                           ; $53b8: $b4
	or   l                                           ; $53b9: $b5
	or   h                                           ; $53ba: $b4
	scf                                              ; $53bb: $37
	ld   l, b                                        ; $53bc: $68

jr_0a2_53bd:
	ld   l, e                                        ; $53bd: $6b
	ld   l, b                                        ; $53be: $68
	ld   l, [hl]                                     ; $53bf: $6e
	ld   h, b                                        ; $53c0: $60
	ld   h, c                                        ; $53c1: $61
	ld   h, b                                        ; $53c2: $60
	jr   nz, jr_0a2_5346                             ; $53c3: $20 $81

	ld   h, b                                        ; $53c5: $60
	nop                                              ; $53c6: $00
	ret  c                                           ; $53c7: $d8

	rst  $38                                         ; $53c8: $ff
	nop                                              ; $53c9: $00
	rst  $38                                         ; $53ca: $ff
	nop                                              ; $53cb: $00
	rst  $38                                         ; $53cc: $ff
	nop                                              ; $53cd: $00
	rst  $38                                         ; $53ce: $ff
	nop                                              ; $53cf: $00
	rst  $38                                         ; $53d0: $ff
	nop                                              ; $53d1: $00
	rst  $38                                         ; $53d2: $ff
	nop                                              ; $53d3: $00
	rst  $38                                         ; $53d4: $ff
	nop                                              ; $53d5: $00
	rst  $38                                         ; $53d6: $ff
	nop                                              ; $53d7: $00
	rst  $38                                         ; $53d8: $ff
	nop                                              ; $53d9: $00
	rst  $38                                         ; $53da: $ff
	nop                                              ; $53db: $00
	db   $d3                                         ; $53dc: $d3
	nop                                              ; $53dd: $00
	sub  [hl]                                        ; $53de: $96
	nop                                              ; $53df: $00
	add  [hl]                                        ; $53e0: $86
	nop                                              ; $53e1: $00
	add  b                                           ; $53e2: $80
	ld   e, $80                                      ; $53e3: $1e $80
	jr   c, jr_0a2_5367                              ; $53e5: $38 $80

	ld   [hl], b                                     ; $53e7: $70
	add  b                                           ; $53e8: $80
	ldh  [$08], a                                    ; $53e9: $e0 $08
	ret  nz                                          ; $53eb: $c0

	nop                                              ; $53ec: $00
	ld   b, b                                        ; $53ed: $40
	nop                                              ; $53ee: $00
	add  b                                           ; $53ef: $80
	nop                                              ; $53f0: $00
	add  b                                           ; $53f1: $80
	nop                                              ; $53f2: $00
	ld   b, b                                        ; $53f3: $40
	add  c                                           ; $53f4: $81
	nop                                              ; $53f5: $00
	nop                                              ; $53f6: $00
	jr   nz, jr_0a2_537a                             ; $53f7: $20 $81

	nop                                              ; $53f9: $00
	inc  c                                           ; $53fa: $0c
	pop  hl                                          ; $53fb: $e1
	nop                                              ; $53fc: $00
	ld   bc, $0300                                   ; $53fd: $01 $00 $03
	nop                                              ; $5400: $00
	inc  b                                           ; $5401: $04
	ld   bc, $0009                                   ; $5402: $01 $09 $00
	ld   [$0800], sp                                 ; $5405: $08 $00 $08
	add  c                                           ; $5408: $81
	nop                                              ; $5409: $00
	add  d                                           ; $540a: $82
	ld   [bc], a                                     ; $540b: $02
	ld   c, $0a                                      ; $540c: $0e $0a
	ld   [bc], a                                     ; $540e: $02
	ld   a, [de]                                     ; $540f: $1a
	inc  bc                                          ; $5410: $03
	dec  sp                                          ; $5411: $3b
	ld   a, [de]                                     ; $5412: $1a
	dec  b                                           ; $5413: $05
	ld   bc, $1846                                   ; $5414: $01 $46 $18
	sbc  d                                           ; $5417: $9a
	inc  e                                           ; $5418: $1c
	ld   [bc], a                                     ; $5419: $02
	nop                                              ; $541a: $00
	ld   e, $84                                      ; $541b: $1e $84
	nop                                              ; $541d: $00
	add  b                                           ; $541e: $80
	pop  hl                                          ; $541f: $e1
	ld   bc, $4606                                   ; $5420: $01 $06 $46
	add  c                                           ; $5423: $81
	ld   b, b                                        ; $5424: $40
	add  b                                           ; $5425: $80
	ld   d, b                                        ; $5426: $50
	add  c                                           ; $5427: $81
	stop                                             ; $5428: $10 $00
	ld   d, b                                        ; $542a: $50
	add  b                                           ; $542b: $80
	ld   [hl], h                                     ; $542c: $74
	add  b                                           ; $542d: $80
	ld   a, h                                        ; $542e: $7c
	nop                                              ; $542f: $00
	cp   b                                           ; $5430: $b8
	add  c                                           ; $5431: $81
	ld   hl, sp-$80                                  ; $5432: $f8 $80
	nop                                              ; $5434: $00
	nop                                              ; $5435: $00
	rra                                              ; $5436: $1f
	add  c                                           ; $5437: $81
	nop                                              ; $5438: $00
	nop                                              ; $5439: $00
	jr   nz, jr_0a2_53bd                             ; $543a: $20 $81

	nop                                              ; $543c: $00
	nop                                              ; $543d: $00
	ld   b, b                                        ; $543e: $40
	add  c                                           ; $543f: $81
	nop                                              ; $5440: $00
	nop                                              ; $5441: $00
	add  b                                           ; $5442: $80
	sub  c                                           ; $5443: $91
	nop                                              ; $5444: $00
	ld   [bc], a                                     ; $5445: $02
	ld   bc, $0200                                   ; $5446: $01 $00 $02
	add  c                                           ; $5449: $81
	nop                                              ; $544a: $00
	nop                                              ; $544b: $00
	inc  bc                                          ; $544c: $03
	sub  a                                           ; $544d: $97
	nop                                              ; $544e: $00
	ld   [$1fff], sp                                 ; $544f: $08 $ff $1f
	ld   a, a                                        ; $5452: $7f
	rrca                                             ; $5453: $0f
	sbc  a                                           ; $5454: $9f
	inc  bc                                          ; $5455: $03
	rrca                                             ; $5456: $0f

jr_0a2_5457:
	nop                                              ; $5457: $00
	ld   [bc], a                                     ; $5458: $02
	sub  c                                           ; $5459: $91
	nop                                              ; $545a: $00
	ld   bc, $0103                                   ; $545b: $01 $03 $01
	add  b                                           ; $545e: $80
	nop                                              ; $545f: $00
	nop                                              ; $5460: $00
	db   $fc                                         ; $5461: $fc
	add  b                                           ; $5462: $80
	ld   a, d                                        ; $5463: $7a
	ld   [bc], a                                     ; $5464: $02
	ld   [bc], a                                     ; $5465: $02
	inc  bc                                          ; $5466: $03
	nop                                              ; $5467: $00
	add  [hl]                                        ; $5468: $86
	db   $fc                                         ; $5469: $fc
	adc  l                                           ; $546a: $8d
	nop                                              ; $546b: $00
	add  b                                           ; $546c: $80
	db   $ec                                         ; $546d: $ec
	ld   bc, $fe00                                   ; $546e: $01 $00 $fe
	adc  c                                           ; $5471: $89
	nop                                              ; $5472: $00
	add  b                                           ; $5473: $80
	inc  a                                           ; $5474: $3c
	add  b                                           ; $5475: $80
	ld   [hl], b                                     ; $5476: $70
	add  b                                           ; $5477: $80
	ldh  [$80], a                                    ; $5478: $e0 $80
	ld   b, b                                        ; $547a: $40
	adc  h                                           ; $547b: $8c
	nop                                              ; $547c: $00
	inc  c                                           ; $547d: $0c
	rrca                                             ; $547e: $0f
	nop                                              ; $547f: $00
	ld   [$1800], sp                                 ; $5480: $08 $00 $18
	nop                                              ; $5483: $00
	jr   nz, jr_0a2_548e                             ; $5484: $20 $08

	ld   c, b                                        ; $5486: $48
	rlca                                             ; $5487: $07
	ld   b, a                                        ; $5488: $47
	nop                                              ; $5489: $00
	ld   b, d                                        ; $548a: $42
	add  c                                           ; $548b: $81
	ld   [bc], a                                     ; $548c: $02
	add  b                                           ; $548d: $80

jr_0a2_548e:
	ld   [de], a                                     ; $548e: $12
	add  b                                           ; $548f: $80
	db   $10                                         ; $5490: $10
	ld   [bc], a                                     ; $5491: $02
	ld   d, b                                        ; $5492: $50
	ld   [de], a                                     ; $5493: $12
	inc  de                                          ; $5494: $13
	add  b                                           ; $5495: $80
	dec  de                                          ; $5496: $1b
	ld   [bc], a                                     ; $5497: $02
	inc  de                                          ; $5498: $13
	call $800f                                       ; $5499: $cd $0f $80
	ld   b, a                                        ; $549c: $47
	nop                                              ; $549d: $00
	rst  $38                                         ; $549e: $ff
	add  c                                           ; $549f: $81
	nop                                              ; $54a0: $00
	ld   b, $f0                                      ; $54a1: $06 $f0
	nop                                              ; $54a3: $00
	ld   [$0400], sp                                 ; $54a4: $08 $00 $04
	nop                                              ; $54a7: $00
	ld   [bc], a                                     ; $54a8: $02
	add  b                                           ; $54a9: $80
	ld   [$3001], sp                                 ; $54aa: $08 $01 $30
	ld   sp, $0081                                   ; $54ad: $31 $81 $00
	add  d                                           ; $54b0: $82
	add  b                                           ; $54b1: $80
	ld   bc, $8081                                   ; $54b2: $01 $81 $80
	add  b                                           ; $54b5: $80
	and  b                                           ; $54b6: $a0
	ld   bc, $e0e2                                   ; $54b7: $01 $e2 $e0
	add  b                                           ; $54ba: $80
	ret  nz                                          ; $54bb: $c0

	ld   [bc], a                                     ; $54bc: $02
	call nz, $f8c0                                   ; $54bd: $c4 $c0 $f8
	add  c                                           ; $54c0: $81
	nop                                              ; $54c1: $00
	nop                                              ; $54c2: $00
	ld   bc, $0081                                   ; $54c3: $01 $81 $00
	nop                                              ; $54c6: $00
	ld   [bc], a                                     ; $54c7: $02
	add  c                                           ; $54c8: $81
	nop                                              ; $54c9: $00
	nop                                              ; $54ca: $00
	dec  b                                           ; $54cb: $05
	add  c                                           ; $54cc: $81
	nop                                              ; $54cd: $00
	nop                                              ; $54ce: $00
	ld   b, $8d                                      ; $54cf: $06 $8d
	nop                                              ; $54d1: $00
	ld   [bc], a                                     ; $54d2: $02
	rst  $20                                         ; $54d3: $e7
	nop                                              ; $54d4: $00
	jr   jr_0a2_5457                                 ; $54d5: $18 $80

	ld   h, [hl]                                     ; $54d7: $66
	add  c                                           ; $54d8: $81
	ld   a, $04                                      ; $54d9: $3e $04
	rst  $38                                         ; $54db: $ff
	dec  e                                           ; $54dc: $1d
	ccf                                              ; $54dd: $3f
	inc  bc                                          ; $54de: $03
	rla                                              ; $54df: $17
	add  c                                           ; $54e0: $81
	rlca                                             ; $54e1: $07
	add  d                                           ; $54e2: $82
	nop                                              ; $54e3: $00
	inc  b                                           ; $54e4: $04
	stop                                             ; $54e5: $10 $00
	jr   nz, jr_0a2_54e9                             ; $54e7: $20 $00

jr_0a2_54e9:
	ld   bc, $0081                                   ; $54e9: $01 $81 $00
	inc  b                                           ; $54ec: $04
	ld   h, b                                        ; $54ed: $60
	inc  a                                           ; $54ee: $3c
	dec  e                                           ; $54ef: $1d
	nop                                              ; $54f0: $00
	adc  a                                           ; $54f1: $8f
	add  b                                           ; $54f2: $80
	nop                                              ; $54f3: $00
	add  b                                           ; $54f4: $80
	ldh  [$81], a                                    ; $54f5: $e0 $81
	nop                                              ; $54f7: $00
	add  [hl]                                        ; $54f8: $86
	ldh  [$84], a                                    ; $54f9: $e0 $84
	nop                                              ; $54fb: $00
	nop                                              ; $54fc: $00
	ld   [$0081], sp                                 ; $54fd: $08 $81 $00
	inc  d                                           ; $5500: $14
	add  h                                           ; $5501: $84
	nop                                              ; $5502: $00
	ret  nz                                          ; $5503: $c0

	ld   a, b                                        ; $5504: $78
	jr   c, jr_0a2_5507                              ; $5505: $38 $00

jr_0a2_5507:
	db   $fc                                         ; $5507: $fc
	nop                                              ; $5508: $00
	ld   e, $00                                      ; $5509: $1e $00
	ld   de, $3000                                   ; $550b: $11 $00 $30
	nop                                              ; $550e: $00
	ld   b, b                                        ; $550f: $40
	db   $10                                         ; $5510: $10
	sub  b                                           ; $5511: $90
	ld   c, $8e                                      ; $5512: $0e $8e
	nop                                              ; $5514: $00
	add  h                                           ; $5515: $84
	add  c                                           ; $5516: $81
	inc  b                                           ; $5517: $04
	add  b                                           ; $5518: $80
	dec  h                                           ; $5519: $25
	add  b                                           ; $551a: $80
	ld   hl, $a102                                   ; $551b: $21 $02 $a1
	dec  h                                           ; $551e: $25
	daa                                              ; $551f: $27
	add  b                                           ; $5520: $80
	scf                                              ; $5521: $37
	dec  b                                           ; $5522: $05
	daa                                              ; $5523: $27
	ld   e, e                                        ; $5524: $5b
	rra                                              ; $5525: $1f
	cpl                                              ; $5526: $2f
	rrca                                             ; $5527: $0f
	rra                                              ; $5528: $1f
	add  c                                           ; $5529: $81
	nop                                              ; $552a: $00
	ld   b, $e0                                      ; $552b: $06 $e0
	nop                                              ; $552d: $00
	stop                                             ; $552e: $10 $00
	ld   [$0400], sp                                 ; $5530: $08 $00 $04
	add  b                                           ; $5533: $80
	db   $10                                         ; $5534: $10
	ld   bc, $6260                                   ; $5535: $01 $60 $62
	add  l                                           ; $5538: $85
	nop                                              ; $5539: $00
	ld   bc, $0002                                   ; $553a: $01 $02 $00
	add  b                                           ; $553d: $80
	ld   b, b                                        ; $553e: $40
	ld   bc, $c0c4                                   ; $553f: $01 $c4 $c0
	add  b                                           ; $5542: $80
	add  b                                           ; $5543: $80
	ld   [bc], a                                     ; $5544: $02
	adc  b                                           ; $5545: $88
	add  b                                           ; $5546: $80
	ldh  a, [$91]                                    ; $5547: $f0 $91
	nop                                              ; $5549: $00
	add  b                                           ; $554a: $80

jr_0a2_554b:
	ld   bc, $7f80                                   ; $554b: $01 $80 $7f

jr_0a2_554e:
	add  b                                           ; $554e: $80
	rra                                              ; $554f: $1f
	sub  [hl]                                        ; $5550: $96
	nop                                              ; $5551: $00
	ld   b, $0f                                      ; $5552: $06 $0f
	nop                                              ; $5554: $00
	ldh  a, [$80]                                    ; $5555: $f0 $80
	adc  a                                           ; $5557: $8f
	add  b                                           ; $5558: $80
	ld   [hl], b                                     ; $5559: $70
	add  l                                           ; $555a: $85
	nop                                              ; $555b: $00
	inc  b                                           ; $555c: $04
	rrca                                             ; $555d: $0f
	nop                                              ; $555e: $00
	inc  b                                           ; $555f: $04
	nop                                              ; $5560: $00
	db   $10                                         ; $5561: $10
	add  c                                           ; $5562: $81
	nop                                              ; $5563: $00
	ld   bc, $1121                                   ; $5564: $01 $21 $11
	add  b                                           ; $5567: $80
	dec  d                                           ; $5568: $15
	ld   a, [de]                                     ; $5569: $1a
	ld   d, h                                        ; $556a: $54
	inc  [hl]                                        ; $556b: $34
	dec  [hl]                                        ; $556c: $35
	ld   hl, $00a0                                   ; $556d: $21 $a0 $00

jr_0a2_5570:
	ret  nc                                          ; $5570: $d0

	ret  nz                                          ; $5571: $c0

	jr   nc, jr_0a2_5574                             ; $5572: $30 $00

jr_0a2_5574:
	pop  hl                                          ; $5574: $e1
	nop                                              ; $5575: $00
	ld   [bc], a                                     ; $5576: $02
	nop                                              ; $5577: $00
	ld   b, b                                        ; $5578: $40
	nop                                              ; $5579: $00
	ret  nz                                          ; $557a: $c0

	ld   a, b                                        ; $557b: $78
	jr   c, jr_0a2_557e                              ; $557c: $38 $00

jr_0a2_557e:
	inc  e                                           ; $557e: $1c
	nop                                              ; $557f: $00
	db   $10                                         ; $5580: $10
	ld   h, b                                        ; $5581: $60
	ld   l, b                                        ; $5582: $68
	ld   [hl], b                                     ; $5583: $70
	ld   [hl], h                                     ; $5584: $74
	add  b                                           ; $5585: $80
	ld   e, b                                        ; $5586: $58
	ld   bc, $3b38                                   ; $5587: $01 $38 $3b
	add  b                                           ; $558a: $80
	ld   a, b                                        ; $558b: $78
	ld   [bc], a                                     ; $558c: $02
	jr   nc, jr_0a2_554e                             ; $558d: $30 $bf

	add  b                                           ; $558f: $80
	add  d                                           ; $5590: $82
	nop                                              ; $5591: $00
	nop                                              ; $5592: $00
	ld   [$0081], sp                                 ; $5593: $08 $81 $00
	ld   a, [bc]                                     ; $5596: $0a
	add  h                                           ; $5597: $84
	nop                                              ; $5598: $00
	ld   b, d                                        ; $5599: $42
	nop                                              ; $559a: $00
	ld   h, b                                        ; $559b: $60
	inc  a                                           ; $559c: $3c
	inc  e                                           ; $559d: $1c
	nop                                              ; $559e: $00
	ld   a, [hl]                                     ; $559f: $7e
	nop                                              ; $55a0: $00
	inc  b                                           ; $55a1: $04
	add  l                                           ; $55a2: $85
	nop                                              ; $55a3: $00
	nop                                              ; $55a4: $00
	inc  b                                           ; $55a5: $04
	rst  $38                                         ; $55a6: $ff
	nop                                              ; $55a7: $00
	rst  $38                                         ; $55a8: $ff
	nop                                              ; $55a9: $00
	rst  $38                                         ; $55aa: $ff
	nop                                              ; $55ab: $00
	rst  $38                                         ; $55ac: $ff
	nop                                              ; $55ad: $00
	rst  $38                                         ; $55ae: $ff
	nop                                              ; $55af: $00
	rst  $38                                         ; $55b0: $ff
	nop                                              ; $55b1: $00
	rst  $38                                         ; $55b2: $ff
	nop                                              ; $55b3: $00
	rst  $38                                         ; $55b4: $ff
	nop                                              ; $55b5: $00
	rst  $38                                         ; $55b6: $ff
	nop                                              ; $55b7: $00
	rst  $38                                         ; $55b8: $ff
	nop                                              ; $55b9: $00
	rst  $38                                         ; $55ba: $ff
	nop                                              ; $55bb: $00
	adc  b                                           ; $55bc: $88
	nop                                              ; $55bd: $00
	ld   [hl], a                                     ; $55be: $77
	nop                                              ; $55bf: $00
	add  d                                           ; $55c0: $82
	nop                                              ; $55c1: $00
	ld   b, $03                                      ; $55c2: $06 $03

jr_0a2_55c4:
	nop                                              ; $55c4: $00
	inc  c                                           ; $55c5: $0c
	nop                                              ; $55c6: $00
	stop                                             ; $55c7: $10 $00
	jr   nz, jr_0a2_554b                             ; $55c9: $20 $80

	ld   [$0601], sp                                 ; $55cb: $08 $01 $06
	ld   b, [hl]                                     ; $55ce: $46
	add  l                                           ; $55cf: $85
	nop                                              ; $55d0: $00
	ld   bc, $0040                                   ; $55d1: $01 $40 $00
	add  b                                           ; $55d4: $80
	ld   [bc], a                                     ; $55d5: $02
	ld   b, $23                                      ; $55d6: $06 $23
	inc  bc                                          ; $55d8: $03
	ld   de, $0901                                   ; $55d9: $11 $01 $09
	ld   bc, $8107                                   ; $55dc: $01 $07 $81
	nop                                              ; $55df: $00
	dec  bc                                          ; $55e0: $0b
	cp   $00                                         ; $55e1: $fe $00
	ld   [bc], a                                     ; $55e3: $02
	nop                                              ; $55e4: $00
	ld   [bc], a                                     ; $55e5: $02
	nop                                              ; $55e6: $00
	ld   bc, $0908                                   ; $55e7: $01 $08 $09
	ld   [hl], b                                     ; $55ea: $70
	ld   [hl], c                                     ; $55eb: $71
	nop                                              ; $55ec: $00
	add  b                                           ; $55ed: $80
	jr   nz, jr_0a2_5570                             ; $55ee: $20 $80

	and  b                                           ; $55f0: $a0
	add  d                                           ; $55f1: $82
	and  h                                           ; $55f2: $a4
	ld   bc, $8c8d                                   ; $55f3: $01 $8d $8c
	add  b                                           ; $55f6: $80
	db   $f4                                         ; $55f7: $f4
	inc  b                                           ; $55f8: $04
	ld   a, [$f4f8]                                  ; $55f9: $fa $f8 $f4
	ldh  a, [rIE]                                    ; $55fc: $f0 $ff
	add  e                                           ; $55fe: $83
	nop                                              ; $55ff: $00
	ld   bc, $060e                                   ; $5600: $01 $0e $06
	add  d                                           ; $5603: $82
	rlca                                             ; $5604: $07
	nop                                              ; $5605: $00
	rra                                              ; $5606: $1f
	add  c                                           ; $5607: $81
	rrca                                             ; $5608: $0f
	nop                                              ; $5609: $00
	db   $10                                         ; $560a: $10
	add  c                                           ; $560b: $81
	nop                                              ; $560c: $00
	nop                                              ; $560d: $00
	db   $10                                         ; $560e: $10
	add  c                                           ; $560f: $81
	nop                                              ; $5610: $00
	ld   a, [bc]                                     ; $5611: $0a
	ld   hl, $4200                                   ; $5612: $21 $00 $42
	nop                                              ; $5615: $00
	ld   b, $3c                                      ; $5616: $06 $3c
	jr   c, jr_0a2_561a                              ; $5618: $38 $00

jr_0a2_561a:
	add  l                                           ; $561a: $85
	nop                                              ; $561b: $00
	ld   b, $81                                      ; $561c: $06 $81
	ld   a, [$fd05]                                  ; $561e: $fa $05 $fd
	db   $f4                                         ; $5621: $f4
	ldh  a, [c]                                      ; $5622: $f2
	nop                                              ; $5623: $00
	ld   e, h                                        ; $5624: $5c
	nop                                              ; $5625: $00
	add  e                                           ; $5626: $83
	ld   b, b                                        ; $5627: $40
	inc  bc                                          ; $5628: $03
	nop                                              ; $5629: $00
	stop                                             ; $562a: $10 $00
	ld   [$0081], sp                                 ; $562c: $08 $81 $00
	ld   [$0080], sp                                 ; $562f: $08 $80 $00
	inc  b                                           ; $5632: $04
	nop                                              ; $5633: $00
	ld   b, $3c                                      ; $5634: $06 $3c
	jr   c, jr_0a2_5638                              ; $5636: $38 $00

jr_0a2_5638:
	ld   a, [hl]                                     ; $5638: $7e
	add  c                                           ; $5639: $81
	nop                                              ; $563a: $00
	ld   b, $03                                      ; $563b: $06 $03
	nop                                              ; $563d: $00
	inc  c                                           ; $563e: $0c
	nop                                              ; $563f: $00
	stop                                             ; $5640: $10 $00

jr_0a2_5642:
	jr   nz, jr_0a2_55c4                             ; $5642: $20 $80

	ld   [$0601], sp                                 ; $5644: $08 $01 $06
	ld   b, [hl]                                     ; $5647: $46
	add  l                                           ; $5648: $85
	nop                                              ; $5649: $00
	ld   bc, $0040                                   ; $564a: $01 $40 $00
	add  b                                           ; $564d: $80
	ld   [bc], a                                     ; $564e: $02
	ld   b, $23                                      ; $564f: $06 $23
	inc  bc                                          ; $5651: $03
	ld   de, $0901                                   ; $5652: $11 $01 $09
	ld   bc, $8107                                   ; $5655: $01 $07 $81
	nop                                              ; $5658: $00
	dec  bc                                          ; $5659: $0b
	cp   $00                                         ; $565a: $fe $00
	ld   [bc], a                                     ; $565c: $02
	nop                                              ; $565d: $00
	ld   [bc], a                                     ; $565e: $02
	nop                                              ; $565f: $00
	ld   bc, $0908                                   ; $5660: $01 $08 $09
	ld   [hl], b                                     ; $5663: $70
	ld   [hl], c                                     ; $5664: $71
	nop                                              ; $5665: $00
	add  b                                           ; $5666: $80

jr_0a2_5667:
	jr   nz, @-$7e                                   ; $5667: $20 $80

	and  b                                           ; $5669: $a0
	add  d                                           ; $566a: $82
	and  h                                           ; $566b: $a4
	ld   bc, $8c8d                                   ; $566c: $01 $8d $8c
	add  b                                           ; $566f: $80
	db   $f4                                         ; $5670: $f4
	ld   bc, $f8f9                                   ; $5671: $01 $f9 $f8
	add  b                                           ; $5674: $80
	add  d                                           ; $5675: $82
	nop                                              ; $5676: $00
	ld   hl, sp-$80                                  ; $5677: $f8 $80
	nop                                              ; $5679: $00
	inc  b                                           ; $567a: $04
	ld   bc, $0109                                   ; $567b: $01 $09 $01
	rlca                                             ; $567e: $07
	ld   b, $80                                      ; $567f: $06 $80
	rlca                                             ; $5681: $07
	nop                                              ; $5682: $00
	rra                                              ; $5683: $1f
	add  e                                           ; $5684: $83
	rrca                                             ; $5685: $0f
	nop                                              ; $5686: $00
	db   $10                                         ; $5687: $10
	add  c                                           ; $5688: $81
	nop                                              ; $5689: $00
	nop                                              ; $568a: $00
	db   $10                                         ; $568b: $10
	add  c                                           ; $568c: $81
	nop                                              ; $568d: $00
	ld   [$0021], sp                                 ; $568e: $08 $21 $00
	ld   b, d                                        ; $5691: $42
	nop                                              ; $5692: $00
	ld   b, $3c                                      ; $5693: $06 $3c
	jr   c, jr_0a2_5697                              ; $5695: $38 $00

jr_0a2_5697:
	add  e                                           ; $5697: $83
	add  b                                           ; $5698: $80
	ld   a, d                                        ; $5699: $7a
	ld   [$f9fa], sp                                 ; $569a: $08 $fa $f9
	ld   hl, sp-$02                                  ; $569d: $f8 $fe
	ldh  [$f8], a                                    ; $569f: $e0 $f8
	nop                                              ; $56a1: $00
	ld   b, b                                        ; $56a2: $40
	nop                                              ; $56a3: $00
	add  e                                           ; $56a4: $83
	ld   b, b                                        ; $56a5: $40
	inc  bc                                          ; $56a6: $03
	nop                                              ; $56a7: $00
	stop                                             ; $56a8: $10 $00
	ld   [$0081], sp                                 ; $56aa: $08 $81 $00
	ld   [$0080], sp                                 ; $56ad: $08 $80 $00
	inc  b                                           ; $56b0: $04
	nop                                              ; $56b1: $00
	ld   b, $3c                                      ; $56b2: $06 $3c
	jr   c, jr_0a2_56b6                              ; $56b4: $38 $00

jr_0a2_56b6:
	ld   a, [hl]                                     ; $56b6: $7e
	add  c                                           ; $56b7: $81
	nop                                              ; $56b8: $00
	ld   b, $03                                      ; $56b9: $06 $03
	nop                                              ; $56bb: $00
	inc  c                                           ; $56bc: $0c
	nop                                              ; $56bd: $00
	stop                                             ; $56be: $10 $00
	jr   nz, jr_0a2_5642                             ; $56c0: $20 $80

	ld   [$0601], sp                                 ; $56c2: $08 $01 $06
	ld   b, [hl]                                     ; $56c5: $46
	add  l                                           ; $56c6: $85
	nop                                              ; $56c7: $00
	ld   bc, $0040                                   ; $56c8: $01 $40 $00
	add  b                                           ; $56cb: $80
	ld   [bc], a                                     ; $56cc: $02
	ld   b, $23                                      ; $56cd: $06 $23
	inc  bc                                          ; $56cf: $03
	ld   de, $0901                                   ; $56d0: $11 $01 $09
	ld   bc, $8107                                   ; $56d3: $01 $07 $81
	nop                                              ; $56d6: $00
	dec  bc                                          ; $56d7: $0b
	cp   $00                                         ; $56d8: $fe $00
	ld   [bc], a                                     ; $56da: $02
	nop                                              ; $56db: $00
	ld   [bc], a                                     ; $56dc: $02
	nop                                              ; $56dd: $00
	ld   bc, $0908                                   ; $56de: $01 $08 $09
	ld   [hl], b                                     ; $56e1: $70
	ld   [hl], c                                     ; $56e2: $71
	nop                                              ; $56e3: $00
	add  b                                           ; $56e4: $80
	jr   nz, jr_0a2_5667                             ; $56e5: $20 $80

	and  b                                           ; $56e7: $a0
	add  d                                           ; $56e8: $82
	and  h                                           ; $56e9: $a4
	ld   [$8c8d], sp                                 ; $56ea: $08 $8d $8c
	di                                               ; $56ed: $f3
	ldh  a, [c]                                      ; $56ee: $f2
	jp   nz, $0aca                                   ; $56ef: $c2 $ca $0a

	ld   a, [hl-]                                    ; $56f2: $3a
	ret  nz                                          ; $56f3: $c0

	add  b                                           ; $56f4: $80
	nop                                              ; $56f5: $00
	inc  b                                           ; $56f6: $04
	ld   bc, $0109                                   ; $56f7: $01 $09 $01
	rlca                                             ; $56fa: $07
	ld   b, $80                                      ; $56fb: $06 $80
	rlca                                             ; $56fd: $07
	nop                                              ; $56fe: $00
	rra                                              ; $56ff: $1f
	add  e                                           ; $5700: $83
	rrca                                             ; $5701: $0f
	nop                                              ; $5702: $00
	db   $10                                         ; $5703: $10
	add  c                                           ; $5704: $81
	nop                                              ; $5705: $00
	nop                                              ; $5706: $00
	db   $10                                         ; $5707: $10
	add  c                                           ; $5708: $81
	nop                                              ; $5709: $00
	ld   c, $21                                      ; $570a: $0e $21
	nop                                              ; $570c: $00
	ld   b, d                                        ; $570d: $42
	nop                                              ; $570e: $00
	ld   b, $3c                                      ; $570f: $06 $3c
	jr   c, jr_0a2_5713                              ; $5711: $38 $00

jr_0a2_5713:
	add  b                                           ; $5713: $80
	ld   hl, sp-$02                                  ; $5714: $f8 $fe
	ldh  a, [$f8]                                    ; $5716: $f0 $f8
	ldh  [$f0], a                                    ; $5718: $e0 $f0
	add  b                                           ; $571a: $80
	ret  nz                                          ; $571b: $c0

	ld   [bc], a                                     ; $571c: $02
	nop                                              ; $571d: $00
	ld   b, b                                        ; $571e: $40
	nop                                              ; $571f: $00
	add  e                                           ; $5720: $83
	ld   b, b                                        ; $5721: $40
	inc  bc                                          ; $5722: $03
	nop                                              ; $5723: $00
	stop                                             ; $5724: $10 $00
	ld   [$0081], sp                                 ; $5726: $08 $81 $00
	rrca                                             ; $5729: $0f
	add  b                                           ; $572a: $80
	nop                                              ; $572b: $00
	inc  b                                           ; $572c: $04
	nop                                              ; $572d: $00
	ld   b, $3c                                      ; $572e: $06 $3c
	jr   c, jr_0a2_5732                              ; $5730: $38 $00

jr_0a2_5732:
	ld   e, $00                                      ; $5732: $1e $00
	rst  $38                                         ; $5734: $ff
	ld   h, b                                        ; $5735: $60
	rra                                              ; $5736: $1f
	ld   e, a                                        ; $5737: $5f
	rst  $38                                         ; $5738: $ff
	ccf                                              ; $5739: $3f
	add  b                                           ; $573a: $80
	ld   l, $11                                      ; $573b: $2e $11
	dec  sp                                          ; $573d: $3b
	ccf                                              ; $573e: $3f
	dec  [hl]                                        ; $573f: $35
	dec  sp                                          ; $5740: $3b
	ld   e, e                                        ; $5741: $5b
	rra                                              ; $5742: $1f
	ld   c, [hl]                                     ; $5743: $4e
	nop                                              ; $5744: $00
	xor  [hl]                                        ; $5745: $ae
	ld   l, [hl]                                     ; $5746: $6e
	ld   e, a                                        ; $5747: $5f
	rra                                              ; $5748: $1f
	rst  JumpTable                                         ; $5749: $df
	rra                                              ; $574a: $1f
	rst  JumpTable                                         ; $574b: $df
	rra                                              ; $574c: $1f
	ccf                                              ; $574d: $3f
	ld   a, a                                        ; $574e: $7f
	add  b                                           ; $574f: $80
	ld   h, b                                        ; $5750: $60
	ld   [$00df], sp                                 ; $5751: $08 $df $00
	and  b                                           ; $5754: $a0
	nop                                              ; $5755: $00
	ldh  [$c0], a                                    ; $5756: $e0 $c0
	nop                                              ; $5758: $00
	ld   b, b                                        ; $5759: $40
	ldh  [$85], a                                    ; $575a: $e0 $85
	add  b                                           ; $575c: $80
	inc  c                                           ; $575d: $0c
	ld   b, b                                        ; $575e: $40
	nop                                              ; $575f: $00
	ld   b, b                                        ; $5760: $40
	nop                                              ; $5761: $00
	and  b                                           ; $5762: $a0
	ret  nz                                          ; $5763: $c0

	ld   b, b                                        ; $5764: $40
	nop                                              ; $5765: $00
	ld   h, b                                        ; $5766: $60
	nop                                              ; $5767: $00
	ld   h, b                                        ; $5768: $60
	nop                                              ; $5769: $00
	add  b                                           ; $576a: $80
	add  c                                           ; $576b: $81
	ret  nz                                          ; $576c: $c0

	ld   [bc], a                                     ; $576d: $02
	ld   h, b                                        ; $576e: $60
	nop                                              ; $576f: $00
	ret  nz                                          ; $5770: $c0

	add  a                                           ; $5771: $87
	nop                                              ; $5772: $00
	ld   [bc], a                                     ; $5773: $02
	ld   b, b                                        ; $5774: $40
	nop                                              ; $5775: $00
	ld   b, b                                        ; $5776: $40
	rst  $38                                         ; $5777: $ff
	nop                                              ; $5778: $00
	rst  $38                                         ; $5779: $ff
	nop                                              ; $577a: $00
	rst  $38                                         ; $577b: $ff
	nop                                              ; $577c: $00
	rst  $38                                         ; $577d: $ff
	nop                                              ; $577e: $00
	rst  $38                                         ; $577f: $ff
	nop                                              ; $5780: $00
	rst  $38                                         ; $5781: $ff
	nop                                              ; $5782: $00
	rst  $38                                         ; $5783: $ff
	nop                                              ; $5784: $00

jr_0a2_5785:
	rst  $38                                         ; $5785: $ff
	nop                                              ; $5786: $00
	rst  $38                                         ; $5787: $ff
	nop                                              ; $5788: $00
	rst  $38                                         ; $5789: $ff
	nop                                              ; $578a: $00
	rst  $38                                         ; $578b: $ff
	nop                                              ; $578c: $00
	rst  $38                                         ; $578d: $ff
	nop                                              ; $578e: $00
	and  l                                           ; $578f: $a5
	nop                                              ; $5790: $00

jr_0a2_5791:
	cp   h                                           ; $5791: $bc
	nop                                              ; $5792: $00
	ld   [bc], a                                     ; $5793: $02
	jr   c, jr_0a2_5796                              ; $5794: $38 $00

jr_0a2_5796:
	inc  h                                           ; $5796: $24
	add  c                                           ; $5797: $81
	ld   [$1a06], sp                                 ; $5798: $08 $06 $1a
	inc  b                                           ; $579b: $04
	nop                                              ; $579c: $00
	inc  b                                           ; $579d: $04
	rlca                                             ; $579e: $07
	ld   b, $0a                                      ; $579f: $06 $0a
	add  b                                           ; $57a1: $80
	ld   [bc], a                                     ; $57a2: $02
	ld   bc, $0203                                   ; $57a3: $01 $03 $02
	add  e                                           ; $57a6: $83
	inc  bc                                          ; $57a7: $03
	inc  b                                           ; $57a8: $04
	add  hl, bc                                      ; $57a9: $09
	inc  bc                                          ; $57aa: $03
	ld   a, [de]                                     ; $57ab: $1a
	add  hl, bc                                      ; $57ac: $09
	rrca                                             ; $57ad: $0f
	add  b                                           ; $57ae: $80
	ld   c, $04                                      ; $57af: $0e $04
	rrca                                             ; $57b1: $0f
	ld   c, $0f                                      ; $57b2: $0e $0f
	dec  c                                           ; $57b4: $0d
	rrca                                             ; $57b5: $0f
	add  b                                           ; $57b6: $80
	dec  bc                                          ; $57b7: $0b
	dec  b                                           ; $57b8: $05
	ld   a, [bc]                                     ; $57b9: $0a
	dec  bc                                          ; $57ba: $0b
	inc  bc                                          ; $57bb: $03
	ld   a, [bc]                                     ; $57bc: $0a

jr_0a2_57bd:
	dec  bc                                          ; $57bd: $0b
	ld   bc, $0880                                   ; $57be: $01 $80 $08
	inc  d                                           ; $57c1: $14
	inc  c                                           ; $57c2: $0c
	ld   c, $0a                                      ; $57c3: $0e $0a
	ld   c, $07                                      ; $57c5: $0e $07
	inc  b                                           ; $57c7: $04
	inc  l                                           ; $57c8: $2c

jr_0a2_57c9:
	ld   [$1c00], sp                                 ; $57c9: $08 $00 $1c
	ld   c, h                                        ; $57cc: $4c
	inc  a                                           ; $57cd: $3c
	xor  h                                           ; $57ce: $ac
	ld   l, h                                        ; $57cf: $6c
	ld   b, h                                        ; $57d0: $44
	ld   l, h                                        ; $57d1: $6c
	ld   d, h                                        ; $57d2: $54
	call c, $0ccc                                    ; $57d3: $dc $cc $0c
	ld   [hl], d                                     ; $57d6: $72
	adc  c                                           ; $57d7: $89
	nop                                              ; $57d8: $00
	ld   b, $40                                      ; $57d9: $06 $40
	add  b                                           ; $57db: $80
	and  b                                           ; $57dc: $a0
	ret  nz                                          ; $57dd: $c0

	db   $10                                         ; $57de: $10
	ldh  [rOBP0], a                                  ; $57df: $e0 $48
	add  b                                           ; $57e1: $80
	ldh  a, [$09]                                    ; $57e2: $f0 $09
	ld   [hl], b                                     ; $57e4: $70
	ret  c                                           ; $57e5: $d8

	ldh  [$b0], a                                    ; $57e6: $e0 $b0
	ret  nz                                          ; $57e8: $c0

	ld   h, b                                        ; $57e9: $60
	add  b                                           ; $57ea: $80
	ret  nz                                          ; $57eb: $c0

	nop                                              ; $57ec: $00
	add  b                                           ; $57ed: $80
	add  a                                           ; $57ee: $87
	nop                                              ; $57ef: $00
	add  d                                           ; $57f0: $82
	ld   bc, $0384                                   ; $57f1: $01 $84 $03
	add  h                                           ; $57f4: $84

jr_0a2_57f5:
	rlca                                             ; $57f5: $07
	adc  d                                           ; $57f6: $8a
	rrca                                             ; $57f7: $0f
	adc  b                                           ; $57f8: $88
	rra                                              ; $57f9: $1f
	add  b                                           ; $57fa: $80
	ccf                                              ; $57fb: $3f
	add  b                                           ; $57fc: $80
	ld   a, $82                                      ; $57fd: $3e $82

jr_0a2_57ff:
	ld   a, h                                        ; $57ff: $7c
	add  d                                           ; $5800: $82
	ld   a, b                                        ; $5801: $78
	add  b                                           ; $5802: $80
	jr   c, jr_0a2_5785                              ; $5803: $38 $80

	jr   jr_0a2_5791                                 ; $5805: $18 $8a

	nop                                              ; $5807: $00
	add  b                                           ; $5808: $80
	inc  bc                                          ; $5809: $03
	add  b                                           ; $580a: $80

jr_0a2_580b:
	rlca                                             ; $580b: $07
	add  b                                           ; $580c: $80

jr_0a2_580d:
	rrca                                             ; $580d: $0f
	add  b                                           ; $580e: $80
	ccf                                              ; $580f: $3f
	add  b                                           ; $5810: $80
	ld   a, b                                        ; $5811: $78
	add  b                                           ; $5812: $80
	ld   [hl], b                                     ; $5813: $70
	add  h                                           ; $5814: $84
	ldh  [$8e], a                                    ; $5815: $e0 $8e
	ret  nz                                          ; $5817: $c0

	add  h                                           ; $5818: $84
	ldh  [$82], a                                    ; $5819: $e0 $82
	ldh  a, [$82]                                    ; $581b: $f0 $82
	ld   hl, sp-$80                                  ; $581d: $f8 $80
	ldh  [$80], a                                    ; $581f: $e0 $80
	add  b                                           ; $5821: $80
	adc  b                                           ; $5822: $88
	nop                                              ; $5823: $00
	add  b                                           ; $5824: $80
	ld   a, a                                        ; $5825: $7f
	add  [hl]                                        ; $5826: $86
	rst  $38                                         ; $5827: $ff
	add  b                                           ; $5828: $80
	rrca                                             ; $5829: $0f
	sub  d                                           ; $582a: $92
	nop                                              ; $582b: $00
	add  b                                           ; $582c: $80
	inc  bc                                          ; $582d: $03
	add  b                                           ; $582e: $80
	ld   b, $80                                      ; $582f: $06 $80
	inc  c                                           ; $5831: $0c
	add  b                                           ; $5832: $80
	sbc  b                                           ; $5833: $98
	add  b                                           ; $5834: $80
	ldh  a, [$80]                                    ; $5835: $f0 $80
	ldh  [$b2], a                                    ; $5837: $e0 $b2
	nop                                              ; $5839: $00
	add  b                                           ; $583a: $80
	jr   jr_0a2_57bd                                 ; $583b: $18 $80

	jr   nc, @-$7e                                   ; $583d: $30 $80

	or   l                                           ; $583f: $b5
	add  b                                           ; $5840: $80
	inc  hl                                          ; $5841: $23
	add  b                                           ; $5842: $80
	add  hl, bc                                      ; $5843: $09
	adc  b                                           ; $5844: $88
	nop                                              ; $5845: $00
	add  b                                           ; $5846: $80
	jr   nz, jr_0a2_57c9                             ; $5847: $20 $80

	and  b                                           ; $5849: $a0
	add  b                                           ; $584a: $80
	ret  nz                                          ; $584b: $c0

	add  b                                           ; $584c: $80
	ldh  a, [$80]                                    ; $584d: $f0 $80
	db   $fc                                         ; $584f: $fc
	add  b                                           ; $5850: $80
	rst  $38                                         ; $5851: $ff
	add  b                                           ; $5852: $80
	ld   bc, $0780                                   ; $5853: $01 $80 $07
	add  d                                           ; $5856: $82
	nop                                              ; $5857: $00
	add  b                                           ; $5858: $80
	rra                                              ; $5859: $1f
	add  b                                           ; $585a: $80
	ld   h, e                                        ; $585b: $63
	add  b                                           ; $585c: $80
	or   [hl]                                        ; $585d: $b6
	add  b                                           ; $585e: $80
	ret  nc                                          ; $585f: $d0

	sub  h                                           ; $5860: $94
	nop                                              ; $5861: $00
	add  b                                           ; $5862: $80
	ld   bc, $0303                                   ; $5863: $01 $03 $03
	nop                                              ; $5866: $00
	inc  bc                                          ; $5867: $03
	nop                                              ; $5868: $00
	add  b                                           ; $5869: $80
	rrca                                             ; $586a: $0f
	dec  b                                           ; $586b: $05
	rla                                              ; $586c: $17
	rlca                                             ; $586d: $07
	dec  bc                                          ; $586e: $0b
	inc  bc                                          ; $586f: $03
	ld   e, $06                                      ; $5870: $1e $06
	add  b                                           ; $5872: $80
	jr   jr_0a2_57f5                                 ; $5873: $18 $80

	and  a                                           ; $5875: $a7
	add  b                                           ; $5876: $80
	sbc  [hl]                                        ; $5877: $9e
	add  b                                           ; $5878: $80
	adc  h                                           ; $5879: $8c
	add  b                                           ; $587a: $80
	ld   b, b                                        ; $587b: $40
	add  b                                           ; $587c: $80
	jr   nz, jr_0a2_57ff                             ; $587d: $20 $80

	db   $10                                         ; $587f: $10
	add  b                                           ; $5880: $80
	nop                                              ; $5881: $00
	add  b                                           ; $5882: $80
	add  b                                           ; $5883: $80
	add  b                                           ; $5884: $80
	ldh  [$80], a                                    ; $5885: $e0 $80
	ld   [hl], b                                     ; $5887: $70
	add  b                                           ; $5888: $80
	jr   nc, jr_0a2_580b                             ; $5889: $30 $80

	jr   nz, jr_0a2_580d                             ; $588b: $20 $80

	nop                                              ; $588d: $00
	add  b                                           ; $588e: $80
	ret  nz                                          ; $588f: $c0

	add  b                                           ; $5890: $80

jr_0a2_5891:
	add  b                                           ; $5891: $80
	add  d                                           ; $5892: $82
	nop                                              ; $5893: $00
	nop                                              ; $5894: $00
	ldh  a, [$82]                                    ; $5895: $f0 $82
	rst  $30                                         ; $5897: $f7
	ld   [bc], a                                     ; $5898: $02
	add  a                                           ; $5899: $87
	rst  $30                                         ; $589a: $f7
	add  a                                           ; $589b: $87
	add  l                                           ; $589c: $85
	rlca                                             ; $589d: $07
	add  b                                           ; $589e: $80
	rrca                                             ; $589f: $0f
	and  l                                           ; $58a0: $a5
	nop                                              ; $58a1: $00
	add  b                                           ; $58a2: $80
	ld   bc, $0780                                   ; $58a3: $01 $80 $07
	add  b                                           ; $58a6: $80
	rra                                              ; $58a7: $1f
	add  b                                           ; $58a8: $80
	inc  c                                           ; $58a9: $0c
	ld   [bc], a                                     ; $58aa: $02
	inc  b                                           ; $58ab: $04
	nop                                              ; $58ac: $00
	ld   [bc], a                                     ; $58ad: $02
	add  h                                           ; $58ae: $84
	nop                                              ; $58af: $00
	ld   bc, $0302                                   ; $58b0: $01 $02 $03
	add  b                                           ; $58b3: $80
	rlca                                             ; $58b4: $07
	ld   bc, $0c04                                   ; $58b5: $01 $04 $0c
	add  b                                           ; $58b8: $80
	rrca                                             ; $58b9: $0f
	db   $10                                         ; $58ba: $10
	rst  $28                                         ; $58bb: $ef
	ld   hl, sp-$28                                  ; $58bc: $f8 $d8
	cp   $98                                         ; $58be: $fe $98
	ret  c                                           ; $58c0: $d8

	inc  c                                           ; $58c1: $0c
	sbc  [hl]                                        ; $58c2: $9e
	inc  c                                           ; $58c3: $0c
	jr   c, jr_0a2_58de                              ; $58c4: $38 $18

	ld   a, b                                        ; $58c6: $78
	cp   b                                           ; $58c7: $b8
	ld   hl, sp-$05                                  ; $58c8: $f8 $fb
	rlca                                             ; $58ca: $07
	inc  b                                           ; $58cb: $04
	add  b                                           ; $58cc: $80
	inc  c                                           ; $58cd: $0c
	add  b                                           ; $58ce: $80
	ld   c, $80                                      ; $58cf: $0e $80
	ld   a, [bc]                                     ; $58d1: $0a
	add  b                                           ; $58d2: $80
	ld   bc, $0382                                   ; $58d3: $01 $82 $03
	add  b                                           ; $58d6: $80
	ld   bc, $0082                                   ; $58d7: $01 $82 $00
	add  b                                           ; $58da: $80
	inc  b                                           ; $58db: $04
	add  b                                           ; $58dc: $80
	rlca                                             ; $58dd: $07

jr_0a2_58de:
	add  d                                           ; $58de: $82
	inc  bc                                          ; $58df: $03
	add  b                                           ; $58e0: $80
	ld   bc, $0084                                   ; $58e1: $01 $84 $00
	add  b                                           ; $58e4: $80
	inc  e                                           ; $58e5: $1c
	add  b                                           ; $58e6: $80
	rrca                                             ; $58e7: $0f
	add  b                                           ; $58e8: $80
	add  a                                           ; $58e9: $87
	add  b                                           ; $58ea: $80
	jp   $e080                                       ; $58eb: $c3 $80 $e0


	add  b                                           ; $58ee: $80
	jr   nc, @-$7e                                   ; $58ef: $30 $80

	add  b                                           ; $58f1: $80
	add  b                                           ; $58f2: $80
	ldh  [$80], a                                    ; $58f3: $e0 $80
	ret  nz                                          ; $58f5: $c0

	add  b                                           ; $58f6: $80
	add  b                                           ; $58f7: $80
	sub  d                                           ; $58f8: $92
	nop                                              ; $58f9: $00
	add  b                                           ; $58fa: $80
	rlca                                             ; $58fb: $07
	add  b                                           ; $58fc: $80
	ccf                                              ; $58fd: $3f
	add  b                                           ; $58fe: $80
	rst  $38                                         ; $58ff: $ff
	add  b                                           ; $5900: $80
	rrca                                             ; $5901: $0f
	add  b                                           ; $5902: $80
	inc  bc                                          ; $5903: $03
	add  b                                           ; $5904: $80
	add  b                                           ; $5905: $80
	add  b                                           ; $5906: $80
	ldh  a, [$80]                                    ; $5907: $f0 $80
	ret  nz                                          ; $5909: $c0

	adc  d                                           ; $590a: $8a
	nop                                              ; $590b: $00
	add  b                                           ; $590c: $80
	jr   nz, jr_0a2_5891                             ; $590d: $20 $82

	ld   hl, sp-$80                                  ; $590f: $f8 $80
	db   $fc                                         ; $5911: $fc
	add  b                                           ; $5912: $80
	ld   hl, sp-$7e                                  ; $5913: $f8 $82
	ldh  a, [$96]                                    ; $5915: $f0 $96
	nop                                              ; $5917: $00
	add  b                                           ; $5918: $80
	ldh  a, [$80]                                    ; $5919: $f0 $80
	db   $fc                                         ; $591b: $fc
	add  b                                           ; $591c: $80
	ld   a, $80                                      ; $591d: $3e $80
	ld   c, $80                                      ; $591f: $0e $80
	ld   [bc], a                                     ; $5921: $02
	adc  d                                           ; $5922: $8a
	nop                                              ; $5923: $00
	add  b                                           ; $5924: $80
	ld   [bc], a                                     ; $5925: $02
	add  b                                           ; $5926: $80
	ld   b, $80                                      ; $5927: $06 $80
	ld   c, $80                                      ; $5929: $0e $80
	rrca                                             ; $592b: $0f
	add  b                                           ; $592c: $80
	rlca                                             ; $592d: $07
	sub  d                                           ; $592e: $92
	nop                                              ; $592f: $00
	add  b                                           ; $5930: $80
	inc  c                                           ; $5931: $0c
	add  b                                           ; $5932: $80
	rra                                              ; $5933: $1f
	add  b                                           ; $5934: $80
	rrca                                             ; $5935: $0f
	add  b                                           ; $5936: $80
	ld   [bc], a                                     ; $5937: $02
	add  b                                           ; $5938: $80
	ld   bc, $0098                                   ; $5939: $01 $98 $00
	add  b                                           ; $593c: $80
	ld   sp, $6580                                   ; $593d: $31 $80 $65
	add  b                                           ; $5940: $80
	push bc                                          ; $5941: $c5
	add  b                                           ; $5942: $80
	call z, $1e80                                    ; $5943: $cc $80 $1e
	sub  h                                           ; $5946: $94
	nop                                              ; $5947: $00
	add  b                                           ; $5948: $80
	ret  nz                                          ; $5949: $c0

	add  h                                           ; $594a: $84
	ldh  a, [$80]                                    ; $594b: $f0 $80
	ld   [hl], b                                     ; $594d: $70
	rst  $38                                         ; $594e: $ff
	nop                                              ; $594f: $00
	rst  $38                                         ; $5950: $ff
	nop                                              ; $5951: $00
	rst  $38                                         ; $5952: $ff
	nop                                              ; $5953: $00
	rst  $38                                         ; $5954: $ff
	nop                                              ; $5955: $00
	rst  $38                                         ; $5956: $ff
	nop                                              ; $5957: $00
	rst  $38                                         ; $5958: $ff
	nop                                              ; $5959: $00
	rst  $38                                         ; $595a: $ff
	nop                                              ; $595b: $00
	rst  $38                                         ; $595c: $ff
	nop                                              ; $595d: $00
	rst  $38                                         ; $595e: $ff
	nop                                              ; $595f: $00
	push bc                                          ; $5960: $c5
	nop                                              ; $5961: $00
	halt                                             ; $5962: $76
	nop                                              ; $5963: $00
	sbc  c                                           ; $5964: $99
	nop                                              ; $5965: $00
	add  b                                           ; $5966: $80
	ld   [$6080], sp                                 ; $5967: $08 $80 $60
	sbc  d                                           ; $596a: $9a
	nop                                              ; $596b: $00
	add  b                                           ; $596c: $80
	add  b                                           ; $596d: $80
	add  b                                           ; $596e: $80
	jr   nc, @-$7b                                   ; $596f: $30 $83

	nop                                              ; $5971: $00
	ld   bc, $0001                                   ; $5972: $01 $01 $00
	add  b                                           ; $5975: $80
	ld   bc, $0212                                   ; $5976: $01 $12 $02
	ld   bc, $0100                                   ; $5979: $01 $00 $01
	inc  b                                           ; $597c: $04
	nop                                              ; $597d: $00
	ld   a, [bc]                                     ; $597e: $0a
	ld   b, $12                                      ; $597f: $06 $12
	ld   c, $1c                                      ; $5981: $0e $1c
	dec  b                                           ; $5983: $05
	add  hl, bc                                      ; $5984: $09
	nop                                              ; $5985: $00
	inc  b                                           ; $5986: $04
	nop                                              ; $5987: $00
	inc  b                                           ; $5988: $04
	ld   bc, $8009                                   ; $5989: $01 $09 $80
	dec  b                                           ; $598c: $05
	inc  bc                                          ; $598d: $03
	ld   b, $0e                                      ; $598e: $06 $0e
	ld   [bc], a                                     ; $5990: $02
	dec  b                                           ; $5991: $05
	add  c                                           ; $5992: $81
	nop                                              ; $5993: $00
	ld   de, $00c1                                   ; $5994: $11 $c1 $00
	db   $e3                                         ; $5997: $e3
	pop  bc                                          ; $5998: $c1
	halt                                             ; $5999: $76
	db   $e3                                         ; $599a: $e3
	dec  hl                                          ; $599b: $2b
	and  d                                           ; $599c: $a2
	add  b                                           ; $599d: $80
	ret                                              ; $599e: $c9


	ld   c, c                                        ; $599f: $49
	ld   h, e                                        ; $59a0: $63
	ld   [hl+], a                                    ; $59a1: $22
	xor  d                                           ; $59a2: $aa
	or   [hl]                                        ; $59a3: $b6
	nop                                              ; $59a4: $00
	ld   h, e                                        ; $59a5: $63
	add  b                                           ; $59a6: $80
	add  b                                           ; $59a7: $80
	or   [hl]                                        ; $59a8: $b6
	nop                                              ; $59a9: $00
	add  b                                           ; $59aa: $80
	add  c                                           ; $59ab: $81
	ld   b, c                                        ; $59ac: $41
	inc  b                                           ; $59ad: $04
	ld   h, e                                        ; $59ae: $63
	and  d                                           ; $59af: $a2
	cp   [hl]                                        ; $59b0: $be
	add  b                                           ; $59b1: $80
	ld   a, a                                        ; $59b2: $7f

jr_0a2_59b3:
	add  c                                           ; $59b3: $81
	nop                                              ; $59b4: $00
	ld   bc, $00c0                                   ; $59b5: $01 $c0 $00
	add  b                                           ; $59b8: $80
	ret  nz                                          ; $59b9: $c0

	nop                                              ; $59ba: $00
	ldh  [$81], a                                    ; $59bb: $e0 $81
	ret  nz                                          ; $59bd: $c0

	ld   c, $b0                                      ; $59be: $0e $b0
	and  b                                           ; $59c0: $a0
	jr   jr_0a2_59f3                                 ; $59c1: $18 $30

	inc  c                                           ; $59c3: $0c
	cp   b                                           ; $59c4: $b8
	add  h                                           ; $59c5: $84
	ld   d, b                                        ; $59c6: $50
	ld   c, b                                        ; $59c7: $48
	add  b                                           ; $59c8: $80
	sub  b                                           ; $59c9: $90
	add  b                                           ; $59ca: $80
	sub  b                                           ; $59cb: $90
	ld   b, b                                        ; $59cc: $40
	ld   c, b                                        ; $59cd: $48
	add  b                                           ; $59ce: $80
	ld   d, b                                        ; $59cf: $50
	rlca                                             ; $59d0: $07
	or   b                                           ; $59d1: $b0
	cp   b                                           ; $59d2: $b8
	and  b                                           ; $59d3: $a0
	ld   d, d                                        ; $59d4: $52
	ld   bc, $0107                                   ; $59d5: $01 $07 $01
	dec  c                                           ; $59d8: $0d
	add  b                                           ; $59d9: $80
	ld   bc, $0480                                   ; $59da: $01 $80 $04
	dec  b                                           ; $59dd: $05
	rlca                                             ; $59de: $07
	dec  bc                                          ; $59df: $0b
	inc  bc                                          ; $59e0: $03
	inc  b                                           ; $59e1: $04
	nop                                              ; $59e2: $00
	ld   [bc], a                                     ; $59e3: $02
	add  c                                           ; $59e4: $81
	nop                                              ; $59e5: $00
	ld   b, $02                                      ; $59e6: $06 $02
	nop                                              ; $59e8: $00
	ld   b, $02                                      ; $59e9: $06 $02
	ld   bc, $0d00                                   ; $59eb: $01 $00 $0d
	add  b                                           ; $59ee: $80
	inc  b                                           ; $59ef: $04
	dec  b                                           ; $59f0: $05
	dec  b                                           ; $59f1: $05
	dec  bc                                          ; $59f2: $0b

jr_0a2_59f3:
	ld   [$0819], sp                                 ; $59f3: $08 $19 $08
	inc  e                                           ; $59f6: $1c
	adc  l                                           ; $59f7: $8d
	nop                                              ; $59f8: $00
	inc  d                                           ; $59f9: $14
	or   [hl]                                        ; $59fa: $b6
	nop                                              ; $59fb: $00
	rst  $30                                         ; $59fc: $f7
	inc  e                                           ; $59fd: $1c
	sbc  h                                           ; $59fe: $9c
	inc  d                                           ; $59ff: $14
	ld   d, l                                        ; $5a00: $55

jr_0a2_5a01:
	nop                                              ; $5a01: $00
	pop  bc                                          ; $5a02: $c1
	nop                                              ; $5a03: $00
	ld   [hl+], a                                    ; $5a04: $22
	nop                                              ; $5a05: $00
	inc  e                                           ; $5a06: $1c
	nop                                              ; $5a07: $00
	ld   a, $00                                      ; $5a08: $3e $00
	pop  hl                                          ; $5a0a: $e1
	ld   b, b                                        ; $5a0b: $40
	ldh  a, [$c0]                                    ; $5a0c: $f0 $c0
	ld   e, b                                        ; $5a0e: $58
	add  b                                           ; $5a0f: $80
	ld   b, b                                        ; $5a10: $40
	dec  b                                           ; $5a11: $05
	db   $10                                         ; $5a12: $10
	sub  b                                           ; $5a13: $90
	ldh  a, [$e8]                                    ; $5a14: $f0 $e8
	ldh  [rSVBK], a                                  ; $5a16: $e0 $70
	add  e                                           ; $5a18: $83
	ld   b, b                                        ; $5a19: $40

jr_0a2_5a1a:
	ld   b, $60                                      ; $5a1a: $06 $60

jr_0a2_5a1c:
	ld   b, b                                        ; $5a1c: $40
	ld   d, b                                        ; $5a1d: $50
	ld   b, b                                        ; $5a1e: $40
	ldh  [rP1], a                                    ; $5a1f: $e0 $00
	ld   hl, sp-$80                                  ; $5a21: $f8 $80
	db   $10                                         ; $5a23: $10
	add  hl, bc                                      ; $5a24: $09
	ret  nc                                          ; $5a25: $d0

jr_0a2_5a26:
	add  sp, $08                                     ; $5a26: $e8 $08
	call z, $0308                                    ; $5a28: $cc $08 $03
	nop                                              ; $5a2b: $00
	rla                                              ; $5a2c: $17
	db   $10                                         ; $5a2d: $10
	jr   nc, jr_0a2_59b3                             ; $5a2e: $30 $83

	db   $10                                         ; $5a30: $10
	jr   jr_0a2_5a5f                                 ; $5a31: $18 $2c

	jr   nz, jr_0a2_5a95                             ; $5a33: $20 $60

	jr   nz, jr_0a2_5a5a                             ; $5a35: $20 $23

	jr   nz, jr_0a2_5a01                             ; $5a37: $20 $c8

	inc  bc                                          ; $5a39: $03
	ld   a, a                                        ; $5a3a: $7f
	nop                                              ; $5a3b: $00
	db   $fd                                         ; $5a3c: $fd
	nop                                              ; $5a3d: $00
	dec  a                                           ; $5a3e: $3d
	nop                                              ; $5a3f: $00
	inc  bc                                          ; $5a40: $03
	nop                                              ; $5a41: $00
	ld   bc, $0300                                   ; $5a42: $01 $00 $03
	nop                                              ; $5a45: $00
	ld   bc, $f400                                   ; $5a46: $01 $00 $f4
	nop                                              ; $5a49: $00
	db   $e3                                         ; $5a4a: $e3
	add  l                                           ; $5a4b: $85
	nop                                              ; $5a4c: $00
	inc  b                                           ; $5a4d: $04
	ld   [hl+], a                                    ; $5a4e: $22
	nop                                              ; $5a4f: $00
	inc  b                                           ; $5a50: $04
	db   $10                                         ; $5a51: $10
	pop  de                                          ; $5a52: $d1
	add  b                                           ; $5a53: $80
	db   $10                                         ; $5a54: $10
	inc  de                                          ; $5a55: $13
	di                                               ; $5a56: $f3
	db   $e3                                         ; $5a57: $e3
	nop                                              ; $5a58: $00
	rst  $38                                         ; $5a59: $ff

jr_0a2_5a5a:
	nop                                              ; $5a5a: $00
	rst  $38                                         ; $5a5b: $ff
	nop                                              ; $5a5c: $00
	ld   e, l                                        ; $5a5d: $5d
	nop                                              ; $5a5e: $00

jr_0a2_5a5f:
	xor  d                                           ; $5a5f: $aa
	nop                                              ; $5a60: $00
	ld   d, l                                        ; $5a61: $55
	nop                                              ; $5a62: $00
	pop  bc                                          ; $5a63: $c1
	nop                                              ; $5a64: $00
	ld   a, h                                        ; $5a65: $7c
	nop                                              ; $5a66: $00
	db   $f4                                         ; $5a67: $f4
	inc  b                                           ; $5a68: $04
	ld   b, $83                                      ; $5a69: $06 $83
	inc  b                                           ; $5a6b: $04
	rla                                              ; $5a6c: $17
	ld   [de], a                                     ; $5a6d: $12
	ld   [bc], a                                     ; $5a6e: $02
	inc  bc                                          ; $5a6f: $03
	ld   a, [bc]                                     ; $5a70: $0a
	ld   [$090a], a                                  ; $5a71: $ea $0a $09
	ldh  [rIE], a                                    ; $5a74: $e0 $ff
	nop                                              ; $5a76: $00
	rst  JumpTable                                         ; $5a77: $df
	nop                                              ; $5a78: $00
	sbc  $00                                         ; $5a79: $de $00
	ld   h, b                                        ; $5a7b: $60
	nop                                              ; $5a7c: $00
	ret  nz                                          ; $5a7d: $c0

	nop                                              ; $5a7e: $00
	ld   h, b                                        ; $5a7f: $60
	nop                                              ; $5a80: $00
	ret  nz                                          ; $5a81: $c0

	nop                                              ; $5a82: $00
	ldh  [rP1], a                                    ; $5a83: $e0 $00
	add  b                                           ; $5a85: $80
	ld   [bc], a                                     ; $5a86: $02
	add  b                                           ; $5a87: $80
	ld   b, $80                                      ; $5a88: $06 $80
	inc  bc                                          ; $5a8a: $03
	adc  h                                           ; $5a8b: $8c
	nop                                              ; $5a8c: $00
	add  b                                           ; $5a8d: $80
	ld   bc, $0082                                   ; $5a8e: $01 $82 $00
	add  b                                           ; $5a91: $80
	ld   [bc], a                                     ; $5a92: $02
	add  b                                           ; $5a93: $80
	inc  bc                                          ; $5a94: $03

jr_0a2_5a95:
	add  b                                           ; $5a95: $80
	nop                                              ; $5a96: $00
	add  b                                           ; $5a97: $80
	jr   nz, jr_0a2_5a1a                             ; $5a98: $20 $80

	jr   nc, jr_0a2_5a1c                             ; $5a9a: $30 $80

	ld   h, b                                        ; $5a9c: $60
	adc  h                                           ; $5a9d: $8c
	nop                                              ; $5a9e: $00
	add  b                                           ; $5a9f: $80
	ldh  [$82], a                                    ; $5aa0: $e0 $82
	nop                                              ; $5aa2: $00
	add  b                                           ; $5aa3: $80
	jr   nz, jr_0a2_5a26                             ; $5aa4: $20 $80

	ldh  [$80], a                                    ; $5aa6: $e0 $80
	nop                                              ; $5aa8: $00
	nop                                              ; $5aa9: $00
	rlca                                             ; $5aaa: $07
	add  l                                           ; $5aab: $85
	ld   [bc], a                                     ; $5aac: $02
	nop                                              ; $5aad: $00
	ld   c, $81                                      ; $5aae: $0e $81
	add  hl, bc                                      ; $5ab0: $09
	ld   bc, $080a                                   ; $5ab1: $01 $0a $08
	add  b                                           ; $5ab4: $80
	ld   b, b                                        ; $5ab5: $40
	add  b                                           ; $5ab6: $80
	inc  a                                           ; $5ab7: $3c
	add  b                                           ; $5ab8: $80
	ld   bc, $0088                                   ; $5ab9: $01 $88 $00
	add  b                                           ; $5abc: $80
	ld   [$eb00], sp                                 ; $5abd: $08 $00 $eb
	add  l                                           ; $5ac0: $85
	add  hl, bc                                      ; $5ac1: $09
	ld   bc, $082b                                   ; $5ac2: $01 $2b $08
	add  b                                           ; $5ac5: $80
	inc  c                                           ; $5ac6: $0c
	nop                                              ; $5ac7: $00
	call $0c81                                       ; $5ac8: $cd $81 $0c
	add  b                                           ; $5acb: $80
	inc  e                                           ; $5acc: $1c
	add  b                                           ; $5acd: $80
	db   $e3                                         ; $5ace: $e3
	add  b                                           ; $5acf: $80
	inc  e                                           ; $5ad0: $1c
	add  b                                           ; $5ad1: $80
	ld   b, c                                        ; $5ad2: $41
	add  b                                           ; $5ad3: $80
	pop  bc                                          ; $5ad4: $c1
	add  h                                           ; $5ad5: $84
	nop                                              ; $5ad6: $00
	nop                                              ; $5ad7: $00
	ldh  a, [$85]                                    ; $5ad8: $f0 $85
	nop                                              ; $5ada: $00
	nop                                              ; $5adb: $00
	db   $10                                         ; $5adc: $10
	add  c                                           ; $5add: $81
	add  b                                           ; $5ade: $80
	ld   bc, $0060                                   ; $5adf: $01 $60 $00
	add  b                                           ; $5ae2: $80
	ld   bc, $1e80                                   ; $5ae3: $01 $80 $1e
	add  b                                           ; $5ae6: $80
	ret  nz                                          ; $5ae7: $c0

	add  d                                           ; $5ae8: $82
	nop                                              ; $5ae9: $00
	add  b                                           ; $5aea: $80
	add  b                                           ; $5aeb: $80
	sub  b                                           ; $5aec: $90
	nop                                              ; $5aed: $00
	add  b                                           ; $5aee: $80
	inc  h                                           ; $5aef: $24
	db   $10                                         ; $5af0: $10
	jp   c, $4a7e                                    ; $5af1: $da $7e $4a

	inc  [hl]                                        ; $5af4: $34
	cp   $18                                         ; $5af5: $fe $18
	ld   [bc], a                                     ; $5af7: $02
	ld   h, e                                        ; $5af8: $63
	ld   h, c                                        ; $5af9: $61
	ld   a, d                                        ; $5afa: $7a
	ld   a, [hl-]                                    ; $5afb: $3a
	jr   c, jr_0a2_5b78                              ; $5afc: $38 $7a

	ld   a, e                                        ; $5afe: $7b
	ld   a, c                                        ; $5aff: $79
	ld   b, d                                        ; $5b00: $42
	ld   a, [hl]                                     ; $5b01: $7e
	sub  c                                           ; $5b02: $91
	nop                                              ; $5b03: $00
	ld   a, [bc]                                     ; $5b04: $0a
	ld   [hl], $00                                   ; $5b05: $36 $00
	ld   [hl], $00                                   ; $5b07: $36 $00
	ld   [hl], $00                                   ; $5b09: $36 $00
	ld   [hl], $00                                   ; $5b0b: $36 $00
	ld   [$0800], sp                                 ; $5b0d: $08 $00 $08
	sub  e                                           ; $5b10: $93
	nop                                              ; $5b11: $00
	ld   b, $36                                      ; $5b12: $06 $36
	nop                                              ; $5b14: $00
	ld   [hl], $00                                   ; $5b15: $36 $00
	ld   [hl], $00                                   ; $5b17: $36 $00
	ld   [hl], $ff                                   ; $5b19: $36 $ff
	nop                                              ; $5b1b: $00
	rst  $38                                         ; $5b1c: $ff
	nop                                              ; $5b1d: $00
	rst  $38                                         ; $5b1e: $ff
	nop                                              ; $5b1f: $00
	rst  $38                                         ; $5b20: $ff
	nop                                              ; $5b21: $00
	rst  $38                                         ; $5b22: $ff
	nop                                              ; $5b23: $00
	rst  $38                                         ; $5b24: $ff
	nop                                              ; $5b25: $00
	rst  $38                                         ; $5b26: $ff
	nop                                              ; $5b27: $00
	rst  $38                                         ; $5b28: $ff
	nop                                              ; $5b29: $00
	rst  $38                                         ; $5b2a: $ff
	nop                                              ; $5b2b: $00
	rst  $38                                         ; $5b2c: $ff
	nop                                              ; $5b2d: $00
	rst  $38                                         ; $5b2e: $ff
	nop                                              ; $5b2f: $00
	sbc  b                                           ; $5b30: $98
	nop                                              ; $5b31: $00
	adc  e                                           ; $5b32: $8b
	nop                                              ; $5b33: $00
	ld   b, $3d                                      ; $5b34: $06 $3d
	nop                                              ; $5b36: $00
	ld   [hl+], a                                    ; $5b37: $22
	nop                                              ; $5b38: $00
	jr   nz, jr_0a2_5b3b                             ; $5b39: $20 $00

jr_0a2_5b3b:
	ld   b, b                                        ; $5b3b: $40
	add  b                                           ; $5b3c: $80
	jr   jr_0a2_5b40                                 ; $5b3d: $18 $01

	nop                                              ; $5b3f: $00

jr_0a2_5b40:
	add  h                                           ; $5b40: $84
	add  c                                           ; $5b41: $81
	inc  b                                           ; $5b42: $04
	add  b                                           ; $5b43: $80
	inc  h                                           ; $5b44: $24
	add  b                                           ; $5b45: $80
	inc  b                                           ; $5b46: $04
	ld   bc, $1686                                   ; $5b47: $01 $86 $16
	add  b                                           ; $5b4a: $80
	ld   [hl], $06                                   ; $5b4b: $36 $06
	ld   d, $06                                      ; $5b4d: $16 $06
	ei                                               ; $5b4f: $fb
	inc  bc                                          ; $5b50: $03
	add  l                                           ; $5b51: $85
	ld   bc, $8102                                   ; $5b52: $01 $02 $81
	nop                                              ; $5b55: $00
	inc  b                                           ; $5b56: $04
	pop  bc                                          ; $5b57: $c1
	nop                                              ; $5b58: $00
	jr   nc, jr_0a2_5b5b                             ; $5b59: $30 $00

jr_0a2_5b5b:
	ld   [$0080], sp                                 ; $5b5b: $08 $80 $00
	ld   bc, $1410                                   ; $5b5e: $01 $10 $14
	add  b                                           ; $5b61: $80
	ldh  [rP1], a                                    ; $5b62: $e0 $00
	nop                                              ; $5b64: $00
	add  b                                           ; $5b65: $80
	add  b                                           ; $5b66: $80
	add  b                                           ; $5b67: $80
	ret  nz                                          ; $5b68: $c0

	add  b                                           ; $5b69: $80
	nop                                              ; $5b6a: $00
	add  hl, bc                                      ; $5b6b: $09
	ld   d, $54                                      ; $5b6c: $16 $54
	ld   a, h                                        ; $5b6e: $7c
	db   $fc                                         ; $5b6f: $fc
	ldh  a, [c]                                      ; $5b70: $f2
	ld   [hl], b                                     ; $5b71: $70
	xor  h                                           ; $5b72: $ac
	ldh  [$d0], a                                    ; $5b73: $e0 $d0
	ret  nz                                          ; $5b75: $c0

	add  b                                           ; $5b76: $80
	nop                                              ; $5b77: $00

jr_0a2_5b78:
	ld   a, [bc]                                     ; $5b78: $0a
	db   $10                                         ; $5b79: $10
	add  b                                           ; $5b7a: $80
	ld   [hl], b                                     ; $5b7b: $70
	nop                                              ; $5b7c: $00
	dec  a                                           ; $5b7d: $3d
	nop                                              ; $5b7e: $00
	ld   [hl+], a                                    ; $5b7f: $22
	nop                                              ; $5b80: $00
	jr   nz, jr_0a2_5b83                             ; $5b81: $20 $00

jr_0a2_5b83:
	ld   b, b                                        ; $5b83: $40
	add  b                                           ; $5b84: $80
	nop                                              ; $5b85: $00
	ld   [bc], a                                     ; $5b86: $02
	ld   sp, $00b1                                   ; $5b87: $31 $b1 $00
	add  d                                           ; $5b8a: $82
	inc  b                                           ; $5b8b: $04
	add  b                                           ; $5b8c: $80
	inc  h                                           ; $5b8d: $24
	add  b                                           ; $5b8e: $80
	inc  b                                           ; $5b8f: $04
	nop                                              ; $5b90: $00
	add  [hl]                                        ; $5b91: $86
	add  b                                           ; $5b92: $80
	ld   d, $0d                                      ; $5b93: $16 $0d
	ld   b, $fa                                      ; $5b95: $06 $fa
	ld   [bc], a                                     ; $5b97: $02
	add  l                                           ; $5b98: $85
	ld   bc, $0002                                   ; $5b99: $01 $02 $00
	ld   bc, $c000                                   ; $5b9c: $01 $00 $c0
	nop                                              ; $5b9f: $00
	jr   nc, jr_0a2_5ba2                             ; $5ba0: $30 $00

jr_0a2_5ba2:
	ld   [$0080], sp                                 ; $5ba2: $08 $80 $00
	ld   bc, $2420                                   ; $5ba5: $01 $20 $24
	add  b                                           ; $5ba8: $80
	ret  nz                                          ; $5ba9: $c0

	add  c                                           ; $5baa: $81
	nop                                              ; $5bab: $00
	add  b                                           ; $5bac: $80
	add  b                                           ; $5bad: $80
	add  b                                           ; $5bae: $80
	ret  nz                                          ; $5baf: $c0

	add  hl, bc                                      ; $5bb0: $09
	ld   d, $14                                      ; $5bb1: $16 $14
	inc  e                                           ; $5bb3: $1c
	call c, Call_0a2_70f2                            ; $5bb4: $dc $f2 $70
	inc  l                                           ; $5bb7: $2c
	ld   h, b                                        ; $5bb8: $60
	ret  nc                                          ; $5bb9: $d0

	ret  nz                                          ; $5bba: $c0

	add  b                                           ; $5bbb: $80
	nop                                              ; $5bbc: $00
	dec  c                                           ; $5bbd: $0d
	jp   hl                                          ; $5bbe: $e9


	nop                                              ; $5bbf: $00
	ld   [bc], a                                     ; $5bc0: $02
	nop                                              ; $5bc1: $00
	inc  [hl]                                        ; $5bc2: $34
	inc  bc                                          ; $5bc3: $03
	dec  hl                                          ; $5bc4: $2b
	dec  bc                                          ; $5bc5: $0b
	inc  bc                                          ; $5bc6: $03
	nop                                              ; $5bc7: $00
	jr   jr_0a2_5bcc                                 ; $5bc8: $18 $02

	ldh  [c], a                                      ; $5bca: $e2
	ld   [bc], a                                     ; $5bcb: $02

jr_0a2_5bcc:
	add  b                                           ; $5bcc: $80
	ld   b, d                                        ; $5bcd: $42
	inc  c                                           ; $5bce: $0c
	ld   a, [de]                                     ; $5bcf: $1a
	nop                                              ; $5bd0: $00
	ldh  [rP1], a                                    ; $5bd1: $e0 $00
	jr   nz, jr_0a2_5bd5                             ; $5bd3: $20 $00

jr_0a2_5bd5:
	ld   bc, $0200                                   ; $5bd5: $01 $00 $02
	nop                                              ; $5bd8: $00
	ld   b, b                                        ; $5bd9: $40
	nop                                              ; $5bda: $00
	add  b                                           ; $5bdb: $80
	add  b                                           ; $5bdc: $80
	ld   a, b                                        ; $5bdd: $78
	ld   bc, $0c00                                   ; $5bde: $01 $00 $0c
	add  b                                           ; $5be1: $80
	ld   h, b                                        ; $5be2: $60
	add  d                                           ; $5be3: $82
	ldh  [rSC], a                                    ; $5be4: $e0 $02
	ret  nz                                          ; $5be6: $c0

	ldh  [rAUD4LEN], a                               ; $5be7: $e0 $20
	add  h                                           ; $5be9: $84
	ldh  [$84], a                                    ; $5bea: $e0 $84
	nop                                              ; $5bec: $00
	nop                                              ; $5bed: $00
	ld   [$0081], sp                                 ; $5bee: $08 $81 $00
	ld   [bc], a                                     ; $5bf1: $02
	add  b                                           ; $5bf2: $80
	nop                                              ; $5bf3: $00
	add  h                                           ; $5bf4: $84
	add  b                                           ; $5bf5: $80
	ld   a, b                                        ; $5bf6: $78
	stop                                             ; $5bf7: $10 $00
	db   $fd                                         ; $5bf9: $fd
	nop                                              ; $5bfa: $00
	ld   [$0200], sp                                 ; $5bfb: $08 $00 $02
	nop                                              ; $5bfe: $00
	inc  [hl]                                        ; $5bff: $34
	inc  bc                                          ; $5c00: $03
	dec  hl                                          ; $5c01: $2b
	dec  bc                                          ; $5c02: $0b
	inc  bc                                          ; $5c03: $03
	nop                                              ; $5c04: $00
	jr   jr_0a2_5c09                                 ; $5c05: $18 $02

	ldh  [c], a                                      ; $5c07: $e2
	ld   [bc], a                                     ; $5c08: $02

jr_0a2_5c09:
	add  b                                           ; $5c09: $80
	ld   b, d                                        ; $5c0a: $42
	ld   b, $1a                                      ; $5c0b: $06 $1a
	nop                                              ; $5c0d: $00
	ret  nz                                          ; $5c0e: $c0

	nop                                              ; $5c0f: $00
	ld   bc, $4200                                   ; $5c10: $01 $00 $42
	add  c                                           ; $5c13: $81
	nop                                              ; $5c14: $00
	nop                                              ; $5c15: $00
	add  b                                           ; $5c16: $80

jr_0a2_5c17:
	add  b                                           ; $5c17: $80
	ld   a, b                                        ; $5c18: $78
	ld   bc, $0c00                                   ; $5c19: $01 $00 $0c
	add  b                                           ; $5c1c: $80
	add  b                                           ; $5c1d: $80
	add  b                                           ; $5c1e: $80
	ld   h, b                                        ; $5c1f: $60
	add  d                                           ; $5c20: $82
	ldh  [rSC], a                                    ; $5c21: $e0 $02
	ret  nz                                          ; $5c23: $c0

	ldh  [rAUD4LEN], a                               ; $5c24: $e0 $20
	add  h                                           ; $5c26: $84
	ldh  [$84], a                                    ; $5c27: $e0 $84
	nop                                              ; $5c29: $00
	inc  b                                           ; $5c2a: $04
	ld   [$8000], sp                                 ; $5c2b: $08 $00 $80
	nop                                              ; $5c2e: $00
	add  h                                           ; $5c2f: $84
	add  b                                           ; $5c30: $80
	ld   a, b                                        ; $5c31: $78
	ld   c, $00                                      ; $5c32: $0e $00
	push af                                          ; $5c34: $f5
	nop                                              ; $5c35: $00
	ld   [bc], a                                     ; $5c36: $02
	nop                                              ; $5c37: $00
	inc  [hl]                                        ; $5c38: $34
	inc  bc                                          ; $5c39: $03
	dec  hl                                          ; $5c3a: $2b
	dec  bc                                          ; $5c3b: $0b
	inc  bc                                          ; $5c3c: $03
	nop                                              ; $5c3d: $00
	jr   jr_0a2_5c42                                 ; $5c3e: $18 $02

	ldh  [c], a                                      ; $5c40: $e2
	ld   [bc], a                                     ; $5c41: $02

jr_0a2_5c42:
	add  b                                           ; $5c42: $80
	ld   b, d                                        ; $5c43: $42
	ld   [bc], a                                     ; $5c44: $02
	ld   a, [de]                                     ; $5c45: $1a
	nop                                              ; $5c46: $00
	ldh  [$81], a                                    ; $5c47: $e0 $81
	nop                                              ; $5c49: $00
	nop                                              ; $5c4a: $00
	ld   bc, $0081                                   ; $5c4b: $01 $81 $00
	ld   [bc], a                                     ; $5c4e: $02
	jr   nz, jr_0a2_5c51                             ; $5c4f: $20 $00

jr_0a2_5c51:
	ld   b, b                                        ; $5c51: $40
	add  b                                           ; $5c52: $80
	inc  a                                           ; $5c53: $3c
	ld   bc, $8e00                                   ; $5c54: $01 $00 $8e
	add  b                                           ; $5c57: $80
	ld   h, b                                        ; $5c58: $60
	add  d                                           ; $5c59: $82
	ldh  [rSC], a                                    ; $5c5a: $e0 $02
	ret  nz                                          ; $5c5c: $c0

	ldh  [rAUD4LEN], a                               ; $5c5d: $e0 $20
	add  h                                           ; $5c5f: $84
	ldh  [$82], a                                    ; $5c60: $e0 $82
	nop                                              ; $5c62: $00
	nop                                              ; $5c63: $00
	ld   [$0081], sp                                 ; $5c64: $08 $81 $00
	inc  b                                           ; $5c67: $04
	add  h                                           ; $5c68: $84
	nop                                              ; $5c69: $00
	ld   b, d                                        ; $5c6a: $42
	nop                                              ; $5c6b: $00
	ld   b, b                                        ; $5c6c: $40
	add  b                                           ; $5c6d: $80
	inc  a                                           ; $5c6e: $3c
	ld   c, $00                                      ; $5c6f: $0e $00
	ld   a, d                                        ; $5c71: $7a
	nop                                              ; $5c72: $00
	add  c                                           ; $5c73: $81
	nop                                              ; $5c74: $00
	sbc  d                                           ; $5c75: $9a
	ld   bc, $0515                                   ; $5c76: $01 $15 $05
	ld   bc, $0c00                                   ; $5c79: $01 $00 $0c
	ld   bc, $0171                                   ; $5c7c: $01 $71 $01
	add  b                                           ; $5c7f: $80
	ld   hl, $8d02                                   ; $5c80: $21 $02 $8d
	nop                                              ; $5c83: $00
	ldh  [$81], a                                    ; $5c84: $e0 $81
	nop                                              ; $5c86: $00
	nop                                              ; $5c87: $00
	ld   hl, $0081                                   ; $5c88: $21 $81 $00
	ld   [bc], a                                     ; $5c8b: $02
	ld   b, d                                        ; $5c8c: $42
	nop                                              ; $5c8d: $00
	add  b                                           ; $5c8e: $80
	add  b                                           ; $5c8f: $80
	ld   a, b                                        ; $5c90: $78
	ld   bc, $0400                                   ; $5c91: $01 $00 $04
	add  b                                           ; $5c94: $80
	jr   nc, jr_0a2_5c17                             ; $5c95: $30 $80

	ld   [hl], b                                     ; $5c97: $70
	add  b                                           ; $5c98: $80
	ldh  a, [rSC]                                    ; $5c99: $f0 $02
	ldh  [$f0], a                                    ; $5c9b: $e0 $f0
	db   $10                                         ; $5c9d: $10
	add  h                                           ; $5c9e: $84
	ld   [hl], b                                     ; $5c9f: $70
	add  h                                           ; $5ca0: $84
	nop                                              ; $5ca1: $00
	nop                                              ; $5ca2: $00
	add  b                                           ; $5ca3: $80
	add  e                                           ; $5ca4: $83
	nop                                              ; $5ca5: $00
	nop                                              ; $5ca6: $00
	add  h                                           ; $5ca7: $84
	add  b                                           ; $5ca8: $80
	ld   a, b                                        ; $5ca9: $78
	ld   bc, $fc00                                   ; $5caa: $01 $00 $fc
	add  l                                           ; $5cad: $85
	nop                                              ; $5cae: $00
	ld   [bc], a                                     ; $5caf: $02
	ld   bc, $0300                                   ; $5cb0: $01 $00 $03
	add  e                                           ; $5cb3: $83
	nop                                              ; $5cb4: $00
	ld   [bc], a                                     ; $5cb5: $02
	inc  bc                                          ; $5cb6: $03
	nop                                              ; $5cb7: $00
	inc  bc                                          ; $5cb8: $03
	add  c                                           ; $5cb9: $81
	nop                                              ; $5cba: $00
	nop                                              ; $5cbb: $00
	ld   b, $83                                      ; $5cbc: $06 $83
	nop                                              ; $5cbe: $00
	inc  b                                           ; $5cbf: $04
	ld   b, $00                                      ; $5cc0: $06 $00
	inc  bc                                          ; $5cc2: $03
	nop                                              ; $5cc3: $00
	ld   bc, $008a                                   ; $5cc4: $01 $8a $00
	add  h                                           ; $5cc7: $84
	ld   bc, $0000                                   ; $5cc8: $01 $00 $00
	add  d                                           ; $5ccb: $82
	ld   bc, $0384                                   ; $5ccc: $01 $84 $03
	add  b                                           ; $5ccf: $80
	ld   bc, $0086                                   ; $5cd0: $01 $86 $00
	inc  b                                           ; $5cd3: $04

jr_0a2_5cd4:
	jr   nc, @+$7a                                   ; $5cd4: $30 $78

	jr   nc, jr_0a2_5cd4                             ; $5cd6: $30 $fc

	ld   a, b                                        ; $5cd8: $78
	add  c                                           ; $5cd9: $81
	cp   $80                                         ; $5cda: $fe $80

Jump_0a2_5cdc:
	or   $03                                         ; $5cdc: $f6 $03
	ldh  a, [c]                                      ; $5cde: $f2
	db   $f4                                         ; $5cdf: $f4
	call nz, $82c0                                   ; $5ce0: $c4 $c0 $82
	ldh  [$80], a                                    ; $5ce3: $e0 $80
	ld   hl, sp-$7e                                  ; $5ce5: $f8 $82
	jr   @+$01                                       ; $5ce7: $18 $ff

	nop                                              ; $5ce9: $00

jr_0a2_5cea:
	rst  $38                                         ; $5cea: $ff
	nop                                              ; $5ceb: $00
	rst  $38                                         ; $5cec: $ff
	nop                                              ; $5ced: $00
	rst  $38                                         ; $5cee: $ff
	nop                                              ; $5cef: $00
	rst  $38                                         ; $5cf0: $ff
	nop                                              ; $5cf1: $00
	rst  $38                                         ; $5cf2: $ff
	nop                                              ; $5cf3: $00
	rst  $38                                         ; $5cf4: $ff
	nop                                              ; $5cf5: $00
	rst  $38                                         ; $5cf6: $ff
	nop                                              ; $5cf7: $00
	rst  $38                                         ; $5cf8: $ff
	nop                                              ; $5cf9: $00
	rst  $38                                         ; $5cfa: $ff
	nop                                              ; $5cfb: $00
	rst  $38                                         ; $5cfc: $ff
	nop                                              ; $5cfd: $00
	rst  $38                                         ; $5cfe: $ff
	nop                                              ; $5cff: $00
	sub  d                                           ; $5d00: $92
	nop                                              ; $5d01: $00
	sub  d                                           ; $5d02: $92
	nop                                              ; $5d03: $00
	add  b                                           ; $5d04: $80
	nop                                              ; $5d05: $00
	add  d                                           ; $5d06: $82
	ld   bc, $0380                                   ; $5d07: $01 $80 $03
	ld   b, $07                                      ; $5d0a: $06 $07
	inc  b                                           ; $5d0c: $04
	inc  e                                           ; $5d0d: $1c
	inc  de                                          ; $5d0e: $13
	inc  sp                                          ; $5d0f: $33
	rrca                                             ; $5d10: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d11: $cf
	add  b                                           ; $5d12: $80
	ccf                                              ; $5d13: $3f
	rlca                                             ; $5d14: $07
	ld   hl, sp-$01                                  ; $5d15: $f8 $ff
	nop                                              ; $5d17: $00
	ld   hl, sp+$00                                  ; $5d18: $f8 $00
	rlca                                             ; $5d1a: $07

jr_0a2_5d1b:
	nop                                              ; $5d1b: $00
	ld   hl, sp-$80                                  ; $5d1c: $f8 $80
	rlca                                             ; $5d1e: $07
	nop                                              ; $5d1f: $00
	rst  $38                                         ; $5d20: $ff
	add  b                                           ; $5d21: $80
	ld   a, a                                        ; $5d22: $7f
	add  b                                           ; $5d23: $80
	rra                                              ; $5d24: $1f
	ld   bc, $00ff                                   ; $5d25: $01 $ff $00
	add  b                                           ; $5d28: $80
	ld   h, b                                        ; $5d29: $60
	inc  b                                           ; $5d2a: $04
	ld   a, b                                        ; $5d2b: $78
	jr   @+$1e                                       ; $5d2c: $18 $1c

	ld   h, h                                        ; $5d2e: $64
	rst  $20                                         ; $5d2f: $e7
	add  b                                           ; $5d30: $80
	ld   sp, hl                                      ; $5d31: $f9
	add  b                                           ; $5d32: $80
	cp   $00                                         ; $5d33: $fe $00
	rst  $38                                         ; $5d35: $ff
	add  b                                           ; $5d36: $80
	jr   jr_0a2_5d45                                 ; $5d37: $18 $0c

	rst  $38                                         ; $5d39: $ff
	nop                                              ; $5d3a: $00
	add  b                                           ; $5d3b: $80
	nop                                              ; $5d3c: $00
	ld   b, c                                        ; $5d3d: $41
	nop                                              ; $5d3e: $00
	ld   hl, $1000                                   ; $5d3f: $21 $00 $10
	nop                                              ; $5d42: $00
	ret  z                                           ; $5d43: $c8

	ret  nz                                          ; $5d44: $c0

jr_0a2_5d45:
	rlca                                             ; $5d45: $07
	add  b                                           ; $5d46: $80
	nop                                              ; $5d47: $00
	ld   [bc], a                                     ; $5d48: $02
	ldh  a, [rIF]                                    ; $5d49: $f0 $0f
	nop                                              ; $5d4b: $00
	add  b                                           ; $5d4c: $80
	ldh  [$08], a                                    ; $5d4d: $e0 $08
	rst  $38                                         ; $5d4f: $ff
	ccf                                              ; $5d50: $3f
	rst  $38                                         ; $5d51: $ff
	ld   bc, $003f                                   ; $5d52: $01 $3f $00
	ld   bc, $f000                                   ; $5d55: $01 $00 $f0
	add  b                                           ; $5d58: $80
	nop                                              ; $5d59: $00
	ld   bc, $9f60                                   ; $5d5a: $01 $60 $9f
	add  c                                           ; $5d5d: $81
	rlca                                             ; $5d5e: $07
	nop                                              ; $5d5f: $00
	rla                                              ; $5d60: $17
	add  b                                           ; $5d61: $80
	rrca                                             ; $5d62: $0f
	inc  bc                                          ; $5d63: $03
	nop                                              ; $5d64: $00
	ccf                                              ; $5d65: $3f
	nop                                              ; $5d66: $00
	jr   nz, jr_0a2_5cea                             ; $5d67: $20 $81

	nop                                              ; $5d69: $00
	ld   [bc], a                                     ; $5d6a: $02
	inc  bc                                          ; $5d6b: $03
	nop                                              ; $5d6c: $00
	db   $fc                                         ; $5d6d: $fc
	add  c                                           ; $5d6e: $81
	rst  $38                                         ; $5d6f: $ff
	add  b                                           ; $5d70: $80
	db   $fc                                         ; $5d71: $fc
	rlca                                             ; $5d72: $07
	ldh  a, [$30]                                    ; $5d73: $f0 $30
	jp   $1c00                                       ; $5d75: $c3 $00 $1c


	nop                                              ; $5d78: $00
	ldh  [rP1], a                                    ; $5d79: $e0 $00

jr_0a2_5d7b:
	add  b                                           ; $5d7b: $80
	ld   bc, $7c07                                   ; $5d7c: $01 $07 $7c
	add  b                                           ; $5d7f: $80
	ld   [bc], a                                     ; $5d80: $02
	nop                                              ; $5d81: $00
	ld   e, $00                                      ; $5d82: $1e $00
	ldh  [rP1], a                                    ; $5d84: $e0 $00
	add  b                                           ; $5d86: $80
	ld   bc, $0709                                   ; $5d87: $01 $09 $07
	ld   b, $3e                                      ; $5d8a: $06 $3e
	jr   nc, @-$0e                                   ; $5d8c: $30 $f0

	adc  [hl]                                        ; $5d8e: $8e
	sub  d                                           ; $5d8f: $92
	db   $e4                                         ; $5d90: $e4
	ret  z                                           ; $5d91: $c8

	ret  nc                                          ; $5d92: $d0

	add  b                                           ; $5d93: $80
	ret  nz                                          ; $5d94: $c0

	nop                                              ; $5d95: $00
	jr   nz, jr_0a2_5d1b                             ; $5d96: $20 $83

	nop                                              ; $5d98: $00
	inc  b                                           ; $5d99: $04
	ld   e, h                                        ; $5d9a: $5c
	inc  e                                           ; $5d9b: $1c
	rra                                              ; $5d9c: $1f
	inc  de                                          ; $5d9d: $13
	adc  h                                           ; $5d9e: $8c
	add  c                                           ; $5d9f: $81
	nop                                              ; $5da0: $00
	add  b                                           ; $5da1: $80
	inc  bc                                          ; $5da2: $03
	add  d                                           ; $5da3: $82
	nop                                              ; $5da4: $00
	nop                                              ; $5da5: $00
	inc  bc                                          ; $5da6: $03
	add  b                                           ; $5da7: $80
	ld   [bc], a                                     ; $5da8: $02
	nop                                              ; $5da9: $00
	inc  bc                                          ; $5daa: $03
	add  b                                           ; $5dab: $80
	rst  $38                                         ; $5dac: $ff
	ld   a, [bc]                                     ; $5dad: $0a
	ld   h, b                                        ; $5dae: $60
	nop                                              ; $5daf: $00
	ld   d, b                                        ; $5db0: $50
	jr   nz, jr_0a2_5d7b                             ; $5db1: $20 $c8

	ret  nc                                          ; $5db3: $d0

	rst  $20                                         ; $5db4: $e7
	xor  b                                           ; $5db5: $a8
	jr   c, jr_0a2_5e16                              ; $5db6: $38 $5e

	sbc  $80                                         ; $5db8: $de $80
	rst  $20                                         ; $5dba: $e7
	add  b                                           ; $5dbb: $80
	ld   [hl], b                                     ; $5dbc: $70
	dec  bc                                          ; $5dbd: $0b
	jr   c, @-$36                                    ; $5dbe: $38 $c8

	nop                                              ; $5dc0: $00
	jr   nc, jr_0a2_5dc3                             ; $5dc1: $30 $00

jr_0a2_5dc3:
	ld   b, e                                        ; $5dc3: $43
	inc  bc                                          ; $5dc4: $03
	sbc  a                                           ; $5dc5: $9f
	jr   jr_0a2_5e00                                 ; $5dc6: $18 $38

	daa                                              ; $5dc8: $27
	ld   h, a                                        ; $5dc9: $67
	add  b                                           ; $5dca: $80
	ld   e, a                                        ; $5dcb: $5f
	nop                                              ; $5dcc: $00
	ld   a, a                                        ; $5dcd: $7f
	add  b                                           ; $5dce: $80
	ld   a, h                                        ; $5dcf: $7c
	inc  b                                           ; $5dd0: $04
	rrca                                             ; $5dd1: $0f
	inc  c                                           ; $5dd2: $0c
	ld   a, h                                        ; $5dd3: $7c
	ld   h, e                                        ; $5dd4: $63
	db   $e3                                         ; $5dd5: $e3
	add  b                                           ; $5dd6: $80
	rra                                              ; $5dd7: $1f
	nop                                              ; $5dd8: $00
	rst  $38                                         ; $5dd9: $ff
	add  b                                           ; $5dda: $80
	cp   $80                                         ; $5ddb: $fe $80
	pop  hl                                          ; $5ddd: $e1
	add  b                                           ; $5dde: $80
	ld   a, [de]                                     ; $5ddf: $1a
	add  b                                           ; $5de0: $80
	ld   sp, hl                                      ; $5de1: $f9
	nop                                              ; $5de2: $00
	rst  $38                                         ; $5de3: $ff
	add  b                                           ; $5de4: $80
	ld   a, [hl]                                     ; $5de5: $7e
	ld   [bc], a                                     ; $5de6: $02
	db   $fc                                         ; $5de7: $fc
	ei                                               ; $5de8: $fb
	ld   hl, sp-$80                                  ; $5de9: $f8 $80
	rst  ToBoot                                         ; $5deb: $c7
	add  b                                           ; $5dec: $80
	ccf                                              ; $5ded: $3f
	add  d                                           ; $5dee: $82
	rst  $38                                         ; $5def: $ff
	add  b                                           ; $5df0: $80
	sbc  a                                           ; $5df1: $9f
	inc  bc                                          ; $5df2: $03
	ld   [hl], b                                     ; $5df3: $70
	inc  c                                           ; $5df4: $0c
	adc  h                                           ; $5df5: $8c
	ld   c, $82                                      ; $5df6: $0e $82
	ld   e, $81                                      ; $5df8: $1e $81
	ld   a, $83                                      ; $5dfa: $3e $83
	inc  a                                           ; $5dfc: $3c
	nop                                              ; $5dfd: $00
	db   $fc                                         ; $5dfe: $fc
	add  b                                           ; $5dff: $80

jr_0a2_5e00:
	dec  c                                           ; $5e00: $0d
	add  b                                           ; $5e01: $80
	ld   b, $03                                      ; $5e02: $06 $03
	inc  bc                                          ; $5e04: $03
	rra                                              ; $5e05: $1f
	dec  e                                           ; $5e06: $1d
	ld   a, a                                        ; $5e07: $7f
	add  c                                           ; $5e08: $81
	ld   a, [hl]                                     ; $5e09: $7e
	add  b                                           ; $5e0a: $80
	cp   $80                                         ; $5e0b: $fe $80
	ld   hl, sp+$00                                  ; $5e0d: $f8 $00
	nop                                              ; $5e0f: $00
	add  b                                           ; $5e10: $80
	sbc  h                                           ; $5e11: $9c
	ld   b, $c6                                      ; $5e12: $06 $c6
	rst  ToBoot                                         ; $5e14: $c7
	ld   h, c                                        ; $5e15: $61

jr_0a2_5e16:
	ld   h, a                                        ; $5e16: $67
	sub  a                                           ; $5e17: $97
	sbc  a                                           ; $5e18: $9f
	rrca                                             ; $5e19: $0f
	add  b                                           ; $5e1a: $80
	ld   a, $80                                      ; $5e1b: $3e $80
	dec  a                                           ; $5e1d: $3d
	add  b                                           ; $5e1e: $80
	ld   bc, $f380                                   ; $5e1f: $01 $80 $f3
	add  b                                           ; $5e22: $80
	rst  $28                                         ; $5e23: $ef
	add  b                                           ; $5e24: $80
	rst  JumpTable                                         ; $5e25: $df
	inc  b                                           ; $5e26: $04
	cp   a                                           ; $5e27: $bf
	cp   h                                           ; $5e28: $bc
	ld   a, h                                        ; $5e29: $7c
	ld   a, b                                        ; $5e2a: $78
	ld   hl, sp-$80                                  ; $5e2b: $f8 $80
	pop  af                                          ; $5e2d: $f1
	add  c                                           ; $5e2e: $81
	rst  $38                                         ; $5e2f: $ff
	add  b                                           ; $5e30: $80
	ld   hl, sp-$80                                  ; $5e31: $f8 $80
	pop  af                                          ; $5e33: $f1
	add  b                                           ; $5e34: $80
	rst  $30                                         ; $5e35: $f7
	add  b                                           ; $5e36: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e37: $cf
	add  b                                           ; $5e38: $80
	cp   a                                           ; $5e39: $bf
	add  b                                           ; $5e3a: $80
	sbc  a                                           ; $5e3b: $9f
	add  b                                           ; $5e3c: $80
	add  [hl]                                        ; $5e3d: $86
	add  b                                           ; $5e3e: $80
	add  b                                           ; $5e3f: $80
	rlca                                             ; $5e40: $07
	ld   a, a                                        ; $5e41: $7f
	ld   a, h                                        ; $5e42: $7c
	db   $fc                                         ; $5e43: $fc
	di                                               ; $5e44: $f3
	ldh  a, [$ec]                                    ; $5e45: $f0 $ec
	ldh  [$f0], a                                    ; $5e47: $e0 $f0
	add  b                                           ; $5e49: $80
	ret  nz                                          ; $5e4a: $c0

	add  b                                           ; $5e4b: $80
	add  b                                           ; $5e4c: $80
	add  d                                           ; $5e4d: $82
	nop                                              ; $5e4e: $00
	nop                                              ; $5e4f: $00
	add  b                                           ; $5e50: $80
	add  d                                           ; $5e51: $82
	ld   a, h                                        ; $5e52: $7c
	nop                                              ; $5e53: $00
	ld   a, b                                        ; $5e54: $78
	add  d                                           ; $5e55: $82
	ld   hl, sp-$7f                                  ; $5e56: $f8 $81
	ld   sp, hl                                      ; $5e58: $f9
	inc  b                                           ; $5e59: $04
	ld   a, c                                        ; $5e5a: $79
	ei                                               ; $5e5b: $fb
	cp   e                                           ; $5e5c: $bb
	ret  z                                           ; $5e5d: $c8

	ldh  a, [$80]                                    ; $5e5e: $f0 $80
	ld   h, b                                        ; $5e60: $60
	ld   b, $01                                      ; $5e61: $06 $01
	nop                                              ; $5e63: $00
	ld   b, a                                        ; $5e64: $47
	ld   b, b                                        ; $5e65: $40
	cp   c                                           ; $5e66: $b9
	add  b                                           ; $5e67: $80
	and  b                                           ; $5e68: $a0
	add  c                                           ; $5e69: $81
	add  b                                           ; $5e6a: $80
	ld   [bc], a                                     ; $5e6b: $02
	sub  e                                           ; $5e6c: $93
	add  b                                           ; $5e6d: $80
	inc  c                                           ; $5e6e: $0c
	add  c                                           ; $5e6f: $81
	nop                                              ; $5e70: $00
	dec  c                                           ; $5e71: $0d
	add  b                                           ; $5e72: $80
	nop                                              ; $5e73: $00
	rst  $38                                         ; $5e74: $ff
	nop                                              ; $5e75: $00
	ldh  [rP1], a                                    ; $5e76: $e0 $00
	ld   e, b                                        ; $5e78: $58
	nop                                              ; $5e79: $00
	add  $38                                         ; $5e7a: $c6 $38
	add  hl, sp                                      ; $5e7c: $39
	cp   $82                                         ; $5e7d: $fe $82
	ld   a, h                                        ; $5e7f: $7c
	add  d                                           ; $5e80: $82
	nop                                              ; $5e81: $00
	ld   [bc], a                                     ; $5e82: $02
	cp   $00                                         ; $5e83: $fe $00
	ld   bc, $0083                                   ; $5e85: $01 $83 $00

jr_0a2_5e88:
	inc  bc                                          ; $5e88: $03
	add  b                                           ; $5e89: $80
	nop                                              ; $5e8a: $00
	ld   a, a                                        ; $5e8b: $7f
	nop                                              ; $5e8c: $00
	add  b                                           ; $5e8d: $80
	inc  bc                                          ; $5e8e: $03
	add  b                                           ; $5e8f: $80
	ld   bc, $0080                                   ; $5e90: $01 $80 $00
	ld   bc, $02fa                                   ; $5e93: $01 $fa $02
	add  h                                           ; $5e96: $84
	inc  bc                                          ; $5e97: $03
	ld   bc, $18e0                                   ; $5e98: $01 $e0 $18
	add  l                                           ; $5e9b: $85
	rst  $38                                         ; $5e9c: $ff
	add  b                                           ; $5e9d: $80
	rst  JumpTable                                         ; $5e9e: $df
	add  b                                           ; $5e9f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ea0: $cf
	add  b                                           ; $5ea1: $80
	rst  $20                                         ; $5ea2: $e7
	add  b                                           ; $5ea3: $80
	db   $e3                                         ; $5ea4: $e3
	adc  a                                           ; $5ea5: $8f
	nop                                              ; $5ea6: $00
	ld   c, $3f                                      ; $5ea7: $0e $3f

jr_0a2_5ea9:
	nop                                              ; $5ea9: $00
	rst  $38                                         ; $5eaa: $ff
	nop                                              ; $5eab: $00
	ret  nz                                          ; $5eac: $c0

	nop                                              ; $5ead: $00
	ld   [hl+], a                                    ; $5eae: $22
	nop                                              ; $5eaf: $00
	ld   l, b                                        ; $5eb0: $68
	nop                                              ; $5eb1: $00
	ld   d, $08                                      ; $5eb2: $16 $08
	ret                                              ; $5eb4: $c9


	ld   [$ff95], sp                                 ; $5eb5: $08 $95 $ff
	nop                                              ; $5eb8: $00
	rst  $38                                         ; $5eb9: $ff
	nop                                              ; $5eba: $00
	rst  $38                                         ; $5ebb: $ff
	nop                                              ; $5ebc: $00
	rst  $38                                         ; $5ebd: $ff
	nop                                              ; $5ebe: $00
	rst  $38                                         ; $5ebf: $ff
	nop                                              ; $5ec0: $00
	rst  $38                                         ; $5ec1: $ff
	nop                                              ; $5ec2: $00
	rst  $38                                         ; $5ec3: $ff
	nop                                              ; $5ec4: $00
	rst  $38                                         ; $5ec5: $ff
	nop                                              ; $5ec6: $00
	rst  $38                                         ; $5ec7: $ff
	nop                                              ; $5ec8: $00
	rst  $38                                         ; $5ec9: $ff
	nop                                              ; $5eca: $00
	rst  $38                                         ; $5ecb: $ff
	nop                                              ; $5ecc: $00
	rst  $38                                         ; $5ecd: $ff
	nop                                              ; $5ece: $00
	or   c                                           ; $5ecf: $b1
	nop                                              ; $5ed0: $00
	ld   c, l                                        ; $5ed1: $4d
	nop                                              ; $5ed2: $00
	jr   nz, jr_0a2_5ed8                             ; $5ed3: $20 $03

	nop                                              ; $5ed5: $00
	ld   b, $00                                      ; $5ed6: $06 $00

jr_0a2_5ed8:
	ld   a, $00                                      ; $5ed8: $3e $00
	ld   c, [hl]                                     ; $5eda: $4e
	jr   z, jr_0a2_5e88                              ; $5edb: $28 $ab

	ld   e, b                                        ; $5edd: $58
	ld   b, h                                        ; $5ede: $44
	ld   e, h                                        ; $5edf: $5c
	db   $ec                                         ; $5ee0: $ec
	inc  l                                           ; $5ee1: $2c
	ld   c, a                                        ; $5ee2: $4f
	ld   c, $ea                                      ; $5ee3: $0e $ea
	ld   l, $7e                                      ; $5ee5: $2e $7e
	halt                                             ; $5ee7: $76
	ld   [hl], b                                     ; $5ee8: $70

jr_0a2_5ee9:
	halt                                             ; $5ee9: $76
	or   e                                           ; $5eea: $b3
	dec  [hl]                                        ; $5eeb: $35
	ld   b, a                                        ; $5eec: $47
	dec  bc                                          ; $5eed: $0b
	add  hl, bc                                      ; $5eee: $09
	ld   bc, $007c                                   ; $5eef: $01 $7c $00
	jp   nz, $8100                                   ; $5ef2: $c2 $00 $81

	add  c                                           ; $5ef5: $81
	nop                                              ; $5ef6: $00
	ld   [bc], a                                     ; $5ef7: $02
	ret  nz                                          ; $5ef8: $c0

	nop                                              ; $5ef9: $00
	ldh  [$81], a                                    ; $5efa: $e0 $81
	nop                                              ; $5efc: $00
	inc  c                                           ; $5efd: $0c
	ld   [hl], b                                     ; $5efe: $70
	jr   nz, jr_0a2_5ee9                             ; $5eff: $20 $e8

	ld   [hl], b                                     ; $5f01: $70
	or   b                                           ; $5f02: $b0
	jr   nc, @+$42                                   ; $5f03: $30 $40

	db   $10                                         ; $5f05: $10
	ld   l, b                                        ; $5f06: $68
	jr   nz, jr_0a2_5ea9                             ; $5f07: $20 $a0

	jr   nz, jr_0a2_5f13                             ; $5f09: $20 $08

	add  d                                           ; $5f0b: $82
	ld   d, b                                        ; $5f0c: $50
	ld   b, $b0                                      ; $5f0d: $06 $b0
	ret  c                                           ; $5f0f: $d8

	ld   h, b                                        ; $5f10: $60
	ret  nc                                          ; $5f11: $d0

	nop                                              ; $5f12: $00

jr_0a2_5f13:
	jr   nz, jr_0a2_5f15                             ; $5f13: $20 $00

jr_0a2_5f15:
	add  b                                           ; $5f15: $80
	jr   nz, @+$10                                   ; $5f16: $20 $0e

	nop                                              ; $5f18: $00
	ld   b, b                                        ; $5f19: $40
	ld   l, h                                        ; $5f1a: $6c
	inc  l                                           ; $5f1b: $2c
	inc  b                                           ; $5f1c: $04
	inc  e                                           ; $5f1d: $1c
	db   $10                                         ; $5f1e: $10
	jr   jr_0a2_5f21                                 ; $5f1f: $18 $00

jr_0a2_5f21:
	stop                                             ; $5f21: $10 $00
	inc  c                                           ; $5f23: $0c
	ld   [$101c], sp                                 ; $5f24: $08 $1c $10
	add  c                                           ; $5f27: $81
	ld   [$0088], sp                                 ; $5f28: $08 $88 $00
	inc  e                                           ; $5f2b: $1c
	ld   a, h                                        ; $5f2c: $7c
	nop                                              ; $5f2d: $00
	add  e                                           ; $5f2e: $83
	ld   a, b                                        ; $5f2f: $78
	ld   h, c                                        ; $5f30: $61
	db   $fc                                         ; $5f31: $fc
	add  sp, -$04                                    ; $5f32: $e8 $fc
	xor  b                                           ; $5f34: $a8
	ld   hl, sp-$64                                  ; $5f35: $f8 $9c
	db   $fc                                         ; $5f37: $fc
	jp   hl                                          ; $5f38: $e9


	ld   l, [hl]                                     ; $5f39: $6e
	ld   b, d                                        ; $5f3a: $42
	rlca                                             ; $5f3b: $07
	ld   [hl], c                                     ; $5f3c: $71
	inc  bc                                          ; $5f3d: $03
	ld   a, c                                        ; $5f3e: $79
	ld   [$08ea], sp                                 ; $5f3f: $08 $ea $08
	add  hl, bc                                      ; $5f42: $09
	ld   [$0010], sp                                 ; $5f43: $08 $10 $00
	inc  bc                                          ; $5f46: $03
	inc  b                                           ; $5f47: $04
	inc  c                                           ; $5f48: $0c
	add  c                                           ; $5f49: $81
	ld   [bc], a                                     ; $5f4a: $02
	inc  b                                           ; $5f4b: $04
	dec  b                                           ; $5f4c: $05
	nop                                              ; $5f4d: $00
	inc  c                                           ; $5f4e: $0c
	nop                                              ; $5f4f: $00
	inc  bc                                          ; $5f50: $03
	add  b                                           ; $5f51: $80
	inc  b                                           ; $5f52: $04
	ld   bc, $1e06                                   ; $5f53: $01 $06 $1e
	add  c                                           ; $5f56: $81
	ld   c, $04                                      ; $5f57: $0e $04
	ld   d, $03                                      ; $5f59: $16 $03
	inc  de                                          ; $5f5b: $13
	dec  c                                           ; $5f5c: $0d
	dec  e                                           ; $5f5d: $1d
	add  b                                           ; $5f5e: $80
	inc  bc                                          ; $5f5f: $03
	rlca                                             ; $5f60: $07
	ld   b, $1f                                      ; $5f61: $06 $1f
	inc  c                                           ; $5f63: $0c
	ld   c, $08                                      ; $5f64: $0e $08
	stop                                             ; $5f66: $10 $00
	inc  b                                           ; $5f68: $04
	add  c                                           ; $5f69: $81
	nop                                              ; $5f6a: $00
	ld   a, [bc]                                     ; $5f6b: $0a
	jr   jr_0a2_5f6e                                 ; $5f6c: $18 $00

jr_0a2_5f6e:
	inc  e                                           ; $5f6e: $1c
	nop                                              ; $5f6f: $00
	dec  b                                           ; $5f70: $05
	nop                                              ; $5f71: $00
	ld   a, [de]                                     ; $5f72: $1a
	ld   bc, $0305                                   ; $5f73: $01 $05 $03
	dec  de                                          ; $5f76: $1b
	add  b                                           ; $5f77: $80
	inc  bc                                          ; $5f78: $03
	add  c                                           ; $5f79: $81
	rlca                                             ; $5f7a: $07
	nop                                              ; $5f7b: $00
	rla                                              ; $5f7c: $17
	add  b                                           ; $5f7d: $80
	rrca                                             ; $5f7e: $0f
	inc  bc                                          ; $5f7f: $03
	ld   c, $0c                                      ; $5f80: $0e $0c
	ld   c, $2e                                      ; $5f82: $0e $2e
	add  c                                           ; $5f84: $81
	ld   e, $18                                      ; $5f85: $1e $18
	inc  e                                           ; $5f87: $1c
	dec  e                                           ; $5f88: $1d
	add  hl, de                                      ; $5f89: $19
	dec  e                                           ; $5f8a: $1d
	ld   e, l                                        ; $5f8b: $5d
	dec  a                                           ; $5f8c: $3d
	xor  l                                           ; $5f8d: $ad
	ld   e, l                                        ; $5f8e: $5d
	ld   l, l                                        ; $5f8f: $6d
	ld   h, l                                        ; $5f90: $65
	pop  bc                                          ; $5f91: $c1
	jr   jr_0a2_6004                                 ; $5f92: $18 $70

	ld   a, [bc]                                     ; $5f94: $0a
	ld   [de], a                                     ; $5f95: $12
	dec  b                                           ; $5f96: $05
	dec  c                                           ; $5f97: $0d
	ld   [bc], a                                     ; $5f98: $02
	ld   b, $00                                      ; $5f99: $06 $00
	rlca                                             ; $5f9b: $07
	inc  bc                                          ; $5f9c: $03
	ld   a, [bc]                                     ; $5f9d: $0a
	ld   b, $14                                      ; $5f9e: $06 $14
	add  c                                           ; $5fa0: $81
	nop                                              ; $5fa1: $00
	ld   b, $35                                      ; $5fa2: $06 $35
	nop                                              ; $5fa4: $00
	ccf                                              ; $5fa5: $3f
	nop                                              ; $5fa6: $00
	rla                                              ; $5fa7: $17
	nop                                              ; $5fa8: $00
	ld   [bc], a                                     ; $5fa9: $02
	add  e                                           ; $5faa: $83
	nop                                              ; $5fab: $00
	ld   b, $90                                      ; $5fac: $06 $90
	nop                                              ; $5fae: $00
	or   b                                           ; $5faf: $b0
	nop                                              ; $5fb0: $00
	ld   h, b                                        ; $5fb1: $60
	nop                                              ; $5fb2: $00
	ld   b, b                                        ; $5fb3: $40
	add  l                                           ; $5fb4: $85
	nop                                              ; $5fb5: $00
	ld   [de], a                                     ; $5fb6: $12
	ret  nz                                          ; $5fb7: $c0

	nop                                              ; $5fb8: $00
	ld   a, b                                        ; $5fb9: $78
	nop                                              ; $5fba: $00
	ldh  a, [$30]                                    ; $5fbb: $f0 $30
	add  sp, $60                                     ; $5fbd: $e8 $60
	jr   jr_0a2_5fc1                                 ; $5fbf: $18 $00

jr_0a2_5fc1:
	ld   a, h                                        ; $5fc1: $7c
	nop                                              ; $5fc2: $00
	call c, $0c00                                    ; $5fc3: $dc $00 $0c
	nop                                              ; $5fc6: $00
	ld   h, [hl]                                     ; $5fc7: $66
	nop                                              ; $5fc8: $00
	db   $fd                                         ; $5fc9: $fd
	add  b                                           ; $5fca: $80
	ld   hl, sp+$17                                  ; $5fcb: $f8 $17
	pop  hl                                          ; $5fcd: $e1
	pop  bc                                          ; $5fce: $c1
	inc  d                                           ; $5fcf: $14
	ld   e, $4b                                      ; $5fd0: $1e $4b
	ld   h, c                                        ; $5fd2: $61
	cp   b                                           ; $5fd3: $b8
	sbc  a                                           ; $5fd4: $9f
	nop                                              ; $5fd5: $00
	ld   a, b                                        ; $5fd6: $78
	nop                                              ; $5fd7: $00
	dec  d                                           ; $5fd8: $15
	nop                                              ; $5fd9: $00
	ccf                                              ; $5fda: $3f
	nop                                              ; $5fdb: $00
	rst  $38                                         ; $5fdc: $ff
	nop                                              ; $5fdd: $00
	rst  $38                                         ; $5fde: $ff
	nop                                              ; $5fdf: $00
	rst  $38                                         ; $5fe0: $ff
	nop                                              ; $5fe1: $00
	rst  $38                                         ; $5fe2: $ff
	nop                                              ; $5fe3: $00
	xor  d                                           ; $5fe4: $aa
	add  e                                           ; $5fe5: $83
	nop                                              ; $5fe6: $00
	ld   [$90ef], sp                                 ; $5fe7: $08 $ef $90
	call z, $b260                                    ; $5fea: $cc $60 $b2
	ret  nz                                          ; $5fed: $c0

	ld   h, c                                        ; $5fee: $61
	nop                                              ; $5fef: $00
	ret  nz                                          ; $5ff0: $c0

	add  e                                           ; $5ff1: $83
	nop                                              ; $5ff2: $00
	inc  c                                           ; $5ff3: $0c
	ld   d, l                                        ; $5ff4: $55
	nop                                              ; $5ff5: $00
	rst  $38                                         ; $5ff6: $ff
	nop                                              ; $5ff7: $00
	rst  $38                                         ; $5ff8: $ff
	nop                                              ; $5ff9: $00
	rst  $38                                         ; $5ffa: $ff
	nop                                              ; $5ffb: $00
	rst  $38                                         ; $5ffc: $ff
	nop                                              ; $5ffd: $00
	db   $fd                                         ; $5ffe: $fd
	nop                                              ; $5fff: $00
	xor  b                                           ; $6000: $a8
	add  e                                           ; $6001: $83
	nop                                              ; $6002: $00
	ld   b, b                                        ; $6003: $40

jr_0a2_6004:
	cp   b                                           ; $6004: $b8
	nop                                              ; $6005: $00
	ldh  a, [rP1]                                    ; $6006: $f0 $00
	ret  c                                           ; $6008: $d8

	nop                                              ; $6009: $00
	ld   a, b                                        ; $600a: $78
	nop                                              ; $600b: $00
	ld   a, h                                        ; $600c: $7c
	ld   h, b                                        ; $600d: $60
	xor  h                                           ; $600e: $ac
	jr   nc, jr_0a2_6045                             ; $600f: $30 $34

	jr   c, jr_0a2_605d                              ; $6011: $38 $4a

	inc  e                                           ; $6013: $1c
	push bc                                          ; $6014: $c5
	ld   c, $62                                      ; $6015: $0e $62
	ld   h, [hl]                                     ; $6017: $66
	ld   b, $f4                                      ; $6018: $06 $f4
	di                                               ; $601a: $f3
	ld   hl, sp-$04                                  ; $601b: $f8 $fc
	ldh  a, [$fd]                                    ; $601d: $f0 $fd
	ldh  [$f7], a                                    ; $601f: $e0 $f7
	nop                                              ; $6021: $00
	ld   b, b                                        ; $6022: $40
	nop                                              ; $6023: $00
	ld   e, d                                        ; $6024: $5a
	ld   b, b                                        ; $6025: $40
	ld   [hl], b                                     ; $6026: $70
	add  b                                           ; $6027: $80
	ret  c                                           ; $6028: $d8

	nop                                              ; $6029: $00
	ld   l, b                                        ; $602a: $68
	db   $10                                         ; $602b: $10
	ld   [hl], h                                     ; $602c: $74
	ld   [$805c], sp                                 ; $602d: $08 $5c $80
	adc  h                                           ; $6030: $8c
	add  b                                           ; $6031: $80
	and  [hl]                                        ; $6032: $a6
	ret  nz                                          ; $6033: $c0

	db   $d3                                         ; $6034: $d3
	nop                                              ; $6035: $00
	ld   l, b                                        ; $6036: $68
	nop                                              ; $6037: $00
	sub  d                                           ; $6038: $92
	nop                                              ; $6039: $00
	ld   c, $03                                      ; $603a: $0e $03
	dec  c                                           ; $603c: $0d
	rlca                                             ; $603d: $07
	add  hl, de                                      ; $603e: $19
	ld   a, [bc]                                     ; $603f: $0a
	pop  af                                          ; $6040: $f1
	inc  e                                           ; $6041: $1c
	inc  c                                           ; $6042: $0c
	ld   e, h                                        ; $6043: $5c
	and  d                                           ; $6044: $a2

jr_0a2_6045:
	add  c                                           ; $6045: $81
	nop                                              ; $6046: $00
	nop                                              ; $6047: $00
	add  b                                           ; $6048: $80
	add  e                                           ; $6049: $83
	nop                                              ; $604a: $00
	nop                                              ; $604b: $00
	add  b                                           ; $604c: $80
	add  l                                           ; $604d: $85
	nop                                              ; $604e: $00
	nop                                              ; $604f: $00
	add  b                                           ; $6050: $80
	add  e                                           ; $6051: $83
	nop                                              ; $6052: $00
	nop                                              ; $6053: $00
	add  b                                           ; $6054: $80
	add  a                                           ; $6055: $87
	nop                                              ; $6056: $00
	inc  b                                           ; $6057: $04
	ld   b, b                                        ; $6058: $40
	nop                                              ; $6059: $00
	ret  nz                                          ; $605a: $c0

	nop                                              ; $605b: $00
	add  b                                           ; $605c: $80

jr_0a2_605d:
	sub  a                                           ; $605d: $97
	nop                                              ; $605e: $00
	inc  c                                           ; $605f: $0c
	call z, Call_0a2_7a41                            ; $6060: $cc $41 $7a
	nop                                              ; $6063: $00
	ld   [bc], a                                     ; $6064: $02
	ldh  [$61], a                                    ; $6065: $e0 $61
	ld   h, b                                        ; $6067: $60
	ld   e, b                                        ; $6068: $58
	ld   b, b                                        ; $6069: $40
	ld   b, a                                        ; $606a: $47
	ld   b, h                                        ; $606b: $44
	ld   a, [bc]                                     ; $606c: $0a
	add  c                                           ; $606d: $81
	ld   [bc], a                                     ; $606e: $02
	add  b                                           ; $606f: $80
	inc  bc                                          ; $6070: $03
	inc  bc                                          ; $6071: $03
	dec  d                                           ; $6072: $15
	ld   de, $0919                                   ; $6073: $11 $19 $09
	add  b                                           ; $6076: $80
	ld   [$1e00], sp                                 ; $6077: $08 $00 $1e
	add  c                                           ; $607a: $81
	inc  b                                           ; $607b: $04
	ld   bc, $020f                                   ; $607c: $01 $0f $02
	add  b                                           ; $607f: $80
	ld   [hl+], a                                    ; $6080: $22
	nop                                              ; $6081: $00
	inc  b                                           ; $6082: $04
	rst  $38                                         ; $6083: $ff
	nop                                              ; $6084: $00
	rst  $38                                         ; $6085: $ff
	nop                                              ; $6086: $00
	rst  $38                                         ; $6087: $ff
	nop                                              ; $6088: $00
	rst  $38                                         ; $6089: $ff
	nop                                              ; $608a: $00
	rst  $38                                         ; $608b: $ff
	nop                                              ; $608c: $00
	rst  $38                                         ; $608d: $ff
	nop                                              ; $608e: $00
	rst  $38                                         ; $608f: $ff
	nop                                              ; $6090: $00
	rst  $38                                         ; $6091: $ff
	nop                                              ; $6092: $00
	rst  $38                                         ; $6093: $ff
	nop                                              ; $6094: $00
	rst  $38                                         ; $6095: $ff
	nop                                              ; $6096: $00
	rst  $38                                         ; $6097: $ff
	nop                                              ; $6098: $00
	rst  $38                                         ; $6099: $ff
	nop                                              ; $609a: $00
	sub  c                                           ; $609b: $91
	nop                                              ; $609c: $00
	ld   h, h                                        ; $609d: $64
	nop                                              ; $609e: $00
	inc  c                                           ; $609f: $0c
	rrca                                             ; $60a0: $0f
	nop                                              ; $60a1: $00
	ld   [$1800], sp                                 ; $60a2: $08 $00 $18
	nop                                              ; $60a5: $00
	jr   nz, jr_0a2_60b0                             ; $60a6: $20 $08

	ld   c, b                                        ; $60a8: $48
	rlca                                             ; $60a9: $07
	ld   b, a                                        ; $60aa: $47
	nop                                              ; $60ab: $00
	ld   b, d                                        ; $60ac: $42
	add  c                                           ; $60ad: $81
	ld   [bc], a                                     ; $60ae: $02
	add  b                                           ; $60af: $80

jr_0a2_60b0:
	ld   [de], a                                     ; $60b0: $12
	add  b                                           ; $60b1: $80
	db   $10                                         ; $60b2: $10
	ld   [bc], a                                     ; $60b3: $02
	ld   d, b                                        ; $60b4: $50
	ld   [de], a                                     ; $60b5: $12
	inc  de                                          ; $60b6: $13
	add  b                                           ; $60b7: $80
	dec  de                                          ; $60b8: $1b
	rrca                                             ; $60b9: $0f
	inc  de                                          ; $60ba: $13
	dec  l                                           ; $60bb: $2d
	rrca                                             ; $60bc: $0f
	rla                                              ; $60bd: $17
	rlca                                             ; $60be: $07
	ld   [$0700], sp                                 ; $60bf: $08 $00 $07
	nop                                              ; $60c2: $00
	ldh  a, [rP1]                                    ; $60c3: $f0 $00
	ld   [$0400], sp                                 ; $60c5: $08 $00 $04
	nop                                              ; $60c8: $00
	ld   [bc], a                                     ; $60c9: $02
	add  b                                           ; $60ca: $80
	ld   [$3001], sp                                 ; $60cb: $08 $01 $30
	ld   sp, $0081                                   ; $60ce: $31 $81 $00
	add  d                                           ; $60d1: $82
	add  b                                           ; $60d2: $80
	ld   bc, $8081                                   ; $60d3: $01 $81 $80
	add  b                                           ; $60d6: $80
	and  b                                           ; $60d7: $a0
	inc  c                                           ; $60d8: $0c
	ldh  [c], a                                      ; $60d9: $e2
	ldh  [$c4], a                                    ; $60da: $e0 $c4
	ret  nz                                          ; $60dc: $c0

	ret  z                                           ; $60dd: $c8

	ret  nz                                          ; $60de: $c0

	stop                                             ; $60df: $10 $00
	cp   [hl]                                        ; $60e1: $be
	nop                                              ; $60e2: $00
	ld   bc, $2808                                   ; $60e3: $01 $08 $28
	adc  d                                           ; $60e6: $8a
	inc  e                                           ; $60e7: $1c
	inc  bc                                          ; $60e8: $03
	nop                                              ; $60e9: $00
	ld   c, b                                        ; $60ea: $48
	ld   [$8501], sp                                 ; $60eb: $08 $01 $85
	nop                                              ; $60ee: $00
	ld   [de], a                                     ; $60ef: $12
	ld   h, b                                        ; $60f0: $60
	inc  a                                           ; $60f1: $3c
	inc  e                                           ; $60f2: $1c
	nop                                              ; $60f3: $00
	ld   a, [hl]                                     ; $60f4: $7e
	nop                                              ; $60f5: $00
	rrca                                             ; $60f6: $0f
	nop                                              ; $60f7: $00
	ld   [$1800], sp                                 ; $60f8: $08 $00 $18
	nop                                              ; $60fb: $00
	jr   nz, jr_0a2_6106                             ; $60fc: $20 $08

	ld   c, b                                        ; $60fe: $48
	rlca                                             ; $60ff: $07
	ld   b, a                                        ; $6100: $47
	nop                                              ; $6101: $00
	ld   b, d                                        ; $6102: $42
	add  c                                           ; $6103: $81
	ld   [bc], a                                     ; $6104: $02
	add  b                                           ; $6105: $80

jr_0a2_6106:
	ld   [de], a                                     ; $6106: $12
	add  b                                           ; $6107: $80
	db   $10                                         ; $6108: $10
	ld   [bc], a                                     ; $6109: $02
	ld   d, b                                        ; $610a: $50
	ld   [de], a                                     ; $610b: $12
	inc  de                                          ; $610c: $13
	add  b                                           ; $610d: $80
	dec  de                                          ; $610e: $1b
	dec  b                                           ; $610f: $05
	inc  de                                          ; $6110: $13
	dec  l                                           ; $6111: $2d
	rrca                                             ; $6112: $0f
	rla                                              ; $6113: $17
	rlca                                             ; $6114: $07
	rrca                                             ; $6115: $0f
	add  c                                           ; $6116: $81
	nop                                              ; $6117: $00
	ld   b, $f0                                      ; $6118: $06 $f0
	nop                                              ; $611a: $00
	ld   [$0400], sp                                 ; $611b: $08 $00 $04
	nop                                              ; $611e: $00
	ld   [bc], a                                     ; $611f: $02
	add  b                                           ; $6120: $80
	ld   [$3001], sp                                 ; $6121: $08 $01 $30
	ld   sp, $0081                                   ; $6124: $31 $81 $00
	add  d                                           ; $6127: $82
	add  b                                           ; $6128: $80
	ld   bc, $8081                                   ; $6129: $01 $81 $80
	add  b                                           ; $612c: $80
	and  b                                           ; $612d: $a0
	inc  d                                           ; $612e: $14
	ldh  [c], a                                      ; $612f: $e2
	ldh  [$c4], a                                    ; $6130: $e0 $c4
	ret  nz                                          ; $6132: $c0

	ret  z                                           ; $6133: $c8

	ret  nz                                          ; $6134: $c0

	rst  $30                                         ; $6135: $f7
	nop                                              ; $6136: $00
	inc  c                                           ; $6137: $0c
	ld   bc, $0305                                   ; $6138: $01 $05 $03
	di                                               ; $613b: $f3
	rrca                                             ; $613c: $0f
	ld   c, a                                        ; $613d: $4f
	ld   e, a                                        ; $613e: $5f
	rra                                              ; $613f: $1f
	ld   e, $df                                      ; $6140: $1e $df
	ld   bc, $8133                                   ; $6142: $01 $33 $81
	inc  bc                                          ; $6145: $03
	add  b                                           ; $6146: $80
	nop                                              ; $6147: $00
	inc  b                                           ; $6148: $04
	stop                                             ; $6149: $10 $00
	jr   nz, jr_0a2_614d                             ; $614b: $20 $00

jr_0a2_614d:
	ld   bc, $0081                                   ; $614d: $01 $81 $00
	inc  b                                           ; $6150: $04
	ld   h, b                                        ; $6151: $60
	inc  a                                           ; $6152: $3c
	inc  e                                           ; $6153: $1c
	nop                                              ; $6154: $00
	sbc  [hl]                                        ; $6155: $9e
	add  b                                           ; $6156: $80
	nop                                              ; $6157: $00
	ld   b, $80                                      ; $6158: $06 $80
	sub  b                                           ; $615a: $90
	add  b                                           ; $615b: $80
	adc  b                                           ; $615c: $88
	add  b                                           ; $615d: $80
	add  h                                           ; $615e: $84
	ld   [$e882], sp                                 ; $615f: $08 $82 $e8
	inc  bc                                          ; $6162: $03
	db   $ec                                         ; $6163: $ec
	ldh  [$e8], a                                    ; $6164: $e0 $e8
	ldh  [$80], a                                    ; $6166: $e0 $80
	nop                                              ; $6168: $00
	rla                                              ; $6169: $17
	ld   [$8400], sp                                 ; $616a: $08 $00 $84
	nop                                              ; $616d: $00
	ld   [bc], a                                     ; $616e: $02
	nop                                              ; $616f: $00
	ld   b, b                                        ; $6170: $40
	inc  b                                           ; $6171: $04
	inc  d                                           ; $6172: $14
	inc  e                                           ; $6173: $1c
	ld   c, $00                                      ; $6174: $0e $00
	dec  sp                                          ; $6176: $3b
	nop                                              ; $6177: $00
	inc  c                                           ; $6178: $0c
	ld   bc, $0005                                   ; $6179: $01 $05 $00
	db   $10                                         ; $617c: $10
	inc  b                                           ; $617d: $04
	db   $e4                                         ; $617e: $e4
	inc  b                                           ; $617f: $04
	ld   b, l                                        ; $6180: $45
	ld   d, l                                        ; $6181: $55
	add  b                                           ; $6182: $80
	dec  d                                           ; $6183: $15
	ld   a, [bc]                                     ; $6184: $0a
	push de                                          ; $6185: $d5
	dec  b                                           ; $6186: $05
	dec  [hl]                                        ; $6187: $35
	dec  b                                           ; $6188: $05
	inc  b                                           ; $6189: $04
	nop                                              ; $618a: $00
	stop                                             ; $618b: $10 $00
	jr   nz, jr_0a2_618f                             ; $618d: $20 $00

jr_0a2_618f:
	ld   bc, $0081                                   ; $618f: $01 $81 $00
	inc  b                                           ; $6192: $04
	ld   h, b                                        ; $6193: $60
	inc  a                                           ; $6194: $3c
	inc  e                                           ; $6195: $1c
	nop                                              ; $6196: $00
	sbc  [hl]                                        ; $6197: $9e
	add  b                                           ; $6198: $80
	nop                                              ; $6199: $00
	ld   [$9080], sp                                 ; $619a: $08 $80 $90
	ld   h, b                                        ; $619d: $60
	ld   l, b                                        ; $619e: $68
	ld   [hl], b                                     ; $619f: $70
	ld   [hl], h                                     ; $61a0: $74
	ld   a, b                                        ; $61a1: $78
	ld   hl, sp-$68                                  ; $61a2: $f8 $98

jr_0a2_61a4:
	add  b                                           ; $61a4: $80
	ret  c                                           ; $61a5: $d8

	ld   bc, $c0dc                                   ; $61a6: $01 $dc $c0
	add  b                                           ; $61a9: $80
	ret  nc                                          ; $61aa: $d0

	add  d                                           ; $61ab: $82
	nop                                              ; $61ac: $00
	ld   c, $84                                      ; $61ad: $0e $84
	nop                                              ; $61af: $00
	ld   [bc], a                                     ; $61b0: $02
	nop                                              ; $61b1: $00
	ld   b, b                                        ; $61b2: $40
	inc  b                                           ; $61b3: $04
	inc  d                                           ; $61b4: $14
	inc  e                                           ; $61b5: $1c
	ld   c, $00                                      ; $61b6: $0e $00
	inc  a                                           ; $61b8: $3c
	nop                                              ; $61b9: $00
	inc  b                                           ; $61ba: $04
	nop                                              ; $61bb: $00
	inc  b                                           ; $61bc: $04
	sbc  c                                           ; $61bd: $99
	nop                                              ; $61be: $00
	nop                                              ; $61bf: $00
	inc  b                                           ; $61c0: $04
	add  c                                           ; $61c1: $81
	nop                                              ; $61c2: $00
	nop                                              ; $61c3: $00
	inc  b                                           ; $61c4: $04
	and  e                                           ; $61c5: $a3
	nop                                              ; $61c6: $00
	ld   a, [bc]                                     ; $61c7: $0a
	inc  bc                                          ; $61c8: $03
	nop                                              ; $61c9: $00
	inc  b                                           ; $61ca: $04
	nop                                              ; $61cb: $00
	ld   [$d000], sp                                 ; $61cc: $08 $00 $d0
	nop                                              ; $61cf: $00
	ld   h, b                                        ; $61d0: $60
	ld   b, b                                        ; $61d1: $40
	nop                                              ; $61d2: $00
	add  h                                           ; $61d3: $84
	ld   b, b                                        ; $61d4: $40
	ld   bc, $ff00                                   ; $61d5: $01 $00 $ff
	adc  e                                           ; $61d8: $8b
	nop                                              ; $61d9: $00
	add  hl, bc                                      ; $61da: $09
	add  b                                           ; $61db: $80
	nop                                              ; $61dc: $00
	ld   h, b                                        ; $61dd: $60
	nop                                              ; $61de: $00
	rra                                              ; $61df: $1f
	nop                                              ; $61e0: $00
	ld   c, $30                                      ; $61e1: $0e $30
	ld   a, $00                                      ; $61e3: $3e $00

jr_0a2_61e5:
	add  e                                           ; $61e5: $83
	inc  a                                           ; $61e6: $3c
	nop                                              ; $61e7: $00
	dec  a                                           ; $61e8: $3d
	add  b                                           ; $61e9: $80
	ld   bc, $fd0d                                   ; $61ea: $01 $0d $fd
	nop                                              ; $61ed: $00
	inc  bc                                          ; $61ee: $03
	nop                                              ; $61ef: $00
	rlca                                             ; $61f0: $07
	nop                                              ; $61f1: $00
	jr   jr_0a2_61f4                                 ; $61f2: $18 $00

jr_0a2_61f4:
	ccf                                              ; $61f4: $3f
	rra                                              ; $61f5: $1f
	ld   l, b                                        ; $61f6: $68
	jr   z, jr_0a2_61e5                              ; $61f7: $28 $ec

	ld   l, h                                        ; $61f9: $6c
	add  b                                           ; $61fa: $80
	ld   l, a                                        ; $61fb: $6f
	add  b                                           ; $61fc: $80
	ld   a, b                                        ; $61fd: $78
	add  b                                           ; $61fe: $80
	ld   a, a                                        ; $61ff: $7f
	add  b                                           ; $6200: $80
	ld   [hl], b                                     ; $6201: $70
	add  b                                           ; $6202: $80
	jr   jr_0a2_6205                                 ; $6203: $18 $00

jr_0a2_6205:
	nop                                              ; $6205: $00
	add  b                                           ; $6206: $80
	add  b                                           ; $6207: $80
	add  b                                           ; $6208: $80
	nop                                              ; $6209: $00
	add  b                                           ; $620a: $80
	add  b                                           ; $620b: $80
	dec  bc                                          ; $620c: $0b
	ld   hl, sp-$05                                  ; $620d: $f8 $fb
	ldh  a, [$fc]                                    ; $620f: $f0 $fc
	nop                                              ; $6211: $00
	ld   d, b                                        ; $6212: $50
	nop                                              ; $6213: $00
	ld   d, d                                        ; $6214: $52
	nop                                              ; $6215: $00
	adc  b                                           ; $6216: $88
	add  b                                           ; $6217: $80
	inc  b                                           ; $6218: $04
	add  b                                           ; $6219: $80
	nop                                              ; $621a: $00
	ld   [bc], a                                     ; $621b: $02
	db   $10                                         ; $621c: $10
	sub  b                                           ; $621d: $90
	and  b                                           ; $621e: $a0
	add  c                                           ; $621f: $81
	jr   nz, jr_0a2_61a4                             ; $6220: $20 $82

	nop                                              ; $6222: $00
	add  hl, bc                                      ; $6223: $09
	ld   b, b                                        ; $6224: $40
	ld   b, d                                        ; $6225: $42
	ld   b, b                                        ; $6226: $40
	ld   b, h                                        ; $6227: $44
	jr   nz, jr_0a2_6252                             ; $6228: $20 $28

	nop                                              ; $622a: $00
	jr   nc, jr_0a2_622d                             ; $622b: $30 $00

jr_0a2_622d:
	ret  nz                                          ; $622d: $c0

	sub  l                                           ; $622e: $95
	nop                                              ; $622f: $00
	ld   a, [bc]                                     ; $6230: $0a
	inc  b                                           ; $6231: $04
	nop                                              ; $6232: $00
	ld   b, $00                                      ; $6233: $06 $00
	dec  e                                           ; $6235: $1d
	nop                                              ; $6236: $00
	rla                                              ; $6237: $17
	nop                                              ; $6238: $00
	inc  c                                           ; $6239: $0c
	nop                                              ; $623a: $00
	inc  b                                           ; $623b: $04
	sub  c                                           ; $623c: $91
	nop                                              ; $623d: $00
	db   $10                                         ; $623e: $10
	ld   [$0c00], sp                                 ; $623f: $08 $00 $0c
	nop                                              ; $6242: $00
	ld   a, d                                        ; $6243: $7a
	nop                                              ; $6244: $00
	ld   e, [hl]                                     ; $6245: $5e
	nop                                              ; $6246: $00
	ld   [hl-], a                                    ; $6247: $32
	nop                                              ; $6248: $00
	dec  d                                           ; $6249: $15
	nop                                              ; $624a: $00
	dec  b                                           ; $624b: $05
	nop                                              ; $624c: $00
	inc  c                                           ; $624d: $0c
	nop                                              ; $624e: $00
	ld   c, $ff                                      ; $624f: $0e $ff
	nop                                              ; $6251: $00

jr_0a2_6252:
	rst  $38                                         ; $6252: $ff
	nop                                              ; $6253: $00
	rst  $38                                         ; $6254: $ff
	nop                                              ; $6255: $00
	rst  $38                                         ; $6256: $ff
	nop                                              ; $6257: $00
	rst  $38                                         ; $6258: $ff
	nop                                              ; $6259: $00
	rst  $38                                         ; $625a: $ff
	nop                                              ; $625b: $00
	rst  $38                                         ; $625c: $ff
	nop                                              ; $625d: $00
	rst  $38                                         ; $625e: $ff
	nop                                              ; $625f: $00
	rst  $38                                         ; $6260: $ff
	nop                                              ; $6261: $00
	rst  $38                                         ; $6262: $ff
	nop                                              ; $6263: $00
	rst  $38                                         ; $6264: $ff
	nop                                              ; $6265: $00
	ret  nc                                          ; $6266: $d0

	nop                                              ; $6267: $00
	sub  a                                           ; $6268: $97
	nop                                              ; $6269: $00
	nop                                              ; $626a: $00
	nop                                              ; $626b: $00
	add  c                                           ; $626c: $81
	rst  $38                                         ; $626d: $ff
	add  b                                           ; $626e: $80
	rst  $20                                         ; $626f: $e7
	add  b                                           ; $6270: $80
	db   $e4                                         ; $6271: $e4
	nop                                              ; $6272: $00
	ret  nz                                          ; $6273: $c0

	add  b                                           ; $6274: $80
	ld   b, e                                        ; $6275: $43
	add  b                                           ; $6276: $80
	ld   c, a                                        ; $6277: $4f
	inc  bc                                          ; $6278: $03
	rst  JumpTable                                         ; $6279: $df
	sbc  a                                           ; $627a: $9f
	cp   [hl]                                        ; $627b: $be
	pop  bc                                          ; $627c: $c1
	add  e                                           ; $627d: $83
	rst  $38                                         ; $627e: $ff
	add  b                                           ; $627f: $80
	ld   bc, $0603                                   ; $6280: $01 $03 $06
	ld   hl, sp-$07                                  ; $6283: $f8 $f9
	ld   hl, sp-$80                                  ; $6285: $f8 $80
	db   $fc                                         ; $6287: $fc
	ld   b, $fe                                      ; $6288: $06 $fe
	ld   [bc], a                                     ; $628a: $02
	add  d                                           ; $628b: $82
	or   c                                           ; $628c: $b1
	rst  $28                                         ; $628d: $ef
	rst  $38                                         ; $628e: $ff
	rst  JumpTable                                         ; $628f: $df
	adc  c                                           ; $6290: $89
	rst  $38                                         ; $6291: $ff
	add  b                                           ; $6292: $80
	db   $fc                                         ; $6293: $fc
	adc  h                                           ; $6294: $8c
	rst  $38                                         ; $6295: $ff
	rlca                                             ; $6296: $07
	add  a                                           ; $6297: $87
	ld   h, l                                        ; $6298: $65
	push hl                                          ; $6299: $e5
	dec  [hl]                                        ; $629a: $35
	push af                                          ; $629b: $f5
	sub  $f6                                         ; $629c: $d6 $f6
	and  $81                                         ; $629e: $e6 $81
	or   [hl]                                        ; $62a0: $b6
	nop                                              ; $62a1: $00
	or   a                                           ; $62a2: $b7
	add  d                                           ; $62a3: $82
	db   $db                                         ; $62a4: $db
	adc  d                                           ; $62a5: $8a
	xor  $82                                         ; $62a6: $ee $82
	sbc  $8e                                         ; $62a8: $de $8e
	rst  $38                                         ; $62aa: $ff
	nop                                              ; $62ab: $00
	cp   $83                                         ; $62ac: $fe $83
	ld   bc, $0088                                   ; $62ae: $01 $88 $00
	dec  c                                           ; $62b1: $0d
	ccf                                              ; $62b2: $3f
	jr   nc, jr_0a2_62c5                             ; $62b3: $30 $10

	rra                                              ; $62b5: $1f
	inc  bc                                          ; $62b6: $03
	ld   [bc], a                                     ; $62b7: $02
	rst  $38                                         ; $62b8: $ff
	nop                                              ; $62b9: $00
	ld   [de], a                                     ; $62ba: $12
	db   $10                                         ; $62bb: $10
	ld   [hl], h                                     ; $62bc: $74
	ld   [hl], b                                     ; $62bd: $70
	di                                               ; $62be: $f3
	pop  af                                          ; $62bf: $f1
	add  b                                           ; $62c0: $80

jr_0a2_62c1:
	push hl                                          ; $62c1: $e5
	nop                                              ; $62c2: $00
	dec  b                                           ; $62c3: $05
	add  b                                           ; $62c4: $80

jr_0a2_62c5:
	ccf                                              ; $62c5: $3f
	add  b                                           ; $62c6: $80
	sbc  a                                           ; $62c7: $9f
	inc  bc                                          ; $62c8: $03
	rra                                              ; $62c9: $1f
	rst  $38                                         ; $62ca: $ff
	rrca                                             ; $62cb: $0f
	rra                                              ; $62cc: $1f
	add  b                                           ; $62cd: $80
	rlca                                             ; $62ce: $07
	dec  b                                           ; $62cf: $05
	nop                                              ; $62d0: $00
	rlca                                             ; $62d1: $07
	nop                                              ; $62d2: $00
	stop                                             ; $62d3: $10 $00
	rst  $20                                         ; $62d5: $e7
	add  b                                           ; $62d6: $80
	ldh  [rP1], a                                    ; $62d7: $e0 $00
	rst  $28                                         ; $62d9: $ef
	add  b                                           ; $62da: $80
	ret  z                                           ; $62db: $c8

	ld   bc, $8393                                   ; $62dc: $01 $93 $83
	add  c                                           ; $62df: $81
	adc  a                                           ; $62e0: $8f
	ld   b, $88                                      ; $62e1: $06 $88
	adc  e                                           ; $62e3: $8b
	nop                                              ; $62e4: $00
	adc  h                                           ; $62e5: $8c
	nop                                              ; $62e6: $00
	or   d                                           ; $62e7: $b2
	ld   c, l                                        ; $62e8: $4d
	add  b                                           ; $62e9: $80
	dec  sp                                          ; $62ea: $3b
	add  b                                           ; $62eb: $80
	ld   [hl], a                                     ; $62ec: $77
	inc  b                                           ; $62ed: $04
	ld   l, [hl]                                     ; $62ee: $6e
	ld   l, $00                                      ; $62ef: $2e $00
	ld   b, c                                        ; $62f1: $41
	ld   c, [hl]                                     ; $62f2: $4e
	add  c                                           ; $62f3: $81
	ld   d, b                                        ; $62f4: $50
	add  b                                           ; $62f5: $80
	ld   b, b                                        ; $62f6: $40
	inc  bc                                          ; $62f7: $03
	rst  JumpTable                                         ; $62f8: $df
	call $8ebd                                       ; $62f9: $cd $bd $8e
	add  b                                           ; $62fc: $80
	add  [hl]                                        ; $62fd: $86
	inc  bc                                          ; $62fe: $03
	ld   a, $00                                      ; $62ff: $3e $00
	cp   $01                                         ; $6301: $fe $01
	add  h                                           ; $6303: $84
	nop                                              ; $6304: $00
	ld   [$004c], sp                                 ; $6305: $08 $4c $00
	ld   bc, $f200                                   ; $6308: $01 $00 $f2
	adc  b                                           ; $630b: $88
	db   $eb                                         ; $630c: $eb
	jr   @+$3c                                       ; $630d: $18 $3a

	add  b                                           ; $630f: $80
	add  $00                                         ; $6310: $c6 $00
	cp   $80                                         ; $6312: $fe $80
	inc  a                                           ; $6314: $3c
	add  b                                           ; $6315: $80
	nop                                              ; $6316: $00
	ld   b, $78                                      ; $6317: $06 $78
	nop                                              ; $6319: $00
	or   b                                           ; $631a: $b0
	ld   b, b                                        ; $631b: $40
	ld   [hl], a                                     ; $631c: $77
	nop                                              ; $631d: $00
	cp   $80                                         ; $631e: $fe $80
	nop                                              ; $6320: $00
	nop                                              ; $6321: $00

jr_0a2_6322:
	ld   bc, $0084                                   ; $6322: $01 $84 $00
	add  hl, bc                                      ; $6325: $09
	dec  a                                           ; $6326: $3d
	ld   [hl-], a                                    ; $6327: $32
	add  hl, sp                                      ; $6328: $39
	add  hl, hl                                      ; $6329: $29
	db   $e3                                         ; $632a: $e3
	inc  bc                                          ; $632b: $03
	ld   [hl], e                                     ; $632c: $73
	adc  e                                           ; $632d: $8b
	add  c                                           ; $632e: $81
	dec  b                                           ; $632f: $05
	add  b                                           ; $6330: $80
	inc  b                                           ; $6331: $04
	inc  b                                           ; $6332: $04
	ld   b, b                                        ; $6333: $40
	jp   nz, $80c0                                   ; $6334: $c2 $c0 $80

	and  c                                           ; $6337: $a1
	add  b                                           ; $6338: $80
	nop                                              ; $6339: $00
	add  c                                           ; $633a: $81
	jr   nz, jr_0a2_62c1                             ; $633b: $20 $84

	nop                                              ; $633d: $00
	add  b                                           ; $633e: $80
	rlca                                             ; $633f: $07
	ld   [bc], a                                     ; $6340: $02
	ccf                                              ; $6341: $3f
	nop                                              ; $6342: $00
	rst  $38                                         ; $6343: $ff
	add  a                                           ; $6344: $87
	nop                                              ; $6345: $00
	add  b                                           ; $6346: $80
	ld   bc, $ff01                                   ; $6347: $01 $01 $ff
	nop                                              ; $634a: $00
	add  b                                           ; $634b: $80
	ld   hl, sp+$00                                  ; $634c: $f8 $00
	rst  $38                                         ; $634e: $ff
	add  a                                           ; $634f: $87
	nop                                              ; $6350: $00
	ld   [bc], a                                     ; $6351: $02
	rst  $38                                         ; $6352: $ff
	add  b                                           ; $6353: $80
	sbc  e                                           ; $6354: $9b
	add  c                                           ; $6355: $81
	dec  de                                          ; $6356: $1b
	nop                                              ; $6357: $00
	rst  $38                                         ; $6358: $ff
	add  a                                           ; $6359: $87
	nop                                              ; $635a: $00
	ld   bc, $00ff                                   ; $635b: $01 $ff $00
	add  b                                           ; $635e: $80
	rst  $10                                         ; $635f: $d7
	add  b                                           ; $6360: $80
	rst  $28                                         ; $6361: $ef
	dec  b                                           ; $6362: $05
	cp   [hl]                                        ; $6363: $be
	ld   bc, $6121                                   ; $6364: $01 $21 $61
	ld   h, b                                        ; $6367: $60
	ld   b, b                                        ; $6368: $40
	add  b                                           ; $6369: $80
	nop                                              ; $636a: $00
	inc  bc                                          ; $636b: $03
	db   $10                                         ; $636c: $10
	jr   nc, @+$01                                   ; $636d: $30 $ff

	nop                                              ; $636f: $00
	add  d                                           ; $6370: $82
	rst  $28                                         ; $6371: $ef
	add  b                                           ; $6372: $80
	ld   e, a                                        ; $6373: $5f
	add  b                                           ; $6374: $80
	ld   l, a                                        ; $6375: $6f
	ld   bc, $af2f                                   ; $6376: $01 $2f $af
	add  b                                           ; $6379: $80
	and  a                                           ; $637a: $a7
	inc  bc                                          ; $637b: $03
	inc  de                                          ; $637c: $13
	ld   d, e                                        ; $637d: $53
	ret  nc                                          ; $637e: $d0

	db   $10                                         ; $637f: $10
	add  d                                           ; $6380: $82
	adc  b                                           ; $6381: $88
	adc  b                                           ; $6382: $88
	ld   hl, sp-$7e                                  ; $6383: $f8 $82
	ld   a, b                                        ; $6385: $78
	add  b                                           ; $6386: $80
	jr   c, @-$7e                                    ; $6387: $38 $80

	dec  sp                                          ; $6389: $3b
	add  d                                           ; $638a: $82
	ld   a, e                                        ; $638b: $7b
	add  b                                           ; $638c: $80
	ld   sp, hl                                      ; $638d: $f9
	add  b                                           ; $638e: $80
	ld   hl, sp+$00                                  ; $638f: $f8 $00
	ldh  a, [$80]                                    ; $6391: $f0 $80
	di                                               ; $6393: $f3
	add  c                                           ; $6394: $81
	rst  $30                                         ; $6395: $f7
	ld   bc, $dfd8                                   ; $6396: $01 $d8 $df
	add  b                                           ; $6399: $80
	and  e                                           ; $639a: $a3
	add  b                                           ; $639b: $80
	add  b                                           ; $639c: $80
	add  c                                           ; $639d: $81
	nop                                              ; $639e: $00
	add  b                                           ; $639f: $80
	jr   jr_0a2_6322                                 ; $63a0: $18 $80

	rst  $28                                         ; $63a2: $ef
	add  b                                           ; $63a3: $80
	rst  $10                                         ; $63a4: $d7
	ld   [bc], a                                     ; $63a5: $02
	cp   b                                           ; $63a6: $b8
	ld   h, a                                        ; $63a7: $67
	rst  JumpTable                                         ; $63a8: $df
	add  b                                           ; $63a9: $80
	cp   a                                           ; $63aa: $bf
	add  b                                           ; $63ab: $80
	ld   a, a                                        ; $63ac: $7f
	add  b                                           ; $63ad: $80
	ld   a, b                                        ; $63ae: $78
	add  c                                           ; $63af: $81
	nop                                              ; $63b0: $00
	ld   b, $f8                                      ; $63b1: $06 $f8
	ei                                               ; $63b3: $fb
	di                                               ; $63b4: $f3
	rst  $30                                         ; $63b5: $f7
	dec  b                                           ; $63b6: $05
	adc  [hl]                                        ; $63b7: $8e
	adc  h                                           ; $63b8: $8c
	add  b                                           ; $63b9: $80
	add  a                                           ; $63ba: $87
	add  b                                           ; $63bb: $80
	rlca                                             ; $63bc: $07
	add  b                                           ; $63bd: $80
	add  hl, sp                                      ; $63be: $39
	add  hl, bc                                      ; $63bf: $09
	cp   $ce                                         ; $63c0: $fe $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63c2: $cf
	adc  a                                           ; $63c3: $8f
	rrca                                             ; $63c4: $0f
	ld   b, a                                        ; $63c5: $47
	rlca                                             ; $63c6: $07
	scf                                              ; $63c7: $37
	inc  d                                           ; $63c8: $14
	inc  e                                           ; $63c9: $1c
	add  b                                           ; $63ca: $80
	adc  h                                           ; $63cb: $8c
	add  b                                           ; $63cc: $80
	db   $ec                                         ; $63cd: $ec
	add  h                                           ; $63ce: $84
	cp   $82                                         ; $63cf: $fe $82
	rst  $38                                         ; $63d1: $ff
	add  c                                           ; $63d2: $81
	ldh  a, [$80]                                    ; $63d3: $f0 $80
	di                                               ; $63d5: $f3
	ld   bc, $77f0                                   ; $63d6: $01 $f0 $77
	add  e                                           ; $63d9: $83
	ld   [hl], b                                     ; $63da: $70
	add  b                                           ; $63db: $80
	scf                                              ; $63dc: $37
	ld   a, [bc]                                     ; $63dd: $0a
	daa                                              ; $63de: $27
	cpl                                              ; $63df: $2f
	ld   [$3f07], sp                                 ; $63e0: $08 $07 $3f
	inc  a                                           ; $63e3: $3c
	inc  e                                           ; $63e4: $1c
	inc  de                                          ; $63e5: $13
	db   $d3                                         ; $63e6: $d3
	rra                                              ; $63e7: $1f
	cpl                                              ; $63e8: $2f
	add  c                                           ; $63e9: $81
	rrca                                             ; $63ea: $0f
	add  d                                           ; $63eb: $82
	rst  $28                                         ; $63ec: $ef
	nop                                              ; $63ed: $00
	rra                                              ; $63ee: $1f
	add  b                                           ; $63ef: $80
	pop  hl                                          ; $63f0: $e1
	add  b                                           ; $63f1: $80
	ld   bc, $fc80                                   ; $63f2: $01 $80 $fc
	add  b                                           ; $63f5: $80
	cp   $85                                         ; $63f6: $fe $85
	rst  $38                                         ; $63f8: $ff
	add  b                                           ; $63f9: $80
	sbc  a                                           ; $63fa: $9f
	add  b                                           ; $63fb: $80
	adc  a                                           ; $63fc: $8f

jr_0a2_63fd:
	add  b                                           ; $63fd: $80
	rst  ToBoot                                         ; $63fe: $c7
	dec  b                                           ; $63ff: $05
	db   $e3                                         ; $6400: $e3
	ld   h, e                                        ; $6401: $63
	ld   [hl], e                                     ; $6402: $73
	or   e                                           ; $6403: $b3
	cp   c                                           ; $6404: $b9
	ld   sp, hl                                      ; $6405: $f9
	add  e                                           ; $6406: $83
	rst  $38                                         ; $6407: $ff
	rst  $38                                         ; $6408: $ff
	nop                                              ; $6409: $00
	rst  $38                                         ; $640a: $ff
	nop                                              ; $640b: $00
	rst  $38                                         ; $640c: $ff
	nop                                              ; $640d: $00
	rst  $38                                         ; $640e: $ff
	nop                                              ; $640f: $00
	rst  $38                                         ; $6410: $ff
	nop                                              ; $6411: $00
	rst  $38                                         ; $6412: $ff
	nop                                              ; $6413: $00
	rst  $38                                         ; $6414: $ff
	nop                                              ; $6415: $00
	rst  $38                                         ; $6416: $ff
	nop                                              ; $6417: $00
	rst  $38                                         ; $6418: $ff
	nop                                              ; $6419: $00
	rst  $38                                         ; $641a: $ff
	nop                                              ; $641b: $00
	rst  $38                                         ; $641c: $ff
	nop                                              ; $641d: $00
	ldh  a, [c]                                      ; $641e: $f2
	nop                                              ; $641f: $00
	ld   e, c                                        ; $6420: $59
	nop                                              ; $6421: $00
	inc  b                                           ; $6422: $04
	adc  b                                           ; $6423: $88
	nop                                              ; $6424: $00
	add  hl, de                                      ; $6425: $19
	nop                                              ; $6426: $00
	inc  b                                           ; $6427: $04
	add  c                                           ; $6428: $81
	nop                                              ; $6429: $00
	jr   nz, jr_0a2_6432                             ; $642a: $20 $06

	ld   bc, $032d                                   ; $642c: $01 $2d $03
	ld   b, b                                        ; $642f: $40
	inc  h                                           ; $6430: $24
	dec  hl                                          ; $6431: $2b

jr_0a2_6432:
	ld   d, e                                        ; $6432: $53
	dec  c                                           ; $6433: $0d
	nop                                              ; $6434: $00
	pop  bc                                          ; $6435: $c1

jr_0a2_6436:
	nop                                              ; $6436: $00
	ld   a, [bc]                                     ; $6437: $0a
	nop                                              ; $6438: $00
	push de                                          ; $6439: $d5
	nop                                              ; $643a: $00
	ld   c, [hl]                                     ; $643b: $4e
	add  b                                           ; $643c: $80
	add  e                                           ; $643d: $83
	ldh  a, [rSVBK]                                  ; $643e: $f0 $70
	ld   a, h                                        ; $6440: $7c
	db   $fd                                         ; $6441: $fd
	cp   $81                                         ; $6442: $fe $81
	add  b                                           ; $6444: $80
	ldh  [rAUD4LEN], a                               ; $6445: $e0 $20
	jr   nc, jr_0a2_6489                             ; $6447: $30 $40

	ld   c, h                                        ; $6449: $4c
	inc  d                                           ; $644a: $14
	ld   d, a                                        ; $644b: $57
	add  b                                           ; $644c: $80
	add  hl, de                                      ; $644d: $19
	ld   h, $22                                      ; $644e: $26 $22
	ld   l, d                                        ; $6450: $6a
	jr   nz, jr_0a2_63fd                             ; $6451: $20 $aa

	add  hl, bc                                      ; $6453: $09
	ld   [hl], l                                     ; $6454: $75
	ld   bc, $0003                                   ; $6455: $01 $03 $00
	inc  c                                           ; $6458: $0c
	nop                                              ; $6459: $00
	ld   a, $0e                                      ; $645a: $3e $0e
	pop  af                                          ; $645c: $f1
	cp   c                                           ; $645d: $b9
	rst  $28                                         ; $645e: $ef
	ld   [hl], a                                     ; $645f: $77
	ld   e, a                                        ; $6460: $5f
	ld   l, a                                        ; $6461: $6f
	ld   a, a                                        ; $6462: $7f
	ld   e, a                                        ; $6463: $5f
	ld   a, [bc]                                     ; $6464: $0a
	jr   nz, @+$32                                   ; $6465: $20 $30

	add  b                                           ; $6467: $80
	adc  [hl]                                        ; $6468: $8e
	ld   b, d                                        ; $6469: $42
	ld   d, [hl]                                     ; $646a: $56
	dec  b                                           ; $646b: $05
	db   $fd                                         ; $646c: $fd
	ld   sp, hl                                      ; $646d: $f9
	rst  $38                                         ; $646e: $ff
	cp   $f1                                         ; $646f: $fe $f1
	rst  $38                                         ; $6471: $ff
	xor  $ff                                         ; $6472: $ee $ff
	daa                                              ; $6474: $27
	ld   b, a                                        ; $6475: $47
	add  b                                           ; $6476: $80
	ld   c, a                                        ; $6477: $4f
	add  b                                           ; $6478: $80
	ld   e, a                                        ; $6479: $5f
	ld   [bc], a                                     ; $647a: $02
	rra                                              ; $647b: $1f
	sbc  e                                           ; $647c: $9b
	cp   a                                           ; $647d: $bf
	add  c                                           ; $647e: $81
	or   d                                           ; $647f: $b2
	ld   [$e4ff], sp                                 ; $6480: $08 $ff $e4
	cp   $c8                                         ; $6483: $fe $c8
	sbc  e                                           ; $6485: $9b
	adc  a                                           ; $6486: $8f
	ld   a, a                                        ; $6487: $7f
	inc  bc                                          ; $6488: $03

jr_0a2_6489:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6489: $cf
	add  c                                           ; $648a: $81
	ld   bc, $8300                                   ; $648b: $01 $00 $83
	add  c                                           ; $648e: $81
	nop                                              ; $648f: $00
	dec  d                                           ; $6490: $15
	inc  b                                           ; $6491: $04
	nop                                              ; $6492: $00
	ld   b, d                                        ; $6493: $42
	nop                                              ; $6494: $00
	adc  b                                           ; $6495: $88
	ld   sp, $3c05                                   ; $6496: $31 $05 $3c
	ld   [$083d], sp                                 ; $6499: $08 $3d $08
	dec  a                                           ; $649c: $3d
	inc  h                                           ; $649d: $24
	inc  a                                           ; $649e: $3c
	ld   sp, $4111                                   ; $649f: $31 $11 $41
	ld   bc, $020a                                   ; $64a2: $01 $0a $02
	ld   [hl], a                                     ; $64a5: $77
	ccf                                              ; $64a6: $3f
	add  b                                           ; $64a7: $80
	inc  sp                                          ; $64a8: $33
	inc  bc                                          ; $64a9: $03
	ld   a, b                                        ; $64aa: $78
	ld   [hl], b                                     ; $64ab: $70

jr_0a2_64ac:
	ld   l, a                                        ; $64ac: $6f
	ld   h, b                                        ; $64ad: $60
	add  b                                           ; $64ae: $80
	ld   b, b                                        ; $64af: $40
	nop                                              ; $64b0: $00
	jr   c, jr_0a2_6436                              ; $64b1: $38 $83

	nop                                              ; $64b3: $00
	rla                                              ; $64b4: $17
	rst  JumpTable                                         ; $64b5: $df
	rst  $38                                         ; $64b6: $ff
	adc  a                                           ; $64b7: $8f
	sbc  a                                           ; $64b8: $9f
	ld   d, [hl]                                     ; $64b9: $56
	rra                                              ; $64ba: $1f
	ld   e, c                                        ; $64bb: $59
	rra                                              ; $64bc: $1f
	cp   a                                           ; $64bd: $bf
	ccf                                              ; $64be: $3f
	ld   e, a                                        ; $64bf: $5f
	rra                                              ; $64c0: $1f
	cpl                                              ; $64c1: $2f
	rrca                                             ; $64c2: $0f
	rla                                              ; $64c3: $17
	rlca                                             ; $64c4: $07
	ld   sp, hl                                      ; $64c5: $f9
	ld   [bc], a                                     ; $64c6: $02
	cp   b                                           ; $64c7: $b8
	nop                                              ; $64c8: $00
	jr   nc, @+$46                                   ; $64c9: $30 $44

	ld   b, b                                        ; $64cb: $40
	ld   a, b                                        ; $64cc: $78
	add  b                                           ; $64cd: $80
	ldh  [$84], a                                    ; $64ce: $e0 $84
	nop                                              ; $64d0: $00
	ld   [bc], a                                     ; $64d1: $02
	push de                                          ; $64d2: $d5
	ld   b, d                                        ; $64d3: $42
	db   $fd                                         ; $64d4: $fd
	add  c                                           ; $64d5: $81
	inc  h                                           ; $64d6: $24
	ld   bc, $0071                                   ; $64d7: $01 $71 $00
	add  b                                           ; $64da: $80
	rrca                                             ; $64db: $0f
	ld   c, $2f                                      ; $64dc: $0e $2f
	rrca                                             ; $64de: $0f
	rla                                              ; $64df: $17
	rlca                                             ; $64e0: $07
	dec  bc                                          ; $64e1: $0b
	inc  bc                                          ; $64e2: $03
	rst  ToBoot                                         ; $64e3: $c7
	add  b                                           ; $64e4: $80
	jr   nz, jr_0a2_6527                             ; $64e5: $20 $40

	ret  nc                                          ; $64e7: $d0

	ret  nz                                          ; $64e8: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64e9: $cf
	db   $10                                         ; $64ea: $10
	sub  b                                           ; $64eb: $90
	add  b                                           ; $64ec: $80
	or   l                                           ; $64ed: $b5
	ld   [bc], a                                     ; $64ee: $02
	add  c                                           ; $64ef: $81
	cp   a                                           ; $64f0: $bf
	cp   [hl]                                        ; $64f1: $be
	add  b                                           ; $64f2: $80
	ld   a, a                                        ; $64f3: $7f
	nop                                              ; $64f4: $00
	rst  $30                                         ; $64f5: $f7
	add  c                                           ; $64f6: $81
	rlca                                             ; $64f7: $07
	add  hl, bc                                      ; $64f8: $09
	rra                                              ; $64f9: $1f
	rrca                                             ; $64fa: $0f
	db   $ec                                         ; $64fb: $ec
	inc  c                                           ; $64fc: $0c
	nop                                              ; $64fd: $00
	or   c                                           ; $64fe: $b1
	cp   a                                           ; $64ff: $bf
	adc  [hl]                                        ; $6500: $8e
	cp   a                                           ; $6501: $bf
	ccf                                              ; $6502: $3f
	add  b                                           ; $6503: $80
	rst  $28                                         ; $6504: $ef
	nop                                              ; $6505: $00
	rst  $38                                         ; $6506: $ff
	add  e                                           ; $6507: $83
	nop                                              ; $6508: $00
	ld   b, $07                                      ; $6509: $06 $07
	inc  b                                           ; $650b: $04
	ccf                                              ; $650c: $3f
	inc  h                                           ; $650d: $24
	ld   hl, sp+$20                                  ; $650e: $f8 $20
	ld   b, b                                        ; $6510: $40
	add  c                                           ; $6511: $81
	nop                                              ; $6512: $00
	rlca                                             ; $6513: $07
	add  e                                           ; $6514: $83
	nop                                              ; $6515: $00
	dec  e                                           ; $6516: $1d
	ld   de, $90fe                                   ; $6517: $11 $fe $90
	pop  hl                                          ; $651a: $e1
	add  b                                           ; $651b: $80
	add  d                                           ; $651c: $82
	nop                                              ; $651d: $00
	add  b                                           ; $651e: $80
	ld   bc, $0f02                                   ; $651f: $01 $02 $0f
	ld   [$8307], sp                                 ; $6522: $08 $07 $83
	rst  $38                                         ; $6525: $ff
	add  d                                           ; $6526: $82

jr_0a2_6527:
	ld   a, a                                        ; $6527: $7f
	ld   a, [bc]                                     ; $6528: $0a
	cp   b                                           ; $6529: $b8
	jr   c, jr_0a2_64ac                              ; $652a: $38 $80

	rlca                                             ; $652c: $07
	nop                                              ; $652d: $00
	ld   hl, sp+$13                                  ; $652e: $f8 $13
	db   $ec                                         ; $6530: $ec
	db   $eb                                         ; $6531: $eb
	add  sp, -$1c                                    ; $6532: $e8 $e4
	add  c                                           ; $6534: $81
	ldh  [$80], a                                    ; $6535: $e0 $80
	add  b                                           ; $6537: $80
	daa                                              ; $6538: $27
	inc  b                                           ; $6539: $04
	ld   a, b                                        ; $653a: $78
	inc  bc                                          ; $653b: $03
	add  h                                           ; $653c: $84
	ld   a, h                                        ; $653d: $7c
	ld   a, a                                        ; $653e: $7f
	ret  nz                                          ; $653f: $c0

	add  b                                           ; $6540: $80
	add  e                                           ; $6541: $83
	add  d                                           ; $6542: $82
	cp   a                                           ; $6543: $bf
	db   $10                                         ; $6544: $10
	ld   [de], a                                     ; $6545: $12
	ld   c, h                                        ; $6546: $4c
	ld   l, a                                        ; $6547: $6f
	rra                                              ; $6548: $1f
	ld   a, a                                        ; $6549: $7f
	cpl                                              ; $654a: $2f
	ld   [hl], a                                     ; $654b: $77
	ld   b, a                                        ; $654c: $47
	ld   a, a                                        ; $654d: $7f
	inc  d                                           ; $654e: $14
	ldh  a, [c]                                      ; $654f: $f2
	nop                                              ; $6550: $00
	xor  $00                                         ; $6551: $ee $00
	adc  $00                                         ; $6553: $ce $00
	jr   nz, jr_0a2_6587                             ; $6555: $20 $30

	ld   a, [$eae0]                                  ; $6557: $fa $e0 $ea
	ldh  [$e2], a                                    ; $655a: $e0 $e2
	ret  nz                                          ; $655c: $c0

	add  $30                                         ; $655d: $c6 $30
	ld   c, d                                        ; $655f: $4a
	add  a                                           ; $6560: $87
	add  l                                           ; $6561: $85
	rst  $38                                         ; $6562: $ff
	inc  bc                                          ; $6563: $03
	ld   h, b                                        ; $6564: $60
	ld   l, a                                        ; $6565: $6f
	rrca                                             ; $6566: $0f
	or   $81                                         ; $6567: $f6 $81
	ld   b, $00                                      ; $6569: $06 $00
	rrca                                             ; $656b: $0f
	add  c                                           ; $656c: $81
	nop                                              ; $656d: $00
	ld   [$003f], sp                                 ; $656e: $08 $3f $00
	ld   [hl], c                                     ; $6571: $71
	ld   [hl], $fe                                   ; $6572: $36 $fe
	ld   a, d                                        ; $6574: $7a
	ld   a, e                                        ; $6575: $7b
	ld   c, e                                        ; $6576: $4b
	res  0, c                                        ; $6577: $cb $81
	add  e                                           ; $6579: $83
	nop                                              ; $657a: $00
	ld   a, e                                        ; $657b: $7b
	add  b                                           ; $657c: $80
	xor  l                                           ; $657d: $ad
	ld   b, $0b                                      ; $657e: $06 $0b
	nop                                              ; $6580: $00
	ld   h, b                                        ; $6581: $60
	xor  h                                           ; $6582: $ac
	jr   nz, @+$6a                                   ; $6583: $20 $68

	ld   [hl], b                                     ; $6585: $70
	add  b                                           ; $6586: $80

jr_0a2_6587:
	ld   h, b                                        ; $6587: $60
	add  d                                           ; $6588: $82
	ret  nz                                          ; $6589: $c0

	ld   bc, $fdff                                   ; $658a: $01 $ff $fd
	add  b                                           ; $658d: $80
	dec  c                                           ; $658e: $0d
	nop                                              ; $658f: $00
	inc  b                                           ; $6590: $04
	add  e                                           ; $6591: $83
	ld   [bc], a                                     ; $6592: $02
	nop                                              ; $6593: $00
	ld   [$0483], sp                                 ; $6594: $08 $83 $04
	nop                                              ; $6597: $00
	inc  c                                           ; $6598: $0c
	add  c                                           ; $6599: $81
	inc  bc                                          ; $659a: $03

jr_0a2_659b:
	ld   bc, $0105                                   ; $659b: $01 $05 $01
	add  b                                           ; $659e: $80
	nop                                              ; $659f: $00
	nop                                              ; $65a0: $00
	ld   [bc], a                                     ; $65a1: $02
	add  c                                           ; $65a2: $81
	ld   bc, $0082                                   ; $65a3: $01 $82 $00
	dec  c                                           ; $65a6: $0d
	rlca                                             ; $65a7: $07
	dec  bc                                          ; $65a8: $0b
	inc  bc                                          ; $65a9: $03
	dec  b                                           ; $65aa: $05
	inc  bc                                          ; $65ab: $03
	sub  b                                           ; $65ac: $90
	add  c                                           ; $65ad: $81
	add  sp, $08                                     ; $65ae: $e8 $08
	jr   jr_0a2_65ce                                 ; $65b0: $18 $1c

	cp   h                                           ; $65b2: $bc
	cp   [hl]                                        ; $65b3: $be
	sbc  $80                                         ; $65b4: $de $80
	rst  JumpTable                                         ; $65b6: $df
	nop                                              ; $65b7: $00
	jr   nz, @+$01                                   ; $65b8: $20 $ff

	nop                                              ; $65ba: $00
	rst  $38                                         ; $65bb: $ff
	nop                                              ; $65bc: $00
	rst  $38                                         ; $65bd: $ff
	nop                                              ; $65be: $00
	rst  $38                                         ; $65bf: $ff
	nop                                              ; $65c0: $00
	rst  $38                                         ; $65c1: $ff
	nop                                              ; $65c2: $00
	rst  $38                                         ; $65c3: $ff
	nop                                              ; $65c4: $00
	rst  $38                                         ; $65c5: $ff
	nop                                              ; $65c6: $00
	rst  $38                                         ; $65c7: $ff
	nop                                              ; $65c8: $00

jr_0a2_65c9:
	rst  $38                                         ; $65c9: $ff
	nop                                              ; $65ca: $00
	rst  $38                                         ; $65cb: $ff
	nop                                              ; $65cc: $00
	rst  $38                                         ; $65cd: $ff

jr_0a2_65ce:
	nop                                              ; $65ce: $00
	rst  $38                                         ; $65cf: $ff
	nop                                              ; $65d0: $00
	pop  de                                          ; $65d1: $d1
	nop                                              ; $65d2: $00
	ld   d, a                                        ; $65d3: $57
	nop                                              ; $65d4: $00
	inc  de                                          ; $65d5: $13
	cp   $00                                         ; $65d6: $fe $00
	inc  bc                                          ; $65d8: $03
	nop                                              ; $65d9: $00
	ld   c, $00                                      ; $65da: $0e $00
	inc  a                                           ; $65dc: $3c
	nop                                              ; $65dd: $00
	ld   hl, sp+$00                                  ; $65de: $f8 $00
	add  sp, $01                                     ; $65e0: $e8 $01
	and  c                                           ; $65e2: $a1
	rlca                                             ; $65e3: $07
	add  a                                           ; $65e4: $87
	rrca                                             ; $65e5: $0f
	adc  a                                           ; $65e6: $8f
	ld   bc, $0381                                   ; $65e7: $01 $81 $03
	add  c                                           ; $65ea: $81
	rlca                                             ; $65eb: $07
	ld   bc, $191f                                   ; $65ec: $01 $1f $19
	add  b                                           ; $65ef: $80
	ld   a, a                                        ; $65f0: $7f
	ld   bc, $fcff                                   ; $65f1: $01 $ff $fc
	add  c                                           ; $65f4: $81
	rst  $38                                         ; $65f5: $ff
	jr   nz, jr_0a2_65c9                             ; $65f6: $20 $d1

	add  b                                           ; $65f8: $80
	sbc  b                                           ; $65f9: $98
	add  b                                           ; $65fa: $80
	xor  h                                           ; $65fb: $ac
	ret  nz                                          ; $65fc: $c0

	sub  $e0                                         ; $65fd: $d6 $e0
	db   $eb                                         ; $65ff: $eb
	ldh  a, [$f7]                                    ; $6600: $f0 $f7
	ld   hl, sp-$03                                  ; $6602: $f8 $fd
	ldh  [$fe], a                                    ; $6604: $e0 $fe
	add  b                                           ; $6606: $80
	ld   a, c                                        ; $6607: $79
	inc  bc                                          ; $6608: $03
	inc  hl                                          ; $6609: $23
	inc  bc                                          ; $660a: $03
	ld   b, a                                        ; $660b: $47
	rlca                                             ; $660c: $07
	add  a                                           ; $660d: $87
	rlca                                             ; $660e: $07
	adc  b                                           ; $660f: $88
	rrca                                             ; $6610: $0f
	sub  a                                           ; $6611: $97
	rra                                              ; $6612: $1f
	cpl                                              ; $6613: $2f
	ccf                                              ; $6614: $3f
	ld   e, a                                        ; $6615: $5f
	ld   a, a                                        ; $6616: $7f
	ldh  [$81], a                                    ; $6617: $e0 $81
	jr   nz, jr_0a2_659b                             ; $6619: $20 $80

	nop                                              ; $661b: $00
	add  b                                           ; $661c: $80
	ld   bc, $800c                                   ; $661d: $01 $0c $80
	nop                                              ; $6620: $00
	ldh  [$80], a                                    ; $6621: $e0 $80
	ld   [hl], b                                     ; $6623: $70
	ldh  [$b8], a                                    ; $6624: $e0 $b8
	ldh  a, [$0b]                                    ; $6626: $f0 $0b
	nop                                              ; $6628: $00
	rla                                              ; $6629: $17
	nop                                              ; $662a: $00
	inc  h                                           ; $662b: $24
	adc  c                                           ; $662c: $89
	nop                                              ; $662d: $00
	db   $10                                         ; $662e: $10
	inc  sp                                          ; $662f: $33
	nop                                              ; $6630: $00
	ld   [hl], h                                     ; $6631: $74
	nop                                              ; $6632: $00
	ret  z                                           ; $6633: $c8

	nop                                              ; $6634: $00
	sub  h                                           ; $6635: $94
	nop                                              ; $6636: $00
	inc  l                                           ; $6637: $2c
	nop                                              ; $6638: $00
	jr   jr_0a2_663b                                 ; $6639: $18 $00

jr_0a2_663b:
	add  hl, hl                                      ; $663b: $29
	nop                                              ; $663c: $00
	inc  bc                                          ; $663d: $03
	nop                                              ; $663e: $00
	ld   a, [$0f80]                                  ; $663f: $fa $80 $0f
	add  e                                           ; $6642: $83
	rra                                              ; $6643: $1f
	add  hl, de                                      ; $6644: $19
	ld   a, [de]                                     ; $6645: $1a
	rra                                              ; $6646: $1f
	sbc  a                                           ; $6647: $9f
	ccf                                              ; $6648: $3f
	or   a                                           ; $6649: $b7
	ccf                                              ; $664a: $3f
	dec  sp                                          ; $664b: $3b
	ccf                                              ; $664c: $3f
	or   a                                           ; $664d: $b7
	rst  $38                                         ; $664e: $ff
	ld   e, a                                        ; $664f: $5f
	ccf                                              ; $6650: $3f
	call c, Call_0a2_791f                            ; $6651: $dc $1f $79
	ccf                                              ; $6654: $3f
	rst  JumpTable                                         ; $6655: $df
	ld   a, a                                        ; $6656: $7f
	inc  de                                          ; $6657: $13
	ccf                                              ; $6658: $3f
	rst  ToBoot                                         ; $6659: $c7
	rra                                              ; $665a: $1f
	cp   $3f                                         ; $665b: $fe $3f
	ld   [hl], c                                     ; $665d: $71
	add  b                                           ; $665e: $80
	add  [hl]                                        ; $665f: $86
	nop                                              ; $6660: $00
	add  d                                           ; $6661: $82
	db   $10                                         ; $6662: $10
	add  b                                           ; $6663: $80

Call_0a2_6664:
	nop                                              ; $6664: $00
	add  b                                           ; $6665: $80
	ld   [bc], a                                     ; $6666: $02
	adc  b                                           ; $6667: $88
	nop                                              ; $6668: $00
	add  b                                           ; $6669: $80
	ret  nz                                          ; $666a: $c0

	add  b                                           ; $666b: $80
	add  b                                           ; $666c: $80
	add  b                                           ; $666d: $80
	ld   de, $0380                                   ; $666e: $11 $80 $03
	add  b                                           ; $6671: $80
	ld   bc, $0080                                   ; $6672: $01 $80 $00
	add  b                                           ; $6675: $80
	ld   [bc], a                                     ; $6676: $02
	add  b                                           ; $6677: $80
	rlca                                             ; $6678: $07
	add  b                                           ; $6679: $80
	ld   [bc], a                                     ; $667a: $02
	add  b                                           ; $667b: $80
	dec  d                                           ; $667c: $15
	inc  b                                           ; $667d: $04
	ld   a, $00                                      ; $667e: $3e $00
	inc  bc                                          ; $6680: $03

jr_0a2_6681:
	jr   @+$32                                       ; $6681: $18 $30

	add  c                                           ; $6683: $81
	nop                                              ; $6684: $00
	ld   [$001c], sp                                 ; $6685: $08 $1c $00
	ld   b, $00                                      ; $6688: $06 $00
	ld   e, $00                                      ; $668a: $1e $00
	ld   a, [de]                                     ; $668c: $1a
	inc  bc                                          ; $668d: $03
	add  sp, -$7f                                    ; $668e: $e8 $81
	ld   b, b                                        ; $6690: $40
	rlca                                             ; $6691: $07
	ld   d, b                                        ; $6692: $50
	jr   nz, @+$62                                   ; $6693: $20 $60

	nop                                              ; $6695: $00
	stop                                             ; $6696: $10 $00
	ldh  a, [rLCDC]                                  ; $6698: $f0 $40
	add  b                                           ; $669a: $80
	jr   nz, jr_0a2_669f                             ; $669b: $20 $02

	ld   h, b                                        ; $669d: $60
	nop                                              ; $669e: $00

jr_0a2_669f:
	ld   e, h                                        ; $669f: $5c
	add  c                                           ; $66a0: $81
	nop                                              ; $66a1: $00
	inc  b                                           ; $66a2: $04
	ret  nz                                          ; $66a3: $c0

	nop                                              ; $66a4: $00
	ldh  a, [rP1]                                    ; $66a5: $f0 $00
	ld   [de], a                                     ; $66a7: $12
	add  e                                           ; $66a8: $83
	nop                                              ; $66a9: $00
	ld   a, [bc]                                     ; $66aa: $0a
	inc  de                                          ; $66ab: $13
	nop                                              ; $66ac: $00
	dec  c                                           ; $66ad: $0d
	nop                                              ; $66ae: $00
	stop                                             ; $66af: $10 $00
	ld   de, $1e00                                   ; $66b1: $11 $00 $1e
	nop                                              ; $66b4: $00
	rrca                                             ; $66b5: $0f
	add  c                                           ; $66b6: $81
	nop                                              ; $66b7: $00
	inc  b                                           ; $66b8: $04
	add  c                                           ; $66b9: $81
	nop                                              ; $66ba: $00
	inc  bc                                          ; $66bb: $03
	nop                                              ; $66bc: $00
	ld   [bc], a                                     ; $66bd: $02
	add  e                                           ; $66be: $83
	nop                                              ; $66bf: $00
	add  b                                           ; $66c0: $80
	jr   nz, jr_0a2_66c3                             ; $66c1: $20 $00

jr_0a2_66c3:
	add  b                                           ; $66c3: $80
	add  l                                           ; $66c4: $85
	nop                                              ; $66c5: $00
	add  d                                           ; $66c6: $82
	ld   [$008b], sp                                 ; $66c7: $08 $8b $00
	ld   [bc], a                                     ; $66ca: $02
	ld   bc, $2021                                   ; $66cb: $01 $21 $20
	add  b                                           ; $66ce: $80
	nop                                              ; $66cf: $00
	add  b                                           ; $66d0: $80
	ld   bc, $0280                                   ; $66d1: $01 $80 $02
	inc  bc                                          ; $66d4: $03
	ld   bc, $0709                                   ; $66d5: $01 $09 $07
	rrca                                             ; $66d8: $0f
	add  b                                           ; $66d9: $80
	inc  bc                                          ; $66da: $03
	adc  b                                           ; $66db: $88
	nop                                              ; $66dc: $00
	rla                                              ; $66dd: $17
	inc  bc                                          ; $66de: $03
	nop                                              ; $66df: $00
	rrca                                             ; $66e0: $0f
	nop                                              ; $66e1: $00
	ld   a, l                                        ; $66e2: $7d
	nop                                              ; $66e3: $00
	ld   l, h                                        ; $66e4: $6c
	nop                                              ; $66e5: $00
	jr   nz, jr_0a2_66e8                             ; $66e6: $20 $00

jr_0a2_66e8:
	ld   b, $00                                      ; $66e8: $06 $00
	ld   b, b                                        ; $66ea: $40
	nop                                              ; $66eb: $00
	ret  nz                                          ; $66ec: $c0

	nop                                              ; $66ed: $00
	call z, $8000                                    ; $66ee: $cc $00 $80
	nop                                              ; $66f1: $00
	jr   jr_0a2_66f4                                 ; $66f2: $18 $00

jr_0a2_66f4:
	xor  $01                                         ; $66f4: $ee $01
	adc  h                                           ; $66f6: $8c
	nop                                              ; $66f7: $00
	add  b                                           ; $66f8: $80
	dec  b                                           ; $66f9: $05
	add  d                                           ; $66fa: $82
	ld   [bc], a                                     ; $66fb: $02
	add  b                                           ; $66fc: $80
	nop                                              ; $66fd: $00
	add  b                                           ; $66fe: $80
	jr   nz, jr_0a2_6681                             ; $66ff: $20 $80

	ld   d, b                                        ; $6701: $50
	add  b                                           ; $6702: $80
	jr   z, jr_0a2_6707                              ; $6703: $28 $02

	dec  d                                           ; $6705: $15
	dec  e                                           ; $6706: $1d

jr_0a2_6707:
	ld   [$0087], sp                                 ; $6707: $08 $87 $00
	ld   [$003f], sp                                 ; $670a: $08 $3f $00
	inc  a                                           ; $670d: $3c
	nop                                              ; $670e: $00
	inc  e                                           ; $670f: $1c
	nop                                              ; $6710: $00
	jr   jr_0a2_6713                                 ; $6711: $18 $00

jr_0a2_6713:
	rlca                                             ; $6713: $07
	add  c                                           ; $6714: $81
	nop                                              ; $6715: $00
	inc  b                                           ; $6716: $04
	rlca                                             ; $6717: $07
	nop                                              ; $6718: $00
	ld   a, b                                        ; $6719: $78
	nop                                              ; $671a: $00
	add  b                                           ; $671b: $80
	add  c                                           ; $671c: $81
	nop                                              ; $671d: $00
	ld   [hl+], a                                    ; $671e: $22
	ld   hl, $5900                                   ; $671f: $21 $00 $59
	nop                                              ; $6722: $00
	sbc  b                                           ; $6723: $98
	nop                                              ; $6724: $00
	ldh  [rP1], a                                    ; $6725: $e0 $00
	ld   bc, $0500                                   ; $6727: $01 $00 $05
	nop                                              ; $672a: $00
	inc  e                                           ; $672b: $1c
	ld   bc, $0779                                   ; $672c: $01 $79 $07
	rst  $20                                         ; $672f: $e7
	rrca                                             ; $6730: $0f
	ld   l, [hl]                                     ; $6731: $6e
	ld   bc, $0323                                   ; $6732: $01 $23 $03
	ld   b, e                                        ; $6735: $43
	inc  bc                                          ; $6736: $03
	rst  ToBoot                                         ; $6737: $c7
	rlca                                             ; $6738: $07
	call nz, $0b07                                   ; $6739: $c4 $07 $0b
	rrca                                             ; $673c: $0f
	sub  a                                           ; $673d: $97
	rra                                              ; $673e: $1f
	cpl                                              ; $673f: $2f
	ccf                                              ; $6740: $3f
	ldh  [$83], a                                    ; $6741: $e0 $83
	nop                                              ; $6743: $00
	add  c                                           ; $6744: $81
	add  b                                           ; $6745: $80
	dec  c                                           ; $6746: $0d
	nop                                              ; $6747: $00
	ldh  [$80], a                                    ; $6748: $e0 $80
	ld   [hl], d                                     ; $674a: $72
	ldh  [c], a                                      ; $674b: $e2
	cp   b                                           ; $674c: $b8
	ldh  a, [$3f]                                    ; $674d: $f0 $3f
	nop                                              ; $674f: $00
	dec  bc                                          ; $6750: $0b
	nop                                              ; $6751: $00
	rrca                                             ; $6752: $0f
	nop                                              ; $6753: $00
	inc  bc                                          ; $6754: $03
	add  a                                           ; $6755: $87
	nop                                              ; $6756: $00
	inc  d                                           ; $6757: $14
	add  hl, sp                                      ; $6758: $39
	nop                                              ; $6759: $00
	rst  JumpTable                                         ; $675a: $df
	nop                                              ; $675b: $00
	ld   l, a                                        ; $675c: $6f
	nop                                              ; $675d: $00
	sbc  d                                           ; $675e: $9a
	nop                                              ; $675f: $00
	inc  [hl]                                        ; $6760: $34
	nop                                              ; $6761: $00
	ld   [$2200], sp                                 ; $6762: $08 $00 $22
	nop                                              ; $6765: $00
	ld   b, $00                                      ; $6766: $06 $00
	sub  h                                           ; $6768: $94
	rrca                                             ; $6769: $0f
	rst  $28                                         ; $676a: $ef
	rra                                              ; $676b: $1f
	sbc  a                                           ; $676c: $9f
	add  c                                           ; $676d: $81
	rra                                              ; $676e: $1f
	nop                                              ; $676f: $00
	ld   a, [de]                                     ; $6770: $1a
	add  b                                           ; $6771: $80
	rra                                              ; $6772: $1f
	dec  b                                           ; $6773: $05
	ccf                                              ; $6774: $3f
	scf                                              ; $6775: $37
	ccf                                              ; $6776: $3f
	dec  sp                                          ; $6777: $3b
	ccf                                              ; $6778: $3f
	ret                                              ; $6779: $c9


	add  c                                           ; $677a: $81
	nop                                              ; $677b: $00
	add  d                                           ; $677c: $82
	ld   bc, $0094                                   ; $677d: $01 $94 $00
	add  b                                           ; $6780: $80
	jr   nz, @+$01                                   ; $6781: $20 $ff

	nop                                              ; $6783: $00
	db   $ed                                         ; $6784: $ed
	nop                                              ; $6785: $00
	ld   hl, sp-$19                                  ; $6786: $f8 $e7
	ld   hl, sp-$19                                  ; $6788: $f8 $e7
	ld   hl, sp-$19                                  ; $678a: $f8 $e7
	ld   hl, sp-$39                                  ; $678c: $f8 $c7
	ldh  a, [$cf]                                    ; $678e: $f0 $cf
	ldh  a, [$cf]                                    ; $6790: $f0 $cf
	ldh  a, [rIE]                                    ; $6792: $f0 $ff
	db   $fc                                         ; $6794: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6795: $cf
	ld   a, [hl]                                     ; $6796: $7e
	ld   a, e                                        ; $6797: $7b
	ld   [hl], $35                                   ; $6798: $36 $35
	ccf                                              ; $679a: $3f
	ld   a, [hl+]                                    ; $679b: $2a
	add  hl, sp                                      ; $679c: $39
	ld   [hl], $20                                   ; $679d: $36 $20
	ccf                                              ; $679f: $3f
	jr   nz, jr_0a2_67e1                             ; $67a0: $20 $3f

	jr   nz, jr_0a2_67e3                             ; $67a2: $20 $3f

	inc  hl                                          ; $67a4: $23
	ld   a, $ec                                      ; $67a5: $3e $ec
	inc  de                                          ; $67a7: $13
	nop                                              ; $67a8: $00
	rst  $38                                         ; $67a9: $ff
	nop                                              ; $67aa: $00
	rst  $38                                         ; $67ab: $ff
	nop                                              ; $67ac: $00
	rst  $38                                         ; $67ad: $ff
	nop                                              ; $67ae: $00
	rst  $38                                         ; $67af: $ff
	nop                                              ; $67b0: $00
	rst  $38                                         ; $67b1: $ff
	nop                                              ; $67b2: $00
	rst  $38                                         ; $67b3: $ff
	nop                                              ; $67b4: $00
	rst  $38                                         ; $67b5: $ff
	inc  bc                                          ; $67b6: $03
	db   $fd                                         ; $67b7: $fd
	rrca                                             ; $67b8: $0f
	or   $1d                                         ; $67b9: $f6 $1d
	db   $ed                                         ; $67bb: $ed
	rrca                                             ; $67bc: $0f
	or   $03                                         ; $67bd: $f6 $03
	rst  $38                                         ; $67bf: $ff
	nop                                              ; $67c0: $00
	rst  $38                                         ; $67c1: $ff
	nop                                              ; $67c2: $00
	rst  $20                                         ; $67c3: $e7
	add  b                                           ; $67c4: $80
	ld   l, a                                        ; $67c5: $6f
	rra                                              ; $67c6: $1f
	pop  hl                                          ; $67c7: $e1
	rrca                                             ; $67c8: $0f
	pop  af                                          ; $67c9: $f1
	ld   b, $fa                                      ; $67ca: $06 $fa
	ld   b, $fa                                      ; $67cc: $06 $fa
	inc  b                                           ; $67ce: $04
	db   $fc                                         ; $67cf: $fc
	inc  b                                           ; $67d0: $04
	db   $fc                                         ; $67d1: $fc
	add  hl, bc                                      ; $67d2: $09
	ld   sp, hl                                      ; $67d3: $f9
	add  hl, bc                                      ; $67d4: $09
	ld   sp, hl                                      ; $67d5: $f9
	ld   sp, hl                                      ; $67d6: $f9
	ld   sp, hl                                      ; $67d7: $f9
	ld   sp, hl                                      ; $67d8: $f9
	add  hl, bc                                      ; $67d9: $09
	ld   sp, hl                                      ; $67da: $f9
	jp   hl                                          ; $67db: $e9


	sbc  b                                           ; $67dc: $98
	sbc  b                                           ; $67dd: $98
	sbc  b                                           ; $67de: $98
	ret  z                                           ; $67df: $c8

	db   $ec                                         ; $67e0: $ec

jr_0a2_67e1:
	inc  d                                           ; $67e1: $14
	inc  c                                           ; $67e2: $0c

jr_0a2_67e3:
	db   $f4                                         ; $67e3: $f4
	inc  e                                           ; $67e4: $1c
	db   $e4                                         ; $67e5: $e4
	ld   h, [hl]                                     ; $67e6: $66
	ld   e, e                                        ; $67e7: $5b
	ld   a, $3d                                      ; $67e8: $3e $3d
	ccf                                              ; $67ea: $3f
	ld   l, $39                                      ; $67eb: $2e $39
	ld   [hl], $20                                   ; $67ed: $36 $20
	ccf                                              ; $67ef: $3f
	jr   nz, jr_0a2_6831                             ; $67f0: $20 $3f

	jr   nz, jr_0a2_6833                             ; $67f2: $20 $3f

	inc  hl                                          ; $67f4: $23
	ld   a, $03                                      ; $67f5: $3e $03
	db   $fd                                         ; $67f7: $fd
	rrca                                             ; $67f8: $0f
	or   $1f                                         ; $67f9: $f6 $1f
	db   $ed                                         ; $67fb: $ed
	rrca                                             ; $67fc: $0f
	or   $03                                         ; $67fd: $f6 $03
	rst  $38                                         ; $67ff: $ff
	nop                                              ; $6800: $00
	rst  $38                                         ; $6801: $ff
	nop                                              ; $6802: $00
	rst  $20                                         ; $6803: $e7
	add  b                                           ; $6804: $80
	ld   l, a                                        ; $6805: $6f
	ld   sp, hl                                      ; $6806: $f9
	ld   sp, hl                                      ; $6807: $f9
	adc  c                                           ; $6808: $89
	ld   a, c                                        ; $6809: $79
	ld   sp, hl                                      ; $680a: $f9
	ret                                              ; $680b: $c9


	ld   hl, sp-$08                                  ; $680c: $f8 $f8
	sbc  b                                           ; $680e: $98
	ret  z                                           ; $680f: $c8

	db   $ec                                         ; $6810: $ec
	inc  d                                           ; $6811: $14
	inc  c                                           ; $6812: $0c
	db   $f4                                         ; $6813: $f4
	inc  e                                           ; $6814: $1c
	db   $e4                                         ; $6815: $e4
	ld   h, [hl]                                     ; $6816: $66
	ld   e, e                                        ; $6817: $5b
	ld   [hl-], a                                    ; $6818: $32
	dec  l                                           ; $6819: $2d
	ccf                                              ; $681a: $3f
	ld   [hl-], a                                    ; $681b: $32
	ld   a, $3d                                      ; $681c: $3e $3d
	jr   nz, jr_0a2_685f                             ; $681e: $20 $3f

	jr   nz, jr_0a2_6861                             ; $6820: $20 $3f

	jr   nz, jr_0a2_6863                             ; $6822: $20 $3f

	inc  hl                                          ; $6824: $23
	ld   a, $03                                      ; $6825: $3e $03
	db   $fd                                         ; $6827: $fd
	rrca                                             ; $6828: $0f
	or   $1e                                         ; $6829: $f6 $1e
	db   $ed                                         ; $682b: $ed
	rrca                                             ; $682c: $0f
	or   $03                                         ; $682d: $f6 $03
	rst  $38                                         ; $682f: $ff
	nop                                              ; $6830: $00

jr_0a2_6831:
	rst  $38                                         ; $6831: $ff
	nop                                              ; $6832: $00

jr_0a2_6833:
	rst  $20                                         ; $6833: $e7
	add  b                                           ; $6834: $80
	ld   l, a                                        ; $6835: $6f
	ld   sp, hl                                      ; $6836: $f9
	ld   sp, hl                                      ; $6837: $f9
	adc  c                                           ; $6838: $89
	ld   a, c                                        ; $6839: $79
	add  hl, sp                                      ; $683a: $39

jr_0a2_683b:
	ret                                              ; $683b: $c9


	ld   hl, sp+$38                                  ; $683c: $f8 $38
	ld   hl, sp-$38                                  ; $683e: $f8 $c8
	db   $ec                                         ; $6840: $ec
	inc  d                                           ; $6841: $14
	inc  c                                           ; $6842: $0c
	db   $f4                                         ; $6843: $f4
	inc  e                                           ; $6844: $1c
	db   $e4                                         ; $6845: $e4
	ld   [hl], b                                     ; $6846: $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6847: $cf
	ld   h, b                                        ; $6848: $60
	sbc  a                                           ; $6849: $9f
	jr   nc, jr_0a2_683b                             ; $684a: $30 $ef

	inc  c                                           ; $684c: $0c
	rst  $30                                         ; $684d: $f7
	sub  b                                           ; $684e: $90
	rst  $28                                         ; $684f: $ef
	ld   h, b                                        ; $6850: $60
	ld   e, a                                        ; $6851: $5f
	jr   nc, @+$31                                   ; $6852: $30 $2f

	sbc  b                                           ; $6854: $98
	sub  a                                           ; $6855: $97
	adc  a                                           ; $6856: $8f
	adc  c                                           ; $6857: $89
	add  [hl]                                        ; $6858: $86
	add  [hl]                                        ; $6859: $86
	ld   [bc], a                                     ; $685a: $02
	ld   [bc], a                                     ; $685b: $02
	ld   [bc], a                                     ; $685c: $02
	ld   [bc], a                                     ; $685d: $02
	nop                                              ; $685e: $00

jr_0a2_685f:
	nop                                              ; $685f: $00
	nop                                              ; $6860: $00

jr_0a2_6861:
	nop                                              ; $6861: $00
	nop                                              ; $6862: $00

jr_0a2_6863:
	nop                                              ; $6863: $00
	nop                                              ; $6864: $00
	nop                                              ; $6865: $00
	ld   [hl], b                                     ; $6866: $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6867: $cf
	ld   h, b                                        ; $6868: $60
	sbc  a                                           ; $6869: $9f
	jr   c, @-$17                                    ; $686a: $38 $e7

	inc  [hl]                                        ; $686c: $34
	rst  JumpTable                                         ; $686d: $df
	sbc  h                                           ; $686e: $9c
	db   $eb                                         ; $686f: $eb
	ld   a, b                                        ; $6870: $78
	ld   b, a                                        ; $6871: $47
	jr   nc, jr_0a2_68a3                             ; $6872: $30 $2f

	sbc  b                                           ; $6874: $98
	sub  a                                           ; $6875: $97
	ld   hl, sp-$19                                  ; $6876: $f8 $e7
	ld   hl, sp-$19                                  ; $6878: $f8 $e7
	ld   hl, sp-$19                                  ; $687a: $f8 $e7
	ld   hl, sp-$39                                  ; $687c: $f8 $c7
	ldh  a, [$cf]                                    ; $687e: $f0 $cf
	ldh  a, [$cf]                                    ; $6880: $f0 $cf
	ldh  a, [$ef]                                    ; $6882: $f0 $ef
	ld   hl, sp-$21                                  ; $6884: $f8 $df
	ld   a, h                                        ; $6886: $7c
	ld   a, a                                        ; $6887: $7f
	ld   [hl], $37                                   ; $6888: $36 $37
	ccf                                              ; $688a: $3f
	ld   a, [hl+]                                    ; $688b: $2a
	add  hl, sp                                      ; $688c: $39
	ld   [hl], $20                                   ; $688d: $36 $20
	ccf                                              ; $688f: $3f
	jr   nz, jr_0a2_68d1                             ; $6890: $20 $3f

	jr   nz, jr_0a2_68d3                             ; $6892: $20 $3f

	inc  hl                                          ; $6894: $23
	ld   a, $00                                      ; $6895: $3e $00
	rst  $38                                         ; $6897: $ff
	daa                                              ; $6898: $27
	db   $db                                         ; $6899: $db
	dec  a                                           ; $689a: $3d
	db   $dd                                         ; $689b: $dd
	rra                                              ; $689c: $1f
	and  $03                                         ; $689d: $e6 $03
	rst  $38                                         ; $689f: $ff
	nop                                              ; $68a0: $00
	rst  $38                                         ; $68a1: $ff
	nop                                              ; $68a2: $00

jr_0a2_68a3:
	rst  $20                                         ; $68a3: $e7
	add  b                                           ; $68a4: $80
	ld   l, a                                        ; $68a5: $6f
	ld   a, c                                        ; $68a6: $79
	cp   c                                           ; $68a7: $b9
	ld   sp, hl                                      ; $68a8: $f9
	ret                                              ; $68a9: $c9


	ld   sp, hl                                      ; $68aa: $f9
	ld   sp, hl                                      ; $68ab: $f9
	sbc  b                                           ; $68ac: $98
	sbc  b                                           ; $68ad: $98
	sbc  b                                           ; $68ae: $98
	ret  z                                           ; $68af: $c8

	db   $ec                                         ; $68b0: $ec
	inc  d                                           ; $68b1: $14
	inc  c                                           ; $68b2: $0c
	db   $f4                                         ; $68b3: $f4
	inc  e                                           ; $68b4: $1c
	db   $e4                                         ; $68b5: $e4
	ld   a, h                                        ; $68b6: $7c
	ld   c, a                                        ; $68b7: $4f
	ld   a, $3f                                      ; $68b8: $3e $3f
	ccf                                              ; $68ba: $3f
	ld   l, $39                                      ; $68bb: $2e $39
	ld   [hl], $20                                   ; $68bd: $36 $20
	ccf                                              ; $68bf: $3f
	jr   nz, jr_0a2_6901                             ; $68c0: $20 $3f

	jr   nz, jr_0a2_6903                             ; $68c2: $20 $3f

	inc  hl                                          ; $68c4: $23
	ld   a, $00                                      ; $68c5: $3e $00
	rst  $38                                         ; $68c7: $ff
	daa                                              ; $68c8: $27
	db   $db                                         ; $68c9: $db
	ccf                                              ; $68ca: $3f
	db   $dd                                         ; $68cb: $dd
	rra                                              ; $68cc: $1f
	and  $03                                         ; $68cd: $e6 $03
	rst  $38                                         ; $68cf: $ff
	nop                                              ; $68d0: $00

jr_0a2_68d1:
	rst  $38                                         ; $68d1: $ff
	nop                                              ; $68d2: $00

jr_0a2_68d3:
	rst  $20                                         ; $68d3: $e7
	add  b                                           ; $68d4: $80
	ld   l, a                                        ; $68d5: $6f
	ld   a, c                                        ; $68d6: $79
	cp   c                                           ; $68d7: $b9
	ld   sp, hl                                      ; $68d8: $f9
	ret                                              ; $68d9: $c9


	reti                                             ; $68da: $d9


	xor  c                                           ; $68db: $a9
	ld   hl, sp-$08                                  ; $68dc: $f8 $f8
	sbc  b                                           ; $68de: $98
	ret  z                                           ; $68df: $c8

	db   $ec                                         ; $68e0: $ec
	inc  d                                           ; $68e1: $14
	inc  c                                           ; $68e2: $0c
	db   $f4                                         ; $68e3: $f4
	inc  e                                           ; $68e4: $1c
	db   $e4                                         ; $68e5: $e4
	ld   a, h                                        ; $68e6: $7c
	ld   b, a                                        ; $68e7: $47
	ld   [hl-], a                                    ; $68e8: $32
	cpl                                              ; $68e9: $2f
	ccf                                              ; $68ea: $3f
	ld   [hl-], a                                    ; $68eb: $32
	dec  a                                           ; $68ec: $3d
	ld   a, $20                                      ; $68ed: $3e $20
	ccf                                              ; $68ef: $3f
	jr   nz, jr_0a2_6931                             ; $68f0: $20 $3f

	jr   nz, @+$41                                   ; $68f2: $20 $3f

	inc  hl                                          ; $68f4: $23
	ld   a, $00                                      ; $68f5: $3e $00
	rst  $38                                         ; $68f7: $ff
	daa                                              ; $68f8: $27
	db   $db                                         ; $68f9: $db
	ld   a, $dd                                      ; $68fa: $3e $dd
	rra                                              ; $68fc: $1f
	and  $03                                         ; $68fd: $e6 $03
	rst  $38                                         ; $68ff: $ff
	nop                                              ; $6900: $00

jr_0a2_6901:
	rst  $38                                         ; $6901: $ff
	nop                                              ; $6902: $00

jr_0a2_6903:
	rst  $20                                         ; $6903: $e7
	add  b                                           ; $6904: $80
	ld   l, a                                        ; $6905: $6f
	ld   a, c                                        ; $6906: $79
	cp   c                                           ; $6907: $b9
	jp   hl                                          ; $6908: $e9


	reti                                             ; $6909: $d9


	add  hl, de                                      ; $690a: $19
	jp   hl                                          ; $690b: $e9


	ld   hl, sp+$38                                  ; $690c: $f8 $38
	ld   hl, sp-$38                                  ; $690e: $f8 $c8
	db   $ec                                         ; $6910: $ec
	inc  d                                           ; $6911: $14
	inc  c                                           ; $6912: $0c
	db   $f4                                         ; $6913: $f4
	inc  e                                           ; $6914: $1c
	db   $e4                                         ; $6915: $e4
	ld   [hl], b                                     ; $6916: $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6917: $cf
	ld   h, b                                        ; $6918: $60
	sbc  a                                           ; $6919: $9f
	jr   c, jr_0a2_6903                              ; $691a: $38 $e7

	inc  b                                           ; $691c: $04
	rst  $38                                         ; $691d: $ff
	sub  b                                           ; $691e: $90
	rst  $28                                         ; $691f: $ef
	ld   h, b                                        ; $6920: $60
	ld   e, a                                        ; $6921: $5f
	jr   nc, jr_0a2_6953                             ; $6922: $30 $2f

	sbc  b                                           ; $6924: $98
	sub  a                                           ; $6925: $97
	ld   [hl], b                                     ; $6926: $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6927: $cf
	ld   h, b                                        ; $6928: $60
	sbc  a                                           ; $6929: $9f
	jr   c, @-$0f                                    ; $692a: $38 $ef

	inc  [hl]                                        ; $692c: $34
	rst  JumpTable                                         ; $692d: $df
	sub  h                                           ; $692e: $94
	rst  $38                                         ; $692f: $ff
	ld   a, h                                        ; $6930: $7c

jr_0a2_6931:
	ld   c, e                                        ; $6931: $4b
	jr   nc, jr_0a2_6963                             ; $6932: $30 $2f

	sbc  b                                           ; $6934: $98
	sub  a                                           ; $6935: $97
	ld   l, l                                        ; $6936: $6d
	nop                                              ; $6937: $00
	sub  [hl]                                        ; $6938: $96
	nop                                              ; $6939: $00

jr_0a2_693a:
	ld   [bc], a                                     ; $693a: $02
	ld   bc, $0200                                   ; $693b: $01 $00 $02
	add  c                                           ; $693e: $81
	nop                                              ; $693f: $00
	nop                                              ; $6940: $00
	inc  bc                                          ; $6941: $03
	sbc  c                                           ; $6942: $99
	nop                                              ; $6943: $00
	ld   [de], a                                     ; $6944: $12
	cp   $00                                         ; $6945: $fe $00
	ld   bc, $e606                                   ; $6947: $01 $06 $e6
	nop                                              ; $694a: $00
	stop                                             ; $694b: $10 $00
	ld   [$1800], sp                                 ; $694d: $08 $00 $18
	nop                                              ; $6950: $00
	jr   nz, jr_0a2_695b                             ; $6951: $20 $08

jr_0a2_6953:
	ld   c, b                                        ; $6953: $48
	rlca                                             ; $6954: $07
	ld   b, a                                        ; $6955: $47
	nop                                              ; $6956: $00
	ld   b, d                                        ; $6957: $42
	add  c                                           ; $6958: $81
	ld   [bc], a                                     ; $6959: $02
	add  b                                           ; $695a: $80

jr_0a2_695b:
	ld   [de], a                                     ; $695b: $12
	add  b                                           ; $695c: $80
	db   $10                                         ; $695d: $10
	ld   [bc], a                                     ; $695e: $02
	ld   d, b                                        ; $695f: $50
	ld   [de], a                                     ; $6960: $12
	inc  de                                          ; $6961: $13
	add  b                                           ; $6962: $80

jr_0a2_6963:
	dec  de                                          ; $6963: $1b
	rrca                                             ; $6964: $0f
	inc  de                                          ; $6965: $13
	dec  l                                           ; $6966: $2d
	rrca                                             ; $6967: $0f
	rla                                              ; $6968: $17
	rlca                                             ; $6969: $07
	ldh  a, [rP1]                                    ; $696a: $f0 $00
	rst  $38                                         ; $696c: $ff
	nop                                              ; $696d: $00
	ldh  a, [rP1]                                    ; $696e: $f0 $00
	ld   [$0400], sp                                 ; $6970: $08 $00 $04
	nop                                              ; $6973: $00
	ld   [bc], a                                     ; $6974: $02
	add  b                                           ; $6975: $80
	ld   [$3001], sp                                 ; $6976: $08 $01 $30
	ld   sp, $0081                                   ; $6979: $31 $81 $00
	add  d                                           ; $697c: $82
	add  b                                           ; $697d: $80
	ld   bc, $8081                                   ; $697e: $01 $81 $80
	add  b                                           ; $6981: $80
	and  b                                           ; $6982: $a0
	ld   bc, $e0e2                                   ; $6983: $01 $e2 $e0
	add  b                                           ; $6986: $80
	ret  nz                                          ; $6987: $c0

	ld   bc, $c0c4                                   ; $6988: $01 $c4 $c0
	add  b                                           ; $698b: $80
	nop                                              ; $698c: $00
	inc  bc                                          ; $698d: $03
	rst  $30                                         ; $698e: $f7
	nop                                              ; $698f: $00
	ld   a, [bc]                                     ; $6990: $0a
	ld   [bc], a                                     ; $6991: $02
	add  b                                           ; $6992: $80
	ld   bc, $0602                                   ; $6993: $01 $02 $06
	nop                                              ; $6996: $00
	ld   bc, $0095                                   ; $6997: $01 $95 $00
	ld   [bc], a                                     ; $699a: $02
	rst  $38                                         ; $699b: $ff
	ld   l, b                                        ; $699c: $68
	ld   l, d                                        ; $699d: $6a
	add  c                                           ; $699e: $81
	ld   [hl], b                                     ; $699f: $70
	inc  bc                                          ; $69a0: $03
	ld   a, b                                        ; $69a1: $78
	ld   [$08e8], sp                                 ; $69a2: $08 $e8 $08
	add  d                                           ; $69a5: $82
	ld   a, [bc]                                     ; $69a6: $0a
	nop                                              ; $69a7: $00
	ld   [de], a                                     ; $69a8: $12
	add  c                                           ; $69a9: $81
	nop                                              ; $69aa: $00
	inc  c                                           ; $69ab: $0c
	stop                                             ; $69ac: $10 $00
	jr   nz, jr_0a2_69b0                             ; $69ae: $20 $00

jr_0a2_69b0:
	ld   bc, $0200                                   ; $69b0: $01 $00 $02
	nop                                              ; $69b3: $00
	ld   b, b                                        ; $69b4: $40
	nop                                              ; $69b5: $00
	ret  nz                                          ; $69b6: $c0

	ld   a, b                                        ; $69b7: $78
	jr   c, jr_0a2_693a                              ; $69b8: $38 $80

	nop                                              ; $69ba: $00
	ld   bc, $dad8                                   ; $69bb: $01 $d8 $da
	add  c                                           ; $69be: $81
	inc  e                                           ; $69bf: $1c
	nop                                              ; $69c0: $00
	db   $fd                                         ; $69c1: $fd
	add  h                                           ; $69c2: $84
	xor  $05                                         ; $69c3: $ee $05
	ldh  [rTIMA], a                                  ; $69c5: $e0 $05
	inc  b                                           ; $69c7: $04
	ld   [bc], a                                     ; $69c8: $02
	nop                                              ; $69c9: $00
	inc  b                                           ; $69ca: $04
	add  c                                           ; $69cb: $81
	nop                                              ; $69cc: $00
	nop                                              ; $69cd: $00
	add  h                                           ; $69ce: $84
	add  c                                           ; $69cf: $81
	nop                                              ; $69d0: $00
	ld   [$0042], sp                                 ; $69d1: $08 $42 $00
	ld   h, b                                        ; $69d4: $60
	inc  a                                           ; $69d5: $3c
	inc  e                                           ; $69d6: $1c
	nop                                              ; $69d7: $00
	ld   a, [hl]                                     ; $69d8: $7e
	nop                                              ; $69d9: $00
	ld   [bc], a                                     ; $69da: $02
	add  l                                           ; $69db: $85
	nop                                              ; $69dc: $00
	nop                                              ; $69dd: $00
	ld   [bc], a                                     ; $69de: $02
	sub  e                                           ; $69df: $93
	nop                                              ; $69e0: $00
	db   $10                                         ; $69e1: $10
	stop                                             ; $69e2: $10 $00
	ld   [$0c00], sp                                 ; $69e4: $08 $00 $0c
	ld   [$1c7e], sp                                 ; $69e7: $08 $7e $1c
	rst  $38                                         ; $69ea: $ff
	ld   a, [hl]                                     ; $69eb: $7e
	sbc  l                                           ; $69ec: $9d
	inc  e                                           ; $69ed: $1c
	ld   l, d                                        ; $69ee: $6a
	ld   [$0014], sp                                 ; $69ef: $08 $14 $00
	ld   [$009b], sp                                 ; $69f2: $08 $9b $00
	dec  c                                           ; $69f5: $0d
	jr   jr_0a2_69f8                                 ; $69f6: $18 $00

jr_0a2_69f8:
	jr   nz, jr_0a2_69fa                             ; $69f8: $20 $00

jr_0a2_69fa:
	inc  h                                           ; $69fa: $24
	nop                                              ; $69fb: $00
	ld   [de], a                                     ; $69fc: $12
	nop                                              ; $69fd: $00
	add  hl, bc                                      ; $69fe: $09
	ld   [bc], a                                     ; $69ff: $02
	ld   b, $01                                      ; $6a00: $06 $01
	dec  b                                           ; $6a02: $05
	nop                                              ; $6a03: $00
	add  b                                           ; $6a04: $80
	ld   [bc], a                                     ; $6a05: $02
	add  b                                           ; $6a06: $80
	ld   bc, $080c                                   ; $6a07: $01 $0c $08
	nop                                              ; $6a0a: $00
	ld   [$1800], sp                                 ; $6a0b: $08 $00 $18
	nop                                              ; $6a0e: $00
	jr   nz, jr_0a2_6a19                             ; $6a0f: $20 $08

	ld   c, b                                        ; $6a11: $48
	rlca                                             ; $6a12: $07
	ld   b, a                                        ; $6a13: $47
	nop                                              ; $6a14: $00
	ld   b, d                                        ; $6a15: $42
	add  c                                           ; $6a16: $81
	ld   [bc], a                                     ; $6a17: $02
	add  b                                           ; $6a18: $80

jr_0a2_6a19:
	ld   [de], a                                     ; $6a19: $12
	add  b                                           ; $6a1a: $80
	db   $10                                         ; $6a1b: $10
	inc  d                                           ; $6a1c: $14
	ld   d, b                                        ; $6a1d: $50
	ld   [de], a                                     ; $6a1e: $12
	inc  de                                          ; $6a1f: $13
	dec  de                                          ; $6a20: $1b
	sbc  e                                           ; $6a21: $9b
	inc  de                                          ; $6a22: $13
	dec  l                                           ; $6a23: $2d
	rrca                                             ; $6a24: $0f
	ld   d, a                                        ; $6a25: $57
	rlca                                             ; $6a26: $07
	jr   nc, jr_0a2_6a69                             ; $6a27: $30 $40

	cp   a                                           ; $6a29: $bf
	nop                                              ; $6a2a: $00
	ldh  a, [rP1]                                    ; $6a2b: $f0 $00
	ld   [$0400], sp                                 ; $6a2d: $08 $00 $04
	nop                                              ; $6a30: $00
	ld   [bc], a                                     ; $6a31: $02
	add  b                                           ; $6a32: $80
	ld   [$3001], sp                                 ; $6a33: $08 $01 $30
	ld   sp, $0081                                   ; $6a36: $31 $81 $00
	add  d                                           ; $6a39: $82
	add  b                                           ; $6a3a: $80
	ld   bc, $8081                                   ; $6a3b: $01 $81 $80
	add  b                                           ; $6a3e: $80
	and  b                                           ; $6a3f: $a0
	ld   bc, $e0e2                                   ; $6a40: $01 $e2 $e0
	add  b                                           ; $6a43: $80
	ret  nz                                          ; $6a44: $c0

	ld   bc, $c0c4                                   ; $6a45: $01 $c4 $c0
	add  b                                           ; $6a48: $80
	nop                                              ; $6a49: $00
	inc  b                                           ; $6a4a: $04
	ei                                               ; $6a4b: $fb
	nop                                              ; $6a4c: $00
	ld   [bc], a                                     ; $6a4d: $02
	nop                                              ; $6a4e: $00
	ld   bc, $0095                                   ; $6a4f: $01 $95 $00
	nop                                              ; $6a52: $00
	ld   bc, $0081                                   ; $6a53: $01 $81 $00
	nop                                              ; $6a56: $00
	cp   $80                                         ; $6a57: $fe $80
	ld   l, b                                        ; $6a59: $68
	ld   b, $e0                                      ; $6a5a: $06 $e0
	ldh  [c], a                                      ; $6a5c: $e2
	ld   h, b                                        ; $6a5d: $60
	db   $eb                                         ; $6a5e: $eb
	ld   a, [bc]                                     ; $6a5f: $0a
	ld   d, d                                        ; $6a60: $52
	ld   d, $80                                      ; $6a61: $16 $80
	ld   b, $00                                      ; $6a63: $06 $00
	scf                                              ; $6a65: $37
	add  b                                           ; $6a66: $80
	rlca                                             ; $6a67: $07
	inc  de                                          ; $6a68: $13

jr_0a2_6a69:
	nop                                              ; $6a69: $00
	stop                                             ; $6a6a: $10 $00
	jr   nz, jr_0a2_6a6e                             ; $6a6c: $20 $00

jr_0a2_6a6e:
	ld   b, b                                        ; $6a6e: $40
	nop                                              ; $6a6f: $00
	inc  bc                                          ; $6a70: $03
	nop                                              ; $6a71: $00
	inc  b                                           ; $6a72: $04
	nop                                              ; $6a73: $00
	add  b                                           ; $6a74: $80
	nop                                              ; $6a75: $00
	add  b                                           ; $6a76: $80
	ldh  a, [rSVBK]                                  ; $6a77: $f0 $70
	nop                                              ; $6a79: $00
	inc  b                                           ; $6a7a: $04
	ret  c                                           ; $6a7b: $d8

	jp   c, $1c81                                    ; $6a7c: $da $81 $1c

	ld   bc, $2e3d                                   ; $6a7f: $01 $3d $2e
	add  d                                           ; $6a82: $82
	ld   l, [hl]                                     ; $6a83: $6e
	ld   b, $2e                                      ; $6a84: $06 $2e
	and  b                                           ; $6a86: $a0
	add  l                                           ; $6a87: $85
	inc  b                                           ; $6a88: $04
	ld   [bc], a                                     ; $6a89: $02
	nop                                              ; $6a8a: $00
	inc  c                                           ; $6a8b: $0c
	add  c                                           ; $6a8c: $81
	nop                                              ; $6a8d: $00
	nop                                              ; $6a8e: $00
	ld   [$0081], sp                                 ; $6a8f: $08 $81 $00
	ld   b, $84                                      ; $6a92: $06 $84
	nop                                              ; $6a94: $00
	ret  nz                                          ; $6a95: $c0

	ld   a, b                                        ; $6a96: $78
	jr   c, jr_0a2_6a99                              ; $6a97: $38 $00

jr_0a2_6a99:
	db   $fc                                         ; $6a99: $fc
	add  c                                           ; $6a9a: $81
	nop                                              ; $6a9b: $00
	ld   [bc], a                                     ; $6a9c: $02
	ld   [bc], a                                     ; $6a9d: $02
	nop                                              ; $6a9e: $00
	inc  bc                                          ; $6a9f: $03
	add  e                                           ; $6aa0: $83
	nop                                              ; $6aa1: $00
	nop                                              ; $6aa2: $00
	ld   bc, $00ff                                   ; $6aa3: $01 $ff $00
	ret  nz                                          ; $6aa6: $c0

	nop                                              ; $6aa7: $00
	db   $10                                         ; $6aa8: $10
	rra                                              ; $6aa9: $1f
	nop                                              ; $6aaa: $00
	jr   nz, jr_0a2_6aad                             ; $6aab: $20 $00

jr_0a2_6aad:
	ld   b, b                                        ; $6aad: $40
	nop                                              ; $6aae: $00
	inc  bc                                          ; $6aaf: $03
	nop                                              ; $6ab0: $00
	inc  b                                           ; $6ab1: $04
	nop                                              ; $6ab2: $00
	add  b                                           ; $6ab3: $80
	nop                                              ; $6ab4: $00
	add  b                                           ; $6ab5: $80
	ld   [hl], b                                     ; $6ab6: $70
	rst  $30                                         ; $6ab7: $f7
	nop                                              ; $6ab8: $00
	rst  $38                                         ; $6ab9: $ff
	adc  l                                           ; $6aba: $8d
	nop                                              ; $6abb: $00
	ld   [bc], a                                     ; $6abc: $02
	db   $fc                                         ; $6abd: $fc
	nop                                              ; $6abe: $00
	inc  c                                           ; $6abf: $0c
	add  c                                           ; $6ac0: $81
	nop                                              ; $6ac1: $00
	nop                                              ; $6ac2: $00
	ld   [$0081], sp                                 ; $6ac3: $08 $81 $00
	ld   b, $84                                      ; $6ac6: $06 $84
	nop                                              ; $6ac8: $00
	ret  nz                                          ; $6ac9: $c0

	jr   c, @+$7a                                    ; $6aca: $38 $78

	nop                                              ; $6acc: $00
	db   $fc                                         ; $6acd: $fc
	rst  $38                                         ; $6ace: $ff
	nop                                              ; $6acf: $00
	rst  $38                                         ; $6ad0: $ff
	nop                                              ; $6ad1: $00
	rst  $38                                         ; $6ad2: $ff
	nop                                              ; $6ad3: $00
	rst  $38                                         ; $6ad4: $ff
	nop                                              ; $6ad5: $00
	rst  $38                                         ; $6ad6: $ff
	nop                                              ; $6ad7: $00
	rst  $38                                         ; $6ad8: $ff
	nop                                              ; $6ad9: $00
	rst  $38                                         ; $6ada: $ff
	nop                                              ; $6adb: $00
	rst  $38                                         ; $6adc: $ff
	nop                                              ; $6add: $00
	rst  $38                                         ; $6ade: $ff
	nop                                              ; $6adf: $00
	rst  $38                                         ; $6ae0: $ff
	nop                                              ; $6ae1: $00
	sub  e                                           ; $6ae2: $93
	nop                                              ; $6ae3: $00
	adc  l                                           ; $6ae4: $8d
	nop                                              ; $6ae5: $00
	dec  c                                           ; $6ae6: $0d
	jp   c, $93ff                                    ; $6ae7: $da $ff $93

	rst  $38                                         ; $6aea: $ff
	and  [hl]                                        ; $6aeb: $a6
	rst  $38                                         ; $6aec: $ff
	add  [hl]                                        ; $6aed: $86
	rst  $38                                         ; $6aee: $ff
	ld   h, l                                        ; $6aef: $65
	rst  $38                                         ; $6af0: $ff
	ld   a, [$74fe]                                  ; $6af1: $fa $fe $74
	ld   a, h                                        ; $6af4: $7c
	add  b                                           ; $6af5: $80
	db   $fd                                         ; $6af6: $fd
	add  b                                           ; $6af7: $80
	cp   $1f                                         ; $6af8: $fe $1f
	ld   e, a                                        ; $6afa: $5f
	rst  JumpTable                                         ; $6afb: $df
	dec  a                                           ; $6afc: $3d
	cp   l                                           ; $6afd: $bd
	ld   a, [hl+]                                    ; $6afe: $2a
	ld   a, [hl-]                                    ; $6aff: $3a
	ld   e, d                                        ; $6b00: $5a
	ld   a, d                                        ; $6b01: $7a
	or   h                                           ; $6b02: $b4
	db   $f4                                         ; $6b03: $f4
	push af                                          ; $6b04: $f5
	db   $f4                                         ; $6b05: $f4
	ld   [hl], h                                     ; $6b06: $74
	db   $f4                                         ; $6b07: $f4
	ld   a, $ff                                      ; $6b08: $3e $ff
	ld   l, a                                        ; $6b0a: $6f
	ld   a, a                                        ; $6b0b: $7f
	rra                                              ; $6b0c: $1f
	ccf                                              ; $6b0d: $3f
	ld   a, $bf                                      ; $6b0e: $3e $bf
	sbc  [hl]                                        ; $6b10: $9e
	rst  JumpTable                                         ; $6b11: $df
	call z, $c31d                                    ; $6b12: $cc $1d $c3
	ld   e, $1c                                      ; $6b15: $1e $1c
	ld   e, $35                                      ; $6b17: $1e $35
	ei                                               ; $6b19: $fb
	add  b                                           ; $6b1a: $80
	di                                               ; $6b1b: $f3
	db   $10                                         ; $6b1c: $10
	rst  $20                                         ; $6b1d: $e7
	rst  $30                                         ; $6b1e: $f7
	rst  JumpTable                                         ; $6b1f: $df
	rst  $28                                         ; $6b20: $ef
	xor  a                                           ; $6b21: $af
	rst  $28                                         ; $6b22: $ef
	rst  $38                                         ; $6b23: $ff
	rst  JumpTable                                         ; $6b24: $df
	ld   e, a                                        ; $6b25: $5f
	rst  JumpTable                                         ; $6b26: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b27: $cf
	rst  JumpTable                                         ; $6b28: $df
	add  hl, sp                                      ; $6b29: $39
	rrca                                             ; $6b2a: $0f
	dec  c                                           ; $6b2b: $0d
	rrca                                             ; $6b2c: $0f
	inc  de                                          ; $6b2d: $13
	add  e                                           ; $6b2e: $83
	rlca                                             ; $6b2f: $07
	ld   [bc], a                                     ; $6b30: $02
	inc  bc                                          ; $6b31: $03
	rlca                                             ; $6b32: $07
	rrca                                             ; $6b33: $0f
	add  c                                           ; $6b34: $81
	inc  bc                                          ; $6b35: $03
	inc  c                                           ; $6b36: $0c
	sbc  a                                           ; $6b37: $9f
	ld   [hl], a                                     ; $6b38: $77
	inc  hl                                          ; $6b39: $23
	ld   [hl], a                                     ; $6b3a: $77
	push af                                          ; $6b3b: $f5
	cp   e                                           ; $6b3c: $bb
	or   e                                           ; $6b3d: $b3
	cp   e                                           ; $6b3e: $bb
	sbc  d                                           ; $6b3f: $9a
	cp   l                                           ; $6b40: $bd
	ld   sp, hl                                      ; $6b41: $f9
	db   $dd                                         ; $6b42: $dd
	call $de81                                       ; $6b43: $cd $81 $de
	inc  b                                           ; $6b46: $04
	inc  a                                           ; $6b47: $3c
	cp   a                                           ; $6b48: $bf
	sbc  a                                           ; $6b49: $9f
	cp   a                                           ; $6b4a: $bf
	cp   l                                           ; $6b4b: $bd
	add  c                                           ; $6b4c: $81
	cp   a                                           ; $6b4d: $bf
	nop                                              ; $6b4e: $00
	or   e                                           ; $6b4f: $b3
	add  d                                           ; $6b50: $82
	cp   d                                           ; $6b51: $ba
	add  b                                           ; $6b52: $80
	ld   e, d                                        ; $6b53: $5a
	ld   bc, $609a                                   ; $6b54: $01 $9a $60
	add  l                                           ; $6b57: $85
	ld   [bc], a                                     ; $6b58: $02
	dec  b                                           ; $6b59: $05
	ld   a, [bc]                                     ; $6b5a: $0a
	ld   b, $01                                      ; $6b5b: $06 $01
	dec  b                                           ; $6b5d: $05
	dec  d                                           ; $6b5e: $15
	dec  b                                           ; $6b5f: $05
	add  b                                           ; $6b60: $80
	dec  bc                                          ; $6b61: $0b
	nop                                              ; $6b62: $00
	inc  c                                           ; $6b63: $0c
	add  l                                           ; $6b64: $85
	xor  $00                                         ; $6b65: $ee $00
	jp   nz, $ed80                                   ; $6b67: $c2 $80 $ed

	ld   bc, $9ddd                                   ; $6b6a: $01 $dd $9d
	add  b                                           ; $6b6d: $80
	db   $dd                                         ; $6b6e: $dd
	ld   d, $bb                                      ; $6b6f: $16 $bb
	pop  af                                          ; $6b71: $f1
	nop                                              ; $6b72: $00
	xor  a                                           ; $6b73: $af
	nop                                              ; $6b74: $00
	inc  c                                           ; $6b75: $0c
	nop                                              ; $6b76: $00
	ld   b, a                                        ; $6b77: $47
	nop                                              ; $6b78: $00
	ld   sp, $0200                                   ; $6b79: $31 $00 $02
	nop                                              ; $6b7c: $00
	inc  bc                                          ; $6b7d: $03
	nop                                              ; $6b7e: $00
	ld   de, $e800                                   ; $6b7f: $11 $00 $e8
	ldh  [$fe], a                                    ; $6b82: $e0 $fe
	ld   hl, sp-$03                                  ; $6b84: $f8 $fd
	db   $fc                                         ; $6b86: $fc
	add  h                                           ; $6b87: $84
	rst  $38                                         ; $6b88: $ff
	add  b                                           ; $6b89: $80
	ld   a, a                                        ; $6b8a: $7f
	add  b                                           ; $6b8b: $80
	ccf                                              ; $6b8c: $3f
	add  b                                           ; $6b8d: $80
	nop                                              ; $6b8e: $00
	add  b                                           ; $6b8f: $80
	ld   c, $80                                      ; $6b90: $0e $80
	ccf                                              ; $6b92: $3f
	add  b                                           ; $6b93: $80
	ld   a, a                                        ; $6b94: $7f
	add  d                                           ; $6b95: $82
	rst  $38                                         ; $6b96: $ff
	add  b                                           ; $6b97: $80
	di                                               ; $6b98: $f3
	add  b                                           ; $6b99: $80
	db   $fc                                         ; $6b9a: $fc
	add  b                                           ; $6b9b: $80
	ccf                                              ; $6b9c: $3f
	add  b                                           ; $6b9d: $80
	rra                                              ; $6b9e: $1f
	add  b                                           ; $6b9f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ba0: $cf
	add  b                                           ; $6ba1: $80
	rst  $38                                         ; $6ba2: $ff
	add  b                                           ; $6ba3: $80
	cp   $84                                         ; $6ba4: $fe $84
	rst  $38                                         ; $6ba6: $ff
	add  b                                           ; $6ba7: $80
	ei                                               ; $6ba8: $fb
	add  b                                           ; $6ba9: $80
	di                                               ; $6baa: $f3
	add  d                                           ; $6bab: $82
	rst  $30                                         ; $6bac: $f7
	add  b                                           ; $6bad: $80
	ld   [hl], a                                     ; $6bae: $77
	add  b                                           ; $6baf: $80
	adc  a                                           ; $6bb0: $8f
	add  d                                           ; $6bb1: $82
	ldh  [$8e], a                                    ; $6bb2: $e0 $8e
	rst  $38                                         ; $6bb4: $ff
	add  b                                           ; $6bb5: $80
	ccf                                              ; $6bb6: $3f
	add  b                                           ; $6bb7: $80
	sbc  a                                           ; $6bb8: $9f
	dec  b                                           ; $6bb9: $05
	adc  [hl]                                        ; $6bba: $8e
	adc  $86                                         ; $6bbb: $ce $86
	and  $c7                                         ; $6bbd: $e6 $c7
	rst  $30                                         ; $6bbf: $f7
	add  b                                           ; $6bc0: $80
	di                                               ; $6bc1: $f3
	ld   bc, $fbe3                                   ; $6bc2: $01 $e3 $fb
	add  b                                           ; $6bc5: $80
	ld   sp, hl                                      ; $6bc6: $f9
	ld   bc, $c8c0                                   ; $6bc7: $01 $c0 $c8
	add  b                                           ; $6bca: $80
	ccf                                              ; $6bcb: $3f
	add  d                                           ; $6bcc: $82
	rst  $38                                         ; $6bcd: $ff
	add  b                                           ; $6bce: $80
	ld   a, a                                        ; $6bcf: $7f
	add  b                                           ; $6bd0: $80
	ccf                                              ; $6bd1: $3f
	add  b                                           ; $6bd2: $80
	cp   a                                           ; $6bd3: $bf
	add  b                                           ; $6bd4: $80
	rst  JumpTable                                         ; $6bd5: $df
	add  b                                           ; $6bd6: $80
	ld   a, a                                        ; $6bd7: $7f
	add  b                                           ; $6bd8: $80
	ei                                               ; $6bd9: $fb
	add  b                                           ; $6bda: $80
	db   $fc                                         ; $6bdb: $fc
	add  b                                           ; $6bdc: $80
	cp   $82                                         ; $6bdd: $fe $82
	rst  $38                                         ; $6bdf: $ff
	add  d                                           ; $6be0: $82
	cp   $8e                                         ; $6be1: $fe $8e
	rst  $38                                         ; $6be3: $ff
	nop                                              ; $6be4: $00
	ld   sp, hl                                      ; $6be5: $f9
	add  e                                           ; $6be6: $83
	db   $fd                                         ; $6be7: $fd
	ld   bc, $fcf8                                   ; $6be8: $01 $f8 $fc
	add  d                                           ; $6beb: $82
	cp   $82                                         ; $6bec: $fe $82
	rst  $38                                         ; $6bee: $ff
	add  b                                           ; $6bef: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bf0: $cf
	add  b                                           ; $6bf1: $80
	rst  $28                                         ; $6bf2: $ef
	add  b                                           ; $6bf3: $80
	rst  $30                                         ; $6bf4: $f7
	add  b                                           ; $6bf5: $80
	di                                               ; $6bf6: $f3
	add  hl, bc                                      ; $6bf7: $09
	ld   hl, sp-$05                                  ; $6bf8: $f8 $fb
	ld   a, e                                        ; $6bfa: $7b
	ld   a, c                                        ; $6bfb: $79
	ld   de, $8515                                   ; $6bfc: $11 $15 $85
	add  [hl]                                        ; $6bff: $86
	ld   a, [$80fc]                                  ; $6c00: $fa $fc $80
	ld   hl, sp-$80                                  ; $6c03: $f8 $80
	ld   sp, hl                                      ; $6c05: $f9
	add  b                                           ; $6c06: $80
	di                                               ; $6c07: $f3
	inc  b                                           ; $6c08: $04
	ld   h, a                                        ; $6c09: $67
	rst  $20                                         ; $6c0a: $e7
	adc  a                                           ; $6c0b: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c0c: $cf
	rst  JumpTable                                         ; $6c0d: $df
	add  b                                           ; $6c0e: $80
	sbc  a                                           ; $6c0f: $9f
	nop                                              ; $6c10: $00
	rra                                              ; $6c11: $1f
	add  d                                           ; $6c12: $82
	ld   a, a                                        ; $6c13: $7f
	add  b                                           ; $6c14: $80
	ccf                                              ; $6c15: $3f
	add  b                                           ; $6c16: $80
	sbc  a                                           ; $6c17: $9f
	add  b                                           ; $6c18: $80
	rst  $28                                         ; $6c19: $ef
	add  b                                           ; $6c1a: $80
	rst  $30                                         ; $6c1b: $f7
	add  b                                           ; $6c1c: $80
	ei                                               ; $6c1d: $fb
	add  b                                           ; $6c1e: $80
	db   $fc                                         ; $6c1f: $fc
	add  b                                           ; $6c20: $80
	rst  $38                                         ; $6c21: $ff
	add  b                                           ; $6c22: $80
	cp   $82                                         ; $6c23: $fe $82
	rst  $38                                         ; $6c25: $ff
	add  b                                           ; $6c26: $80
	ld   a, a                                        ; $6c27: $7f
	add  b                                           ; $6c28: $80
	ccf                                              ; $6c29: $3f
	add  b                                           ; $6c2a: $80
	rra                                              ; $6c2b: $1f
	add  b                                           ; $6c2c: $80
	rrca                                             ; $6c2d: $0f
	add  b                                           ; $6c2e: $80
	ld   hl, sp-$80                                  ; $6c2f: $f8 $80
	pop  hl                                          ; $6c31: $e1
	add  b                                           ; $6c32: $80
	rlca                                             ; $6c33: $07
	adc  b                                           ; $6c34: $88
	rst  $38                                         ; $6c35: $ff
	ld   [bc], a                                     ; $6c36: $02
	db   $10                                         ; $6c37: $10
	ld   [de], a                                     ; $6c38: $12
	ld   a, [$f881]                                  ; $6c39: $fa $81 $f8
	add  b                                           ; $6c3c: $80
	pop  hl                                          ; $6c3d: $e1
	add  b                                           ; $6c3e: $80
	sbc  a                                           ; $6c3f: $9f
	add  b                                           ; $6c40: $80
	inc  de                                          ; $6c41: $13
	add  d                                           ; $6c42: $82
	daa                                              ; $6c43: $27
	add  b                                           ; $6c44: $80
	ccf                                              ; $6c45: $3f
	add  b                                           ; $6c46: $80
	ld   a, a                                        ; $6c47: $7f
	adc  d                                           ; $6c48: $8a
	rst  $38                                         ; $6c49: $ff
	add  b                                           ; $6c4a: $80
	cp   $8a                                         ; $6c4b: $fe $8a
	rst  $38                                         ; $6c4d: $ff
	add  b                                           ; $6c4e: $80
	cp   $00                                         ; $6c4f: $fe $00
	rst  $38                                         ; $6c51: $ff
	adc  l                                           ; $6c52: $8d
	nop                                              ; $6c53: $00
	ld   [bc], a                                     ; $6c54: $02
	inc  [hl]                                        ; $6c55: $34
	ldh  [$c0], a                                    ; $6c56: $e0 $c0
	add  c                                           ; $6c58: $81
	ldh  [rP1], a                                    ; $6c59: $e0 $00
	ret  nc                                          ; $6c5b: $d0

	add  c                                           ; $6c5c: $81
	ret  nz                                          ; $6c5d: $c0

	nop                                              ; $6c5e: $00
	and  b                                           ; $6c5f: $a0
	add  c                                           ; $6c60: $81
	add  b                                           ; $6c61: $80
	dec  c                                           ; $6c62: $0d
	nop                                              ; $6c63: $00
	add  b                                           ; $6c64: $80
	inc  b                                           ; $6c65: $04
	nop                                              ; $6c66: $00
	ld   [hl], b                                     ; $6c67: $70
	nop                                              ; $6c68: $00
	inc  a                                           ; $6c69: $3c
	nop                                              ; $6c6a: $00
	adc  e                                           ; $6c6b: $8b
	nop                                              ; $6c6c: $00
	and  $80                                         ; $6c6d: $e6 $80
	cp   $e0                                         ; $6c6f: $fe $e0
	add  b                                           ; $6c71: $80
	ld   hl, sp-$80                                  ; $6c72: $f8 $80
	ei                                               ; $6c74: $fb
	nop                                              ; $6c75: $00
	rst  $38                                         ; $6c76: $ff
	rst  $38                                         ; $6c77: $ff
	nop                                              ; $6c78: $00
	rst  $38                                         ; $6c79: $ff
	nop                                              ; $6c7a: $00
	rst  $38                                         ; $6c7b: $ff
	nop                                              ; $6c7c: $00
	rst  $38                                         ; $6c7d: $ff
	nop                                              ; $6c7e: $00
	rst  $38                                         ; $6c7f: $ff
	nop                                              ; $6c80: $00
	rst  $38                                         ; $6c81: $ff
	nop                                              ; $6c82: $00
	rst  $38                                         ; $6c83: $ff
	nop                                              ; $6c84: $00
	rst  $38                                         ; $6c85: $ff
	nop                                              ; $6c86: $00
	rst  $38                                         ; $6c87: $ff
	nop                                              ; $6c88: $00
	rst  $38                                         ; $6c89: $ff
	nop                                              ; $6c8a: $00
	rst  $38                                         ; $6c8b: $ff
	nop                                              ; $6c8c: $00
	rst  $38                                         ; $6c8d: $ff
	nop                                              ; $6c8e: $00
	add  c                                           ; $6c8f: $81
	nop                                              ; $6c90: $00
	ld   [hl], h                                     ; $6c91: $74
	nop                                              ; $6c92: $00
	ld   a, [bc]                                     ; $6c93: $0a
	ret  nz                                          ; $6c94: $c0

	ccf                                              ; $6c95: $3f
	ld   a, a                                        ; $6c96: $7f
	ccf                                              ; $6c97: $3f
	and  a                                           ; $6c98: $a7
	ld   h, a                                        ; $6c99: $67
	rrca                                             ; $6c9a: $0f
	adc  a                                           ; $6c9b: $8f
	ccf                                              ; $6c9c: $3f
	rra                                              ; $6c9d: $1f
	rst  JumpTable                                         ; $6c9e: $df
	add  b                                           ; $6c9f: $80
	cp   a                                           ; $6ca0: $bf
	add  b                                           ; $6ca1: $80
	cpl                                              ; $6ca2: $2f
	add  b                                           ; $6ca3: $80
	sbc  a                                           ; $6ca4: $9f
	adc  e                                           ; $6ca5: $8b
	rst  $38                                         ; $6ca6: $ff
	add  b                                           ; $6ca7: $80
	or   $80                                         ; $6ca8: $f6 $80
	jp   $c780                                       ; $6caa: $c3 $80 $c7


	add  b                                           ; $6cad: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cae: $cf
	add  b                                           ; $6caf: $80
	rst  JumpTable                                         ; $6cb0: $df
	add  d                                           ; $6cb1: $82
	rst  $38                                         ; $6cb2: $ff
	add  b                                           ; $6cb3: $80
	ld   a, a                                        ; $6cb4: $7f
	add  b                                           ; $6cb5: $80
	rst  $38                                         ; $6cb6: $ff
	rrca                                             ; $6cb7: $0f
	or   $b0                                         ; $6cb8: $f6 $b0
	xor  e                                           ; $6cba: $ab
	ld   h, c                                        ; $6cbb: $61
	rla                                              ; $6cbc: $17
	sub  d                                           ; $6cbd: $92
	ld   [hl-], a                                    ; $6cbe: $32
	add  hl, sp                                      ; $6cbf: $39
	ld   [hl], l                                     ; $6cc0: $75
	ld   [hl], b                                     ; $6cc1: $70
	add  sp, -$12                                    ; $6cc2: $e8 $ee
	adc  $cd                                         ; $6cc4: $ce $cd
	call c, $80de                                    ; $6cc6: $dc $de $80
	xor  $80                                         ; $6cc9: $ee $80
	db   $ed                                         ; $6ccb: $ed
	add  b                                           ; $6ccc: $80
	db   $dd                                         ; $6ccd: $dd
	ld   [bc], a                                     ; $6cce: $02
	reti                                             ; $6ccf: $d9


	ld   e, b                                        ; $6cd0: $58
	ld   [hl-], a                                    ; $6cd1: $32
	add  b                                           ; $6cd2: $80
	or   c                                           ; $6cd3: $b1
	ld   bc, $20b0                                   ; $6cd4: $01 $b0 $20
	add  b                                           ; $6cd7: $80
	jr   z, jr_0a2_6cdc                              ; $6cd8: $28 $02

	xor  c                                           ; $6cda: $a9
	ld   [hl], l                                     ; $6cdb: $75

jr_0a2_6cdc:
	rst  $38                                         ; $6cdc: $ff
	add  h                                           ; $6cdd: $84
	rst  $30                                         ; $6cde: $f7
	nop                                              ; $6cdf: $00
	db   $e3                                         ; $6ce0: $e3
	add  b                                           ; $6ce1: $80
	xor  c                                           ; $6ce2: $a9
	add  b                                           ; $6ce3: $80
	xor  b                                           ; $6ce4: $a8
	inc  bc                                          ; $6ce5: $03
	ld   l, b                                        ; $6ce6: $68
	ld   c, b                                        ; $6ce7: $48
	ld   e, d                                        ; $6ce8: $5a
	dec  b                                           ; $6ce9: $05
	add  c                                           ; $6cea: $81
	sbc  l                                           ; $6ceb: $9d
	nop                                              ; $6cec: $00
	add  hl, sp                                      ; $6ced: $39
	add  b                                           ; $6cee: $80
	ld   a, [hl-]                                    ; $6cef: $3a
	add  b                                           ; $6cf0: $80
	dec  sp                                          ; $6cf1: $3b
	ld   bc, $323a                                   ; $6cf2: $01 $3a $32
	add  b                                           ; $6cf5: $80
	ld   sp, $3280                                   ; $6cf6: $31 $80 $32
	ld   a, [bc]                                     ; $6cf9: $0a
	ld   [hl], $25                                   ; $6cfa: $36 $25
	xor  e                                           ; $6cfc: $ab
	adc  e                                           ; $6cfd: $8b
	inc  bc                                          ; $6cfe: $03
	ld   bc, $21c9                                   ; $6cff: $01 $c9 $21
	dec  b                                           ; $6d02: $05
	ld   de, $8301                                   ; $6d03: $11 $01 $83
	nop                                              ; $6d06: $00
	add  hl, bc                                      ; $6d07: $09
	ld   [bc], a                                     ; $6d08: $02
	cpl                                              ; $6d09: $2f
	ld   c, l                                        ; $6d0a: $4d
	ld   b, l                                        ; $6d0b: $45
	pop  bc                                          ; $6d0c: $c1
	adc  b                                           ; $6d0d: $88
	and  [hl]                                        ; $6d0e: $a6
	adc  b                                           ; $6d0f: $88
	add  b                                           ; $6d10: $80
	add  c                                           ; $6d11: $81
	add  e                                           ; $6d12: $83
	add  b                                           ; $6d13: $80
	add  b                                           ; $6d14: $80
	nop                                              ; $6d15: $00
	inc  bc                                          ; $6d16: $03
	and  c                                           ; $6d17: $a1
	sub  [hl]                                        ; $6d18: $96
	sub  a                                           ; $6d19: $97
	sbc  a                                           ; $6d1a: $9f
	add  b                                           ; $6d1b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d1c: $cf
	ld   bc, $5747                                   ; $6d1d: $01 $47 $57
	add  b                                           ; $6d20: $80
	rla                                              ; $6d21: $17
	ld   b, $93                                      ; $6d22: $06 $93
	dec  bc                                          ; $6d24: $0b
	ld   l, e                                        ; $6d25: $6b
	inc  bc                                          ; $6d26: $03
	inc  de                                          ; $6d27: $13
	inc  bc                                          ; $6d28: $03
	rrca                                             ; $6d29: $0f
	add  [hl]                                        ; $6d2a: $86
	nop                                              ; $6d2b: $00
	inc  b                                           ; $6d2c: $04
	sub  b                                           ; $6d2d: $90
	ld   c, b                                        ; $6d2e: $48
	ld   hl, sp+$21                                  ; $6d2f: $f8 $21
	ld   bc, $0089                                   ; $6d31: $01 $89 $00
	add  hl, bc                                      ; $6d34: $09
	ld   [bc], a                                     ; $6d35: $02
	add  e                                           ; $6d36: $83
	sub  c                                           ; $6d37: $91
	sub  e                                           ; $6d38: $93
	nop                                              ; $6d39: $00
	add  e                                           ; $6d3a: $83
	nop                                              ; $6d3b: $00
	db   $e4                                         ; $6d3c: $e4
	jr   jr_0a2_6d45                                 ; $6d3d: $18 $06

	add  b                                           ; $6d3f: $80
	ld   h, h                                        ; $6d40: $64
	ld   bc, $f3f4                                   ; $6d41: $01 $f4 $f3
	add  b                                           ; $6d44: $80

jr_0a2_6d45:
	ld   a, [$7a80]                                  ; $6d45: $fa $80 $7a
	ld   [bc], a                                     ; $6d48: $02
	and  d                                           ; $6d49: $a2
	xor  c                                           ; $6d4a: $a9
	jp   hl                                          ; $6d4b: $e9


jr_0a2_6d4c:
	add  b                                           ; $6d4c: $80
	db   $e4                                         ; $6d4d: $e4
	ld   [bc], a                                     ; $6d4e: $02
	ld   d, b                                        ; $6d4f: $50
	ld   sp, $80c1                                   ; $6d50: $31 $c1 $80
	ld   c, [hl]                                     ; $6d53: $4e
	add  b                                           ; $6d54: $80
	ld   e, h                                        ; $6d55: $5c
	ld   bc, $9959                                   ; $6d56: $01 $59 $99
	add  b                                           ; $6d59: $80
	or   a                                           ; $6d5a: $b7
	ld   bc, $3ebe                                   ; $6d5b: $01 $be $3e
	add  b                                           ; $6d5e: $80
	ld   a, [hl]                                     ; $6d5f: $7e
	add  b                                           ; $6d60: $80
	dec  a                                           ; $6d61: $3d
	add  b                                           ; $6d62: $80
	nop                                              ; $6d63: $00
	daa                                              ; $6d64: $27
	ld   e, h                                        ; $6d65: $5c
	ld   e, a                                        ; $6d66: $5f
	cp   e                                           ; $6d67: $bb
	cp   h                                           ; $6d68: $bc
	db   $e4                                         ; $6d69: $e4
	di                                               ; $6d6a: $f3
	ret  nc                                          ; $6d6b: $d0

	call z, $e0c0                                    ; $6d6c: $cc $c0 $e0
	and  b                                           ; $6d6f: $a0
	ret  c                                           ; $6d70: $d8

	ld   b, b                                        ; $6d71: $40
	adc  h                                           ; $6d72: $8c
	sbc  e                                           ; $6d73: $9b
	dec  de                                          ; $6d74: $1b
	ld   a, [de]                                     ; $6d75: $1a
	jp   z, $e20a                                    ; $6d76: $ca $0a $e2

	ld   [bc], a                                     ; $6d79: $02
	or   d                                           ; $6d7a: $b2
	inc  bc                                          ; $6d7b: $03
	ld   d, e                                        ; $6d7c: $53
	inc  bc                                          ; $6d7d: $03
	ld   bc, $0425                                   ; $6d7e: $01 $25 $04
	inc  d                                           ; $6d81: $14
	or   $fa                                         ; $6d82: $f6 $fa
	db   $fc                                         ; $6d84: $fc
	db   $e4                                         ; $6d85: $e4
	ld   hl, sp-$26                                  ; $6d86: $f8 $da
	ldh  [c], a                                      ; $6d88: $e2
	daa                                              ; $6d89: $27
	rst  ToBoot                                         ; $6d8a: $c7
	rst  JumpTable                                         ; $6d8b: $df
	rra                                              ; $6d8c: $1f
	add  b                                           ; $6d8d: $80
	ccf                                              ; $6d8e: $3f
	inc  bc                                          ; $6d8f: $03
	db   $fc                                         ; $6d90: $fc
	rst  $38                                         ; $6d91: $ff
	ldh  a, [c]                                      ; $6d92: $f2
	ld   [hl], c                                     ; $6d93: $71
	add  b                                           ; $6d94: $80
	cp   c                                           ; $6d95: $b9
	add  hl, bc                                      ; $6d96: $09
	cp   e                                           ; $6d97: $bb
	dec  sp                                          ; $6d98: $3b
	ld   [hl], h                                     ; $6d99: $74
	ld   [hl], a                                     ; $6d9a: $77
	ldh  a, [c]                                      ; $6d9b: $f2
	cp   $c8                                         ; $6d9c: $fe $c8
	ld   hl, sp+$20                                  ; $6d9e: $f8 $20
	ldh  [$80], a                                    ; $6da0: $e0 $80
	add  b                                           ; $6da2: $80
	add  hl, bc                                      ; $6da3: $09
	nop                                              ; $6da4: $00
	db   $fd                                         ; $6da5: $fd
	ld   b, l                                        ; $6da6: $45
	ld   [hl], c                                     ; $6da7: $71
	ld   bc, $00e0                                   ; $6da8: $01 $e0 $00
	dec  [hl]                                        ; $6dab: $35
	dec  b                                           ; $6dac: $05
	rla                                              ; $6dad: $17
	add  b                                           ; $6dae: $80
	ld   [bc], a                                     ; $6daf: $02
	dec  bc                                          ; $6db0: $0b
	add  hl, bc                                      ; $6db1: $09
	ld   bc, $0106                                   ; $6db2: $01 $06 $01
	nop                                              ; $6db5: $00
	rst  $28                                         ; $6db6: $ef
	sub  e                                           ; $6db7: $93
	bit  1, e                                        ; $6db8: $cb $4b
	ld   e, e                                        ; $6dba: $5b
	ld   e, d                                        ; $6dbb: $5a
	ld   [bc], a                                     ; $6dbc: $02
	add  b                                           ; $6dbd: $80
	daa                                              ; $6dbe: $27
	add  l                                           ; $6dbf: $85
	ld   a, a                                        ; $6dc0: $7f
	db   $10                                         ; $6dc1: $10
	ld   [hl], b                                     ; $6dc2: $70
	ret  z                                           ; $6dc3: $c8

	ld   hl, sp+$20                                  ; $6dc4: $f8 $20
	ldh  [$80], a                                    ; $6dc6: $e0 $80
	nop                                              ; $6dc8: $00
	ld   b, b                                        ; $6dc9: $40
	jr   nz, jr_0a2_6d4c                             ; $6dca: $20 $80

	sub  b                                           ; $6dcc: $90
	ldh  [$e8], a                                    ; $6dcd: $e0 $e8
	db   $f4                                         ; $6dcf: $f4
	ldh  a, [$e2]                                    ; $6dd0: $f0 $e2
	ld   e, $93                                      ; $6dd2: $1e $93
	nop                                              ; $6dd4: $00
	add  b                                           ; $6dd5: $80
	ld   bc, $0308                                   ; $6dd6: $01 $08 $03
	ld   [bc], a                                     ; $6dd9: $02
	ld   b, $04                                      ; $6dda: $06 $04
	inc  c                                           ; $6ddc: $0c
	nop                                              ; $6ddd: $00
	stop                                             ; $6dde: $10 $00
	ld   h, b                                        ; $6de0: $60
	add  b                                           ; $6de1: $80
	ccf                                              ; $6de2: $3f
	add  b                                           ; $6de3: $80
	ld   a, $01                                      ; $6de4: $3e $01
	jr   nz, jr_0a2_6e48                             ; $6de6: $20 $60

	add  b                                           ; $6de8: $80
	db   $10                                         ; $6de9: $10
	ld   bc, $3818                                   ; $6dea: $01 $18 $38
	add  c                                           ; $6ded: $81
	rrca                                             ; $6dee: $0f
	inc  b                                           ; $6def: $04
	rra                                              ; $6df0: $1f
	rlca                                             ; $6df1: $07
	or   $81                                         ; $6df2: $f6 $81
	add  b                                           ; $6df4: $80
	add  b                                           ; $6df5: $80
	nop                                              ; $6df6: $00
	add  b                                           ; $6df7: $80
	ld   e, $80                                      ; $6df8: $1e $80
	ccf                                              ; $6dfa: $3f
	add  b                                           ; $6dfb: $80
	ld   a, a                                        ; $6dfc: $7f
	add  e                                           ; $6dfd: $83
	rst  $38                                         ; $6dfe: $ff
	add  c                                           ; $6dff: $81
	nop                                              ; $6e00: $00
	rlca                                             ; $6e01: $07
	add  b                                           ; $6e02: $80
	ld   b, b                                        ; $6e03: $40
	nop                                              ; $6e04: $00
	ld   hl, $c2d0                                   ; $6e05: $21 $d0 $c2
	jp   hl                                          ; $6e08: $e9


	push hl                                          ; $6e09: $e5
	add  b                                           ; $6e0a: $80
	di                                               ; $6e0b: $f3
	add  c                                           ; $6e0c: $81
	rst  $38                                         ; $6e0d: $ff
	nop                                              ; $6e0e: $00
	rrca                                             ; $6e0f: $0f
	adc  b                                           ; $6e10: $88
	rlca                                             ; $6e11: $07
	add  b                                           ; $6e12: $80
	inc  bc                                          ; $6e13: $03
	inc  bc                                          ; $6e14: $03
	nop                                              ; $6e15: $00
	db   $10                                         ; $6e16: $10
	inc  bc                                          ; $6e17: $03
	db   $e3                                         ; $6e18: $e3
	adc  d                                           ; $6e19: $8a
	rst  $38                                         ; $6e1a: $ff
	add  b                                           ; $6e1b: $80
	ld   a, a                                        ; $6e1c: $7f
	add  e                                           ; $6e1d: $83
	rst  $38                                         ; $6e1e: $ff
	adc  b                                           ; $6e1f: $88
	cp   $80                                         ; $6e20: $fe $80
	db   $fc                                         ; $6e22: $fc
	rst  $38                                         ; $6e23: $ff
	nop                                              ; $6e24: $00
	rst  $38                                         ; $6e25: $ff
	nop                                              ; $6e26: $00
	rst  $38                                         ; $6e27: $ff
	nop                                              ; $6e28: $00
	rst  $38                                         ; $6e29: $ff
	nop                                              ; $6e2a: $00
	rst  $38                                         ; $6e2b: $ff
	nop                                              ; $6e2c: $00
	rst  $38                                         ; $6e2d: $ff
	nop                                              ; $6e2e: $00
	rst  $38                                         ; $6e2f: $ff
	nop                                              ; $6e30: $00
	rst  $38                                         ; $6e31: $ff
	nop                                              ; $6e32: $00
	rst  $38                                         ; $6e33: $ff
	nop                                              ; $6e34: $00
	rst  $38                                         ; $6e35: $ff
	nop                                              ; $6e36: $00
	rst  $38                                         ; $6e37: $ff
	nop                                              ; $6e38: $00
	rst  $38                                         ; $6e39: $ff
	nop                                              ; $6e3a: $00
	and  d                                           ; $6e3b: $a2
	nop                                              ; $6e3c: $00
	and  b                                           ; $6e3d: $a0
	nop                                              ; $6e3e: $00
	add  hl, bc                                      ; $6e3f: $09
	rst  $38                                         ; $6e40: $ff
	nop                                              ; $6e41: $00
	inc  l                                           ; $6e42: $2c
	inc  a                                           ; $6e43: $3c
	ld   c, d                                        ; $6e44: $4a
	ld   e, d                                        ; $6e45: $5a
	ld   h, $66                                      ; $6e46: $26 $66

jr_0a2_6e48:
	ld   h, $66                                      ; $6e48: $26 $66
	add  b                                           ; $6e4a: $80
	ld   e, d                                        ; $6e4b: $5a
	add  b                                           ; $6e4c: $80
	inc  a                                           ; $6e4d: $3c
	add  b                                           ; $6e4e: $80
	nop                                              ; $6e4f: $00
	nop                                              ; $6e50: $00
	ld   [hl+], a                                    ; $6e51: $22
	add  h                                           ; $6e52: $84
	xor  d                                           ; $6e53: $aa
	nop                                              ; $6e54: $00
	and  d                                           ; $6e55: $a2
	add  b                                           ; $6e56: $80
	cp   d                                           ; $6e57: $ba
	add  c                                           ; $6e58: $81
	add  d                                           ; $6e59: $82
	add  c                                           ; $6e5a: $81
	ld   a, [$b800]                                  ; $6e5b: $fa $00 $b8
	add  b                                           ; $6e5e: $80
	ld   e, a                                        ; $6e5f: $5f
	nop                                              ; $6e60: $00
	ld   b, c                                        ; $6e61: $41
	add  b                                           ; $6e62: $80
	ld   e, l                                        ; $6e63: $5d
	add  c                                           ; $6e64: $81
	ld   b, l                                        ; $6e65: $45
	add  l                                           ; $6e66: $85
	ld   d, l                                        ; $6e67: $55
	add  hl, bc                                      ; $6e68: $09
	ld   de, $2c00                                   ; $6e69: $11 $00 $2c
	inc  a                                           ; $6e6c: $3c
	ld   c, d                                        ; $6e6d: $4a
	ld   e, d                                        ; $6e6e: $5a
	ld   h, $66                                      ; $6e6f: $26 $66
	ld   h, $66                                      ; $6e71: $26 $66
	add  b                                           ; $6e73: $80
	ld   e, d                                        ; $6e74: $5a
	add  b                                           ; $6e75: $80
	inc  a                                           ; $6e76: $3c
	add  b                                           ; $6e77: $80
	nop                                              ; $6e78: $00
	nop                                              ; $6e79: $00
	ld   [bc], a                                     ; $6e7a: $02
	add  d                                           ; $6e7b: $82
	ld   a, [$8200]                                  ; $6e7c: $fa $00 $82
	add  b                                           ; $6e7f: $80
	cp   d                                           ; $6e80: $ba
	add  c                                           ; $6e81: $81
	and  d                                           ; $6e82: $a2
	add  e                                           ; $6e83: $83
	xor  d                                           ; $6e84: $aa
	add  hl, bc                                      ; $6e85: $09
	adc  b                                           ; $6e86: $88
	nop                                              ; $6e87: $00
	inc  l                                           ; $6e88: $2c
	inc  a                                           ; $6e89: $3c
	ld   c, d                                        ; $6e8a: $4a
	ld   e, d                                        ; $6e8b: $5a
	ld   h, $66                                      ; $6e8c: $26 $66
	ld   h, $66                                      ; $6e8e: $26 $66
	add  b                                           ; $6e90: $80
	ld   e, d                                        ; $6e91: $5a
	add  b                                           ; $6e92: $80
	inc  a                                           ; $6e93: $3c
	add  d                                           ; $6e94: $82
	nop                                              ; $6e95: $00
	dec  b                                           ; $6e96: $05
	rlca                                             ; $6e97: $07
	daa                                              ; $6e98: $27
	jr   nc, jr_0a2_6eeb                             ; $6e99: $30 $50

	ld   h, h                                        ; $6e9b: $64
	dec  h                                           ; $6e9c: $25
	add  b                                           ; $6e9d: $80
	ld   bc, $5101                                   ; $6e9e: $01 $01 $51
	ld   d, a                                        ; $6ea1: $57
	add  c                                           ; $6ea2: $81
	ld   b, a                                        ; $6ea3: $47
	add  d                                           ; $6ea4: $82
	ld   e, a                                        ; $6ea5: $5f
	nop                                              ; $6ea6: $00
	ld   b, a                                        ; $6ea7: $47
	add  b                                           ; $6ea8: $80
	ld   d, a                                        ; $6ea9: $57
	rlca                                             ; $6eaa: $07
	rlca                                             ; $6eab: $07
	ld   bc, $2505                                   ; $6eac: $01 $05 $25
	ld   sp, $6750                                   ; $6eaf: $31 $50 $67
	daa                                              ; $6eb2: $27
	add  d                                           ; $6eb3: $82
	nop                                              ; $6eb4: $00
	dec  b                                           ; $6eb5: $05
	ldh  [$e4], a                                    ; $6eb6: $e0 $e4
	ld   b, $0a                                      ; $6eb8: $06 $0a
	inc  l                                           ; $6eba: $2c
	and  h                                           ; $6ebb: $a4
	add  b                                           ; $6ebc: $80
	add  b                                           ; $6ebd: $80
	ld   bc, $ea8a                                   ; $6ebe: $01 $8a $ea
	add  c                                           ; $6ec1: $81
	ldh  [c], a                                      ; $6ec2: $e2
	add  d                                           ; $6ec3: $82
	ld   a, [$e200]                                  ; $6ec4: $fa $00 $e2
	add  b                                           ; $6ec7: $80
	ld   [$e007], a                                  ; $6ec8: $ea $07 $e0
	add  b                                           ; $6ecb: $80
	and  b                                           ; $6ecc: $a0
	and  h                                           ; $6ecd: $a4
	add  [hl]                                        ; $6ece: $86
	ld   a, [bc]                                     ; $6ecf: $0a
	db   $ec                                         ; $6ed0: $ec
	db   $e4                                         ; $6ed1: $e4
	add  d                                           ; $6ed2: $82
	nop                                              ; $6ed3: $00
	rlca                                             ; $6ed4: $07
	inc  l                                           ; $6ed5: $2c
	inc  a                                           ; $6ed6: $3c
	ld   c, d                                        ; $6ed7: $4a
	ld   e, d                                        ; $6ed8: $5a
	ld   h, $66                                      ; $6ed9: $26 $66
	ld   h, $66                                      ; $6edb: $26 $66
	add  b                                           ; $6edd: $80
	ld   e, d                                        ; $6ede: $5a
	add  b                                           ; $6edf: $80
	inc  a                                           ; $6ee0: $3c
	add  b                                           ; $6ee1: $80
	nop                                              ; $6ee2: $00
	nop                                              ; $6ee3: $00
	ld   b, h                                        ; $6ee4: $44
	adc  b                                           ; $6ee5: $88
	ld   d, l                                        ; $6ee6: $55
	nop                                              ; $6ee7: $00
	ld   b, l                                        ; $6ee8: $45
	add  b                                           ; $6ee9: $80
	ld   e, l                                        ; $6eea: $5d

jr_0a2_6eeb:
	add  b                                           ; $6eeb: $80
	ld   b, c                                        ; $6eec: $41
	ld   bc, $0001                                   ; $6eed: $01 $01 $00
	add  b                                           ; $6ef0: $80
	rst  $38                                         ; $6ef1: $ff
	add  b                                           ; $6ef2: $80
	nop                                              ; $6ef3: $00
	nop                                              ; $6ef4: $00
	ld   [bc], a                                     ; $6ef5: $02
	add  b                                           ; $6ef6: $80
	ld   a, [$0200]                                  ; $6ef7: $fa $00 $02
	add  b                                           ; $6efa: $80
	cp   $81                                         ; $6efb: $fe $81
	nop                                              ; $6efd: $00
	sub  b                                           ; $6efe: $90
	rst  $38                                         ; $6eff: $ff
	nop                                              ; $6f00: $00
	nop                                              ; $6f01: $00
	add  b                                           ; $6f02: $80
	rst  $38                                         ; $6f03: $ff
	add  b                                           ; $6f04: $80
	nop                                              ; $6f05: $00
	add  b                                           ; $6f06: $80
	rst  $38                                         ; $6f07: $ff
	add  c                                           ; $6f08: $81
	nop                                              ; $6f09: $00
	sub  e                                           ; $6f0a: $93
	rst  $38                                         ; $6f0b: $ff
	nop                                              ; $6f0c: $00
	xor  a                                           ; $6f0d: $af
	sbc  l                                           ; $6f0e: $9d
	ld   d, a                                        ; $6f0f: $57
	nop                                              ; $6f10: $00
	rlca                                             ; $6f11: $07
	sbc  l                                           ; $6f12: $9d
	rst  $38                                         ; $6f13: $ff
	ld   bc, $41bf                                   ; $6f14: $01 $bf $41
	add  b                                           ; $6f17: $80
	ld   e, l                                        ; $6f18: $5d
	add  c                                           ; $6f19: $81
	ld   b, l                                        ; $6f1a: $45
	add  a                                           ; $6f1b: $87
	ld   d, l                                        ; $6f1c: $55
	add  hl, bc                                      ; $6f1d: $09
	ld   de, $2c00                                   ; $6f1e: $11 $00 $2c
	inc  a                                           ; $6f21: $3c
	ld   c, d                                        ; $6f22: $4a
	ld   e, d                                        ; $6f23: $5a
	ld   h, $66                                      ; $6f24: $26 $66
	ld   h, $66                                      ; $6f26: $26 $66
	add  b                                           ; $6f28: $80
	ld   e, d                                        ; $6f29: $5a
	add  b                                           ; $6f2a: $80
	inc  a                                           ; $6f2b: $3c
	add  b                                           ; $6f2c: $80
	nop                                              ; $6f2d: $00
	ld   bc, $8202                                   ; $6f2e: $01 $02 $82
	add  b                                           ; $6f31: $80
	cp   d                                           ; $6f32: $ba
	add  c                                           ; $6f33: $81
	and  d                                           ; $6f34: $a2
	add  a                                           ; $6f35: $87
	xor  d                                           ; $6f36: $aa
	add  hl, bc                                      ; $6f37: $09
	adc  b                                           ; $6f38: $88
	nop                                              ; $6f39: $00
	inc  l                                           ; $6f3a: $2c
	inc  a                                           ; $6f3b: $3c
	ld   c, d                                        ; $6f3c: $4a
	ld   e, d                                        ; $6f3d: $5a
	ld   h, $66                                      ; $6f3e: $26 $66
	ld   h, $66                                      ; $6f40: $26 $66
	add  b                                           ; $6f42: $80
	ld   e, d                                        ; $6f43: $5a
	add  b                                           ; $6f44: $80
	inc  a                                           ; $6f45: $3c
	add  d                                           ; $6f46: $82
	nop                                              ; $6f47: $00
	rlca                                             ; $6f48: $07
	inc  l                                           ; $6f49: $2c
	inc  a                                           ; $6f4a: $3c
	ld   c, d                                        ; $6f4b: $4a
	ld   e, d                                        ; $6f4c: $5a
	ld   h, $66                                      ; $6f4d: $26 $66
	ld   h, $66                                      ; $6f4f: $26 $66
	add  b                                           ; $6f51: $80
	ld   e, d                                        ; $6f52: $5a
	add  b                                           ; $6f53: $80
	inc  a                                           ; $6f54: $3c
	add  b                                           ; $6f55: $80
	nop                                              ; $6f56: $00
	nop                                              ; $6f57: $00
	ld   [hl+], a                                    ; $6f58: $22
	adc  b                                           ; $6f59: $88
	xor  d                                           ; $6f5a: $aa
	nop                                              ; $6f5b: $00
	and  d                                           ; $6f5c: $a2
	add  b                                           ; $6f5d: $80
	cp   d                                           ; $6f5e: $ba
	add  b                                           ; $6f5f: $80
	add  d                                           ; $6f60: $82
	add  hl, bc                                      ; $6f61: $09
	add  b                                           ; $6f62: $80
	nop                                              ; $6f63: $00
	inc  l                                           ; $6f64: $2c
	inc  a                                           ; $6f65: $3c
	ld   c, d                                        ; $6f66: $4a
	ld   e, d                                        ; $6f67: $5a
	ld   h, $66                                      ; $6f68: $26 $66
	ld   h, $66                                      ; $6f6a: $26 $66
	add  b                                           ; $6f6c: $80
	ld   e, d                                        ; $6f6d: $5a
	add  b                                           ; $6f6e: $80
	inc  a                                           ; $6f6f: $3c
	add  b                                           ; $6f70: $80
	nop                                              ; $6f71: $00
	nop                                              ; $6f72: $00
	ld   b, h                                        ; $6f73: $44
	add  h                                           ; $6f74: $84
	ld   d, l                                        ; $6f75: $55
	nop                                              ; $6f76: $00
	ld   b, l                                        ; $6f77: $45
	add  b                                           ; $6f78: $80
	ld   e, l                                        ; $6f79: $5d
	add  c                                           ; $6f7a: $81
	ld   b, c                                        ; $6f7b: $41
	add  c                                           ; $6f7c: $81
	ld   e, a                                        ; $6f7d: $5f
	ld   bc, $001f                                   ; $6f7e: $01 $1f $00
	add  b                                           ; $6f81: $80
	rst  $38                                         ; $6f82: $ff
	add  b                                           ; $6f83: $80
	nop                                              ; $6f84: $00
	nop                                              ; $6f85: $00
	ld   [$eb80], sp                                 ; $6f86: $08 $80 $eb
	nop                                              ; $6f89: $00
	dec  bc                                          ; $6f8a: $0b
	add  b                                           ; $6f8b: $80
	ei                                               ; $6f8c: $fb
	add  c                                           ; $6f8d: $81
	inc  bc                                          ; $6f8e: $03
	sub  b                                           ; $6f8f: $90
	rst  $38                                         ; $6f90: $ff
	nop                                              ; $6f91: $00
	nop                                              ; $6f92: $00
	add  b                                           ; $6f93: $80
	rst  $38                                         ; $6f94: $ff
	add  b                                           ; $6f95: $80
	nop                                              ; $6f96: $00
	nop                                              ; $6f97: $00
	db   $10                                         ; $6f98: $10
	add  b                                           ; $6f99: $80
	rst  $10                                         ; $6f9a: $d7
	nop                                              ; $6f9b: $00
	ret  nc                                          ; $6f9c: $d0

	add  b                                           ; $6f9d: $80
	rst  JumpTable                                         ; $6f9e: $df
	add  c                                           ; $6f9f: $81
	ret  nz                                          ; $6fa0: $c0

	sub  b                                           ; $6fa1: $90
	rst  $38                                         ; $6fa2: $ff
	ld   [$2c00], sp                                 ; $6fa3: $08 $00 $2c
	inc  a                                           ; $6fa6: $3c
	ld   c, d                                        ; $6fa7: $4a
	ld   e, d                                        ; $6fa8: $5a
	ld   h, $66                                      ; $6fa9: $26 $66
	ld   h, $66                                      ; $6fab: $26 $66
	add  b                                           ; $6fad: $80
	ld   e, d                                        ; $6fae: $5a
	add  b                                           ; $6faf: $80
	inc  a                                           ; $6fb0: $3c
	add  d                                           ; $6fb1: $82
	nop                                              ; $6fb2: $00
	add  b                                           ; $6fb3: $80
	rst  $38                                         ; $6fb4: $ff
	add  b                                           ; $6fb5: $80
	nop                                              ; $6fb6: $00
	nop                                              ; $6fb7: $00
	ld   [bc], a                                     ; $6fb8: $02
	add  b                                           ; $6fb9: $80
	ld   a, [$0200]                                  ; $6fba: $fa $00 $02
	add  b                                           ; $6fbd: $80
	cp   $81                                         ; $6fbe: $fe $81
	nop                                              ; $6fc0: $00
	add  b                                           ; $6fc1: $80
	rst  $38                                         ; $6fc2: $ff
	nop                                              ; $6fc3: $00
	nop                                              ; $6fc4: $00
	add  b                                           ; $6fc5: $80
	rst  $38                                         ; $6fc6: $ff
	add  b                                           ; $6fc7: $80
	nop                                              ; $6fc8: $00
	add  b                                           ; $6fc9: $80
	rst  $38                                         ; $6fca: $ff
	add  c                                           ; $6fcb: $81
	nop                                              ; $6fcc: $00
	add  e                                           ; $6fcd: $83
	rst  $38                                         ; $6fce: $ff
	nop                                              ; $6fcf: $00
	cp   e                                           ; $6fd0: $bb
	adc  b                                           ; $6fd1: $88
	ld   d, l                                        ; $6fd2: $55
	nop                                              ; $6fd3: $00
	ld   b, l                                        ; $6fd4: $45
	add  b                                           ; $6fd5: $80
	ld   e, l                                        ; $6fd6: $5d
	add  b                                           ; $6fd7: $80
	ld   b, c                                        ; $6fd8: $41
	nop                                              ; $6fd9: $00
	ld   d, c                                        ; $6fda: $51
	adc  l                                           ; $6fdb: $8d
	ld   d, a                                        ; $6fdc: $57
	nop                                              ; $6fdd: $00
	rlca                                             ; $6fde: $07
	adc  l                                           ; $6fdf: $8d
	rst  $38                                         ; $6fe0: $ff

jr_0a2_6fe1:
	rst  $38                                         ; $6fe1: $ff
	nop                                              ; $6fe2: $00
	rst  $38                                         ; $6fe3: $ff
	nop                                              ; $6fe4: $00
	rst  $38                                         ; $6fe5: $ff
	nop                                              ; $6fe6: $00
	sbc  e                                           ; $6fe7: $9b
	nop                                              ; $6fe8: $00
	ld   [hl], h                                     ; $6fe9: $74
	nop                                              ; $6fea: $00
	ld   b, $07                                      ; $6feb: $06 $07
	nop                                              ; $6fed: $00
	jr   jr_0a2_6ff0                                 ; $6fee: $18 $00

jr_0a2_6ff0:
	jr   nz, jr_0a2_6ff2                             ; $6ff0: $20 $00

jr_0a2_6ff2:
	ld   b, b                                        ; $6ff2: $40
	add  b                                           ; $6ff3: $80
	db   $10                                         ; $6ff4: $10
	ld   bc, $8c0c                                   ; $6ff5: $01 $0c $8c
	add  c                                           ; $6ff8: $81
	nop                                              ; $6ff9: $00

jr_0a2_6ffa:
	add  d                                           ; $6ffa: $82
	ld   bc, $8101                                   ; $6ffb: $01 $01 $81
	ld   bc, $0580                                   ; $6ffe: $01 $80 $05
	ld   b, $47                                      ; $7001: $06 $47
	rlca                                             ; $7003: $07
	inc  hl                                          ; $7004: $23
	inc  bc                                          ; $7005: $03
	inc  de                                          ; $7006: $13
	inc  bc                                          ; $7007: $03
	ld   [$0081], sp                                 ; $7008: $08 $81 $00
	dec  bc                                          ; $700b: $0b
	ei                                               ; $700c: $fb
	nop                                              ; $700d: $00
	inc  b                                           ; $700e: $04
	nop                                              ; $700f: $00
	inc  b                                           ; $7010: $04
	nop                                              ; $7011: $00
	ld   [bc], a                                     ; $7012: $02
	db   $10                                         ; $7013: $10
	ld   [de], a                                     ; $7014: $12
	ldh  [$e2], a                                    ; $7015: $e0 $e2
	nop                                              ; $7017: $00
	add  d                                           ; $7018: $82
	ld   b, b                                        ; $7019: $40
	add  c                                           ; $701a: $81
	ld   [$4801], sp                                 ; $701b: $08 $01 $48
	jp   z, $d880                                    ; $701e: $ca $80 $d8

	inc  d                                           ; $7021: $14
	ret  z                                           ; $7022: $c8

	or   h                                           ; $7023: $b4
	ldh  a, [$e8]                                    ; $7024: $f0 $e8
	ldh  [rAUD1SWEEP], a                             ; $7026: $e0 $10
	nop                                              ; $7028: $00
	rlca                                             ; $7029: $07
	nop                                              ; $702a: $00
	dec  de                                          ; $702b: $1b
	nop                                              ; $702c: $00
	inc  b                                           ; $702d: $04
	nop                                              ; $702e: $00
	inc  b                                           ; $702f: $04
	nop                                              ; $7030: $00
	ld   [bc], a                                     ; $7031: $02
	db   $10                                         ; $7032: $10
	ld   [de], a                                     ; $7033: $12
	ldh  [$e2], a                                    ; $7034: $e0 $e2
	nop                                              ; $7036: $00
	add  d                                           ; $7037: $82
	ld   b, b                                        ; $7038: $40
	add  c                                           ; $7039: $81
	ld   [$4801], sp                                 ; $703a: $08 $01 $48
	jp   z, $d880                                    ; $703d: $ca $80 $d8

	dec  b                                           ; $7040: $05
	ret  z                                           ; $7041: $c8

	or   h                                           ; $7042: $b4
	ldh  a, [$e8]                                    ; $7043: $f0 $e8
	ldh  [rAUD1SWEEP], a                             ; $7045: $e0 $10
	add  c                                           ; $7047: $81
	nop                                              ; $7048: $00
	nop                                              ; $7049: $00
	rst  $28                                         ; $704a: $ef
	add  b                                           ; $704b: $80
	nop                                              ; $704c: $00

jr_0a2_704d:
	add  c                                           ; $704d: $81
	ld   bc, $1f01                                   ; $704e: $01 $01 $1f
	ld   c, $84                                      ; $7051: $0e $84
	rrca                                             ; $7053: $0f
	add  b                                           ; $7054: $80
	inc  bc                                          ; $7055: $03
	nop                                              ; $7056: $00
	db   $10                                         ; $7057: $10
	add  e                                           ; $7058: $83
	nop                                              ; $7059: $00
	nop                                              ; $705a: $00
	db   $10                                         ; $705b: $10
	add  c                                           ; $705c: $81
	nop                                              ; $705d: $00
	nop                                              ; $705e: $00
	jr   nz, jr_0a2_6fe1                             ; $705f: $20 $80

	db   $10                                         ; $7061: $10
	dec  b                                           ; $7062: $05
	dec  de                                          ; $7063: $1b
	dec  sp                                          ; $7064: $3b
	nop                                              ; $7065: $00
	ldh  [c], a                                      ; $7066: $e2
	jp   nz, $80c0                                   ; $7067: $c2 $c0 $80

	db   $ec                                         ; $706a: $ec
	dec  b                                           ; $706b: $05
	db   $fc                                         ; $706c: $fc
	cp   $78                                         ; $706d: $fe $78
	db   $fd                                         ; $706f: $fd
	add  b                                           ; $7070: $80
	ret  c                                           ; $7071: $d8

	add  e                                           ; $7072: $83
	ret  nz                                          ; $7073: $c0

	add  b                                           ; $7074: $80
	nop                                              ; $7075: $00
	nop                                              ; $7076: $00
	jr   nz, jr_0a2_6ffa                             ; $7077: $20 $81

	nop                                              ; $7079: $00
	nop                                              ; $707a: $00
	ld   b, b                                        ; $707b: $40
	add  c                                           ; $707c: $81
	nop                                              ; $707d: $00
	ld   b, $40                                      ; $707e: $06 $40
	nop                                              ; $7080: $00
	ld   h, b                                        ; $7081: $60
	ret  nz                                          ; $7082: $c0

	add  b                                           ; $7083: $80
	nop                                              ; $7084: $00
	ldh  [$87], a                                    ; $7085: $e0 $87
	nop                                              ; $7087: $00
	ld   a, [bc]                                     ; $7088: $0a
	ld   bc, $f200                                   ; $7089: $01 $00 $f2
	ld   bc, $323f                                   ; $708c: $01 $3f $32
	dec  b                                           ; $708f: $05
	inc  b                                           ; $7090: $04
	ldh  a, [c]                                      ; $7091: $f2
	ldh  a, [$f4]                                    ; $7092: $f0 $f4
	add  c                                           ; $7094: $81
	ldh  a, [rSC]                                    ; $7095: $f0 $02
	ld   [$f000], sp                                 ; $7097: $08 $00 $f0
	adc  l                                           ; $709a: $8d
	nop                                              ; $709b: $00
	nop                                              ; $709c: $00
	add  b                                           ; $709d: $80
	add  c                                           ; $709e: $81
	nop                                              ; $709f: $00
	nop                                              ; $70a0: $00
	add  b                                           ; $70a1: $80
	adc  a                                           ; $70a2: $8f
	nop                                              ; $70a3: $00
	rrca                                             ; $70a4: $0f
	ldh  [$c0], a                                    ; $70a5: $e0 $c0
	ret  nc                                          ; $70a7: $d0

	ldh  [$ef], a                                    ; $70a8: $e0 $ef
	ldh  [$e2], a                                    ; $70aa: $e0 $e2
	ld   a, [$38f8]                                  ; $70ac: $fa $f8 $38
	cp   $c0                                         ; $70af: $fe $c0
	ret  c                                           ; $70b1: $d8

	ret  nz                                          ; $70b2: $c0

	pop  bc                                          ; $70b3: $c1
	ret  nz                                          ; $70b4: $c0

	add  b                                           ; $70b5: $80
	nop                                              ; $70b6: $00
	nop                                              ; $70b7: $00
	jr   nz, @-$7d                                   ; $70b8: $20 $81

	nop                                              ; $70ba: $00
	nop                                              ; $70bb: $00
	ld   b, b                                        ; $70bc: $40
	add  c                                           ; $70bd: $81
	nop                                              ; $70be: $00
	dec  bc                                          ; $70bf: $0b
	ld   b, b                                        ; $70c0: $40
	nop                                              ; $70c1: $00
	ld   h, b                                        ; $70c2: $60
	ret  nz                                          ; $70c3: $c0

	add  b                                           ; $70c4: $80
	nop                                              ; $70c5: $00
	ldh  [rP1], a                                    ; $70c6: $e0 $00
	ldh  a, [rP1]                                    ; $70c8: $f0 $00
	ccf                                              ; $70ca: $3f
	jr   nc, jr_0a2_704d                             ; $70cb: $30 $80

	add  $03                                         ; $70cd: $c6 $03
	ld   sp, hl                                      ; $70cf: $f9
	ld   hl, sp-$0a                                  ; $70d0: $f8 $f6
	ldh  a, [$80]                                    ; $70d2: $f0 $80
	ld   [hl], b                                     ; $70d4: $70
	ld   [bc], a                                     ; $70d5: $02
	adc  b                                           ; $70d6: $88
	nop                                              ; $70d7: $00
	ld   [hl], b                                     ; $70d8: $70
	adc  a                                           ; $70d9: $8f
	nop                                              ; $70da: $00
	ld   [bc], a                                     ; $70db: $02
	add  b                                           ; $70dc: $80
	nop                                              ; $70dd: $00
	ld   b, b                                        ; $70de: $40
	add  b                                           ; $70df: $80
	add  b                                           ; $70e0: $80

jr_0a2_70e1:
	ld   bc, $c000                                   ; $70e1: $01 $00 $c0
	sbc  a                                           ; $70e4: $9f
	nop                                              ; $70e5: $00
	inc  b                                           ; $70e6: $04
	inc  b                                           ; $70e7: $04
	nop                                              ; $70e8: $00
	inc  c                                           ; $70e9: $0c
	ld   bc, $8016                                   ; $70ea: $01 $16 $80
	ld   [$0f01], sp                                 ; $70ed: $08 $01 $0f
	rra                                              ; $70f0: $1f
	add  b                                           ; $70f1: $80

Call_0a2_70f2:
	nop                                              ; $70f2: $00
	add  c                                           ; $70f3: $81
	rlca                                             ; $70f4: $07
	inc  b                                           ; $70f5: $04
	rrca                                             ; $70f6: $0f
	inc  bc                                          ; $70f7: $03
	rlca                                             ; $70f8: $07
	nop                                              ; $70f9: $00
	inc  bc                                          ; $70fa: $03
	adc  e                                           ; $70fb: $8b
	nop                                              ; $70fc: $00
	dec  b                                           ; $70fd: $05
	ld   b, b                                        ; $70fe: $40
	nop                                              ; $70ff: $00
	ld   d, b                                        ; $7100: $50
	ld   b, b                                        ; $7101: $40
	cp   b                                           ; $7102: $b8
	db   $10                                         ; $7103: $10
	add  b                                           ; $7104: $80
	ldh  a, [rSC]                                    ; $7105: $f0 $02
	ld   [$6000], sp                                 ; $7107: $08 $00 $60
	add  c                                           ; $710a: $81
	ldh  [rDIV], a                                   ; $710b: $e0 $04
	ret  nc                                          ; $710d: $d0

	ret  nz                                          ; $710e: $c0

	and  b                                           ; $710f: $a0
	nop                                              ; $7110: $00
	ret  nz                                          ; $7111: $c0

	sub  l                                           ; $7112: $95
	nop                                              ; $7113: $00
	add  b                                           ; $7114: $80
	ld   bc, $0580                                   ; $7115: $01 $80 $05
	ld   bc, $0e0c                                   ; $7118: $01 $0c $0e
	add  b                                           ; $711b: $80
	inc  bc                                          ; $711c: $03
	ld   bc, $0604                                   ; $711d: $01 $04 $06
	sub  h                                           ; $7120: $94
	nop                                              ; $7121: $00
	add  b                                           ; $7122: $80
	ld   b, b                                        ; $7123: $40
	ld   [$f0d0], sp                                 ; $7124: $08 $d0 $f0
	jr   jr_0a2_70e1                                 ; $7127: $18 $b8

	nop                                              ; $7129: $00
	and  b                                           ; $712a: $a0
	nop                                              ; $712b: $00
	and  b                                           ; $712c: $a0
	add  b                                           ; $712d: $80
	sub  e                                           ; $712e: $93
	nop                                              ; $712f: $00
	add  hl, bc                                      ; $7130: $09
	ld   de, $1501                                   ; $7131: $11 $01 $15
	ld   bc, $0e08                                   ; $7134: $01 $08 $0e
	dec  bc                                          ; $7137: $0b
	inc  bc                                          ; $7138: $03
	inc  c                                           ; $7139: $0c
	ld   b, $8a                                      ; $713a: $06 $8a
	nop                                              ; $713c: $00
	inc  b                                           ; $713d: $04
	inc  b                                           ; $713e: $04
	nop                                              ; $713f: $00
	inc  c                                           ; $7140: $0c
	nop                                              ; $7141: $00
	rla                                              ; $7142: $17
	add  b                                           ; $7143: $80
	ld   [$0f01], sp                                 ; $7144: $08 $01 $0f
	rra                                              ; $7147: $1f
	add  b                                           ; $7148: $80
	nop                                              ; $7149: $00
	add  c                                           ; $714a: $81
	rlca                                             ; $714b: $07
	inc  b                                           ; $714c: $04
	rrca                                             ; $714d: $0f
	inc  bc                                          ; $714e: $03
	rlca                                             ; $714f: $07
	nop                                              ; $7150: $00
	inc  bc                                          ; $7151: $03
	sub  l                                           ; $7152: $95
	nop                                              ; $7153: $00
	add  b                                           ; $7154: $80
	ld   bc, $0d08                                   ; $7155: $01 $08 $0d
	dec  b                                           ; $7158: $05
	inc  b                                           ; $7159: $04
	ld   c, $07                                      ; $715a: $0e $07
	inc  bc                                          ; $715c: $03
	ld   de, $1106                                   ; $715d: $11 $06 $11
	sub  e                                           ; $7160: $93
	nop                                              ; $7161: $00
	add  b                                           ; $7162: $80
	ld   b, b                                        ; $7163: $40
	ld   [$f0d0], sp                                 ; $7164: $08 $d0 $f0
	sbc  b                                           ; $7167: $98
	jr   c, jr_0a2_716a                              ; $7168: $38 $00

jr_0a2_716a:
	and  b                                           ; $716a: $a0
	nop                                              ; $716b: $00
	and  b                                           ; $716c: $a0
	add  b                                           ; $716d: $80
	rst  $38                                         ; $716e: $ff
	nop                                              ; $716f: $00
	rst  $38                                         ; $7170: $ff
	nop                                              ; $7171: $00
	rst  $38                                         ; $7172: $ff
	nop                                              ; $7173: $00
	rst  $38                                         ; $7174: $ff
	nop                                              ; $7175: $00
	rst  $38                                         ; $7176: $ff
	nop                                              ; $7177: $00
	rst  $38                                         ; $7178: $ff
	nop                                              ; $7179: $00
	rst  $38                                         ; $717a: $ff
	nop                                              ; $717b: $00
	rst  $38                                         ; $717c: $ff
	nop                                              ; $717d: $00
	rst  $38                                         ; $717e: $ff
	nop                                              ; $717f: $00
	rst  $38                                         ; $7180: $ff
	nop                                              ; $7181: $00
	rst  $38                                         ; $7182: $ff
	nop                                              ; $7183: $00
	or   h                                           ; $7184: $b4
	nop                                              ; $7185: $00
	adc  h                                           ; $7186: $8c
	nop                                              ; $7187: $00
	ld   bc, $00ff                                   ; $7188: $01 $ff $00
	add  b                                           ; $718b: $80
	ld   bc, $0080                                   ; $718c: $01 $80 $00
	add  b                                           ; $718f: $80
	dec  b                                           ; $7190: $05
	add  b                                           ; $7191: $80
	jr   jr_0a2_7196                                 ; $7192: $18 $02

	ld   [de], a                                     ; $7194: $12
	ld   d, d                                        ; $7195: $52

jr_0a2_7196:
	ld   b, d                                        ; $7196: $42
	add  b                                           ; $7197: $80
	jp   z, $fa07                                    ; $7198: $ca $07 $fa

	ld   hl, sp+$00                                  ; $719b: $f8 $00
	rra                                              ; $719d: $1f
	jr   nz, jr_0a2_71e0                             ; $719e: $20 $40

	add  b                                           ; $71a0: $80
	rst  $38                                         ; $71a1: $ff
	add  c                                           ; $71a2: $81
	nop                                              ; $71a3: $00
	nop                                              ; $71a4: $00
	rst  $38                                         ; $71a5: $ff
	add  b                                           ; $71a6: $80
	add  b                                           ; $71a7: $80
	add  b                                           ; $71a8: $80
	ldh  a, [rAUD1LEN]                               ; $71a9: $f0 $11
	ld   sp, hl                                      ; $71ab: $f9
	ld   bc, $8018                                   ; $71ac: $01 $18 $80
	jr   nz, jr_0a2_71f2                             ; $71af: $20 $41

	ld   bc, $13f3                                   ; $71b1: $01 $f3 $13
	rra                                              ; $71b4: $1f
	inc  bc                                          ; $71b5: $03
	db   $e3                                         ; $71b6: $e3
	ld   h, b                                        ; $71b7: $60
	ld   a, b                                        ; $71b8: $78
	jr   jr_0a2_71d7                                 ; $71b9: $18 $1c

	push hl                                          ; $71bb: $e5
	dec  de                                          ; $71bc: $1b
	add  e                                           ; $71bd: $83
	ld   a, [$fb05]                                  ; $71be: $fa $05 $fb
	sbc  e                                           ; $71c1: $9b
	ei                                               ; $71c2: $fb
	dec  bc                                          ; $71c3: $0b
	add  hl, de                                      ; $71c4: $19
	add  l                                           ; $71c5: $85
	add  d                                           ; $71c6: $82
	dec  b                                           ; $71c7: $05
	ld   bc, $ff0b                                   ; $71c8: $01 $0b $ff
	add  b                                           ; $71cb: $80
	add  b                                           ; $71cc: $80
	add  b                                           ; $71cd: $80
	nop                                              ; $71ce: $00
	add  b                                           ; $71cf: $80
	rra                                              ; $71d0: $1f
	add  b                                           ; $71d1: $80
	rst  $38                                         ; $71d2: $ff
	add  b                                           ; $71d3: $80
	add  e                                           ; $71d4: $83
	add  d                                           ; $71d5: $82
	nop                                              ; $71d6: $00

jr_0a2_71d7:
	dec  b                                           ; $71d7: $05
	rst  $38                                         ; $71d8: $ff
	ei                                               ; $71d9: $fb
	ld   a, e                                        ; $71da: $7b
	ld   [hl], e                                     ; $71db: $73
	dec  c                                           ; $71dc: $0d
	ld   bc, $fe80                                   ; $71dd: $01 $80 $fe

jr_0a2_71e0:
	nop                                              ; $71e0: $00
	rst  $38                                         ; $71e1: $ff
	add  b                                           ; $71e2: $80
	jp   $f902                                       ; $71e3: $c3 $02 $f9


	ld   a, c                                        ; $71e6: $79
	ld   a, a                                        ; $71e7: $7f
	add  b                                           ; $71e8: $80
	rrca                                             ; $71e9: $0f
	ld   [bc], a                                     ; $71ea: $02
	db   $fd                                         ; $71eb: $fd
	nop                                              ; $71ec: $00
	ld   b, $81                                      ; $71ed: $06 $81
	nop                                              ; $71ef: $00
	ld   a, [bc]                                     ; $71f0: $0a
	ret  nz                                          ; $71f1: $c0

jr_0a2_71f2:
	nop                                              ; $71f2: $00
	ld   hl, sp+$04                                  ; $71f3: $f8 $04
	inc  [hl]                                        ; $71f5: $34
	inc  b                                           ; $71f6: $04
	add  h                                           ; $71f7: $84
	inc  b                                           ; $71f8: $04
	call nz, Call_0a2_4e04                           ; $71f9: $c4 $04 $4e
	add  c                                           ; $71fc: $81
	ld   bc, $0500                                   ; $71fd: $01 $00 $05
	add  c                                           ; $7200: $81
	ld   bc, $3980                                   ; $7201: $01 $80 $39
	ld   [bc], a                                     ; $7204: $02
	dec  e                                           ; $7205: $1d
	dec  c                                           ; $7206: $0d

jr_0a2_7207:
	dec  e                                           ; $7207: $1d
	add  c                                           ; $7208: $81
	dec  b                                           ; $7209: $05
	ld   [$48f4], sp                                 ; $720a: $08 $f4 $48
	ld   e, c                                        ; $720d: $59
	ld   d, b                                        ; $720e: $50
	ld   d, e                                        ; $720f: $53
	db   $10                                         ; $7210: $10
	add  h                                           ; $7211: $84
	add  b                                           ; $7212: $80
	xor  a                                           ; $7213: $af
	add  c                                           ; $7214: $81
	adc  b                                           ; $7215: $88
	dec  b                                           ; $7216: $05
	sub  d                                           ; $7217: $92
	add  b                                           ; $7218: $80
	add  [hl]                                        ; $7219: $86
	add  h                                           ; $721a: $84
	ld   sp, $8000                                   ; $721b: $31 $00 $80
	rlca                                             ; $721e: $07
	add  b                                           ; $721f: $80
	rra                                              ; $7220: $1f
	add  b                                           ; $7221: $80
	ld   a, a                                        ; $7222: $7f
	add  b                                           ; $7223: $80
	ld   a, $80                                      ; $7224: $3e $80
	ld   d, b                                        ; $7226: $50
	add  b                                           ; $7227: $80
	ld   b, b                                        ; $7228: $40
	add  b                                           ; $7229: $80
	ld   h, b                                        ; $722a: $60
	add  b                                           ; $722b: $80
	ld   a, a                                        ; $722c: $7f
	nop                                              ; $722d: $00
	rst  $38                                         ; $722e: $ff
	add  b                                           ; $722f: $80
	db   $fd                                         ; $7230: $fd
	add  b                                           ; $7231: $80
	ld   sp, hl                                      ; $7232: $f9
	ld   bc, $41c1                                   ; $7233: $01 $c1 $41
	add  b                                           ; $7236: $80
	ld   h, c                                        ; $7237: $61
	ld   [bc], a                                     ; $7238: $02
	ld   [hl], a                                     ; $7239: $77
	scf                                              ; $723a: $37
	ccf                                              ; $723b: $3f
	add  b                                           ; $723c: $80
	ld   d, $0d                                      ; $723d: $16 $0d
	cp   e                                           ; $723f: $bb
	nop                                              ; $7240: $00

jr_0a2_7241:
	jr   nz, jr_0a2_7243                             ; $7241: $20 $00

jr_0a2_7243:
	ld   c, h                                        ; $7243: $4c
	nop                                              ; $7244: $00
	stop                                             ; $7245: $10 $00
	ld   [$5400], sp                                 ; $7247: $08 $00 $54
	inc  b                                           ; $724a: $04
	add  a                                           ; $724b: $87
	rlca                                             ; $724c: $07
	add  b                                           ; $724d: $80
	rrca                                             ; $724e: $0f
	ld   [bc], a                                     ; $724f: $02
	and  $01                                         ; $7250: $e6 $01
	dec  b                                           ; $7252: $05
	adc  c                                           ; $7253: $89
	ld   bc, $8180                                   ; $7254: $01 $80 $81
	dec  c                                           ; $7257: $0d
	ld   c, c                                        ; $7258: $49
	add  h                                           ; $7259: $84
	sub  h                                           ; $725a: $94
	add  h                                           ; $725b: $84
	and  e                                           ; $725c: $a3
	adc  d                                           ; $725d: $8a
	xor  d                                           ; $725e: $aa
	adc  d                                           ; $725f: $8a
	cp   d                                           ; $7260: $ba
	and  d                                           ; $7261: $a2
	ld   [$c5c2], a                                  ; $7262: $ea $c2 $c5
	pop  bc                                          ; $7265: $c1
	add  b                                           ; $7266: $80
	ret                                              ; $7267: $c9


	ld   bc, $fc1f                                   ; $7268: $01 $1f $fc
	add  b                                           ; $726b: $80
	cp   $85                                         ; $726c: $fe $85
	rst  $38                                         ; $726e: $ff
	add  b                                           ; $726f: $80
	cp   $81                                         ; $7270: $fe $81
	ld   a, [hl]                                     ; $7272: $7e
	ld   b, $09                                      ; $7273: $06 $09
	ld   d, a                                        ; $7275: $57
	ld   e, e                                        ; $7276: $5b
	ld   l, e                                        ; $7277: $6b
	ld   l, h                                        ; $7278: $6c
	ld   [hl], h                                     ; $7279: $74
	ld   [hl], a                                     ; $727a: $77
	add  b                                           ; $727b: $80
	ld   a, e                                        ; $727c: $7b
	ld   bc, $fc7c                                   ; $727d: $01 $7c $fc
	add  b                                           ; $7280: $80
	cp   $81                                         ; $7281: $fe $81
	rst  $38                                         ; $7283: $ff
	add  b                                           ; $7284: $80
	jr   jr_0a2_7207                                 ; $7285: $18 $80

	ret  c                                           ; $7287: $d8

	add  b                                           ; $7288: $80
	ld   l, h                                        ; $7289: $6c
	add  b                                           ; $728a: $80
	ld   [hl], $80                                   ; $728b: $36 $80
	sbc  d                                           ; $728d: $9a
	ld   bc, $5fdf                                   ; $728e: $01 $df $5f
	add  b                                           ; $7291: $80
	ld   c, a                                        ; $7292: $4f
	ld   [bc], a                                     ; $7293: $02
	ld   l, e                                        ; $7294: $6b
	db   $eb                                         ; $7295: $eb
	nop                                              ; $7296: $00
	add  c                                           ; $7297: $81
	rrca                                             ; $7298: $0f
	add  b                                           ; $7299: $80
	rst  $28                                         ; $729a: $ef
	ld   [bc], a                                     ; $729b: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $729c: $cf
	rst  ToBoot                                         ; $729d: $c7
	rlca                                             ; $729e: $07
	add  b                                           ; $729f: $80
	rla                                              ; $72a0: $17
	add  b                                           ; $72a1: $80
	ld   [hl], a                                     ; $72a2: $77
	add  b                                           ; $72a3: $80
	ld   a, e                                        ; $72a4: $7b
	ld   [bc], a                                     ; $72a5: $02
	ld   [hl], e                                     ; $72a6: $73
	ld   c, [hl]                                     ; $72a7: $4e
	pop  bc                                          ; $72a8: $c1
	add  b                                           ; $72a9: $80
	pop  hl                                          ; $72aa: $e1
	add  d                                           ; $72ab: $82
	pop  af                                          ; $72ac: $f1
	add  b                                           ; $72ad: $80
	db   $fd                                         ; $72ae: $fd
	nop                                              ; $72af: $00
	rst  $38                                         ; $72b0: $ff
	add  e                                           ; $72b1: $83
	ei                                               ; $72b2: $fb
	ld   bc, $c92d                                   ; $72b3: $01 $2d $c9
	adc  b                                           ; $72b6: $88
	reti                                             ; $72b7: $d9


	nop                                              ; $72b8: $00
	push de                                          ; $72b9: $d5
	add  c                                           ; $72ba: $81
	pop  de                                          ; $72bb: $d1
	nop                                              ; $72bc: $00
	jr   jr_0a2_7241                                 ; $72bd: $18 $82

	ld   a, $81                                      ; $72bf: $3e $81
	ld   e, $00                                      ; $72c1: $1e $00
	ld   e, [hl]                                     ; $72c3: $5e
	add  b                                           ; $72c4: $80
	ld   c, [hl]                                     ; $72c5: $4e
	add  b                                           ; $72c6: $80
	ld   b, [hl]                                     ; $72c7: $46
	ld   [bc], a                                     ; $72c8: $02
	ld   b, d                                        ; $72c9: $42
	ld   b, e                                        ; $72ca: $43
	ld   b, c                                        ; $72cb: $41
	adc  h                                           ; $72cc: $8c
	rst  $38                                         ; $72cd: $ff
	add  b                                           ; $72ce: $80
	cp   $80                                         ; $72cf: $fe $80
	db   $eb                                         ; $72d1: $eb
	add  d                                           ; $72d2: $82
	jp   hl                                          ; $72d3: $e9


	add  b                                           ; $72d4: $80
	ret                                              ; $72d5: $c9


	add  b                                           ; $72d6: $80
	ret  z                                           ; $72d7: $c8

	add  d                                           ; $72d8: $82
	add  b                                           ; $72d9: $80
	add  c                                           ; $72da: $81
	nop                                              ; $72db: $00
	add  b                                           ; $72dc: $80
	inc  bc                                          ; $72dd: $03
	add  b                                           ; $72de: $80
	ld   l, e                                        ; $72df: $6b
	ld   bc, $db5b                                   ; $72e0: $01 $5b $db
	add  c                                           ; $72e3: $81
	or   e                                           ; $72e4: $b3
	nop                                              ; $72e5: $00
	inc  sp                                          ; $72e6: $33
	add  b                                           ; $72e7: $80
	ld   l, l                                        ; $72e8: $6d
	add  b                                           ; $72e9: $80
	ld   a, [hl]                                     ; $72ea: $7e
	ld   bc, $7c7f                                   ; $72eb: $01 $7f $7c
	adc  c                                           ; $72ee: $89
	ei                                               ; $72ef: $fb
	add  c                                           ; $72f0: $81
	ld   hl, sp+$03                                  ; $72f1: $f8 $03
	inc  bc                                          ; $72f3: $03
	jp   z, $d9d1                                    ; $72f4: $ca $d1 $d9

	add  c                                           ; $72f7: $81
	push de                                          ; $72f8: $d5
	nop                                              ; $72f9: $00
	sub  h                                           ; $72fa: $94
	add  b                                           ; $72fb: $80
	sub  b                                           ; $72fc: $90
	rlca                                             ; $72fd: $07
	xor  [hl]                                        ; $72fe: $ae
	ld   a, $47                                      ; $72ff: $3e $47
	ld   h, a                                        ; $7301: $67
	rlca                                             ; $7302: $07
	ld   b, $86                                      ; $7303: $06 $86
	ld   c, b                                        ; $7305: $48
	rst  $38                                         ; $7306: $ff
	nop                                              ; $7307: $00
	rst  $38                                         ; $7308: $ff
	nop                                              ; $7309: $00
	rst  $38                                         ; $730a: $ff
	nop                                              ; $730b: $00
	rst  $38                                         ; $730c: $ff
	nop                                              ; $730d: $00
	rst  $38                                         ; $730e: $ff
	nop                                              ; $730f: $00
	rst  $38                                         ; $7310: $ff
	nop                                              ; $7311: $00
	rst  $38                                         ; $7312: $ff
	nop                                              ; $7313: $00
	rst  $38                                         ; $7314: $ff
	nop                                              ; $7315: $00
	rst  $38                                         ; $7316: $ff
	nop                                              ; $7317: $00
	rst  $38                                         ; $7318: $ff
	nop                                              ; $7319: $00
	rst  $38                                         ; $731a: $ff
	nop                                              ; $731b: $00
	rst  $38                                         ; $731c: $ff
	nop                                              ; $731d: $00
	pop  de                                          ; $731e: $d1
	nop                                              ; $731f: $00
	ld   bc, $0101                                   ; $7320: $01 $01 $01
	nop                                              ; $7323: $00
	nop                                              ; $7324: $00
	nop                                              ; $7325: $00
	nop                                              ; $7326: $00
	nop                                              ; $7327: $00
	ld   bc, $0101                                   ; $7328: $01 $01 $01
	ld   bc, $0101                                   ; $732b: $01 $01 $01
	ld   bc, $0901                                   ; $732e: $01 $01 $09
	add  hl, bc                                      ; $7331: $09
	add  hl, bc                                      ; $7332: $09
	add  hl, bc                                      ; $7333: $09
	ld   bc, $0707                                   ; $7334: $01 $07 $07
	nop                                              ; $7337: $00
	nop                                              ; $7338: $00
	nop                                              ; $7339: $00
	nop                                              ; $733a: $00
	nop                                              ; $733b: $00
	rlca                                             ; $733c: $07
	rlca                                             ; $733d: $07
	rlca                                             ; $733e: $07
	rlca                                             ; $733f: $07
	rlca                                             ; $7340: $07
	rlca                                             ; $7341: $07
	rlca                                             ; $7342: $07
	rlca                                             ; $7343: $07
	rrca                                             ; $7344: $0f
	rrca                                             ; $7345: $0f
	rrca                                             ; $7346: $0f
	add  hl, bc                                      ; $7347: $09
	ld   bc, $0707                                   ; $7348: $01 $07 $07
	nop                                              ; $734b: $00
	nop                                              ; $734c: $00
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	nop                                              ; $734f: $00
	nop                                              ; $7350: $00
	rlca                                             ; $7351: $07
	rlca                                             ; $7352: $07
	rlca                                             ; $7353: $07
	rlca                                             ; $7354: $07
	rlca                                             ; $7355: $07
	rlca                                             ; $7356: $07
	rlca                                             ; $7357: $07
	rrca                                             ; $7358: $0f
	rrca                                             ; $7359: $0f
	rrca                                             ; $735a: $0f
	add  hl, bc                                      ; $735b: $09
	ld   bc, $0707                                   ; $735c: $01 $07 $07
	nop                                              ; $735f: $00
	nop                                              ; $7360: $00
	nop                                              ; $7361: $00
	nop                                              ; $7362: $00
	nop                                              ; $7363: $00
	nop                                              ; $7364: $00
	nop                                              ; $7365: $00
	rlca                                             ; $7366: $07
	ld   bc, $0707                                   ; $7367: $01 $07 $07
	rlca                                             ; $736a: $07
	rlca                                             ; $736b: $07
	add  hl, bc                                      ; $736c: $09
	add  hl, bc                                      ; $736d: $09
	add  hl, bc                                      ; $736e: $09
	add  hl, bc                                      ; $736f: $09
	ld   bc, $0707                                   ; $7370: $01 $07 $07
	nop                                              ; $7373: $00
	nop                                              ; $7374: $00
	nop                                              ; $7375: $00
	nop                                              ; $7376: $00
	nop                                              ; $7377: $00
	nop                                              ; $7378: $00
	rlca                                             ; $7379: $07
	rlca                                             ; $737a: $07
	ld   bc, $0100                                   ; $737b: $01 $00 $01
	ld   bc, $0801                                   ; $737e: $01 $01 $08
	ld   [$0a0a], sp                                 ; $7381: $08 $0a $0a
	rlca                                             ; $7384: $07
	rlca                                             ; $7385: $07
	rlca                                             ; $7386: $07
	nop                                              ; $7387: $00
	nop                                              ; $7388: $00
	nop                                              ; $7389: $00
	nop                                              ; $738a: $00
	ld   [bc], a                                     ; $738b: $02
	ld   [bc], a                                     ; $738c: $02
	ld   [bc], a                                     ; $738d: $02
	nop                                              ; $738e: $00
	nop                                              ; $738f: $00
	nop                                              ; $7390: $00
	nop                                              ; $7391: $00
	nop                                              ; $7392: $00
	nop                                              ; $7393: $00
	ld   [$0808], sp                                 ; $7394: $08 $08 $08
	ld   a, [bc]                                     ; $7397: $0a
	rlca                                             ; $7398: $07
	rlca                                             ; $7399: $07
	rlca                                             ; $739a: $07
	nop                                              ; $739b: $00
	nop                                              ; $739c: $00
	nop                                              ; $739d: $00
	nop                                              ; $739e: $00
	nop                                              ; $739f: $00
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	nop                                              ; $73a2: $00
	nop                                              ; $73a3: $00
	nop                                              ; $73a4: $00
	nop                                              ; $73a5: $00
	nop                                              ; $73a6: $00
	nop                                              ; $73a7: $00
	ld   a, [bc]                                     ; $73a8: $0a
	ld   a, [bc]                                     ; $73a9: $0a
	ld   [$010a], sp                                 ; $73aa: $08 $0a $01
	rlca                                             ; $73ad: $07
	rlca                                             ; $73ae: $07
	nop                                              ; $73af: $00
	ld   b, $06                                      ; $73b0: $06 $06
	ld   b, $06                                      ; $73b2: $06 $06
	ld   b, $00                                      ; $73b4: $06 $00
	nop                                              ; $73b6: $00
	ld   b, $06                                      ; $73b7: $06 $06
	ld   [bc], a                                     ; $73b9: $02
	ld   [bc], a                                     ; $73ba: $02
	ld   [bc], a                                     ; $73bb: $02
	ld   a, [bc]                                     ; $73bc: $0a
	add  hl, bc                                      ; $73bd: $09
	ld   a, [bc]                                     ; $73be: $0a
	ld   [$0f0f], sp                                 ; $73bf: $08 $0f $0f
	rrca                                             ; $73c2: $0f
	ld   c, $0e                                      ; $73c3: $0e $0e
	ld   c, $0e                                      ; $73c5: $0e $0e
	ld   c, $0e                                      ; $73c7: $0e $0e
	ld   [$0e0e], sp                                 ; $73c9: $08 $0e $0e
	ld   c, $0a                                      ; $73cc: $0e $0a
	ld   a, [bc]                                     ; $73ce: $0a
	ld   a, [bc]                                     ; $73cf: $0a
	ld   a, [bc]                                     ; $73d0: $0a
	ld   a, [bc]                                     ; $73d1: $0a
	add  hl, bc                                      ; $73d2: $09
	add  hl, bc                                      ; $73d3: $09
	rrca                                             ; $73d4: $0f
	rrca                                             ; $73d5: $0f
	rrca                                             ; $73d6: $0f
	ld   c, $0e                                      ; $73d7: $0e $0e
	ld   c, $0e                                      ; $73d9: $0e $0e
	ld   c, $08                                      ; $73db: $0e $08
	ld   [$0e0e], sp                                 ; $73dd: $08 $0e $0e
	ld   c, $0e                                      ; $73e0: $0e $0e
	ld   c, $09                                      ; $73e2: $0e $09
	ld   a, [bc]                                     ; $73e4: $0a
	ld   a, [bc]                                     ; $73e5: $0a
	add  hl, bc                                      ; $73e6: $09
	add  hl, bc                                      ; $73e7: $09
	nop                                              ; $73e8: $00
	ld   bc, $0302                                   ; $73e9: $01 $02 $03
	inc  b                                           ; $73ec: $04
	dec  b                                           ; $73ed: $05
	ld   b, $07                                      ; $73ee: $06 $07
	ld   [$0a09], sp                                 ; $73f0: $08 $09 $0a
	dec  bc                                          ; $73f3: $0b
	inc  c                                           ; $73f4: $0c
	dec  c                                           ; $73f5: $0d
	ld   c, $0f                                      ; $73f6: $0e $0f
	jr   nz, jr_0a2_741b                             ; $73f8: $20 $21

	ld   [hl+], a                                    ; $73fa: $22
	inc  hl                                          ; $73fb: $23
	db   $10                                         ; $73fc: $10
	ld   de, $1312                                   ; $73fd: $11 $12 $13
	inc  d                                           ; $7400: $14
	dec  d                                           ; $7401: $15
	ld   d, $17                                      ; $7402: $16 $17
	jr   @+$1b                                       ; $7404: $18 $19

	ld   a, [de]                                     ; $7406: $1a
	dec  de                                          ; $7407: $1b
	inc  e                                           ; $7408: $1c
	dec  e                                           ; $7409: $1d
	ld   e, $1f                                      ; $740a: $1e $1f
	jr   nc, jr_0a2_743f                             ; $740c: $30 $31

	ld   [hl-], a                                    ; $740e: $32
	inc  sp                                          ; $740f: $33
	jr   nz, @+$23                                   ; $7410: $20 $21

	ld   [hl+], a                                    ; $7412: $22
	inc  hl                                          ; $7413: $23
	inc  h                                           ; $7414: $24
	dec  h                                           ; $7415: $25
	ld   h, $27                                      ; $7416: $26 $27
	jr   z, jr_0a2_7443                              ; $7418: $28 $29

	ld   a, [hl+]                                    ; $741a: $2a

jr_0a2_741b:
	dec  hl                                          ; $741b: $2b
	inc  l                                           ; $741c: $2c
	dec  l                                           ; $741d: $2d
	ld   l, $2f                                      ; $741e: $2e $2f
	inc  h                                           ; $7420: $24
	dec  h                                           ; $7421: $25
	ld   h, $27                                      ; $7422: $26 $27
	jr   nc, jr_0a2_7457                             ; $7424: $30 $31

	ld   [hl-], a                                    ; $7426: $32
	inc  sp                                          ; $7427: $33
	inc  [hl]                                        ; $7428: $34
	dec  [hl]                                        ; $7429: $35
	ld   [hl], $37                                   ; $742a: $36 $37
	jr   c, jr_0a2_7467                              ; $742c: $38 $39

	ld   a, [hl-]                                    ; $742e: $3a
	dec  sp                                          ; $742f: $3b
	inc  a                                           ; $7430: $3c
	dec  a                                           ; $7431: $3d
	ld   a, $3f                                      ; $7432: $3e $3f
	inc  [hl]                                        ; $7434: $34
	dec  [hl]                                        ; $7435: $35
	ld   [hl], $37                                   ; $7436: $36 $37
	ld   b, b                                        ; $7438: $40
	ld   b, c                                        ; $7439: $41
	ld   b, d                                        ; $743a: $42
	ld   b, e                                        ; $743b: $43
	ld   b, h                                        ; $743c: $44
	ld   b, l                                        ; $743d: $45
	ld   b, [hl]                                     ; $743e: $46

jr_0a2_743f:
	ld   b, a                                        ; $743f: $47
	ld   c, b                                        ; $7440: $48
	ld   c, c                                        ; $7441: $49
	ld   c, d                                        ; $7442: $4a

jr_0a2_7443:
	ld   c, e                                        ; $7443: $4b
	ld   c, h                                        ; $7444: $4c
	ld   c, l                                        ; $7445: $4d
	ld   c, [hl]                                     ; $7446: $4e
	ld   c, a                                        ; $7447: $4f
	jr   z, @+$2b                                    ; $7448: $28 $29

	ld   a, [hl+]                                    ; $744a: $2a
	dec  hl                                          ; $744b: $2b
	ld   d, b                                        ; $744c: $50
	ld   d, c                                        ; $744d: $51
	ld   d, d                                        ; $744e: $52
	ld   d, e                                        ; $744f: $53
	ld   d, h                                        ; $7450: $54
	ld   d, l                                        ; $7451: $55
	ld   d, [hl]                                     ; $7452: $56
	ld   d, a                                        ; $7453: $57
	ld   e, b                                        ; $7454: $58
	ld   e, c                                        ; $7455: $59
	ld   e, d                                        ; $7456: $5a

jr_0a2_7457:
	ld   e, e                                        ; $7457: $5b
	ld   e, h                                        ; $7458: $5c
	ld   e, l                                        ; $7459: $5d
	ld   e, [hl]                                     ; $745a: $5e
	ld   e, a                                        ; $745b: $5f
	jr   c, @+$3b                                    ; $745c: $38 $39

	ld   a, [hl-]                                    ; $745e: $3a
	dec  sp                                          ; $745f: $3b
	ld   h, b                                        ; $7460: $60
	ld   h, c                                        ; $7461: $61
	ld   h, d                                        ; $7462: $62
	ld   h, e                                        ; $7463: $63
	ld   h, h                                        ; $7464: $64
	ld   h, l                                        ; $7465: $65
	ld   h, [hl]                                     ; $7466: $66

jr_0a2_7467:
	ld   h, a                                        ; $7467: $67
	ld   l, b                                        ; $7468: $68
	ld   l, c                                        ; $7469: $69
	ld   l, d                                        ; $746a: $6a
	ld   l, e                                        ; $746b: $6b
	ld   l, h                                        ; $746c: $6c
	ld   l, l                                        ; $746d: $6d
	ld   l, [hl]                                     ; $746e: $6e
	ld   l, a                                        ; $746f: $6f
	inc  l                                           ; $7470: $2c
	dec  l                                           ; $7471: $2d
	ld   l, $2f                                      ; $7472: $2e $2f
	ld   [hl], b                                     ; $7474: $70
	ld   [hl], c                                     ; $7475: $71
	ld   [hl], d                                     ; $7476: $72
	ld   [hl], e                                     ; $7477: $73
	ld   [hl], h                                     ; $7478: $74
	ld   [hl], l                                     ; $7479: $75
	halt                                             ; $747a: $76
	ld   [hl], a                                     ; $747b: $77
	ld   a, b                                        ; $747c: $78
	ld   a, c                                        ; $747d: $79
	ld   a, d                                        ; $747e: $7a
	ld   a, e                                        ; $747f: $7b
	ld   a, h                                        ; $7480: $7c
	ld   a, l                                        ; $7481: $7d
	ld   a, [hl]                                     ; $7482: $7e
	ld   a, a                                        ; $7483: $7f
	inc  a                                           ; $7484: $3c
	dec  a                                           ; $7485: $3d
	ld   a, $3f                                      ; $7486: $3e $3f
	nop                                              ; $7488: $00
	ld   bc, $0302                                   ; $7489: $01 $02 $03
	inc  b                                           ; $748c: $04
	dec  b                                           ; $748d: $05
	ld   b, $07                                      ; $748e: $06 $07
	ld   [$0a09], sp                                 ; $7490: $08 $09 $0a
	dec  bc                                          ; $7493: $0b
	inc  c                                           ; $7494: $0c
	dec  c                                           ; $7495: $0d
	ld   c, $0f                                      ; $7496: $0e $0f
	ld   b, b                                        ; $7498: $40
	ld   b, c                                        ; $7499: $41
	ld   b, d                                        ; $749a: $42
	ld   b, e                                        ; $749b: $43
	db   $10                                         ; $749c: $10
	ld   de, $1312                                   ; $749d: $11 $12 $13
	inc  d                                           ; $74a0: $14
	dec  d                                           ; $74a1: $15
	ld   d, $17                                      ; $74a2: $16 $17
	jr   jr_0a2_74bf                                 ; $74a4: $18 $19

	ld   a, [de]                                     ; $74a6: $1a
	dec  de                                          ; $74a7: $1b
	inc  e                                           ; $74a8: $1c
	dec  e                                           ; $74a9: $1d
	ld   e, $1f                                      ; $74aa: $1e $1f
	ld   b, h                                        ; $74ac: $44
	ld   b, l                                        ; $74ad: $45
	ld   b, [hl]                                     ; $74ae: $46
	ld   b, a                                        ; $74af: $47
	nop                                              ; $74b0: $00
	nop                                              ; $74b1: $00
	nop                                              ; $74b2: $00
	nop                                              ; $74b3: $00
	nop                                              ; $74b4: $00
	nop                                              ; $74b5: $00
	nop                                              ; $74b6: $00
	ld   bc, $0707                                   ; $74b7: $01 $07 $07
	rlca                                             ; $74ba: $07
	rlca                                             ; $74bb: $07
	nop                                              ; $74bc: $00
	nop                                              ; $74bd: $00
	nop                                              ; $74be: $00

jr_0a2_74bf:
	nop                                              ; $74bf: $00
	ld   [$0808], sp                                 ; $74c0: $08 $08 $08
	ld   [rRAMG], sp                                 ; $74c3: $08 $00 $00
	nop                                              ; $74c6: $00
	nop                                              ; $74c7: $00
	nop                                              ; $74c8: $00
	nop                                              ; $74c9: $00
	nop                                              ; $74ca: $00
	nop                                              ; $74cb: $00
	ld   b, $06                                      ; $74cc: $06 $06
	rlca                                             ; $74ce: $07
	ld   b, $07                                      ; $74cf: $06 $07
	nop                                              ; $74d1: $00
	nop                                              ; $74d2: $00
	nop                                              ; $74d3: $00
	ld   [$0808], sp                                 ; $74d4: $08 $08 $08
	ld   [rRAMG], sp                                 ; $74d7: $08 $00 $00
	nop                                              ; $74da: $00
	nop                                              ; $74db: $00
	nop                                              ; $74dc: $00
	ld   bc, $0101                                   ; $74dd: $01 $01 $01
	ld   b, $06                                      ; $74e0: $06 $06
	ld   b, $06                                      ; $74e2: $06 $06
	ld   bc, $0101                                   ; $74e4: $01 $01 $01
	nop                                              ; $74e7: $00
	ld   [$0808], sp                                 ; $74e8: $08 $08 $08
	ld   [$0202], sp                                 ; $74eb: $08 $02 $02
	ld   bc, $0000                                   ; $74ee: $01 $00 $00
	ld   bc, $0101                                   ; $74f1: $01 $01 $01
	ld   b, $06                                      ; $74f4: $06 $06
	ld   b, $06                                      ; $74f6: $06 $06
	ld   bc, $0001                                   ; $74f8: $01 $01 $00
	nop                                              ; $74fb: $00
	ld   [$0808], sp                                 ; $74fc: $08 $08 $08
	ld   [$0202], sp                                 ; $74ff: $08 $02 $02
	ld   bc, $0000                                   ; $7502: $01 $00 $00
	ld   bc, $0606                                   ; $7505: $01 $06 $06
	ld   b, $06                                      ; $7508: $06 $06
	ld   b, $06                                      ; $750a: $06 $06
	ld   b, $01                                      ; $750c: $06 $01
	nop                                              ; $750e: $00
	nop                                              ; $750f: $00
	ld   [$0808], sp                                 ; $7510: $08 $08 $08
	ld   [$0202], sp                                 ; $7513: $08 $02 $02
	ld   bc, $0101                                   ; $7516: $01 $01 $01
	rlca                                             ; $7519: $07
	rlca                                             ; $751a: $07
	rlca                                             ; $751b: $07
	rlca                                             ; $751c: $07
	rlca                                             ; $751d: $07
	ld   b, $06                                      ; $751e: $06 $06
	rlca                                             ; $7520: $07
	rlca                                             ; $7521: $07
	ld   b, $00                                      ; $7522: $06 $00
	ld   [$0a08], sp                                 ; $7524: $08 $08 $0a
	ld   a, [bc]                                     ; $7527: $0a
	ld   [bc], a                                     ; $7528: $02
	ld   [bc], a                                     ; $7529: $02
	ld   bc, $0001                                   ; $752a: $01 $01 $00
	rlca                                             ; $752d: $07
	ld   b, $06                                      ; $752e: $06 $06
	ld   b, $07                                      ; $7530: $06 $07
	rlca                                             ; $7532: $07
	rlca                                             ; $7533: $07
	rlca                                             ; $7534: $07
	rlca                                             ; $7535: $07
	rlca                                             ; $7536: $07
	nop                                              ; $7537: $00
	ld   [$0808], sp                                 ; $7538: $08 $08 $08
	ld   [$0002], sp                                 ; $753b: $08 $02 $00
	ld   bc, $0001                                   ; $753e: $01 $01 $00
	ld   b, $06                                      ; $7541: $06 $06
	ld   b, $06                                      ; $7543: $06 $06
	rlca                                             ; $7545: $07
	rlca                                             ; $7546: $07
	rlca                                             ; $7547: $07
	rlca                                             ; $7548: $07
	rlca                                             ; $7549: $07
	rlca                                             ; $754a: $07
	nop                                              ; $754b: $00
	ld   [$0e0f], sp                                 ; $754c: $08 $0f $0e
	ld   [$0808], sp                                 ; $754f: $08 $08 $08
	ld   [$0f08], sp                                 ; $7552: $08 $08 $0f
	ld   c, $0e                                      ; $7555: $0e $0e
	rrca                                             ; $7557: $0f
	rrca                                             ; $7558: $0f
	rrca                                             ; $7559: $0f
	rrca                                             ; $755a: $0f
	rrca                                             ; $755b: $0f
	rrca                                             ; $755c: $0f
	rrca                                             ; $755d: $0f
	rrca                                             ; $755e: $0f
	rrca                                             ; $755f: $0f
	rrca                                             ; $7560: $0f
	rrca                                             ; $7561: $0f
	ld   c, $08                                      ; $7562: $0e $08
	ld   a, [bc]                                     ; $7564: $0a
	ld   a, [bc]                                     ; $7565: $0a
	ld   a, [bc]                                     ; $7566: $0a
	ld   a, [bc]                                     ; $7567: $0a
	rrca                                             ; $7568: $0f
	ld   c, $0e                                      ; $7569: $0e $0e
	rrca                                             ; $756b: $0f
	rrca                                             ; $756c: $0f
	rrca                                             ; $756d: $0f
	rrca                                             ; $756e: $0f
	rrca                                             ; $756f: $0f
	rrca                                             ; $7570: $0f
	rrca                                             ; $7571: $0f
	rrca                                             ; $7572: $0f
	rrca                                             ; $7573: $0f
	rrca                                             ; $7574: $0f
	rrca                                             ; $7575: $0f
	rrca                                             ; $7576: $0f
	rrca                                             ; $7577: $0f
	nop                                              ; $7578: $00
	ld   bc, $0302                                   ; $7579: $01 $02 $03
	inc  b                                           ; $757c: $04
	dec  b                                           ; $757d: $05
	ld   b, $07                                      ; $757e: $06 $07
	ld   [$0a09], sp                                 ; $7580: $08 $09 $0a
	dec  bc                                          ; $7583: $0b
	inc  c                                           ; $7584: $0c
	dec  c                                           ; $7585: $0d
	ld   c, $0f                                      ; $7586: $0e $0f
	jr   nz, jr_0a2_75ab                             ; $7588: $20 $21

	ld   [hl+], a                                    ; $758a: $22
	inc  hl                                          ; $758b: $23
	db   $10                                         ; $758c: $10
	ld   de, $1312                                   ; $758d: $11 $12 $13
	inc  d                                           ; $7590: $14
	dec  d                                           ; $7591: $15
	ld   d, $17                                      ; $7592: $16 $17
	jr   @+$1b                                       ; $7594: $18 $19

	ld   a, [de]                                     ; $7596: $1a
	dec  de                                          ; $7597: $1b
	inc  e                                           ; $7598: $1c
	dec  e                                           ; $7599: $1d
	ld   e, $1f                                      ; $759a: $1e $1f
	jr   nc, jr_0a2_75cf                             ; $759c: $30 $31

	ld   [hl-], a                                    ; $759e: $32
	inc  sp                                          ; $759f: $33
	jr   nz, @+$23                                   ; $75a0: $20 $21

	ld   [hl+], a                                    ; $75a2: $22
	inc  hl                                          ; $75a3: $23
	inc  h                                           ; $75a4: $24
	dec  h                                           ; $75a5: $25
	ld   h, $27                                      ; $75a6: $26 $27
	jr   z, jr_0a2_75d3                              ; $75a8: $28 $29

	ld   a, [hl+]                                    ; $75aa: $2a

jr_0a2_75ab:
	dec  hl                                          ; $75ab: $2b
	inc  l                                           ; $75ac: $2c
	dec  l                                           ; $75ad: $2d
	ld   l, $2f                                      ; $75ae: $2e $2f
	inc  h                                           ; $75b0: $24
	dec  h                                           ; $75b1: $25
	ld   h, $27                                      ; $75b2: $26 $27
	jr   nc, jr_0a2_75e7                             ; $75b4: $30 $31

	ld   [hl-], a                                    ; $75b6: $32
	inc  sp                                          ; $75b7: $33
	inc  [hl]                                        ; $75b8: $34
	dec  [hl]                                        ; $75b9: $35
	ld   [hl], $37                                   ; $75ba: $36 $37
	jr   c, jr_0a2_75f7                              ; $75bc: $38 $39

	ld   a, [hl-]                                    ; $75be: $3a
	dec  sp                                          ; $75bf: $3b
	inc  a                                           ; $75c0: $3c
	dec  a                                           ; $75c1: $3d
	ld   a, $3f                                      ; $75c2: $3e $3f
	inc  [hl]                                        ; $75c4: $34
	dec  [hl]                                        ; $75c5: $35
	ld   [hl], $37                                   ; $75c6: $36 $37
	ld   b, b                                        ; $75c8: $40
	ld   b, c                                        ; $75c9: $41
	ld   b, d                                        ; $75ca: $42
	ld   b, e                                        ; $75cb: $43
	ld   b, h                                        ; $75cc: $44
	ld   b, l                                        ; $75cd: $45
	ld   b, [hl]                                     ; $75ce: $46

jr_0a2_75cf:
	ld   b, a                                        ; $75cf: $47
	ld   c, b                                        ; $75d0: $48
	ld   c, c                                        ; $75d1: $49
	ld   c, d                                        ; $75d2: $4a

jr_0a2_75d3:
	ld   c, e                                        ; $75d3: $4b
	ld   c, h                                        ; $75d4: $4c
	ld   c, l                                        ; $75d5: $4d
	ld   c, [hl]                                     ; $75d6: $4e
	ld   c, a                                        ; $75d7: $4f
	jr   z, @+$2b                                    ; $75d8: $28 $29

	ld   a, [hl+]                                    ; $75da: $2a
	dec  hl                                          ; $75db: $2b
	ld   d, b                                        ; $75dc: $50
	ld   d, c                                        ; $75dd: $51
	ld   d, d                                        ; $75de: $52
	ld   d, e                                        ; $75df: $53
	ld   d, h                                        ; $75e0: $54
	ld   d, l                                        ; $75e1: $55
	ld   d, [hl]                                     ; $75e2: $56
	ld   d, a                                        ; $75e3: $57
	ld   e, b                                        ; $75e4: $58
	ld   e, c                                        ; $75e5: $59
	ld   e, d                                        ; $75e6: $5a

jr_0a2_75e7:
	ld   e, e                                        ; $75e7: $5b
	ld   e, h                                        ; $75e8: $5c
	ld   e, l                                        ; $75e9: $5d
	ld   e, [hl]                                     ; $75ea: $5e
	ld   e, a                                        ; $75eb: $5f
	jr   c, @+$3b                                    ; $75ec: $38 $39

	ld   a, [hl-]                                    ; $75ee: $3a
	dec  sp                                          ; $75ef: $3b
	ld   h, b                                        ; $75f0: $60
	ld   h, c                                        ; $75f1: $61
	ld   h, d                                        ; $75f2: $62
	ld   h, e                                        ; $75f3: $63
	ld   h, h                                        ; $75f4: $64
	ld   h, l                                        ; $75f5: $65
	ld   h, [hl]                                     ; $75f6: $66

jr_0a2_75f7:
	ld   h, a                                        ; $75f7: $67
	ld   l, b                                        ; $75f8: $68
	ld   l, c                                        ; $75f9: $69
	ld   l, d                                        ; $75fa: $6a
	ld   l, e                                        ; $75fb: $6b
	ld   l, h                                        ; $75fc: $6c
	ld   l, l                                        ; $75fd: $6d
	ld   l, [hl]                                     ; $75fe: $6e
	ld   l, a                                        ; $75ff: $6f
	inc  l                                           ; $7600: $2c
	dec  l                                           ; $7601: $2d
	ld   l, $2f                                      ; $7602: $2e $2f
	ld   [hl], b                                     ; $7604: $70
	ld   [hl], c                                     ; $7605: $71
	ld   [hl], d                                     ; $7606: $72
	ld   [hl], e                                     ; $7607: $73
	ld   [hl], h                                     ; $7608: $74
	ld   [hl], l                                     ; $7609: $75
	halt                                             ; $760a: $76
	ld   [hl], a                                     ; $760b: $77
	ld   a, b                                        ; $760c: $78
	ld   a, c                                        ; $760d: $79
	ld   a, d                                        ; $760e: $7a
	ld   a, e                                        ; $760f: $7b
	ld   a, h                                        ; $7610: $7c
	ld   a, l                                        ; $7611: $7d
	ld   a, [hl]                                     ; $7612: $7e
	ld   a, a                                        ; $7613: $7f
	inc  a                                           ; $7614: $3c
	dec  a                                           ; $7615: $3d
	ld   a, $3f                                      ; $7616: $3e $3f
	nop                                              ; $7618: $00
	ld   bc, $0302                                   ; $7619: $01 $02 $03
	inc  b                                           ; $761c: $04
	dec  b                                           ; $761d: $05
	ld   b, $07                                      ; $761e: $06 $07
	ld   [$0a09], sp                                 ; $7620: $08 $09 $0a
	dec  bc                                          ; $7623: $0b
	inc  c                                           ; $7624: $0c
	dec  c                                           ; $7625: $0d
	ld   c, $0f                                      ; $7626: $0e $0f
	ld   b, b                                        ; $7628: $40
	ld   b, c                                        ; $7629: $41
	ld   b, d                                        ; $762a: $42
	ld   b, e                                        ; $762b: $43
	db   $10                                         ; $762c: $10
	ld   de, $1312                                   ; $762d: $11 $12 $13
	inc  d                                           ; $7630: $14
	dec  d                                           ; $7631: $15
	ld   d, $17                                      ; $7632: $16 $17
	jr   jr_0a2_764f                                 ; $7634: $18 $19

	ld   a, [de]                                     ; $7636: $1a
	dec  de                                          ; $7637: $1b
	inc  e                                           ; $7638: $1c
	dec  e                                           ; $7639: $1d
	ld   e, $1f                                      ; $763a: $1e $1f
	ld   b, h                                        ; $763c: $44
	ld   b, l                                        ; $763d: $45
	ld   b, [hl]                                     ; $763e: $46
	ld   b, a                                        ; $763f: $47
	ld   [bc], a                                     ; $7640: $02
	ld   [bc], a                                     ; $7641: $02
	ld   [bc], a                                     ; $7642: $02
	ld   [bc], a                                     ; $7643: $02
	ld   [bc], a                                     ; $7644: $02
	ld   [bc], a                                     ; $7645: $02
	ld   [bc], a                                     ; $7646: $02
	ld   [bc], a                                     ; $7647: $02
	ld   [bc], a                                     ; $7648: $02
	ld   [bc], a                                     ; $7649: $02
	ld   [bc], a                                     ; $764a: $02
	ld   [bc], a                                     ; $764b: $02
	nop                                              ; $764c: $00
	nop                                              ; $764d: $00
	nop                                              ; $764e: $00

jr_0a2_764f:
	nop                                              ; $764f: $00
	ld   [$0a08], sp                                 ; $7650: $08 $08 $0a
	ld   a, [bc]                                     ; $7653: $0a
	ld   [bc], a                                     ; $7654: $02
	ld   [bc], a                                     ; $7655: $02
	ld   [bc], a                                     ; $7656: $02
	ld   [bc], a                                     ; $7657: $02
	ld   [bc], a                                     ; $7658: $02
	ld   [bc], a                                     ; $7659: $02
	ld   [bc], a                                     ; $765a: $02
	ld   [bc], a                                     ; $765b: $02
	ld   [bc], a                                     ; $765c: $02
	ld   [bc], a                                     ; $765d: $02
	ld   [bc], a                                     ; $765e: $02
	ld   [bc], a                                     ; $765f: $02
	nop                                              ; $7660: $00
	nop                                              ; $7661: $00
	nop                                              ; $7662: $00
	nop                                              ; $7663: $00
	ld   [$0a08], sp                                 ; $7664: $08 $08 $0a
	ld   a, [bc]                                     ; $7667: $0a
	ld   [bc], a                                     ; $7668: $02
	ld   [bc], a                                     ; $7669: $02
	ld   [bc], a                                     ; $766a: $02
	ld   [bc], a                                     ; $766b: $02
	ld   [bc], a                                     ; $766c: $02
	ld   [bc], a                                     ; $766d: $02
	ld   [bc], a                                     ; $766e: $02
	ld   [bc], a                                     ; $766f: $02
	ld   [bc], a                                     ; $7670: $02
	ld   b, $06                                      ; $7671: $06 $06
	ld   b, $00                                      ; $7673: $06 $00
	nop                                              ; $7675: $00
	nop                                              ; $7676: $00
	nop                                              ; $7677: $00
	ld   [$0a08], sp                                 ; $7678: $08 $08 $0a
	ld   a, [bc]                                     ; $767b: $0a
	ld   [bc], a                                     ; $767c: $02
	ld   [bc], a                                     ; $767d: $02
	ld   [bc], a                                     ; $767e: $02
	ld   [bc], a                                     ; $767f: $02
	ld   b, $06                                      ; $7680: $06 $06
	ld   b, $06                                      ; $7682: $06 $06
	ld   b, $06                                      ; $7684: $06 $06
	ld   b, $07                                      ; $7686: $06 $07
	nop                                              ; $7688: $00
	nop                                              ; $7689: $00
	nop                                              ; $768a: $00
	nop                                              ; $768b: $00
	ld   [$0a08], sp                                 ; $768c: $08 $08 $0a
	ld   a, [bc]                                     ; $768f: $0a
	ld   [bc], a                                     ; $7690: $02
	ld   [bc], a                                     ; $7691: $02
	ld   b, $06                                      ; $7692: $06 $06
	ld   b, $06                                      ; $7694: $06 $06
	ld   b, $06                                      ; $7696: $06 $06
	ld   b, $06                                      ; $7698: $06 $06
	ld   b, $07                                      ; $769a: $06 $07
	nop                                              ; $769c: $00
	nop                                              ; $769d: $00
	nop                                              ; $769e: $00
	nop                                              ; $769f: $00
	rrca                                             ; $76a0: $0f
	ld   c, $0a                                      ; $76a1: $0e $0a
	ld   a, [bc]                                     ; $76a3: $0a
	ld   [bc], a                                     ; $76a4: $02
	ld   b, $06                                      ; $76a5: $06 $06
	ld   b, $02                                      ; $76a7: $06 $02
	ld   [bc], a                                     ; $76a9: $02
	ld   [bc], a                                     ; $76aa: $02
	ld   b, $06                                      ; $76ab: $06 $06
	ld   b, $06                                      ; $76ad: $06 $06
	rlca                                             ; $76af: $07
	nop                                              ; $76b0: $00
	nop                                              ; $76b1: $00
	nop                                              ; $76b2: $00
	nop                                              ; $76b3: $00
	rrca                                             ; $76b4: $0f
	ld   a, [bc]                                     ; $76b5: $0a
	ld   a, [bc]                                     ; $76b6: $0a
	ld   a, [bc]                                     ; $76b7: $0a
	ld   [bc], a                                     ; $76b8: $02
	ld   b, $06                                      ; $76b9: $06 $06
	rlca                                             ; $76bb: $07
	nop                                              ; $76bc: $00
	nop                                              ; $76bd: $00
	nop                                              ; $76be: $00
	nop                                              ; $76bf: $00
	nop                                              ; $76c0: $00
	ld   b, $06                                      ; $76c1: $06 $06
	ld   b, $00                                      ; $76c3: $06 $00
	nop                                              ; $76c5: $00
	nop                                              ; $76c6: $00
	nop                                              ; $76c7: $00
	rrca                                             ; $76c8: $0f
	rrca                                             ; $76c9: $0f
	rrca                                             ; $76ca: $0f
	ld   [$0602], sp                                 ; $76cb: $08 $02 $06
	ld   b, $07                                      ; $76ce: $06 $07
	nop                                              ; $76d0: $00
	nop                                              ; $76d1: $00
	nop                                              ; $76d2: $00
	nop                                              ; $76d3: $00
	nop                                              ; $76d4: $00
	nop                                              ; $76d5: $00
	nop                                              ; $76d6: $00

Jump_0a2_76d7:
	nop                                              ; $76d7: $00
	nop                                              ; $76d8: $00
	nop                                              ; $76d9: $00
	nop                                              ; $76da: $00
	rlca                                             ; $76db: $07
	rrca                                             ; $76dc: $0f
	rrca                                             ; $76dd: $0f
	add  hl, bc                                      ; $76de: $09
	add  hl, bc                                      ; $76df: $09
	ld   a, [bc]                                     ; $76e0: $0a
	ld   c, $0e                                      ; $76e1: $0e $0e
	rrca                                             ; $76e3: $0f
	ld   [$0808], sp                                 ; $76e4: $08 $08 $08
	ld   [$0808], sp                                 ; $76e7: $08 $08 $08
	ld   [$0808], sp                                 ; $76ea: $08 $08 $08
	ld   [$0808], sp                                 ; $76ed: $08 $08 $08
	ld   [$0908], sp                                 ; $76f0: $08 $08 $09
	ld   a, [bc]                                     ; $76f3: $0a
	ld   a, [bc]                                     ; $76f4: $0a
	ld   a, [bc]                                     ; $76f5: $0a
	ld   c, $0e                                      ; $76f6: $0e $0e
	ld   c, $0e                                      ; $76f8: $0e $0e
	ld   c, $08                                      ; $76fa: $0e $08
	add  hl, bc                                      ; $76fc: $09
	ld   c, $08                                      ; $76fd: $0e $08
	ld   [$0808], sp                                 ; $76ff: $08 $08 $08
	add  hl, bc                                      ; $7702: $09
	add  hl, bc                                      ; $7703: $09
	add  hl, bc                                      ; $7704: $09
	ld   [$0a0a], sp                                 ; $7705: $08 $0a $0a
	nop                                              ; $7708: $00
	ld   bc, $0302                                   ; $7709: $01 $02 $03
	inc  b                                           ; $770c: $04
	dec  b                                           ; $770d: $05
	ld   b, $07                                      ; $770e: $06 $07
	ld   [$0a09], sp                                 ; $7710: $08 $09 $0a
	dec  bc                                          ; $7713: $0b
	inc  c                                           ; $7714: $0c
	dec  c                                           ; $7715: $0d
	ld   c, $0f                                      ; $7716: $0e $0f
	jr   nz, jr_0a2_773b                             ; $7718: $20 $21

	ld   [hl+], a                                    ; $771a: $22
	inc  hl                                          ; $771b: $23
	db   $10                                         ; $771c: $10
	ld   de, $1312                                   ; $771d: $11 $12 $13
	inc  d                                           ; $7720: $14
	dec  d                                           ; $7721: $15
	ld   d, $17                                      ; $7722: $16 $17
	jr   @+$1b                                       ; $7724: $18 $19

	ld   a, [de]                                     ; $7726: $1a
	dec  de                                          ; $7727: $1b
	inc  e                                           ; $7728: $1c
	dec  e                                           ; $7729: $1d
	ld   e, $1f                                      ; $772a: $1e $1f
	jr   nc, jr_0a2_775f                             ; $772c: $30 $31

	ld   [hl-], a                                    ; $772e: $32
	inc  sp                                          ; $772f: $33
	jr   nz, @+$23                                   ; $7730: $20 $21

	ld   [hl+], a                                    ; $7732: $22
	inc  hl                                          ; $7733: $23
	inc  h                                           ; $7734: $24
	dec  h                                           ; $7735: $25
	ld   h, $27                                      ; $7736: $26 $27
	jr   z, jr_0a2_7763                              ; $7738: $28 $29

	ld   a, [hl+]                                    ; $773a: $2a

jr_0a2_773b:
	dec  hl                                          ; $773b: $2b
	inc  l                                           ; $773c: $2c
	dec  l                                           ; $773d: $2d
	ld   l, $2f                                      ; $773e: $2e $2f
	inc  h                                           ; $7740: $24
	dec  h                                           ; $7741: $25
	ld   h, $27                                      ; $7742: $26 $27
	jr   nc, jr_0a2_7777                             ; $7744: $30 $31

	ld   [hl-], a                                    ; $7746: $32
	inc  sp                                          ; $7747: $33
	inc  [hl]                                        ; $7748: $34
	dec  [hl]                                        ; $7749: $35
	ld   [hl], $37                                   ; $774a: $36 $37
	jr   c, jr_0a2_7787                              ; $774c: $38 $39

	ld   a, [hl-]                                    ; $774e: $3a
	dec  sp                                          ; $774f: $3b
	inc  a                                           ; $7750: $3c
	dec  a                                           ; $7751: $3d
	ld   a, $3f                                      ; $7752: $3e $3f
	inc  [hl]                                        ; $7754: $34
	dec  [hl]                                        ; $7755: $35
	ld   [hl], $37                                   ; $7756: $36 $37
	ld   b, b                                        ; $7758: $40
	ld   b, c                                        ; $7759: $41
	ld   b, d                                        ; $775a: $42
	ld   b, e                                        ; $775b: $43
	ld   b, h                                        ; $775c: $44
	ld   b, l                                        ; $775d: $45
	ld   b, [hl]                                     ; $775e: $46

jr_0a2_775f:
	ld   b, a                                        ; $775f: $47
	ld   c, b                                        ; $7760: $48
	ld   c, c                                        ; $7761: $49
	ld   c, d                                        ; $7762: $4a

jr_0a2_7763:
	ld   c, e                                        ; $7763: $4b
	ld   c, h                                        ; $7764: $4c
	ld   c, l                                        ; $7765: $4d
	ld   c, [hl]                                     ; $7766: $4e
	ld   c, a                                        ; $7767: $4f
	jr   z, @+$2b                                    ; $7768: $28 $29

	ld   a, [hl+]                                    ; $776a: $2a
	dec  hl                                          ; $776b: $2b
	ld   d, b                                        ; $776c: $50
	ld   d, c                                        ; $776d: $51
	ld   d, d                                        ; $776e: $52
	ld   d, e                                        ; $776f: $53
	ld   d, h                                        ; $7770: $54
	ld   d, l                                        ; $7771: $55
	ld   d, [hl]                                     ; $7772: $56
	ld   d, a                                        ; $7773: $57
	ld   e, b                                        ; $7774: $58
	ld   e, c                                        ; $7775: $59
	ld   e, d                                        ; $7776: $5a

jr_0a2_7777:
	ld   e, e                                        ; $7777: $5b
	ld   e, h                                        ; $7778: $5c
	ld   e, l                                        ; $7779: $5d
	ld   e, [hl]                                     ; $777a: $5e
	ld   e, a                                        ; $777b: $5f
	jr   c, @+$3b                                    ; $777c: $38 $39

	ld   a, [hl-]                                    ; $777e: $3a
	dec  sp                                          ; $777f: $3b
	ld   h, b                                        ; $7780: $60
	ld   h, c                                        ; $7781: $61
	ld   h, d                                        ; $7782: $62
	ld   h, e                                        ; $7783: $63
	ld   h, h                                        ; $7784: $64
	ld   h, l                                        ; $7785: $65
	ld   h, [hl]                                     ; $7786: $66

jr_0a2_7787:
	ld   h, a                                        ; $7787: $67
	ld   l, b                                        ; $7788: $68
	ld   l, c                                        ; $7789: $69
	ld   l, d                                        ; $778a: $6a
	ld   l, e                                        ; $778b: $6b
	ld   l, h                                        ; $778c: $6c
	ld   l, l                                        ; $778d: $6d
	ld   l, [hl]                                     ; $778e: $6e
	ld   l, a                                        ; $778f: $6f
	inc  l                                           ; $7790: $2c
	dec  l                                           ; $7791: $2d
	ld   l, $2f                                      ; $7792: $2e $2f
	ld   [hl], b                                     ; $7794: $70
	ld   [hl], c                                     ; $7795: $71
	ld   [hl], d                                     ; $7796: $72
	ld   [hl], e                                     ; $7797: $73
	ld   [hl], h                                     ; $7798: $74
	ld   [hl], l                                     ; $7799: $75
	halt                                             ; $779a: $76
	ld   [hl], a                                     ; $779b: $77
	ld   a, b                                        ; $779c: $78
	ld   a, c                                        ; $779d: $79
	ld   a, d                                        ; $779e: $7a
	ld   a, e                                        ; $779f: $7b
	ld   a, h                                        ; $77a0: $7c
	ld   a, l                                        ; $77a1: $7d
	ld   a, [hl]                                     ; $77a2: $7e
	ld   a, a                                        ; $77a3: $7f
	inc  a                                           ; $77a4: $3c
	dec  a                                           ; $77a5: $3d
	ld   a, $3f                                      ; $77a6: $3e $3f
	nop                                              ; $77a8: $00
	ld   bc, $0302                                   ; $77a9: $01 $02 $03
	inc  b                                           ; $77ac: $04
	dec  b                                           ; $77ad: $05
	ld   b, $07                                      ; $77ae: $06 $07
	ld   [$0a09], sp                                 ; $77b0: $08 $09 $0a
	dec  bc                                          ; $77b3: $0b
	inc  c                                           ; $77b4: $0c
	dec  c                                           ; $77b5: $0d
	ld   c, $0f                                      ; $77b6: $0e $0f
	ld   b, b                                        ; $77b8: $40
	ld   b, c                                        ; $77b9: $41
	ld   b, d                                        ; $77ba: $42
	ld   b, e                                        ; $77bb: $43
	db   $10                                         ; $77bc: $10
	ld   de, $1312                                   ; $77bd: $11 $12 $13
	inc  d                                           ; $77c0: $14
	dec  d                                           ; $77c1: $15
	ld   d, $17                                      ; $77c2: $16 $17
	jr   jr_0a2_77df                                 ; $77c4: $18 $19

	ld   a, [de]                                     ; $77c6: $1a
	dec  de                                          ; $77c7: $1b
	inc  e                                           ; $77c8: $1c
	dec  e                                           ; $77c9: $1d
	ld   e, $1f                                      ; $77ca: $1e $1f
	ld   b, h                                        ; $77cc: $44
	ld   b, l                                        ; $77cd: $45
	ld   b, [hl]                                     ; $77ce: $46
	ld   b, a                                        ; $77cf: $47
	nop                                              ; $77d0: $00
	nop                                              ; $77d1: $00
	nop                                              ; $77d2: $00
	nop                                              ; $77d3: $00
	nop                                              ; $77d4: $00
	nop                                              ; $77d5: $00
	nop                                              ; $77d6: $00
	nop                                              ; $77d7: $00
	nop                                              ; $77d8: $00
	nop                                              ; $77d9: $00
	nop                                              ; $77da: $00
	ld   [bc], a                                     ; $77db: $02
	ld   [bc], a                                     ; $77dc: $02
	ld   [bc], a                                     ; $77dd: $02
	ld   [bc], a                                     ; $77de: $02

jr_0a2_77df:
	ld   [bc], a                                     ; $77df: $02
	rrca                                             ; $77e0: $0f
	rrca                                             ; $77e1: $0f
	rrca                                             ; $77e2: $0f
	rrca                                             ; $77e3: $0f
	nop                                              ; $77e4: $00
	nop                                              ; $77e5: $00
	nop                                              ; $77e6: $00
	nop                                              ; $77e7: $00
	nop                                              ; $77e8: $00
	nop                                              ; $77e9: $00
	nop                                              ; $77ea: $00
	nop                                              ; $77eb: $00
	nop                                              ; $77ec: $00
	nop                                              ; $77ed: $00
	nop                                              ; $77ee: $00
	ld   [bc], a                                     ; $77ef: $02
	ld   bc, $0201                                   ; $77f0: $01 $01 $02
	ld   [bc], a                                     ; $77f3: $02
	rrca                                             ; $77f4: $0f
	rrca                                             ; $77f5: $0f
	rrca                                             ; $77f6: $0f
	rrca                                             ; $77f7: $0f
	nop                                              ; $77f8: $00
	nop                                              ; $77f9: $00
	nop                                              ; $77fa: $00
	nop                                              ; $77fb: $00
	nop                                              ; $77fc: $00
	nop                                              ; $77fd: $00
	nop                                              ; $77fe: $00
	nop                                              ; $77ff: $00
	nop                                              ; $7800: $00
	nop                                              ; $7801: $00
	nop                                              ; $7802: $00
	ld   bc, $0101                                   ; $7803: $01 $01 $01
	ld   [bc], a                                     ; $7806: $02
	ld   bc, $0f0a                                   ; $7807: $01 $0a $0f
	rrca                                             ; $780a: $0f
	rrca                                             ; $780b: $0f
	nop                                              ; $780c: $00
	nop                                              ; $780d: $00
	nop                                              ; $780e: $00
	nop                                              ; $780f: $00
	nop                                              ; $7810: $00
	nop                                              ; $7811: $00
	nop                                              ; $7812: $00
	nop                                              ; $7813: $00
	nop                                              ; $7814: $00
	nop                                              ; $7815: $00
	ld   bc, $0101                                   ; $7816: $01 $01 $01
	ld   bc, $0101                                   ; $7819: $01 $01 $01
	add  hl, bc                                      ; $781c: $09
	ld   [$0f0f], sp                                 ; $781d: $08 $0f $0f
	nop                                              ; $7820: $00
	nop                                              ; $7821: $00
	nop                                              ; $7822: $00
	nop                                              ; $7823: $00
	nop                                              ; $7824: $00
	nop                                              ; $7825: $00
	nop                                              ; $7826: $00
	nop                                              ; $7827: $00
	nop                                              ; $7828: $00
	ld   bc, $0101                                   ; $7829: $01 $01 $01
	ld   bc, $0101                                   ; $782c: $01 $01 $01
	ld   bc, TurnOnLCD                                   ; $782f: $01 $09 $09
	ld   [$0608], sp                                 ; $7832: $08 $08 $06
	ld   b, $00                                      ; $7835: $06 $00
	nop                                              ; $7837: $00
	nop                                              ; $7838: $00
	nop                                              ; $7839: $00
	nop                                              ; $783a: $00
	nop                                              ; $783b: $00
	ld   bc, $0001                                   ; $783c: $01 $01 $00
	nop                                              ; $783f: $00
	ld   bc, $0101                                   ; $7840: $01 $01 $01
	ld   bc, TurnOnLCD                                   ; $7843: $01 $09 $09
	ld   [$0208], sp                                 ; $7846: $08 $08 $02
	ld   b, $06                                      ; $7849: $06 $06
	ld   b, $06                                      ; $784b: $06 $06
	ld   b, $06                                      ; $784d: $06 $06
	ld   b, $01                                      ; $784f: $06 $01
	ld   bc, $0600                                   ; $7851: $01 $00 $06
	ld   bc, $0101                                   ; $7854: $01 $01 $01
	ld   bc, TurnOnLCD                                   ; $7857: $01 $09 $09
	ld   [$0208], sp                                 ; $785a: $08 $08 $02
	ld   b, $06                                      ; $785d: $06 $06
	ld   b, $02                                      ; $785f: $06 $02
	ld   [bc], a                                     ; $7861: $02
	ld   [bc], a                                     ; $7862: $02
	ld   [bc], a                                     ; $7863: $02
	ld   bc, $0101                                   ; $7864: $01 $01 $01
	ld   b, $06                                      ; $7867: $06 $06
	ld   bc, $0101                                   ; $7869: $01 $01 $01
	add  hl, bc                                      ; $786c: $09
	add  hl, bc                                      ; $786d: $09
	ld   [$0a08], sp                                 ; $786e: $08 $08 $0a
	ld   c, $0a                                      ; $7871: $0e $0a
	ld   a, [bc]                                     ; $7873: $0a
	ld   a, [bc]                                     ; $7874: $0a
	ld   a, [bc]                                     ; $7875: $0a
	ld   a, [bc]                                     ; $7876: $0a
	ld   a, [bc]                                     ; $7877: $0a
	ld   a, [bc]                                     ; $7878: $0a
	add  hl, bc                                      ; $7879: $09
	ld   c, $0a                                      ; $787a: $0e $0a
	ld   c, $0e                                      ; $787c: $0e $0e
	ld   c, $0e                                      ; $787e: $0e $0e
	ld   c, $0a                                      ; $7880: $0e $0a
	ld   a, [bc]                                     ; $7882: $0a
	ld   a, [bc]                                     ; $7883: $0a
	ld   a, [bc]                                     ; $7884: $0a
	ld   c, $09                                      ; $7885: $0e $09
	ld   a, [bc]                                     ; $7887: $0a
	ld   a, [bc]                                     ; $7888: $0a
	ld   a, [bc]                                     ; $7889: $0a
	ld   a, [bc]                                     ; $788a: $0a
	ld   a, [bc]                                     ; $788b: $0a
	ld   c, $09                                      ; $788c: $0e $09
	add  hl, bc                                      ; $788e: $09
	add  hl, bc                                      ; $788f: $09
	add  hl, bc                                      ; $7890: $09
	ld   c, $0e                                      ; $7891: $0e $0e
	ld   c, $0e                                      ; $7893: $0e $0e
	ld   c, $0e                                      ; $7895: $0e $0e
	ld   a, [bc]                                     ; $7897: $0a
	nop                                              ; $7898: $00
	ld   bc, $0302                                   ; $7899: $01 $02 $03
	inc  b                                           ; $789c: $04
	dec  b                                           ; $789d: $05
	ld   b, $07                                      ; $789e: $06 $07
	ld   [$0a09], sp                                 ; $78a0: $08 $09 $0a
	dec  bc                                          ; $78a3: $0b
	inc  c                                           ; $78a4: $0c
	dec  c                                           ; $78a5: $0d
	ld   c, $0f                                      ; $78a6: $0e $0f
	jr   nz, jr_0a2_78cb                             ; $78a8: $20 $21

	ld   [hl+], a                                    ; $78aa: $22
	inc  hl                                          ; $78ab: $23
	db   $10                                         ; $78ac: $10
	ld   de, $1312                                   ; $78ad: $11 $12 $13
	inc  d                                           ; $78b0: $14
	dec  d                                           ; $78b1: $15
	ld   d, $17                                      ; $78b2: $16 $17
	jr   @+$1b                                       ; $78b4: $18 $19

	ld   a, [de]                                     ; $78b6: $1a
	dec  de                                          ; $78b7: $1b
	inc  e                                           ; $78b8: $1c
	dec  e                                           ; $78b9: $1d
	ld   e, $1f                                      ; $78ba: $1e $1f
	jr   nc, jr_0a2_78ef                             ; $78bc: $30 $31

	ld   [hl-], a                                    ; $78be: $32
	inc  sp                                          ; $78bf: $33
	jr   nz, @+$23                                   ; $78c0: $20 $21

	ld   [hl+], a                                    ; $78c2: $22
	inc  hl                                          ; $78c3: $23
	inc  h                                           ; $78c4: $24
	dec  h                                           ; $78c5: $25
	ld   h, $27                                      ; $78c6: $26 $27
	jr   z, jr_0a2_78f3                              ; $78c8: $28 $29

	ld   a, [hl+]                                    ; $78ca: $2a

jr_0a2_78cb:
	dec  hl                                          ; $78cb: $2b
	inc  l                                           ; $78cc: $2c
	dec  l                                           ; $78cd: $2d
	ld   l, $2f                                      ; $78ce: $2e $2f
	inc  h                                           ; $78d0: $24
	dec  h                                           ; $78d1: $25
	ld   h, $27                                      ; $78d2: $26 $27
	jr   nc, jr_0a2_7907                             ; $78d4: $30 $31

	ld   [hl-], a                                    ; $78d6: $32
	inc  sp                                          ; $78d7: $33
	inc  [hl]                                        ; $78d8: $34
	dec  [hl]                                        ; $78d9: $35
	ld   [hl], $37                                   ; $78da: $36 $37
	jr   c, jr_0a2_7917                              ; $78dc: $38 $39

	ld   a, [hl-]                                    ; $78de: $3a
	dec  sp                                          ; $78df: $3b
	inc  a                                           ; $78e0: $3c
	dec  a                                           ; $78e1: $3d
	ld   a, $3f                                      ; $78e2: $3e $3f
	inc  [hl]                                        ; $78e4: $34
	dec  [hl]                                        ; $78e5: $35
	ld   [hl], $37                                   ; $78e6: $36 $37
	ld   b, b                                        ; $78e8: $40
	ld   b, c                                        ; $78e9: $41
	ld   b, d                                        ; $78ea: $42
	ld   b, e                                        ; $78eb: $43
	ld   b, h                                        ; $78ec: $44
	ld   b, l                                        ; $78ed: $45
	ld   b, [hl]                                     ; $78ee: $46

jr_0a2_78ef:
	ld   b, a                                        ; $78ef: $47
	ld   c, b                                        ; $78f0: $48
	ld   c, c                                        ; $78f1: $49
	ld   c, d                                        ; $78f2: $4a

jr_0a2_78f3:
	ld   c, e                                        ; $78f3: $4b
	ld   c, h                                        ; $78f4: $4c
	ld   c, l                                        ; $78f5: $4d
	ld   c, [hl]                                     ; $78f6: $4e
	ld   c, a                                        ; $78f7: $4f
	jr   z, @+$2b                                    ; $78f8: $28 $29

	ld   a, [hl+]                                    ; $78fa: $2a
	dec  hl                                          ; $78fb: $2b
	ld   d, b                                        ; $78fc: $50
	ld   d, c                                        ; $78fd: $51
	ld   d, d                                        ; $78fe: $52
	ld   d, e                                        ; $78ff: $53
	ld   d, h                                        ; $7900: $54
	ld   d, l                                        ; $7901: $55
	ld   d, [hl]                                     ; $7902: $56
	ld   d, a                                        ; $7903: $57
	ld   e, b                                        ; $7904: $58
	ld   e, c                                        ; $7905: $59
	ld   e, d                                        ; $7906: $5a

jr_0a2_7907:
	ld   e, e                                        ; $7907: $5b
	ld   e, h                                        ; $7908: $5c
	ld   e, l                                        ; $7909: $5d
	ld   e, [hl]                                     ; $790a: $5e
	ld   e, a                                        ; $790b: $5f
	jr   c, @+$3b                                    ; $790c: $38 $39

	ld   a, [hl-]                                    ; $790e: $3a
	dec  sp                                          ; $790f: $3b
	ld   h, b                                        ; $7910: $60
	ld   h, c                                        ; $7911: $61
	ld   h, d                                        ; $7912: $62
	ld   h, e                                        ; $7913: $63
	ld   h, h                                        ; $7914: $64
	ld   h, l                                        ; $7915: $65
	ld   h, [hl]                                     ; $7916: $66

jr_0a2_7917:
	ld   h, a                                        ; $7917: $67
	ld   l, b                                        ; $7918: $68
	ld   l, c                                        ; $7919: $69
	ld   l, d                                        ; $791a: $6a
	ld   l, e                                        ; $791b: $6b
	ld   l, h                                        ; $791c: $6c
	ld   l, l                                        ; $791d: $6d
	ld   l, [hl]                                     ; $791e: $6e

Call_0a2_791f:
	ld   l, a                                        ; $791f: $6f
	inc  l                                           ; $7920: $2c
	dec  l                                           ; $7921: $2d
	ld   l, $2f                                      ; $7922: $2e $2f
	ld   [hl], b                                     ; $7924: $70
	ld   [hl], c                                     ; $7925: $71
	ld   [hl], d                                     ; $7926: $72
	ld   [hl], e                                     ; $7927: $73
	ld   [hl], h                                     ; $7928: $74
	ld   [hl], l                                     ; $7929: $75
	halt                                             ; $792a: $76
	ld   [hl], a                                     ; $792b: $77
	ld   a, b                                        ; $792c: $78
	ld   a, c                                        ; $792d: $79
	ld   a, d                                        ; $792e: $7a
	ld   a, e                                        ; $792f: $7b
	ld   a, h                                        ; $7930: $7c
	ld   a, l                                        ; $7931: $7d
	ld   a, [hl]                                     ; $7932: $7e
	ld   a, a                                        ; $7933: $7f
	inc  a                                           ; $7934: $3c
	dec  a                                           ; $7935: $3d
	ld   a, $3f                                      ; $7936: $3e $3f
	nop                                              ; $7938: $00
	ld   bc, $0302                                   ; $7939: $01 $02 $03
	inc  b                                           ; $793c: $04
	dec  b                                           ; $793d: $05
	ld   b, $07                                      ; $793e: $06 $07
	ld   [$0a09], sp                                 ; $7940: $08 $09 $0a
	dec  bc                                          ; $7943: $0b
	inc  c                                           ; $7944: $0c
	dec  c                                           ; $7945: $0d
	ld   c, $0f                                      ; $7946: $0e $0f
	ld   b, b                                        ; $7948: $40
	ld   b, c                                        ; $7949: $41
	ld   b, d                                        ; $794a: $42
	ld   b, e                                        ; $794b: $43
	db   $10                                         ; $794c: $10
	ld   de, $1312                                   ; $794d: $11 $12 $13
	inc  d                                           ; $7950: $14
	dec  d                                           ; $7951: $15
	ld   d, $17                                      ; $7952: $16 $17
	jr   jr_0a2_796f                                 ; $7954: $18 $19

	ld   a, [de]                                     ; $7956: $1a
	dec  de                                          ; $7957: $1b
	inc  e                                           ; $7958: $1c
	dec  e                                           ; $7959: $1d
	ld   e, $1f                                      ; $795a: $1e $1f
	ld   b, h                                        ; $795c: $44
	ld   b, l                                        ; $795d: $45
	ld   b, [hl]                                     ; $795e: $46
	ld   b, a                                        ; $795f: $47
	rlca                                             ; $7960: $07
	rlca                                             ; $7961: $07
	rlca                                             ; $7962: $07
	nop                                              ; $7963: $00
	ld   b, $06                                      ; $7964: $06 $06
	ld   b, $06                                      ; $7966: $06 $06
	ld   b, $06                                      ; $7968: $06 $06
	ld   b, $07                                      ; $796a: $06 $07
	rlca                                             ; $796c: $07
	rlca                                             ; $796d: $07
	rlca                                             ; $796e: $07

jr_0a2_796f:
	rlca                                             ; $796f: $07
	rrca                                             ; $7970: $0f
	rrca                                             ; $7971: $0f
	rrca                                             ; $7972: $0f
	rrca                                             ; $7973: $0f
	rlca                                             ; $7974: $07
	rlca                                             ; $7975: $07
	ld   b, $06                                      ; $7976: $06 $06
	ld   b, $06                                      ; $7978: $06 $06
	ld   b, $06                                      ; $797a: $06 $06
	ld   b, $06                                      ; $797c: $06 $06
	ld   b, $07                                      ; $797e: $06 $07
	rlca                                             ; $7980: $07
	rlca                                             ; $7981: $07
	rlca                                             ; $7982: $07
	rlca                                             ; $7983: $07
	rrca                                             ; $7984: $0f
	rrca                                             ; $7985: $0f
	rrca                                             ; $7986: $0f
	rrca                                             ; $7987: $0f
	rlca                                             ; $7988: $07
	rlca                                             ; $7989: $07
	ld   b, $06                                      ; $798a: $06 $06
	ld   b, $06                                      ; $798c: $06 $06
	ld   b, $06                                      ; $798e: $06 $06
	ld   b, $01                                      ; $7990: $06 $01
	ld   b, $06                                      ; $7992: $06 $06
	nop                                              ; $7994: $00
	rlca                                             ; $7995: $07
	rlca                                             ; $7996: $07
	rlca                                             ; $7997: $07
	rrca                                             ; $7998: $0f
	rrca                                             ; $7999: $0f
	rrca                                             ; $799a: $0f
	rrca                                             ; $799b: $0f
	rlca                                             ; $799c: $07
	rlca                                             ; $799d: $07
	ld   b, $06                                      ; $799e: $06 $06
	ld   b, $06                                      ; $79a0: $06 $06
	ld   b, $01                                      ; $79a2: $06 $01
	ld   bc, $0101                                   ; $79a4: $01 $01 $01
	nop                                              ; $79a7: $00
	nop                                              ; $79a8: $00
	nop                                              ; $79a9: $00
	rlca                                             ; $79aa: $07
	rlca                                             ; $79ab: $07
	rrca                                             ; $79ac: $0f
	rrca                                             ; $79ad: $0f
	rrca                                             ; $79ae: $0f
	rrca                                             ; $79af: $0f
	ld   [bc], a                                     ; $79b0: $02
	ld   b, $06                                      ; $79b1: $06 $06
	ld   b, $06                                      ; $79b3: $06 $06
	ld   b, $01                                      ; $79b5: $06 $01
	ld   bc, $0101                                   ; $79b7: $01 $01 $01
	ld   bc, $0000                                   ; $79ba: $01 $00 $00
	nop                                              ; $79bd: $00
	nop                                              ; $79be: $00
	rlca                                             ; $79bf: $07
	rrca                                             ; $79c0: $0f
	rrca                                             ; $79c1: $0f
	rrca                                             ; $79c2: $0f
	rrca                                             ; $79c3: $0f
	ld   [bc], a                                     ; $79c4: $02
	ld   [bc], a                                     ; $79c5: $02
	ld   b, $06                                      ; $79c6: $06 $06
	ld   b, $06                                      ; $79c8: $06 $06
	ld   b, $01                                      ; $79ca: $06 $01
	ld   bc, $0001                                   ; $79cc: $01 $01 $00
	nop                                              ; $79cf: $00
	nop                                              ; $79d0: $00
	nop                                              ; $79d1: $00
	nop                                              ; $79d2: $00
	nop                                              ; $79d3: $00
	ld   [$0f0f], sp                                 ; $79d4: $08 $0f $0f
	rrca                                             ; $79d7: $0f
	ld   [bc], a                                     ; $79d8: $02
	ld   [bc], a                                     ; $79d9: $02
	ld   [bc], a                                     ; $79da: $02
	ld   b, $01                                      ; $79db: $06 $01
	ld   bc, $0101                                   ; $79dd: $01 $01 $01
	ld   b, $06                                      ; $79e0: $06 $06
	rlca                                             ; $79e2: $07
	nop                                              ; $79e3: $00
	nop                                              ; $79e4: $00
	nop                                              ; $79e5: $00
	nop                                              ; $79e6: $00
	nop                                              ; $79e7: $00
	ld   [$0f0f], sp                                 ; $79e8: $08 $0f $0f
	rrca                                             ; $79eb: $0f
	ld   [bc], a                                     ; $79ec: $02
	ld   [bc], a                                     ; $79ed: $02
	ld   [bc], a                                     ; $79ee: $02
	ld   [bc], a                                     ; $79ef: $02
	ld   bc, $0101                                   ; $79f0: $01 $01 $01
	ld   bc, $0006                                   ; $79f3: $01 $06 $00
	nop                                              ; $79f6: $00
	nop                                              ; $79f7: $00
	nop                                              ; $79f8: $00
	nop                                              ; $79f9: $00
	nop                                              ; $79fa: $00
	nop                                              ; $79fb: $00
	ld   [$0f0f], sp                                 ; $79fc: $08 $0f $0f
	rrca                                             ; $79ff: $0f
	ld   a, [bc]                                     ; $7a00: $0a
	ld   a, [bc]                                     ; $7a01: $0a
	ld   a, [bc]                                     ; $7a02: $0a
	ld   a, [bc]                                     ; $7a03: $0a
	ld   a, [bc]                                     ; $7a04: $0a
	add  hl, bc                                      ; $7a05: $09
	add  hl, bc                                      ; $7a06: $09
	add  hl, bc                                      ; $7a07: $09
	ld   c, $0f                                      ; $7a08: $0e $0f
	ld   [$0808], sp                                 ; $7a0a: $08 $08 $08
	ld   [$0808], sp                                 ; $7a0d: $08 $08 $08
	ld   [$0f0e], sp                                 ; $7a10: $08 $0e $0f
	rrca                                             ; $7a13: $0f
	ld   a, [bc]                                     ; $7a14: $0a
	ld   a, [bc]                                     ; $7a15: $0a
	ld   a, [bc]                                     ; $7a16: $0a
	ld   a, [bc]                                     ; $7a17: $0a
	ld   a, [bc]                                     ; $7a18: $0a
	ld   a, [bc]                                     ; $7a19: $0a
	ld   a, [bc]                                     ; $7a1a: $0a
	ld   a, [bc]                                     ; $7a1b: $0a
	rrca                                             ; $7a1c: $0f
	rrca                                             ; $7a1d: $0f
	rrca                                             ; $7a1e: $0f
	rrca                                             ; $7a1f: $0f
	rrca                                             ; $7a20: $0f
	rrca                                             ; $7a21: $0f
	rrca                                             ; $7a22: $0f
	ld   [$0908], sp                                 ; $7a23: $08 $08 $09
	add  hl, bc                                      ; $7a26: $09
	ld   c, $00                                      ; $7a27: $0e $00
	ld   bc, $0302                                   ; $7a29: $01 $02 $03
	inc  b                                           ; $7a2c: $04
	dec  b                                           ; $7a2d: $05
	ld   b, $07                                      ; $7a2e: $06 $07
	ld   [$0a09], sp                                 ; $7a30: $08 $09 $0a
	dec  bc                                          ; $7a33: $0b
	inc  c                                           ; $7a34: $0c
	dec  c                                           ; $7a35: $0d
	ld   c, $0f                                      ; $7a36: $0e $0f
	jr   nz, jr_0a2_7a5b                             ; $7a38: $20 $21

	ld   [hl+], a                                    ; $7a3a: $22
	inc  hl                                          ; $7a3b: $23
	db   $10                                         ; $7a3c: $10
	ld   de, $1312                                   ; $7a3d: $11 $12 $13
	inc  d                                           ; $7a40: $14

Call_0a2_7a41:
	dec  d                                           ; $7a41: $15
	ld   d, $17                                      ; $7a42: $16 $17
	jr   @+$1b                                       ; $7a44: $18 $19

	ld   a, [de]                                     ; $7a46: $1a
	dec  de                                          ; $7a47: $1b
	inc  e                                           ; $7a48: $1c
	dec  e                                           ; $7a49: $1d
	ld   e, $1f                                      ; $7a4a: $1e $1f
	jr   nc, jr_0a2_7a7f                             ; $7a4c: $30 $31

	ld   [hl-], a                                    ; $7a4e: $32
	inc  sp                                          ; $7a4f: $33
	jr   nz, @+$23                                   ; $7a50: $20 $21

	ld   [hl+], a                                    ; $7a52: $22
	inc  hl                                          ; $7a53: $23
	inc  h                                           ; $7a54: $24
	dec  h                                           ; $7a55: $25
	ld   h, $27                                      ; $7a56: $26 $27
	jr   z, jr_0a2_7a83                              ; $7a58: $28 $29

	ld   a, [hl+]                                    ; $7a5a: $2a

jr_0a2_7a5b:
	dec  hl                                          ; $7a5b: $2b
	inc  l                                           ; $7a5c: $2c
	dec  l                                           ; $7a5d: $2d
	ld   l, $2f                                      ; $7a5e: $2e $2f
	inc  h                                           ; $7a60: $24
	dec  h                                           ; $7a61: $25
	ld   h, $27                                      ; $7a62: $26 $27
	jr   nc, jr_0a2_7a97                             ; $7a64: $30 $31

	ld   [hl-], a                                    ; $7a66: $32
	inc  sp                                          ; $7a67: $33
	inc  [hl]                                        ; $7a68: $34
	dec  [hl]                                        ; $7a69: $35
	ld   [hl], $37                                   ; $7a6a: $36 $37
	jr   c, jr_0a2_7aa7                              ; $7a6c: $38 $39

	ld   a, [hl-]                                    ; $7a6e: $3a
	dec  sp                                          ; $7a6f: $3b
	inc  a                                           ; $7a70: $3c
	dec  a                                           ; $7a71: $3d
	ld   a, $3f                                      ; $7a72: $3e $3f
	inc  [hl]                                        ; $7a74: $34
	dec  [hl]                                        ; $7a75: $35
	ld   [hl], $37                                   ; $7a76: $36 $37
	ld   b, b                                        ; $7a78: $40
	ld   b, c                                        ; $7a79: $41
	ld   b, d                                        ; $7a7a: $42
	ld   b, e                                        ; $7a7b: $43
	ld   b, h                                        ; $7a7c: $44
	ld   b, l                                        ; $7a7d: $45
	ld   b, [hl]                                     ; $7a7e: $46

jr_0a2_7a7f:
	ld   b, a                                        ; $7a7f: $47
	ld   c, b                                        ; $7a80: $48
	ld   c, c                                        ; $7a81: $49
	ld   c, d                                        ; $7a82: $4a

jr_0a2_7a83:
	ld   c, e                                        ; $7a83: $4b
	ld   c, h                                        ; $7a84: $4c
	ld   c, l                                        ; $7a85: $4d
	ld   c, [hl]                                     ; $7a86: $4e
	ld   c, a                                        ; $7a87: $4f
	jr   z, @+$2b                                    ; $7a88: $28 $29

	ld   a, [hl+]                                    ; $7a8a: $2a
	dec  hl                                          ; $7a8b: $2b
	ld   d, b                                        ; $7a8c: $50
	ld   d, c                                        ; $7a8d: $51
	ld   d, d                                        ; $7a8e: $52
	ld   d, e                                        ; $7a8f: $53
	ld   d, h                                        ; $7a90: $54
	ld   d, l                                        ; $7a91: $55
	ld   d, [hl]                                     ; $7a92: $56
	ld   d, a                                        ; $7a93: $57
	ld   e, b                                        ; $7a94: $58
	ld   e, c                                        ; $7a95: $59
	ld   e, d                                        ; $7a96: $5a

jr_0a2_7a97:
	ld   e, e                                        ; $7a97: $5b
	ld   e, h                                        ; $7a98: $5c
	ld   e, l                                        ; $7a99: $5d
	ld   e, [hl]                                     ; $7a9a: $5e
	ld   e, a                                        ; $7a9b: $5f
	jr   c, @+$3b                                    ; $7a9c: $38 $39

	ld   a, [hl-]                                    ; $7a9e: $3a
	dec  sp                                          ; $7a9f: $3b
	ld   h, b                                        ; $7aa0: $60
	ld   h, c                                        ; $7aa1: $61
	ld   h, d                                        ; $7aa2: $62
	ld   h, e                                        ; $7aa3: $63
	ld   h, h                                        ; $7aa4: $64
	ld   h, l                                        ; $7aa5: $65
	ld   h, [hl]                                     ; $7aa6: $66

jr_0a2_7aa7:
	ld   h, a                                        ; $7aa7: $67
	ld   l, b                                        ; $7aa8: $68
	ld   l, c                                        ; $7aa9: $69
	ld   l, d                                        ; $7aaa: $6a
	ld   l, e                                        ; $7aab: $6b
	ld   l, h                                        ; $7aac: $6c
	ld   l, l                                        ; $7aad: $6d
	ld   l, [hl]                                     ; $7aae: $6e
	ld   l, a                                        ; $7aaf: $6f
	inc  l                                           ; $7ab0: $2c
	dec  l                                           ; $7ab1: $2d
	ld   l, $2f                                      ; $7ab2: $2e $2f
	ld   [hl], b                                     ; $7ab4: $70
	ld   [hl], c                                     ; $7ab5: $71
	ld   [hl], d                                     ; $7ab6: $72
	ld   [hl], e                                     ; $7ab7: $73
	ld   [hl], h                                     ; $7ab8: $74
	ld   [hl], l                                     ; $7ab9: $75
	halt                                             ; $7aba: $76
	ld   [hl], a                                     ; $7abb: $77
	ld   a, b                                        ; $7abc: $78
	ld   a, c                                        ; $7abd: $79
	ld   a, d                                        ; $7abe: $7a
	ld   a, e                                        ; $7abf: $7b
	ld   a, h                                        ; $7ac0: $7c
	ld   a, l                                        ; $7ac1: $7d
	ld   a, [hl]                                     ; $7ac2: $7e
	ld   a, a                                        ; $7ac3: $7f
	inc  a                                           ; $7ac4: $3c
	dec  a                                           ; $7ac5: $3d
	ld   a, $3f                                      ; $7ac6: $3e $3f
	nop                                              ; $7ac8: $00
	ld   bc, $0302                                   ; $7ac9: $01 $02 $03
	inc  b                                           ; $7acc: $04
	dec  b                                           ; $7acd: $05
	ld   b, $07                                      ; $7ace: $06 $07
	ld   [$0a09], sp                                 ; $7ad0: $08 $09 $0a
	dec  bc                                          ; $7ad3: $0b
	inc  c                                           ; $7ad4: $0c
	dec  c                                           ; $7ad5: $0d
	ld   c, $0f                                      ; $7ad6: $0e $0f
	ld   b, b                                        ; $7ad8: $40
	ld   b, c                                        ; $7ad9: $41
	ld   b, d                                        ; $7ada: $42
	ld   b, e                                        ; $7adb: $43
	db   $10                                         ; $7adc: $10
	ld   de, $1312                                   ; $7add: $11 $12 $13
	inc  d                                           ; $7ae0: $14
	dec  d                                           ; $7ae1: $15
	ld   d, $17                                      ; $7ae2: $16 $17
	jr   jr_0a2_7aff                                 ; $7ae4: $18 $19

	ld   a, [de]                                     ; $7ae6: $1a
	dec  de                                          ; $7ae7: $1b
	inc  e                                           ; $7ae8: $1c
	dec  e                                           ; $7ae9: $1d
	ld   e, $1f                                      ; $7aea: $1e $1f
	ld   b, h                                        ; $7aec: $44
	ld   b, l                                        ; $7aed: $45
	ld   b, [hl]                                     ; $7aee: $46
	ld   b, a                                        ; $7aef: $47
	nop                                              ; $7af0: $00
	nop                                              ; $7af1: $00
	nop                                              ; $7af2: $00
	nop                                              ; $7af3: $00
	nop                                              ; $7af4: $00
	nop                                              ; $7af5: $00
	nop                                              ; $7af6: $00
	nop                                              ; $7af7: $00
	rlca                                             ; $7af8: $07
	rlca                                             ; $7af9: $07
	rlca                                             ; $7afa: $07
	rlca                                             ; $7afb: $07
	rlca                                             ; $7afc: $07
	rlca                                             ; $7afd: $07
	rlca                                             ; $7afe: $07

jr_0a2_7aff:
	nop                                              ; $7aff: $00
	nop                                              ; $7b00: $00
	nop                                              ; $7b01: $00
	nop                                              ; $7b02: $00
	nop                                              ; $7b03: $00
	nop                                              ; $7b04: $00
	nop                                              ; $7b05: $00
	nop                                              ; $7b06: $00
	nop                                              ; $7b07: $00
	nop                                              ; $7b08: $00
	nop                                              ; $7b09: $00
	nop                                              ; $7b0a: $00
	nop                                              ; $7b0b: $00
	rlca                                             ; $7b0c: $07
	rlca                                             ; $7b0d: $07
	rlca                                             ; $7b0e: $07
	rlca                                             ; $7b0f: $07
	rlca                                             ; $7b10: $07
	rlca                                             ; $7b11: $07
	rlca                                             ; $7b12: $07
	nop                                              ; $7b13: $00
	nop                                              ; $7b14: $00
	nop                                              ; $7b15: $00
	nop                                              ; $7b16: $00
	nop                                              ; $7b17: $00
	nop                                              ; $7b18: $00
	nop                                              ; $7b19: $00
	nop                                              ; $7b1a: $00
	nop                                              ; $7b1b: $00
	nop                                              ; $7b1c: $00
	nop                                              ; $7b1d: $00
	nop                                              ; $7b1e: $00
	nop                                              ; $7b1f: $00
	rlca                                             ; $7b20: $07
	ld   [bc], a                                     ; $7b21: $02
	ld   [bc], a                                     ; $7b22: $02
	rlca                                             ; $7b23: $07
	rlca                                             ; $7b24: $07
	rlca                                             ; $7b25: $07
	rlca                                             ; $7b26: $07
	nop                                              ; $7b27: $00
	nop                                              ; $7b28: $00
	nop                                              ; $7b29: $00
	nop                                              ; $7b2a: $00
	nop                                              ; $7b2b: $00
	nop                                              ; $7b2c: $00
	nop                                              ; $7b2d: $00
	nop                                              ; $7b2e: $00
	nop                                              ; $7b2f: $00
	nop                                              ; $7b30: $00
	nop                                              ; $7b31: $00
	nop                                              ; $7b32: $00
	nop                                              ; $7b33: $00
	nop                                              ; $7b34: $00
	ld   [bc], a                                     ; $7b35: $02
	ld   [bc], a                                     ; $7b36: $02
	ld   [bc], a                                     ; $7b37: $02
	rlca                                             ; $7b38: $07
	rlca                                             ; $7b39: $07
	rlca                                             ; $7b3a: $07
	nop                                              ; $7b3b: $00
	nop                                              ; $7b3c: $00
	nop                                              ; $7b3d: $00
	jr   nz, jr_0a2_7b60                             ; $7b3e: $20 $20

	nop                                              ; $7b40: $00
	nop                                              ; $7b41: $00
	nop                                              ; $7b42: $00
	nop                                              ; $7b43: $00
	nop                                              ; $7b44: $00
	nop                                              ; $7b45: $00
	nop                                              ; $7b46: $00
	nop                                              ; $7b47: $00
	nop                                              ; $7b48: $00
	ld   [bc], a                                     ; $7b49: $02
	ld   [bc], a                                     ; $7b4a: $02
	ld   [bc], a                                     ; $7b4b: $02
	rlca                                             ; $7b4c: $07
	rlca                                             ; $7b4d: $07
	rlca                                             ; $7b4e: $07
	rlca                                             ; $7b4f: $07
	nop                                              ; $7b50: $00
	nop                                              ; $7b51: $00
	nop                                              ; $7b52: $00
	jr   nz, jr_0a2_7b55                             ; $7b53: $20 $00

jr_0a2_7b55:
	nop                                              ; $7b55: $00
	nop                                              ; $7b56: $00
	nop                                              ; $7b57: $00
	nop                                              ; $7b58: $00
	nop                                              ; $7b59: $00
	nop                                              ; $7b5a: $00
	nop                                              ; $7b5b: $00
	ld   [bc], a                                     ; $7b5c: $02
	ld   [bc], a                                     ; $7b5d: $02
	ld   [bc], a                                     ; $7b5e: $02
	ld   [bc], a                                     ; $7b5f: $02

jr_0a2_7b60:
	ld   [bc], a                                     ; $7b60: $02
	ld   bc, $0101                                   ; $7b61: $01 $01 $01
	nop                                              ; $7b64: $00
	nop                                              ; $7b65: $00
	nop                                              ; $7b66: $00
	nop                                              ; $7b67: $00
	nop                                              ; $7b68: $00
	nop                                              ; $7b69: $00
	nop                                              ; $7b6a: $00
	nop                                              ; $7b6b: $00
	nop                                              ; $7b6c: $00
	nop                                              ; $7b6d: $00
	nop                                              ; $7b6e: $00
	nop                                              ; $7b6f: $00
	ld   [bc], a                                     ; $7b70: $02
	ld   [bc], a                                     ; $7b71: $02
	ld   [bc], a                                     ; $7b72: $02
	ld   [bc], a                                     ; $7b73: $02
	ld   bc, $0101                                   ; $7b74: $01 $01 $01
	ld   bc, $0000                                   ; $7b77: $01 $00 $00
	nop                                              ; $7b7a: $00
	nop                                              ; $7b7b: $00
	nop                                              ; $7b7c: $00
	nop                                              ; $7b7d: $00
	nop                                              ; $7b7e: $00
	nop                                              ; $7b7f: $00
	nop                                              ; $7b80: $00
	nop                                              ; $7b81: $00
	nop                                              ; $7b82: $00
	nop                                              ; $7b83: $00
	ld   [bc], a                                     ; $7b84: $02
	ld   [bc], a                                     ; $7b85: $02
	ld   [bc], a                                     ; $7b86: $02
	ld   [bc], a                                     ; $7b87: $02
	ld   bc, $0101                                   ; $7b88: $01 $01 $01
	ld   bc, $0000                                   ; $7b8b: $01 $00 $00
	nop                                              ; $7b8e: $00
	nop                                              ; $7b8f: $00
	nop                                              ; $7b90: $00
	nop                                              ; $7b91: $00
	nop                                              ; $7b92: $00
	nop                                              ; $7b93: $00
	ld   b, $06                                      ; $7b94: $06 $06
	ld   b, $06                                      ; $7b96: $06 $06
	ld   b, $06                                      ; $7b98: $06 $06
	ld   b, $02                                      ; $7b9a: $06 $02
	ld   bc, $0101                                   ; $7b9c: $01 $01 $01
	ld   bc, $0001                                   ; $7b9f: $01 $01 $00
	nop                                              ; $7ba2: $00
	nop                                              ; $7ba3: $00
	nop                                              ; $7ba4: $00
	nop                                              ; $7ba5: $00
	nop                                              ; $7ba6: $00
	ld   b, $06                                      ; $7ba7: $06 $06
	ld   b, $06                                      ; $7ba9: $06 $06
	ld   b, $06                                      ; $7bab: $06 $06
	ld   b, $06                                      ; $7bad: $06 $06
	ld   [bc], a                                     ; $7baf: $02
	ld   bc, $0101                                   ; $7bb0: $01 $01 $01
	ld   bc, $0001                                   ; $7bb3: $01 $01 $00
	nop                                              ; $7bb6: $00
	nop                                              ; $7bb7: $00
	add  b                                           ; $7bb8: $80
	add  c                                           ; $7bb9: $81
	add  d                                           ; $7bba: $82
	add  e                                           ; $7bbb: $83
	add  h                                           ; $7bbc: $84
	add  l                                           ; $7bbd: $85
	add  [hl]                                        ; $7bbe: $86
	add  [hl]                                        ; $7bbf: $86
	add  a                                           ; $7bc0: $87
	adc  b                                           ; $7bc1: $88
	adc  c                                           ; $7bc2: $89
	adc  d                                           ; $7bc3: $8a
	adc  e                                           ; $7bc4: $8b
	adc  h                                           ; $7bc5: $8c
	adc  l                                           ; $7bc6: $8d
	add  [hl]                                        ; $7bc7: $86
	add  [hl]                                        ; $7bc8: $86
	add  [hl]                                        ; $7bc9: $86
	add  [hl]                                        ; $7bca: $86
	adc  [hl]                                        ; $7bcb: $8e
	adc  a                                           ; $7bcc: $8f
	sub  b                                           ; $7bcd: $90
	sub  c                                           ; $7bce: $91
	sub  d                                           ; $7bcf: $92
	sub  e                                           ; $7bd0: $93
	sub  h                                           ; $7bd1: $94
	sub  l                                           ; $7bd2: $95
	sub  [hl]                                        ; $7bd3: $96
	sub  a                                           ; $7bd4: $97
	sbc  b                                           ; $7bd5: $98
	sbc  c                                           ; $7bd6: $99
	sbc  d                                           ; $7bd7: $9a
	sbc  e                                           ; $7bd8: $9b
	sbc  h                                           ; $7bd9: $9c
	sbc  l                                           ; $7bda: $9d
	sbc  [hl]                                        ; $7bdb: $9e
	sbc  a                                           ; $7bdc: $9f
	and  b                                           ; $7bdd: $a0
	and  c                                           ; $7bde: $a1
	and  d                                           ; $7bdf: $a2
	adc  a                                           ; $7be0: $8f
	sub  b                                           ; $7be1: $90
	and  e                                           ; $7be2: $a3
	and  h                                           ; $7be3: $a4
	and  l                                           ; $7be4: $a5
	and  [hl]                                        ; $7be5: $a6
	and  a                                           ; $7be6: $a7
	xor  b                                           ; $7be7: $a8
	xor  c                                           ; $7be8: $a9
	xor  d                                           ; $7be9: $aa
	xor  e                                           ; $7bea: $ab
	xor  h                                           ; $7beb: $ac
	xor  l                                           ; $7bec: $ad
	xor  [hl]                                        ; $7bed: $ae
	xor  a                                           ; $7bee: $af
	or   b                                           ; $7bef: $b0
	or   c                                           ; $7bf0: $b1
	or   d                                           ; $7bf1: $b2
	or   e                                           ; $7bf2: $b3
	or   h                                           ; $7bf3: $b4
	adc  a                                           ; $7bf4: $8f
	sub  b                                           ; $7bf5: $90
	or   l                                           ; $7bf6: $b5
	or   [hl]                                        ; $7bf7: $b6
	or   a                                           ; $7bf8: $b7
	cp   b                                           ; $7bf9: $b8
	cp   c                                           ; $7bfa: $b9
	cp   d                                           ; $7bfb: $ba
	cp   e                                           ; $7bfc: $bb
	cp   h                                           ; $7bfd: $bc
	cp   l                                           ; $7bfe: $bd
	cp   [hl]                                        ; $7bff: $be
	cp   a                                           ; $7c00: $bf
	ret  nz                                          ; $7c01: $c0

	pop  bc                                          ; $7c02: $c1
	jp   nz, $c4c3                                   ; $7c03: $c2 $c3 $c4

	sub  b                                           ; $7c06: $90
	adc  a                                           ; $7c07: $8f
	adc  a                                           ; $7c08: $8f
	sub  b                                           ; $7c09: $90
	push bc                                          ; $7c0a: $c5
	add  $c7                                         ; $7c0b: $c6 $c7
	ret  z                                           ; $7c0d: $c8

	ret                                              ; $7c0e: $c9


	jp   z, $cba1                                    ; $7c0f: $ca $a1 $cb

	call z, $cecd                                    ; $7c12: $cc $cd $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c15: $cf
	ret  nc                                          ; $7c16: $d0

	pop  de                                          ; $7c17: $d1
	jp   nc, $d4d3                                   ; $7c18: $d2 $d3 $d4

	adc  a                                           ; $7c1b: $8f
	adc  a                                           ; $7c1c: $8f
	sub  b                                           ; $7c1d: $90
	sub  $c6                                         ; $7c1e: $d6 $c6
	rst  $10                                         ; $7c20: $d7
	ret  c                                           ; $7c21: $d8

	reti                                             ; $7c22: $d9


	jp   c, $dcdb                                    ; $7c23: $da $db $dc

	db   $dd                                         ; $7c26: $dd
	sbc  $df                                         ; $7c27: $de $df
	ldh  [$e1], a                                    ; $7c29: $e0 $e1
	ldh  [c], a                                      ; $7c2b: $e2
	db   $e3                                         ; $7c2c: $e3
	db   $e4                                         ; $7c2d: $e4
	push hl                                          ; $7c2e: $e5
	and  $8f                                         ; $7c2f: $e6 $8f
	sub  b                                           ; $7c31: $90
	rst  $20                                         ; $7c32: $e7
	add  $e8                                         ; $7c33: $c6 $e8
	jp   hl                                          ; $7c35: $e9


	ld   [$eceb], a                                  ; $7c36: $ea $eb $ec
	db   $ed                                         ; $7c39: $ed
	xor  $ef                                         ; $7c3a: $ee $ef
	ldh  a, [$f1]                                    ; $7c3c: $f0 $f1
	ldh  a, [c]                                      ; $7c3e: $f2
	di                                               ; $7c3f: $f3
	db   $f4                                         ; $7c40: $f4
	push af                                          ; $7c41: $f5
	or   $f7                                         ; $7c42: $f6 $f7
	adc  a                                           ; $7c44: $8f
	sub  b                                           ; $7c45: $90
	ld   hl, sp-$07                                  ; $7c46: $f8 $f9
	ld   a, [$fcfb]                                  ; $7c48: $fa $fb $fc
	db   $fd                                         ; $7c4b: $fd
	cp   $ff                                         ; $7c4c: $fe $ff
	nop                                              ; $7c4e: $00
	ld   bc, $0302                                   ; $7c4f: $01 $02 $03
	inc  b                                           ; $7c52: $04
	dec  b                                           ; $7c53: $05
	ld   b, $07                                      ; $7c54: $06 $07
	ld   [$8f09], sp                                 ; $7c56: $08 $09 $8f
	sub  b                                           ; $7c59: $90
	sub  b                                           ; $7c5a: $90
	ld   a, [bc]                                     ; $7c5b: $0a
	dec  bc                                          ; $7c5c: $0b
	inc  c                                           ; $7c5d: $0c
	dec  c                                           ; $7c5e: $0d
	ld   c, $0f                                      ; $7c5f: $0e $0f
	db   $10                                         ; $7c61: $10
	ld   de, $1312                                   ; $7c62: $11 $12 $13
	inc  d                                           ; $7c65: $14
	dec  d                                           ; $7c66: $15
	ld   d, $17                                      ; $7c67: $16 $17
	jr   jr_0a2_7c84                                 ; $7c69: $18 $19

	ld   a, [de]                                     ; $7c6b: $1a
	adc  a                                           ; $7c6c: $8f
	sub  b                                           ; $7c6d: $90
	sub  b                                           ; $7c6e: $90
	dec  de                                          ; $7c6f: $1b
	inc  e                                           ; $7c70: $1c
	dec  e                                           ; $7c71: $1d
	ld   e, $1b                                      ; $7c72: $1e $1b
	rra                                              ; $7c74: $1f
	dec  de                                          ; $7c75: $1b
	jr   nz, jr_0a2_7c99                             ; $7c76: $20 $21

	ld   [hl+], a                                    ; $7c78: $22
	inc  hl                                          ; $7c79: $23
	inc  h                                           ; $7c7a: $24
	dec  h                                           ; $7c7b: $25
	ld   h, $27                                      ; $7c7c: $26 $27
	jr   z, jr_0a2_7ca9                              ; $7c7e: $28 $29

	ld   [bc], a                                     ; $7c80: $02
	ld   [bc], a                                     ; $7c81: $02
	ld   [bc], a                                     ; $7c82: $02
	ld   [bc], a                                     ; $7c83: $02

jr_0a2_7c84:
	ld   [bc], a                                     ; $7c84: $02
	ld   [bc], a                                     ; $7c85: $02
	ld   [bc], a                                     ; $7c86: $02
	ld   [bc], a                                     ; $7c87: $02
	ld   [bc], a                                     ; $7c88: $02
	ld   [bc], a                                     ; $7c89: $02
	ld   [bc], a                                     ; $7c8a: $02
	ld   [bc], a                                     ; $7c8b: $02
	ld   [bc], a                                     ; $7c8c: $02
	ld   [bc], a                                     ; $7c8d: $02
	ld   [bc], a                                     ; $7c8e: $02
	ld   bc, TurnOnLCD                                   ; $7c8f: $01 $09 $09
	ld   a, [bc]                                     ; $7c92: $0a
	ld   a, [bc]                                     ; $7c93: $0a
	ld   [bc], a                                     ; $7c94: $02
	ld   [bc], a                                     ; $7c95: $02
	ld   [bc], a                                     ; $7c96: $02
	ld   [bc], a                                     ; $7c97: $02
	ld   [bc], a                                     ; $7c98: $02

jr_0a2_7c99:
	ld   [bc], a                                     ; $7c99: $02
	ld   bc, $0202                                   ; $7c9a: $01 $02 $02
	ld   [bc], a                                     ; $7c9d: $02
	ld   [bc], a                                     ; $7c9e: $02
	ld   [bc], a                                     ; $7c9f: $02
	ld   [bc], a                                     ; $7ca0: $02
	ld   [bc], a                                     ; $7ca1: $02
	ld   [bc], a                                     ; $7ca2: $02
	ld   bc, TurnOnLCD                                   ; $7ca3: $01 $09 $09
	ld   a, [bc]                                     ; $7ca6: $0a
	ld   a, [bc]                                     ; $7ca7: $0a
	ld   [bc], a                                     ; $7ca8: $02

jr_0a2_7ca9:
	ld   [bc], a                                     ; $7ca9: $02
	ld   [bc], a                                     ; $7caa: $02
	ld   [bc], a                                     ; $7cab: $02
	ld   [bc], a                                     ; $7cac: $02
	ld   bc, $0101                                   ; $7cad: $01 $01 $01
	ld   [bc], a                                     ; $7cb0: $02
	ld   [bc], a                                     ; $7cb1: $02
	ld   [bc], a                                     ; $7cb2: $02
	ld   [bc], a                                     ; $7cb3: $02
	ld   [bc], a                                     ; $7cb4: $02
	ld   [bc], a                                     ; $7cb5: $02
	ld   [bc], a                                     ; $7cb6: $02
	ld   bc, $0a09                                   ; $7cb7: $01 $09 $0a
	ld   a, [bc]                                     ; $7cba: $0a
	ld   a, [bc]                                     ; $7cbb: $0a
	ld   [bc], a                                     ; $7cbc: $02
	ld   [bc], a                                     ; $7cbd: $02
	ld   [bc], a                                     ; $7cbe: $02
	ld   [bc], a                                     ; $7cbf: $02
	ld   [bc], a                                     ; $7cc0: $02
	ld   bc, $0101                                   ; $7cc1: $01 $01 $01
	nop                                              ; $7cc4: $00
	ld   bc, $0201                                   ; $7cc5: $01 $01 $02
	ld   [bc], a                                     ; $7cc8: $02
	ld   [bc], a                                     ; $7cc9: $02
	ld   bc, $0a01                                   ; $7cca: $01 $01 $0a
	ld   a, [bc]                                     ; $7ccd: $0a
	ld   a, [bc]                                     ; $7cce: $0a
	ld   a, [bc]                                     ; $7ccf: $0a
	ld   [bc], a                                     ; $7cd0: $02
	ld   [bc], a                                     ; $7cd1: $02
	ld   [bc], a                                     ; $7cd2: $02
	ld   [bc], a                                     ; $7cd3: $02
	ld   [bc], a                                     ; $7cd4: $02
	ld   bc, $0001                                   ; $7cd5: $01 $01 $00
	nop                                              ; $7cd8: $00
	ld   bc, $0001                                   ; $7cd9: $01 $01 $00
	ld   [bc], a                                     ; $7cdc: $02
	ld   [bc], a                                     ; $7cdd: $02
	ld   bc, $0a01                                   ; $7cde: $01 $01 $0a
	ld   a, [bc]                                     ; $7ce1: $0a
	ld   a, [bc]                                     ; $7ce2: $0a
	ld   a, [bc]                                     ; $7ce3: $0a
	ld   [bc], a                                     ; $7ce4: $02
	ld   [bc], a                                     ; $7ce5: $02
	ld   [bc], a                                     ; $7ce6: $02
	ld   [bc], a                                     ; $7ce7: $02
	ld   bc, $0201                                   ; $7ce8: $01 $01 $02
	nop                                              ; $7ceb: $00
	nop                                              ; $7cec: $00
	ld   bc, $0001                                   ; $7ced: $01 $01 $00
	ld   bc, $0101                                   ; $7cf0: $01 $01 $01
	ld   bc, $0a0a                                   ; $7cf3: $01 $0a $0a
	ld   a, [bc]                                     ; $7cf6: $0a
	ld   a, [bc]                                     ; $7cf7: $0a
	ld   b, $06                                      ; $7cf8: $06 $06
	ld   b, $06                                      ; $7cfa: $06 $06
	ld   b, $01                                      ; $7cfc: $06 $01
	ld   bc, $0101                                   ; $7cfe: $01 $01 $01
	ld   bc, $0101                                   ; $7d01: $01 $01 $01
	ld   bc, $0601                                   ; $7d04: $01 $01 $06
	ld   b, $0e                                      ; $7d07: $06 $0e
	ld   c, $0e                                      ; $7d09: $0e $0e
	ld   c, $06                                      ; $7d0b: $0e $06
	ld   b, $06                                      ; $7d0d: $06 $06
	ld   b, $06                                      ; $7d0f: $06 $06
	ld   b, $01                                      ; $7d11: $06 $01
	ld   bc, $0101                                   ; $7d13: $01 $01 $01
	ld   bc, $0601                                   ; $7d16: $01 $01 $06
	ld   b, $06                                      ; $7d19: $06 $06
	ld   b, $0e                                      ; $7d1b: $06 $0e
	ld   c, $0e                                      ; $7d1d: $0e $0e
	ld   c, $0e                                      ; $7d1f: $0e $0e
	ld   c, $0e                                      ; $7d21: $0e $0e
	ld   c, $0e                                      ; $7d23: $0e $0e
	ld   c, $0e                                      ; $7d25: $0e $0e
	ld   c, $0e                                      ; $7d27: $0e $0e
	ld   c, $0e                                      ; $7d29: $0e $0e
	ld   c, $0e                                      ; $7d2b: $0e $0e
	ld   c, $0e                                      ; $7d2d: $0e $0e
	ld   c, $0e                                      ; $7d2f: $0e $0e
	ld   c, $0e                                      ; $7d31: $0e $0e
	ld   c, $0e                                      ; $7d33: $0e $0e
	ld   c, $0e                                      ; $7d35: $0e $0e
	ld   c, $0e                                      ; $7d37: $0e $0e
	ld   c, $0e                                      ; $7d39: $0e $0e
	ld   c, $0e                                      ; $7d3b: $0e $0e
	ld   c, $0e                                      ; $7d3d: $0e $0e
	ld   c, $0e                                      ; $7d3f: $0e $0e
	ld   c, $0e                                      ; $7d41: $0e $0e
	ld   c, $0e                                      ; $7d43: $0e $0e
	ld   c, $0e                                      ; $7d45: $0e $0e
	ld   c, $00                                      ; $7d47: $0e $00
	ld   bc, $0302                                   ; $7d49: $01 $02 $03
	inc  b                                           ; $7d4c: $04
	dec  b                                           ; $7d4d: $05
	ld   b, $07                                      ; $7d4e: $06 $07
	ld   [$0a09], sp                                 ; $7d50: $08 $09 $0a
	dec  bc                                          ; $7d53: $0b
	inc  c                                           ; $7d54: $0c
	dec  c                                           ; $7d55: $0d
	ld   c, $0f                                      ; $7d56: $0e $0f
	jr   nz, jr_0a2_7d7b                             ; $7d58: $20 $21

	ld   [hl+], a                                    ; $7d5a: $22
	inc  hl                                          ; $7d5b: $23
	db   $10                                         ; $7d5c: $10
	ld   de, $1312                                   ; $7d5d: $11 $12 $13
	inc  d                                           ; $7d60: $14
	dec  d                                           ; $7d61: $15
	ld   d, $17                                      ; $7d62: $16 $17
	jr   @+$1b                                       ; $7d64: $18 $19

	ld   a, [de]                                     ; $7d66: $1a
	dec  de                                          ; $7d67: $1b
	inc  e                                           ; $7d68: $1c
	dec  e                                           ; $7d69: $1d
	ld   e, $1f                                      ; $7d6a: $1e $1f
	jr   nc, jr_0a2_7d9f                             ; $7d6c: $30 $31

	ld   [hl-], a                                    ; $7d6e: $32
	inc  sp                                          ; $7d6f: $33
	jr   nz, @+$23                                   ; $7d70: $20 $21

	ld   [hl+], a                                    ; $7d72: $22
	inc  hl                                          ; $7d73: $23
	inc  h                                           ; $7d74: $24
	dec  h                                           ; $7d75: $25
	ld   h, $27                                      ; $7d76: $26 $27
	jr   z, jr_0a2_7da3                              ; $7d78: $28 $29

	ld   a, [hl+]                                    ; $7d7a: $2a

jr_0a2_7d7b:
	dec  hl                                          ; $7d7b: $2b
	inc  l                                           ; $7d7c: $2c
	dec  l                                           ; $7d7d: $2d
	ld   l, $2f                                      ; $7d7e: $2e $2f
	inc  h                                           ; $7d80: $24
	dec  h                                           ; $7d81: $25
	ld   h, $27                                      ; $7d82: $26 $27
	jr   nc, jr_0a2_7db7                             ; $7d84: $30 $31

	ld   [hl-], a                                    ; $7d86: $32
	inc  sp                                          ; $7d87: $33
	inc  [hl]                                        ; $7d88: $34
	dec  [hl]                                        ; $7d89: $35
	ld   [hl], $37                                   ; $7d8a: $36 $37
	jr   c, jr_0a2_7dc7                              ; $7d8c: $38 $39

	ld   a, [hl-]                                    ; $7d8e: $3a
	dec  sp                                          ; $7d8f: $3b
	inc  a                                           ; $7d90: $3c
	dec  a                                           ; $7d91: $3d
	ld   a, $3f                                      ; $7d92: $3e $3f
	inc  [hl]                                        ; $7d94: $34
	dec  [hl]                                        ; $7d95: $35
	ld   [hl], $37                                   ; $7d96: $36 $37
	ld   b, b                                        ; $7d98: $40
	ld   b, c                                        ; $7d99: $41
	ld   b, d                                        ; $7d9a: $42
	ld   b, e                                        ; $7d9b: $43
	ld   b, h                                        ; $7d9c: $44
	ld   b, l                                        ; $7d9d: $45
	ld   b, [hl]                                     ; $7d9e: $46

jr_0a2_7d9f:
	ld   b, a                                        ; $7d9f: $47
	ld   c, b                                        ; $7da0: $48
	ld   c, c                                        ; $7da1: $49
	ld   c, d                                        ; $7da2: $4a

jr_0a2_7da3:
	ld   c, e                                        ; $7da3: $4b
	ld   c, h                                        ; $7da4: $4c
	ld   c, l                                        ; $7da5: $4d
	ld   c, [hl]                                     ; $7da6: $4e
	ld   c, a                                        ; $7da7: $4f
	jr   z, @+$2b                                    ; $7da8: $28 $29

	ld   a, [hl+]                                    ; $7daa: $2a
	dec  hl                                          ; $7dab: $2b
	ld   d, b                                        ; $7dac: $50
	ld   d, c                                        ; $7dad: $51
	ld   d, d                                        ; $7dae: $52
	ld   d, e                                        ; $7daf: $53
	ld   d, h                                        ; $7db0: $54
	ld   d, l                                        ; $7db1: $55
	ld   d, [hl]                                     ; $7db2: $56
	ld   d, a                                        ; $7db3: $57
	ld   e, b                                        ; $7db4: $58
	ld   e, c                                        ; $7db5: $59
	ld   e, d                                        ; $7db6: $5a

jr_0a2_7db7:
	ld   e, e                                        ; $7db7: $5b
	ld   e, h                                        ; $7db8: $5c
	ld   e, l                                        ; $7db9: $5d
	ld   e, [hl]                                     ; $7dba: $5e
	ld   e, a                                        ; $7dbb: $5f
	jr   c, @+$3b                                    ; $7dbc: $38 $39

	ld   a, [hl-]                                    ; $7dbe: $3a
	dec  sp                                          ; $7dbf: $3b
	ld   h, b                                        ; $7dc0: $60
	ld   h, c                                        ; $7dc1: $61
	ld   h, d                                        ; $7dc2: $62
	ld   h, e                                        ; $7dc3: $63
	ld   h, h                                        ; $7dc4: $64
	ld   h, l                                        ; $7dc5: $65
	ld   h, [hl]                                     ; $7dc6: $66

jr_0a2_7dc7:
	ld   h, a                                        ; $7dc7: $67
	ld   l, b                                        ; $7dc8: $68
	ld   l, c                                        ; $7dc9: $69
	ld   l, d                                        ; $7dca: $6a
	ld   l, e                                        ; $7dcb: $6b
	ld   l, h                                        ; $7dcc: $6c
	ld   l, l                                        ; $7dcd: $6d
	ld   l, [hl]                                     ; $7dce: $6e
	ld   l, a                                        ; $7dcf: $6f
	inc  l                                           ; $7dd0: $2c
	dec  l                                           ; $7dd1: $2d
	ld   l, $2f                                      ; $7dd2: $2e $2f
	ld   [hl], b                                     ; $7dd4: $70
	ld   [hl], c                                     ; $7dd5: $71
	ld   [hl], d                                     ; $7dd6: $72
	ld   [hl], e                                     ; $7dd7: $73
	ld   [hl], h                                     ; $7dd8: $74
	ld   [hl], l                                     ; $7dd9: $75
	halt                                             ; $7dda: $76
	ld   [hl], a                                     ; $7ddb: $77
	ld   a, b                                        ; $7ddc: $78
	ld   a, c                                        ; $7ddd: $79
	ld   a, d                                        ; $7dde: $7a
	ld   a, e                                        ; $7ddf: $7b
	ld   a, h                                        ; $7de0: $7c
	ld   a, l                                        ; $7de1: $7d
	ld   a, [hl]                                     ; $7de2: $7e
	ld   a, a                                        ; $7de3: $7f
	inc  a                                           ; $7de4: $3c
	dec  a                                           ; $7de5: $3d
	ld   a, $3f                                      ; $7de6: $3e $3f
	nop                                              ; $7de8: $00
	ld   bc, $0302                                   ; $7de9: $01 $02 $03
	inc  b                                           ; $7dec: $04
	dec  b                                           ; $7ded: $05
	ld   b, $07                                      ; $7dee: $06 $07
	ld   [$0a09], sp                                 ; $7df0: $08 $09 $0a
	dec  bc                                          ; $7df3: $0b
	inc  c                                           ; $7df4: $0c
	dec  c                                           ; $7df5: $0d
	ld   c, $0f                                      ; $7df6: $0e $0f
	ld   b, b                                        ; $7df8: $40
	ld   b, c                                        ; $7df9: $41
	ld   b, d                                        ; $7dfa: $42
	ld   b, e                                        ; $7dfb: $43
	db   $10                                         ; $7dfc: $10
	ld   de, $1312                                   ; $7dfd: $11 $12 $13
	inc  d                                           ; $7e00: $14
	dec  d                                           ; $7e01: $15
	ld   d, $17                                      ; $7e02: $16 $17
	jr   jr_0a2_7e1f                                 ; $7e04: $18 $19

	ld   a, [de]                                     ; $7e06: $1a
	dec  de                                          ; $7e07: $1b
	inc  e                                           ; $7e08: $1c
	dec  e                                           ; $7e09: $1d
	ld   e, $1f                                      ; $7e0a: $1e $1f
	ld   b, h                                        ; $7e0c: $44
	ld   b, l                                        ; $7e0d: $45
	ld   b, [hl]                                     ; $7e0e: $46
	ld   b, a                                        ; $7e0f: $47
	nop                                              ; $7e10: $00
	nop                                              ; $7e11: $00
	nop                                              ; $7e12: $00
	ld   b, $06                                      ; $7e13: $06 $06
	ld   b, $06                                      ; $7e15: $06 $06
	ld   b, $06                                      ; $7e17: $06 $06
	ld   b, $00                                      ; $7e19: $06 $00
	nop                                              ; $7e1b: $00
	nop                                              ; $7e1c: $00
	nop                                              ; $7e1d: $00
	nop                                              ; $7e1e: $00

jr_0a2_7e1f:
	nop                                              ; $7e1f: $00
	ld   h, $20                                      ; $7e20: $26 $20
	jr   nz, jr_0a2_7e44                             ; $7e22: $20 $20

	nop                                              ; $7e24: $00
	nop                                              ; $7e25: $00
	nop                                              ; $7e26: $00
	ld   b, $06                                      ; $7e27: $06 $06
	ld   b, $06                                      ; $7e29: $06 $06
	ld   b, $06                                      ; $7e2b: $06 $06
	ld   b, $00                                      ; $7e2d: $06 $00
	rlca                                             ; $7e2f: $07
	nop                                              ; $7e30: $00
	nop                                              ; $7e31: $00
	nop                                              ; $7e32: $00
	nop                                              ; $7e33: $00
	ld   h, $00                                      ; $7e34: $26 $00
	jr   nz, jr_0a2_7e58                             ; $7e36: $20 $20

	nop                                              ; $7e38: $00
	nop                                              ; $7e39: $00
	nop                                              ; $7e3a: $00
	ld   b, $06                                      ; $7e3b: $06 $06
	ld   b, $06                                      ; $7e3d: $06 $06
	ld   b, $06                                      ; $7e3f: $06 $06
	ld   b, $00                                      ; $7e41: $06 $00
	rlca                                             ; $7e43: $07

jr_0a2_7e44:
	rlca                                             ; $7e44: $07
	ld   bc, $0101                                   ; $7e45: $01 $01 $01
	ld   h, $20                                      ; $7e48: $26 $20
	nop                                              ; $7e4a: $00
	nop                                              ; $7e4b: $00
	nop                                              ; $7e4c: $00
	nop                                              ; $7e4d: $00
	nop                                              ; $7e4e: $00
	ld   b, $06                                      ; $7e4f: $06 $06
	ld   b, $06                                      ; $7e51: $06 $06
	ld   b, $06                                      ; $7e53: $06 $06
	ld   b, $07                                      ; $7e55: $06 $07
	rlca                                             ; $7e57: $07

jr_0a2_7e58:
	rlca                                             ; $7e58: $07
	rlca                                             ; $7e59: $07
	ld   bc, $2601                                   ; $7e5a: $01 $01 $26
	nop                                              ; $7e5d: $00
	nop                                              ; $7e5e: $00
	jr   nz, jr_0a2_7e61                             ; $7e5f: $20 $00

jr_0a2_7e61:
	nop                                              ; $7e61: $00
	nop                                              ; $7e62: $00
	ld   b, $06                                      ; $7e63: $06 $06
	ld   b, $06                                      ; $7e65: $06 $06
	ld   b, $06                                      ; $7e67: $06 $06
	ld   b, $07                                      ; $7e69: $06 $07
	rlca                                             ; $7e6b: $07
	rlca                                             ; $7e6c: $07
	rlca                                             ; $7e6d: $07
	ld   bc, $2601                                   ; $7e6e: $01 $01 $26
	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	nop                                              ; $7e73: $00
	nop                                              ; $7e74: $00
	nop                                              ; $7e75: $00
	nop                                              ; $7e76: $00
	ld   b, $06                                      ; $7e77: $06 $06
	ld   b, $06                                      ; $7e79: $06 $06
	ld   b, $06                                      ; $7e7b: $06 $06
	ld   b, $07                                      ; $7e7d: $06 $07
	rlca                                             ; $7e7f: $07
	ld   bc, $0101                                   ; $7e80: $01 $01 $01
	ld   bc, $0026                                   ; $7e83: $01 $26 $00
	nop                                              ; $7e86: $00
	nop                                              ; $7e87: $00
	nop                                              ; $7e88: $00
	nop                                              ; $7e89: $00
	nop                                              ; $7e8a: $00
	ld   b, $06                                      ; $7e8b: $06 $06
	ld   b, $06                                      ; $7e8d: $06 $06
	ld   b, $06                                      ; $7e8f: $06 $06
	ld   b, $00                                      ; $7e91: $06 $00
	nop                                              ; $7e93: $00
	ld   bc, $0101                                   ; $7e94: $01 $01 $01
	ld   bc, $0026                                   ; $7e97: $01 $26 $00
	nop                                              ; $7e9a: $00
	nop                                              ; $7e9b: $00
	nop                                              ; $7e9c: $00
	nop                                              ; $7e9d: $00
	nop                                              ; $7e9e: $00
	ld   b, $06                                      ; $7e9f: $06 $06
	ld   b, $06                                      ; $7ea1: $06 $06
	ld   b, $06                                      ; $7ea3: $06 $06
	ld   b, $00                                      ; $7ea5: $06 $00
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	ld   bc, $0101                                   ; $7ea9: $01 $01 $01
	ld   h, $00                                      ; $7eac: $26 $00
	nop                                              ; $7eae: $00
	nop                                              ; $7eaf: $00
	nop                                              ; $7eb0: $00
	nop                                              ; $7eb1: $00
	nop                                              ; $7eb2: $00
	ld   b, $06                                      ; $7eb3: $06 $06
	ld   b, $06                                      ; $7eb5: $06 $06
	ld   b, $06                                      ; $7eb7: $06 $06
	ld   b, $00                                      ; $7eb9: $06 $00
	ld   [bc], a                                     ; $7ebb: $02
	nop                                              ; $7ebc: $00
	ld   bc, $0001                                   ; $7ebd: $01 $01 $00
	ld   h, $00                                      ; $7ec0: $26 $00
	nop                                              ; $7ec2: $00
	nop                                              ; $7ec3: $00
	nop                                              ; $7ec4: $00
	nop                                              ; $7ec5: $00
	nop                                              ; $7ec6: $00
	ld   b, $06                                      ; $7ec7: $06 $06
	ld   b, $06                                      ; $7ec9: $06 $06
	ld   b, $06                                      ; $7ecb: $06 $06
	ld   b, $00                                      ; $7ecd: $06 $00
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	nop                                              ; $7ed1: $00
	nop                                              ; $7ed2: $00
	nop                                              ; $7ed3: $00
	ld   h, $00                                      ; $7ed4: $26 $00
	nop                                              ; $7ed6: $00
	nop                                              ; $7ed7: $00
	add  b                                           ; $7ed8: $80
	add  c                                           ; $7ed9: $81
	add  c                                           ; $7eda: $81
	add  d                                           ; $7edb: $82
	add  e                                           ; $7edc: $83
	add  h                                           ; $7edd: $84
	add  l                                           ; $7ede: $85
	add  [hl]                                        ; $7edf: $86
	add  a                                           ; $7ee0: $87
	adc  b                                           ; $7ee1: $88
	adc  c                                           ; $7ee2: $89
	adc  c                                           ; $7ee3: $89
	adc  c                                           ; $7ee4: $89
	adc  c                                           ; $7ee5: $89
	adc  c                                           ; $7ee6: $89
	adc  c                                           ; $7ee7: $89
	add  d                                           ; $7ee8: $82
	add  c                                           ; $7ee9: $81
	add  c                                           ; $7eea: $81
	add  b                                           ; $7eeb: $80
	adc  d                                           ; $7eec: $8a
	adc  e                                           ; $7eed: $8b
	adc  h                                           ; $7eee: $8c
	adc  l                                           ; $7eef: $8d
	adc  [hl]                                        ; $7ef0: $8e
	adc  a                                           ; $7ef1: $8f
	sub  b                                           ; $7ef2: $90
	sub  c                                           ; $7ef3: $91
	sub  d                                           ; $7ef4: $92
	sub  e                                           ; $7ef5: $93
	sub  h                                           ; $7ef6: $94
	sub  l                                           ; $7ef7: $95
	sub  h                                           ; $7ef8: $94
	sub  [hl]                                        ; $7ef9: $96
	sub  a                                           ; $7efa: $97
	sbc  b                                           ; $7efb: $98
	adc  l                                           ; $7efc: $8d
	sbc  c                                           ; $7efd: $99
	adc  e                                           ; $7efe: $8b
	adc  d                                           ; $7eff: $8a
	sbc  d                                           ; $7f00: $9a
	sbc  e                                           ; $7f01: $9b
	sbc  h                                           ; $7f02: $9c
	adc  l                                           ; $7f03: $8d
	adc  [hl]                                        ; $7f04: $8e
	sbc  l                                           ; $7f05: $9d
	sbc  [hl]                                        ; $7f06: $9e
	sbc  a                                           ; $7f07: $9f
	sub  d                                           ; $7f08: $92
	sub  e                                           ; $7f09: $93
	sub  h                                           ; $7f0a: $94
	and  b                                           ; $7f0b: $a0
	and  c                                           ; $7f0c: $a1
	and  d                                           ; $7f0d: $a2
	and  e                                           ; $7f0e: $a3
	and  h                                           ; $7f0f: $a4
	adc  l                                           ; $7f10: $8d
	sbc  h                                           ; $7f11: $9c
	and  l                                           ; $7f12: $a5
	and  [hl]                                        ; $7f13: $a6
	and  a                                           ; $7f14: $a7
	xor  b                                           ; $7f15: $a8
	xor  c                                           ; $7f16: $a9
	adc  l                                           ; $7f17: $8d
	xor  d                                           ; $7f18: $aa
	xor  e                                           ; $7f19: $ab
	xor  h                                           ; $7f1a: $ac
	xor  l                                           ; $7f1b: $ad
	xor  [hl]                                        ; $7f1c: $ae
	sub  e                                           ; $7f1d: $93
	xor  a                                           ; $7f1e: $af
	or   b                                           ; $7f1f: $b0
	or   c                                           ; $7f20: $b1
	or   d                                           ; $7f21: $b2
	or   e                                           ; $7f22: $b3
	or   h                                           ; $7f23: $b4
	adc  l                                           ; $7f24: $8d
	or   l                                           ; $7f25: $b5
	or   [hl]                                        ; $7f26: $b6
	and  a                                           ; $7f27: $a7
	or   a                                           ; $7f28: $b7
	cp   b                                           ; $7f29: $b8
	cp   c                                           ; $7f2a: $b9
	adc  l                                           ; $7f2b: $8d
	xor  d                                           ; $7f2c: $aa
	cp   d                                           ; $7f2d: $ba
	cp   e                                           ; $7f2e: $bb
	cp   h                                           ; $7f2f: $bc
	cp   l                                           ; $7f30: $bd
	sub  e                                           ; $7f31: $93
	cp   [hl]                                        ; $7f32: $be
	cp   a                                           ; $7f33: $bf
	ret  nz                                          ; $7f34: $c0

	pop  bc                                          ; $7f35: $c1
	jp   nz, $8dc3                                   ; $7f36: $c2 $c3 $8d

	cp   c                                           ; $7f39: $b9
	call nz, $b9c5                                   ; $7f3a: $c4 $c5 $b9
	cp   c                                           ; $7f3d: $b9
	cp   c                                           ; $7f3e: $b9
	adc  l                                           ; $7f3f: $8d
	add  $c7                                         ; $7f40: $c6 $c7
	ret  z                                           ; $7f42: $c8

	ret  z                                           ; $7f43: $c8

	ret                                              ; $7f44: $c9


	sub  e                                           ; $7f45: $93
	jp   z, $cccb                                    ; $7f46: $ca $cb $cc

	call $cfce                                       ; $7f49: $cd $ce $cf
	adc  l                                           ; $7f4c: $8d
	cp   c                                           ; $7f4d: $b9
	cp   c                                           ; $7f4e: $b9
	cp   c                                           ; $7f4f: $b9
	cp   c                                           ; $7f50: $b9
	cp   c                                           ; $7f51: $b9
	cp   c                                           ; $7f52: $b9
	adc  l                                           ; $7f53: $8d
	ret  nc                                          ; $7f54: $d0

	pop  de                                          ; $7f55: $d1
	jp   nc, $d4d3                                   ; $7f56: $d2 $d3 $d4

	sub  e                                           ; $7f59: $93
	cp   c                                           ; $7f5a: $b9
	cp   c                                           ; $7f5b: $b9
	push de                                          ; $7f5c: $d5
	sub  $d7                                         ; $7f5d: $d6 $d7
	ret  c                                           ; $7f5f: $d8

	adc  l                                           ; $7f60: $8d
	cp   c                                           ; $7f61: $b9
	cp   c                                           ; $7f62: $b9
	cp   c                                           ; $7f63: $b9
	cp   c                                           ; $7f64: $b9
	cp   c                                           ; $7f65: $b9
	cp   c                                           ; $7f66: $b9
	adc  l                                           ; $7f67: $8d
	reti                                             ; $7f68: $d9


	jp   c, $dcdb                                    ; $7f69: $da $db $dc

	db   $dd                                         ; $7f6c: $dd
	sbc  $b9                                         ; $7f6d: $de $b9
	rst  JumpTable                                         ; $7f6f: $df
	ldh  [$e1], a                                    ; $7f70: $e0 $e1
	ldh  [c], a                                      ; $7f72: $e2
	db   $e3                                         ; $7f73: $e3
	adc  l                                           ; $7f74: $8d
	cp   c                                           ; $7f75: $b9
	cp   c                                           ; $7f76: $b9
	cp   c                                           ; $7f77: $b9
	cp   c                                           ; $7f78: $b9
	cp   c                                           ; $7f79: $b9
	cp   c                                           ; $7f7a: $b9
	adc  l                                           ; $7f7b: $8d
	db   $e4                                         ; $7f7c: $e4
	push hl                                          ; $7f7d: $e5
	ret  z                                           ; $7f7e: $c8

	and  $e7                                         ; $7f7f: $e6 $e7
	add  sp, -$47                                    ; $7f81: $e8 $b9
	jp   hl                                          ; $7f83: $e9


	ld   [$eceb], a                                  ; $7f84: $ea $eb $ec
	db   $ed                                         ; $7f87: $ed
	adc  l                                           ; $7f88: $8d
	cp   c                                           ; $7f89: $b9
	cp   c                                           ; $7f8a: $b9
	cp   c                                           ; $7f8b: $b9
	cp   c                                           ; $7f8c: $b9
	cp   c                                           ; $7f8d: $b9
	cp   c                                           ; $7f8e: $b9
	adc  l                                           ; $7f8f: $8d
	xor  $ef                                         ; $7f90: $ee $ef
	ret  z                                           ; $7f92: $c8

	and  $92                                         ; $7f93: $e6 $92
	add  sp, -$47                                    ; $7f95: $e8 $b9
	ldh  a, [$f1]                                    ; $7f97: $f0 $f1
	ldh  a, [c]                                      ; $7f99: $f2
	di                                               ; $7f9a: $f3
	db   $f4                                         ; $7f9b: $f4
	adc  l                                           ; $7f9c: $8d
	cp   c                                           ; $7f9d: $b9
	cp   c                                           ; $7f9e: $b9
	cp   c                                           ; $7f9f: $b9
	nop                                              ; $7fa0: $00
	ld   b, $02                                      ; $7fa1: $06 $02
	nop                                              ; $7fa3: $00
	ld   bc, $2500                                   ; $7fa4: $01 $00 $25
	inc  b                                           ; $7fa7: $04
	ld   [bc], a                                     ; $7fa8: $02
	inc  bc                                          ; $7fa9: $03
	inc  b                                           ; $7faa: $04
	dec  b                                           ; $7fab: $05
	nop                                              ; $7fac: $00
	ld   b, l                                        ; $7fad: $45
	inc  b                                           ; $7fae: $04
	ld   b, $07                                      ; $7faf: $06 $07
	ld   [$0009], sp                                 ; $7fb1: $08 $09 $00
	ld   h, [hl]                                     ; $7fb4: $66
	inc  b                                           ; $7fb5: $04
	ld   a, [bc]                                     ; $7fb6: $0a
	dec  bc                                          ; $7fb7: $0b
	inc  c                                           ; $7fb8: $0c
	adc  l                                           ; $7fb9: $8d
	nop                                              ; $7fba: $00
	ld   l, [hl]                                     ; $7fbb: $6e
	ld   bc, $000e                                   ; $7fbc: $01 $0e $00
	add  a                                           ; $7fbf: $87
	inc  b                                           ; $7fc0: $04
	rrca                                             ; $7fc1: $0f
	db   $10                                         ; $7fc2: $10
	sub  c                                           ; $7fc3: $91
	sub  d                                           ; $7fc4: $92
	nop                                              ; $7fc5: $00
	adc  l                                           ; $7fc6: $8d
	ld   [bc], a                                     ; $7fc7: $02
	sub  e                                           ; $7fc8: $93
	inc  d                                           ; $7fc9: $14
	nop                                              ; $7fca: $00
	and  a                                           ; $7fcb: $a7
	ld   [$1615], sp                                 ; $7fcc: $08 $15 $16
	sub  a                                           ; $7fcf: $97
	sbc  b                                           ; $7fd0: $98
	sbc  c                                           ; $7fd1: $99
	sbc  d                                           ; $7fd2: $9a
	sbc  e                                           ; $7fd3: $9b
	sbc  h                                           ; $7fd4: $9c
	nop                                              ; $7fd5: $00
	rst  ToBoot                                         ; $7fd6: $c7
	ld   [$9e1d], sp                                 ; $7fd7: $08 $1d $9e
	sbc  a                                           ; $7fda: $9f
	and  b                                           ; $7fdb: $a0
	and  c                                           ; $7fdc: $a1
	and  d                                           ; $7fdd: $a2
	and  e                                           ; $7fde: $a3
	and  h                                           ; $7fdf: $a4
	nop                                              ; $7fe0: $00
	rst  $20                                         ; $7fe1: $e7
	dec  b                                           ; $7fe2: $05
	dec  h                                           ; $7fe3: $25
	and  [hl]                                        ; $7fe4: $a6
	and  a                                           ; $7fe5: $a7
	xor  b                                           ; $7fe6: $a8
	xor  c                                           ; $7fe7: $a9
	nop                                              ; $7fe8: $00
	db   $ed                                         ; $7fe9: $ed
	ld   bc, $01aa                                   ; $7fea: $01 $aa $01
	rlca                                             ; $7fed: $07
	dec  b                                           ; $7fee: $05
	dec  hl                                          ; $7fef: $2b
	xor  h                                           ; $7ff0: $ac
	xor  l                                           ; $7ff1: $ad
	xor  [hl]                                        ; $7ff2: $ae
	xor  a                                           ; $7ff3: $af
	ld   bc, $0527                                   ; $7ff4: $01 $27 $05
	or   b                                           ; $7ff7: $b0
	or   c                                           ; $7ff8: $b1
	or   d                                           ; $7ff9: $b2
	or   e                                           ; $7ffa: $b3
	or   h                                           ; $7ffb: $b4
	rst  $38                                         ; $7ffc: $ff
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
